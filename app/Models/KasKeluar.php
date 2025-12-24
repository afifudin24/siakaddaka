<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class KasKeluar extends Model
{
    protected $table = 'kaskeluar';

    protected $fillable = [
        'kode_pengeluaran',
        'tanggal',
        'kategori',
        'keterangan',
        'jumlah',
      
        'petugas_id',
        'semester_id',
        'tahun_pelajaran_id',
    ];

    // 🔗 RELASI
    public function petugas()
    {
        return $this->belongsTo(Staff::class, 'petugas_id');
    }

    public function semester()
    {
        return $this->belongsTo(Semester::class);
    }

    public function tahunPelajaran()
    {
        return $this->belongsTo(TahunPelajaran::class);
    }
}
