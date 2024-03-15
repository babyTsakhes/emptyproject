<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use App\Http\Requests\StorePersonRequest;
use App\Http\Requests\UpdatePersonRequest;
use App\Models\Person;
use App\Http\Resources\PersonResource;
class PersonController extends Controller
{


     
    public function index()
        {
           
            return PersonResource::collection(Person::all());
        }
    
    public function store(StorePersonRequest $request)
        {
            $person = Person::create($request->validated());
    
            return PersonResource::make($person);
           
        }
    
    
    public function show($id)
        {
            $person = Person::find($id);
            $message = json_encode(['message'=>'Такой записи не существует. Возможно, она была удалена']);
            return (is_null($person)) ? response( $message, 404)
                ->header('Content-Type', 'application/json') : PersonResource::make($person); 
        }
    
    
    public function update(UpdatePersonRequest $request, $id)
        {
            $person = Person::find($id);
            $message = json_encode(['message'=>'Такой записи не существует. Возможно, она была удалена']);
            if(is_null($person)){
                return response( $message, 404)
                ->header('Content-Type', 'application/json') ;
            }
            else{
                $person->update($request->validated());
            }
            
            return PersonResource::make($person);
        }
    
    
    public function destroy($id)
        {
            $person = Person::find($id);
            $message = json_encode(['message'=>'Такой записи не существует. Возможно, она была удалена']);
            if(is_null($person)){
                return response($message, 404)->header('Content-Type','application/json');
            }
            else{
                $person->delete();
                
            }
            return response()->noContent();
    
            
        }
}
