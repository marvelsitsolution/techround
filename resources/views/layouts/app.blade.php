<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="csrf-token" content="{{ csrf_token() }}">

        <title>{{ config('app.name', 'Laravel') }}</title>

        <!-- Fonts -->
        <link rel="preconnect" href="https://fonts.bunny.net">
        <link href="https://fonts.bunny.net/css?family=figtree:400,500,600&display=swap" rel="stylesheet" />

        <!-- Scripts -->
        <link rel="stylesheet" type="text/css" href="{{ asset("build/assets/css/bootstrap.css")}}">
        <link rel="stylesheet" type="text/css" href="{{ asset("build/assets/css/sidebar.css")}}">
        <link rel="stylesheet" type="text/css" href="{{ asset("build/assets/css/custom.css")}}">
        <script  src="{{ asset("build/assets/js/jquery.min.js") }}"></script>
        <script  src="{{ asset("build/assets/js/jquery-ui.min.js") }}"></script>
        @vite(['resources/css/app.css', 'resources/js/app.js'])

    </head>
    <body class="font-sans antialiased">
        <div class="min-h-screen bg-gray-100">
            @include('layouts.navigation')

            <!-- Page Heading -->
            @if (isset($header))
                <header class="bg-white shadow main-body-content">
                    <div class="max-w-7xl mx-auto py-6 px-4 sm:px-6 lg:px-8">
                        {{ $header }}
                    </div>
                </header>
            @endif

            <!-- Page Content -->
            <main>
                <div class="menu-wrapper">

                    @include('layouts.sidebar')
                </div>
                <div class="main-body-content">
                    <div class="main-body-inner-content">
                        <div class="main-body">
                               {{ $slot }}
                        </div>                                
                    </div>
                </div>
            </main>
           
        </div>
        <script  src="{{ asset("build/assets/js/bootstrap.bundle.js") }}"></script>
        
        <script  src="{{ asset("build/assets/js/main.js") }}"></script>
        
    </body>
</html>
