<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Admin;
use App\Models\Guru;
use App\Models\Kelas;
use App\Models\Siswa;
use App\Models\Jurusan;
use App\Models\WaliKelas;
use App\Models\KetuaKelas;
use App\Models\Mapel;
use App\Models\KategoriMapel;

class AdminMapelController extends Controller
{
    public function index(Request $request)
{
    $kategorimapel = KategoriMapel::withCount('mapel')->get();
    // kalau request kategori all tampilkan semua
    if ($request->kategori == 'all') {
        $mapel = Mapel::orderBy('created_at', 'desc')->get();
        return view('pages.admin.mapel.index', compact('kategorimapel', 'mapel'));
    }

    $mapel = Mapel::when($request->kategori, function ($q) use ($request) {
        $q->where('kategori_mapel_id', $request->kategori);
    })->orderBy('created_at', 'desc')->get();

    return view('pages.admin.mapel.index', compact('kategorimapel', 'mapel'));
}


 public function store(Request $request)
{
    $validator = Validator::make($request->all(), [
        'kategori_mapel_id' => 'required',
        'nama_mapel' => 'required|string|max:255',
        'kode_mapel' => 'required|string|max:255',
    ]);

    if ($validator->fails()) {
        return response()->json([
            'status' => false,
            'errors' => $validator->errors()
        ], 422);
    }

    $mapel = Mapel::create([
        'kategori_mapel_id' => $request->kategori_mapel_id,
        'nama_mapel' => $request->nama_mapel,
        'kode_mapel' => $request->kode_mapel,
    ]);

    // hitung ulang
    $kategori = KategoriMapel::withCount('mapel')
        ->find($request->kategori_mapel_id);

    $totalMapel = Mapel::count();

    return response()->json([
        'status' => true,
        'message' => 'Mapel berhasil ditambahkan',
        'mapel' => $mapel,
        'kategori_id' => $kategori->id,
        'mapel_count_kategori' => $kategori->mapel_count,
        'mapel_count_total' => $totalMapel
    ]);
}


   public function update(Request $request, $id)
{
    $validator = Validator::make($request->all(), [
        'kategori_mapel_id' => 'required',
        'nama_mapel' => 'required|string|max:255',
        'kode_mapel' => 'required|string|max:255',
    ], [
        'kategori_mapel_id.required' => 'Kategori mapel wajib diisi.',
        'nama_mapel.required' => 'Nama mapel wajib diisi.',
        'nama_mapel.string' => 'Nama mapel harus berupa teks.',
        'nama_mapel.max' => 'Nama mapel maksimal 255 karakter.',
        'kode_mapel.required' => 'Kode mapel wajib diisi.',
        'kode_mapel.string' => 'Kode mapel harus berupa teks.',
    ]);

    // ❌ kalau validasi gagal → return JSON 422
    if ($validator->fails()) {
        return response()->json([
            'status' => false,
            'message' => 'Validasi gagal',
            'errors' => $validator->errors()
        ], 422);
    }

    $mapel = Mapel::findOrFail($id);
    $mapel->kategori_mapel_id = $request->kategori_mapel_id;
    $mapel->nama_mapel = $request->nama_mapel;
    $mapel->kode_mapel = $request->kode_mapel;
    $mapel->save();

    // ✅ RESPONSE JSON
    return response()->json([
        'status' => true,
        'message' => 'Mapel berhasil diubah',
        'data' => $mapel
    ]);
}
public function destroy($id)
{
    $mapel = Mapel::findOrFail($id);
    $mapel->delete();

    return response()->json([
        'status' => true,
        'message' => 'Mapel berhasil dihapus'
    ]);
}
}