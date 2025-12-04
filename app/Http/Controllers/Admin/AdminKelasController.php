<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Admin;
use App\Models\Guru;
use App\Models\Kelas;

class AdminKelasController extends Controller
{
    // buatkan resource controller
    public function index(){
      $kelas = Kelas::with('waliKelas.guru', 'siswa')->get();

        return view('pages.admin.kelas.index', compact('kelas'));
    }
}