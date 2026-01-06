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

class AdminKategoriMapelController extends Controller
 {
    public function index() {
        $mapel = Mapel::with( 'kategori' )->get();
        $kategorimapel = KategoriMapel::all();

        return view( 'pages.admin.mapel.index', compact( 'mapel', 'kategorimapel' ) );
    }

 public function store(Request $request)
{
    $validator = Validator::make($request->all(), [
        'nama_kategori_mapel' => 'required|string|max:255',
    ], [
        'nama_kategori_mapel.required' => 'Nama kategori mapel wajib diisi.',
        'nama_kategori_mapel.string'   => 'Nama kategori mapel harus berupa teks.',
        'nama_kategori_mapel.max'      => 'Nama kategori mapel maksimal 255 karakter.',
    ]);

    if ($validator->fails()) {

        // 👉 JIKA AJAX
        if ($request->ajax()) {
            return response()->json([
                'status' => false,
                'errors' => $validator->errors()
            ], 422);
        }

        // 👉 JIKA BUKAN AJAX (fallback)
        return redirect()->back()
            ->withErrors($validator, 'errorkategori')
            ->withInput();
    }

    $kategorimapel = new KategoriMapel;
    $kategorimapel->nama_kategori_mapel = $request->nama_kategori_mapel;
    $kategorimapel->save();

    // 👉 RESPONSE AJAX
    if ($request->ajax()) {
        return response()->json([
            'status' => true,
            'message' => 'Kategori Mapel berhasil ditambahkan.',
            'data' => $kategorimapel
        ]);
    }

    // 👉 NORMAL SUBMIT
    return redirect()->route('admin.mapel.index')
        ->with('successkategori', 'Kategori Mapel berhasil ditambahkan.');
}
   public function update(Request $request, $id)
{
    $validator = Validator::make($request->all(), [
        'nama_kategori_mapel' => 'required|string|max:255',
    ], [
        'nama_kategori_mapel.required' => 'Nama kategori mapel wajib diisi.',
        'nama_kategori_mapel.string'   => 'Nama kategori mapel harus berupa teks.',
        'nama_kategori_mapel.max'      => 'Nama kategori mapel maksimal 255 karakter.',
    ]);

    if ($validator->fails()) {
        return response()->json([
            'status' => false,
            'errors' => $validator->errors()
        ], 422);
    }

    $kategorimapel = KategoriMapel::findOrFail($id);
    $kategorimapel->nama_kategori_mapel = $request->nama_kategori_mapel;
    $kategorimapel->save();

    return response()->json([
        'status' => true,
        'message' => 'Kategori Mapel berhasil diubah.',
        'data' => $kategorimapel
    ]);
}

    public function destroy($id)
{
    $kategorimapel = KategoriMapel::findOrFail($id);
    $kategorimapel->delete();

    return response()->json([
        'status' => true,
        'message' => 'Kategori Mapel berhasil dihapus.',
        'id' => $id
    ]);
}

}