<div class="row justify-content-center mt-8" style="margin-bottom:-60px;display:none">
    <div class="col-xl-10 col-lg-8">
        <div class="text-center">
            <h5>Assesment data will appeared after uploading, rendering, and synchonizing</h5>
            <p class="text-muted">
                Upload an assesment file to generate Continoues Quality Improvement (CQI) result...
            </p>
            <div>
                <form  
                        id="file-upload" 
                        method="POST" 
                        action="{{ route('upload_file') }}"
                        accept-charset="utf-8" 
                        enctype="multipart/form-data"
                        class="dropzone"
                >
                    @csrf
                    <div class="fallback">
                        <input type="file" name="files[]" id="files">
                    </div>
                    <div class="dz-message needsclick">
                        <div class="mb-3">
                            <i class="display-4 text-muted bx bx-cloud-upload"></i>
                        </div>

                        <h5>Drop files here or click to upload.</h5>
                    </div>

                </form>
            </div>

            
            <div class="text-center mt-4" id="render_file_data" style="visibility: hidden;" >
                <!-- <button type="button" onclick="render_file_data()" class="btn btn-primary waves-effect waves-light">
                    Render File Data
                </button>
                <p class="text-muted mt-3">
                    Rendering file data will take times to synchorize your data, please dont close this tab..
                </p> -->
            </div>

            <div class="row justify-content-center" style="visibility: hidden;">
                <div class="col-xl-10">
                    <form class="app-search d-none d-lg-block mt-4">
                        <div class="position-relative">
                            <input type="text" class="form-control" placeholder="Search...">
                            <button class="btn btn-primary" type="button">
                                <i class="bx bx-search-alt align-middle"></i>
                            </button>
                        </div>
                    </form>
                </div>
            </div>
            
            
        </div>
    </div>
    <!-- end col -->


    <div class="col-xl-10 col-lg-8">
        <div class="card bg-danger border-danger text-white-50">
            <div class="card-body">
                <h5 class="mb-4 text-white">
                    <i class="mdi mdi-block-helper me-3"></i>
                    Attention!
                </h5>
                <p class="card-text">
                    Rendering System is Under Improvement,
                    you can upload assesment file soon.
                </p>
            </div>
        </div>
    </div>
</div>
<!-- end row -->