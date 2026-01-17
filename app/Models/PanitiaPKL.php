<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class PanitiaPKL extends Model
{
    use HasFactory;

    protected $table = 'panitia_pkl';

    protected $fillable = [
        'guru_id',
        'jabatan',
        'tahun_pelajaran_id',
        'status',
    ];

    /**
     * Relasi ke Guru
     */
    public function guru()
    {
        return $this->belongsTo(Guru::class, 'guru_id');
    }
     public function tahunPelajaran()
    {
        return $this->belongsTo(TahunPelajaran::class);
    }
}
