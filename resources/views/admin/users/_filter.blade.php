<form method="GET" action="{{ route('users.index') }}">
    <div class="row">
        <div class="col-md-4 col-xl-4">
            <input type="text" name="q" class="form-control" id="q" placeholder="Type name or email.." value="{{ !empty($filter['q']) ? $filter['q'] : '' }}">
        </div>

        <div class="col-md-4 col-xl-4">
            <div class="row">
                <div class="col-md-6 col-xl-6">
                    <input type="text" name="start_date" class="form-control datepicker" id="start_date" placeholder="Start date" value="{{ !empty($filter['start_date']) ? $filter['start_date'] : '' }}">
                </div>
                <div class="col-md-6 col-xl-6">
                    <input type="text" name="end_date" class="form-control datepicker" id="end_date" placeholder="End date" value="{{ !empty($filter['end_date']) ? $filter['end_date'] : '' }}">
                </div>
            </div>
        </div>

        <div class="col-md-4 col-xl-4">
            <div class="row">
                <div class="col-md-6 col-xl-6 d-grid">
                    <button class="btn btn-soft-primary waves-effect waves-light btn-filter">
                        <i class="fas fa-search"></i> {{ __('translation.btn_search_label') }}
                    </button>
                </div>
                <div class="col-md-6 col-xl-6 d-grid">
                    @can('add_users')
                        <a 
                            class="btn btn-soft-success waves-effect waves-light btn-icon icon-left btn-filter"
                            href="#"  
                            onclick="create_user_handler('{{ url('admin/users/create')}}')"
                        >
                            <i class="fas fa-plus-circle"></i> 
                            @lang('translation.btn_create_label')
                        </a>
                    @endcan
                </div>
            </div>
        </div>
        
    </div>
</form>