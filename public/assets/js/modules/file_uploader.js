(function() {

    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    });

    ready = () => {
        // localStorage.setItem('files', null);
    };

    $(document).ready(ready);

        
    Dropzone.options.fileUpload = {    
        maxFilesize: 5,
        renameFile: function(file) {
            var dt = new Date();
            var time = dt.getTime();
        return time+".xlsm";
        },
        acceptedFiles: ".xlsm",
        addRemoveLinks: false,
        timeout: 5000,
        init: function() {
            myDropzone = this; // closure
            this.on("complete", function() {
                // localStorage.setItem('files', JSON.stringify(myDropzone.files));
                dashboard_last_assesment_content();
                dashboard_statistics_content();
            });
            this.on("removedfile", function() {
                if(myDropzone.files.length == 0){
                    $("#render_file_data").css("visibility", "hidden");
                }
                // localStorage.setItem('files', JSON.stringify(myDropzone.files));
                dashboard_last_assesment_content();
                dashboard_statistics_content();
            });

            this.on("complete", function(file) {
                myDropzone.removeFile(file);
            });
            
        },
        removedfile: function(file) 
        {
            var file_name = file.upload.filename;
            // $.ajax({
            //     type: 'POST',
            //     url: `../remove_file`,
            //     headers: {'X-CSRF-TOKEN': $('meta[name="_token"]').attr('content')},
            //     data: {_token: "{{ csrf_token() }}", "filename": file_name},
            //     success: function (response){
            //         swal_done(`${file_name} Successfully Removed!`);
            // },error: function(e) {
            //     swal_error(e);
            // }});
            
            var fileRef;
            return (fileRef = file.previewElement) != null ? 
            fileRef.parentNode.removeChild(file.previewElement) : void 0;
        },
        success: function(file, response) 
        {
            // console.log(response);

            swal_done(`${response["data"]["file_name"]} Successfully Uploaded!`);                

            $("#render_file_data").css("visibility", "visible");
        },
        error: function(file, response)
        {
            console.log(response);
            swal_error("An Error Occured! " + response);
            return false;
        }
    };

})();

