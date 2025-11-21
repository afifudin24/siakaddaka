<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Jurusan extends Model
{
    use HasFactory;

    // Nama tabel (opsional jika sesuai)
    protected $table = 'jurusan';

    // Field yang boleh diisi
    protected $fillable = [
        'nama_jurusan',
    ];

    /**
     * Relasi ke model Kelas
     * Satu jurusan punya banyak kelas
     */
    public function kelas()
    {
        return $this->hasMany(Kelas::class);
    }
}
