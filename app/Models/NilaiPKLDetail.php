<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class NilaiPKLDetail extends Model
{
    protected $table = 'nilai_pkl_detail';

    protected $fillable = [
        'nilai_pkl_id',
        'kriteria_nilai_pkl_id',
        'nilai',
    ];

    public function nilaiPKL()
    {
        return $this->belongsTo(NilaiPKL::class);
    }

    public function kriteria()
    {
        return $this->belongsTo(KriteriaNilaiPKL::class, 'kriteria_nilai_pkl_id');
    }
}

