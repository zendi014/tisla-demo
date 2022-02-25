@extends('landing_page.public_layout')

@section('title') 
    @lang('dashboard.app_name') 
@endsection

@section('title-detail') 
    @lang('dashboard.app_name_detail') 
@endsection


@section('content')

    @include('test.assesment_content')

@endsection

<script>
    localStorage.setItem('assets_url', "{{ URL::asset('assets') }}");
</script>