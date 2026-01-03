<?php

namespace App\Http\Controllers\Staff;
use App\Http\Controllers\Controller;
use App\Models\JenisTagihan;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use App\Models\Tagihan;
use App\Models\Pembayaran;
use App\Models\Siswa;
use App\Models\Kelas;
use App\Models\Semester;
use App\Models\DataSekolah;
use App\Models\TahunPelajaran;
use Barryvdh\DomPDF\Facade\Pdf;
use Carbon\Carbon;

class StaffPembayaranController extends Controller
{


   public function store(Request $request)
{
    $semester = Semester::where('is_active', 1)->first();
    $tahunPelajaran = TahunPelajaran::where('is_active', 1)->first();

    if (!$semester || !$tahunPelajaran) {
        return response()->json([
            'message' => 'Semester atau Tahun Pelajaran aktif belum diset'
        ], 422);
    }

    $validator = Validator::make($request->all(), [
        'tagihan_id'   => 'required|exists:tagihan,id',
        'jumlah_bayar' => 'required|numeric|min:1',
        'keterangan'   => 'nullable|string|max:255',
    ]);

    if ($validator->fails()) {
        return response()->json([
            'message' => $validator->errors()->first()
        ], 422);
    }

    Pembayaran::create([
        'tagihan_id'         => $request->tagihan_id,
        'jumlah_bayar'       => $request->jumlah_bayar,
        'tgl_bayar'          => now(),
        'keterangan'         => $request->keterangan,
        'semester_id'        => $semester->id,
        'tahun_pelajaran_id' => $tahunPelajaran->id,
    ]);

    return response()->json([
        'message' => 'Pembayaran berhasil disimpan'
    ]);
} 
public function cetakRiwayatByTagihan($tagihanId)
{
    $tagihan = Tagihan::with(['siswa.kelas', 'jenisTagihan'])
        ->findOrFail($tagihanId);

    $semester = Semester::where('is_active', 1)->first();
    $tahunPelajaran = TahunPelajaran::where('is_active', 1)->first();

    // 🔴 FILTER UTAMA: tagihan_id
    $pembayaran = Pembayaran::where('tagihan_id', $tagihanId)
        ->orderBy('tgl_bayar', 'asc')
        ->get();
    $datasekolah = DataSekolah::first();

    $data = [
        'tagihan' => $tagihan,
        'pembayaran' => $pembayaran,
        'semester' => $semester,
        'tahunPelajaran' => $tahunPelajaran,
        'tanggalCetak' => Carbon::now()->translatedFormat('d F Y'),
        'petugas' => auth()->user()->staff->nama ?? auth()->user()->name,
        'datasekolah' => $datasekolah
    ];

    $pdf = Pdf::loadView('pages.staff.tagihan.cetak-riwayat-pembayaran', $data)
        ->setPaper('A4', 'portrait');

    // ✅ PREVIEW (tidak download)
    return $pdf->stream(
        'Riwayat_Pembayaran_' . $tagihan->siswa->nama . '.pdf'
    );
}

    public function cetakMassalForm(){
          $kelas = Kelas::orderBy('tingkat')->orderBy('nama_kelas')->get();



    

    $jenisTagihan = JenisTagihan::all();
    $semesterAktif = Semester::where('is_active', 1)->first();
    $tahunPelajaranAktif = TahunPelajaran::where('is_active', 1)->first();
    $tagihan = Tagihan::with(['tahunPelajaran', 'semester'])
    ->select('nama_tagihan', 'tahun_pelajaran_id', 'semester_id')
    ->groupBy('nama_tagihan', 'tahun_pelajaran_id', 'semester_id')->where('tahun_pelajaran_id', $tahunPelajaranAktif->id)->where('semester_id', $semesterAktif->id)
    ->get();
    $tahunPelajaran = TahunPelajaran::all();
    $semesterTahunPelajaran = Semester::where('tahun_pelajaran_id', $tahunPelajaranAktif->id)->get();
        return view('pages.staff.tagihan.cetak-riwayatpembayaran-massal-form', compact('kelas', 'tahunPelajaran', 'semesterTahunPelajaran','semesterAktif', 'tahunPelajaranAktif', 'tagihan', 'jenisTagihan'));
    }

public function cetakRiwayatPembayaranMassal(Request $request)
{
    $request->validate([
        'semester_id' => 'required',
        'tahun_pelajaran_id' => 'required',
        'tingkat' => 'required_if:target,tingkat',
        'kelas_id' => 'required_if:target,kelas',
    ]);

    $query = Siswa::with([
        'kelas',
        'tagihan' => function ($q) use ($request) {
            $q->where('semester_id', $request->semester_id)
              ->where('tahun_pelajaran_id', $request->tahun_pelajaran_id);

            if ($request->jenis_tagihan_id) {
                $q->where('jenis_tagihan_id', $request->jenis_tagihan_id);
            }

            if ($request->nama_tagihan) {
                $q->where('nama_tagihan', $request->nama_tagihan);
            }

            // relasi pembayaran per tagihan
            $q->with('pembayaran'); 
        }
    ]);

    if ($request->target === 'tingkat') {
        $query->whereHas('kelas', fn ($q) => $q->where('tingkat', $request->tingkat));
    } elseif ($request->target === 'kelas') {
        $query->where('kelas_id', $request->kelas_id);
    }

    $data = $query->get()->filter(fn($s) => $s->tagihan->count() > 0);

    $tahunPelajaran = TahunPelajaran::find($request->tahun_pelajaran_id);
    $semester = Semester::find($request->semester_id);
    $datasekolah = DataSekolah::first();

    $pdf = Pdf::loadView(
        'pages.staff.tagihan.cetak_riwayat_pembayaran_massal',
        compact('data', 'tahunPelajaran', 'semester', 'datasekolah')
    )->setPaper('A4', 'portrait');

    return $pdf->stream('cetak-riwayat-pembayaran-massal.pdf');
}

}