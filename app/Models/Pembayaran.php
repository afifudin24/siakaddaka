<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Pembayaran extends Model
{
    use HasFactory;
    protected $table = 'pembayaran';

    protected $fillable = [
        'tagihan_id',
        'jumlah_bayar',
        'tgl_bayar',
        'keterangan',
        'semester_id',
        'tahun_pelajaran_id'
    ];

    /**
     * Relasi ke Tagihan
     */
    public function tagihan()
    {
        return $this->belongsTo(Tagihan::class, 'tagihan_id');
    }

    /**
     * Setelah pembayaran dibuat/diupdate, update status tagihan
     */
    protected static function booted()
    {
        static::saved(function ($pembayaran) {
            $pembayaran->tagihan->updateStatus();
        });
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
