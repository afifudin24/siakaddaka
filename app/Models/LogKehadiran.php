<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class LogKehadiran extends Model
{
    use HasFactory;

    protected $table = 'log_kehadiran';

    protected $fillable = [
        'mengajar_id',
        'siswa_id',
        'pertemuan_ke',
        'tgl_kehadiran',
        'status_kehadiran',
    ];

    // Relasi ke DataMengajar
    public function mengajar()
    {
        return $this->belongsTo(DataMengajar::class, 'mengajar_id');
    }

    // Relasi ke Siswa
    public function siswa()
    {
        return $this->belongsTo(Siswa::class, 'siswa_id');
    }
}
