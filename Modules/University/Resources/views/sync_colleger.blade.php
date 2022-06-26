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
        

        
            <div class="card">
                <div class="card-header">
                    <h4 class="card-title">
                        Google Sheet ID 
                        <a href="#">
                            <i class="bx bx-info-circle" data-tooltip="See Google Sheet ID"></i>
                        </a>
                    </h4>
                    <p class="card-title-desc">
                        To Generate Collegers Data You Need Synchronize The Data Through Google Sheet using 
                        <a href="https://docs.google.com/spreadsheets" target="__blank"><strong>THIS TEMPLATE</strong></a>
                        <br/><br/>

                        https://docs.google.com/spreadsheets/d/<code>google sheet id</code>
                        <br/>
                        Example:: https://docs.google.com/spreadsheets/d/<code>1KcfVyd.....RcJJWlg0</code>
                    </p>
                </div><!-- end card header -->

                <div class="card-body">

                    <div class="row">

                        <div class="col-md-2">
                    
                        </div><!-- end row-->

                        <div class="col-md-6" style="text-align:center">
                        
                            <div class="mb-3">
                                <input type="text" class="form-control" id="google_sheet_id_txt" api_key="{{ env('GSHEET_API') }}" style="margin-bottom:-10px" value="{{ env('GSHEET_COLLEGER_ID') }}" placeholder="Google Sheet ID Example: 1U8hZdYkfnnYWBX3O9hVtPAdWEaMS_bjzBVRihOj1tyI">
                            </div>

                            <div class="mb-3">
                                <button type="button" id="generate_google_sheet_data_colleger" onclick="generate_google_sheet_data_colleger();" class="btn btn-outline-primary waves-effect waves-light">Generate Data</button>
                                <button type="button" id="sync_google_sheet_data_colleger" onclick="sync_google_sheet_data_colleger();" disabled class="btn btn-outline-success waves-effect waves-light">Sync Data</button>
                            </div>

                        </div><!-- end row-->

                        <div class="col-md-2">
                            
                        </div><!-- end row-->
                    
                    </div>

                </div><!-- end card-body -->
            </div>
            
        
    </div><!-- end row-->

    <div class="row mt-3">
        <div class="card">
            <div class="card-header">
                <h4 class="card-title">
                    Collegers Data
                </h4>
            </div><!-- end card header -->

            <div class="card-body">

                <div class="row">


                    <table class="table table-bordered table-hover" id="sync_colleger_table">
                        <thead>
                            <tr>
                                <!-- <th></th> -->
                                <th>Name</th>
                                <th>Status</th>
                                <th>Batch</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                        </tbody>
                    </table>


                </div><!-- end row-->

            </div>

        </div><!-- end card-body -->
    </div>

@endsection


@section('script')
    <!-- apexcharts -->
    <script src="{{ URL::asset('/assets/libs/apexcharts/apexcharts.min.js') }}"></script>

    <script src="{{ URL::asset('assets/js/modules/master_swal.js')}}"></script>

    <script src="{{ URL::asset('assets/js/modules/master_sync_colleger.js')}}"></script> 

@endsection

