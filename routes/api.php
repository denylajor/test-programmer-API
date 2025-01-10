<?php

use App\Http\Controllers\authController;
use App\Http\Controllers\dosenController;
use App\Http\Controllers\mahasiswaController;
use App\Http\Controllers\prodiController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});


Route::get('/', function () {
    $msg = [
        'responseCode' => 401,
        'responseMessage' => 'Unauthorized Token. Get Your Token Access !'
    ];
    return response()->json($msg, 401);
})->name('login');

Route::get('v1/logout', function (Request $request) {
    dd(Auth::user());
    $msg = [
        'responseCode' => 200,
        'responseMessage' => 'Deleted Token'
    ];
    return response()->json($msg, 200);
});
// --------------------AUTH TOKEN--------------------
Route::post('v1/registerUser', [authController::class, 'registerUser']);
Route::post('v1/loginUser', [authController::class, 'loginUser']);
// --------------------MAHASISWA---------------------
Route::get('v1/getMahasiswa', [mahasiswaController::class, 'index'])->middleware('auth:sanctum');
Route::post('v1/addMahasiswa', [mahasiswaController::class, 'store'])->middleware('auth:sanctum');
Route::patch('v1/updateMahasiswa/{id}', [mahasiswaController::class, 'update'])->middleware('auth:sanctum');
Route::delete('v1/delMahasiswa/{id}', [mahasiswaController::class, 'destroy'])->middleware('auth:sanctum');
// --------------------PRODI-------------------------
Route::get('v1/getProdi', [prodiController::class, 'index'])->middleware('auth:sanctum');
Route::post('v1/addProdi', [prodiController::class, 'store'])->middleware('auth:sanctum');
Route::patch('v1/updateProdi/{id}', [prodiController::class, 'update'])->middleware('auth:sanctum');
Route::delete('v1/delProdi/{id}', [prodiController::class, 'destroy'])->middleware('auth:sanctum');
// --------------------DOSEN-------------------------
Route::get('v1/getDosen', [dosenController::class, 'index'])->middleware('auth:sanctum');
Route::post('v1/addDosen', [dosenController::class, 'store'])->middleware('auth:sanctum');
Route::patch('v1/updateDosen/{id}', [dosenController::class, 'update'])->middleware('auth:sanctum');
Route::delete('v1/delDosen/{id}', [dosenController::class, 'destroy'])->middleware('auth:sanctum');
