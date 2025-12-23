<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class JenisTagihan extends Model
{
    use HasFactory;
    protected $table = 'jenis_tagihan';
protected $fillable = [
    'nama_jenis',
    'deskripsi',
    'is_active'
];

public function tagihan()
    {
        return $this->hasMany(Tagihan::class);
    }
}
