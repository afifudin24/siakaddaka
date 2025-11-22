<?php

namespace App\Observers;

use App\Models\Ejurnal;
use App\Models\LogUser;
use Illuminate\Support\Facades\Auth;

class EjurnalObserver
{
    public function created(Ejurnal $ejurnal)
    {
        $this->log(
            'created', 
            "E-Jurnal dibuat untuk guru {$ejurnal->mengajar->guru->nama} pada mapel {$ejurnal->mengajar->mapel->nama_mapel}, tanggal {$ejurnal->tgl_jurnal}"
        );
    }

    public function updated(Ejurnal $ejurnal)
    {
        $this->log(
            'updated', 
            "E-Jurnal diperbarui untuk guru {$ejurnal->mengajar->guru->nama} pada mapel {$ejurnal->mengajar->mapel->nama_mapel}, tanggal {$ejurnal->tgl_jurnal}"
        );
    }

    public function deleted(Ejurnal $ejurnal)
    {
        $this->log(
            'deleted', 
            "E-Jurnal dihapus untuk guru {$ejurnal->mengajar->guru->nama} pada mapel {$ejurnal->mengajar->mapel->nama_mapel}, tanggal {$ejurnal->tgl_jurnal}"
        );
    }

    protected function log($action, $description)
    {
        LogUser::create([
            'user_id'     => Auth::id(),
            'action'      => $action,
            'description' => $description,
            'ip_address'  => request()->ip(),
            'user_agent'  => request()->userAgent(),
        ]);
    }
}
