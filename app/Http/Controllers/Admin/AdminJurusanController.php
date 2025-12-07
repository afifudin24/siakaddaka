<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Admin;
use App\Models\Guru;
use App\Models\Jurusan;

class AdminJurusanController extends Controller
{
    public function index(){
        $jurusan = Jurusan::all();
        return view('pages.admin.jurusan.index', compact('jurusan'));
    }

    public function store(Request $request){
    $request->validate([
        'kode_jurusan' => 'required|unique:jurusan,kode_jurusan',
        'nama_jurusan' => 'required',
    ], [
        'kode_jurusan.required' => 'Kode jurusan wajib diisi.',
        'kode_jurusan.unique'   => 'Kode jurusan sudah digunakan.',
        'nama_jurusan.required' => 'Nama jurusan wajib diisi.',
    ]);

    Jurusan::create([
        'kode_jurusan' => $request->kode_jurusan,
        'nama_jurusan' => $request->nama_jurusan
    ]);

    return redirect()->back()->with('success', 'Jurusan berhasil ditambahkan');
}

   public function update(Request $request, $id){
    $request->validate([
        'kode_jurusan' => 'required|unique:jurusan,kode_jurusan,' . $id,
        'nama_jurusan' => 'required',
    ], [
        'kode_jurusan.required' => 'Kode jurusan wajib diisi.',
        'kode_jurusan.unique'   => 'Kode jurusan sudah digunakan.',
        'nama_jurusan.required' => 'Nama jurusan wajib diisi.',
    ]);

    $jurusan = Jurusan::findOrFail($id);
    $jurusan->update([
        'kode_jurusan' => $request->kode_jurusan,
        'nama_jurusan' => $request->nama_jurusan
    ]);

    return redirect()->back()->with('success', 'Jurusan berhasil diupdate');
}

public function destroy($id){
    Jurusan::destroy($id);
    return back()->with('success', 'Jurusan berhasil dihapus');
}
}