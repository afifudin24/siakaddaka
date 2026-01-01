<?php

namespace App\Http\Controllers\Staff;
use App\Http\Controllers\Controller;
use App\Models\JenisTagihan;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Barryvdh\DomPDF\Facade\Pdf;
use App\Models\Tagihan;
use App\Models\Semester;
use App\Models\Kelas;
use App\Models\LaporanKeuangan;
use App\Models\LaporanKeuanganDetail;
use App\Models\TahunPelajaran;
use App\Models\Pembayaran;
use App\Models\KasKeluar;
use App\Models\DataSekolah;
use Illuminate\Support\Facades\DB;
use Maatwebsite\Excel\Facades\Excel;
use App\Exports\LaporanKeuanganExport;
use Illuminate\Http\JsonResponse;

class StaffLaporanKeuanganController extends Controller
{
public function index(Request $request)
{
    // Ambil semua tahun pelajaran dan semester
    $allTahunPelajaran = TahunPelajaran::all();
    $allSemester = Semester::all();

    // Ambil tahun pelajaran & semester aktif
    $tahunPelajaranAktif = TahunPelajaran::where('is_active', 1)->first();
    $semesterAktif = Semester::where('is_active', 1)->first();
    $semesterList = Semester::where('tahun_pelajaran_id', $tahunPelajaranAktif?->id)->get();

    // Tentukan jumlah data per halaman (default 10)
    $perPage = $request->integer('per_page', 10);
    $perPage = in_array($perPage, [10, 25, 50, 100]) ? $perPage : 10;

    // Query laporan
    $laporanQuery = LaporanKeuangan::with('semester', 'tahunPelajaran');

    // Filter tanggal mulai dan tanggal selesai jika ada
    if ($request->filled('tanggal_mulai') && $request->filled('tanggal_selesai')) {
        $laporanQuery->where(function ($q) use ($request) {
            $q->whereBetween('tanggal_mulai', [$request->tanggal_mulai, $request->tanggal_selesai])
              ->orWhereBetween('tanggal_selesai', [$request->tanggal_mulai, $request->tanggal_selesai]);
        });
    }
// Filter Tahun Pelajaran
if ($request->has('tahun_pelajaran_id')) {

    if ($request->tahun_pelajaran_id !== 'all') {
        $laporanQuery->where(
            'tahun_pelajaran_id',
            $request->tahun_pelajaran_id
        );
    }

} else {
    // hanya fallback ke aktif kalau parameter TIDAK ADA
    $laporanQuery->where(
        'tahun_pelajaran_id',
        $tahunPelajaranAktif?->id
    );
}


// Filter Semester
if ($request->has('semester_id')) {

    if ($request->semester_id !== 'all') {
        $laporanQuery->where(
            'semester_id',
            $request->semester_id
        );
    }

} else {
    $laporanQuery->where(
        'semester_id',
        $semesterAktif?->id
    );
}



    // Ambil data laporan
    $laporan = $laporanQuery
        ->orderBy('created_at', 'desc')
        ->paginate($perPage)
        ->withQueryString();

    return view('pages.staff.laporankeuangan.index', [
        'laporan' => $laporan,
        'allTahunPelajaran' => $allTahunPelajaran,
        'allSemester' => $allSemester,
        'tahunPelajaranAktif' => $tahunPelajaranAktif,
        'semesterAktif' => $semesterAktif,
        'semesterList' => $semesterList,
        'perPage' => $perPage,
        'filter' => $request->all()
    ]);
}


    public function tambahLaporanKeuangan(){
         // Ambil semua tahun pelajaran dan semester
    $allTahunPelajaran = TahunPelajaran::all();
    $allSemester = Semester::all();

    // Ambil tahun pelajaran & semester aktif
    $tahunPelajaranAktif = TahunPelajaran::where('is_active', 1)->first();
    $semesterAktif = Semester::where('is_active', 1)->first();
    $semesterList = Semester::where('tahun_pelajaran_id', $tahunPelajaranAktif?->id)->get();
        return view('pages.staff.laporankeuangan.tambah', [
             'allTahunPelajaran' => $allTahunPelajaran,
        'allSemester' => $allSemester,
        'tahunPelajaranAktif' => $tahunPelajaranAktif,
        'semesterAktif' => $semesterAktif,
        'semesterList' => $semesterList,
        ]);
    }

    public function generateLaporanKeuangan(Request $request)
{
    $request->validate([
        'tahun_pelajaran_id' => 'required',
        'semester_id' => 'required',
    ]);

    DB::beginTransaction();

    try {
        // Buat LaporanKeuangan baru
        $LaporanKeuangan = LaporanKeuangan::create([
            'tanggal_mulai' => $request->tanggal_mulai ?: null,
            'tanggal_selesai' => $request->tanggal_selesai ?: null,
            'semester_id' => $request->semester_id,
            'tahun_pelajaran_id' => $request->tahun_pelajaran_id,
            'status_rekap' => 0
        ]);

        // Ambil data pemasukan
        $pembayaranQuery = Pembayaran::with('tagihan',
    'tagihan.siswa');
        
        if ($request->tanggal_mulai && $request->tanggal_selesai) {
            $pembayaranQuery->whereBetween('tgl_pembayaran', [$request->tanggal_mulai, $request->tanggal_selesai]);
        } else {
            $pembayaranQuery->whereHas('tagihan', function($q) use ($request){
                $q->where('semester_id', $request->semester_id)
                ->where('tahun_pelajaran_id', $request->tahun_pelajaran_id);
            });
        }
        
        $pembayaranData = $pembayaranQuery->get();
       

        foreach($pembayaranData as $p) {
            LaporanKeuanganDetail::create([
                'laporan_id' => $LaporanKeuangan->id,
                'jenis' => 'pemasukan',
                'keterangan' => "Pembayaran Tagihan {$p->tagihan->nama_tagihan} oleh {$p->tagihan->siswa->nama}",
                'tanggal' => $p->tgl_bayar,
                'nominal' => $p->jumlah_bayar
            ]);
        }

        // Ambil data pengeluaran
        $kasKeluarQuery = KasKeluar::query();
        if ($request->tanggal_mulai && $request->tanggal_selesai) {
            $kasKeluarQuery->whereBetween('tanggal', [$request->tanggal_mulai, $request->tanggal_selesai]);
        } else {
            $kasKeluarQuery->where('semester_id', $request->semester_id)
                           ->where('tahun_pelajaran_id', $request->tahun_pelajaran_id);
        }
        $kasKeluarData = $kasKeluarQuery->get();

       

        foreach($kasKeluarData as $k) {
            LaporanKeuanganDetail::create([
                'laporan_id' => $LaporanKeuangan->id,
                'jenis' => 'pengeluaran',
                'keterangan' => $k->keterangan,
                'tanggal' => $k->tanggal,
                'nominal' => $k->jumlah
            ]);
        }

        DB::commit();

        return response()->json([
            'success' => true,
            'LaporanKeuangan_id' => $LaporanKeuangan->id
        ]);

    } catch (\Exception $e) {
        DB::rollback();
        return response()->json([
            'success' => false,
            'message' => $e->getMessage()
        ], 500);
    }
}


public function cetak($id)
{
    $laporan = LaporanKeuangan::with([
        'tahunPelajaran',
        'semester',
        'detail'
    ])->findOrFail($id);

    // Hitung total
    $totalPemasukan = $laporan->detail
        ->where('jenis', 'pemasukan')
        ->sum('nominal');

    $totalPengeluaran = $laporan->detail
        ->where('jenis', 'pengeluaran')
        ->sum('nominal');

    $saldoAkhir = $totalPemasukan - $totalPengeluaran;
    $datasekolah = DataSekolah::first();

    $pdf = Pdf::loadView(
        'pages.staff.laporankeuangan.cetak',
        compact(
            'laporan',
            'totalPemasukan',
            'totalPengeluaran',
            'saldoAkhir',
            'datasekolah'
        )
    )
    ->setPaper('A4', 'portrait');

    // ✅ PREVIEW (TIDAK DOWNLOAD)
    return $pdf->stream('laporan-keuangan.pdf');
}
public function rekap(Request $request)
{
    try {
        $request->validate([
            'laporan_id' => 'required|exists:laporan_keuangan,id'
        ]);

        $laporan = LaporanKeuangan::findOrFail($request->laporan_id);

        // update status
        $laporan->update([
            'status_rekap' => 1
        ]);

        return response()->json([
            'success' => true,
            'laporan_id' => $laporan->id,
            'message' => 'Rekap berhasil'
        ]);

    } catch (\Throwable $e) {
        return response()->json([
            'success' => false,
            'error' => $e->getMessage()
        ], 500);
    }
}


public function cetakExcel($id)
{
    $laporan = LaporanKeuangan::with('detail')->findOrFail($id);

    return Excel::download(
        new LaporanKeuanganExport($laporan),
        'laporan-keuangan.xlsx'
    );
}


public function hapus($id): JsonResponse
{
    $laporan = LaporanKeuangan::with('detail')->findOrFail($id);

    // ❌ Belum direkap
    if ($laporan->status_rekap == 0) {
        return response()->json([
            'success' => false,
            'message' => 'Laporan belum direkap. Silakan rekap terlebih dahulu.'
        ], 422);
    }

    DB::transaction(function () use ($laporan) {
        // hapus detail dulu
        $laporan->detail()->delete();

        // hapus laporan
        $laporan->delete();
    });

    return response()->json([
        'success' => true,
        'message' => 'Laporan berhasil dihapus.'
    ]);
}

}