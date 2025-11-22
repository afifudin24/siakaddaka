<?php

namespace App\Observers;

use App\Models\Materi;
use App\Models\LogUser;
use Illuminate\Support\Facades\Auth;

class MateriObserver
{
    public function created(Materi $materi)
    {
        $tipe = $materi->tipe ?? 'Tidak ada tipe';
        $this->log('created', "Materi dibuat: {$materi->judul} (Tipe: {$tipe})");
    }

    public function updated(Materi $materi)
    {
        $tipe = $materi->tipe ?? 'Tidak ada tipe';
        $this->log('updated', "Materi diperbarui: {$materi->judul} (Tipe: {$tipe})");
    }

    public function deleted(Materi $materi)
    {
        $tipe = $materi->tipe ?? 'Tidak ada tipe';
        $this->log('deleted', "Materi dihapus: {$materi->judul} (Tipe: {$tipe})");
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
