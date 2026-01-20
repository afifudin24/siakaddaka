<?php
namespace App\Http\Middleware;
use Closure;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
class PembimbingPKLMiddleware
{
    public function handle(Request $request, Closure $next)
    {
        $user = Auth::user();
        // pastikan role guru
        if (!$user || $user->role !== 'guru') {
            abort(403, 'Hanya guru yang bisa mengakses.');
        }
        // cek apakah guru punya wali kelas
        if (!$user->guru || !$user->guru->pembimbingPKL) {
            abort(403, 'Anda bukan pembimbing PKL.');
        }
        return $next($request);
    }
}