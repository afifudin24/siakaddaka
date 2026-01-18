<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class PesertaPKL extends Model
{
    protected $table = 'peserta_pkl';

    protected $fillable = [
        'siswa_id',
        'dudi_id',
        'tahun_pelajaran_id',
        'status',
    ];

    public function siswa()
    {
        return $this->belongsTo(Siswa::class);
    }

    public function dudi()
    {
        return $this->belongsTo(Dudi::class);
    }

    public function jurnalPKL()
    {
        return $this->hasMany(JurnalPKL::class);
    }

    public function nilaiPKL()
    {
        return $this->hasOne(NilaiPKL::class);
    }

    public function laporanPKL()
    {
        return $this->hasOne(LaporanPKL::class);
    }
    public function tahunPelajaran()
    {
        return $this->belongsTo(TahunPelajaran::class);
    }
}
