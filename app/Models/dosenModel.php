<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class dosenModel extends Model
{
    use HasFactory;
    protected $primaryKey = 'kd_dosen';
    protected $table = 'dosen';
    protected $fillable = ['nama_dosen', 'alamat'];
}
