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
                    <div class="card-header">
                        <a href="{{ route('message') }}" class="text-white">
                            <div class="btn btn-primary">
                                <i class="fa fa-arrow-circle-left"></i>
                                Back
                            </div>
                        </a>
                    </div>
                    <div class="card-body">

                        <h2>Subject : <b>{{ $message->subject }}</b></h2>
                        <p>From : {{ $message->user->name }} </p>
                        <h2>Message : </h2>
                        <div>
                            {{ $message->message }}
                        </div>

                    </div>


                </div>

                <div class="card">
                    <div class="card-header">
                        Reply
                    </div>
                    <div class="card-body">
                        <form action="{{ url('reply') }}" method="post">
                            @csrf
                            <input type="hidden" name="id" id="id" value="{{ $reply ? $reply->id : '' }}">
                            <input type="hidden" name="id_message" value="{{ $message->id }}">
                            <textarea name="message">{{ $reply ? $reply->message : '' }}</textarea>
                            <button type="submit" class="btn float-right btn-primary m-3">Send</button>
                        </form>

                    </div>
                </div>
            </div>
        </div>
    </div>



@endsection

@push('after-script')
    <script src="https://cdn.ckeditor.com/4.21.0/standard/ckeditor.js"></script>
    <script>
        CKEDITOR.replace('message');
    </script>
@endpush
