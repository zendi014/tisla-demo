(function() {

    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    });

    ready = () => {
        refresh_page();
    };


    refresh_page = () => {
        dashboard_statistics_content();
        dashboard_last_assesment_content();
    }


    add_assesment_file = async() => {        
        try{
            await axios.get('./assesment_file_uploader').then((response)=> {
                $("#dashboard_file_upload_content").css("display", "show");
                $("#dashboard_file_upload_content").empty().append(response['data']).attr("class", "dz-message");
            }).catch( (error)=> {
                swal_error(error);
            }).then(()=>{
            });
        }catch (error) {
            swal_error(error);
        }
    }

    dashboard_statistics_content = async() => { 
        try{
            await axios.get('./dashboard_statistics').then((response)=> {
                $("#dashboard_statistics_content").css("visibility", "visible");
                $("#dashboard_statistics_content").empty().append(response['data']);
            }).catch( (error)=> {
                swal_error(error);
            }).then(()=>{
            });
        }catch (error) {
            swal_error(error);
        }
    }

    dashboard_last_assesment_content = async() => { 
        try{
            await axios.get('./dashboard_last_assesment').then((response)=> {
                $("#dashboard_last_assesment_content").css("visibility", "visible");
                $("#dashboard_last_assesment_content").empty().append(response['data']);
            }).catch( (error)=> {
                swal_error(error);
            }).then(()=>{
            });
        }catch (error) {
            swal_error(error);
        }
    }

    
    render_assesment_file = async(file_id) => {
        try {
            swal_loading("Rendering Assesment...");
            await axios.post(
                './render_assesment_file',
                {
                    "file_id" : file_id
                }
            ).then((response)=> {
                if(response.data.status == "OK"){
                    swal_done(response.data.msg);
                    refresh_page();
                }
            }).catch( (error)=> {
                swal_error(error);
            }).then(()=>{
            });
        } catch (error) {
            swal_error(error);
        }
    }


    
    detail_rendered_assesment_file = (file_id) => {
        try {
            
        } catch (error) {
            swal_error(error);
        }
    } 



    
    remove_assesment_file = async(file_id) => {
        try{
            await axios.post('./api/remove_file_by_id', {
                file_id: file_id
            }).then( (response)=> {
                swal_done(response.data.msg);
                dashboard_last_assesment_content();
            }).catch( (error)=> {
                swal_error(error);
            }).then(()=>{
            });
        }catch (error) {
            swal_error(error);
        }
    } 


    load_assesment_file_list = async() =>{
        try {
            await axios.get('./assesment_file_index')  // render_excel/assessment
                .then( (response)=> {
                    $("#assesment_file_content").css("visibility", "visible");
                    $("#assesment_file_content").empty().append(response['data']);
            }).catch( (error)=> {
                    swal_error(error);
            }).then(()=>{
            });
        } catch (error) {
            swal_error(error);
        }
    }



    $(document).ready(ready);

})();

