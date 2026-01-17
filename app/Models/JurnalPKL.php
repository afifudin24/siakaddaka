<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class JurnalPKL extends Model
{
    protected $table = 'jurnal_pkl';

    protected $fillable = [
        'peserta_pkl_id',
        'tanggal',
        'kegiatan',
        'catatan',
    ];

    public function pesertaPKL()
    {
        return $this->belongsTo(PesertaPKL::class);
    }
}
