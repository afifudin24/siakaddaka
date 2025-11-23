<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Admin;
use App\Models\Guru;
use App\Models\TahunPelajaran;

class AdminTahunPelajaranController extends Controller
{
   public function index()
    {
        $tahun_pelajaran = TahunPelajaran::all();
        return view('pages.admin.tahun_pelajaran.index', compact('tahun_pelajaran'));
    }

    public function create()
    {
        return view('tahun_pelajaran.create');
    }

    public function store(Request $request)
    {
        $request->validate([
            'nama' => 'required|unique:tahun_pelajaran,nama',
            'status' => 'required'
        ]);

        TahunPelajaran::create([
            'nama' => $request->nama,
            'status' => $request->status
        ]);

        return redirect()->back()
                         ->with('success', 'Tahun pelajaran berhasil ditambahkan');
    }

    public function edit($id)
    {
        $data = TahunPelajaran::findOrFail($id);
        return view('tahun_pelajaran.edit', compact('data'));
    }

    public function update(Request $request, $id)
    {
        $request->validate([
            'tahun' => 'required|unique:tahun_pelajaran,tahun,' . $id
        ]);

        $data = TahunPelajaran::findOrFail($id);
        $data->update([
            'tahun' => $request->tahun
        ]);

        return redirect()->route('tahun-pelajaran.index')
                         ->with('success', 'Tahun pelajaran berhasil diupdate');
    }

    public function destroy($id)
    {
        TahunPelajaran::destroy($id);
        return back()->with('success', 'Tahun pelajaran berhasil dihapus');
    }

    public function massdelete(Request $request)
{
    if (!$request->selected) {
        return redirect()->back()->with('error', 'Tidak ada data yang dipilih.');
    }

    TahunPelajaran::whereIn('id', $request->selected)->delete();

    return redirect()->back()->with('success', 'Berhasil menghapus data terpilih.');
}
}