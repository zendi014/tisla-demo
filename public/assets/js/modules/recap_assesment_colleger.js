(function() {

    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    });


    ready = () => {
        competencies_all_collegers_per_department();
        competencies_by_batch_list();

        cpls_all_collegers_per_department();
        cpl_all_colleger_lists();


        update_tab("tab_0");
    };    
    

    update_tab = (tab_id) => {
        $(".tab-pane").removeClass("active");
        $(`#${tab_id}`).addClass("active", "");
    }

    cpl_all_colleger_lists = async () => {
        setTimeout(() => {

            $(".graph_content_assesment_college").each(function() {
                $.each(this.attributes, function() {
                    if(this.value != 'graph_content_assesment_college'){
                        cpl_all_colleger_lists_details(this.value);
                    }                    
                });
            });
              
        }, 3000);
    }
    
    
    competencies_by_batch_list = async () => {
        setTimeout(() => {

            $(".total_competencies_by_year").each(function() {
                $.each(this.attributes, function() { 
                    if(this.value != 'card-title total_competencies_by_year'){
                        competencies_by_batch(this.value);
                    } 
                });
            }, 3000);

        });
    }

    this.competencies_by_batch = (batch) => {
        try {
            return new Promise((resolve, reject) => {
                resolve(competencies_by_batch_statistic(batch));
            })
        } catch (error) {
            swal_error(error);
        } 
    }


    this.competencies_by_batch_statistic = (batch) => {
        try {
            competencies_collegers_by_year_(batch);
            cpls_collegers_by_year_(batch);
        } catch (error) {
            swal_error(error);
        } 
    }


    this.competencies_collegers_by_year_ = async(batch) => {
        try {
            await axios.post(
                `./recap_assesment/competencies_collegers_by_year`,
                {
                    "batch": batch
                }
            ).then((response)=> {                
                if(response){
                    cacpd_to_spider_chart(response.data.data, `spider_competencies_collegers_by_year_${batch}`);
                    cacpd_to_chart(response.data.data, `chart_competencies_collegers_by_year_${batch}`);
                }
            })
        } catch (error) {
            swal_error(error);
        }
    }


    this.cpls_collegers_by_year_ = async(batch) => {
        try {
            await axios.post(
                `./recap_assesment/cpls_collegers_by_year`,
                {
                    "batch": batch
                }
            ).then((response)=> {                
                if(response){
                    caacpd_to_spider_chart(response.data.data, `spider_cpls_collegers_by_year_${batch}`);
                    caacpd_to_chart(response.data.data, `chart_cpls_collegers_by_year_${batch}`);
                }
            })
        } catch (error) {
            swal_error(error);
        }
    }



    this.cpl_all_colleger_lists_details = (colleger_id) => {
        try {
            return new Promise((resolve, reject) => {
                resolve(competencies_collegers_by_colleger_id(colleger_id));
            })
        } catch (error) {
            swal_error(error);
        }
    }


    competencies_collegers_by_colleger_id = async(colleger_id) => {
        try {
            await axios.post(
                `./recap_assesment/competencies_collegers_by_colleger_id`,
                {
                    "colleger_id": colleger_id
                }
            ).then((response)=> {                
                if(response){
                    ccbci_to_spider_chart(response.data.data, colleger_id);
                }
            })
        } catch (error) {
            swal_error(error);
        }
    }
    

    /*
    cpls_all_collegers_lists = async(key) => {
        try {
            await axios.post(
                `./recap_assesment/assesed_all_collegers_lists`,
                {
                    "search": key
                }
            ).then((response)=> {                
                if(response){
                    $("#assesed_all_collegers_lists_content").empty().append(
                        response.data
                    );
                }
            })
        } catch (error) {
            swal_error(error);
        }
    }
    

    search_assesment_colleger = ()=> {
        console.log(
            $("#txt_search_assesment_colleger").val()
        )        
    }
    */

    // ===========================================
    // ===========================================

    competencies_all_collegers_per_department = async() => {
        try {
            await axios.get(
                `./recap_assesment/competencies_all_collegers_per_department`
            ).then((response)=> {                
                if(response.status == 200){
                    cacpd_to_spider_chart(response.data.data, 'spider_competencies_all_collegers_by_department');
                    cacpd_to_chart(response.data.data, 'chart_competencies_all_collegers_by_department');
                }
            })
        } catch (error) {
            swal_error(error);
        }
    }


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

    // ===========================================
    // ===========================================

    cpls_all_collegers_per_department = async() => {
        try {
            await axios.get(
                `./recap_assesment/cpls_all_collegers_per_department`
            ).then((response)=> {                
                if(response.status == 200){
                    caacpd_to_spider_chart(response.data.data, 'chart_cpls_all_collegers_by_department');
                    caacpd_to_chart(response.data.data, 'spider_cpls_all_collegers_by_department');
                }
            })
        } catch (error) {
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

    // ===========================================
    // ===========================================



    ccbci_to_spider_chart = (data, colleger_id) => {
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
                title : '',
                conten_id: colleger_id
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

