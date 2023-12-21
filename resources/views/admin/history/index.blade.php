@extends('admin.layouts')
@section('title', 'History')
@section('content')
    <div class="page-breadcrumb">
        <div class="row">
            <div class="col-5 align-self-center">
                <h4 class="page-title">History</h4>
            </div>
            <div class="col-7 align-self-center">
                <div class="d-flex align-items-center justify-content-end">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item">
                                <a href="#">Home</a>
                            </li>
                            <li class="breadcrumb-item active" aria-current="page">
                                History
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
                    <div class="card-body">
                        <table class="table table-striped">
                            <thead>
                                <tr>
                                    <th>#</th>
                                    <th>User</th>
                                    <th>Result</th>
                                    <th>Date</th>
                                    <th>Action</th>

                                </tr>

                            </thead>
                            <tbody>
                                @foreach ($jawaban as $jawaban)
                                    <tr>
                                        <td>{{ $n++ }}</td>
                                        <td>{{ isset($jawaban->user->name) ? $jawaban->user->name : null }}</td>
                                        <td>
                                            @foreach (json_decode($jawaban->result) as $data)
                                                {{ $data . ',' }}
                                            @endforeach
                                        </td>
                                        <td>{{ $jawaban->created_at }}</td>

                                        <td> <button class="btn btn-sm btn-outline-success" data-toggle="modal"
                                                data-target="#modalDetail{{ $jawaban->id }}">Detail</button>
                                            <button class="btn btn-danger btn-sm"
                                                data-target="#modalHapus{{ $jawaban->id }}" data-toggle="modal">
                                                <i class="fa fa-trash"></i>Delete
                                            </button>
                                        </td>
                                    </tr>
                                    <div class="modal fade" id="modalDetail{{ $jawaban->id }}" tabindex="-1"
                                        aria-labelledby="modalDetail" aria-hidden="true">
                                        <div class="modal-dialog">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h5 class="modal-title" id="exampleModalLabel">Answer Detail</h5>
                                                    <button type="button" class="close" data-dismiss="modal"
                                                        aria-label="Close">
                                                        <span aria-hidden="true">&times;</span>
                                                    </button>
                                                </div>
                                                <div class="modal-body">
                                                    @php $x=1 @endphp
                                                    @foreach (json_decode($jawaban->answer) as $data)
                                                        <p>{{ $x . '. ' . $data }}</p>
                                                        @php $x++ @endphp
                                                    @endforeach
                                                    <h3 class="bg-warning text-white p-2 text-center">Result : @foreach (json_decode($jawaban->result) as $data)
                                                            {{ $data . ',' }}
                                                        @endforeach
                                                    </h3>
                                                    <div class="modal-footer">
                                                        <button class="btn btn-sm btn-secondary "
                                                            data-dismiss="modal">Close</button>
                                                    </div>
                                                    </form>

                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="modal fade" id="modalHapus{{ $jawaban->id }}" tabindex="-1">
                                        <div class="modal-dialog">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h5 class="modal-title" id="exampleModalLabel">Delete Data</h5>
                                                    <button type="button" class="close" data-dismiss="modal"
                                                        aria-label="Close">
                                                        <span aria-hidden="true">&times;</span>
                                                    </button>
                                                </div>
                                                <form action="{{ route('history.destroy', $jawaban->id) }}" method="POST">
                                                    @csrf
                                                    @method('delete')
                                                    <div class="modal-body">
                                                        Do you want to delete this history ?
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



@endsection
