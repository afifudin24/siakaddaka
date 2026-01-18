<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Siswa extends Model
{
    use HasFactory;

    // Nama tabel (opsional)
    protected $table = 'siswa';

    // Kolom yang dapat diisi
    protected $fillable = [
        'user_id',
        'nama',
        'nis',
        'nisn',
        'tgl_lahir',
        'no_hp',
        'no_hp_ortu',
        'alamat',
        'kelas_id',
        'is_lulus'
    ];

    /**
     * Relasi ke User
     * Satu siswa dimiliki oleh satu user
     */
    public function user()
    {
        return $this->belongsTo(User::class);
    }

    /**
     * Relasi ke Kelas
     * Siswa belongs to kelas
     */
    public function kelas()
    {
        return $this->belongsTo(Kelas::class);
    }
    public function logKehadiran(){
        return $this->hasMany(LogKehadiran::class);
    }
    public function logKehadiranKelas(){
        return $this->hasMany(LogKehadiranKelas::class);
    }
    public function ketuaKelas()
{
    return $this->hasOne(KetuaKelas::class, 'siswa_id');
}

    public function tagihan(){
        return $this->hasMany(Tagihan::class, 'siswa_id');
    }    
public function pembayaran(){
        return $this->hasMany(Pembayaran::class, 'siswa_id');
    }

    public function pesertaPKL()
    {
        return $this->hasOne(PesertaPKL::class, 'siswa_id');
    }


}
