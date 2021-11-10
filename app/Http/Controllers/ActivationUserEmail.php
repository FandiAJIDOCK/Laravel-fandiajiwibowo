<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use App\Models\User;

class ActivationUserEmail extends Controller
{
    const verified = 1;
    const noverified = 0;
    
    public function activationuseremail(Request $request)
    {
        $validator = Validator::make($request->all(), [ 
            'otpcode' => 'required', 
        ]);

        if ($validator->fails()) { 
            return response()->json(['error'=>$validator->errors()], 401);            
        }

        $user = User::where('otp', $request->otpcode)->first();
        if(!$user){
            $respon = [
                'status' => 'Error',
                'msg' => 'OTP does not match', 
            ];
            return response()->json($respon, 401);  
        }

        if($user){
            if($user->verified == self::verified){
                $respon = [
                    'status' => 'Success',
                    'msg' => 'E-mail has been activated', 
                ];
                return response()->json($respon, 401); 
            }elseif($user->verified == self::noverified){
                User::where('otp', $request->otpcode)
                ->update([
                    'verified' => 1,
                ]);
                $respon = [
                    'status' => 'Success',
                    'msg' => 'E-mail activation successful', 
                ];
                return response()->json($respon, 401); 
            }
        }
    }
}
