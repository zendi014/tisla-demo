(function() {
    
    let asset_url = "";

    const ready = () => {
        asset_url = $("#assesment_page").attr("asset_url");   

        // swal_loading(asset_url);
        // load_assesment_file();
    }

    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    });

    const load_assesment_file = async() => {
        try {
            await axios.get('/assesment_content_detail/assessment')  // render_excel/assessment
                .then( (response)=> {
                    // handle success
                    swal_done("Data Successfully Generated!");
                    $("#assesment_page").css("visibility", "visible");

                    $("#assesment_page").empty().append(response['data']);
                })
                .catch( (error)=> {
                    // handle error
                    console.log(error);
                }).then(()=>{
                    // swal_loading();
                });
        } catch (error) {
            console.error(error);
        }
    }


    const content_data = () => {
        $("#assesment_content").css("text-align", "center");
        $("#assesment_content").empty().append(
            `
                <img 
                    src="${asset_url}/images/svg/green/svg31.svg" 
                    alt="" style="height:auto; max-width: 50%;"
                >
            `
        );
    }

    $(document).ready(ready);

})();