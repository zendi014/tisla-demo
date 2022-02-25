<div class="card">
    <div class="card-header">
        <div class="d-flex">
            <div class="flex-grow-1">
                <h5 class="card-title mb-0">Articles</h5>
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
        
        <div>
            @for ($i = 0; $i < 2; $i++)
                <div class="row" style="margin-bottom:+15px">
                
                    <div class="col-xl-4">
                        <div class="card p-1 mb-xl-0">
                            <div class="p-3">
                                <div class="d-flex align-items-start">
                                    <div class="flex-grow-1 overflow-hidden">
                                        <h5 class="font-size-14 text-truncate"><a href="#" class="text-dark">Beautiful Day with Friends</a></h5>
                                        <p class="font-size-13 text-muted mb-0">10 Apr, 2020</p>
                                    </div>
                                    <div class="flex-shrink-0 ms-2">
                                        <div class="dropdown">
                                            <a class="btn btn-link text-muted font-size-16 p-1 py-0 dropdown-toggle shadow-none" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                                <i class="bx bx-dots-horizontal-rounded"></i>
                                            </a>
                                            <ul class="dropdown-menu dropdown-menu-end">
                                                <li><a class="dropdown-item" href="#">Action</a></li>
                                                <li><a class="dropdown-item" href="#">Another action</a></li>
                                                <li><a class="dropdown-item" href="#">Something else here</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="position-relative">
                                <img src="{{ URL::asset('/assets/images/svg/blue/undraw_sharing_articles_re_jnkp.svg') }}" style="max-height:350px" alt="" class="img-thumbnail">
                            </div>

                            <div class="p-3">
                                <ul class="list-inline">
                                    <li class="list-inline-item me-3">
                                        <a href="javascript: void(0);" class="text-muted">
                                            <i class="bx bx-purchase-tag-alt align-middle text-muted me-1"></i> Project
                                        </a>
                                    </li>
                                    <li class="list-inline-item me-3">
                                        <a href="javascript: void(0);" class="text-muted">
                                            <i class="bx bx-comment-dots align-middle text-muted me-1"></i> 12 Comments
                                        </a>
                                    </li>
                                </ul>
                                <p class="text-muted">Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet</p>
                            </div>
                        </div>
                    </div>
                    <!-- end col -->

                    <div class="col-xl-4">
                        <div class="card p-1 mb-xl-0">
                            <div class="p-3">
                                <div class="d-flex align-items-start">
                                    <div class="flex-grow-1 overflow-hidden">
                                        <h5 class="font-size-14 text-truncate"><a href="#" class="text-dark">Drawing a sketch</a></h5>
                                        <p class="font-size-13 text-muted mb-0">24 Mar, 2020</p>
                                    </div>
                                    <div class="flex-shrink-0 ms-2">
                                        <div class="dropdown">
                                            <a class="btn btn-link text-muted font-size-16 p-1 py-0 dropdown-toggle shadow-none" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                                <i class="bx bx-dots-horizontal-rounded"></i>
                                            </a>
                                            <ul class="dropdown-menu dropdown-menu-end">
                                                <li><a class="dropdown-item" href="#">Action</a></li>
                                                <li><a class="dropdown-item" href="#">Another action</a></li>
                                                <li><a class="dropdown-item" href="#">Something else here</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="position-relative"> 
                                <img src="{{ URL::asset('/assets/images/svg/blue/undraw_online_article_re_daq5.svg') }}" style="max-height:350px" alt="" class="img-thumbnail">
                            </div>

                            <div class="p-3">
                                <ul class="list-inline">
                                    <li class="list-inline-item me-3">
                                        <a href="javascript: void(0);" class="text-muted">
                                            <i class="bx bx-purchase-tag-alt align-middle text-muted me-1"></i> Development
                                        </a>
                                    </li>
                                    <li class="list-inline-item me-3">
                                        <a href="javascript: void(0);" class="text-muted">
                                            <i class="bx bx-comment-dots align-middle text-muted me-1"></i> 08 Comments
                                        </a>
                                    </li>
                                </ul>
                                <p class="text-muted">At vero eos et accusamus et iusto odio dignissimos ducimus quos</p>
                            </div>
                        </div>
                        <!-- end card -->
                    </div>
                    <!-- end col -->

                    <div class="col-xl-4">
                        <div class="card p-1 mb-sm-0">
                            <div class="p-3">
                                <div class="d-flex align-items-start">
                                    <div class="flex-grow-1 overflow-hidden">
                                        <h5 class="font-size-14 text-truncate"><a href="#" class="text-dark">Project discussion with team</a></h5>
                                        <p class="font-size-13 text-muted mb-0">20 Mar, 2020</p>
                                    </div>
                                    <div class="flex-shrink-0 ms-2">
                                        <div class="dropdown">
                                            <a class="btn btn-link text-muted font-size-16 p-1 py-0 dropdown-toggle shadow-none" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                                <i class="bx bx-dots-horizontal-rounded"></i>
                                            </a>
                                            <ul class="dropdown-menu dropdown-menu-end">
                                                <li><a class="dropdown-item" href="#">Action</a></li>
                                                <li><a class="dropdown-item" href="#">Another action</a></li>
                                                <li><a class="dropdown-item" href="#">Something else here</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="position-relative">
                                <img src="{{ URL::asset('/assets/images/svg/blue/undraw_online_articles_re_yrkj.svg') }}" style="max-height:350px" alt="" class="img-thumbnail">
                            </div>

                            <div class="p-3">
                                <ul class="list-inline">
                                    <li class="list-inline-item me-3">
                                        <a href="javascript: void(0);" class="text-muted">
                                            <i class="bx bx-purchase-tag-alt align-middle text-muted me-1"></i> Project
                                        </a>
                                    </li>
                                    <li class="list-inline-item me-3">
                                        <a href="javascript: void(0);" class="text-muted">
                                            <i class="bx bx-comment-dots align-middle text-muted me-1"></i> 08 Comments
                                        </a>
                                    </li>
                                </ul>
                                <p class="text-muted">Itaque earum rerum hic tenetur a sapiente delectus ut aut</p>
                            </div>
                        </div>
                        <!-- end card -->
                    </div>
                    <!-- end col -->
                
                </div>
                <!-- end row -->
            @endfor
        </div>
    </div>
    <!-- end card body -->
</div>
<!-- end card -->