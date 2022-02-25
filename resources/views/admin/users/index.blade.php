@extends('layouts.master')

@section('title') 
    @lang('translation.user_managemet')
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
            @lang('translation.user_managemet')
        @endslot

        @slot('link_child_menu')
            /admin/users
        @endslot
    @endcomponent


    <section class="section">
        <div class="section-body">
            <!-- <h2 class="section-title">@lang('general.user_list')</h2> -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">
                            @include('admin.shared.flash')
                            @include('admin.users._filter')
                            <div class="table-responsive" style="margin-top:+15px">
                                <table class="table table-bordered table-hover table-striped table-md">
                                    <thead>
                                        <th>@lang('translation.users')</th>
                                        <th>@lang('translation.user_status')</th>
                                        <th width="35%">@lang('translation.action_label')</th>
                                    </thead>
                                    <tbody>
                                        @forelse ($users as $user)
                                            <tr>
                                                <td>
                                                    <div class="col-xl-4 col-7">
                                                        <div class="d-flex align-items-center">
                                                            <div class="flex-shrink-0 avatar-sm me-3 d-sm-block d-none">
                                                                <img src="{{ URL::asset($user->avatar) }}" alt="" class="img-fluid d-block rounded-circle">
                                                            </div>
                                                            <div class="flex-grow-1">
                                                                <h5 class="font-size-14 mb-1 text-truncate">
                                                                    <a href="#" class="text-dark">{{ $user->name}}</a> 
                                                                </h5>
                                                                <p class="text-muted text-truncate mb-0">{{ $user->email}}</p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </td>                                            
                                                <td>
                                                    <h5 class="font-size-14 mb-1 text-truncate">
                                                        <span class="badge bg-{{  $user->roles->implode('name', ', ') === 'Superadmin' ? 'primary' : 'secondary' }}">{{ $user->roles->implode('name', ', ') }}</span>                                                    
                                                    </h5>                                                                       
                                                    Verified at {{ $user->verified_at_formatted}}
                                                </td>
                                                
                                                <td>
                                                    <div class="row">
                                                        <div class="col-xl-4 col-md-4 d-grid">
                                                            @can('view_users')
                                                                <a class="btn btn-sm btn-outline-primary waves-effect waves-light" 
                                                                    href="#"  
                                                                    onclick="show_user_handler('{{ url('admin/users/'. $user->id)}}')"
                                                                >
                                                                    <i class="far fa-eye"></i> 
                                                                    @lang('translation.btn_show_label') 
                                                                </a>
                                                            @endcan
                                                        </div>
                                                        <div class="col-xl-4 col-md-4 d-grid">
                                                            @can('edit_users')
                                                                <a class="btn btn-sm btn-outline-secondary" 
                                                                    href="#" 
                                                                    onclick="edit_user_handler('{{ url('admin/users/'. $user->id.'/edit')}}')"
                                                                >
                                                                    <i class="far fa-edit"></i> 
                                                                    @lang('translation.btn_edit_label') 
                                                                </a>
                                                            @endcan
                                                        </div>
                                                        <div class="col-xl-4 col-md-4 d-grid">
                                                            @can('delete_users')
                                                                <a href="{{ url('admin/users/'. $user->id) }}" class="btn btn-sm btn-outline-danger" onclick="
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
                                                                                document.getElementById('delete-role-{{ $user->id }}').submit();
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
                                                                <form id="delete-role-{{ $user->id }}" action="{{ url('admin/users/'. $user->id) }}" method="POST">
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
                            <!-- {{ $users->links() }} -->
                            {{ $users->onEachSide(2)->links() }}
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

@endsection



@section('script')
    <script src="{{ URL::asset('assets/js/pages/axios.min.js')}}"></script>
    <script src="{{ URL::asset('assets/js/modules/custom_swal.js')}}"></script>
    <script src="{{ URL::asset('assets/js/modules/user.js')}}"></script>
@endsection
