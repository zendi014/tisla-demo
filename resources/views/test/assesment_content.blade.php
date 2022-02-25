<div class="row">

    <div class="col-lg-12" id="file_uploader">
        <div class="card">
            <div class="card-body">
                

                @include('modules.file_uploader')

            </div>
            <!-- end  card body -->
        </div>
        <!-- end card -->
    </div>
    <!-- end col -->



    <div class="col-lg-12" id="assesment_page" style="visibility: hidden;">
    </div>
    <!-- end col -->

</div>



@section('script')

    <script src="{{ URL::asset('assets/js/modules/test/index.js')}}"></script>
    
@endsection
