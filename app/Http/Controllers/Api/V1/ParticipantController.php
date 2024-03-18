<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Api\V1\Swagger\Controller;
use App\Http\Requests\StoreParticipantRequest;
use App\Http\Requests\UpdateParticipantRequest;
use App\Http\Resources\ParticipantResource;
use App\Http\Resources\ParticipantResourceWithoutReci;
use App\Models\Group;
use App\Models\Participant;

class ParticipantController extends Controller
{
  public function index($groupId,$participantId)
      {

        $participant = Group::find($groupId)->participants()
                    ->where('id', $participantId)
                    ->first();
          return ParticipantResource::collection(Participant::all());
      }

  public function toss($id)
      {

            $participants = Group::find($id)->participants;
            $count = $participants->count();


            if($count % 2 == 0 && $count >= 3){
                $recs = ParticipantResource::collection($participants)->select(['id'])->all();
                $i = 0;
                $recid = [];
                foreach($recs as $key=> $val )
                {
                    $recid[$i] = $val['id'];
                    $i++;
                }
                $partid = $recid;
                shuffle($recid);
                $i = 0;
                $yet = [];//уже назначенные
                shuffle($recid);
                foreach($partid as $id )
                {

                    $part = Participant::find($id);

                    $part->recepient_id =array_pop($recid);
                    $part->save();
                }
                // die;

            }else if( $count < 3){
                $t = 3-$count;
                $message = json_encode(["message'=>'Нельзя ! Добавьте в группу $t участника."]);
                return response( $message, 300)
                    ->header('Content-Type', 'application/json') ;
            }
            else if($count % 2 != 0){
                $message = json_encode(["message'=>'Нельзя ! Добавьте в группу 1 участника."]);
                return response( $message, 300)
                    ->header('Content-Type', 'application/json') ;
            }





      }


  public function showRecepient($groupId,$participantId)
      {
         $participant = Participant::find($participantId);
         $rec = Participant::find($participant->recepient_id);
         if((is_null($participant) || is_null($rec))){
            $message = json_encode(['message'=>'Not Found this record. It may have been deleted']);
            return response( $message, 404);
         }
         else{

            return ParticipantResource::make($rec);
         }

      }


  public function update(UpdateParticipantRequest $request, $id)
      {
          $participant = Participant::find($id);
          $message = json_encode(['message'=>'Not Found this record. It may have been deleted']);
          if(is_null($participant)){
              return response( $message, 404)
              ->header('Content-Type', 'application/json') ;
          }
          else{
              $participant->update($request->validated());
              $participant->fresh();
          }

          return ParticipantResource::make($participant);
      }


      /**
       * @OA\Delete(
       *   tags={"Participant"},
       *   path="/api/path/{id}",
       *   summary="Participant destroy",
       *    *   @OA\Parameter(
     *       name="id",
  *         description="User ID",
  *         in="path",
  *         required=true,
  *         example="1"
     *   ),
       *
       *   @OA\Response(
       *     response=204,
       *     description="No Content",
       *
       *   ),
       *   @OA\Response(response=404, description="Not Found")
       * )
       */
  public function destroy($groupId,$participantId)
      {
        $participant = Group::find($groupId)->participants()
        ->where('id', $participantId)
        ->first();

        //var_dump($participant); die;
        $message = json_encode(['message'=>'Not Found this record. It may have been deleted']);
          if(is_null($participant)){
              return response($message, 404)->header('Content-Type','application/json');
          }
          else{
              $participant->delete();

          }
          return response()->noContent();


      }
}
