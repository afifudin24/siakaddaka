<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Imports\SiswaImport;
use App\Exports\SiswaTemplateExport;
use Maatwebsite\Excel\Facades\Excel;
// Pake Hash
use Illuminate\Support\Facades\Hash;

use App\Models\Admin;
use App\Models\Staff;
use App\Models\User;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Storage;
use Illuminate\Validation\ValidationException;


class AdminStaffController extends Controller
 {
public function index(Request $request)
{
    // 🔢 paginate default 10 (bisa ?per_page=20)
    $perPage = $request->get('per_page', 10);

    $staff = Staff::query();

    // 🔎 SEARCH
    if ($request->filled('search')) {
        $staff->where(function ($q) use ($request) {
            $q->where('nama', 'like', '%' . $request->search . '%')
              ->orWhere('email', 'like', '%' . $request->search . '%');
        });
    }

    // 🏷️ FILTER JENIS
    if ($request->filled('jabatan') && $request->jabatan !== 'all') {
        $staff->where('jabatan', $request->jabatan);
    }

    // 📄 PAGINATE (INILAH QUERY PAGINATE-NYA)
    $staff = $staff->orderBy('nama')
                   ->paginate($perPage)
                   ->withQueryString();

    return view('pages.admin.staff.index', compact('staff'));
}

public function store(Request $request)
{
  $validated =  $request->validate([
        'nama'     => 'required|string|max:100',
        'email'    => 'required|email|unique:staff,email',
        'jabatan'  => 'required|in:administrasi,keuangan',
        'username' => 'required|string|max:50|unique:users,username',
        'password' => 'required|min:6',
        'jenis_kelamin' => 'required|in:L,P'
    ]);
   // Buat user
        $user = User::create([
            'nama'          => $validated['nama'],
            'email'         => $validated['email'],
            'username'      => $validated['username'],
            'role'          => 'staff',
            'password'      => Hash::make($validated['password']),
            'password_text' => $validated['password']
        ]);

        // Buat Staff
        $Staff = Staff::create([
            'user_id' => $user->id,
            'nama'    => $validated['nama'],
            'email'   => $validated['email'],
            'jabatan' => $validated['jabatan'],
            'jenis_kelamin' => $validated['jenis_kelamin']
        ]);
    return response()->json([
        'message' => 'Staff berhasil ditambahkan'
    ]);
}

public function edit($id)
{
   
    $staff = Staff::with('user')->findOrFail($id);
    return view('pages.admin.staff.edit', compact('staff'));
}

public function update(Request $request, $id)
{
    $validator = Validator::make($request->all(), [
        'nama'          => 'required|string|max:100',
        'username'      => 'required|string|max:50',
        'email'         => 'required|email',
        'no_hp'         => 'required',
        
        'alamat'        => 'nullable|string',
        'tanggal_lahir'     => 'nullable|date',
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

    $staff = Staff::findOrFail($id);

    // update tabel staff
    $staff->update([
        'nama'          => $request->nama,
        'no_hp'         => $request->no_hp,
        
        'alamat'        => $request->alamat,
        'email'             => $request->email,
        'tanggal_lahir'     => $request->tanggal_lahir,
        'bio'           => $request->bio,
        'jenis_kelamin' => $request->jenis_kelamin,
    ]);

    // update tabel user
    $staff->user->update([
        'username' => $request->username,
        'email'    => $request->email,
    ]);

    return response()->json([
        'status'  => true,
        'message' => 'Profil berhasil diperbarui'
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
        $Staff = Staff::findOrFail($id);

        $path = $request->file('foto')->store('foto-staff', 'public');

        // hapus foto lama
        if ($Staff->user->foto_profil &&
            Storage::disk('public')->exists($Staff->user->foto_profil)) {
            Storage::disk('public')->delete($Staff->user->foto_profil);
        }

        $Staff->user->update([
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

    $Staff = Staff::findOrFail($id);

    $path = $request->file('foto_unggulan')->store('foto-unggulan', 'public');

    // hapus foto lama
    if ($Staff->user->foto_unggulan &&
        Storage::disk('public')->exists($Staff->user->foto_unggulan)) {
        Storage::disk('public')->delete($Staff->user->foto_unggulan);
    }

    $Staff->user->update([
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
    $Staff = Staff::findOrFail($id);
    $user = User::findOrFail($Staff->user_id);

    $user->update([
        'password' => Hash::make($request->password),
        'password_text' => $request->password // sesuai kondisi kamu
    ]);

    return response()->json([
        'status' => true,
        'message' => 'Password berhasil diperbarui'
    ]);
}
public function hapusFoto($id)
{
    $Staff = Staff::findOrFail($id);
    $user = $Staff->user;

    // hapus foto profil
    if ($user->foto_profil && Storage::disk('public')->exists($user->foto_profil)) {
        Storage::disk('public')->delete($user->foto_profil);
    }

    // hapus foto unggulan (jika ada)
    if ($user->foto_unggulan && Storage::disk('public')->exists($user->foto_unggulan)) {
        Storage::disk('public')->delete($user->foto_unggulan);
    }

    $user->update([
        'foto_profil' => null,
        'foto_unggulan' => null
    ]);

    return response()->json([
        'status' => true,
        'message' => 'Foto profil dan foto unggulan berhasil dihapus'
    ]);
}

public function destroy($id)
{
    $Staff = Staff::findOrFail($id);
    $user = $Staff->user;

    // hapus foto profil
    if ($user->foto_profil && Storage::disk('public')->exists($user->foto_profil)) {
        Storage::disk('public')->delete($user->foto_profil);
    }

    // hapus foto unggulan (jika ada)
    if ($user->foto_unggulan && Storage::disk('public')->exists($user->foto_unggulan)) {
        Storage::disk('public')->delete($user->foto_unggulan);
    }

    $user->delete();
    $Staff->delete();

    return response()->json([
        'status' => true,
        'message' => 'Staff berhasil dihapus'
    ]);
}
 }