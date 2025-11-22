<?php

namespace App\Observers;

use App\Models\Mapel;
use App\Models\LogUser;
use Illuminate\Support\Facades\Auth;

class MapelObserver
{
    public function created(Mapel $mapel)
    {
        $kategori = $mapel->kategori->nama_kategori ?? 'Tidak ada kategori';
        $this->log('created', "Mapel baru dibuat: {$mapel->nama_mapel} (Kategori: {$kategori})");
    }

    public function updated(Mapel $mapel)
    {
        $kategori = $mapel->kategori->nama_kategori ?? 'Tidak ada kategori';
        $this->log('updated', "Mapel diperbarui: {$mapel->nama_mapel} (Kategori: {$kategori})");
    }

    public function deleted(Mapel $mapel)
    {
        $kategori = $mapel->kategori->nama_kategori ?? 'Tidak ada kategori';
        $this->log('deleted', "Mapel dihapus: {$mapel->nama_mapel} (Kategori: {$kategori})");
    }

    protected function log($action, $description)
    {
        LogUser::create([
            'user_id'     => Auth::id(),   // user yang sedang login
            'action'      => $action,
            'description' => $description,
            'ip_address'  => request()->ip(),
            'user_agent'  => request()->userAgent(),
        ]);
    }
}
