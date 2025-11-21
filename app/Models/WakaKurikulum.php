<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class WakaKurikulum extends Model
{
    use HasFactory;

    protected $table = 'waka_kurikulum';

    protected $fillable = [
        'guru_id',
   
    ];

    // Relasi ke Guru
    public function guru()
    {
        return $this->belongsTo(Guru::class);
    }
}
