<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class WakaKurikulumMiddleware
{
    public function handle(Request $request, Closure $next)
    {
        $user = Auth::user();

        // pastikan role guru
        if (!$user || $user->role !== 'guru') {
            abort(403, 'Hanya guru yang bisa mengakses.');
        }

        // cek apakah guru punya waka kurikulum
        if (!$user->guru || !$user->guru->wakaKurikulum) {
            abort(403, 'Anda bukan Waka Kurikulum.');
        }

        return $next($request);
    }
}
