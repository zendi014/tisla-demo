<div class="row">
    <div class="col-md-12 text-center">
        <div class="mx-auto mb-4 ">
            <img src="{{ URL::asset($user->avatar) }}" alt="" class="avatar-xl rounded-circle img-thumbnail">
        </div>
        <h5 class="font-size-16 mb-1"><a href="#" class="text-dark">{{ $user->name }}</a></h5>
        <p class="text-muted mb-2">{{ $user->email }}</p>
        <p class="text-muted mb-2">@lang('translation.status_verified'):: {{ $user->verified_at_formatted }}</p>
    </div>
    
    <hr class="my-3">

    <div class="col-md-12">
        <h4>@lang('translation.user_permissions')</h4>

        @include('admin.roles._permissions')
    </div>
</div>