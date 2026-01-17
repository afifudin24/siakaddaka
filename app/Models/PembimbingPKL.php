<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class PembimbingPKL extends Model
{
    use HasFactory;

    protected $table = 'pembimbing_pkl';

    protected $fillable = [
        'guru_id',
        'tahun_pelajaran_id',
        'status',
    ];

    // 🔗 Relasi ke Guru
    public function guru()
    {
        return $this->belongsTo(Guru::class);
    }

    // 🔗 Relasi ke Tahun Pelajaran
    public function tahunPelajaran()
    {
        return $this->belongsTo(TahunPelajaran::class);
    }

    // 🔗 1 Pembimbing punya banyak DUDI
   // App\Models\PembimbingPKL.php
public function dudi()
{
    return $this->hasMany(Dudi::class, 'pembimbing_pkl_id');
}

}
