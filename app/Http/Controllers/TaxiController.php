<?php

namespace App\Http\Controllers;

use App\Models\TaxiFinders;
use Illuminate\Http\Request;
use App\Models\LocationFinder;

class TaxiController extends Controller
{
    public function index(){

        $location = LocationFinder::all();
        return view('taxis.index',[
            'locations' => $location
        ]);
    }

     public function show(request $request){
        $request->query();
        $city = $request->query('location');
        $result = TaxiFinders::where('location', $city)->get();
        return view('taxis.show',[
            'city'=> $result
        ]);
    }
 
}
