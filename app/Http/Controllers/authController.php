<?php

namespace App\Http\Controllers;

use App\Models\User;
use Carbon\Carbon;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;

class authController extends Controller
{
    public function registerUser(Request $req)
    {
        try {
            DB::beginTransaction();
            $rules = [
                'name' => 'required',
                'email' => 'required|email|unique:users,email',
                'password' => 'required',
            ];
            $validator = Validator::make($req->all(), $rules);

            if ($validator->fails()) {
                $msg = [
                    'responseCode' => 401,
                    'data' => $validator->errors(),
                    'responseMessage' => 'Error Validation'
                ];
                return response()->json($msg, 401);
            } else {
                $data = [
                    'name' => $req->input('name'),
                    'email' => $req->input('email'),
                    'password' => Hash::make($req->input('password')),
                    'created_at' => date('Y-m-d H:i:s')
                ];
                User::insert($data);

                DB::commit();
                $msg = [
                    'responseCode' => 200,
                    'responseMessage' => 'Register User Success'
                ];
                return response()->json($msg, 200);
            }
        } catch (Exception $e) {
            DB::rollBack();
            $msg = [
                'responseCode' => 400,
                'data' => null,
                'responseMessage' => $e->getMessage()
            ];
            return response()->json($msg, 400);
        }
    }

    public function loginUser(Request $req)
    {
        try {
            DB::beginTransaction();
            $rules = [
                'email' => 'required|email',
                'password' => 'required',
            ];
            $validator = Validator::make($req->all(), $rules);

            if ($validator->fails()) {
                $msg = [
                    'responseCode' => 401,
                    'data' => $validator->errors(),
                    'responseMessage' => 'Error Validation'
                ];
                return response()->json($msg, 401);
            } else {
                $login = Auth::attempt($req->only(['email', 'password']));
                DB::commit();
                if ($login) {
                    $dataUser = User::where(['email' => $req->input('email')])->first();

                    $msg = [
                        'responseCode' => 200,
                        'token' => $dataUser->createToken('api-access', ["*"], Carbon::now()->addMinutes((10)))->plainTextToken,
                        // 'token' => $dataUser->createToken('api-access', ["*"], Carbon::now()->addMinutes((1)))->plainTextToken,
                        // 'refreshToken' => $dataUser->createToken('refresh-api-access', ['issue-access-token'], Carbon::now()->addMinutes((30 * 24 * 60)))->plainTextToken,
                        'responseMessage' => 'Success Login. Token Expired 10 Minutes Later !'
                    ];
                    return response()->json($msg, 200);
                } else {
                    $msg = [
                        'responseCode' => 401,
                        'responseMessage' => 'Email or Password Entered is Incorrect'
                    ];
                    return response()->json($msg, 401);
                }
            }
        } catch (Exception $e) {
            DB::rollBack();
            $msg = [
                'responseCode' => 400,
                'token' => null,
                'responseMessage' => $e->getMessage()
            ];
            return response()->json($msg, 400);
        }
    }
}
