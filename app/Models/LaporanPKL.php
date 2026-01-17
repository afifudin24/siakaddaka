<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class LaporanPKL extends Model
{
    protected $table = 'laporan_pkl';

    protected $fillable = [
        'peserta_pkl_id',
        'file_laporan',
        'tanggal_upload',
        'status',
    ];

    public function pesertaPKL()
    {
        return $this->belongsTo(PesertaPKL::class);
    }
}
