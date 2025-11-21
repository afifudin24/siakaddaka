<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Ejurnal extends Model
{
    use HasFactory;

    protected $table = 'ejurnal';

    protected $fillable = [
        'mengajar_id',
        'tgl_jurnal',
        'pembahasan',
        'jml_hadir',
        'jml_izin',
        'jml_sakit',
        'jml_alfa',
    ];

    // Relasi ke DataMengajar
    public function mengajar()
    {
        return $this->belongsTo(DataMengajar::class, 'mengajar_id');
    }
}
