<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class LaporanKeuanganDetail extends Model
{
    use HasFactory;

    protected $table = 'laporan_keuangan_detail';

    protected $fillable = [
        'laporan_id',
        'jenis', // pemasukan / pengeluaran
        'keterangan',
        'tanggal',
        'nominal',
    ];

    protected $casts = [
        'tanggal' => 'date',
    ];

    // Relasi ke laporan
    public function laporan()
    {
        return $this->belongsTo(LaporanKeuangan::class, 'laporan_id');
    }
}
