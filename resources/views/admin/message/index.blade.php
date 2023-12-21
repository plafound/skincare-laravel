@extends('admin.layouts')
@section('title', 'Message')
@section('content')
    <div class="page-breadcrumb">
        <div class="row">
            <div class="col-5 align-self-center">
                <h4 class="page-title">Message</h4>
            </div>
            <div class="col-7 align-self-center">
                <div class="d-flex align-items-center justify-content-end">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item">
                                <a href="#">Home</a>
                            </li>
                            <li class="breadcrumb-item active" aria-current="page">
                                Message
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
                                    <th>Subject</th>
                                    {{-- <th>Message</th> --}}
                                    <th>Timestamp</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($message as $message)
                                    <tr class="@if ($message->status == 0) bg-secondary @endif clickable-row"
                                        data-href="{{ url('message', $message->id) }}" id="tabel-klik">

                                        <td>
                                            @if ($message->status == 0)
                                                <i class="fa fa-envelope"></i>
                                            @else
                                                <i class="fa fa-envelope-open"></i>
                                            @endif
                                            {{ $x++ }}

                                        </td>
                                        <td>
                                            {{ $message->user->name }}
                                        </td>
                                        <td>{{ $message->subject }}</td>
                                        {{-- <td>{{ $message->message }}</td> --}}
                                        <td>{{ $message->created_at }}</td>
                                        <td>
                                            <button class="btn btn-danger btn-sm"
                                                data-target="#modalHapus{{ $message->id }}" data-toggle="modal">
                                                <i class="fa fa-trash"></i>Delete
                                            </button>
                                        </td>
                                    </tr>

                                    <div class="modal fade" id="modalHapus{{ $message->id }}" tabindex="-1">
                                        <div class="modal-dialog">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h5 class="modal-title" id="exampleModalLabel">Delete Data</h5>
                                                    <button type="button" class="close" data-dismiss="modal"
                                                        aria-label="Close">
                                                        <span aria-hidden="true">&times;</span>
                                                    </button>
                                                </div>
                                                <form action="{{ route('message.destroy', $message->id) }}" method="POST">
                                                    @csrf
                                                    @method('delete')
                                                    <div class="modal-body">
                                                        Do you want to delete this message ?
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
    </div>



@endsection

@push('after-script')
    <script>
        jQuery(document).ready(function($) {
            $("tbody").on('click', 'tr td:not(:last-child)', function() {
                window.location = $(this).parent().data("href");
            });
        });
    </script>
@endpush
