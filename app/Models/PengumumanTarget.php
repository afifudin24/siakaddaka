<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class PengumumanTarget extends Model
{
    protected $table = 'pengumuman_target';
 protected $fillable = [
        'pengumuman_id',
        'target_type',
        'target_id'
    ];

    public function pengumuman()
    {
        return $this->belongsTo(Pengumuman::class);
    }
    public function user()
    {
        return $this->belongsTo(User::class, 'target_id');
    }
}
