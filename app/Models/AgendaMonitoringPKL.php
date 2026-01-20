<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class AgendaMonitoringPKL extends Model
{
    use HasFactory;

    protected $table = 'agenda_monitoring_pkls';

    protected $fillable = [
        'nama_agenda',
        'tanggal_mulai',
        'tanggal_selesai',
        'catatan',
        'tahun_pelajaran_id',
    ];

    protected $casts = [
        'tanggal_mulai'   => 'date',
        'tanggal_selesai' => 'date',
    ];

    // 🔗 Relasi ke Tahun Pelajaran
    public function tahunPelajaran()
    {
        return $this->belongsTo(TahunPelajaran::class);
    }
}
