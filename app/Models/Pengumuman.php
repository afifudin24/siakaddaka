<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Pengumuman extends Model
{
    protected $table = 'pengumuman';
    protected $fillable = [
        'title',
        'content',
        'created_by',
        'is_active',
        'start_at',
        'end_at'
    ];

    public function targets()
    {
        return $this->hasMany(PengumumanTarget::class);
    }
}
