<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Api\V1\PersonController;
use App\Http\Controllers\Api\V1\GroupController;
use App\Http\Controllers\Api\V1\ParticipantController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});




    Route::get('/persons', [PersonController::class, 'index']);
    Route::get('/person/{id}', [PersonController::class, 'show']);
    Route::post('/person', [PersonController::class, 'store']);
    Route::put('/person/{id}', [PersonController::class, 'update']);
    Route::delete('/person/{id}', [PersonController::class, 'destroy']);
    

    Route::get('/groups', [GroupController::class, 'index']);
    Route::get('/group/{id}', [GroupController::class, 'show']);
    Route::post('/group', [GroupController::class, 'store']);
    Route::put('/group/{id}', [GroupController::class, 'update']);
    Route::delete('/group/{id}', [GroupController::class, 'destroy']);


    Route::delete('/group/{groupId}/participant/{participantId}', [ParticipantController::class, 'destroy']);
    Route::get('/group/{groupId}/participant/{participantId}/recipient', [ParticipantController::class, 'showRecipient']);
    Route::post('/group/{id}/toss', [ParticipantController::class, 'toss']);

  
    
    
