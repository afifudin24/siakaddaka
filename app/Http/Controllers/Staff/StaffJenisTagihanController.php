<?php

namespace App\Http\Controllers\Staff;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Admin;
use App\Models\Guru;
use App\Models\JenisTagihan;

use Illuminate\Support\Facades\Validator;

class StaffJenisTagihanController extends Controller
{
    public function index()
    {
        $jenistagihan = JenisTagihan::all();
        return view('pages.staff.jenistagihan.index', compact('jenistagihan'));
    }
    public function create()
    {
        //
    }

  public function store(Request $request)
{
    $validator = Validator::make($request->all(), [
        'nama_jenis' => 'required|string|max:255|unique:jenis_tagihan,nama_jenis',
        'deskripsi'  => 'nullable|string',
    ], [
        'nama_jenis.required' => 'Nama jenis tagihan wajib diisi.',
        'nama_jenis.unique'  => 'Nama jenis tagihan sudah ada.',
    ]);

    // ❌ Jika validasi gagal
    if ($validator->fails()) {
        return response()->json([
            'status'  => false,
            'message' => 'Validasi gagal',
            'errors'  => $validator->errors()
        ], 422);
    }

    // ✅ Simpan data
    $jenisTagihan = JenisTagihan::create([
        'nama_jenis' => $request->nama_jenis,
        'deskripsi'  => $request->deskripsi,
        'is_active'  => true, // default true
    ]);

    return response()->json([
        'status'  => true,
        'message' => 'Jenis tagihan berhasil ditambahkan',
        'data'    => $jenisTagihan
    ], 201);
}

    public function show($id)
    {
        //
    }

    public function edit($id)
    {
        //
    }

   public function update(Request $request, $id)
{
    $validator = Validator::make($request->all(), [
        'nama_jenis' => 'required|string|max:255|unique:jenis_tagihan,nama_jenis,' . $id,
        'deskripsi'  => 'nullable|string',
    ], [
        'nama_jenis.required' => 'Nama jenis tagihan wajib diisi.',
        'nama_jenis.unique'   => 'Nama jenis tagihan sudah ada.',
    ]);

    if ($validator->fails()) {
        return response()->json([
            'status'  => false,
            'message' => 'Validasi gagal',
            'errors'  => $validator->errors()
        ], 422);
    }

    $jenisTagihan = JenisTagihan::findOrFail($id);
    $jenisTagihan->update([
        'nama_jenis' => $request->nama_jenis,
        'deskripsi'  => $request->deskripsi,
    ]);

    return response()->json([
        'status'  => true,
        'message' => 'Jenis tagihan berhasil diperbarui'
    ]);
}


  public function destroy($id)
{
    $jenisTagihan = JenisTagihan::findOrFail($id);

    // optional: cek relasi (misal masih dipakai tagihan)
    if ($jenisTagihan->tagihan()->exists()) {
        return response()->json([
            'status'  => false,
            'message' => 'Jenis tagihan tidak bisa dihapus karena masih digunakan'
        ], 409);
    }

    $jenisTagihan->delete();

    return response()->json([
        'status'  => true,
        'message' => 'Jenis tagihan berhasil dihapus'
    ]);
}

    public function toggleStatus($id)
{
    $jenisTagihan = JenisTagihan::findOrFail($id);

    $jenisTagihan->update([
        'is_active' => !$jenisTagihan->is_active
    ]);

    return response()->json([
        'status'  => true,
        'message' => $jenisTagihan->is_active
            ? 'Jenis tagihan berhasil diaktifkan'
            : 'Jenis tagihan berhasil dinonaktifkan',
        'data'    => [
            'is_active' => $jenisTagihan->is_active
        ]
    ]);
}

}
