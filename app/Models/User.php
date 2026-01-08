<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Sanctum\HasApiTokens;

class User extends Authenticatable
{
    use HasApiTokens, HasFactory, Notifiable;
    protected $table = 'users';
    /**
     * mass assignable fields
     */
    protected $fillable = [
        'username',
        'nama',
        'email',
        'password',
        'password_text',
        'role',
        'foto_profil',
        'foto_unggulan',
        'reset_password_token',
    ];

    /**
     * hidden fields (tidak tampil saat toArray / JSON)
     */
    protected $hidden = [
        'password',
        'reset_password_token',
        'remember_token',
    ];

    /**
     * casts & password hashing otomatis
     */
    protected function casts(): array
    {
        return [
            'email_verified_at' => 'datetime',
            'password' => 'hashed', // Laravel 10+ hash otomatis
        ];
    }

    /* =========================
       RELASI (Opsional)
    ========================== */

    // Jika user punya data admin
    public function admin()
    {
        return $this->hasOne(Admin::class);
    }

    // Jika user punya data siswa
    public function siswa()
    {
        return $this->hasOne(Siswa::class);
    }

    // Jika user punya data guru
    public function guru()
    {
        return $this->hasOne(Guru::class);
    }
    public function staff()
    {
        return $this->hasOne(Staff::class);
    }
    public function logUser(){
        return $this->hasMany(LogUser::class);
    }

    public function target()
    {
        return $this->hasMany(PengumumanTarget::class, 'target_id');
    }
}
