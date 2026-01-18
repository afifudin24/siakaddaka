<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Admin;
use App\Models\Guru;
use App\Models\Siswa;
use App\Models\Dudi;
use App\Models\Kelas;
use App\Models\PesertaPKL;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\File;

class AdminPesertaPKLController extends Controller
{
public function index(Request $request)
{
    $dudiId  = $request->dudi_id;
    $search  = $request->search;
    $perPage = $request->paginate ?? 20;
    $status  = $request->status;

    $dudi = Dudi::orderBy('nama_dudi', 'asc')->get();

    $pesertaPKL = PesertaPKL::query()
        ->join('siswa', 'siswa.id', '=', 'peserta_pkl.siswa_id')
        ->with(['siswa.kelas', 'dudi'])

        // Filter berdasarkan dudi_id, tapi skip jika all atau null
        ->when($dudiId && $dudiId !== 'all', function ($query) use ($dudiId) {
            $query->where('peserta_pkl.dudi_id', $dudiId);
        })

        // Filter berdasarkan nama siswa
        ->when($search, function ($query) use ($search) {
            $query->where('siswa.nama', 'like', "%{$search}%");
        })

        // Filter berdasarkan status, tapi skip jika all atau null
        ->when($status && $status !== 'all', function ($query) use ($status) {
            $query->where('peserta_pkl.status', $status);
        })

        ->orderBy('siswa.nama', 'asc') // ✅ ORDER BY RELASI
        ->select('peserta_pkl.*')      // 🔥 wajib agar model tetap PesertaPKL
        ->paginate($perPage)
        ->withQueryString();

    return view('pages.admin.peserta_pkl.index', compact('pesertaPKL', 'dudi'));
}





public function add(Request $request)
{
    $kelasId  = $request->kelas_id;
    $search   = $request->search;
    $perPage  = $request->paginate ?? 20;
    // Ambil siswa yang sudah jadi peserta PKL
    $siswaSudahPeserta = PesertaPKL::pluck('siswa_id');

    // Data kelas untuk filter
    $kelas = Kelas::orderBy('nama_kelas', 'asc')->get();

    // Query siswa
    $siswa = Siswa::whereNotIn('id', $siswaSudahPeserta)
        ->when($kelasId, function ($query) use ($kelasId) {
            $query->where('kelas_id', $kelasId);
        })
        ->when($search, function ($query) use ($search) {
            $query->where(function ($q) use ($search) {
                $q->where('nama', 'like', "%{$search}%")
                  ->orWhere('nis', 'like', "%{$search}%")
                  ->orWhere('nisn', 'like', "%{$search}%");
            });
        })
        ->with('kelas')
        ->orderBy('nama', 'asc')
        ->paginate($perPage)
        ->withQueryString(); // 🔥 penting agar filter tidak hilang

    return view('pages.admin.peserta_pkl.create', compact('siswa', 'kelas'));
}
public function update(Request $request, $id)
{
    $request->validate([
        'dudi_id' => 'nullable|exists:dudi,id',
        'status' => 'required|in:aktif,selesai,nonaktif',
    ]);

    $peserta = PesertaPKL::findOrFail($id);
    $peserta->dudi_id = $request->dudi_id;
    $peserta->status = $request->status;
    $peserta->save();

    return response()->json([
        'message' => 'Data peserta PKL berhasil diupdate'
    ]);
}


public function storeSingle(Request $request)
{
    $request->validate([
        'siswa_id' => 'required|exists:siswa,id'
    ]);

    $tahunPelajaranAktif = DB::table('tahun_pelajaran')
        ->where('is_active', true)
        ->first();

    // Cegah double insert
    if (PesertaPKL::where('siswa_id', $request->siswa_id)->exists()) {
        return response()->json([
            'message' => 'Siswa sudah terdaftar sebagai peserta PKL'
        ], 422);
    }

    PesertaPKL::create([
        'siswa_id' => $request->siswa_id,
        'status'   => 'aktif',
        'tahun_pelajaran_id' => $tahunPelajaranAktif->id,
    ]);

    return response()->json([
        'message' => 'Peserta PKL berhasil ditambahkan'
    ]);
}
public function storeMassal(Request $request)
{
    $request->validate([
        'siswa_ids'   => 'required|array',
        'siswa_ids.*' => 'exists:siswa,id'
    ]);

    $insert = [];
    $tahunPelajaranAktif = DB::table('tahun_pelajaran')
        ->where('is_active', true)
        ->first();  
    foreach ($request->siswa_ids as $siswaId) {
        if (!PesertaPKL::where('siswa_id', $siswaId)->exists()) {
            $insert[] = [
                'siswa_id' => $siswaId,
                'status'   => 'aktif',
                'tahun_pelajaran_id' => $tahunPelajaranAktif->id,
                'created_at' => now(),
                'updated_at' => now()
            ];
        }
    }

    if (count($insert) > 0) {
        PesertaPKL::insert($insert);
    }

    return response()->json([
        'message' => count($insert).' peserta PKL berhasil ditambahkan'
    ]);
}

public function destroy($id)
{
    $peserta = PesertaPKL::findOrFail($id);

    try {
        $peserta->delete();

        return response()->json([
            'status' => true,
            'message' => 'Peserta PKL berhasil dihapus'
        ]);
    } catch (\Exception $e) {
        return response()->json([
            'status' => false,
            'message' => 'Gagal menghapus peserta PKL: ' . $e->getMessage()
        ], 500);
    }
}



}