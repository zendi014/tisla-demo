<form method="GET" action="{{ route('users.index') }}">
    <div class="row" style="margin-bottom:+20px">
        <div class="form-group col-md-2 offset-md-10 d-grid">
            @can('add_roles')
                <a href="#"  
                    onclick="create_roles_handler('{{ url('admin/roles/create') }}')"
                    class="btn btn-soft-success waves-effect waves-light btn-icon icon-left btn-filter">
                        <i class="fas fa-plus-circle"></i> 
                        @lang('translation.btn_create_label')
                </a>
            @endcan
        </div>
    </div>
</form>


