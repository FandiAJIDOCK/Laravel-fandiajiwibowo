<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use App\Models\User;
use Illuminate\Support\Facades\Storage;

class ProfileUser extends Controller
{
  
    public function profile(Request $request) 
    { 
        $user = $request->user();
        $validator = Validator::make($request->all(), [ 
            'id' => 'required', 
            'email' => 'required|email', 
        ]);

        if ($validator->fails()) { 
            return response()->json(['error'=>$validator->errors()], 401);            
        }

        if($user->id !=$request->id){
            $respon = [
                'status' => 'Failed',
                'msg' => 'Not a valid user', 
            ];
            return response()->json($respon, 401);  
        }

        $user = User::where('id', $request->id)->first();
        $respon = [
            'status_code' => 200,
            'status' => 'success',
            'msg' => 'Profile user',
            'content' => [
                'name' => $user->name,
                'user_name' => $user->user_name,
                'email' => $user->email,
                'role' => $user->role,
                'avatar' => $user->avatar =="" ? null : $user->avatar,
                'terdaftar_at' => date('d-m-Y H:i:s', strtotime($user->registered_at)),
                'created_at' => date('d-m-Y H:i:s', strtotime($user->created_at)),
                'updated_at' => date('d-m-Y H:i:s', strtotime($user->updated_at)),

            ]
        ];
        return response()->json($respon, 200);
    }

    public function updateprofile(Request $request)
    {
        $validator = Validator::make($request->all(), [ 
            'id' => 'required', 
            'email' => 'required|email', 
        ]);

        if ($validator->fails()) { 
            return response()->json(['error'=>$validator->errors()], 401);            
        }

        $path = $request->file('avatar')->store('public/apiDocs');
       // $url = Storage::url($path);
        User::where('id', $request->id)
            ->update([
                'name' => $request->name,
                'user_name' => $request->user_name,
                'email' => $request->email,
                'role' => $request->role,
                'avatar' => url('/storage/app/').$path,
            ]);
        return response()->json([
            "success" => 200,
            "message" => "successfully update",
        ]);
    
    }
     

}
