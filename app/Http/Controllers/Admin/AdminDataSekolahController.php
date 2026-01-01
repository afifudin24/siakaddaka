<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Admin;
use App\Models\Guru;
use App\Models\DataSekolah;
use Illuminate\Support\Facades\Storage;

class AdminDataSekolahController extends Controller
{

    public function index(){
        $dataSekolah = DataSekolah::first();
        return view('pages.admin.datasekolah.index', compact('dataSekolah'));
    }
public function updateImage(Request $request)
{
    $request->validate([
        'field' => 'required|string',
        'image' => 'required|image|max:2048',
    ]);

    $field = $request->field;

    // Ambil data lama (asumsi hanya 1 row data sekolah)
    $sekolah = DataSekolah::firstOrFail();
    $oldImage = $sekolah->{$field};

    // Upload file baru
    $path = $request->file('image')->store('sekolah', 'public');

    // Update database
    $sekolah->update([
        $field => $path
    ]);

    /**
     * Hapus file lama:
     * - tidak null
     * - tidak kosong
     * - bukan default.png
     * - file benar-benar ada
     */
    if (
        $oldImage &&
        !str_contains($oldImage, 'default.png') &&
        Storage::disk('public')->exists($oldImage)
    ) {
        Storage::disk('public')->delete($oldImage);
    }

    return response()->json([
        'message' => 'Gambar berhasil diperbarui'
    ]);
}

public function update(Request $request)
{
    $request->validate([
        'nama_sekolah' => 'required',
        'email_sekolah' => 'nullable|email',
        'misi' => 'nullable|array'
    ]);

    DataSekolah::query()->update([
        'nama_sekolah' => $request->nama_sekolah,
        'nama_singkatan' => $request->nama_singkatan,
        'npsn' => $request->npsn,
        'status' => $request->status,
        'jenjang' => $request->jenjang,
        'alamat' => $request->alamat,
        'yayasan_sekolah' => $request->yayasan_sekolah,
        'kecamatan' => $request->kecamatan,
        'email_sekolah' => $request->email_sekolah,
        'telepon' => $request->telepon,
        'kepala_sekolah' => $request->kepala_sekolah,
        'nip_kepala_sekolah' => $request->nip_kepala_sekolah,
        'deskripsi_singkat' => $request->deskripsi_singkat,
        'visi' => $request->visi,
        'misi' => json_encode(array_values(array_filter($request->misi ?? [])))
    ]);

    return response()->json([
        'message' => 'Data sekolah berhasil diperbarui'
    ]);
}


}