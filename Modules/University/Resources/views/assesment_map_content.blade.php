<div class="card">
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
            <li class="nav-item">
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

            <div class="tab-pane" id="cw_cpl_mark" role="tabpanel">
                
                @foreach($mapping_course_work_marks as $key => $val)
                    <div class="table-responsive">
                        <table class="table table-bordered mb-0 text-center table-striped">
                            <thead>
                            <tr class="">
                                    <th colspan="10">{{ $val->cw_name }} | {{  $val->cw_description }}</th>
                                </tr>

                                <tr class="">
                                    <th rowspan= "2" class="text-center">CPLs</th>
                                    @foreach($val->map_question_mark as $k=>$v)
                                        <th>{{ $v->question_name }}</th>
                                    @endforeach
                                </tr>
                                <tr class="">
                                    @foreach($val->map_question_mark as $k=>$v)
                                        <th>{{ $v->question_marks }}</th>
                                    @endforeach
                                </tr>

                            </thead>
                            <tbody>

                                @foreach($val->CPLs as $k => $v)                                                
                                    <tr>                                                    
                                        <td>{{ $v }}</td>   
                                        
                                        @foreach($val->map_question_mark as $kk => $vv)
                                        <td>
                                            @foreach($val->questions_cpl as $kkk => $vvv)
                                                @if($vvv->question_name == $vv->question_name)
                                                    @if($vvv->cpl_name == $v)
                                                        {{ $vvv->question_marks }}
                                                    @else
                                                        
                                                    @endif
                                                @endif
                                            @endforeach  
                                        </td>   
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