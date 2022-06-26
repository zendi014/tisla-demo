(function() {

    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    });

    ready = () => {
        let file_id = $("#assesment_detail_content").attr("file_id");
        generate_assesment_detail_by_file_id(file_id);        
    };    


    load_assesment_file_list = async() =>{
        try {
            console.log("detail_assesment loaded")
            /*
            await axios.get('./assesment_file_index')  // render_excel/assessment
                .then( (response)=> {
                    $("#assesment_file_content").css("visibility", "visible");
                    $("#assesment_file_content").empty().append(response['data']);
                })
                .catch( (error)=> {
                    console.log(error);
                }).then(()=>{
                });
            */
        } catch (error) {
            console.error(error);
        }
    }


    generate_assesment_detail_by_file_id = (file_id) => {
        lecture_info_content(file_id);
        assesment_map_content(file_id);
        student_marks_content(file_id);

        charts_(file_id);
    }


    lecture_info_content = async(file_id) =>{
        try {
            await axios.get(
                `../lecture_info_content/${file_id}`
            ).then((response)=> {                
                if(response.status == 200){
                    $("#lecture_info_content").css("display", "block");
                    $("#lecture_info_content").empty().append(response.data);
                }
            }).catch( (error)=> {
                swal_error(error);
            }).then(()=>{

            });
        } catch (error) {
            swal_error(error);
        }
    }



    assesment_map_content = async(file_id) =>{
        try {
            await axios.get(
                `../assesment_map_content/${file_id}`
            ).then((response)=> {                
                if(response.status == 200){
                    $("#assesment_map_content").css("display", "block");
                    $("#assesment_map_content").empty().append(response.data);
                }
            }).catch( (error)=> {
                swal_error(error);
            }).then(()=>{

            });
        } catch (error) {
            swal_error(error);
        }
    }



    student_marks_content = async(file_id) =>{
        try {
            await axios.get(
                `../student_marks_content/${file_id}`
            ).then((response)=> {                
                if(response.status == 200){
                    $("#student_marks_content").css("display", "block");
                    $("#student_marks_content").empty().append(response.data);
                }
            }).catch( (error)=> {
                swal_error(error);
            }).then(()=>{

            });
        } catch (error) {
            swal_error(error);
        }
    }

    


    cqi_cpls_stats = async(file_id) =>{
        try {
            var categories = [''];
            var r4_data = [0];
            var r100_data = [0];

            var i = 0;
            
            await axios.get(
                `../cqi_cpls_stats/${file_id}`
            ).then((response)=> {                
                if(response.status == 200){
                    let dt = response.data.data;
                    
                    dt.forEach(el => {
                        rate_marks = parseFloat(el.rate_marks);
                        avg_marks = parseFloat(el.avg_marks);

                        r4_data.push( parseFloat(rate_marks.toFixed(2)) )
                        r100_data.push( parseFloat(avg_marks.toFixed(2)) )
                        categories.push(el.cpl_name)
                    });

                    r4_data.push(0)
                    r100_data.push(0)
                    categories.push('')

                    cqi_cpls_chart({
                        r100_data: r100_data,
                        r4_data: r4_data,
                        categories: categories,
                    })
                }
            }).catch( (error)=> {
                swal_error(error);
            }).then(()=>{

            });
        } catch (error) {
            swal_error(error);
        }
    }
    



    cqi_cpls_chart = (json) => {
        $("#assesment_chart_content").css("display", "block");

        options = {
            categories: json['categories'],
            series : [
                {
                    name: 'Rate_100',
                    type: 'column',
                    yAxis: 1,
                    data:  json['r100_data'],
                    tooltip: {
                        valueSuffix: '{value} of 100'
                    }
    
                }, 
                {
                    name: 'Rate_4', 
                    type: 'spline',
                    data: json['r4_data'],
                    tooltip: {
                        valueSuffix: '{value} of 4'
                    }
                }
            ],
            title: 'CPL Statistics',
            subtitle: 'tisla.co.id'
        }
        console.log(options);
        line_bar_chart_(options, 'chart_total_cpl_marks');
    }



    cqi_cpmks_stats = async(file_id) =>{
        try {
            var categories = [''];
            var r4_data = [0];
            var r100_data = [0];

            var i = 0;
            
            await axios.get(
                `../cqi_cpmks_stats/${file_id}`
            ).then((response)=> {                
                if(response.status == 200){
                    let dt = response.data.data;
                    
                    dt.forEach(el => {
                        rate_marks = parseFloat(el.rate_marks);
                        avg_marks = parseFloat(el.avg_marks);

                        r4_data.push( parseFloat(rate_marks.toFixed(2)) )
                        r100_data.push( parseFloat(avg_marks.toFixed(2)) )
                        categories.push(el.cpmk_name)
                    });

                    r4_data.push(0)
                    r100_data.push(0)
                    categories.push('')

                    cqi_cpmks_chart({
                        r100_data: r100_data,
                        r4_data: r4_data,
                        categories: categories,
                    })
                }
            }).catch( (error)=> {
                swal_error(error);
            }).then(()=>{

            });
        } catch (error) {
            swal_error(error);
        }
    }
    



    cqi_cpmks_chart = (json) => {
        $("#assesment_chart_content").css("display", "block");

        options = {
            categories: json['categories'],
            series : [
                {
                    name: 'Rate_100',
                    type: 'column',
                    yAxis: 1,
                    data:  json['r100_data'],
                    tooltip: {
                        valueSuffix: '{value} of 100'
                    }
    
                }, 
                {
                    name: 'Rate_4', 
                    type: 'spline',
                    data: json['r4_data'],
                    tooltip: {
                        valueSuffix: '{value} of 4'
                    }
                }
            ],
            title: 'CPMK Statistics',
            subtitle: 'tisla.co.id'
        }
        
        line_bar_chart_(options, 'chart_total_cpmk_marks');
    }




    charts_ = (file_id) => {      
        chart_competencies(file_id);
        cqi_cpls_stats(file_id);
        cqi_cpmks_stats(file_id);

        chart_cpl_by_cw(file_id);
        chart_cpmk_by_cw(file_id);

        chart_grades(file_id);
        chart_grades_by_cpl(file_id);
        chart_grades_by_cpmk(file_id);

        
    }


    chart_competencies = async (file_id) => {
        try {
            await axios.get(
                `../stat_cqi_competency_by_course_work/${file_id}`
            ).then((response)=> {
                if(response.status == 200){
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

                    response.data.forEach(el => {

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
                    
                    response.data.forEach(el => {
                        marks = parseFloat(el.rate_marks)
                        series_data[ names.indexOf("Competencies")]['data'][categories.indexOf(el.competency)] = parseFloat(marks.toFixed(2));
                    });
                    
                    conf = {
                        categories : categories,
                        title : 'Competencies',
                        conten_id: 'chart_caompetencies'
                    }
                
                    json_data = {
                        series: series_data,
                        categories: conf['categories'],
                        title: conf['title']
                    }

                    // console.log(json_data);

                    spider_chart_(json_data, conf['conten_id']);

                }
            }).catch( (error)=> {
                swal_error(error);
            });
        } catch (error) {
            swal_error(error);
        }
    }


    chart_cpl_by_cw = async (file_id) => {
        try {
            await axios.get(
                `../stat_cqi_cpl_by_course_work/${file_id}`
            ).then((response)=> {                
                if(response.status == 200){    
                    var names = [];  
                    var series_data = []; 
                    var _data = [];   
                    var categories = [];
                    var type = 'line';

                    var i = 0;
                    var j = 0;
                    response.data.forEach(el => {
                        if(names.indexOf(el.cw_name) == -1){
                            names.push(el.cw_name);
                            _data.push([]);

                            if(el.cw_name == "EXAM"){
                                type = 'area';
                            }

                            series_data.push({
                                type: type,
                                name: el.cw_name,
                                data: [],
                                pointPlacement: 'on'
                            });
                            i++;
                        }

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
                    
                    response.data.forEach(el => {
                        marks = parseFloat(el.rate_marks)
                        series_data[ names.indexOf(el.cw_name)]['data'][categories.indexOf(el.cpl_name)] = parseFloat(marks.toFixed(2));
                    });
                    
                    conf = {
                        categories : categories,
                        title : 'CPL Marks by Course Works',
                        conten_id: 'chart_cpl_by_cw'
                    }
                
                    json_data = {
                        series: series_data,
                        categories: conf['categories'],
                        title: conf['title']
                    }
                    spider_chart_(json_data, conf['conten_id']);
                }
            }).catch( (error)=> {
                swal_error(error);
            });
        } catch (error) {
            swal_error(error);
        }
    }



    chart_cpmk_by_cw = async (file_id) => {
        try {
            await axios.get(
                `../stat_cqi_cpmk_by_course_work/${file_id}`
            ).then((response)=> {                
                if(response.status == 200){    
                    var names = [];  
                    var series_data = []; 
                    var _data = [];   
                    var categories = [];
                    var type = 'line';

                    var i = 0;
                    var j = 0;
                    response.data.forEach(el => {
                        if(names.indexOf(el.cw_name) == -1){
                            names.push(el.cw_name);
                            _data.push([]);

                            if(el.cw_name == "EXAM"){
                                type = 'area';
                            }

                            series_data.push({
                                type: type,
                                name: el.cw_name,
                                data: [],
                                pointPlacement: 'on'
                            });
                            i++;
                        }

                        if(categories.indexOf(el.cpmk_name) == -1){
                            categories.push(el.cpmk_name);                           
                            j++;
                        }                        
                    });
                    
                    for(i=0; i < names.length; i++){
                        for(j=0; j < categories.length; j++){
                            series_data[i]['data'][j] = 0;
                        }
                    }
                    
                    response.data.forEach(el => {
                        marks = parseFloat(el.rate_marks)
                        series_data[ names.indexOf(el.cw_name)]['data'][categories.indexOf(el.cpmk_name)] = parseFloat(marks.toFixed(2));
                    });
                    
                    conf = {
                        categories : categories,
                        title : 'CPMK Marks by Course Works',
                        conten_id: 'chart_cpmk_by_cw'
                    }
                    
                    json_data = {
                        series: series_data,
                        categories: conf['categories'],
                        title: conf['title']
                    }
                    // console.log(json_data);

                    spider_chart_(json_data, conf['conten_id']);
                }
            }).catch( (error)=> {
                console.log(error)
                swal_error(error);
            })
        } catch (error) {
            swal_error(error);
        }
    }


    chart_grades = async (file_id) =>{
        try {
            await axios.get(
                `../get_cqi_stat_grades/${file_id}`
            ).then((response)=> {
                var data = [];
                if(response.status == 200){
                    response.data.forEach(el=>{
                        data.push({
                            name: "Grade " + el.grade,
                            y: parseInt(el.total_grade),
                            z: randomNumber(1, 5)
                        })
                    });

                    conf = {
                        title : 'Stat Grades',
                        conten_id: 'chart_grades'
                    }
                
                    json_data = {
                        series: data,
                        title: conf['title']
                    }
                    pie_chart_(json_data, conf['conten_id']);
                }
            }).catch( (error)=> {
                console.log(error)
                swal_error(error);
            });
        } catch (error) {
            console.log(error)
            swal_error(error);
        }
    }


    chart_grades_by_cpmk = async (file_id) => {
        try {
            await axios.get(
                `../student_grades_by_cpmk/${file_id}`
            ).then((response)=> {                
                if(response.status == 200){    
                    var names = [];  
                    var series_data = []; 
                    var _data = [];   
                    var categories = [];
                    var type = 'line';

                    var i = 0;
                    var j = 0;
                    
                    response.data.forEach(el => {
                        if(names.indexOf(el.grade) == -1){
                            names.push(el.grade);
                            _data.push([]);

                            series_data.push({
                                // type: type,
                                name: el.grade,
                                data: [],
                                // pointPlacement: 'on'
                            });
                            i++;
                        }

                        if(categories.indexOf(el.cpmk_name) == -1){
                            categories.push(el.cpmk_name);                           
                            j++;
                        }                        
                    });
                    
                    for(i=0; i < names.length; i++){
                        for(j=0; j < categories.length; j++){
                            series_data[i]['data'][j] = 0;
                        }
                    }                   
                    
                    response.data.forEach(el => {
                        series_data[ names.indexOf(el.grade)]['data'][categories.indexOf(el.cpmk_name)] = parseInt(el.total_grade);
                    });
                    
                    conf = {
                        categories : categories,
                        title : 'CPL Marks by Course Works',
                        conten_id: 'chart_grades_by_cpmk'
                    }
                
                    json_data = {
                        series: series_data,
                        categories: conf['categories'],
                        title: conf['title'],
                        type: 'column'
                    }
                    //console.log(json_data);
                    chart_bar_horizontal(json_data, conf['conten_id']);
                }
            }).catch( (error)=> {
                console.log(error)
                swal_error(error);
            })
        } catch (error) {
            swal_error(error);
        }
    }


    chart_grades_by_cpl = async (file_id) => {
        try {
            await axios.get(
                `../student_grades_by_cpl/${file_id}`
            ).then((response)=> {                
                if(response.status == 200){    
                    var names = [];  
                    var series_data = []; 
                    var _data = [];   
                    var categories = [];
                    var type = 'line';

                    var i = 0;
                    var j = 0;
                    
                    response.data.forEach(el => {
                        if(names.indexOf(el.grade) == -1){
                            names.push(el.grade);
                            _data.push([]);

                            series_data.push({
                                // type: type,
                                name: el.grade,
                                data: [],
                                // pointPlacement: 'on'
                            });
                            i++;
                        }

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
                    
                    response.data.forEach(el => { 
                        series_data[ names.indexOf(el.grade)]['data'][categories.indexOf(el.cpl_name)] = parseInt(el.total_grade);
                    });
                    
                    conf = {
                        categories : categories,
                        title : 'CPL Marks by Course Works',
                        conten_id: 'chart_grades_by_cpl'
                    }
                
                    json_data = {
                        series: series_data,
                        categories: conf['categories'],
                        title: conf['title'],
                        type: 'column'
                    }
                    //console.log(json_data);
                    
                    chart_bar_horizontal(json_data, conf['conten_id']);                    
                }
            }).catch( (error)=> {
                console.log(error)
                swal_error(error);
            })
        } catch (error) {
            swal_error(error);
        }
    }

    





    


    /*
    chart_cpl_x_cw = async(file_id) =>{
        try {
            await axios.get(
                `../stat_cqi_cpl_cw/${file_id}`
            ).then((response)=> {                
                if(response.status == 200){
                    // console.log(response.data);
                }
            }).catch( (error)=> {
                swal_error(error);
            }).then(()=>{

            });
        } catch (error) {
            swal_error(error);
        }
    }
    */




    /*
    assesment_chart_content = async(file_id) =>{
        try {
            await axios.get(
                `../assesment_chart_content/${file_id}`
            ).then((response)=> {                
                if(response.status == 200){
                    $("#assesment_chart_content").css("display", "block");
                    $("#assesment_chart_content").empty().append(response.data);
                }
            }).catch( (error)=> {
                swal_error(error);
            }).then(()=>{

            });
        } catch (error) {
            swal_error(error);
        }
    }
    */
    



    

    /*
    base_function = async() =>{
        try {
            await axios.post(
                './render_assesment_file',
                {
                    "file_id" : file_id
                }
            ).then((response)=> {
                if(response.data.status == "OK"){
                    swal_done(response.data.msg);
                }
            }).catch( (error)=> {
                swal_error(error);
            }).then(()=>{
                
            });
        } catch (error) {
            swal_error(error);
        }
    }
    */


    randomNumber = (min, max) => {
        return Math.floor(Math.random() * (max - min)) + min;
    }
      


    $(document).ready(ready);
    

})();

