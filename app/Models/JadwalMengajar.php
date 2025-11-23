<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class JadwalMengajar extends Model
{
    protected $table = 'jadwal_mengajar';

    protected $fillable = [
        'kelas_id',
        'data_mengajar_id',
        'hari',
        'jam_ke'
    ];

    public function kelas()
    {
        return $this->belongsTo(Kelas::class);
    }

    public function dataMengajar()
    {
        return $this->belongsTo(DataMengajar::class);
    }

    public function hariAktif()
    {
        return $this->belongsTo(HariAktif::class, 'hari', 'nama_hari');
    }

    public function jamPelajaran()
    {
        return $this->belongsTo(JamPelajaran::class, 'jam_ke', 'jam_ke');
    }
}
