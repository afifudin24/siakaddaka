<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class JadwalMengajar extends Model
{
    protected $table = 'jadwal_mengajar';

    protected $fillable = [
        
        'data_mengajar_id',
        'hari_id',
        'jam_pelajaran_id',
    ];

   

   public function dataMengajar()
    {
        return $this->belongsTo(DataMengajar::class);
    }

    public function hariAktif()
    {
        return $this->belongsTo(HariAktif::class, 'hari_id');
    }

    public function jamPelajaran()
    {
        return $this->belongsTo(JamPelajaran::class);
    }
}
