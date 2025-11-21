<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class WakaKesiswaanMiddleware
{
    public function handle(Request $request, Closure $next)
    {
        $user = Auth::user();

        // pastikan role guru
        if (!$user || $user->role !== 'guru') {
            abort(403, 'Hanya guru yang bisa mengakses.');
        }

        // cek apakah guru punya waka kesiswaan
        if (!$user->guru || !$user->guru->wakaKesiswaan) {
            abort(403, 'Anda bukan Waka Kesiswaan.');
        }

        return $next($request);
    }
}
