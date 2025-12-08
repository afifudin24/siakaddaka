<?php

use Illuminate\Support\Facades\Storage;

if (!function_exists('foto_profil')) {

    function foto_profil($guru)
    {
        // Ambil foto dari database
        $foto = $guru->user->foto_profil || $guru->user->foto !== 'profile.png' ?? null;

        // Jika foto ada dan file benar-benar exist di storage
        if ($foto && Storage::disk('public')->exists($foto)) {
            return asset('storage/'.$foto);
        }

        // Tentukan avatar default berdasarkan gender
        if ($guru->jenis_kelamin === "P") {
            return asset('assets/images/avatar/avatar-p.png');
        } else {
            return asset('assets/images/avatar/avatar-l.png');
        }
    }
}
