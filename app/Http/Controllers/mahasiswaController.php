<?php

namespace App\Http\Controllers;

use App\Models\mahasiswaModel;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;

class mahasiswaController extends Controller
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
            $data = mahasiswaModel::all();

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
                'nim' => 'required|unique:mahasiswa,nim',
                'nama' => 'required',
                'alamat' => 'required',
                'kd_prodi' => 'required',
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
                    'nim' => $req->input('nim'),
                    'nama' => $req->input('nama'),
                    'alamat' => $req->input('alamat'),
                    'kd_prodi' => $req->input('kd_prodi'),
                    'created_at' => date('Y-m-d H:i:s'),
                ];

                mahasiswaModel::insert($data);

                DB::commit();
                $msg = [
                    'responseCode' => 200,
                    'responseMessage' => 'Add Mahasiswa Success'
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
