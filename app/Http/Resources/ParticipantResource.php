<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;
/**
 * @OA\Schema(
 *    schema="ParticipantSchema",
 *     required={"name"},
 *      @OA\Property(
 *            property="id",
 *            description="id сущности ",
 *             type="integer",
 *              nullable="false",
 *                  example="1"
 *        ),
 *        @OA\Property(
 *            property="name",
 *            description="Имя сущности ",
 *            type="string",
 *            nullable="false",
 *            example="Ann",
 *        ),
 *          @OA\Property(
 *            property="wish",
 *            description="какой хочет подарок ",
 *            type="string",
 *            nullable="false",
 *            example="car BMB"
 *        ),
 *        
 *      
 *    )
 * )
 */
class ParticipantResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @return array<string, mixed>
     */
    public function toArray(Request $request): array
    {
        return [
            'id'=>$this->id,
            'name'=>$this->name,
            'wish'=>$this->wish,
            'recepient_id'=>$this->recepient_id,
            
        ];
    }
}
