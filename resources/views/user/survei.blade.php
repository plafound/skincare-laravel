<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">

    <title>Skincare Diagnose</title>
    <meta content="" name="description">
    <meta content="" name="keywords">

    <!-- Favicons -->
    <link href="{{ asset('front_assets/img/favicon.png') }}" rel="icon">
    <link href="{{ asset('front_assets/img/apple-touch-icon.png') }}" rel="apple-touch-icon">

    <!-- Google Fonts -->
    <link
        href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Montserrat:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
        rel="stylesheet">

    <!-- Vendor CSS Files -->
    <link href="{{ asset('front_assets/vendor/aos/aos.css') }}" rel="stylesheet">
    <link href="{{ asset('front_assets/vendor/bootstrap/css/bootstrap.min.css') }}" rel="stylesheet">
    <link href="{{ asset('front_assets/vendor/bootstrap-icons/bootstrap-icons.css') }}" rel="stylesheet">
    <link href="{{ asset('front_assets/vendor/boxicons/css/boxicons.min.css') }}" rel="stylesheet">
    <link href="{{ asset('front_assets/vendor/glightbox/css/glightbox.min.css') }}" rel="stylesheet">
    <link href="{{ asset('front_assets/vendor/remixicon/remixicon.css') }}" rel="stylesheet">
    <link href="{{ asset('front_assets/vendor/swiper/swiper-bundle.min.css') }}" rel="stylesheet">

    <!-- Template Main CSS File -->
    <link href="{{ asset('front_assets/css/style.css') }}" rel="stylesheet">

    <!-- =======================================================
  * Template Name: Bootslander - v4.10.0
  * Template URL: https://bootstrapmade.com/bootslander-free-bootstrap-landing-page-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>

    <!-- ======= Header ======= -->
    <header id="header" class="fixed-top d-flex align-items-center ">
        <div class="container d-flex align-items-center justify-content-between">

            <div class="logo">
                <h1><a href="{{ url('') }}"><span>Skincare Diagnose</span></a></h1>
                <!-- Uncomment below if you prefer to use an image logo -->
                <!-- <a href="index.html"><img src="{{ asset('front_assets/img/logo.png') }}" alt="" class="img-fluid"></a>-->
            </div>

            <nav id="navbar" class="navbar">
                <ul>
                    <li><a class="nav-link scrollto active " href="{{ route('survei') }}">Home</a></li>
                    <li><a class=" btn btn-warning p-2 mx-4" href="{{ route('history-user') }}">History</a>
                    </li>
                    <li>
                        <a class=" btn btn-secondary p-2 mx-4" href="{{ url('user/message') }}">Message</a>
                    </li>
                    <li>
                        <form action="{{ route('logout') }}" method="post">
                            @csrf
                            <button type="submit" class="nav-link scrollto btn btn-danger p-2 mx-4 text-white"
                                href="{{ route('login') }}">Logout</button>
                        </form>
                    </li>
                </ul>
                <i class="bi bi-list mobile-nav-toggle"></i>
            </nav><!-- .navbar -->

        </div>
    </header><!-- End Header -->

    <!-- ======= Hero Section ======= -->
    <section id="kuesioner">

        <div class="container">
            <div class="row justify-content-between">
                <div class="card">
                    <div class="card-header">
                        Question
                    </div>
                    <div class="card-body">
                        <table class="table table-striped">

                            <form action="{{ route('survei.proses') }}" method="POST" enctype="multipart/form-data"
                                id="form_pertanyaan">
                                <input type="hidden" name="id_user" value=1>
                                @csrf
                                @php
                                    $i = 1;
                                @endphp
                                @foreach ($pertanyaan as $pertanyaan)
                                    <tr>
                                        <td>
                                            <div class="row">
                                                <div class="col">

                                                    <div for="">
                                                        {{ $i . '. ' }}{{ $pertanyaan->pertanyaan }}
                                                    </div>
                                                    <div class="form-check form-check-inline">
                                                        <input class="form-check-input" type="radio"
                                                            name="vector[{{ $i }}]" id="" value=1
                                                            required>
                                                        <label class="form-check-label" for="">Ya</label>
                                                    </div>
                                                    <div class="form-check form-check-inline">
                                                        <input class="form-check-input" type="radio"
                                                            name="vector[{{ $i }}]" id="" value=-1
                                                            required>
                                                        <label class="form-check-label" for="">Tidak</label>
                                                    </div>

                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                    @php
                                        $i++;
                                    @endphp
                                @endforeach

                        </table>
                        <div class="row pt-3">
                            <div class="col">
                                <button type="submit" name="button" class="btn btn-success"> Submit </button>

                            </div>
                        </div>
                    </div>
                    </form>
                </div>
            </div>
        </div>

    </section><!-- End Hero -->


    <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i
            class="bi bi-arrow-up-short"></i></a>
    <div id="preloader"></div>

    <!-- Vendor JS Files -->
    <script src="{{ asset('front_assets/vendor/purecounter/purecounter_vanilla.js') }}"></script>
    <script src="{{ asset('front_assets/vendor/aos/aos.js') }}"></script>
    <script src="{{ asset('front_assets/vendor/bootstrap/js/bootstrap.bundle.min.js') }}"></script>
    <script src="{{ asset('front_assets/vendor/glightbox/js/glightbox.min.js') }}"></script>
    <script src="{{ asset('front_assets/vendor/swiper/swiper-bundle.min.js') }}"></script>
    <script src="{{ asset('front_assets/vendor/php-email-form/validate.js') }}"></script>

    <!-- Template Main JS File -->
    <script src="{{ asset('front_assets/js/main.js') }}"></script>

</body>

</html>
