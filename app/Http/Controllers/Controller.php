<?php

namespace App\Http\Controllers;

use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Routing\Controller as BaseController;

class Controller extends BaseController
{
    use AuthorizesRequests, DispatchesJobs, ValidatesRequests;

    protected function returnError($message){
        return $this->resultResponse(false, $message, null, 203);
    }

    protected function returnSuccess($message, $payload){
        return $this->resultResponse(true, $message, $payload, 200);
    }

    protected function resultResponse($status=false, $message="", $payload=[], $code=200)
    {
        return response()->json([
            'status' => $status,
            'message' => $message,
            'payload' => $payload
        ], $code);
    }
    
}
