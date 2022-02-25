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
            Detail Assesment
        @endslot
    @endcomponent



    
    
    <div class="row">

        <div class="col-xl-10 col-lg-8">


            <div class="card border-primary">
                <div class="card-body">
                    <div class="row">

                        <div class="col-sm order-3 order-sm-1">
                            <div class="d-flex align-items-start mt-3 mt-sm-0">

                                <div class="flex-grow-1">
                                    <div>
                                        <h4 class="font-size-16 mb-1">
                                            {{ $assesment_identity[0]->lecture_name; }} 
                                        </h4>
                                        <p class="text-muted font-size-13">
                                            {{ $assesment_identity[0]->lecture_code; }}
                                        </p>

                                        <h4 class="font-size-16 mb-1">
                                            {{ $assesment_identity[0]->lecturer_name; }}
                                        </h4>
                                        <p class="text-muted font-size-13">
                                            {{ $assesment_identity[0]->lecturer_nidn; }}
                                        </p>

                                        <div class="row">

                                            <div class="col-md-4">
                                                <h5 class="font-size-16 mb-1">
                                                    DEPARTMENT
                                                </h5>
                                                <p class="text-muted font-size-13">
                                                    {{ $assesment_identity[0]->department_name; }}
                                                </p>
                                            </div>

                                            <div class="col-md-4">
                                                <h5 class="font-size-16 mb-1">
                                                    LEVEL / SKS
                                                </h5>
                                                <p class="text-muted font-size-13">
                                                    {{ $assesment_identity[0]->level_marks; }}
                                                </p>
                                            </div>

                                            <div class="col-md-4">
                                                <h5 class="font-size-16 mb-1">
                                                    SEMESTER
                                                </h5>
                                                <p class="text-muted font-size-13">
                                                    {{ $assesment_identity[0]->semester; }}
                                                </p>
                                            </div>
                                        </div>
                                        

                                        <hr/>

                                        <div class="d-flex flex-wrap align-items-start gap-2 gap-lg-3 text-muted font-size-13">
                                            <div>
                                                <i class="mdi mdi-circle-medium me-1 text-success align-middle"></i>
                                                Rendered Lecture Code :: <code>{{ $assesment_identity[0]->lecture_id; }}</code>
                                            </div>                                            
                                        </div>

                                        <div class="card border border-danger" style="display:none">
                                            <div class="card-header bg-transparent border-danger">
                                                <h5 class="my-0 text-danger"><i class="mdi mdi-block-helper me-3"></i>
                                                    Attention!
                                                </h5>
                                            </div>
                                            <div class="card-body">
                                                <h5 class="card-title">card title</h5>
                                                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>


                    </div>                   

                </div>
                <!-- end card body -->
            </div>
            <!-- end card -->




            <div class="card border-success">
                <div class="card-body">
                    <!-- Nav tabs -->
                    <ul class="nav nav-tabs" role="tablist">
                        <li class="nav-item">
                            <a class="nav-link active" data-bs-toggle="tab" href="#assesment_design" role="tab" aria-selected="false">
                                <span class="d-block d-sm-none"><i class="fas fa-home"></i></span>
                                <span class="d-none d-sm-block">Assesment Design</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" data-bs-toggle="tab" href="#cw_cpmk_mark" role="tab" aria-selected="true">
                                <span class="d-block d-sm-none"><i class="far fa-user"></i></span>
                                <span class="d-none d-sm-block">CW-CPMK Map</span>
                            </a>
                        </li>
                        <li class="nav-item" style="display:none">
                            <a class="nav-link" data-bs-toggle="tab" href="#cw_cpl_mark" role="tab">
                                <span class="d-block d-sm-none"><i class="far fa-envelope"></i></span>
                                <span class="d-none d-sm-block">CW-CPL Map</span>
                            </a>
                        </li>
                    </ul>

                    <!-- Tab panes -->
                    <div class="tab-content p-3 text-muted">

                        <div class="tab-pane active" id="assesment_design" role="tabpanel">
                            <div class="table-responsive">
                                <table class="table table-bordered mb-0 text-center table-striped">
                                    <thead>
                                    <tr class="">
                                            <th colspan="10">Learning Outcomes</th>
                                        </tr>
                                        <tr class="">
                                            <th>Course Work</th>
                                            <th>Marks</th>
                                            @foreach($stat_cqi_cmpk as $key => $val)
                                            <th>
                                                    {{ $val->cpmk_name; }}
                                            </th>
                                            @endforeach
                                        </tr>
                                    </thead>
                                    <tbody>

                                        @foreach($mapping_course_work_marks as $key => $val)
                                            <tr>
                                                <td>
                                                    {{ $val-> cw_description;}}
                                                </td>
                                                <td>
                                                    {{ $val-> marks;}}
                                                </td>

                                                @foreach($stat_cqi_cmpk as $k => $v)
                                                <td>
                                                    @if(in_array($v->cpmk_name, $val->CPMKs))
                                                        <input class="form-check-input" type="checkbox" checked disabled>
                                                    @else
                                                        <input class="form-check-input" type="checkbox" disabled>
                                                    @endif
                                                </td>
                                                @endforeach

                                            </tr>
                                        @endforeach
                                        
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        
                        <div class="tab-pane" id="cw_cpmk_mark" role="tabpanel">

                            @foreach($mapping_course_work_marks as $key => $val)
                                <div class="table-responsive">
                                    <table class="table table-bordered mb-0 text-center table-striped">
                                        <thead>
                                        <tr class="">
                                                <th colspan="10">{{ $val->cw_name }} | {{  $val->cw_description }}</th>
                                            </tr>

                                            <tr class="">
                                                <th rowspan= "2" class="text-center">CPMKs</th>
                                                @foreach($val->questions_cpmk as $k=>$v)
                                                    <th>{{ $v->question_name }}</th>
                                                @endforeach
                                            </tr>
                                            <tr class="">
                                                @foreach($val->questions_cpmk as $k=>$v)
                                                    <th>{{ $v->question_marks }}</th>
                                                @endforeach
                                            </tr>

                                        </thead>
                                        <tbody>
                                            
                                            @foreach($val->CPMKs as $k => $v)
                                                
                                                <tr>
                                                    <td>{{ $v }}</td>

                                                    @foreach($val->questions_cpmk as $kk=>$vv)
                                                        @if($vv->cpmk_name == $v)
                                                            <td>{{ $vv->question_marks }}</td>
                                                        @else
                                                            <td> </td>
                                                        @endif
                                                    @endforeach

                                                </tr>  

                                            @endforeach      

                                        </tbody>
                                    </table>
                                </div>
                            @endforeach

                        </div>

                        <div class="tab-pane" id="cw_cpl_mark" role="tabpanel" style="display:none">
                            
                            @foreach($mapping_course_work_marks as $key => $val)
                                <div class="table-responsive">
                                    <table class="table table-bordered mb-0 text-center table-striped">
                                        <thead>
                                        <tr class="">
                                                <th colspan="10">{{ $val->cw_name }} | {{  $val->cw_description }}</th>
                                            </tr>

                                            <tr class="">
                                                <th rowspan= "2" class="text-center">CPMKs</th>
                                                @foreach($val->questions_cpmk as $k=>$v)
                                                    <th>{{ $v->question_name }}</th>
                                                @endforeach
                                            </tr>
                                            <tr class="">
                                                @foreach($val->questions_cpmk as $k=>$v)
                                                    <th>{{ $v->question_marks }}</th>
                                                @endforeach
                                            </tr>

                                        </thead>
                                        <tbody>
                                            
                                            @foreach($val->CPLs as $k => $v)
                                                
                                                <tr>
                                                    <td>{{ $v }}</td>

                                                    @foreach($val->questions_cpl as $kk=>$vv)
                                                        @if($vv->cpl_name == $v)
                                                            <td>{{ $vv->question_marks }}</td>
                                                        @else
                                                            <td> </td>
                                                        @endif
                                                    @endforeach

                                                </tr>  

                                            @endforeach      

                                        </tbody>
                                    </table>
                                </div>
                            @endforeach

                        </div>
                        
                    </div>
                </div>
            </div>
            <!-- end card -->





            <div class="card">
                <div class="card-body">
                    <!-- Nav tabs -->
                    <ul class="nav nav-tabs" role="tablist">
                        <li class="nav-item">
                            <a class="nav-link active" data-bs-toggle="tab" href="#tab_1" role="tab" aria-selected="false">
                                <span class="d-block d-sm-none"><i class="fas fa-home"></i></span>
                                <span class="d-none d-sm-block">Student Marks</span>
                            </a>
                        </li>
                        <!-- <li class="nav-item">
                            <a class="nav-link" data-bs-toggle="tab" href="#tab_2" role="tab" aria-selected="true">
                                <span class="d-block d-sm-none"><i class="far fa-user"></i></span>
                                <span class="d-none d-sm-block">Student CMPK Marks</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" data-bs-toggle="tab" href="#tab_3" role="tab">
                                <span class="d-block d-sm-none"><i class="far fa-envelope"></i></span>
                                <span class="d-none d-sm-block">Student CPL Marks</span>
                            </a>
                        </li> -->
                        <li class="nav-item">
                            <a class="nav-link" data-bs-toggle="tab" href="#tab_4" role="tab">
                                <span class="d-block d-sm-none"><i class="fas fa-cog"></i></span>
                                <span class="d-none d-sm-block">CQI</span>
                            </a>
                        </li>
                    </ul>

                    <!-- Tab panes -->
                    <div class="tab-content p-3 text-muted">
                        
                        <div class="tab-pane active" id="tab_1" role="tabpanel">
                            
                            <div class="table-responsive">
                                <table class="table table-bordered mb-0 table-striped">
                                    <thead>                                    
                                        <tr>
                                            <th rowspan= "2">NIM</th>
                                            <th rowspan= "2">Name</th>
                                            <th colspan="2">Course Work</th>
                                            <th colspan="2">Examination</th>
                                            <th rowspan= "2">Final Score</th>
                                            <th rowspan= "2">Grade</th>
                                        </tr>
                                        <tr>                                            
                                            <th>100%</th>
                                            <th>60%</th>
                                            <th>100%</th>
                                            <th>40%</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach($student_marks as $k => $val)
                                        <tr>
                                            <td class="text-center">
                                                {{ $val->nim }}
                                            </td>
                                            <td class="text-left">
                                                {{ $val->student_name }}
                                            </td>
                                            <td style="text-align: right;">                                                
                                                {{ number_format((float)$val->avg_course_work_marks, 2, '.', '') }}
                                            </td>
                                            <td style="text-align: right;">
                                                {{ number_format((float)$val->final_course_work_marks, 2, '.', '') }}
                                            </td>
                                            <td style="text-align: right;">
                                                {{ number_format((float)$val->avg_exam_marks, 2, '.', '') }}
                                            </td>
                                            <td style="text-align: right;">
                                                {{ number_format((float)$val->final_exam_marks, 2, '.', '') }}
                                            </td>
                                            <td style="text-align: right;">
                                                {{ number_format((float)$val->total_final_marks, 2, '.', '') }}
                                            </td>
                                            <td class="text-center">
                                                {{ $val->grade }}
                                            </td>
                                        </tr>
                                        @endforeach

                                    </tbody>
                                </table>
                            </div>

                        </div>
                        <!-- end tab pane -->


                        <!-- <div class="tab-pane" id="tab_2" role="tabpane2">

                        under development tab_2

                        </div> -->
                        <!-- end tab pane -->



                        <!-- <div class="tab-pane" id="tab_3" role="tabpane3">

                        under development tab_3
                                
                        </div> -->
                        <!-- end tab pane -->


                        <div class="tab-pane" id="tab_4" role="tabpane4">

                                <div class="card-body">
                                    <div>

                                        <div class="row">
                                            <div class="col-6">
                                                <div id="chart_1" class="mb-3"></div>
                                            </div>
                                            <div class="col-6">
                                                <div id="chart_2" class="mt-3"></div>
                                            </div>
                                            <div class="col-12">
                                                <div id="chart_3" class="mt-3"></div>
                                            </div>
                                            <div class="col-12">
                                                <div id="chart_4" class="mt-3"></div>
                                                
                                                <div style="display:none">
                                                    <table id="freq" border="0" cellspacing="0" cellpadding="0">
                                                        <tr nowrap bgcolor="#CCCCFF">
                                                            <th colspan="9" class="hdr">Table of Frequencies (percent)</th>
                                                        </tr>
                                                        <tr nowrap bgcolor="#CCCCFF">
                                                            <th class="freq">Direction</th>
                                                            <th class="freq">&lt; 0.5 m/s</th>
                                                            <th class="freq">0.5-2 m/s</th>
                                                            <th class="freq">2-4 m/s</th>
                                                            <th class="freq">4-6 m/s</th>
                                                            <th class="freq">6-8 m/s</th>
                                                            <th class="freq">8-10 m/s</th>
                                                            <th class="freq">&gt; 10 m/s</th>
                                                            <th class="freq">Total</th>
                                                        </tr>
                                                        <tr nowrap>
                                                            <td class="dir">N</td>
                                                            <td class="data">1.81</td>
                                                            <td class="data">1.78</td>
                                                            <td class="data">0.16</td>
                                                            <td class="data">0.00</td>
                                                            <td class="data">0.00</td>
                                                            <td class="data">0.00</td>
                                                            <td class="data">0.00</td>
                                                            <td class="data">3.75</td>
                                                        </tr>        
                                                        <tr nowrap bgcolor="#DDDDDD">
                                                            <td class="dir">NNE</td>
                                                            <td class="data">0.62</td>
                                                            <td class="data">1.09</td>
                                                            <td class="data">0.00</td>
                                                            <td class="data">0.00</td>
                                                            <td class="data">0.00</td>
                                                            <td class="data">0.00</td>
                                                            <td class="data">0.00</td>
                                                            <td class="data">1.71</td>
                                                        </tr>
                                                        <tr nowrap>
                                                            <td class="dir">NE</td>
                                                            <td class="data">0.82</td>
                                                            <td class="data">0.82</td>
                                                            <td class="data">0.07</td>
                                                            <td class="data">0.00</td>
                                                            <td class="data">0.00</td>
                                                            <td class="data">0.00</td>
                                                            <td class="data">0.00</td>
                                                            <td class="data">1.71</td>
                                                        </tr>
                                                        <tr nowrap bgcolor="#DDDDDD">
                                                            <td class="dir">ENE</td>
                                                            <td class="data">0.59</td>
                                                            <td class="data">1.22</td>
                                                            <td class="data">0.07</td>
                                                            <td class="data">0.00</td>
                                                            <td class="data">0.00</td>
                                                            <td class="data">0.00</td>
                                                            <td class="data">0.00</td>
                                                            <td class="data">1.88</td>
                                                        </tr>
                                                        <tr nowrap>
                                                            <td class="dir">E</td>
                                                            <td class="data">0.62</td>
                                                            <td class="data">2.20</td>
                                                            <td class="data">0.49</td>
                                                            <td class="data">0.00</td>
                                                            <td class="data">0.00</td>
                                                            <td class="data">0.00</td>
                                                            <td class="data">0.00</td>
                                                            <td class="data">3.32</td>
                                                        </tr>
                                                        <tr nowrap bgcolor="#DDDDDD">
                                                            <td class="dir">ESE</td>
                                                            <td class="data">1.22</td>
                                                            <td class="data">2.01</td>
                                                            <td class="data">1.55</td>
                                                            <td class="data">0.30</td>
                                                            <td class="data">0.13</td>
                                                            <td class="data">0.00</td>
                                                            <td class="data">0.00</td>
                                                            <td class="data">5.20</td>
                                                        </tr>
                                                        <tr nowrap>
                                                            <td class="dir">SE</td>
                                                            <td class="data">1.61</td>
                                                            <td class="data">3.06</td>
                                                            <td class="data">2.37</td>
                                                            <td class="data">2.14</td>
                                                            <td class="data">1.74</td>
                                                            <td class="data">0.39</td>
                                                            <td class="data">0.13</td>
                                                            <td class="data">11.45</td>
                                                        </tr>
                                                        <tr nowrap bgcolor="#DDDDDD">
                                                            <td class="dir">SSE</td>
                                                            <td class="data">2.04</td>
                                                            <td class="data">3.42</td>
                                                            <td class="data">1.97</td>
                                                            <td class="data">0.86</td>
                                                            <td class="data">0.53</td>
                                                            <td class="data">0.49</td>
                                                            <td class="data">0.00</td>
                                                            <td class="data">9.31</td>
                                                        </tr>
                                                        <tr nowrap>
                                                            <td class="dir">S</td>
                                                            <td class="data">2.66</td>
                                                            <td class="data">4.74</td>
                                                            <td class="data">0.43</td>
                                                            <td class="data">0.00</td>
                                                            <td class="data">0.00</td>
                                                            <td class="data">0.00</td>
                                                            <td class="data">0.00</td>
                                                            <td class="data">7.83</td>
                                                        </tr>
                                                        <tr nowrap bgcolor="#DDDDDD">
                                                            <td class="dir">SSW</td>
                                                            <td class="data">2.96</td>
                                                            <td class="data">4.14</td>
                                                            <td class="data">0.26</td>
                                                            <td class="data">0.00</td>
                                                            <td class="data">0.00</td>
                                                            <td class="data">0.00</td>
                                                            <td class="data">0.00</td>
                                                            <td class="data">7.37</td>
                                                        </tr>
                                                        <tr nowrap>
                                                            <td class="dir">SW</td>
                                                            <td class="data">2.53</td>
                                                            <td class="data">4.01</td>
                                                            <td class="data">1.22</td>
                                                            <td class="data">0.49</td>
                                                            <td class="data">0.13</td>
                                                            <td class="data">0.00</td>
                                                            <td class="data">0.00</td>
                                                            <td class="data">8.39</td>
                                                        </tr>
                                                        <tr nowrap bgcolor="#DDDDDD">
                                                            <td class="dir">WSW</td>
                                                            <td class="data">1.97</td>
                                                            <td class="data">2.66</td>
                                                            <td class="data">1.97</td>
                                                            <td class="data">0.79</td>
                                                            <td class="data">0.30</td>
                                                            <td class="data">0.00</td>
                                                            <td class="data">0.00</td>
                                                            <td class="data">7.70</td>
                                                        </tr>
                                                        <tr nowrap>
                                                            <td class="dir">W</td>
                                                            <td class="data">1.64</td>
                                                            <td class="data">1.71</td>
                                                            <td class="data">0.92</td>
                                                            <td class="data">1.45</td>
                                                            <td class="data">0.26</td>
                                                            <td class="data">0.10</td>
                                                            <td class="data">0.00</td>
                                                            <td class="data">6.09</td>
                                                        </tr>
                                                        <tr nowrap bgcolor="#DDDDDD">
                                                            <td class="dir">WNW</td>
                                                            <td class="data">1.32</td>
                                                            <td class="data">2.40</td>
                                                            <td class="data">0.99</td>
                                                            <td class="data">1.61</td>
                                                            <td class="data">0.33</td>
                                                            <td class="data">0.00</td>
                                                            <td class="data">0.00</td>
                                                            <td class="data">6.64</td>
                                                        </tr>
                                                        <tr nowrap>
                                                            <td class="dir">NW</td>
                                                            <td class="data">1.58</td>
                                                            <td class="data">4.28</td>
                                                            <td class="data">1.28</td>
                                                            <td class="data">0.76</td>
                                                            <td class="data">0.66</td>
                                                            <td class="data">0.69</td>
                                                            <td class="data">0.03</td>
                                                            <td class="data">9.28</td>
                                                        </tr>        
                                                        <tr nowrap bgcolor="#DDDDDD">
                                                            <td class="dir">NNW</td>
                                                            <td class="data">1.51</td>
                                                            <td class="data">5.00</td>
                                                            <td class="data">1.32</td>
                                                            <td class="data">0.13</td>
                                                            <td class="data">0.23</td>
                                                            <td class="data">0.13</td>
                                                            <td class="data">0.07</td>
                                                            <td class="data">8.39</td>
                                                        </tr>
                                                        <tr nowrap>
                                                            <td class="totals">Total</td>
                                                            <td class="totals">25.53</td>
                                                            <td class="totals">44.54</td>
                                                            <td class="totals">15.07</td>
                                                            <td class="totals">8.52</td>
                                                            <td class="totals">4.31</td>
                                                            <td class="totals">1.81</td>
                                                            <td class="totals">0.23</td>
                                                            <td class="totals">&nbsp;</td>
                                                        </tr>
                                                    </table>
                                                </div>

                                            </div>
                                        </div>
                                        
                                    </div>
                                </div>
                                <!-- end card body -->
                                
                        </div>
                        <!-- end tab pane -->

                    </div>

                </div>
            </div>




            

            <div class="card">
                <div class="card-header">
                    <div class="d-flex">
                        <div class="flex-grow-1">
                            <h5 class="card-title mb-0">Rendered Assesment</h5>
                        </div>
                        <div class="flex-shrink-0">
                            <a href="#post">View All</a>
                        </div>
                    </div>
                </div>
                <div class="card-body">
                    <div>
                        <div class="row">

                            @for($i=0; $i<=2; $i++)
                            <!-- end col -->
                            <div class="col-xl-4 col-sm-6">
                                <div class="card">
                                    <div class="card-body overflow-hidden position-relative">
                                        <div>
                                            <i class="bx bxl-slack widget-box-1-icon text-primary"></i>
                                        </div>
                                        <div class="faq-count">
                                            <h5 class="text-primary">Assesment...</h5>
                                        </div>
                                        <h5 class="mt-3">
                                            ..... <br/> ....
                                        </h5>
                                        <p class="text-muted mt-3 mb-0">
                                            <h4 class="card-title">
                                                Dosen
                                            </h4>
                                            <p class="card-title-desc">
                                                .... | ...
                                            </p>

                                            <h4 class="card-title mt-3 mb-0">
                                                Level / SKS
                                            </h4>
                                            <p class="card-title-desc">
                                                ....
                                            </p>

                                            <h4 class="card-title mt-3 mb-0">
                                                Semester
                                            </h4>
                                            <p class="card-title-desc">
                                                ....
                                            </p>
                                        </p>                                      
                                        
                                        <hr class="my-4">

                                        <a type="button" class="btn btn-soft-dark waves-effect waves-light float-end"
                                                href="#">
                                            <i class="bx bx-detail font-size-16 align-middle me-2"></i> Details
                                        </a>                                

                                    </div>
                                    <!-- end card body -->
                                </div>
                                <!-- end card  84c225--> 
                            </div>
                            @endfor

                        </div>
                        <!-- end row -->
                    </div>
                </div>
                <!-- end card body -->
            </div>
            <!-- end card -->


        </div>
        <!-- end col -->



        <div class="col-xl-2 col-lg-4">


            <div class="card">
                <div class="card-body">
                    <h5 class="card-title mb-3">CPMKs</h5>

                    <div class="d-flex flex-wrap gap-2 font-size-16">
                        @foreach($stat_cqi_cmpk as $key => $val)
                            <a href="#" class="badge badge-soft-primary" m_cpmk_id = "{{ $val->cpmk_id }}">
                                {{ $val->cpmk_name; }}
                            </a>
                        @endforeach
                    </div>

                    <a href="#" class="badge badge-soft-dark mt-3">Expand CPMKs >></a>
                </div>
                <!-- end card body -->
            </div>
            <!-- end card -->


            <div class="card">
                <div class="card-body">
                    <h5 class="card-title mb-3">CPLs</h5>

                    <div class="d-flex flex-wrap gap-2 font-size-16">
                        @foreach($stat_cqi_cpls as $key => $val)
                            <a href="#" class="badge badge-soft-danger" m_cpl_id = "{{ $val->cpl_id }}">
                                {{ $val->cpl_name; }}
                            </a>
                        @endforeach
                    </div>

                    <a href="#" class="badge badge-soft-dark mt-3">Expand CPLs >></a>
                </div>
                <!-- end card body -->
            </div>
            <!-- end card -->



            <div class="card">
                <div class="card-body">
                    <h5 class="card-title mb-3">Grades</h5>

                    <div class="row text-center">

                        @foreach($cqi_stat_grades as $key => $val)
                        <div class="col-6">
                            <h4 class="font-size-16 mb-1">
                                {{ $val->total_grade }}
                            </h4>
                            <p class="text-muted font-size-13">
                                Grade {{ $val->grade}}
                            </p>
                        </div>
                        @endforeach

                        
                    </div>

                    <a href="#" class="badge badge-soft-dark">Expand Grades >></a>
                </div>
                <!-- end card body -->
            </div>
            <!-- end card -->


        </div>
        <!-- end col -->



    </div>
    <!-- end row -->
    






@endsection


@section('script')
    <script>

        Highcharts.chart('chart_3', {
            title: {
                text: 'CPMKs Chart'
            },
            xAxis: {
                categories: ['CPMK1', 'CPMK2', 'CPMK3', 'CPMK4', 'CPMK5']
            },
            colors: ["#0a5c9a", "#fd625e", "#ffbf53", "#2ab57d", "#74788d", "#383d8a", "#777aca", "#34c38f", "#ffefd4"],
            labels: {
                items: [{
                    html: 'Total fruit consumption',
                    style: {
                        left: '50px',
                        top: '18px',
                        color: ( // theme
                            Highcharts.defaultOptions.title.style &&
                            Highcharts.defaultOptions.title.style.color
                        ) || 'black'
                    }
                }]
            },
            series: [{
                type: 'column',
                name: 'Jane',
                data: [3, 2, 1, 3, 4]
            }, {
                type: 'column',
                name: 'John',
                data: [2, 3, 5, 7, 6]
            }, {
                type: 'column',
                name: 'Joe',
                data: [4, 3, 3, 9, 0]
            }, {
                type: 'spline',
                name: 'Average',
                data: [3, 2.67, 3, 6.33, 3.33],
                marker: {
                    lineWidth: 2,
                    lineColor: Highcharts.getOptions().colors[3],
                    fillColor: 'white'
                }
            }, {
                type: 'pie',
                name: 'Total consumption',
                colors: ["#0a5c9a", "#ffbf53", "#2ab57d", "#343a40", "#f1734f"],
                data: [{
                    name: 'Jane',
                    y: 13,
                    color: Highcharts.getOptions().colors[0] // Jane's color
                }, {
                    name: 'John',
                    y: 23,
                    color: Highcharts.getOptions().colors[1] // John's color
                }, {
                    name: 'Joe',
                    y: 19,
                    color: Highcharts.getOptions().colors[2] // Joe's color
                }],
                center: [100, 80],
                size: 100,
                showInLegend: false,
                dataLabels: {
                    enabled: false
                }
            }]
        });



        // Parse the data from an inline table using the Highcharts Data plugin
        Highcharts.chart('chart_4', {
            title: {
                text: 'CPLs Chart'
            },
            xAxis: {
                categories: ['CPMK1', 'CPMK2', 'CPMK3', 'CPMK4', 'CPMK5']
            },
            colors: ["#0a5c9a", "#fd625e", "#ffbf53", "#2ab57d", "#74788d", "#383d8a", "#777aca", "#34c38f", "#ffefd4"],
            labels: {
                items: [{
                    html: 'Total fruit consumption',
                    style: {
                        left: '50px',
                        top: '18px',
                        color: ( // theme
                            Highcharts.defaultOptions.title.style &&
                            Highcharts.defaultOptions.title.style.color
                        ) || 'black'
                    }
                }]
            },
            series: [{
                type: 'column',
                name: 'Jane',
                data: [3, 2, 1, 3, 4]
            }, {
                type: 'column',
                name: 'John',
                data: [2, 3, 5, 7, 6]
            }, {
                type: 'column',
                name: 'Joe',
                data: [4, 3, 3, 9, 0]
            }, {
                type: 'spline',
                name: 'Average',
                data: [3, 2.67, 3, 6.33, 3.33],
                marker: {
                    lineWidth: 2,
                    lineColor: Highcharts.getOptions().colors[3],
                    fillColor: 'white'
                }
            }, {
                type: 'pie',
                name: 'Total consumption',                
                data: [{
                    name: 'Jane',
                    y: 13,
                    color: Highcharts.getOptions().colors[0] // Jane's color
                }, {
                    name: 'John',
                    y: 23,
                    color: Highcharts.getOptions().colors[1] // John's color
                }, {
                    name: 'Joe',
                    y: 19,
                    color: Highcharts.getOptions().colors[2] // Joe's color
                }],
                center: [100, 80],
                size: 100,
                showInLegend: false,
                dataLabels: {
                    enabled: false
                },
                colors: ["#0a5c9a", "#ffbf53", "#2ab57d", "#343a40", "#f1734f"],
            }]
        });




        Highcharts.chart('chart_2', {

            chart: {
                polar: true
            },

            title: {
                text: 'Highcharts Polar Chart'
            },

            subtitle: {
                text: 'Also known as Radar Chart'
            },

            pane: {
                startAngle: 0,
                endAngle: 360
            },

            xAxis: {
                tickInterval: 45,
                min: 0,
                max: 360,
                labels: {
                    format: '{value}°'
                }
            },

            yAxis: {
                min: 0
            },

            colors: ["#0a5c9a", "#fd625e", "#ffbf53", "#2ab57d", "#74788d", "#383d8a", "#777aca", "#34c38f", "#ffefd4"],

            plotOptions: {
                series: {
                    pointStart: 0,
                    pointInterval: 45
                },
                column: {
                    pointPadding: 0,
                    groupPadding: 0
                }
            },

            series: [{
                type: 'column',
                name: 'Column',
                data: [8, 7, 6, 5, 4, 3, 2, 1],
                pointPlacement: 'between'
            }, {
                type: 'line',
                name: 'Line',
                data: [1, 2, 3, 4, 5, 6, 7, 8]
            }, {
                type: 'area',
                name: 'Area',
                data: [1, 8, 2, 7, 3, 6, 4, 5]
            }]
        });



        // Parse the data from an inline table using the Highcharts Data plugin
        Highcharts.chart('chart_1', {
            data: {
                table: 'freq',
                startRow: 1,
                endRow: 17,
                endColumn: 7
            },

            chart: {
                polar: true,
                type: 'column'
            },

            title: {
                text: 'Wind rose for South Shore Met Station, Oregon',
                align: 'left'
            },

            colors: ["#0a5c9a", "#fd625e", "#ffbf53", "#2ab57d", "#74788d", "#383d8a", "#777aca", "#34c38f", "#ffefd4"],

            subtitle: {
                text: 'Source: or.water.usgs.gov',
                align: 'left'
            },

            pane: {
                size: '85%'
            },

            legend: {
                align: 'right',
                verticalAlign: 'top',
                y: 100,
                layout: 'vertical'
            },

            xAxis: {
                tickmarkPlacement: 'on'
            },

            yAxis: {
                min: 0,
                endOnTick: false,
                showLastLabel: true,
                title: {
                    text: 'Frequency (%)'
                },
                labels: {
                    formatter: function () {
                        return this.value + '%';
                    }
                },
                reversedStacks: false
            },

            tooltip: {
                valueSuffix: '%'
            },

            plotOptions: {
                series: {
                    stacking: 'normal',
                    shadow: false,
                    groupPadding: 0,
                    pointPlacement: 'on'
                }
            }
        });



    </script>
@endsection

