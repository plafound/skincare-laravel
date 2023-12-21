@extends('admin.layouts')
@section('title', 'Category')
@section('content')
    <div class="page-breadcrumb">
        <div class="row">
            <div class="col-5 align-self-center">
                <h4 class="page-title">Category</h4>
            </div>
            <div class="col-7 align-self-center">
                <div class="d-flex align-items-center justify-content-end">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item">
                                <a href="#">Home</a>
                            </li>
                            <li class="breadcrumb-item active" aria-current="page">
                                Category
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
                        Category
                        <button class="btn btn-sm btn-success float-right" data-toggle="modal"
                            data-target="#exampleModal">Add
                            Data</button>
                    </div>
                    <div class="card-body">
                        <table class="table table-striped">
                            <thead>
                                <tr>
                                    <th>#</th>
                                    <th>Category</th>
                                    <th>Icon</th>
                                    <th>Description</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($kategori as $kategori)
                                    <tr>
                                        <td>{{ $x++ }}</td>
                                        <td>{{ $kategori->kategori }}</td>
                                        <td><img src="{{ asset('img/icon/' . $kategori->icon) }}" class="img-fluid" width="50px">
                                        </td>
                                        <td>{{ $kategori->keterangan }}</td>
                                        <td><button type="button" data-toggle="modal"
                                                data-target="#modalUbah{{ $kategori->id }}"
                                                class="btn btn-success btn-sm btn-edit"><i
                                                    class="fa fa-edit"></i>Edit</button>
                                            <button class="btn btn-danger btn-sm"
                                                data-target="#modalHapus{{ $kategori->id }}" data-toggle="modal">
                                                <i class="fa fa-trash"></i>Delete
                                            </button>
                                            <div class="modal fade" id="modalHapus{{ $kategori->id }}" tabindex="-1">
                                                <div class="modal-dialog">
                                                    <div class="modal-content">
                                                        <div class="modal-header">
                                                            <h5 class="modal-title" id="exampleModalLabel">Delete Data</h5>
                                                            <button type="button" class="close" data-dismiss="modal"
                                                                aria-label="Close">
                                                                <span aria-hidden="true">&times;</span>
                                                            </button>
                                                        </div>
                                                        <form action="{{ route('category.destroy', $kategori->id) }}"
                                                            method="POST">
                                                            @csrf
                                                            @method('delete')
                                                            <div class="modal-body">
                                                                Do you want to delete this category ?
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
                                    <div class="modal fade" id="modalUbah{{ $kategori->id }}" tabindex="-1">
                                        <div class="modal-dialog">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h5 class="modal-title" id="exampleModalLabel">Edit Data</h5>
                                                    <button type="button" class="close" data-dismiss="modal"
                                                        aria-label="Close">
                                                        <span aria-hidden="true">&times;</span>
                                                    </button>
                                                </div>
                                                <form action="{{ route('category.update', $kategori->id) }}" method="POST"
                                                    enctype="multipart/form-data">
                                                    @method('PUT')
                                                    @csrf
                                                    <input type="hidden" name="id" value="{{ $kategori->id }}">
                                                    <div class="modal-body">
                                                        <div class="form-group">
                                                            <label for="kategori">Category</label>
                                                            <input class="form-control is-valid kategori" name="kategori"
                                                                id="kategori" value="{{ $kategori->kategori }}">
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="keterangan">Description</label>
                                                            <textarea class="form-control is-valid keterangan" name="keterangan" id="keterangan">{{ $kategori->keterangan }}</textarea>
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="icon">Icon</label>
                                                            <input type="file" name="icon" id="icon"
                                                                class="form-control" accept="image/*">
                                                        </div>

                                                    </div>
                                                    <div class="modal-footer">
                                                        <button type="button" class="btn btn-secondary"
                                                            data-dismiss="modal">Close</button>
                                                        <button type="submit" class="btn btn-primary">Save changes</button>
                                                    </div>
                                                </form>

                                            </div>
                                        </div>
                                    </div>
                                @endforeach

                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
        <!-- ============================================================== -->
        <!-- End PAge Content -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- Right sidebar -->
        <!-- ============================================================== -->
        <!-- .right-sidebar -->
        <!-- ============================================================== -->
        <!-- End Right sidebar -->
        <!-- ============================================================== -->
    </div>



    <!-- Modal -->
    <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="modalAddCategory" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Add Category</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form action="{{ route('category.store') }}" class="form" method="POST"
                        enctype="multipart/form-data">
                        @csrf
                        <div class="form-group">
                            <label for="kategori">Category</label>
                            <input type="text" name="kategori" id="kategori" class="form-control is-valid">
                        </div>
                        <div class="form-group">
                            <label for="description">Description</label>
                            <input type="text" name="keterangan" id="keterangan" class="form-control is-valid">
                        </div>
                        <div class="form-group">
                            <label for="icon">Icon</label>
                            <input type="file" name="icon" id="icon" class="form-control" accept="image/*">
                        </div>
                </div>
                <div class="modal-footer">
                    <button class="btn btn-sm btn-secondary " data-dismiss="modal">Close</button>
                    <button class="btn btn-sm btn-primary btnSave" type="submit">Save changes</button>
                </div>
                </form>

            </div>
        </div>
    </div>

@endsection