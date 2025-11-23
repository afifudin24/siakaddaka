<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class JamPelajaran extends Model
{
    protected $table = 'jam_pelajaran';

    protected $fillable = [
        'jam_ke',
        'mulai',
        'selesai'
    ];

    public function jadwal()
    {
        return $this->hasMany(JadwalMengajar::class, 'jam_ke', 'jam_ke');
    }
}
