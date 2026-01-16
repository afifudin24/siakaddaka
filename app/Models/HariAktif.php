<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class HariAktif extends Model
{
    protected $table = 'hari_aktif';

    protected $fillable = [
        'urutan_hari',
        'nama_hari'
    ];

    // relasi ke jadwal
    public function jadwal()
    {
        return $this->hasMany(JadwalMengajar::class, 'hari', 'nama_hari');
    }
     public function jamPelajaran()
    {
        return $this->hasMany(JamPelajaran::class, 'hari_id', 'id');
    }
    public function totalJamPelajaran()
{
    return $this->jamPelajaran()->count();
}

}
