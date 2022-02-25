<!doctype html>
<!-- <html lang="en"> -->
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
    
        <meta charset="utf-8" />
        <title> @yield('title') | @lang('dashboard.app_name') - @lang('dashboard.app_name_detail')</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- CSRF Token -->
        <meta name="csrf-token" content="{{ csrf_token() }}"/>
        
        <meta content="@lang('dashboard.app_name_detail')" name="description" />
        <meta content="@lang('dashboard.app_name')" name="author" />
        <!-- App favicon -->
        <link rel="shortcut icon" href="{{ URL::asset('assets/images/favicon.ico')}}">

        @include('layouts.head-css')
  </head>

    @yield('body')
    
    @yield('content')

    <!-- JAVASCRIPT -->
    <script src="{{ URL::asset('assets/libs/jquery/jquery.min.js')}}"></script>
    <script src="{{ URL::asset('assets/libs/bootstrap/js/bootstrap.bundle.min.js')}}"></script>

    <!-- pace js -->
    <script src="{{ URL::asset('assets/libs/pace-js/pace.min.js')}}"></script>

    @yield('script')

    </body>
</html>