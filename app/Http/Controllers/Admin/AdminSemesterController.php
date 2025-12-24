<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Admin;
use App\Models\Guru;
use App\Models\Semester;
use App\Models\TahunPelajaran;
use Illuminate\Support\Facades\DB;
class AdminSemesterController extends Controller
{
    public function index()
    {
        $data = Semester::with('tahunPelajaran')->get();
        $tahun_pelajaran = TahunPelajaran::all();
        return view('pages.admin.semester.index', compact('data', 'tahun_pelajaran'));
    }

 
public function store(Request $request)
{
    $request->validate([
        'tahun_pelajaran_id' => 'required|exists:tahun_pelajaran,id',
        'nama'               => 'required',
        'tanggal_mulai'      => 'required|date',
        'tanggal_selesai'    => 'required|date|after_or_equal:tanggal_mulai',
        'is_active'          => 'required|boolean'
    ]);

    DB::transaction(function () use ($request) {

        // 🔴 Jika semester baru diaktifkan
        if ($request->is_active == 1) {
            Semester::where('is_active', 1)
                ->update(['is_active' => 0]);
        }

        // 🟢 Simpan semester baru
        Semester::create([
            'tahun_pelajaran_id' => $request->tahun_pelajaran_id,
            'nama'               => $request->nama,
            'is_active'          => $request->is_active,
            'tanggal_mulai'      => $request->tanggal_mulai,
            'tanggal_selesai'    => $request->tanggal_selesai
        ]);
    });

    return redirect()->back()
        ->with('successsemester', 'Semester berhasil ditambahkan');
}
public function update(Request $request, $id)
{
  
    $request->validate([
        'tahun_pelajaran_id' => 'required|exists:tahun_pelajaran,id',
        'nama'               => 'required',
        'tanggal_mulai'      => 'required|date',
        'tanggal_selesai'    => 'required|date|after_or_equal:tanggal_mulai',
        'is_active'          => 'required|boolean'
    ]);

    DB::transaction(function () use ($request, $id) {

        // 🔴 Jika semester ini diaktifkan
        if ($request->is_active == 1) {
            Semester::where('is_active', 1)
                ->where('id', '!=', $id)
                ->update(['is_active' => 0]);
        }

        // 🟢 Update semester
        Semester::where('id', $id)->update([
            'tahun_pelajaran_id' => $request->tahun_pelajaran_id,
            'nama'               => $request->nama,
            'is_active'          => $request->is_active,
            'tanggal_mulai'      => $request->tanggal_mulai,
            'tanggal_selesai'    => $request->tanggal_selesai
        ]);
    });

    return redirect()->back()
        ->with('successsemester', 'Semester berhasil diupdate');
}

/*************  ✨ Windsurf Command ⭐  *************/
/**
 * Hapus semester berdasarkan id yang diberikan.
 *
 * @param int $id Id semester yang ingin dihapus.
 * @return \Illuminate\Http\RedirectResponse
 */
/*******  5a1587cf-d001-4ade-b776-ff075bc863d3  *******/
    public function destroy($id)
    {
        Semester::destroy($id);
        return back()->with('success', 'Semester berhasil dihapus');
    }
}