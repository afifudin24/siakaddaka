<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class DataSekolah extends Model
{
    protected $table = 'data_sekolah';

    protected $fillable = [
        'nama_sekolah',
        'npsn',
        'status',
        'jenjang',
        'alamat',
        'email_sekolah',
        'telepon',
        'logo',
        'ikon',
        'gambar_unggulan',
        'banner',
        'kepala_sekolah',
        'nip_kepala_sekolah',
        'deskripsi_singkat',
        'visi',
        'misi',
    ];
}
