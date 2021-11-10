<?php

namespace App\Http\Controllers;

use App\Events\Auth\UserActivationEmail;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Arr;
use App\Models\User;
use App\Mail\Auth\ActivationEmail;
use Illuminate\Support\Facades\Mail;
class UserController extends Controller
{
    
    public function registerform(Request $request) 
    { 

      
     // var_dump( $datax );die;
      // $datas  = random_int(100000, 999999);;
      // var_dump( $datas );die;
        $validator = Validator::make($request->all(), [ 
            'name' => 'required|max:20',
            'email' => 'required|email', 
            'password' => 'required', 
            'c_password' => 'required|same:password', 
        ]);

        if ($validator->fails()) { 
            return response()->json(['error'=>$validator->errors()], 401);            
        }

        $user = User::where('email', $request->email)->first();

      
        if($user){
            $respon = [
                'status' => 'Failed',
                'msg' => 'User is active can not register', 
            ];
            return response()->json($respon, 401);     
        }

        $input = $request->all();
        $input['password'] = bcrypt($input['password']); 
        $input['role'] = 'user'; 
        $input['registered_at'] = date('Y-m-d H:i:s'); 
        $user = User::create($input); 
        $user->createToken('token-auth')->plainTextToken;

     // event(new UserActivationEmail($user));

      Mail::to($user->email)->send(new ActivationEmail($user));
      // var_dump($user);die;
     // dd($dataxx);

        $respon = [
            'status' => 'success',
            'msg' => 'Register successfully',
            'errors' => null,
            'content' => [
                'status_code' => 200,
            ]
        ];

        return response()->json($respon, 200); 
    }

    public function registerformadmin(Request $request) 
    { 
        $validator = Validator::make($request->all(), [ 
          'name' => 'required|max:20',
          'email' => 'required|email', 
          'password' => 'required', 
          'c_password' => 'required|same:password', 
        ]);

        if ($validator->fails()) { 
            return response()->json(['error'=>$validator->errors()], 401);            
        }

        $user = User::where('email', $request->email)->first();
        if($user){
            $respon = [
                'status' => 'Failed',
                'msg' => 'User is active can not register', 
            ];
            return response()->json($respon, 401);     
        }

        $input = $request->all();
        $input['password'] = bcrypt($input['password']); 
        $input['registered_at'] = date('Y-m-d H:i:s'); 
        $user = User::create($input); 
        $user->createToken('token-auth')->plainTextToken;

        $respon = [
            'status' => 'success',
            'msg' => 'Register successfully',
            'errors' => null,
            'content' => [
                'status_code' => 200,
            ]
        ];

        return response()->json($respon, 200); 

    }

}
