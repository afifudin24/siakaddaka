<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Log;
use Illuminate\Http\Request;
use App\Imports\SiswaImport;
use App\Exports\SiswaTemplateExport;
use Maatwebsite\Excel\Facades\Excel;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Cache;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Storage;
use App\Models\Admin;
use App\Models\Kelas;
use App\Models\User;
use App\Models\Siswa;
use App\Models\Guru;

class AdminSiswaController extends Controller
 {
    public function index(Request $request)
{
    $kelas = Kelas::orderBy('nama_kelas')->get();

    $query = Siswa::with('kelas');

    // FILTER SEARCH
    if ($request->search) {
        $query->where('nama', 'like', '%' . $request->search . '%');
    }

    // FILTER KELAS
    if ($request->kelas_id) {
        if ($request->kelas_id === 'null') {
            $query->whereNull('kelas_id');
        } elseif ($request->kelas_id !== 'all') {
            $query->where('kelas_id', $request->kelas_id);
        }
    }

    // PAGINATION
    $perPage = $request->paginate ?? 10;

    $siswa = $query->orderBy('nama')
                   ->paginate($perPage)
                   ->appends($request->query());

    return view('pages.admin.siswa.index', compact('siswa', 'kelas'));
}


  public function destroy($id)
{
    $siswa = Siswa::findOrFail($id);
    $user  = User::findOrFail($siswa->user_id);

    // hapus data
    $siswa->delete();
    $user->delete();

    return response()->json([
        'status'  => true,
        'message' => 'Berhasil menghapus data siswa'
    ], 200);
}


    public function massdelete(Request $request)
    {
      
                 if (!$request->selected) {
            return redirect()->back()->with('error', 'Tidak ada data yang dipilih.');
        }
    
        Siswa::whereIn('id', $request->selected)->delete();
    
        return redirect()->back()->with('success', 'Berhasil menghapus data terpilih.');
       
        
      
       
    }
    public function massleave(Request $request) {
        if (!$request->selected) {
            return redirect()->back()->with('error', 'Tidak ada data yang dipilih.');
        }
    
        Siswa::whereIn('id', $request->selected)->update(['kelas_id' => null]);
    
        return redirect()->back()->with('success', 'Berhasil mengeluarkan dari kelas.');
    }

    public function importView() {
        return view('pages.admin.siswa.import');
    }
    public function downloadTemplate()
{
    return Excel::download(new SiswaTemplateExport, 'Template-Siswa.xlsx');
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
public function importExcel(Request $request)
{
    $request->validate([
        'file' => 'required|mimes:xlsx,xls'
    ]);

    $rows = Excel::toArray([], $request->file('file'))[0];
    $header = array_shift($rows); // buang header

    $importKey = (string) Str::uuid();

    Cache::put("import_rows_$importKey", $rows, now()->addMinutes(30));

    return response()->json([
        'import_key' => $importKey,
        'total' => count($rows)
    ]);
}

public function importProgress($key)
{
   
    return response()->json(
        Cache::get("import_$key", [
            'total' => 0,
            'processed' => 0,
            'percent' => 0,
            'done' => true
        ])
    );
}
public function processChunk(Request $request)
{
    $request->validate([
        'import_key' => 'required',
        'offset' => 'required|integer'
    ]);

    $rows = Cache::get("import_rows_{$request->import_key}");

    if (!$rows) {
        return response()->json(['done' => true]);
    }

    $limit = 5; // 🔥 10 row per request
    $slice = array_slice($rows, $request->offset, $limit);

    foreach ($slice as $row) {
        // mapping sesuai kolom excel
        $username = $row[8];
        if (\App\Models\User::where('username', $username)->exists()) {
            continue;
        }
        $user = \App\Models\User::create([
            'nama' => $row[0],
            'email' => $username.'@sekolah.test',
            'username' => $username,
            'role' => 'siswa',
            'password' => Hash::make($row[9]),
            'password_text' => $row[9],
        ]);

        \App\Models\Siswa::create([
            'user_id' => $user->id,
            'nama' => $row[0],
            'nis' => $row[1],
            'nisn' => $row[2],
            'tgl_lahir' => $row[4],
        ]);
    }

    $processed = min($request->offset + $limit, count($rows));

    return response()->json([
        'processed' => $processed,
        'total' => count($rows),
        'done' => $processed >= count($rows)
    ]);
}

public function edit($id){
    $siswa = Siswa::with('user')->findOrFail($id);
    return view('pages.admin.siswa.edit', compact('siswa'));
}



public function update(Request $request, $id)
{
    $validator = Validator::make($request->all(), [
        'nama'          => 'required|string|max:100',
        'username'      => 'required|string|max:50',
        'email'         => 'required|email',
        'no_hp'         => 'nullable|string|max:15',
        'nis'           => 'required|string|max:30',
        'nisn'         => 'required|string|max:30',
        'alamat'        => 'nullable|string',
        'tgl_lahir'     => 'nullable|date',
        'no_hp_ortu'           => 'nullable|string|max:15',
        'jenis_kelamin' => 'required|in:L,P',
    ], [
        'nama.required'          => 'Nama wajib diisi',
        'username.required'      => 'Username wajib diisi',
        'email.required'         => 'Email wajib diisi',
        'email.email'            => 'Format email tidak valid',
        'nis.required'           => 'NIS wajib diisi',
        'nisn.required'          => 'NISN wajib diisi',
        // 'no_hp.numeric'          => 'No HP harus berupa angka',
        'jenis_kelamin.required' => 'Jenis kelamin wajib dipilih',
    ]);

    if ($validator->fails()) {
        return response()->json([
            'status' => false,
            'errors' => $validator->errors()
        ], 422);
    }

    $siswa = Siswa::findOrFail($id);

    // update tabel siswa
    $siswa->update([
        'nama'          => $request->nama,
        'no_hp'         => $request->no_hp,
        'nis'           => $request->nis,
        'nisn'          => $request->nisn,
        'alamat'        => $request->alamat,
        'email'             => $request->email,
        'tgl_lahir'     => $request->tgl_lahir,
        'no_hp_ortu'           => $request->no_hp_ortu,
        'jenis_kelamin' => $request->jenis_kelamin,
    ]);

    // update tabel user
    $siswa->user->update([
        'username' => $request->username,
        'email'    => $request->email,
    ]);

    return response()->json([
        'status'  => true,
        'message' => 'Data guru berhasil diperbarui'
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
        $siswa = Siswa::findOrFail($id);

        $path = $request->file('foto')->store('foto-siswa', 'public');

        // hapus foto lama
        if ($siswa->user->foto_profil &&
            Storage::disk('public')->exists($siswa->user->foto_profil)) {
            Storage::disk('public')->delete($siswa->user->foto_profil);
        }

        $siswa->user->update([
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

    $siswa = Siswa::findOrFail($id);

    $path = $request->file('foto_unggulan')->store('foto-unggulan', 'public');

    // hapus foto lama
    if ($siswa->user->foto_unggulan &&
        Storage::disk('public')->exists($siswa->user->foto_unggulan)) {
        Storage::disk('public')->delete($siswa->user->foto_unggulan);
    }

    $siswa->user->update([
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
    $siswa = Siswa::findOrFail($id);
    $user = User::findOrFail($siswa->user_id);

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
    $siswa = Siswa::findOrFail($id);
    $user = $siswa->user;

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