@extends('layouts.master')

@section('title') 
    @lang('dashboard.app_name') 
@endsection

@section('title-detail') 
    @lang('dashboard.app_name_detail') 
@endsection

@section('content')

    @component('components.breadcrumb')
        @slot('prarent_menu') 
            @lang('dashboard.pages') 
        @endslot
        
        @slot('child_menu')
            Activity
        @endslot
    @endcomponent

    


    <div class="row mt-3" id="dashboard_statistics_content" style="visibility:hidden">

    </div><!-- end row-->

    <div class="row mt-3" id="dashboard_file_upload_content">
        @can('upload_assesment')
            @include('modules.file_uploader')
        @endcan
    </div><!-- end row-->


    <div class="row mt-3" id="dashboard_last_assesment_content" style="visibility:hidden">
        
    </div>
    <!-- end row -->


    <div class="row mt-3" id="dashboard_last_cqi_content" style="visibility:hidden">
        <div class="card">

            <div class="card-header">
                <h4 class="card-title">Latest CQI</h4>
            </div>
            
            <div class="card-body">
                <div class="row">
                </div>
            </div>

            <div class="card-footer">
                <a type="button"  href="#"
                    id="view_all_assesment_file"
                    class="btn btn-soft-primary waves-effect waves-light float-end">
                    <i class="bx bxs-detail font-size-16 align-middle me-2"></i> 
                    See All CQI Report
                </a>
            </div>

        </div>
    </div>


@endsection


@section('script')
    <!-- apexcharts -->
    <script src="{{ URL::asset('/assets/libs/apexcharts/apexcharts.min.js') }}"></script>

    <!-- dropzone js -->
    <script src="{{ URL::asset('/assets/libs/dropzone/min/dropzone.min.js') }}"></script>
    
    <script src="{{ URL::asset('assets/js/modules/master_swal.js')}}"></script>

    <script src="{{ URL::asset('assets/js/modules/client_university.js')}}"></script>

    <script src="{{ URL::asset('assets/js/modules/file_uploader.js')}}"></script>   

    <!-- <script src="{{ Module::asset('university:js/assesmentfile.js')}}"></script>     -->
@endsection

