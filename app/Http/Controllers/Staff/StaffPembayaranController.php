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

    $data = [
        'tagihan' => $tagihan,
        'pembayaran' => $pembayaran,
        'semester' => $semester,
        'tahunPelajaran' => $tahunPelajaran,
        'tanggalCetak' => Carbon::now()->translatedFormat('d F Y'),
        'petugas' => auth()->user()->staff->nama ?? auth()->user()->name,
    ];

    $pdf = Pdf::loadView('pages.staff.tagihan.cetak-riwayat-pembayaran', $data)
        ->setPaper('A4', 'portrait');

    // ✅ PREVIEW (tidak download)
    return $pdf->stream(
        'Riwayat_Pembayaran_' . $tagihan->siswa->nama . '.pdf'
    );
}
}