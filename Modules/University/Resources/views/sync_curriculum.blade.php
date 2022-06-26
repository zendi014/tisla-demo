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
            Sync. Curriculum
        @endslot
    @endcomponent

    


    <div class="row">
        
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">
                    <h4 class="card-title">
                        Curriculum
                    </h4>
                </div>
                <div class="card-body">
                    <div class="row">
                        <div class="col-md-8">
                            
                        </div>
                        <div class="col-md-4 d-grid">
                            <button type="button" class=" btn btn-soft-secondary waves-effect waves-light" onclick="add_curriculum();">
                                <i class="fas fa-plus-circle"></i> Add Curriculum
                            </button>
                        </div>

                        <div class="col-lg-12" style="margin-top:+20px">
                            <table class="table table-bordered" id="sync_curriculum_table">
                                <thead>
                                    <tr>
                                        <!-- <th></th> -->
                                        <th>Name</th>
                                        <th>Department</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    
                    

                </div>
            </div>
        </div>

    </div>

@endsection


@section('script')
    <!-- apexcharts -->
    <script src="{{ URL::asset('/assets/libs/apexcharts/apexcharts.min.js') }}"></script>

    <script src="{{ URL::asset('assets/js/modules/master_swal.js')}}"></script>

    <script src="{{ URL::asset('assets/js/modules/master_sync_curriculum.js')}}"></script> 

@endsection

