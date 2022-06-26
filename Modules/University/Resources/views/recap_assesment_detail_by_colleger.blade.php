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
            {{ $currentAdminMenu }}
        @endslot
    @endcomponent

    


    
    <div class="row mt-3" id="detail_colleger" colleger_id="{{ $colleger->id }}">
    

        <div class="col-md-12">
            <div class="card">
                <div class="card-header">
                    <h4 class="card-title">{{ $colleger->name }} Competencies Summary</h4>
                </div><!-- end card header -->

                <div class="card-body">
                    <!-- <div class="d-flex flex-wrap gap-2" style="text-align:center"> -->
                        
                        <div class="row">

                        <div class="col-md-6">
                                <div id="spider_competencies_collegers_detail" class="mt-3"><div class="bg-soft-secondary p-2"></div></div>
                            </div>

                            <div class="col-md-6">
                                <div id="chart_competencies_collegers_detail" class="mt-3"><div class="bg-soft-secondary p-2"></div></div>
                            </div>

                            <div class="col-md-6">
                                <div id="spider_cpls_collegers_detail" class="mt-3"><div class="bg-soft-secondary p-2"></div></div>
                            </div>

                            <div class="col-md-6">
                                <div id="chart_cpls_collegers_detail" class="mt-3"><div class="bg-soft-secondary p-2"></div></div>
                            </div>

                        </div>

                    <!-- </div> -->
                </div><!-- end card-body -->
            </div><!-- end card -->
        </div><!-- end col -->


        @foreach($total_semester_colleger["lecture_semester"] as $key => $val)
        <div class="col-md-12 ct_semester" semester="{{ $val->semester_mk }}">
            <div class="card">
                <div class="card-header">
                    <h4 class="card-title">Semester ({{ $val->semester_mk }})</h4>
                </div><!-- end card header -->

                <div class="card-body">
                    <!-- <div class="d-flex flex-wrap gap-2" style="text-align:center"> -->
                        
                        <div class="row">

                        @foreach($total_semester_colleger["lecture_semester_lists"] as $kk => $vv)
                            @if($vv->semester_mk == $val->semester_mk)
                            <div class="col-md-12">
                                <div class="card">
                                    <div class="card-body overflow-hidden position-relative">
                                        <div>
                                            <i class="bx bxl-slack widget-box-1-icon text-primary"></i>
                                        </div>
                                        <div class="row">
                                            <h5 class="mt-3">
                                                <a href="{{ url('c11/detail_rendered_assesment_file') }}/{{ $vv->assement_file_id }}">
                                                    {{ $vv->code }}
                                                </a>
                                            </h5>
                                            <p style="margin-bottom:-10px">
                                                <a href="{{ url('c11/detail_rendered_assesment_file') }}/{{ $vv->assement_file_id }}">
                                                    {{ $vv->name }}
                                                </a>
                                            </p>
                                        </div>
                                        <hr/>
                                        <div class="row graph_content_colleger_lectures" id="{{ $vv->lecture_id }}">
                                            <div class="col-md-6">
                                                <div id="cmlcbs_spider_{{ $vv->lecture_id }}">
                                                    <div class="bg-soft-primary p-2"></div>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div id="cmlcbs_chart_{{ $vv->lecture_id }}">
                                                    <div class="bg-soft-primary p-2"></div>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div id="clcbs_spider_{{ $vv->lecture_id }}">
                                                    <div class="bg-soft-primary p-2"></div>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div id="clcbs_chart_{{ $vv->lecture_id }}">
                                                    <div class="bg-soft-primary p-2"></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            @endif
                        @endforeach

                        </div>

                    <!-- </div> -->
                </div><!-- end card-body -->
            </div><!-- end card -->
        </div><!-- end col -->
        @endforeach


    </div>

@endsection


@section('script')
    <!-- apexcharts -->
    <script src="{{ URL::asset('/assets/libs/apexcharts/apexcharts.min.js') }}"></script>

    <script src="{{ URL::asset('assets/js/modules/master_chart.js')}}"></script>
    <script src="{{ URL::asset('assets/js/modules/master_swal.js')}}"></script>

    <script src="{{ URL::asset('assets/js/modules/recap_assesment_colleger_detail.js')}}"></script> 

@endsection

