<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Mapel extends Model
{
    use HasFactory;

    protected $table = 'mapel';

    protected $fillable = [
        'nama_mapel',
        'kode_mapel',
        'kategori_mapel_id',
    ];

    /**
     * Relasi ke KategoriMapel
     * Setiap mapel memiliki satu kategori
     */
    public function kategori()
    {
        return $this->belongsTo(KategoriMapel::class, 'kategori_mapel_id');
    }
    public function dataMengajar()
{
    return $this->hasMany(DataMengajar::class, 'mapel_id');
}
}
