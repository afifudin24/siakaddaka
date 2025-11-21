<?php
namespace App\Listeners;

use Illuminate\Auth\Events\Login;
use Illuminate\Auth\Events\Logout;
use App\Models\LogUser;

class LogUserActivity
{
    public function handle($event)
    {
        $action = $event instanceof Login ? 'login' : 'logout';
        $description = $event instanceof Login ? 'User login ke sistem' : 'User logout dari sistem';

        LogUser::create([
            'user_id' => $event->user->id,
            'action' => $action,
            'description' => $description,
            'ip_address' => request()->ip(),
            'user_agent' => request()->userAgent(),
        ]);
    }
}
