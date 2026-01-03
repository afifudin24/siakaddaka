<?php

namespace App\Http\Controllers\Staff;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Admin;
use App\Models\Guru;
use App\Models\User;
use App\Models\JenisTagihan;
use Illuminate\Support\Facades\Hash;
use App\Models\Staff;
use Illuminate\Support\Facades\Storage;

use Illuminate\Support\Facades\Validator;

class StaffProfilController extends Controller
{
    public function index()
    {
        $staff = Staff::where('user_id', auth()->user()->id)->first();
        return view('pages.staff.profil.index', compact('staff'));
    }
    
public function update(Request $request)
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

    $staff = Staff::findOrFail(auth()->user()->staff->id);

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


public function updateFotoProfil(Request $request)
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
        $staff = Staff::findOrFail(auth()->user()->staff->id);

        $path = $request->file('foto')->store('foto-staff', 'public');

        // hapus foto lama
        if ($staff->user->foto_profil &&
            Storage::disk('public')->exists($staff->user->foto_profil)) {
            Storage::disk('public')->delete($staff->user->foto_profil);
        }

        $staff->user->update([
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


public function updateFotoUnggulan(Request $request)
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

    $staff = Staff::findOrFail(auth()->user()->staff->id);

    $path = $request->file('foto_unggulan')->store('foto-unggulan', 'public');

    // hapus foto lama
    if ($staff->user->foto_unggulan &&
        Storage::disk('public')->exists($staff->user->foto_unggulan)) {
        Storage::disk('public')->delete($staff->user->foto_unggulan);
    }

    $staff->user->update([
        'foto_unggulan' => $path
    ]);

    return response()->json([
        'status' => true,
        'message' => 'Foto unggulan berhasil diperbarui'
    ]);

}

public function updatePassword(Request $request)
{
    $request->validate([
        'password' => 'required|string|min:6'
    ], [
        'password.required' => 'Password baru wajib diisi',
        'password.min' => 'Password minimal 6 karakter'
    ]);
    $staff = Staff::findOrFail(auth()->user()->staff->id);
    $user = User::findOrFail($staff->user_id);

    $user->update([
        'password' => Hash::make($request->password),
        'password_text' => $request->password // sesuai kondisi kamu
    ]);

    return response()->json([
        'status' => true,
        'message' => 'Password berhasil diperbarui'
    ]);
}
public function hapusFoto()
{
    $staff = Staff::findOrFail(auth()->user()->staff->id);
    $user = $staff->user;

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

}