<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Admin extends Model
{
    use HasFactory;

    // Nama tabel (opsional karena default singular 'admin' tidak jamak)
    protected $table = 'admin';

    // Kolom yang dapat diisi
    protected $fillable = [
        'user_id',
        'nama',
        'email',
        'alamat',
        'no_hp',
    ];

    /**
     * Relasi ke User
     * Satu admin dimiliki oleh satu user
     */
    public function user()
    {
        return $this->belongsTo(User::class);
    }
}
