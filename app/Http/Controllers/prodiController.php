<?php

namespace App\Http\Controllers;

use App\Models\prodiModel;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;

class prodiController extends Controller
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
            $data = prodiModel::all();

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
                'kd_prodi' => 'required|unique:prodi,kd_prodi',
                'nama_prodi' => 'required',
                'kd_dosen' => 'required',
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
                    'kd_prodi' => $req->input('kd_prodi'),
                    'nama_prodi' => $req->input('nama_prodi'),
                    'kd_dosen' => $req->input('kd_dosen'),
                    'created_at' => date('Y-m-d H:i:s'),
                ];

                prodiModel::insert($data);

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
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
