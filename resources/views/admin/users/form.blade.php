<section class="section">
    <!-- <div class="section-header">
        <h1>@lang('users.user_management')</h1>
        <div class="section-header-breadcrumb">
            <div class="breadcrumb-item"><a href="{{ url('admin/dashboard') }}">Dashboard</a></div>
            <div class="breadcrumb-item"><a href="{{ url('admin/roles') }}">@lang('users.user_management')</a></div>
            <div class="breadcrumb-item active"><a
                    href="{{ url('admin/roles/create') }}">@lang('users.user_add_new')</a></div>
        </div>
    </div> -->
    @if (empty($user))
        <form method="POST" action="{{ route('users.store') }}">
        @else
            <form method="POST" action="{{ route('users.update', $user->id) }}">
                <input type="hidden" name="id" value="{{ $user->id }}" />
                @method('PUT')
    @endif
    @csrf
    <div class="section-body">
        <!-- <h2 class="section-title">{{ empty($user) ? __('translation.user_add_new') : __('translation.user_update') }}</h2> -->
        <div class="row">
            <div class="col-lg-4">
                <div class="card">
                    <div class="card-header">
                        <h4>{{ empty($user) ? __('translation.add_card_title') : __('translation.update_card_title') }}</h4>
                    </div>
                    <div class="card-body">
                        @include('admin.shared.flash')
                        <div class="form-group">
                            <label>@lang('translation.name_label')</label>
                            <input type="text" name="name"
                                class="form-control @error('name') is-invalid @enderror @if (!$errors->has('name') && old('name')) is-valid @endif"
                            value="{{ old('name', !empty($user) ? $user->name : null) }}">
                            @error('name')
                                <div class="invalid-feedback">
                                    {{ $message }}
                                </div>
                            @enderror
                        </div>
                        <div class="form-group">
                            <label>@lang('translation.user_name_label')</label>
                            <input type="text" name="user_name"
                                class="form-control @error('user_name') is-invalid @enderror @if (!$errors->has('user_name') && old('user_name')) is-valid @endif"
                            value="{{ old('user_name', !empty($user) ? $user->user_name : null) }}">
                            @error('user_name')
                                <div class="invalid-feedback">
                                    {{ $message }}
                                </div>
                            @enderror
                        </div>
                        
                        <div class="form-group">
                            <label>@lang('translation.password_label')</label>
                            <input type="password" name="password"
                                class="form-control @error('password') is-invalid @enderror @if (!$errors->has('password') && old('password')) is-valid @endif">
                            @error('password')
                                <div class="invalid-feedback">
                                    {{ $message }}
                                </div>
                            @enderror
                        </div>
                        <div class="form-group">
                            <label>@lang('translation.password_confirmation_label')</label>
                            <input type="password" name="password_confirmation" class="form-control @error('password_confirmation') is-invalid @enderror @if (!$errors->has('password_confirmation') &&
                            old('password_confirmation')) is-valid @endif">
                            @error('password_confirmation')
                                <div class="invalid-feedback">
                                    {{ $message }}
                                </div>
                            @enderror
                        </div>
                        <div class="form-group">
                            <label>@lang('translation.role_label')</label>
                            <select class="form-select" name="role_id">
                                <option>@lang('translation.select_role_label')</option>

                                @foreach ($roles as $key => $value)
                                    <option value="{{ $key }}" {{ $key == $roleId ? 'selected' : '' }}>
                                        {{ $value }}
                                    </option>
                                @endforeach
                            </select>
                            @error('password_confirmation')
                                <div class="invalid-feedback">
                                    {{ $message }}
                                </div>
                            @enderror
                        </div>

                    </div>
                    <div class="card-footer text-right">
                        <button
                            class="btn btn-primary">{{ empty($user) ? __('translation.btn_create_label') : __('translation.btn_update_label') }}
                        </button>
                        <!-- <a class="btn btn-secondary" href="{{ url('/admin/users') }}">Cancel</a> -->
                    </div>
                </div>
            </div>
            <div class="col-lg-8">
                <div class="card">
                    <div class="card-header">
                        <h4>{{ __('translation.set_user_permissions_label') }}</h4>
                    </div>
                    <div class="card-body">
                        @include('admin.roles._permissions')
                    </div>
                </div>
            </div>
        </div>
    </div>
    </form>
</section>
