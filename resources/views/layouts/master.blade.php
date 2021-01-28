<html lang="ar">

<head>
    <title>@yield('title')</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <!-- Bootstrap 4 css -->
    <link rel="stylesheet" href="{{ asset('website') }}/assets/css/bootstrap.min.css">
    
    <!-- Font Awesome css -->
    <link rel="stylesheet" href="{{ asset('website') }}/assets/css/all.css">

    <!-- Main style css -->
    <link rel="stylesheet" href="{{ asset('website') }}/assets/css/main.css">

    <link rel="stylesheet" href="{{ asset('website') }}/assets/css/ltr.css">

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.rtl.min.css" integrity="sha384-mUkCBeyHPdg0tqB6JDd+65Gpw5h/l8DKcCTV2D2UpaMMFd7Jo8A+mDAosaWgFBPl" crossorigin="anonymous">
    
    
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    {{--  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->  --}}
    <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->
        @yield('css')

</head>

<body dir="rtl">

    <div>
        @include('layouts.navbar')
        @yield('content')
        @include('layouts.footer')
    </div>

    <!--====================================================================
                        Include All Js File 
    ====================================================================-->
    <!-- All Plugins -->
    <!--  jQuery js  -->
    <script src="{{ asset('website') }}/assets/js/jquery-3.3.1.min.js"></script>
    <!-- Popper Js  -->
    <script src="{{ asset('website') }}/assets/js/popper.min.js"></script>
    <!-- Bootstrap 4 Js  -->
    <script src="{{ asset('website') }}/assets/js/bootstrap.min.js"></script>
    <script src="{{ asset('website') }}/assets/js/custom.js"></script>
    <script>
        $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
        });
    </script>
    
    @yield('scripts')
</body>
</html>