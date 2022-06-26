(function() {

    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    });

    ready = () => {
        refresh_page();        
    };   
    

    var json_data = [];
    generate_google_sheet_data_colleger = async() => {
        try {
            var spreadsheetID = $("#google_sheet_id_txt").val();
            var api_key = $("#google_sheet_id_txt").attr("api_key");
            var sheet = "clean_data"; // StatMhs!A1:B13
            var rowxcol = "A2:H150000";
            var url = `https://sheets.googleapis.com/v4/spreadsheets/${spreadsheetID}/values/${sheet}!${rowxcol}?majorDimension=COLUMNS&key=${api_key}`; //this is the part that's changed
            

            await axios.get(url).then((res)=>{             
                var i = 0;
                jQuery.each(res.data.values[0], function(k, v){
                    json_data.push({
                        "nim" : res.data.values[0][i].replace(/\s/g, ''),
                        "name": res.data.values[1][i].toUpperCase(),
                        "class_pos": res.data.values[4][i].toUpperCase(),
                        "batch": parseInt(res.data.values[6][i].toUpperCase()),
                        "status": res.data.values[5][i].toUpperCase(),
                        "campus_loc": res.data.values[7][i].toUpperCase()
                    });
                    i++;
                });

                $('#sync_google_sheet_data_colleger').removeAttr('disabled');
                $('#generate_google_sheet_data_colleger').attr("disabled", true);

                swal_done("Successfully Generated");

            }).catch( (error)=> {
                swal_error(error);
            });
            
            
        } catch (error) {
            swal_error(error);
        }
    }

    sync_google_sheet_data_colleger = async() => {
        try {
            swal_loading("Rendering Google Sheet Data...");
            await axios.post(
                './sync_api_data_colleger',
                {
                    "json_data" : json_data
                }
            ).then((response)=> {
                if(response.data.status == "OK"){
                    swal_done(response.data.msg);

                    $('#generate_google_sheet_data_colleger').removeAttr('disabled');
                    $('#sync_google_sheet_data_colleger').attr("disabled", true);
                    
                    refresh_page();
                }
            }).catch( (error)=> {
                swal_error(error);
            });
        } catch (error) {
            swal_error(error);
        }
    }


    refresh_page = () => {
        get_colleger_table();
    }

    get_colleger_table = async () => {
        try {

            $('#sync_colleger_table').DataTable({
                processing: true,
                serverSide: true,
                // dom: 'lBrtip',
                orderCellsTop: true,
                fixedHeader: true,
                ajax: {
                    url : "./ajax/sync_colleger_ajax",
                    type: 'POST',
                    headers: {
                        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                    }
                },
                columns: [
                    // {data: 'avatar', name: 'avatar'},
                    {data: 'name', name: 'c11_m_collegers.name'},
                    {data: 'category', name: 'c11_m_collegers.campus_loc'},
                    {data: 'status', name: 'c11_m_collegers.status'},
                    {
                        data: 'action', 
                        name: 'action', 
                        orderable: false, 
                        searchable: false
                    },
                ]
            });

            /*
            await axios.get('./collegers').then((response)=> {
                if(response.data.status == "OK"){
                }
            }).catch( (error)=> {
                swal_error(error);
            }); 
            */

        } catch (error) {
            swal_error(error);
        }
    }

    edit_colleger = async(m_colleger_id) => {       
        try{
            await axios.post(
                "./collegers/edit",
                {
                    "m_colleger_id" : m_colleger_id
                }
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

    save_edit_colleger = async() => {
        try{
            await axios.post(
                "./collegers/update",
                {
                    "data" : $('.swal2-container #edit_colleger').serializeJSON()
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

    delete_colleger = async(m_colleger_id) => {
        try{
            sconf = await swal_confirm("Are your sure to delete this?", "Delete", "Cancel");
            
            if(sconf == true){
                await axios.post(
                    "./collegers/delete",
                    {
                        "m_colleger_id" : m_colleger_id
                    }
                ).then((response)=> {
                    if(response.data.status == "OK"){
                        swal_done(response.data.msg);
                        // refresh_page();
                    }
                }).catch( (error)=> {
                    swal_error(error);
                });
            }else{

            }
            
        }catch (error) {
            swal_error(error);
        }
    }
    

    $(document).ready(ready);

})();

