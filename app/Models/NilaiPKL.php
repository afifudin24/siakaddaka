<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class NilaiPKL extends Model
{
    protected $table = 'nilai_pkl';

    protected $fillable = [
        'peserta_pkl_id',
        'nilai_akhir',
        'catatan',
    ];

    public function pesertaPKL()
    {
        return $this->belongsTo(PesertaPKL::class);
    }

    public function detail()
    {
        return $this->hasMany(NilaiPKLDetail::class);
    }
}
