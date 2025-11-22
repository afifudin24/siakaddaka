<?php

namespace App\Observers;

use App\Models\DataMengajar;
use App\Models\LogUser;
use Illuminate\Support\Facades\Auth;

class DataMengajarObserver
{
    public function created(DataMengajar $data)
    {
        $guru = $data->guru->nama ?? 'Guru tidak ditemukan';
        $mapel = $data->mapel->nama_mapel ?? 'Mapel tidak ditemukan';

        $this->log(
            'created',
            "Data mengajar dibuat: Guru {$guru}, Mapel {$mapel}, Jam {$data->jam_mengajar}, Pertemuan per minggu {$data->pertemuan_per_minggu}"
        );
    }

    public function updated(DataMengajar $data)
    {
        $guru = $data->guru->nama ?? 'Guru tidak ditemukan';
        $mapel = $data->mapel->nama_mapel ?? 'Mapel tidak ditemukan';

        $this->log(
            'updated',
            "Data mengajar diperbarui: Guru {$guru}, Mapel {$mapel}, Jam {$data->jam_mengajar}, Pertemuan per minggu {$data->pertemuan_per_minggu}"
        );
    }

    public function deleted(DataMengajar $data)
    {
        $guru = $data->guru->nama ?? 'Guru tidak ditemukan';
        $mapel = $data->mapel->nama_mapel ?? 'Mapel tidak ditemukan';

        $this->log(
            'deleted',
            "Data mengajar dihapus: Guru {$guru}, Mapel {$mapel}"
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
