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
            <li class="nav-item">
                <a class="nav-link" data-bs-toggle="tab" href="#tab_2" role="tab" aria-selected="true">
                    <span class="d-block d-sm-none"><i class="far fa-user"></i></span>
                    <span class="d-none d-sm-block">Student Marks by CMPKs </span>
                </a>
            </li>
            <!-- <li class="nav-item">
                <a class="nav-link" data-bs-toggle="tab" href="#tab_3" role="tab">
                    <span class="d-block d-sm-none"><i class="far fa-envelope"></i></span>
                    <span class="d-none d-sm-block">Student Marks by CPLs</span>
                </a>
            </li> -->
            <!-- <li class="nav-item">
                <a class="nav-link" data-bs-toggle="tab" href="#tab_4" role="tab">
                    <span class="d-block d-sm-none"><i class="fas fa-cog"></i></span>
                    <span class="d-none d-sm-block">CQI Report</span>
                </a>
            </li> -->
        </ul>



        <!-- Tab panes -->
        <div class="tab-content p-3 text-muted">
            
            <div class="tab-pane active" id="tab_1" role="tabpanel">
                
            @if(isset($student_marks))
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
            @endif
            </div>
            <!-- end tab pane -->


            <div class="tab-pane" id="tab_2" role="tabpane2">

            @if(isset($pivot_student_mark_by_cpmk))
                @foreach($pivot_student_mark_by_cpmk as $k => $val)

                    <div class="table-responsive" style="margin-bottom:+40px">
                        <table class="table table-bordered mb-0 table-striped">
                            <thead>
                                <tr class="text-center">
                                    <th colspan="10">{{ $val['cw_name'] }} | {{ $val['cw_description'] }}</th>
                                </tr>
                                <tr class="">
                                    @if(isset($val['pivot_data'][0]))                        
                                        @foreach($val['pivot_data'][0] as $kk => $vv)
                                            @if(!empty($vv))
                                                @if($kk != 'student_name')
                                                    <th class="text-center">{{ str_replace("_", " ", strtoupper($kk)) }}</th>
                                                @else
                                                    <th>{{ str_replace("_", " ", strtoupper($kk)) }}</th>
                                                @endif
                                            @endif
                                        @endforeach
                                    @endif
                                </tr>
                            </thead>
                            <tbody>
                                
                                @foreach($val['pivot_data'] as $kk => $vv)
                                    <tr>
                                        @foreach($vv as $kkk => $vvv)                           
                                            @if(!empty($vvv))
                                                @if($kkk != 'student_name')
                                                    <td class="text-center">{{ $vvv }}</td>
                                                @else
                                                    <td>{{ $vvv }}</td>
                                                @endif
                                            @endif
                                        @endforeach
                                    </tr>
                                @endforeach

                            </tbody>
                        </table>
                    </div>

                @endforeach
                
            @endif

            </div>
            <!-- end tab pane -->



            <!-- <div class="tab-pane" id="tab_3" role="tabpane3">
                    
            </div> -->
            <!-- end tab pane -->


            <!-- <div class="tab-pane" id="tab_4" role="tabpane4">
                <div class="row">
                    CQI Report
                </div>                                                                        
            </div> -->
            <!-- end tab pane -->

        </div>

    </div>
</div>