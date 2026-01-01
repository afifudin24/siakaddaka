<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class LogKehadiranKelas extends Model
{
    use HasFactory;

    protected $table = 'log_kehadiran_kelas';

    protected $fillable = [
        'kelas_id',
        'siswa_id',
        'tgl_kehadiran',
        'status_kehadiran',
    ];

    // Relasi ke Kelas
    public function kelas()
    {
        return $this->belongsTo(Kelas::class, 'kelas_id');
    }

    // Relasi ke Siswa
    public function siswa()
    {
        return $this->belongsTo(Siswa::class, 'siswa_id');
    }
}
