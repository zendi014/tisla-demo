(function() {

    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    });


    ready = () => {
        colleger_id = $("#detail_colleger").attr("colleger_id");
        competencies_collegers_by_colleger_id(colleger_id);
        cpls_collegers_by_colleger_id(colleger_id);

        get_semester_lecture_from_content(colleger_id);
    }; 
    
    competencies_collegers_by_colleger_id = async(colleger_id) => {
        try {
            await axios.post(
                `../competencies_collegers_by_colleger_id`,
                {
                    colleger_id: colleger_id
                }
            ).then((response)=> {                
                if(response.status == 200){
                    cacpd_to_spider_chart(response.data.data, 'spider_competencies_collegers_detail');
                    cacpd_to_chart(response.data.data, 'chart_competencies_collegers_detail');
                }
            })
        } catch (error) {
            swal_error(error);
        }
    }

    

    cpls_collegers_by_colleger_id = async(colleger_id) => {
        try {
            await axios.post(
                `../cpls_collegers_by_colleger_id`,
                {
                    colleger_id: colleger_id
                }
            ).then((response)=> {                
                if(response.status == 200){
                    caacpd_to_spider_chart(response.data.data, 'spider_cpls_collegers_detail');
                    caacpd_to_chart(response.data.data, 'chart_cpls_collegers_detail');
                }
            })
        } catch (error) {
            swal_error(error);
        }
    }



    get_semester_lecture_from_content = async (colleger_id) => {
        setTimeout(() => {

            $(".graph_content_colleger_lectures").each(function() {
                $.each(this.attributes, function() {
                    if(this.value != 'row graph_content_colleger_lectures'){
                        promise_data_lecture_colleger_by_semester(colleger_id, this.value);
                    }                    
                });
            });
              
        }, 3000);
    }

    this.promise_data_lecture_colleger_by_semester = async (colleger_id, lecture_id) => {
        try {
            return new Promise((resolve, reject) => {
                resolve(data_lecture_colleger_by_semester(colleger_id, lecture_id));
            })
        } catch (error) {
            swal_error(error);
        }
    }

    this.data_lecture_colleger_by_semester = (colleger_id, lecture_id) => { 
        try {
            competencies_lecture_colleger_by_semester(colleger_id, lecture_id);
            cpls_lecture_colleger_by_semester(colleger_id, lecture_id);
        } catch (error) {
            swal_error(error);
        }
    }
    

    this.competencies_lecture_colleger_by_semester = async(colleger_id, lecture_id) => { 
        try {
            await axios.post(
                `../competencies_collegers_by_lecture_semester`,
                {
                    m_colleger_id: colleger_id,
                    m_lecture_id:lecture_id
                }
            ).then((response)=> {                
                if(response.status == 200){
                    cacpd_to_spider_chart(response.data.data, `cmlcbs_spider_${lecture_id}`);
                    cacpd_to_chart(response.data.data, `cmlcbs_chart_${lecture_id}`);
                }
            })
        } catch (error) {
            swal_error(error);
        }
    }

    this.cpls_lecture_colleger_by_semester = async(colleger_id, lecture_id) => { 
        try {
            await axios.post(
                `../cpls_collegers_by_lecture_semester`,
                {
                    m_colleger_id: colleger_id,
                    m_lecture_id: lecture_id
                }
            ).then((response)=> {                
                if(response.status == 200){
                    caacpd_to_spider_chart(response.data.data, `clcbs_spider_${lecture_id}`);
                    caacpd_to_chart(response.data.data, `clcbs_chart_${lecture_id}`);
                }
            })
        } catch (error) {
            swal_error(error);
        }
    }


    // ===========================================
    // ===========================================
    this.cacpd_to_spider_chart = (data, el_id) => {
        try {
            var names = [];  
            var series_data = []; 
            var _data = [];   
            var categories = [];
            var type = 'line';

            var j = 0;
            names.push("Competencies");
            _data.push([]);

            series_data.push({
                type: type,
                name: "Competencies",
                data: [],
                pointPlacement: 'on'
            });

            data.forEach(el => {

                if(categories.indexOf(el.competency) == -1){
                    categories.push(el.competency);                           
                    j++;
                }                        
            });

            for(i=0; i < names.length; i++){
                for(j=0; j < categories.length; j++){
                    series_data[i]['data'][j] = 0;
                }
            }

            data.forEach(el => {
                marks = parseFloat(el.rate_marks_)
                series_data[ names.indexOf("Competencies")]['data'][categories.indexOf(el.competency)] = parseFloat(marks.toFixed(2));
            });

            conf = {
                categories : categories,
                title : 'Competencies',
                conten_id: el_id
            }
        
            json_data = {
                series: series_data,
                categories: conf['categories'],
                title: conf['title']
            }

            // console.log(json_data);
            spider_chart_(json_data, conf['conten_id']);
            
        }catch (error) {
            swal_error(error);
        }
    }


    this.cacpd_to_chart = (data, el_id) => {
        try {
            var categories = [''];
            var r4_data = [0];
            var r100_data = [0];

            data.forEach(el => {
                rate_marks = parseFloat(el.rate_marks_);
                avg_marks = parseFloat(el.avg_marks_);

                r4_data.push( parseFloat(rate_marks.toFixed(2)) )
                r100_data.push( parseFloat(avg_marks.toFixed(2)) )
                categories.push(el.competency)
            });

            r4_data.push(0)
            r100_data.push(0)
            categories.push('')

            options = {
                categories: categories,
                series : [
                    {
                        name: 'Rate_100',
                        type: 'column',
                        yAxis: 1,
                        data:  r100_data,
                        tooltip: {
                            valueSuffix: '{value} of 100'
                        }
        
                    }, 
                    {
                        name: 'Rate_4', 
                        type: 'spline',
                        data: r4_data,
                        tooltip: {
                            valueSuffix: '{value} of 4'
                        }
                    }
                ],
                title: 'Competencies Statistics',
                subtitle: 'tisla.co.id'
            }
          
            line_bar_chart_(options, el_id);

        }catch (error) {
            swal_error(error);
        }
    }

    
    this.caacpd_to_chart = (data, el_id) => {
        try {
            var categories = [''];
            var r4_data = [0];
            var r100_data = [0];

            data.forEach(el => {
                rate_marks = parseFloat(el.rate_marks_);
                avg_marks = parseFloat(el.avg_marks_);

                r4_data.push( parseFloat(rate_marks.toFixed(2)) )
                r100_data.push( parseFloat(avg_marks.toFixed(2)) )
                categories.push(el.cpl_name)
            });

            r4_data.push(0)
            r100_data.push(0)
            categories.push('')

            options = {
                categories: categories,
                series : [
                    {
                        name: 'Rate_100',
                        type: 'column',
                        yAxis: 1,
                        data:  r100_data,
                        tooltip: {
                            valueSuffix: '{value} of 100'
                        }
        
                    }, 
                    {
                        name: 'Rate_4', 
                        type: 'spline',
                        data: r4_data,
                        tooltip: {
                            valueSuffix: '{value} of 4'
                        }
                    }
                ],
                title: 'CPL Statistics',
                subtitle: 'tisla.co.id'
            }
          
            line_bar_chart_(options, el_id);

        }catch (error) {
            swal_error(error);
        }
    }


    this.caacpd_to_spider_chart = (data, el_id) => {
        try {
            var names = [];  
            var series_data = []; 
            var _data = [];   
            var categories = [];
            var type = 'line';

            var j = 0;
            names.push("CPLs");
            _data.push([]);

            series_data.push({
                type: type,
                name: "CPLs",
                data: [],
                pointPlacement: 'on'
            });
            

            data.forEach(el => {
                if(categories.indexOf(el.cpl_name) == -1){
                    categories.push(el.cpl_name);                           
                    j++;
                }                        
            });            

            for(i=0; i < names.length; i++){
                for(j=0; j < categories.length; j++){
                    series_data[i]['data'][j] = 0;
                }
            }            

            data.forEach(el => {
                marks = parseFloat(el.rate_marks_)
                series_data[ names.indexOf("CPLs")]['data'][categories.indexOf(el.cpl_name)] = parseFloat(marks.toFixed(2));
            });
            

            conf = {
                categories : categories,
                title : 'CPLs',
                conten_id: el_id
            }
        
            json_data = {
                series: series_data,
                categories: conf['categories'],
                title: conf['title']
            }

            // console.log(json_data);
            spider_chart_(json_data, conf['conten_id']);
            
        }catch (error) {
            swal_error(error);
        }
    }


    $(document).ready(ready);
    

})();

