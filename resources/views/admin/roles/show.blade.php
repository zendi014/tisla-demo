

<div class="row">

    <div class="col-md-1">
    </div>
    
    <div class="col-md-5">
        @include('admin.shared.flash')
        
        <div class="mb-3">
            <label class="form-label">@lang('translation.role_name_label')</label>
            <input class="form-control" type="text" value="{{ $role->name }}" disabled>
        </div>

        <div class="mb-3">
            <label class="form-label">@lang('translation.guard_name_label')</label>
            <input class="form-control" type="text" value="{{ $role->guard_name }}" disabled>
        </div>

        <div class="mb-3">
            <label class="form-label">@lang('translation.status_created')</label>
            <input class="form-control" type="text" value="{{ $role->created_at_formatted }}" disabled>
        </div>

        <div class="mb-3">
            <label class="form-label">@lang('translation.status_updated')</label>
            <input class="form-control" type="text" value="{{ $role->updated_at_formatted }}" disabled>
        </div>

    </div>

    <div class="col-md-1">
    </div>

    
    <div class="col-md-4 sidebar-alert border-0 text-center">
        <div class="card-body">
            <img src="{{ URL::asset('assets/images/giftbox.png') }}" alt="">
            <div class="mt-4">
                <h5 class="alertcard-title font-size-16">Unlimited Access</h5>
                <p class="font-size-13">Upgrade your plan from a Free trial, to select ‘Business Plan’.</p>
                <a href="#!" class="btn btn-primary mt-2">Upgrade Now</a>
            </div>
        </div>
    </div>

    <div class="col-md-1">
    </div>

    <hr class="my-3">

    <div class="col-md-1">
    </div>

    <div class="col-md-10">
        <h4>@lang('translation.user_permissions')</h4>

        @include('admin.roles._permissions')
    </div>

    <div class="col-md-1">
    </div>
</div>
