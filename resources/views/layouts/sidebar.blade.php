<!-- ========== Left Sidebar Start ========== -->
<div class="vertical-menu">

    <div data-simplebar class="h-100">

        <!--- Sidemenu -->
        <div id="sidebar-menu">
            <!-- Left Menu Start -->
            <ul class="metismenu list-unstyled" id="side-menu">
                <li class="menu-title" data-key="t-menu">@lang('translation.Menu')</li>

                @can('view_assesment')
                <li>
                    <a href="{{ url('') }}">
                        <i data-feather="home"></i>
                        <span data-key="t-dashboard">@lang('translation.Dashboard')</span>
                    </a>
                </li>
                @endcan

                @can('view_recap_assesment')
                <li>
                    <a href="{{ url('/c11/recap_assesment') }}">
                        <i class="fas fa-chart-bar"></i>
                        <span data-key="t-dashboard">@lang('translation.RecapAssesment')</span>
                    </a>
                </li>
                @endcan
            

                @can('view_users')
                <li>
                    <a href="javascript: void(0);" class="has-arrow">
                        <i data-feather="grid"></i>
                        <span data-key="t-apps">@lang('translation.previledges')</span>
                    </a>
                    <ul class="sub-menu" aria-expanded="false">
                        @can('view_users')
                            <li>
                                <a href="{{ url('admin/users') }}">
                                    <span data-key="t-roles">@lang('translation.user_managemet')</span>
                                </a>
                            </li>
                        @endcan

                        @can('view_roles')
                        <li>
                            <a href="{{ url('admin/roles') }}">
                                <span data-key="t-users">@lang('translation.role_management')</span>
                            </a>
                        </li>
                        @endcan

                    </ul>
                </li>
                @endcan

            </ul>

            <!-- <div class="card sidebar-alert border-0 text-center mx-4 mb-0 mt-5">
                <div class="card-body">
                    <img src="assets/images/giftbox.png" alt="">
                    <div class="mt-4">
                        <h5 class="alertcard-title font-size-16">@lang('translation.Unlimited_Access')</h5>
                        <p class="font-size-13">@lang("translation.Upgrade_your_plan_from_a_Free_trial,_to_select_‘Business_Plan’").</p>
                        <a href="#!" class="btn btn-primary mt-2">@lang('translation.Upgrade_Now')</a>
                    </div>
                </div>
            </div> -->


        </div>
        <!-- Sidebar -->
    </div>
</div>
<!-- Left Sidebar End -->