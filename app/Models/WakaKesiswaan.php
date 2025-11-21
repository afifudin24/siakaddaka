<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class WakaKesiswaan extends Model
{
    use HasFactory;

    protected $table = 'waka_kesiswaan';

    protected $fillable = [
        'guru_id',
       
       
    ];

    // Relasi ke Guru
    public function guru()
    {
        return $this->belongsTo(Guru::class);
    }
}
