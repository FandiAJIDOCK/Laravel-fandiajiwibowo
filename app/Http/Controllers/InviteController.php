<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use App\Models\User;
use App\Mail\Auth\ActivationEmail;
use App\Mail\Auth\ActivationEmailInvite;
use Illuminate\Support\Facades\Mail;

class InviteController extends Controller
{
   
    public function inviteuser(Request $request)
    {
        $validator = Validator::make($request->all(), [ 
            'email' => 'required|email', 
        ]);

        if ($validator->fails()) { 
            return response()->json(['error'=>$validator->errors()], 401);            
        }

        $user = User::where('email', $request->email)->first();
        if($user){
            $respon = [
                'status' => 'Failed',
                'msg' => 'E-mail already registered', 
            ];
            return response()->json($respon, 401);     
        }

        Mail::to($request->email)->send(new ActivationEmailInvite());
        $respon = [
            'status' => 'success',
            'msg' => 'Invite email user successfully',
            'errors' => null,
            'content' => [
                'status_code' => 200,
            ]
        ];
        
        return response()->json($respon, 200); 
    }
}
