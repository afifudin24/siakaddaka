<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class LaporanKeuangan extends Model
{
    use HasFactory;

    protected $table = 'laporan_keuangan';

    protected $fillable = [
      
        'tanggal_mulai',
        'tanggal_selesai',
        'semester_id',
        'tahun_pelajaran_id',
        'status_rekap'
    ];

    protected $casts = [
        'tanggal_mulai' => 'date',
        'tanggal_selesai' => 'date',
    ];

    // Relasi ke semester
    public function semester()
    {
        return $this->belongsTo(Semester::class);
    }

    // Relasi ke tahun pelajaran
    public function tahunPelajaran()
    {
        return $this->belongsTo(TahunPelajaran::class);
    }

    // Relasi ke detail laporan
    public function detail()
    {
        return $this->hasMany(LaporanKeuanganDetail::class, 'laporan_id');
    }
}
