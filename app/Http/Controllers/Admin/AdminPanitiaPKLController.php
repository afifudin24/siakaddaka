<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\TahunPelajaran;
use App\Models\PanitiaPKL;
use App\Models\Guru;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\File;

class AdminPanitiaPKLController extends Controller
{
    public function index()
    {
        $tahunpelajaranaktif = TahunPelajaran::where('is_active', 1)->first();
       $panitiaPKL = PanitiaPKL::query()
    ->join('guru', 'guru.id', '=', 'panitia_pkl.guru_id')
    ->where('panitia_pkl.tahun_pelajaran_id', $tahunpelajaranaktif->id)
    ->orderBy('guru.nama', 'asc')
    ->select('panitia_pkl.*') // PENTING
    ->with(['guru', 'tahunPelajaran'])
    ->paginate(10);

        $tahunPelajaran = TahunPelajaran::all();
        $guru = Guru::all();
        return view('pages.admin.panitia_pkl.index', compact('panitiaPKL', 'tahunPelajaran', 'guru'));
    }
   public function store(Request $request)
{
    $request->validate([
        'guru_id' => 'required|exists:guru,id',
        'jabatan' => 'required|string|max:100',
    ], [
        'guru_id.required' => 'Guru wajib dipilih',
        'guru_id.exists'   => 'Guru tidak valid',
        'jabatan.required'=> 'Jabatan wajib diisi',
    ]);

    $tahunPelajaranAktif = TahunPelajaran::where('is_active', 1)->first();

    // 🔴 CEK DUPLIKAT
    $exists = PanitiaPKL::where('guru_id', $request->guru_id)
        ->where('tahun_pelajaran_id', $tahunPelajaranAktif->id)
        ->exists();

    if ($exists) {
        return response()->json([
            'message' => 'Guru tersebut sudah terdaftar sebagai Panitia PKL pada tahun pelajaran aktif'
        ], 422);
    }

    PanitiaPKL::create([
        'guru_id' => $request->guru_id,
        'jabatan' => $request->jabatan,
        'tahun_pelajaran_id' => $tahunPelajaranAktif->id,
    ]);

    return response()->json([
        'message' => 'Panitia PKL berhasil ditambahkan'
    ]);
}


public function update(Request $request, $id)
{
    $request->validate([
        'guru_id' => 'required',
        'jabatan' => 'required',
        'status'  => 'required|in:aktif,nonaktif',
    ]);

    $panitia = PanitiaPKL::findOrFail($id);
    $panitia->update([
        'guru_id' => $request->guru_id,
        'jabatan' => $request->jabatan,
        'status'  => $request->status,
    ]);

    return response()->json(['status' => true]);
}
public function destroy($id)
{
    $panitia = PanitiaPKL::findOrFail($id);
    $panitia->delete();

    return response()->json(
        ['status' => true,
        
         'message' => 'Panitia PKL berhasil dihapus']
        
        );
}


}