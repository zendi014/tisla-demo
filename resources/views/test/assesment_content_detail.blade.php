
<div class="row">
    <div class="col-xl-12">
        <div class="card">
            <div class="card-header">
                <h4 class="card-title">Generated Assesment Data</h4>
                <div class="row">
                    @foreach($assesment_data["LECTURE"]["lecture_detail"] as $val)

                        @foreach($val as $kk => $vv)
                        <div class="col-md-4">
                            <div>
                                <div>
                                    <h5 class="font-size-15">{{ $kk }}::</h5>
                                    <p>{{ $vv }}</p>
                                </div>
                            </div>
                        </div>
                        @endforeach

                    @endforeach
                </div>
            </div><!-- end card header -->

            <div class="card-body">
                <!-- Nav tabs -->
                <ul class="nav nav-tabs" role="tablist">
                    <li class="nav-item">
                        <a class="nav-link active" data-bs-toggle="tab" href="#MainTab_1" role="tab">
                            <span class="d-block d-sm-none"><i class="fas fa-home"></i></span>
                            <span class="d-none d-sm-block">Mapping Assesment</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" data-bs-toggle="tab" href="#MainTab_2" role="tab"> 
                            <span class="d-block d-sm-none"><i class="far fa-user"></i></span>
                            <span class="d-none d-sm-block">Participants</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" data-bs-toggle="tab" href="#MainTab_3" role="tab">
                            <span class="d-block d-sm-none"><i class="far fa-envelope"></i></span>
                            <span class="d-none d-sm-block">Mapping CPMK & CPL</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" data-bs-toggle="tab" href="#MainTab_4" role="tab">
                            <span class="d-block d-sm-none"><i class="fas fa-cog"></i></span>
                            <span class="d-none d-sm-block">Assesment Recap</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" data-bs-toggle="tab" href="#MainTab_5" role="tab">
                            <span class="d-block d-sm-none"><i class="fas fa-cog"></i></span>
                            <span class="d-none d-sm-block">AIS Marks</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" data-bs-toggle="tab" href="#MainTab_6" role="tab">
                            <span class="d-block d-sm-none"><i class="fas fa-cog"></i></span>
                            <span class="d-none d-sm-block">CQI Results</span>
                        </a>
                    </li>
                </ul>

                <!-- Tab panes -->
                <div class="tab-content p-3 text-muted">  

                    <div class="tab-pane active" id="MainTab_1" role="tabpanel">

                        <ul class="nav nav-tabs" role="tablist">
                            <li class="nav-item">
                                <a class="nav-link active" data-bs-toggle="tab" href="#SubTab_11" role="tab">
                                    <span class="d-block d-sm-none"><i class="fas fa-home"></i></span>
                                    <span class="d-none d-sm-block">Mapping Assesment</span>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" data-bs-toggle="tab" href="#SubTab_12" role="tab">
                                    <span class="d-block d-sm-none"><i class="fas fa-home"></i></span>
                                    <span class="d-none d-sm-block">Mapping CPMK</span>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" data-bs-toggle="tab" href="#SubTab_13" role="tab">
                                    <span class="d-block d-sm-none"><i class="fas fa-home"></i></span>
                                    <span class="d-none d-sm-block">CPL Details</span>
                                </a>
                            </li>
                        </ul>

                        <!-- Tab panes -->
                        <div class="tab-content p-3 text-muted">

                            <div class="tab-pane active" id="SubTab_11" role="tabpanel">
                                <div class="table-responsive" style="margin-top:+15px">
                                    <table class="table table-bordered table-hover table-striped table-md">
                                        <thead>
                                            <th>CPMK</th>
                                            <th>Mapped CPMKs</th>
                                        </thead>
                                        <tbody>
                                            @foreach($assesment_data["MAPPING"]["CPMK"]["cw_mapping_detail"] as $cmpks)
                                                <tr>                                            
                                                    <td>
                                                        <div class="col-xl-4 col-7">
                                                            <div class="d-flex align-items-center">
                                                                <div class="flex-grow-1">
                                                                    <h5 class="font-size-14 mb-1 text-truncate">
                                                                        @if( str_replace('_', ' ', $cmpks['Description']) == 'UAS')
                                                                            <a href="#" class="text-dark">
                                                                                Examination - {{ str_replace('_', ' ', $cmpks['Description']) }}
                                                                            </a> 
                                                                        @else
                                                                            <a href="#" class="text-dark">
                                                                                {{ $cmpks['Name'] }} - {{ str_replace('_', ' ', $cmpks['Description']) }}
                                                                            </a> 
                                                                        @endif
                                                                    </h5>
                                                                    <p class="text-muted text-truncate mb-0">Mark:: {{ $cmpks['Bobot'] }}</p>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </td> 
                                                    <td>
                                                        <h5 class="font-size-14 mb-1 text-truncate">
                                                            <span class="badge bg-primary mb-0">
                                                                Total CMPKs:: {{ $cmpks['Total_CPMK']}}
                                                            </span>                                                    
                                                        </h5>
                                                        {{ str_replace('_', ' ', implode(", ", $cmpks['CPMKs']) ) }}                                                
                                                    </td> 
                                                </tr>
                                            @endforeach
                                        </tbody>
                                    </table>
                                </div>
                            </div>

                            <div class="tab-pane " id="SubTab_12" role="tabpanel">
                                <div class="table-responsive" style="margin-top:+15px">
                                    <table class="table table-bordered table-hover table-striped table-md">
                                        <thead>
                                            <th>CPMK</th>
                                            <th>Mapped CPLs</th>
                                            <th>Assesment</th>
                                        </thead>
                                        <tbody>
                                            @foreach($assesment_data["MAPPING"]["CPMK"]["cmpk_lists"] as $cmpks)
                                                <tr>                                            
                                                    <td>
                                                        <div class="col-xl-4 col-7">
                                                            <div class="d-flex align-items-center">
                                                                <div class="flex-grow-1">
                                                                    <h5 class="font-size-14 mb-1 text-truncate">
                                                                        <a href="#" class="text-dark">{{ str_replace('_', ' ', $cmpks['Name']) }}</a> 
                                                                    </h5>
                                                                    <p class="text-muted text-truncate mb-0">{{ $cmpks['Description']}}</p>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </td> 
                                                    <td>
                                                        <h5 class="font-size-14 mb-1 text-truncate">
                                                            <span class="badge bg-primary }}">
                                                                Total CPLs:: {{ $cmpks['Total_CPL']}}
                                                            </span>                                                    
                                                        </h5>
                                                        {{ implode(", ", $cmpks['CPLs']) }}                                                
                                                    </td> 
                                                    <td>
                                                        <h5 class="font-size-14 mb-1 text-truncate">
                                                            {{ $cmpks['Assesment']}}
                                                        </h5>
                                                    </td>     
                                                </tr>
                                            @endforeach
                                        </tbody>
                                    </table>
                                </div>
                            </div>

                            <div class="tab-pane" id="SubTab_13" role="tabpanel">
                                <div class="card">
                                    <div class="card-body">
                                        <h5 class="card-title mb-3">CPL Lists</h5>

                                        <div class="list-group list-group-flush" style="overflow-y: scroll; height:600px;">

                                            @foreach ($assesment_data["MAPPING"]["CPL"]["cpl_lists"] as $cpls)
                                            <div class="list-group-item list-group-item-action">
                                                <div class="d-flex align-items-center">
                                                    <div class="flex-grow-1">
                                                        <div>
                                                            <h5 class="font-size-14 mb-1">{{ $cpls['Name']}} </h5>
                                                            <p class="font-size-13 text-muted mb-0">{{ $cpls['Description']}} </p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            @endforeach
                                        </div>
                                    </div>
                                    <!-- end card body -->
                                </div>
                            </div>

                        </div>

                    </div>

                    <div class="tab-pane" id="MainTab_2" role="tabpanel">
                        <div class="row mt-5">
                            @foreach($assesment_data["LECTURE"]["students"] as $key=>$val)
                                <div class="col-xl-4 col-sm-6">
                                    <div class="card">
                                        <div class="card-body overflow-hidden position-relative">
                                            <div>
                                                <i class="bx bx-help-circle widget-box-1-icon text-primary"></i>
                                            </div>
                                            <div class="faq-count">
                                                <h5 class="text-primary">{{ $key + 1 }}. {{ $val["Name"] }}</h5>
                                            </div>
                                            <h5 class="mt-3">{{ $val["NIM"] }}</h5>
                                        </div>
                                        <!-- end card body -->
                                    </div>
                                    <!-- end card -->
                                </div>
                            @endforeach
                        </div>
                    </div>

                    <div class="tab-pane" id="MainTab_3" role="tabpanel">
                        
                        <ul class="nav nav-tabs" role="tablist">
                            <li class="nav-item">
                                <a class="nav-link active" data-bs-toggle="tab" href="#SubTab_31" role="tab">
                                    <span class="d-block d-sm-none"><i class="fas fa-home"></i></span>
                                    <span class="d-none d-sm-block">CPMK Marks</span>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" data-bs-toggle="tab" href="#SubTab_32" role="tab">
                                    <span class="d-block d-sm-none"><i class="fas fa-home"></i></span>
                                    <span class="d-none d-sm-block">CPL Marks</span>
                                </a>
                            </li>
                        </ul>
                        <!-- Tab panes -->
                        <div class="tab-content p-3 text-muted">

                            <div class="tab-pane active" id="SubTab_31" role="tabpanel">
                                <div class="table-responsive" style="margin-top:+15px">
                                    @foreach($assesment_data["SIA"] as $sds)
                                        @foreach($sds["group_by_cpmk"][0]["Marks"] as $key=> $bgc)
                                            @if($key != "AVG")
                                            <h5 class="font-size-14 mb-1 text-truncate">
                                                @if( str_replace('_', ' ', $key) == 'UAS')
                                                    <a href="#" class="text-dark">
                                                        Examination - {{ str_replace('_', ' ', $key) }}
                                                    </a> 
                                                @else
                                                    <a href="#" class="text-dark">
                                                        {{ $sds['Name'] }} - {{ str_replace('_', ' ', $key) }}
                                                    </a> 
                                                @endif
                                            </h5>
                                            <table class="table table-bordered table-hover table-striped table-md">
                                                <thead>
                                                    <th>CPMK</th>
                                                    <th>Mark</th>
                                                    <th>
                                                        <div class="row">
                                                            @foreach($bgc as $val)
                                                                <div class="col-md-1">
                                                                    {{ dd($val["Name"]) }}
                                                                    SAMPE SINI
                                                                </div>
                                                            @endforeach
                                                        </div>
                                                    </th>
                                                </thead>

                                                <tbody>
                                                </tbody>
                                            
                                            </table>
                                            @endif
                                        @endforeach
                                    @endforeach
                                </div>

                                {{ dd($assesment_data["SIA"][0]["group_by_cpmk"][0]["Marks"]) }}
                                
                            </div>
                            <div class="tab-pane" id="SubTab_32" role="tabpanel">
                                <div class="tab-pane active" id="SubTab_31" role="tabpanel">
                                    <div class="table-responsive" style="margin-top:+15px">
                                        <table class="table table-bordered table-hover table-striped table-md">
                                            <thead>
                                                <th>CPMK</th>
                                                <th>Mapped CPMKs</th>
                                            </thead>
                                            <tbody>
                                            </tbody>
                                        </table>
                                </div>
                                <div class="row mt-5">
                                    @foreach($assesment_data["SIA"] as $sds)
                                        @foreach($sds["Question_Map_CPL"] as $qmc)
                                            {{ dd($qmc) }}
                                        @endforeach
                                    @endforeach
                                </div>
                            </div>
                            
                        </div>

                    </div>

                    <div class="tab-pane" id="MainTab_4" role="tabpanel">
                        <h4 class="mb-0">
                            AssesmentRecap Under Development                            
                        </h4>
                        <img 
                            src="{{ URL::asset('assets/images/svg/green/svg621.svg') }}" 
                            alt="" style="height:auto; max-width: 50%;"
                        >
                    </div>

                    <div class="tab-pane" id="MainTab_5" role="tabpanel">
                        <h4 class="mb-0">
                            AISMarks Under Development                            
                        </h4>
                        <img 
                            src="{{ URL::asset('assets/images/svg/green/svg621.svg') }}" 
                            alt="" style="height:auto; max-width: 50%;"
                        >
                    </div>

                    <div class="tab-pane" id="MainTab_6" role="tabpanel">
                        <h4 class="mb-0">
                            CQIResults Under Development
                        </h4>
                        <p class="mb-0">
                            CQIResults Under Development
                        </p>
                        <img 
                            src="{{ URL::asset('assets/images/svg/green/svg621.svg') }}" 
                            alt="" style="height:auto; max-width: 50%;"
                        >
                    </div>
                
                </div>
            </div><!-- end card-body -->
        </div><!-- end card -->
    </div><!-- end col -->
    
</div>

