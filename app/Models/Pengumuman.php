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
    protected $casts = [
    'start_at' => 'datetime',
    'end_at'   => 'datetime',
];


    public function target()
    {
        return $this->hasOne(PengumumanTarget::class);
    }
}
