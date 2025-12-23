<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Semester extends Model
{
    use HasFactory;

    protected $fillable = [
        'tahun_pelajaran_id',
        'nama',
        'tanggal_mulai',
        'tanggal_selesai',
        'is_active',
    ];

    public function tahunPelajaran()
    {
        return $this->belongsTo(TahunPelajaran::class, 'tahun_pelajaran_id');
    }
    public function tagihan()
    {
        return $this->hasMany(Tagihan::class);
    }
}
