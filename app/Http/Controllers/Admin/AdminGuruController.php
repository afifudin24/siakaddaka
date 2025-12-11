<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Admin;
use App\Models\User;
use App\Models\Guru;
use Illuminate\Support\Facades\Hash;

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

public function create()
{
    return view('pages.admin.guru.create');

}
 public function store(Request $request)
    {
        // Validasi input
        $validated = $request->validate([
            'nama'     => 'required|string|max:255',
            'email'    => 'required|email|unique:users,email',
            'username' => 'required|string|max:50|unique:users,username',
            'password' => 'required|string|min:6',
        ], [
            'nama.required'     => 'Nama wajib diisi.',
            'nama.string'       => 'Nama harus berupa teks.',
            'nama.max'          => 'Nama maksimal 255 karakter.',
            'email.required'    => 'Email wajib diisi.',
            'email.email'       => 'Format email tidak valid.',
            'email.unique'      => 'Email sudah digunakan.',
            'username.required' => 'Username wajib diisi.',
            'username.unique'   => 'Username sudah digunakan.',
            'username.max'      => 'Username maksimal 50 karakter.',
            'password.required' => 'Password wajib diisi.',
            'password.min'      => 'Password minimal 6 karakter.'
        ]);

        // Buat user
        $user = User::create([
            'nama'          => $validated['nama'],
            'email'         => $validated['email'],
            'username'      => $validated['username'],
            'role'          => 'guru',
            'password'      => Hash::make($validated['password']),
            'password_text' => $validated['password']
        ]);

        // Buat guru
        $guru = Guru::create([
            'user_id' => $user->id,
            'nama'    => $validated['nama'],
            'email'   => $validated['email'],
        ]);

        return redirect()->route('admin.guru.index')->with('success', 'Data guru berhasil disimpan!');
    }
}