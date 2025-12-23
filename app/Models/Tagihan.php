<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Tagihan extends Model
{
    use HasFactory;

    protected $table = 'tagihan';

    protected $fillable = [
        'siswa_id',
        'nama_tagihan',
        'jenis_tagihan_id',
        'jumlah',
        'tgl_tagihan',
        'status',
        'semester_id',
        'tahun_pelajaran_id'
    ];

    /**
     * Relasi ke Siswa
     */
    public function siswa()
    {
        return $this->belongsTo(Siswa::class, 'siswa_id');
    }
    public function jenisTagihan()
    {
        return $this->belongsTo(JenisTagihan::class);
    }

    /**
     * Relasi ke Pembayaran
     */
    public function pembayaran()
    {
        return $this->hasMany(Pembayaran::class, 'tagihan_id');
    }

    /**
     * Hitung total yang sudah dibayar
     */
    public function totalDibayar()
    {
        return $this->pembayaran()->sum('jumlah_bayar');
    }

    /**
     * Hitung sisa tagihan
     */
    public function sisaTagihan()
    {
        return $this->jumlah - $this->totalDibayar();
    }

    /**
     * Update status tagihan otomatis
     */
    public function updateStatus()
    {
        $this->status = $this->sisaTagihan() <= 0 ? 'lunas' : 'belum_lunas';
        $this->save();
    }
}
