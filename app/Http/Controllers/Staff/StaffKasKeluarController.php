<?php

namespace App\Http\Controllers\Staff;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Admin;
use App\Models\Guru;
use App\Models\Staff;
use App\Models\JenisTagihan;
use App\Models\TahunPelajaran;
use App\Models\Semester;
use App\Models\KasKeluar;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;
use Barryvdh\DomPDF\Facade\Pdf;
class StaffKasKeluarController extends Controller
{
    // Resource
public function index(Request $request)
{
    $tahunAktif = TahunPelajaran::where('is_active', 1)->first();
    $semesterAktif = Semester::where('is_active', 1)->first();

    $tahunPelajaranId = $request->tahun_pelajaran_id ?? $tahunAktif?->id;
    $semesterId       = $request->semester_id ?? $semesterAktif?->id;

    $query = KasKeluar::with('petugas', 'tahunPelajaran', 'semester')
        ->when($request->tanggal_mulai, fn ($q) =>
            $q->whereDate('tanggal', '>=', $request->tanggal_mulai)
        )
        ->when($request->tanggal_selesai, fn ($q) =>
            $q->whereDate('tanggal', '<=', $request->tanggal_selesai)
        )
        ->when($tahunPelajaranId, fn ($q) =>
            $q->where('tahun_pelajaran_id', $tahunPelajaranId)
        )
        ->when($semesterId, fn ($q) =>
            $q->where('semester_id', $semesterId)
        )
        ->latest();

    $kaskeluars = $query->paginate(10)->withQueryString();
      $tahunPelajaran = TahunPelajaran::all();
    $semesterList = Semester::where('tahun_pelajaran_id', $tahunPelajaranId)->get();


    return view('pages.staff.kaskeluar.index', compact(
        'kaskeluars',
        'tahunAktif',
        'semesterAktif',
        'tahunPelajaranId',
        'semesterId',
        'tahunPelajaran',
        'semesterList'

    ));


}
       public function store(Request $request)
    {
        $request->validate([
            'tanggal' => 'required|date',
            'kategori' => 'required',
            'jumlah' => 'required|numeric|min:1',
        ]);
          $tahunAktif   = TahunPelajaran::where('is_active', 1)->first();
    $semesterAktif = Semester::where('is_active', 1)->first();

        $staff = Staff::where('user_id', Auth::user()->id)->first();

        KasKeluar::create([
            'kode_pengeluaran' => 'KK-' . time(),
            'tanggal' => $request->tanggal,
            'kategori' => $request->kategori,
            'keterangan' => $request->keterangan,
            'jumlah' => $request->jumlah,
            'petugas_id' => $staff->id,
            'semester_id' => $semesterAktif->id,
            'tahun_pelajaran_id' => $tahunAktif->id
        ]);

        return response()->json([
            'message' => 'Kas keluar berhasil ditambahkan'
        ]);
    }

    public function update(Request $request, $id)
{
    $request->validate([
        'tanggal' => 'required|date',
        'kategori' => 'required|string',
        'jumlah' => 'required|numeric|min:1',
        'keterangan' => 'nullable|string'
    ]);

    $kas = KasKeluar::findOrFail($id);

    $kas->update([
        'tanggal' => $request->tanggal,
        'kategori' => $request->kategori,
        'jumlah' => $request->jumlah,
        'keterangan' => $request->keterangan
    ]);

    return response()->json([
        'status' => true,
        'message' => 'Kas keluar berhasil diperbarui'
    ]);
}

public function destroy($id)
{
    try {
        $kas = KasKeluar::findOrFail($id);
        $kas->delete();

        return response()->json([
            'status' => true,
            'message' => 'Kas keluar berhasil dihapus'
        ]);
    } catch (\Exception $e) {
        return response()->json([
            'status' => false,
            'message' => 'Gagal menghapus kas keluar'
        ], 500);
    }
}

public function cetak(Request $request)
{
    $tahunPelajaranId = $request->tahun_pelajaran_id
        ?? TahunPelajaran::where('is_active', 1)->value('id');

    $semesterId = $request->semester_id
        ?? Semester::where('is_active', 1)->value('id');

    $tahunPelajaran = TahunPelajaran::find($tahunPelajaranId);
    $semester = Semester::find($semesterId);

    $query = KasKeluar::with(['petugas', 'semester', 'tahunPelajaran'])
        ->where('tahun_pelajaran_id', $tahunPelajaranId)
        ->where('semester_id', $semesterId);

    if ($request->tanggal_mulai && $request->tanggal_selesai) {
        $query->whereBetween('tanggal', [
            $request->tanggal_mulai,
            $request->tanggal_selesai
        ]);
    }

    $kasKeluar = $query->orderBy('tanggal')->get();
    $total = $kasKeluar->sum('jumlah');

    $pdf = Pdf::loadView('pages.staff.kaskeluar.cetak', compact(
        'kasKeluar',
        'total',
        'tahunPelajaran',
        'semester',
        'request'
    ))->setPaper('A4', 'portrait');

    return $pdf->stream('laporan-kas-keluar.pdf');
}



}