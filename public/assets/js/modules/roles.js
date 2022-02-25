(function() {
    
    let asset_url = "";

    const ready = () => {
        console.log("roles loaded..")
    }

    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    });

    show_roles_handler = async(url) => {     
        console.log(url);
        
        try {
            await axios.get(url) 
                .then( (response)=> {
                    $('#global_modal_lg').modal({backdrop: 'static', keyboard: true});
                    $('#global_modal_lg').modal('show');
                    $('#global_modal_lg_title').html("Roles Detail");
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


    create_roles_handler = async(url) => {
        try {
            await axios.get(url) 
                .then( (response)=> {
                    $('#global_modal_xl').modal({backdrop: 'static', keyboard: true});
                    $('#global_modal_xl').modal('show');
                    $('#global_modal_xl_title').html("Create Roles");
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


    edit_roles_handler = async(url) => {
        try {
            await axios.get(url) 
                .then( (response)=> {
                    $('#global_modal_xl').modal({backdrop: 'static', keyboard: true});
                    $('#global_modal_xl').modal('show');
                    $('#global_modal_xl_title').html("Edit roles");
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