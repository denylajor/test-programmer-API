<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class mahasiswaModel extends Model
{
    use HasFactory;
    protected $primaryKey = 'nim';
    protected $table = 'mahasiswa';
    protected $fillable = ['nama', 'alamat', 'kd_prodi'];
}
