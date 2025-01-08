<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class prodiModel extends Model
{
    use HasFactory;
    protected $primaryKey = 'kd_prodi';
    protected $table = 'prodi';
    protected $fillable = ['nama_prodi', 'kd_dosen'];
}
