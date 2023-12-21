@extends('admin.layouts')

@section('title', 'User')

@section('content')
    {{-- @if (Route::is('user.user'))
        {{ 'user' }}
    @elseif (Route::is('user.admin'))
        {{ 'admin' }}
    @endif --}}
    <div class="page-breadcrumb">
        <div class="row">
            <div class="col-5 align-self-center">
                <h4 class="page-title">User</h4>
            </div>
            <div class="col-7 align-self-center">
                <div class="d-flex align-items-center justify-content-end">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item">
                                <a href="#">Home</a>
                            </li>
                            <li class="breadcrumb-item active" aria-current="page">
                                User
                            </li>
                        </ol>
                    </nav>
                </div>
            </div>
        </div>
    </div>
    <div class="container-fluid">
        <!-- ============================================================== -->
        <!-- Start Page Content -->
        <!-- ============================================================== -->
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-header">
                        User
                        <button class="btn btn-sm btn-success float-right" data-toggle="modal"
                            data-target="#registerModal">Add
                            Data</button>
                    </div>
                    <div class="card-body">
                        <table class="table table-striped">
                            <thead>
                                <tr>
                                    <th>#</th>
                                    <th>Name</th>
                                    <th>Username</th>
                                    <th>Level</th>
                                    <th>Timestamp</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($user as $data)
                                    <tr>
                                        <td>{{ $x++ }}</td>
                                        <td>{{ $data->name }}</td>
                                        <td>{{ $data->username }}</td>
                                        <td>{{ $data->level }}</td>
                                        <td>{{ $data->created_at }}</td>

                                        <td>
                                            <button class="btn btn-danger btn-sm"
                                                data-target="#modalHapus{{ $data->id }}" data-toggle="modal">
                                                <i class="fa fa-trash"></i>Delete
                                            </button>
                                            @if (Route::is('user.user'))
                                                <a class="btn btn-primary btn-sm"
                                                    href="{{ route('make-admin', $data->id) }}">
                                                    <i class="mdi mdi-account-key"></i>Make Admin
                                                </a>
                                            @endif
                                            <div class="modal fade" id="modalHapus{{ $data->id }}" tabindex="-1">
                                                <div class="modal-dialog">
                                                    <div class="modal-content">
                                                        <div class="modal-header">
                                                            <h5 class="modal-title" id="exampleModalLabel">Delete Data</h5>
                                                            <button type="button" class="close" data-dismiss="modal"
                                                                aria-label="Close">
                                                                <span aria-hidden="true">&times;</span>
                                                            </button>
                                                        </div>
                                                        <form action="{{ route('user.destroy', $data->id) }}"
                                                            method="POST">
                                                            @csrf
                                                            @method('delete')
                                                            <div class="modal-body">
                                                                Do you want to delete this user ?
                                                            </div>
                                                            <div class="modal-footer">
                                                                <button type="button" class="btn btn-secondary"
                                                                    data-dismiss="modal">No</button>
                                                                <button type="submit" class="btn btn-danger">Yes</button>
                                                            </div>
                                                        </form>
                                                    </div>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                @endforeach

                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>

    </div>

    <!-- Modal -->
    <div class="modal fade" id="registerModal" tabindex="-1" aria-labelledby="modalTambahPertanyaan" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Add User</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form class="form-horizontal m-t-20" id="registerForm" action="{{ route('user.store') }}"
                        method="POST">
                        @csrf
                        <input type="hidden" name="level" value="{{ Route::is('user.user') ? 'USER' : 'ADMIN' }}">
                        <div class="input-group mb-3">
                            <div class="input-group-prepend">
                                <span class="input-group-text" id="basic-addon1"><i class="ti-user"></i></span>
                            </div>
                            <input type="text"
                                class="form-control form-control-lg is-valid @error('name') is-invalid @enderror"
                                placeholder="Name" aria-label="Name" aria-describedby="basic-addon1" name="name"
                                value="{{ old('name') }}" autofocus required>
                            @error('name')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                            @enderror
                        </div>
                        <div class="input-group mb-3">
                            <div class="input-group-prepend">
                                <span class="input-group-text" id="basic-addon1"><i class="ti-user"></i></span>
                            </div>
                            <input type="text"
                                class="form-control form-control-lg is-valid @error('username') is-invalid @enderror"
                                placeholder="Username" aria-label="Username" aria-describedby="basic-addon1" name="username"
                                value="{{ old('username') }}" required>
                            @error('username')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                            @enderror
                        </div>
                        <div class="input-group mb-3">
                            <div class="input-group-prepend">
                                <span class="input-group-text" id="basic-addon2"><i class="ti-lock"></i></span>
                            </div>
                            <input type="password"
                                class="form-control form-control-lg is-valid @error('password') is-invalid @enderror"
                                placeholder="Password" aria-label="Password" aria-describedby="basic-addon1"
                                name="password" required>

                            @error('password')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                            @enderror
                        </div>


                        <div class="input-group ">
                            <div class="input-group-prepend">
                                <span class="input-group-text" id="basic-addon2"><i class="ti-lock"></i></span>
                            </div>
                            <input type="password"
                                class="form-control form-control-lg is-valid @error('password') is-invalid @enderror"
                                placeholder="Password Confirmation" aria-label="Password" aria-describedby="basic-addon1"
                                name="password_confirmation" required>
                            @error('password')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                            @enderror
                        </div>
                        <div class="helper-text mb-3">
                            <small class="form-text text-muted">* Password min. 8 character</small>
                        </div>
                        <div class="form-group text-center">
                            <div class="col-xs-12 p-b-20">
                                <button class="btn btn-block btn-lg btn-info" type="submit">Register</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>


    @endsection
