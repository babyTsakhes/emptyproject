<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Api\V1\PersonController;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});





    Route::get('/index', [PersonController::class, 'index']);

    Route::get('/showName/{name}', [PersonController::class, 'showName']);
    Route::get('/showSurname/{surname}', [PersonController::class, 'showSurname']);
    Route::get('/showFatherame/{fathername}', [PersonController::class, 'showFathername']);

    //Route::get('/showFIO/name={name}/{surname}/{fathername}', [PersonController::class, 'showFIO']);
    Route::get('/showFIO', [PersonController::class, 'showFIO']);
    Route::get('/showLike/{like}', [PersonController::class, 'showLike']);
    Route::post('/store', [PersonController::class, 'store'])->name('persons.store');


