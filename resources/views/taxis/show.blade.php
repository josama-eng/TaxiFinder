
{{-- @extends('layouts.layout')
@section('content')
<div class="w-full flex  justify-between h-screen md:flex-row sm:flex-col bg-yellow">
    <div class="content flex flex-col">
        <p>{{$city}}</p>
        <div class="px-9 py-6 border border-dark h-full rounded h-60 mt-3 flex flex-col justify-center ml-3 shadow-custom">
            <p class="text-smt text-dark">Taxi location: {{$taxi->location}}</p>
            <h2 class="text-smt text-dark">Taxi name: {{$taxi['name']}}</h2>
            <h2 class="text-smt text-dark">Taxi phone number: <a href="" class="hover:bg-dark hover:text-textColorLight px-2 py-1 transition-all duration-150">{{$taxi['phone_number']}}</a></h2>
        </div>
    </div>
    <div class="bg-ilustration md:w-1/2 h-full lg:bg-cover md:bg-contain sm:w-full sm:bg-contain sm:bg-no-repeat">

    </div>
</div>

@endsection --}}
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="{{asset('css/app.css')}}">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
    <title>Document</title>
</head>
<body>
    <div class="wrapper">
        <div class="card-wrapper">
            @foreach($city as $taxi)
            <div class="card">
                <img src="https://cdn-icons-png.flaticon.com/512/75/75780.png" alt="">
                    <h2 class="text-smt text-yellow font-bold">{{$taxi->name}}</h2>
                    <h2 class="text-smt text-textColorDark font-bold"><a href="tel:{{$taxi->phone_number}}" class="hover:bg-yellow hover:text-textColorDark px-2 py-1 transition-all duration-150"><i class="fa fa-phone"></i> {{$taxi->phone_number}}</a></h2>
            </div>     
            @endforeach
        </div>

        <a href="/" class="custom" >BACK</a>
    </div>
</body>
</html>