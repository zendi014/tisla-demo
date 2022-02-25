<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="utf-8" />
    <title> @yield('title') | @lang('dashboard.app_name_detail') </title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta content="@lang('dashboard.app_name_detail')" name="@lang('dashboard.app_description')" />
    <meta content="@lang('dashboard.app_name')" name="@lang('dashboard.author')" />
    <!-- App favicon -->
    <link rel="shortcut icon" href="{{ URL::asset('assets/images/favicon.ico') }}">
    @include('layouts.head-css')
</head>

@section('body')
    <body data-layout="horizontal">
@show

    <!-- Begin page -->
    <div id="layout-wrapper">
        @include('landing_page.public_topbar')
        <!-- ============================================================== -->
        <!-- Start right Content here -->
        <!-- ============================================================== -->
        <div class="main-content">
            <div class="page-content" style="margin-top: 20px;">
                <!-- Start content -->
                <div class="container-fluid">
                    @yield('content')
                </div> <!-- content -->
            </div>
            @include('layouts.footer')
        </div>
        <!-- ============================================================== -->
        <!-- End Right content here -->
        <!-- ============================================================== -->
    </div>
    <!-- END wrapper -->

    <script src="{{ URL::asset('assets/libs/jquery/jquery.min.js')}}"></script>
    <script src="{{ URL::asset('assets/libs/bootstrap/js/bootstrap.bundle.min.js')}}"></script>
    <script src="{{ URL::asset('assets/js/pages/axios.min.js')}}"></script>

    <!-- PLUGINS -->
    <!-- pace js -->
    <script src="{{ URL::asset('assets/libs/pace-js/pace.min.js')}}"></script>

    <!-- apexcharts -->
    <script src="{{ URL::asset('/assets/libs/apexcharts/apexcharts.min.js') }}"></script>

    @yield('script')

</body>

</html>
