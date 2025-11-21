<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class KategoriMapel extends Model
{
    use HasFactory;

    protected $table = 'kategori_mapel';

    protected $fillable = [
        'nama_kategori_mapel',
    ];

    /**
     * Jika nanti kategori mapel memiliki banyak mapel
     * bisa aktifkan relasi di bawah:
     */
    public function mapel()
    {
        return $this->hasMany(Mapel::class);
    }
}
