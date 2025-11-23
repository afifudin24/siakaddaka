<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class DataMengajar extends Model
{
    use HasFactory;

    protected $table = 'data_mengajar';

    protected $fillable = [
        'guru_id',
        'mapel_id',
        'jam_mengajar',
        'pertemuan_per_minggu',
    ];

    /**
     * Relasi ke Guru
     */
    public function guru()
    {
        return $this->belongsTo(Guru::class);
    }

    /**
     * Relasi ke Mapel
     */
    public function mapel()
    {
        return $this->belongsTo(Mapel::class);
    }
    public function ejurnal(){
        return $this->hasMany(Ejurnal::class, 'mengajar_id');
    }
    public function logKehadiran(){
        return $this->hasMany(LogKehadiran::class, 'mengajar_id');
    }

    public function kelas(){
        return $this->belongsTo(Kelas::class);
    }
}
