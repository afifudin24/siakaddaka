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
        'target_user'
    ];
    protected $casts = [
    'target_user' => 'array',
];



    // 🔥 helper ambil users
    public function users()
    {
        return User::whereIn('id', $this->target_user ?? [])->get();
    }

    public function pengumuman()
    {
        return $this->belongsTo(Pengumuman::class);
    }
    public function user()
    {
        return $this->belongsTo(User::class, 'target_id');
    }
    public function getUsersAttribute()
{
    if (!$this->target_user) return collect();
    return User::whereIn('id', $this->target_user)->get();
}

}
