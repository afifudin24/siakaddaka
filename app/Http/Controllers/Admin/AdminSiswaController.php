<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Log;
use Illuminate\Http\Request;
use App\Imports\SiswaImport;
use App\Exports\SiswaTemplateExport;
use Maatwebsite\Excel\Facades\Excel;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Cache;
use App\Models\Admin;
use App\Models\Kelas;
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


    public function destroy( $id ) {
        $siswa = Siswa::findOrFail( $id );
        $siswa->delete();
        return redirect()->back()->with('success', 'Berhasil menghapus data.');
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

    $limit = 10; // 🔥 10 row per request
    $slice = array_slice($rows, $request->offset, $limit);

    foreach ($slice as $row) {
        // mapping sesuai kolom excel
        $username = $row[3];

        if (\App\Models\User::where('username', $username)->exists()) {
            continue;
        }

        $user = \App\Models\User::create([
            'nama' => $row[0],
            'email' => $username.'@sekolah.test',
            'username' => $username,
            'role' => 'siswa',
            'password' => \Hash::make($row[4]),
            'password_text' => $row[4],
        ]);

        \App\Models\Siswa::create([
            'user_id' => $user->id,
            'nama' => $row[0],
            'nis' => $row[1],
            'nisn' => $row[2],
            'tgl_lahir' => $row[5],
        ]);
    }

    $processed = min($request->offset + $limit, count($rows));

    return response()->json([
        'processed' => $processed,
        'total' => count($rows),
        'done' => $processed >= count($rows)
    ]);
}


}