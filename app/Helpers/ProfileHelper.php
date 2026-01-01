<?php

use Illuminate\Support\Facades\Storage;

if (!function_exists('foto_profil')) {

    function foto_profil($user)
    {
        // Ambil foto dari database
      $foto = (!empty($user->user->foto_profil) && $user->user->foto_profil !== 'profile.png')
    ? $user->user->foto_profil
    : null;


     

        // Jika foto ada dan file benar-benar exist di storage
        if ($foto && Storage::disk('public')->exists($foto)) {
            return asset('storage/'.$foto);
        }
        else{
                 if($user->jenis_kelamin){
             // Tentukan avatar default berdasarkan gender
        if ($user->jenis_kelamin === "P") {
            return asset('assets/images/avatar/avatar-p.png');
        } else {
            return asset('assets/images/avatar/avatar-l.png');
        }
        }else{
            return asset('assets/images/avatar/avatar-l.png');
        }
       
        }
       
    }
}
