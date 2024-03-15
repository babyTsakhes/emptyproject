<?php

namespace App\Http\Controllers\Api\V1\Swagger;

use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Routing\Controller as BaseController;

/**
 *  @OA\Info(
 *  title="Документация к API для олимпиады Я-профессионал",
 * version="1.0.0"
 * ),
 * @OA\PathItem(
 *  path="/api/"
 * )
 * 
 */
class Controller extends BaseController
{
     
    use AuthorizesRequests, ValidatesRequests;
}