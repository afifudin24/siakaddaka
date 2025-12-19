<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Admin;
use App\Models\User;
use App\Models\Guru;
use Illuminate\Support\Facades\Hash;
use App\Exports\GuruTemplateExport;
use App\Imports\GuruImport;
use Maatwebsite\Excel\Facades\Excel;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Storage;
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

public function update(Request $request, $id)
{
    $validator = Validator::make($request->all(), [
        'nama'          => 'required|string|max:100',
        'username'      => 'required|string|max:50',
        'email'         => 'required|email',
        'no_hp'         => 'required',
        'nip'           => 'nullable|string|max:30',
        'nuptk'         => 'nullable|string|max:30',
        'alamat'        => 'nullable|string',
        'tgl_lahir'     => 'nullable|date',
        'bio'           => 'nullable|string',
        'jenis_kelamin' => 'required|in:L,P',
    ], [
        'nama.required'          => 'Nama wajib diisi',
        'username.required'      => 'Username wajib diisi',
        'email.required'         => 'Email wajib diisi',
        'email.email'            => 'Format email tidak valid',
        'no_hp.required'         => 'No HP wajib diisi',
        // 'no_hp.numeric'          => 'No HP harus berupa angka',
        'jenis_kelamin.required' => 'Jenis kelamin wajib dipilih',
    ]);

    if ($validator->fails()) {
        return response()->json([
            'status' => false,
            'errors' => $validator->errors()
        ], 422);
    }

    $guru = Guru::findOrFail($id);

    // update tabel guru
    $guru->update([
        'nama'          => $request->nama,
        'no_hp'         => $request->no_hp,
        'nip'           => $request->nip,
        'nuptk'         => $request->nuptk,
        'alamat'        => $request->alamat,
        'email'             => $request->email,
        'tgl_lahir'     => $request->tgl_lahir,
        'bio'           => $request->bio,
        'jenis_kelamin' => $request->jenis_kelamin,
    ]);

    // update tabel user
    $guru->user->update([
        'username' => $request->username,
        'email'    => $request->email,
    ]);

    return response()->json([
        'status'  => true,
        'message' => 'Data guru berhasil diperbarui'
    ]);
}
public function edit($id){
    $guru = Guru::with('user')->findOrFail($id);
    return view('pages.admin.guru.edit', compact('guru'));
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
    public function importView() {
        return view('pages.admin.guru.import');
    }
    public function previewExcel(Request $request)
{
    $request->validate([
        'file' => 'required|mimes:xls,xlsx'
    ]);

    $data = Excel::toArray([], $request->file('file'));

    // Ambil sheet pertama
    $rows = $data[0];

    return response()->json([
        'status' => 'success',
        'rows' => $rows
    ]);
}

      public function downloadTemplate()
{
    return Excel::download(new GuruTemplateExport, 'Template-Guru.xlsx');
}
   public function importGuru(Request $request)
{
    try {
        $request->validate([
            'file' => 'required|mimes:xlsx,xls'
        ]);

        Excel::import(new GuruImport, $request->file('file'));

        return response()->json([
            'status' => 'success',
            'message' => 'Data guru berhasil diimport'
        ]);

    } catch (ValidationException $e) {

        return response()->json([
            'status' => 'validation_error',
            'errors' => $e->errors()
        ], 422);

    } catch (\Throwable $e) {

        return response()->json([
            'status' => 'error',
            'message' => $e->getMessage()
        ], 500);
    }
}

public function hapus(Request $request)
{
    $guru = Guru::findOrFail($request->id);

    // hapus user ikut cascade (karena FK)
    $guru->user()->delete();

    return response()->json([
        'status' => true,
        'message' => 'Data guru berhasil dihapus'
    ]);
}

public function updateFotoProfil(Request $request, $id)
{
    $validator = Validator::make($request->all(), [
        'foto' => 'required|image|mimes:jpg,jpeg,png|max:2048'
    ], [
        'foto.required' => 'Foto wajib diunggah',
        'foto.image'    => 'File harus berupa gambar',
        'foto.mimes'    => 'Format foto harus JPG atau PNG',
        'foto.max'      => 'Ukuran foto maksimal 2MB'
    ]);

    // ❌ VALIDASI GAGAL
    if ($validator->fails()) {
        return response()->json([
            'status' => false,
            'message' => 'Validasi gagal',
            'errors' => $validator->errors()
        ], 422);
    }

    try {
        $guru = Guru::findOrFail($id);

        $path = $request->file('foto')->store('foto-guru', 'public');

        // hapus foto lama
        if ($guru->user->foto_profil &&
            Storage::disk('public')->exists($guru->user->foto_profil)) {
            Storage::disk('public')->delete($guru->user->foto_profil);
        }

        $guru->user->update([
            'foto_profil' => $path
        ]);

        return response()->json([
            'status' => true,
            'message' => 'Foto profil berhasil diperbarui'
        ]);

    } catch (\Exception $e) {

        return response()->json([
            'status' => false,
            'message' => 'Gagal memperbarui foto profil',
            'error' => $e->getMessage() // opsional (hapus di production)
        ], 500);
    }
}

public function updateFotoUnggulan(Request $request, $id)
{
    $validator = Validator::make($request->all(), [
        'foto_unggulan' => 'required|image|mimes:jpg,jpeg,png|max:2048'
    ], [
        'foto_unggulan.required' => 'Foto unggulan wajib diunggah',
        'foto_unggulan.image' => 'File harus berupa gambar',
        'foto_unggulan.max' => 'Ukuran maksimal 2MB'
    ]);

    if ($validator->fails()) {
        return response()->json([
            'status' => false,
            'errors' => $validator->errors()
        ], 422);
    }

    $guru = Guru::findOrFail($id);

    $path = $request->file('foto_unggulan')->store('foto-unggulan', 'public');

    // hapus foto lama
    if ($guru->user->foto_unggulan &&
        Storage::disk('public')->exists($guru->user->foto_unggulan)) {
        Storage::disk('public')->delete($guru->user->foto_unggulan);
    }

    $guru->user->update([
        'foto_unggulan' => $path
    ]);

    return response()->json([
        'status' => true,
        'message' => 'Foto unggulan berhasil diperbarui'
    ]);

}

public function updatePassword(Request $request, $id)
{
    $request->validate([
        'password' => 'required|string|min:6'
    ], [
        'password.required' => 'Password baru wajib diisi',
        'password.min' => 'Password minimal 6 karakter'
    ]);
    $guru = Guru::findOrFail($id);
    $user = User::findOrFail($guru->user_id);

    $user->update([
        'password' => Hash::make($request->password),
        'password_text' => $request->password // sesuai kondisi kamu
    ]);

    return response()->json([
        'status' => true,
        'message' => 'Password berhasil diperbarui'
    ]);
}

}