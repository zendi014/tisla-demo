@if(isset($latest_assesment_file) == true && $latest_assesment_file->isEmpty() == false)
    <div class="card">
        <div class="card-header">
            <h4 class="card-title">Latest Assesment</h4>
            <!-- <button class="btn font-16 btn-outline-primary float-end" onclick="add_assesment()">
                <i class="mdi mdi-plus-circle-outline"></i> 
                Add Assesment
            </button> -->
        </div>
        
        <div class="card-body">
            <div class="row">

                @if(isset($latest_assesment_file))
                    @foreach($latest_assesment_file as $val)

                        <div class="col-xl-4 col-sm-6">
                            <div class="card">
                                <div class="card-body overflow-hidden position-relative">
                                    <div>
                                        <i class="bx bxl-slack widget-box-1-icon text-primary"></i>
                                    </div>
                                    <div class="faq-count">
                                        <h5 class="text-primary">Assesment {{ explode(".", $val->files['file_name'])[0] }}</h5>
                                    </div>
                                    <h5 class="mt-3">{{ substr($val->files['file_size'],0,5) }} MB | {{ $val['created_at']->diffForHumans() }}</h5>
                                    <p class="text-muted mt-3 mb-0">
                                        @if($val['is_rendered'] == 2)
                                        
                                        @else
                                            Overview::<br/>
                                            {{ $val['file_id'] }}
                                        @endif                                        
                                    </p>
                                    <p class="text-muted mt-3 mb-0">
                                        @if($val['is_rendered'] == 2)

                                        @else
                                            Details::
                                        @endif
                                    </p>

                                    <p class="text-muted mt-3 mb-0">
                                        @if($val['is_rendered'] == 2)
                                        <span class="badge rounded-pill bg-danger">Error Rendered</span>
                                        @endif
                                    </p>
                                    
                                    <hr class="my-4">

                                    @if($val['is_rendered'] == 0)
                                    <button type="button" file_id = "{{ $val['file_id'] }}" 
                                            onclick='render_assesment_file("{{ $val["file_id"] }}")' 
                                            class="btn btn-soft-primary waves-effect waves-light">
                                        <i class="bx bx-layer font-size-16 align-middle me-2"></i> Render
                                    </button>
                                    <button type="button" file_id = "{{ $val['file_id'] }}" 
                                            onclick='remove_assesment_file("{{ $val["file_id"] }}")'
                                            class="btn btn-soft-danger waves-effect waves-light">
                                        <i class="bx bxs-trash font-size-16 align-middle me-2"></i> Remove
                                    </button>
                                    @endif

                                    @if($val['is_rendered'] == 1)
                                    <button type="button" file_id = "{{ $val['file_id'] }}" 
                                            onclick='detail_rendered_assesment_file("{{ $val["file_id"] }}")'
                                            class="btn btn-soft-dark waves-effect waves-light float-end">
                                        <i class="bx bx-detail font-size-16 align-middle me-2"></i> Details
                                    </button>
                                    @endif


                                    @if($val['is_rendered'] == 2)
                                    <button type="button" file_id = "{{ $val['file_id'] }}" 
                                            onclick='remove_assesment_file("{{ $val["file_id"] }}")'
                                            class="btn btn-soft-danger waves-effect waves-light">
                                        <i class="bx bxs-trash font-size-16 align-middle me-2"></i> Remove
                                    </button>
                                    @endif                                    

                                </div>
                                <!-- end card body -->
                            </div>
                            <!-- end card  84c225--> 
                        </div>

                    @endforeach
                @else
                    @for($i=1; $i<=3;$i++)
                        <div class="col-xl-4 col-sm-6">
                            <div class="card">
                                <div class="card-body overflow-hidden position-relative">
                                    <div>
                                        <i class="bx bxl-slack widget-box-1-icon text-primary"></i>
                                    </div>
                                    <div class="faq-count">
                                        <h5 class="text-primary">Loading ...</h5>
                                    </div>
                                    <h5 class="mt-3">... | ...</h5>
                                    <p class="text-muted mt-3 mb-0">
                                        ...
                                    </p>
                                    
                                    <hr class="my-4">

                                    <button type="button" disabled
                                            class="btn btn-soft-secondary waves-effect waves-light">
                                        <i class="bx bx-layer font-size-16 align-middle me-2"></i> ...
                                    </button>
                                    <button type="button" disabled
                                            class="btn btn-soft-secondary waves-effect waves-light">
                                        <i class="bx bxs-trash font-size-16 align-middle me-2"></i> ...
                                    </button>
                                    

                                </div>
                                <!-- end card body -->
                            </div>
                            <!-- end card  84c225--> 
                        </div>
                    @endfor
                @endif

            </div>
        </div>

        <div class="card-footer">
            <a type="button"  href="#"
                id="view_all_assesment_file"
                class="btn btn-soft-primary waves-effect waves-light float-end">
                <i class="bx bxs-detail font-size-16 align-middle me-2"></i> 
                See All Rendered Assesment
            </a>
        </div>
    </div>
@else
<div class="card">
    <div class="card-header">
        <h4 class="card-title">Latest Assesment</h4>
        <p class="card-title-desc">You Have No Assesment Activity</p>
    </div>
    <div class="card-body">
        <img src="{{ URL::asset('/assets/images/svg/blue/svg158.svg') }}" alt="My SVG Icon">
    </div>
</div>
@endif