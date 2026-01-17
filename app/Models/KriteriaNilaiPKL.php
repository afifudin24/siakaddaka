<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class KriteriaNilaiPKL extends Model
{
    protected $table = 'kriteria_nilai_pkl';

    protected $fillable = [
        'nama_kriteria',
        'bobot',
        'is_active',
    ];

    public function nilaiDetail()
    {
        return $this->hasMany(NilaiPKLDetail::class);
    }
}
