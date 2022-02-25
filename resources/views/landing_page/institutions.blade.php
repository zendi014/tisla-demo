<div class="card">
    <div class="card-header">
        <div class="d-flex">
            <div class="flex-grow-1">
                <h5 class="card-title mb-0">Institutions</h5>
            </div>
            <div class="flex-shrink-0">
                <a href="#!">View All</a>
            </div>
        </div>
    </div>
    <div class="card-body">
        <div class="row" style="margin-top:-40px;">
            <div class="col-lg-4 col-md-6">
                
            </div>
            <div class="col-lg-4 col-md-6">
                
            </div>
            <div class="col-lg-4 col-md-6">
                <form class="app-search mt-5 mx-auto">
                    <div class="position-relative">
                        <input type="text" class="form-control" placeholder="Type something here...">
                        <button class="btn btn-primary" type="button"><i class="bx bx-search-alt align-middle"></i></button>
                    </div>
                </form>
            </div>
        </div>

        <div class="row mt-5" style="2rem!important">

            @for ($i = 0; $i < 6; $i++)
                
                <div class="col-xl-4 col-sm-6">
                    <div class="card">
                        <div class="card-body overflow-hidden position-relative">
                            <div style="margin-bottom: +15px;">
                                <i class="bx bx-help-circle widget-box-1-icon text-primary"></i>
                                <h4 class="card-title">Intitution Name</h4>
                                <!-- <h6 class="card-subtitle text-muted">Support card subtitle</h6> -->
                            </div>
                            <img class="img-fluid" src="{{ URL::asset('/assets/images/svg/blue/undraw_building_re_xfcm.svg') }}" alt="Card image cap">
                            <!-- <p class="text-muted mt-3 mb-0" style="margin-bottom: +15px;">
                                Everyone realizes why a new common language would be desirable one could refuse to pay expensive translators.
                            </p> -->
                            <div class="mb-3" style="margin-top:+15px">
                                <a href="javascript: void(0);" type="button" class="btn btn-outline-primary waves-effect waves-light card-link">Request Join</a>
                                <a href="javascript: void(0);" type="button" class="btn btn-outline-light waves-effect card-link">Details</a>
                            </div>
                        </div>
                        <!-- end card body -->
                    </div>
                    <!-- end card -->
                </div>
                <!-- end col -->

            @endfor
            
        </div>
        <!-- end row -->

    </div>
    <!-- end card body -->
</div>
<!-- end card -->