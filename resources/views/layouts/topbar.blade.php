<header id="page-topbar">
    <div class="navbar-header">
        <div class="d-flex">
            <!-- LOGO -->
            <div class="navbar-brand-box">
                <a href="{{ url('') }}" class="logo logo-dark">
                    <span class="logo-sm">
                        <img src="{{ url('assets/images/umb/tisla-logo.png') }}" alt="" height="24">
                    </span>
                    <span class="logo-lg">
                        <img src="{{ url('assets/images/umb/tisla-logo.png') }}" alt="" height="24"> <span class="logo-txt">@lang('dashboard.app_name')</span>
                    </span>
                </a>

                <a href="{{ url('') }}" class="logo logo-light">
                    <span class="logo-sm">
                        <img src="{{ url('assets/images/umb/tisla-logo.png') }}" alt="" height="24">
                    </span>
                    <span class="logo-lg">
                        <img src="{{ url('assets/images/umb/tisla-logo.png') }}" alt="" height="24"> <span class="logo-txt">@lang('dashboard.app_name')</span>
                    </span>
                </a>
            </div>

            <button type="button" class="btn btn-sm px-3 font-size-16 header-item" id="vertical-menu-btn">
                <i class="fa fa-fw fa-bars"></i>
            </button>

            <!-- App Search-->
            <form class="app-search d-none d-lg-block">
                <div class="position-relative">
                    <input type="text" class="form-control" placeholder="@lang('translation.Search')">
                    <button class="btn btn-primary" type="button"><i class="bx bx-search-alt align-middle"></i></button>
                </div>
            </form>
        </div>

        <div class="d-flex">

            <div class="dropdown d-inline-block d-lg-none ms-2">
                <button type="button" class="btn header-item" id="page-header-search-dropdown" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    <i data-feather="search" class="icon-lg"></i>
                </button>
                <div class="dropdown-menu dropdown-menu-lg dropdown-menu-end p-0" aria-labelledby="page-header-search-dropdown">

                    <form class="p-3">
                        <div class="form-group m-0">
                            <div class="input-group">
                                <input type="text" class="form-control" placeholder="@lang('translation.Search')" aria-label="Search Result">

                                <button class="btn btn-primary" type="submit"><i class="mdi mdi-magnify"></i></button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>

            <div class="dropdown d-none d-sm-inline-block">
                <button type="button" class="btn header-item waves-effect"
                    data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    @switch(Session::get('lang'))
                        @case('id')
                            <img src="{{ URL::asset('/assets/images/flags/indonesia.jpg')}}" alt="Header Language" height="16">
                        @break
                        @default
                            <img src="{{ URL::asset('/assets/images/flags/us.jpg')}}" alt="Header Language" height="16">
                    @endswitch
                </button>
                <div class="dropdown-menu dropdown-menu-end">

                    <!-- item-->
                    <a href="{{ url('index/id') }}" class="dropdown-item notify-item language" data-lang="id">
                        <img src="{{ URL::asset ('/assets/images/flags/indonesia.jpg') }}" alt="user-image" class="me-1" height="12"> <span class="align-middle">Indonesia</span>
                    </a>

                    <!-- item-->
                    <a href="{{ url('index/en') }}" class="dropdown-item notify-item language" data-lang="eng">
                        <img src="{{ URL::asset ('/assets/images/flags/us.jpg') }}" alt="user-image" class="me-1" height="12"> <span class="align-middle">English</span>
                    </a>
                    
                </div>
            </div>

            <div class="dropdown d-none d-sm-inline-block">
                <button type="button" class="btn header-item" id="mode-setting-btn">
                    <i data-feather="moon" class="icon-lg layout-mode-dark"></i>
                    <i data-feather="sun" class="icon-lg layout-mode-light"></i>
                </button>
            </div>

            
            @include('layouts.top-nav-notif')
            

            @include('layouts.top-nav-addons')

            <!-- <div class="dropdown d-inline-block">
                <button type="button" class="btn header-item right-bar-toggle me-2">
                    <i data-feather="settings" class="icon-lg"></i>
                </button>
            </div> -->

            @include('layouts.top-nav-profile')

        </div>
    </div>
</header>