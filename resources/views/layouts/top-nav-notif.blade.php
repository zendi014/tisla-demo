<div class="dropdown d-inline-block">
    <button type="button" class="btn header-item noti-icon position-relative" id="page-header-notifications-dropdown"
    data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
        <i data-feather="bell" class="icon-lg"></i>
        <span class="badge bg-danger rounded-pill">5</span>
    </button>
    <div class="dropdown-menu dropdown-menu-lg dropdown-menu-end p-0"
        aria-labelledby="page-header-notifications-dropdown">
        <div class="p-3">
            <div class="row align-items-center">
                <div class="col">
                    <h6 class="m-0"> @lang('translation.Notifications') </h6>
                </div>
                <div class="col-auto">
                    <a href="#!" class="small text-reset text-decoration-underline"> @lang('translation.Unread') (3)</a>
                </div>
            </div>
        </div>
        <div data-simplebar style="max-height: 230px;">
            <a href="#!" class="text-reset notification-item">
                <div class="d-flex">
                    <img src="{{ URL::asset('assets/images/users/avatar-3.jpg') }}"
                        class="me-3 rounded-circle avatar-sm" alt="user-pic">
                    <div class="flex-grow-1">
                        <h6 class="mb-1">@lang('translation.James_Lemire')</h6>
                        <div class="font-size-13 text-muted">
                            <p class="mb-1">@lang('translation.It_will_seem_like_simplified_English').</p>
                            <p class="mb-0"><i class="mdi mdi-clock-outline"></i> <span>@lang('translation.1_hours_ago')</span></p>
                        </div>
                    </div>
                </div>
            </a>
            <a href="#!" class="text-reset notification-item">
                <div class="d-flex">
                    <div class="avatar-sm me-3">
                        <span class="avatar-title bg-primary rounded-circle font-size-16">
                            <i class="bx bx-cart"></i>
                        </span>
                    </div>
                    <div class="flex-grow-1">
                        <h6 class="mb-1">@lang('translation.Your_order_is_placed')</h6>
                        <div class="font-size-13 text-muted">
                            <p class="mb-1">@lang('translation.If_several_languages_coalesce_the_grammar')</p>
                            <p class="mb-0"><i class="mdi mdi-clock-outline"></i> <span>@lang('translation.3_min_ago')</span></p>
                        </div>
                    </div>
                </div>
            </a>
            <a href="#!" class="text-reset notification-item">
                <div class="d-flex">
                    <div class="avatar-sm me-3">
                        <span class="avatar-title bg-success rounded-circle font-size-16">
                            <i class="bx bx-badge-check"></i>
                        </span>
                    </div>
                    <div class="flex-grow-1">
                        <h6 class="mb-1">@lang('translation.Your_item_is_shipped')</h6>
                        <div class="font-size-13 text-muted">
                            <p class="mb-1">@lang('translation.If_several_languages_coalesce_the_grammar')</p>
                            <p class="mb-0"><i class="mdi mdi-clock-outline"></i> <span>@lang('translation.3_min_ago')</span></p>
                        </div>
                    </div>
                </div>
            </a>

            <a href="#!" class="text-reset notification-item">
                <div class="d-flex">
                    <img src="{{ URL::asset('assets/images/users/avatar-6.jpg') }}"
                        class="me-3 rounded-circle avatar-sm" alt="user-pic">
                    <div class="flex-grow-1">
                        <h6 class="mb-1">@lang('translation.Salena_Layfield')</h6>
                        <div class="font-size-13 text-muted">
                            <p class="mb-1">@lang('translation.As_a_skeptical_Cambridge_friend_of_mine_occidental').</p>
                            <p class="mb-0"><i class="mdi mdi-clock-outline"></i> <span>@lang('translation.1_hours_ago')</span></p>
                        </div>
                    </div>
                </div>
            </a>
        </div>
        <div class="p-2 border-top d-grid">
            <a class="btn btn-sm btn-link font-size-14 text-center" href="javascript:void(0)">
                <i class="mdi mdi-arrow-right-circle me-1"></i> <span>@lang('translation.View_More')</span> 
            </a>
        </div>
    </div>
</div>