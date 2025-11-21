<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Kelas extends Model
{
    use HasFactory;

    // Nama tabel (opsional jika sama)
    protected $table = 'kelas';

    // Field yang boleh diisi
    protected $fillable = [
        'nama_kelas',
        'tingkat',
        'jurusan_id',
    ];

    /**
     * Relasi ke model Jurusan
     * Satu kelas dimiliki satu jurusan
     */
    public function jurusan()
    {
        return $this->belongsTo(Jurusan::class);
    }
}
