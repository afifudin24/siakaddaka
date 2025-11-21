<?php
namespace App\Observers;

use App\Models\User;
use App\Models\LogUser;
use Illuminate\Support\Facades\Auth;

class UserObserver
{
    public function created(User $user)
    {
        $this->log('created', $user, 'User baru dibuat');
    }

    public function updated(User $user)
    {
        $this->log('updated', $user, 'User diperbarui');
    }

    public function deleted(User $user)
    {
        $this->log('deleted', $user, 'User dihapus');
    }

    protected function log($action, User $user, $description)
    {
        LogUser::create([
            'user_id' => Auth::id() ?? $user->id,
            'action' => $action,
            'description' => $description,
            'ip_address' => request()->ip(),
            'user_agent' => request()->userAgent(),
        ]);
    }
}
