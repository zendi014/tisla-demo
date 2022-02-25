<div class="alert alert-success alert-dismissible alert-label-icon label-arrow fade show" role="alert">
    <i class="mdi mdi-check-all label-icon"></i><strong>Welcome</strong> - @lang('translation.WelcomeMessage')
    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
</div>

<div class="row">
    <div class="col-lg-12">

        @include('landing_page.tisla-anim')

        @include('landing_page.statistics')

        @include('landing_page.institutions')

        @include('landing_page.pricing')

        @include('landing_page.faqs')

        @include('landing_page.articles')

    </div>
</div>



@section('script')
    <!-- App js -->
    <script src="{{ URL::asset('assets/js/app.js')}}"></script>

    <!-- dashboard init -->
    <!-- <script src="{{ URL::asset('/assets/js/pages/dashboard.init.js') }}"></script> -->
@endsection
