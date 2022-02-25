<div class="row mt-5">
    
    @foreach($assesment_files as $val)

        <div class="col-xl-4 col-sm-6">
            <div class="card">
                <div class="card-body overflow-hidden position-relative">
                    <div>
                        <i class="bx bxl-slack widget-box-1-icon text-primary"></i>
                    </div>
                    <div class="faq-count">
                        <h5 class="text-primary">Assesment {{ explode(".", $val->files['file_name'])[0] }}</h5>
                    </div>
                    <h5 class="mt-3">{{ $val['file_id'] }}</h5>
                    <p class="text-muted mt-3 mb-0">
                        
                    </p>
                    
                    <hr class="my-4">

                    <button type="button" class="btn btn-outline-primary waves-effect waves-light">
                        <i class="bx bx-layer font-size-16 align-middle me-2"></i> Render
                    </button>
                    <button type="button" class="btn btn-outline-dark waves-effect waves-light">
                        <i class="bx bx-detail font-size-16 align-middle me-2"></i> Details
                    </button>
                    <button type="button" class="btn btn-outline-danger waves-effect waves-light">
                        <i class="bx bxs-trash font-size-16 align-middle me-2"></i> Remove
                    </button>

                </div>
                <!-- end card body -->
            </div>
            <!-- end card -->
        </div>

    @endforeach

    {{ $assesment_files->links() }}
</div>
<!-- end row -->
