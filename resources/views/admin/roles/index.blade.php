@extends('layouts.master')

@section('title') 
    @lang('translation.role_management')
@endsection

@section('content')

    @component('components.breadcrumb')
        @slot('prarent_menu') 
            Admin
        @endslot

        @slot('link_prarent_menu') 
            /admin
        @endslot
        
        @slot('child_menu')
            @lang('translation.role_management')
        @endslot

        @slot('link_child_menu')
            /admin/roles
        @endslot
    @endcomponent


    <section class="section">
        <div class="section-body">
            <div class="row">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">
                            @include('admin.shared.flash')
                            @include('admin.roles._filter')

                            <div class="table-responsive">
                                <table class="table table-bordered table-striped table-md">
                                    <thead>
                                        <th>@lang('translation.role_name_label')</th>
                                        <th width="35%">@lang('translation.action_label')</th>
                                    </thead>
                                    <tbody>
                                        @forelse ($roles as $role)
                                            <tr>
                                                <td>
                                                    <h5 class="font-size-14 mb-1 text-truncate">
                                                        <span class="badge bg-{{  $role->name === 'Superadmin' ? 'primary' : 'secondary' }}">
                                                            {{ $role->name }}
                                                        </span>                                                    
                                                    </h5>                                                                       
                                                    Guard: <code>{{ $role->guard_name}}</code>, 
                                                    Updated at {{ $role->updated_at_formatted}}
                                                </td>

                                                <td>
                                                    <div class="row">
                                                        <div class="col-xl-4 col-md-4 d-grid">
                                                            @can('view_roles')
                                                                <a class="btn btn-sm btn-outline-primary waves-effect waves-light" 
                                                                    href="#"  
                                                                    onclick="show_roles_handler('{{ url('admin/roles/'. $role->id) }}')"
                                                                >
                                                                    <i class="far fa-eye"></i> 
                                                                    @lang('translation.btn_show_label') 
                                                                </a>
                                                            @endcan
                                                        </div>
                                                        <div class="col-xl-4 col-md-4 d-grid">
                                                            @can('edit_roles')
                                                                <a class="btn btn-sm btn-outline-secondary waves-effect waves-light" 
                                                                    href="#" 
                                                                    onclick="edit_roles_handler('{{ url('admin/roles/'. $role->id.'/edit')}}')"
                                                                >
                                                                    <i class="far fa-eye"></i> 
                                                                    @lang('translation.btn_edit_label') 
                                                                </a>
                                                            @endcan
                                                        </div>
                                                        <div class="col-xl-4 col-md-4 d-grid" style="visibility: hidden;">
                                                            @can('delete_roles')
                                                                <a href="{{ url('admin/roles/'. $role->id) }}" class="btn btn-sm btn-outline-danger" onclick="
                                                                        event.preventDefault();
                                                                        Swal.fire({
                                                                            title: 'Are you sure?',
                                                                            text: 'You wont be able to revert this!',
                                                                            icon: 'warning',
                                                                            showCancelButton: true,
                                                                            confirmButtonColor: '#3085d6',
                                                                            cancelButtonColor: '#d33',
                                                                            confirmButtonText: 'Yes, delete it!'
                                                                        }).then((result) => {
                                                                            if (result.isConfirmed) {
                                                                                document.getElementById('delete-role-{{ $role->id }}').submit();
                                                                                Swal.fire(
                                                                                    'Deleted!',
                                                                                    'Your file has been deleted.',
                                                                                    'success'
                                                                                )
                                                                            }
                                                                        })
                                                                    ">
                                                                    <i class="far fa-trash-alt"></i> @lang('translation.btn_delete_label')
                                                                </a>
                                                                <form id="delete-role-{{ $role->id }}" action="{{ url('admin/roles/'. $role->id) }}" method="POST">
                                                                    <input type="hidden" name="_method" value="DELETE">
                                                                    @csrf
                                                                </form>
                                                            @endcan
                                                        </div>
                                                    </div>
                                                </td>
                                            </tr>
                                        @empty
                                            
                                        @endforelse
                                    </tbody>
                                </table>
                            </div>

                            {{ $roles->links() }}
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>


@endsection

@section('script')
    <script src="{{ URL::asset('assets/js/pages/axios.min.js')}}"></script>
    <script src="{{ URL::asset('assets/js/modules/roles.js')}}"></script>
@endsection
