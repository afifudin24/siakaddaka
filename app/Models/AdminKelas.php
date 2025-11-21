<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Adminkelas extends Model
{
    use HasFactory;

    protected $fillable = [
        'admin_id',
        'siswa_id',
    ];

   
    // Relasi ke Siswa
    public function siswa()
    {
        return $this->belongsTo(Siswa::class, 'siswa_id');
    }
}
