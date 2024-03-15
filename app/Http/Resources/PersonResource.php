<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class PersonResource extends JsonResource
{

    public static $wrap = null;
    /**
     * Transform the resource into an array.
     *
     * @return array<string, mixed>
     */

   
    public function toArray(Request $request): array
    {
        return [
            'name'=>$this->name,
            'surname'=>$this->surname,
            'passport'=>$this->passport,
            'gender'=>$this->gender
        ];
    }
}


/**
 * @OA\Schema(
 *    schema="PersonSchema",
 *      
 *        @OA\Property(
 *            property="name",
 *            description="Имя сущности ",
 *            type="string",
 *            nullable="false",
 *            example="Лука"
 *        ),
 *          @OA\Property(
 *            property="surname",
 *            description="Фамилия сущности ",
 *            type="string",
 *            nullable="false",
 *            example="Лукин"
 *        ),
 *        @OA\Property(
 *            property="gender",
 *            description="пол сущности",
 *            type="boolean",
 *            nullable="false",
 *            example="false"
 *        ),
 * 
 *      @OA\Property(
 *            property="passport",
 *            description="Номер паспорта сущности",
 *            type="string",
 *            nullable="false",
 *            example="5454 676767"
 *        ),
 *    )
 * )
 */
