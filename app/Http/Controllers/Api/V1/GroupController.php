<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Api\V1\Swagger\Controller;
use App\Http\Requests\StoreGroupRequest;
use App\Http\Requests\UpdateGroupRequest;
use App\Models\Group;
use App\Http\Resources\GroupResource;
use Illuminate\Support\Facades\Validator;

class GroupController extends Controller
{
    /**
     * @OA\Get(
     *   tags={"Group"},
     *   path="/groups",
     *   summary="Group all",
     *   @OA\Response(
     *     response=200,
     *     description="OK",
     *      @OA\JsonContent(
      *       type="array",
      *         @OA\Items(
      *             ref="#/components/schemas/GroupSchema",
      *             )
    *)

*       ),
      *    @OA\Response(
        *       response=404,
        *       description="Not Found")
     *   ),
     *
     * )
     */
    public function index()
        {

            return GroupResource::collection(Group::all());
        }

        /**
         * @OA\Post(
         *   tags={"Group"},
         *   path="/group?",
            *
         *   summary="Group store",
         *   @OA\RequestBody(
         *     required=true,
         *     @OA\JsonContent(
         *       type="object",
         *       required={"name"},
         *       @OA\Property(property="name", type="string"),
         *       @OA\Property(property="description", type="string")
         *     )
         *   ),
         *   @OA\Response(
         *     response=200,
         *     description="OK",
         *     @OA\Property(property="id", type="string")
         *   ),
         *   @OA\Response(response=404, description="Not Found")
         * )
         */
    public function store(StoreGroupRequest $request)
        {

            $validator = Validator::make($request->all(), [
                'name'=>'required|string|max:255|min:1',
                    'description'=>'nullable|string',
            ]);
            $group = Group::create($request->validated());

            if($validator->fails()){
                return GroupResource::make($group);
            }

            return $group->id;

        }


        /**
     * @OA\Get(
     *   tags={"Group"},
     *   path="/group/{id}",
     *   summary="Group one with Partisipants",
     *   @OA\Response(
     *     response=200,
     *     description="OK",
     *      @OA\JsonContent(
      *       type="array",
      *
      *
      *         @OA\Items(type="array",
      *             ref="#/components/schemas/GroupPartisipantsSchema",
      *                 @OA\Items(ref="#/components/schemas/ParticipantSchema"))
    *
    *
    *),
      *
      *
      *
      *
      *     ),
      *         @OA\Response(
        *           response=404,
        *           description="Not Found")

     *   )
     * )
     */
    public function show($id)
        {
            $participants = Group::find($id)->participants->select('id','name','wish');
            $group = Group::find($id);
            $group['participants']=$participants;


            //var_dump($group); die;
            $message = json_encode(['message'=>'Not Found this record. It may have been deleted']);
            return (is_null($group)) ? response( $message, 404)
                ->header('Content-Type', 'application/json') : $group;
        }

    /**
     * @OA\Put(
     *   tags={"Group"},
     *   path="/group/{id}",
     *   summary="Group one with Partisipants",
     *   @OA\RequestBody(
 *        @OA\JsonContent(ref="#/components/schemas/GroupSchema")
 *     ),
     *   @OA\Response(
     *     response=200,
     *     description="OK",
     *      @OA\JsonContent(
      *       type="array",
      *
      *
      *         @OA\Items(
      *             ref="#/components/schemas/GroupSchema" )
    *
    *
    *),
      *
      *
      *
      *
      *     ),
      *         @OA\Response(
        *           response=404,
        *           description="Not Found")

     *   )
     * )
     */
    public function update(UpdateGroupRequest $request, $id)
        {
            $group = Group::find($id);
            $message = json_encode(['message'=>'Not Found this record. It may have been deleted']);
            if(is_null($group)){
                return response( $message, 404)
                ->header('Content-Type', 'application/json') ;
            }
            else{
                $group->update($request->validated());
                $group->fresh();
            }

            return GroupResource::make($group);
        }

    /**
     * @OA\Delete(
     *   tags={"Group"},
     *   path="/group/{id}",
     *   summary="Group destroy",
     *   @OA\Parameter(
     *       name="id",
  *         description="User ID",
  *         in="path",
  *         required=true,
  *         example="1"
     *   ),
     *   @OA\Response(
     *     response=204,
     *     description="No Content"
     *   ),
     *   @OA\Response(response=404, description="Not Found")
     * )
     */
    public function destroy($id)
        {
            $group = Group::find($id);
            $message = json_encode(['message'=>'Not Found this record. It may have been deleted']);
            if(is_null($group)){
                return response($message, 404)->header('Content-Type','application/json');
            }
            else{
                $group->delete();

            }
            return response()->noContent();


        }
}
