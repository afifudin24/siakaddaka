<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class DataSekolah extends Model
{
    protected $table = 'data_sekolah';

    protected $fillable = [
        'nama_sekolah',
        'nama_singkatan',
        'npsn',
        'status',
        'jenjang',
        'alamat',
        'yayasan_sekolah',
        'email_sekolah',
        'telepon',
        'kecamatan',
        'logo',
        'logo_dark',
        'logo_icon',
        'logo_surat',
        'gambar_unggulan',
        'gambar_unggulan_2',
      

        'banner',
        'kepala_sekolah',
        'nip_kepala_sekolah',
        'deskripsi_singkat',
        'visi',
        'misi',
    ];
}
