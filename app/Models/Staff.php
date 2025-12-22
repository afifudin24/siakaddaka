<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Staff extends Model
{
    use HasFactory;

    protected $table = 'staff';

    protected $fillable = [
        'user_id',
        'nama',
        'email',
        'jabatan',
        'no_hp',
        'jenis_kelamin',
        'alamat',
    ];

    /**
     * Relasi ke User
     * Setiap staff memiliki satu user
     */
    public function user()
    {
        return $this->belongsTo(User::class);
    }
}
