(function() {

    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    });

    ready = () => {
        load_assesment_file_list();
    };

    $(document).ready(ready);


    load_assesment_file_list = async() =>{
        try {
            await axios.get('./assesment_file_index')  // render_excel/assessment
                .then( (response)=> {
                    $("#assesment_file_content").css("visibility", "visible");
                    $("#assesment_file_content").empty().append(response['data']);
                })
                .catch( (error)=> {
                    console.log(error);
                }).then(()=>{
                });
        } catch (error) {
            console.error(error);
        }
    }


})();

