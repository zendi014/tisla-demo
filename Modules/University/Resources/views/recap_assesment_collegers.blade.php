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
            Recap Assesment by Collegers
        @endslot
    @endcomponent

    

    <div class="row mt-3">
    

        <div class="col-md-12 hide_content">
            <div class="card">
                <div class="card-header">
                    <h4 class="card-title">University Competencies Summary</h4>
                </div><!-- end card header -->

                <div class="card-body">
                    <!-- <div class="d-flex flex-wrap gap-2" style="text-align:center"> -->
                        
                        <div class="row" style="text-align:center">

                            <div class="col-md-12">
                                Competencies Spider All Colleger
                            </div>

                            <div class="col-md-6">
                                CPL Spider All Colleger
                            </div>

                            <div class="col-md-6">
                                CPL Graph All Colleger
                            </div>

                        </div>

                    <!-- </div> -->
                </div><!-- end card-body -->
            </div><!-- end card -->
        </div><!-- end col -->


        <div class="col-md-12">
            <div class="card">
                <div class="card-header">
                    <h4 class="card-title">{{ $dept_info[0]->department_name }} Competencies Summary</h4>
                </div><!-- end card header -->

                <div class="card-body">
                    <!-- <div class="d-flex flex-wrap gap-2" style="text-align:center"> -->
                        
                        <div class="row">

                            <div class="col-md-6">
                                <div id="spider_competencies_all_collegers_by_department" class="mt-3"><div class="bg-soft-secondary p-2"></div></div>
                            </div>

                            <div class="col-md-6">
                                <div id="chart_competencies_all_collegers_by_department" class="mt-3"><div class="bg-soft-secondary p-2"></div></div>
                            </div>

                            <div class="col-md-6">
                                <div id="spider_cpls_all_collegers_by_department" class="mt-3"><div class="bg-soft-secondary p-2"></div></div>
                            </div>

                            <div class="col-md-6">
                                <div id="chart_cpls_all_collegers_by_department" class="mt-3"><div class="bg-soft-secondary p-2"></div></div>
                            </div>

                        </div>

                    <!-- </div> -->
                </div><!-- end card-body -->
            </div><!-- end card -->
        </div><!-- end col -->


        <div class="col-md-12">
            <div class="card">
                <div class="card-header">
                    <h4 class="card-title">Competencies History</h4>
                </div><!-- end card header -->
            
                <div class="card-body">
                    <!-- Nav tabs -->
                    <ul class="nav nav-tabs" role="tablist">
                        @foreach($total_competencies_by_year as $key => $val)
                        <li class="nav-item">
                            <a class="nav-link @if($key == 0) active @endif" data-bs-toggle="tab" href="#tab_{{ $val->batch }}" onclick="update_tab('tab_{{ $key }}');" role="tab" aria-selected="true">
                                <span class="d-block d-sm-none"><i class="fas fa-home"></i></span>
                                <span class="d-none d-sm-block">{{ $val->batch }}</span>    
                            </a>
                        </li>
                        @endforeach
                    </ul>

                    <!-- Tab panes -->
                    <div class="tab-content p-3 text-muted">
                        @foreach($total_competencies_by_year as $key => $val)
                        
                            <div class="tab-pane @if($key == 0) active @endif" id="tab_{{ $key }}" role="tabpanel">
                                
                                <div class="row">

                                    <div class="col-md-12">
                                        Competencies Summary ({{ $val->batch }})
                                    </div>

                                    <div class="col-md-6">
                                        <div id="spider_competencies_collegers_by_year_{{ $val->batch }}" class="mt-3"><div class="bg-soft-secondary p-2"></div></div>
                                    </div>

                                    <div class="col-md-6">
                                        <div id="chart_competencies_collegers_by_year_{{ $val->batch }}" class="mt-3"><div class="bg-soft-secondary p-2"></div></div>
                                    </div>

                                    <div class="col-md-6">
                                        <div id="spider_cpls_collegers_by_year_{{ $val->batch }}" class="mt-3"><div class="bg-soft-secondary p-2"></div></div>
                                    </div>

                                    <div class="col-md-6">
                                        <div id="chart_cpls_collegers_by_year_{{ $val->batch }}" class="mt-3"><div class="bg-soft-secondary p-2"></div></div>
                                    </div>

                                </div>

                            </div>
                        
                        @endforeach
                    </div>

                </div><!-- end card-body -->
            </div><!-- end card -->
        </div>


        @foreach($total_competencies_by_year as $key => $val)
        <div class="col-md-12 hide_content">
            <div class="card">
                <div class="card-header">
                    <h4 class="card-title total_competencies_by_year" batch="{{ $val->batch }}">{{ $dept_info[0]->department_name }} Competencies Summary ({{ $val->batch }})</h4>
                </div><!-- end card header -->

                <div class="card-body">
                    <!-- <div class="d-flex flex-wrap gap-2" style="text-align:center"> -->
                        
                        

                    <!-- </div> -->
                </div><!-- end card-body -->
            </div><!-- end card -->
        </div><!-- end col -->
        @endforeach



        <!-- PAGINATE -->
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">
                    <h4 class="card-title">Colleger Competencies</h4>
                </div><!-- end card header -->

                <div class="card-body">
                    <div class="d-flex flex-wrap gap-2">

                        <div class="col-md-12">
                            <div class="row justify-content-center">
                                <div class="col-xl-6">
                                    <form class="app-search d-none d-lg-block" action="./recap_assesment_collegers">
                                        <div class="position-relative">
                                            <input type="text" class="form-control" placeholder="Search..." name="q">
                                            <button class="btn btn-primary" type="submit">
                                                <i class="bx bx-search-alt align-middle"></i>
                                            </button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>

                        
                        @if( $count_query )
                            <div class="col-md-12">                                
                                <p class="text-muted mt-3 mb-0">
                                    {{ $count_query }} Data Found ...
                                </p>
                            </div>
                        
                            <!-- ============================= -->
                            
                            <div class="col-md-12">
                                
                                <!-- <div class="row" id="assesed_all_collegers_lists_content"></div>     -->
                                <div class="row">

                                    @if(isset($query_paginate))

                                        @foreach($query_paginate as $key => $val)
                                            
                                            <div class="col-md-4">
                                                <div class="card">
                                                    <div class="card-body overflow-hidden position-relative">
                                                        <div>
                                                            <i class="bx bxl-slack widget-box-1-icon text-primary"></i>
                                                        </div>
                                                        <div class="row">
                                                            <a href="./recap_assesment/detail_by_colleger/{{$val->m_colleger_id}}" target="__blank">
                                                                <h5 class="mt-3">{{ $val->nim }}</h5>
                                                                <p style="margin-bottom:-10px">{{ $val->colleger_name }}</p>
                                                            </a>
                                                        </div>
                                                        <hr/>
                                                        <div class="row" style="text-align:center">
                                                            @if($val->is_assesed == "TRUE")
                                                                <div class="graph_content_assesment_college" id="{{$val->m_colleger_id}}">
                                                                    <div class="bg-soft-primary p-2"></div>
                                                                </div>
                                                            @else
                                                                <img src="{{ URL::asset('/assets/images/svg/blue/svg123.svg') }}" height="400" alt="My SVG Icon">
                                                            @endif
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        @endforeach
                                        
                                        {{ $query_paginate->onEachSide(2)->links() }}

                                    @else

                                        @for ($i = 0; $i < 4; $i++)
                                            <div class="col-md-6">
                                                <div class="card">
                                                    <div class="card-body overflow-hidden position-relative">
                                                        <div>
                                                            <i class="bx bxl-slack widget-box-1-icon text-primary"></i>
                                                        </div>                                                    
                                                        <div class="row">
                                                            <div class="bg-soft-secondary p-2"></div>
                                                        </div>
                                                        <hr/>
                                                        <div class="row" style="text-align:center">
                                                            <div class="bg-soft-secondary p-2"></div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        @endfor

                                    @endif
                                <!-- sampe sini $query_paginate -->
                                </div>

                            </div>

                            <!-- ============================= -->
                        @else
                            <div class="col-md-12">
                                <div class="card">
                                    <div class="card-header">
                                        <h4 class="card-title">Assesment Activity</h4>
                                        <p class="card-title-desc">Assesment activity is not found. Please try another keyword</p>
                                    </div>
                                    <div class="card-body">
                                        <img src="{{ URL::asset('/assets/images/svg/blue/svg158.svg') }}" alt="My SVG Icon">
                                    </div>
                                </div>
                            </div>
                        @endif
                        

                    </div>
                </div><!-- end card-body -->
            </div><!-- end card -->
        </div><!-- end col -->


    </div><!-- end row-->



@endsection


@section('script')
    <!-- apexcharts -->
    <script src="{{ URL::asset('/assets/libs/apexcharts/apexcharts.min.js') }}"></script>

    <script src="{{ URL::asset('assets/js/modules/master_chart.js')}}"></script>
    <script src="{{ URL::asset('assets/js/modules/master_swal.js')}}"></script>

    <script src="{{ URL::asset('assets/js/modules/recap_assesment_colleger.js')}}"></script> 

@endsection

