<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Admin;
use App\Models\Guru;
use App\Models\TahunPelajaran;
use App\Models\Semester;
use Illuminate\Support\Facades\DB;
class AdminTahunPelajaranController extends Controller
{
   public function index()
    {
        $tahun_pelajaran = TahunPelajaran::all();
        $tahun_pelajaran_aktif = TahunPelajaran::where('is_active', 1)->first();
          $data = Semester::with('tahunPelajaran')->where('tahun_pelajaran_id', $tahun_pelajaran_aktif->id)->get();
        return view('pages.admin.tahun_pelajaran.index', compact('tahun_pelajaran', 'data'));
    }

    public function create()
    {
        return view('tahun_pelajaran.create');
    }

   
public function store(Request $request)
{
    $request->validate([
        'nama'   => 'required|unique:tahun_pelajaran,nama',
        'status' => 'required|boolean'
    ]);

    DB::transaction(function () use ($request) {

        // 🔴 Jika tahun pelajaran baru diaktifkan
        if ($request->status == 1) {
            TahunPelajaran::where('is_active', 1)
                ->update(['is_active' => 0]);
        }

        // 🟢 Simpan tahun pelajaran baru
        TahunPelajaran::create([
            'nama'      => $request->nama,
            'is_active' => $request->status
        ]);
    });

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
        'nama'      => 'required|unique:tahun_pelajaran,nama,' . $id,
        'is_active' => 'required|boolean'
    ]);

    DB::transaction(function () use ($request, $id) {

        // 🔴 Jika tahun pelajaran diaktifkan
        if ($request->is_active == 1) {

            // Nonaktifkan tahun pelajaran lain
            TahunPelajaran::where('id', '!=', $id)
                ->where('is_active', 1)
                ->update(['is_active' => 0]);

            // 🔍 Ambil semua semester milik tahun pelajaran ini
            $semesterList = Semester::where('tahun_pelajaran_id', $id)->get();

            if ($semesterList->count() > 0) {

                // 🟢 Ambil semester pertama
                $semesterAktif = $semesterList->first();

                // Nonaktifkan semua semester tahun pelajaran ini
                Semester::where('tahun_pelajaran_id', '!=' , $id)
                    ->update(['is_active' => 0]);

                // Aktifkan semester pertama
                $semesterAktif->update(['is_active' => 1]);
            }
        }

        // 🟢 Update data tahun pelajaran
        TahunPelajaran::where('id', $id)->update([
            'nama'      => $request->nama,
            'is_active' => $request->is_active
        ]);
    });

    return redirect()->back()
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