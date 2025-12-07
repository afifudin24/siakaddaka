<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class KetuaKelas extends Model
{
    use HasFactory;
    protected $table = 'ketua_kelas';
    protected $fillable = [
        
        'siswa_id',
        'kelas_id'
    ];

   
    // Relasi ke Siswa
    public function siswa()
    {
        return $this->belongsTo(Siswa::class, 'siswa_id');
    }
    public function kelas(){
        return $this->belongsTo(Kelas::class, 'kelas_id');
    }
}
