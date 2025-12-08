<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Admin;
use App\Models\Guru;

class AdminGuruController extends Controller
{
  public function index(Request $request)
{
    $perPage = $request->query('paginate', 10);
    $search  = $request->query('search');

  $guru = Guru::with([
        'user',
        'datamengajar.mapel',   // Ambil nama mapel
        'datamengajar.kelas'    // Ambil nama kelas
    ])
    ->when($search, fn($q) =>
        $q->where('nama', 'like', "%$search%")
    )
    ->paginate($perPage)
    ->appends($request->query());
    
    return view('pages.admin.guru.index', compact('guru'));
}


}