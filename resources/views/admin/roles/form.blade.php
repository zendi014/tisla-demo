

<section class="section">
    
    @if (empty($role))
        <form method="POST" action="{{ url('admin/roles') }}">
    @else
        <form method="POST" action="{{ route('roles.update', $role->id) }}">
        <input type="hidden" name="id" value="{{ $role->id }}"/>
        @method('PUT')
    @endif
    @csrf
        <div class="section-body">
            <!-- <h2 class="section-title">{{ empty($role) ? __('roles.role_add_new') : __('roles.role_update') }}</h2> -->
            <div class="row">
                <div class="col-lg-3">
                    <div class="card">
                        <div class="card-header">
                            <h4>{{ empty($role) ? __('translation.add_card_title') : __('translation.update_card_title') }}</h4>
                        </div>
                        <div class="card-body">
                            @include('admin.shared.flash')

                            <div class="form-group">
                                <label>@lang('translation.role_name_label')</label>
                                <input type="text" name="name" class="form-control @error('name') is-invalid @enderror @if (!$errors->has('name') && old('name')) is-valid @endif" value="{{ old('name', !empty($role) ? $role->name : null) }}" {{ $disabled ?? '' }}>
                                @error('name')
                                    <div class="invalid-feedback">
                                    {{ $message }}
                                    </div>
                                @enderror
                            </div>
                        </div>
                        <div class="card-footer text-right">
                            <button class="btn btn-primary">{{ empty($role) ? __('translation.btn_create_label') : __('translation.btn_update_label') }}</button>
                            
                        </div>
                    </div>
                </div>
                <div class="col-lg-9">
                    <div class="card">
                        <div class="card-header">
                            <h4>{{ __('translation.permission_lists') }}</h4>
                        </div>
                        <div class="card-body">
                            @include('admin.roles._permissions', ['disabled' => $disabled ?? ''])
                        </div>
                        <div class="card-footer text-right">
                            @php
                                $roleId = empty($role) ? null : $role->id;
                            @endphp
                            <a href="{{ url('admin/roles/reload-permissions/' . $roleId ) }}" class="btn btn-icon icon-left btn-primary">
                                <i class="fa fa-sync-alt"></i> @lang('translation.btn_reload_permissions_label')
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</section>
