<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class HariAktif extends Model
{
    protected $table = 'hari_aktif';

    protected $fillable = [
        'nama_hari'
    ];

    // relasi ke jadwal
    public function jadwal()
    {
        return $this->hasMany(JadwalMengajar::class, 'hari', 'nama_hari');
    }
}
