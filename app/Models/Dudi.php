<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Dudi extends Model
{
    use HasFactory;

    protected $table = 'dudi';

    protected $fillable = [
        'pembimbing_pkl_id',
        'nama_dudi',
        'bidang_usaha',
        'pimpinan_dudi',
        'pembimbing_dudi',
        'alamat',
        'kontak',
    ];

    // 🔗 Relasi ke Pembimbing PKL
  public function pembimbingPKL()
{
    return $this->belongsTo(PembimbingPKL::class, 'pembimbing_pkl_id');
}

}
