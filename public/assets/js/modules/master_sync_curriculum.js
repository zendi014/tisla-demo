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
        get_curriculum_table();
    }

    get_curriculum_table = async () => {
        try {
            $('#sync_curriculum_table').DataTable({
                processing: true,
                serverSide: true,
                // dom: 'lBrtip',
                orderCellsTop: true,
                fixedHeader: true,
                ajax: {
                    url : "./ajax/sync_curriculum_ajax",
                    type: 'POST',
                    headers: {
                        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                    }
                },
                columns: [
                    // {data: 'avatar', name: 'avatar'},
                    {data: 'name', name: 'name'},
                    {data: 'department_name', name: 'department_name'},
                    {
                        data: 'action', 
                        name: 'action', 
                        orderable: false, 
                        searchable: false
                    },
                ]
            });
        }catch (error) {
            swal_error(error);
        }
    }


    add_curriculum = async () => {
        try{
            await axios.get(
                "./curricullum/form",
            ).then((response)=> {
                swal_html_middle_50(
                    response['data']
                );
            }).catch( (error)=> {
                swal_error(error);
            });
        }catch (error) {
            swal_error(error);
        }
    }


    save_add_curriculum = async() => {
        try{
            await axios.post(
                "./curricullum/store",
                {
                    "data" : $('.swal2-container #form_curriculum').serializeJSON()
                }
            ).then((response)=> {
                if(response.data.status == "OK"){
                    swal_done(response.data.msg);
                    // refresh_page();
                }
            }).catch( (error)=> {
                swal_error(error);
            });
            
        }catch (error) {
            swal_error(error);
        }
    }

    cancel_add_curriculum = () => {
        Swal.close()
    }

    edit_curriculum = (curriculum_id) => {
        console.log(curriculum_id);
    }

    delete_curriculum = (curriculum_id) => {
        console.log(curriculum_id);
    }


    $(document).ready(ready);

})();

