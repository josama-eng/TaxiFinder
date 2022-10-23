

<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>TaxiFinder</title>
        {{-- <link rel="stylesheet" href="css/main.css"> --}}
        <link rel="stylesheet" href="{{asset('css/app.css')}}">

    </head>
  
    <body>
        <div class="logo sticky top-0 bg-dark flex flex-row justify-between px-9 py-6">
            <h2 class="text-yellow text-mdt">Taxi<span class="bg-yellow text-textColorDark font-bold px-1">Finder</span></h2>
            <nav class="nav-links text-yellow-50 relative hidden">
                <ul class=" space-y-2 my-6 text-center">
                    @foreach($locations as $index=>$key) 
                    <li><a href="/show?location={{$key->location_name}}" class="hover:bg-yellow hover:text-textColorDark active:bg-yellow transition ease-in-out delay-100 px-3 py-1 text-lg text-textColorLight">{{$key->location_name}}</a></li>
                    @endforeach
                </ul>
            </nav>
            <div class="burger w-5 flex flex-col space-y-2 cursor-pointer mt-3">
                <div class="w-7 bg-yellow h-1"></div>
                <div class="w-7 bg-yellow h-1"></div>
                <div class="w-7 bg-yellow h-1"></div>
            </div>
        </div>
        @yield('content')
    <footer class="bg-dark py-8  text-center">
        <small class="text-yellow">Copyright &copy;2022, All rights reserved</small>
    </footer>
    <script src="{{asset('javaScript/main.js')}}"></script>
    </body>
    </html>