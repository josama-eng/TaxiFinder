
@extends('layouts.layout')
@section('content')

 <main>
    <div class="w-full h-full flex md:flex-row sm:flex-col bg-yellow">
        <div  class="w-1/2 m-auto flex flex-col  items-center justify-center  sm:py-7">
            <form action="/show" class="flex flex-col">
                <input type="text" name="location" id="" placeholder="City name" class="outline-none border border-yellow py-2 px-6 bg-dark text-textColorLight"> 
                <button class="text-dark border border-dark hover:bg-dark hover:text-textColorLight active:bg-yellow font-bold uppercase px-8 py-3 rounded outline-none focus:outline-none mr-1 mb-1 ease-linear transition-all duration-150 mt-4" type="submit">Search</button>
            </form>   
        </div>
       <div class="img">
           <img src="https://images.unsplash.com/photo-1556122071-e404eaedb77f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1134&q=80" alt="">
       </div>
    </div>
 </main>

 @endsection