<?php

namespace App\Http\Controllers;

use App\Models\dosenModel;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;

class dosenController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        try {
            DB::beginTransaction();
            $data = dosenModel::all();

            DB::commit();
            $msg = [
                'responseCode' => 200,
                'data' => $data,
                'responseMessage' => 'Success'
            ];
            return response()->json($msg, 200);
        } catch (Exception $e) {
            DB::rollBack();
            $msg = [
                'responseCode' => 400,
                'responseMessage' => $e->getMessage()
            ];
            return response()->json($msg, 400);
        }
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $req)
    {
        try {
            DB::beginTransaction();
            $rules = [
                'kd_dosen' => 'required|unique:dosen,kd_dosen',
                'nama_dosen' => 'required',
                'alamat' => 'required',
            ];
            $validator = Validator::make($req->all(), $rules);

            if ($validator->fails()) {
                $msg = [
                    'responseCode' => 401,
                    'responseMessage' => $validator->errors()
                ];
                return response()->json($msg, 401);
            } else {
                $data = [
                    'kd_dosen' => $req->input('kd_dosen'),
                    'nama_dosen' => $req->input('nama_dosen'),
                    'alamat' => $req->input('alamat'),
                    'created_at' => date('Y-m-d H:i:s'),
                ];

                dosenModel::insert($data);

                DB::commit();
                $msg = [
                    'responseCode' => 200,
                    'responseMessage' => 'Add Prodi Success'
                ];
                return response()->json($msg, 200);
            }
        } catch (Exception $e) {
            DB::rollBack();
            $msg = [
                'responseCode' => 400,
                'responseMessage' => $e->getMessage()
            ];
            return response()->json($msg, 400);
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $req, $id)
    {
        try {
            DB::beginTransaction();
            $rules = [
                'nama_dosen' => 'required',
                'alamat' => 'required',
            ];
            $validator = Validator::make($req->all(), $rules);

            if ($validator->fails()) {
                $msg = [
                    'responseCode' => 401,
                    'responseMessage' => $validator->errors()
                ];
                return response()->json($msg, 401);
            } else {
                $data = [
                    'nama_dosen' => $req->input('nama_dosen'),
                    'alamat' => $req->input('alamat'),
                    'updated_at' => date('Y-m-d H:i:s'),
                ];

                dosenModel::where(['kd_dosen' => $id])->update($data);
                DB::commit();
                $msg = [
                    'responseCode' => 200,
                    'data' => $data,
                    'responseMessage' => 'Success'
                ];
                return response()->json($msg, 200);
            }
        } catch (Exception $e) {
            DB::rollBack();
            $msg = [
                'responseCode' => 400,
                'responseMessage' => $e->getMessage()
            ];
            return response()->json($msg, 400);
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        try {
            DB::beginTransaction();
            dosenModel::where(['kd_dosen' => $id])->delete();
            DB::commit();
            $msg = [
                'responseCode' => 200,
                'responseMessage' => 'Success'
            ];
            return response()->json($msg, 200);
        } catch (Exception $e) {
            DB::rollBack();
            $msg = [
                'responseCode' => 400,
                'responseMessage' => $e->getMessage()
            ];
            return response()->json($msg, 400);
        }
    }
}
