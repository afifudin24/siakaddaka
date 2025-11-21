<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Materi extends Model
{
    use HasFactory;

    protected $fillable = [
        'mengajar_id',
        'judul',
        'deskripsi',
        'file',
        'tanggal',
        'tipe',
        'status',
    ];

    // Relasi ke DataMengajar
    public function mengajar()
    {
        return $this->belongsTo(DataMengajar::class, 'mengajar_id');
    }
}
