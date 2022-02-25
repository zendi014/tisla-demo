(function() {
    
    let asset_url = "";

    const ready = () => {
        // asset_url = $("#assesment_page").attr("asset_url");
        console.log("users loaded..")
    }

    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    });

    show_user_handler = async(url) => {     
        try {
            // swal_loading(asset_url);
            await axios.get(url)  // render_excel/assessment
                .then( (response)=> {
                    // swal_html_mini(response['data']);
                    $('#global_modal_lg').modal({backdrop: 'static', keyboard: true});
                    $('#global_modal_lg').modal('show');
                    $('#global_modal_lg_title').html("User Detail");
                    $('#global_modal_lg_body').html(response['data']);
                })
                .catch( (error)=> {
                    console.log(error);
                }).then(()=>{
                });
        } catch (error) {
            console.error(error);
        }   
    }


    create_user_handler = async(url) => {
        try {
            // swal_loading(asset_url);
            await axios.get(url)  // render_excel/assessment
                .then( (response)=> {
                    // swal_html(response['data']);
                    $('#global_modal_xl').modal({backdrop: 'static', keyboard: true});
                    $('#global_modal_xl').modal('show');
                    $('#global_modal_xl_title').html("Create User");
                    $('#global_modal_xl_body').html(response['data']);
                })
                .catch( (error)=> {
                    console.log(error);
                }).then(()=>{
                });
        } catch (error) {
            console.error(error);
        }
    }


    edit_user_handler = async(url) => {
        try {
            // swal_loading(asset_url);
            await axios.get(url)  // render_excel/assessment
                .then( (response)=> {
                    // swal_html(response['data']);
                    $('#global_modal_xl').modal({backdrop: 'static', keyboard: true});
                    $('#global_modal_xl').modal('show');
                    $('#global_modal_xl_title').html("Edit User");
                    $('#global_modal_xl_body').html(response['data']);
                })
                .catch( (error)=> {
                    console.log(error);
                }).then(()=>{
                });
        } catch (error) {
            console.error(error);
        }
    }
    

    $(document).ready(ready);

})();