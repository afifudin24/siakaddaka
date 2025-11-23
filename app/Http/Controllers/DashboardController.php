<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class DashboardController extends Controller
{
    public function index()
    {
        $user = Auth::user();
     
        switch ($user->role) {
            case 'admin':
              
              return redirect('/admin/dashboard');

            case 'guru':
               return redirect('/guru/dashboard');

            case 'siswa':
              return  redirect('/siswa/dashboard');

            case 'staff':
               return redirect('/staff/dashboard');

            default:
                abort(403, 'Akses tidak diizinkan');
        }
    }

 
}
