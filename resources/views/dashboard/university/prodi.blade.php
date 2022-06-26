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

    


    <div class="row mt-3">
        CONTENT
    </div><!-- end row-->

    <div class="row mt-3" id="dashboard_file_upload_content">
        @can('upload_assesment')
            @include('modules.file_uploader')
        @endcan
    </div><!-- end row-->

    <div class="row mt-3">
        CONTENT
    </div><!-- end row-->



@endsection


@section('script')
    <!-- apexcharts -->
    <script src="{{ URL::asset('/assets/libs/apexcharts/apexcharts.min.js') }}"></script>

    <!-- dropzone js -->
    <script src="{{ URL::asset('/assets/libs/dropzone/min/dropzone.min.js') }}"></script>
    
    <script src="{{ URL::asset('assets/js/modules/master_swal.js')}}"></script>

    <script src="{{ URL::asset('assets/js/modules/file_uploader.js')}}"></script>   

@endsection

