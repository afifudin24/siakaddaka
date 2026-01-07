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

    public function announcement()
    {
        return $this->belongsTo(Announcement::class);
    }
}
