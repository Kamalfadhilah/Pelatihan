<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Dobu - Yuk Peduli Sesama">
    <meta name="author" content="Kelompok Mantap">
    <title>Dobu - {{ $title }}</title>
    <link rel="icon" href="{{ url('/images/icon/book.svg') }}">
    <link href="{{ url('/vendor/fontawesome-free/css/all.min.css') }}" rel="stylesheet" type="text/css">
    <link href="{{ url('/css/sb-admin-2.min.css') }}" rel="stylesheet" type="text/css">
    <link href="{{ url('/css/dorplas.css') }}" rel="stylesheet" type="text/css">
    <link href="{{ url('/css/navigation.css') }}" rel="stylesheet" type="text/css">
    @yield('custom-head')
</head>

<body id="page-top">
<div id="wrapper">
    @include('partials.navbar')
    <div id="content-wrapper" class="d-flex flex-column">
        <div id="content">
            <div class="container-fluid">
                @yield('container')
            </div>
        </div>
        @include('partials.footer')
    </div>
</div>
<script src="{{ url('/vendor/jquery/jquery.min.js') }}"></script>
<script src="{{ url('/vendor/bootstrap/js/bootstrap.bundle.min.js') }}"></script>
<script src="{{ url('/js/sb-admin-2.min.js"') }}"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
@yield('custom-script')
</body>

</html>
