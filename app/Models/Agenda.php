<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Agenda extends Model
{
    use HasFactory;

    protected $fillable = [
        'judul',
        'deskripsi',
        'tgl_mulai',
        'tgl_selesai',
        'waktu_mulai',
        'waktu_selesai',
        'lokasi',
        'status',
    ];

    /**
     * Scope untuk kegiatan yang akan datang
     */
    public function scopeUpcoming($query)
    {
        return $query->where('tgl_mulai', '>=', now())->orderBy('tgl_mulai');
    }

    /**
     * Scope untuk kegiatan yang sudah selesai
     */
    public function scopePast($query)
    {
        return $query->where('tgl_selesai', '<', now())->orderBy('tgl_selesai', 'desc');
    }
}
