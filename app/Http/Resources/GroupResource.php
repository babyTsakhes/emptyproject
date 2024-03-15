<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

/**
 * @OA\Schema(
 *    schema="GroupSchema",
 *      required={"name"},
 *        @OA\Property(
 *            property="name",
 *            description="Имя сущности ",
 *            type="string",
 *            nullable="true",
 *            example="Looks",
 *           
 *        ),
 *          @OA\Property(
 *            property="decription",
 *            description="decription сущности ",
 *            type="string",
 *            nullable="false",
 *            example="super good"
 *        ),
 *        
 *      
 *    )
 * )
 * @OA\Schema(
 *    schema="GroupPartisipantsSchema",
 *      
 *        @OA\Property(
 *            property="name",
 *            description="Имя сущности ",
 *            type="string",
 *            nullable="false",
 *            example="Looks"
 *        ),
 *          @OA\Property(
 *            property="decription",
 *            description="decription сущности ",
 *            type="string",
 *            nullable="false",
 *            example="super good"
 *        ),
 *         @OA\Property(
 *           property="participants",
 *           type="object",
 *           nullable=false,
 *           description="участники группы",
 *            @OA\Property(
 *            property="id",
 *            description="id сущности ",
 *             type="integer",
 *              nullable="false",
 *                  example="1"
 *        ),
 *            @OA\Property(
 *            property="name",
 *            description="Имя сущности ",
 *            type="string",
 *            nullable="false",
 *            example="Looks"
 *        ),
 *          @OA\Property(
 *            property="wish",
 *            description="какой хочет подарок ",
 *            type="string",
 *            nullable="false",
 *            example="super good"
 *        ),
 *      )
 *        
 *      
 *    )
 * )
 */
class GroupResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @return array<string, mixed>
     */
    public function toArray(Request $request): array
    {
         return [
                    'name'=>$this->name,
                    'decription'=>$this->decription,
                    
                ];
    }
}
