<?php

namespace App\Http\Controllers\Api\V1\Swagger;

use App\Http\Controllers\Controller;
use App\Http\Requests\StorePersonRequest;
use App\Http\Requests\UpdatePersonRequest;
use App\Models\Person;
use App\Http\Resources\PersonResource;

     
class PersonController extends Controller
{
//https://docs.swagger.io/spec.html#434-items-object
//https://haait.net/how-to-use-swagger-in-laravel/
   
}
/**
      * @OA\Get(
      *   tags={"Person"},
      *   path="/persons",
      *   summary="Список сущностей без пагинации",
      *   @OA\Response(
      *     response=200,
      *     description="OK",
      *     @OA\JsonContent(
      *       type="array",
      *       
      *             
      *                 @OA\Items(ref="#/components/schemas/PersonSchema"),
      *                 @OA\Items(ref="#/components/schemas/PersonSchema"),
      *             
      *      
      *       
      *     )
      *   )
      * )
      */
