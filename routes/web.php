<?php

use App\Models\TaxiFinders;
use App\Models\LocationFinder;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\TaxiController;


Route::get('/', [TaxiController::class,'index']);
Route::get('/show',[TaxiController::class,'show']);


