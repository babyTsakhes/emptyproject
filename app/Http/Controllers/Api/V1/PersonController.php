<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use App\Http\Requests\StorePersonRequest;
use App\Http\Requests\UpdatePersonRequest;
use App\Models\Person;
use App\Http\Resources\PersonResource;
use Illuminate\Http\Request;

class PersonController extends Controller
{


     
    public function index()
        {
           
            //var_dump(Person::all()); die;
            //return (Person::all());

          //  $person = Person::find(1);
          
            return view('persons.index'); 
        }


       
    
    public function store(Request $request)
        {
        
            var_dump($request->name); die;
            return view('persons.filterResult');
           
        }
    
    
    public function showSurname($surname)
        {
           
            $persons = Person::select(['name','surname','fathername','email'])->where('surname',$surname)->get();
            //var_dump($person->name); die;
            return view('persons.filterResult',compact('persons'));
            
        }
    
    

        public function showFathername($fathername)
        {
           
            $persons = Person::select(['name','surname','fathername','email'])->where('fathername',$fathername)->get();
            //var_dump($person->name); die;
            return view('persons.filterResult',compact('persons'));
            
        }


        public function showFIO(Request $r)
        {
            $name =   $r->name;
           
            $surname =  $r->surname;
            //var_dump($surname); die;
             $fathername = $r->fathername;
            $persons = Person::select(['name','surname','fathername','email'])->where(['fathername'=>$fathername])->orWhere( ['name'=>$name])->orWhere( ['surname'=>$surname])->get();
            //var_dump($person->name); die;
            return view('persons.filterResult',compact('persons'));
            
        }
//$users = User::where('name','LIKE',"%{$search}%")->get();
        public function showName($name)
        {
           
            $persons = Person::select(['name','surname','fathername','email'])->where('name',$name)->get();
            //var_dump($person->name); die;
            return view('persons.filterResult',compact('persons'));
            
        }

        public function showEmail($email)
        {
           
            $persons = Person::select(['name','surname','fathername','email'])->where('email',$email)->get();
            //var_dump($person->name); die;
            return view('persons.filterResult',compact('persons'));
            
        }


        public function showLike($like)
        {
           
            $persons = Person::where('fathername','LIKE',"%{$like}%")->orWhere('name','LIKE',"%{$like}%")->orWhere('surname','LIKE',"%{$like}%")->get();
            //var_dump($person->name); die;
            return view('persons.filterResult',compact('persons'));
            
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
