<?php

namespace App\Http\Controllers\Staff;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Admin;
use App\Models\Guru;
use App\Models\TahunPelajaran;
use App\Models\Semester;
use App\Models\KasKeluar;
use App\Models\Kelas;
use App\Models\Pembayaran;
use Illuminate\Support\Facades\DB;

class StaffDashboardController extends Controller
{
    public function index(Request $request)
    {
        if(auth()->user()->staff->jabatan == 'Staff Keuangan'){
               // Tahun & semester aktif
    $tahunPelajaranAktif = TahunPelajaran::where('is_active', 1)->first();
    $semesterAktif = Semester::where('is_active', 1)->first();

  
$tahunId = $request->tahun_pelajaran_id ?? $tahunPelajaranAktif?->id;
$semesterId = $request->semester_id ?? $semesterAktif?->id;

    /*
    |--------------------------------------------------------------------------
    | QUERY PEMASUKAN
    |--------------------------------------------------------------------------
    */
    $pemasukanQuery = Pembayaran::query();
if ($request->filled('tahun_pelajaran_id')) {
    // user memilih
    if ($request->tahun_pelajaran_id !== 'all') {
        $pemasukanQuery->whereHas('tagihan', function ($q) use ($tahunId) {
            $q->where('tahun_pelajaran_id', $tahunId);
        });
    }
} else {
    // default pakai tahun aktif
    if ($tahunPelajaranAktif) {
        $pemasukanQuery->whereHas('tagihan', function ($q) use ($tahunPelajaranAktif) {
            $q->where('tahun_pelajaran_id', $tahunPelajaranAktif->id);
        });
    }
}

/*
|--------------------------------------------------------------------------
| FILTER SEMESTER
|--------------------------------------------------------------------------
*/
if ($request->filled('semester_id')) {
    // user memilih
    if ($request->semester_id !== 'all') {
        $pemasukanQuery->whereHas('tagihan', function ($q) use ($semesterId) {
            $q->where('semester_id', $semesterId);
        });
    }
} else {
    // default pakai semester aktif
    if ($semesterAktif) {
        $pemasukanQuery->whereHas('tagihan', function ($q) use ($semesterAktif) {
            $q->where('semester_id', $semesterAktif->id);
        });
    }
}

    $totalPemasukan = $pemasukanQuery->sum('jumlah_bayar');

    /*
    |--------------------------------------------------------------------------
    | QUERY PENGELUARAN
    |--------------------------------------------------------------------------
    */
    $pengeluaranQuery = KasKeluar::query();

    if ($tahunId && $tahunId !== 'all') {
        $pengeluaranQuery->where('tahun_pelajaran_id', $tahunId);
    }

    if ($semesterId && $semesterId !== 'all') {
        $pengeluaranQuery->where('semester_id', $semesterId);
    }

    $totalPengeluaran = $pengeluaranQuery->sum('jumlah');

    /*
    |--------------------------------------------------------------------------
    | SALDO
    |--------------------------------------------------------------------------
    */
    $saldo = $totalPemasukan - $totalPengeluaran;

    /*
    |--------------------------------------------------------------------------
    | TRANSAKSI TERBARU (OPTIONAL)
    |--------------------------------------------------------------------------
    */
    $transaksiTerbaru = Pembayaran::with(['tagihan', 'tagihan.siswa', 'tagihan.jenisTagihan', 'tahunPelajaran', 'semester'])
        ->latest('tgl_bayar')
        ->limit(5)
        ->get();

        $allTahunPelajaran = TahunPelajaran::all();
        $semesterTahunPelajaran = Semester::where('tahun_pelajaran_id', $tahunPelajaranAktif->id)->get();
        if($request->tahun_pelajaran_id){
            $semesterList = Semester::where('tahun_pelajaran_id', $request->tahun_pelajaran_id)->get();
        }else{
            $semesterList = Semester::where('tahun_pelajaran_id', $tahunPelajaranAktif->id)->get();
        }
      

    return view('pages.staff.dashboard.index', compact(
        'totalPemasukan',
        'totalPengeluaran',
        'saldo',
        'transaksiTerbaru',
        'tahunPelajaranAktif',
        'semesterAktif',
        'allTahunPelajaran',
        'semesterTahunPelajaran',
        'semesterList'
    ));
        }
       
    }

    
public function pemasukanPerJenis(Request $request)
{
    $tahunPelajaranId = $request->tahun_pelajaran_id;

    $data = DB::table('pembayaran')
        ->join('tagihan', 'pembayaran.tagihan_id', '=', 'tagihan.id')
        ->join('jenis_tagihan', 'tagihan.jenis_tagihan_id', '=', 'jenis_tagihan.id')
        ->where('tagihan.tahun_pelajaran_id', $tahunPelajaranId)
        ->select(
            'jenis_tagihan.nama_jenis',
            DB::raw('SUM(pembayaran.jumlah_bayar) as total')
        )
        ->groupBy('jenis_tagihan.nama_jenis')
        ->get();

    return response()->json([
        'labels' => $data->pluck('nama_jenis'),
        'series' => $data->pluck('total'),
    ]);
}

    public function create()
    {
        //
    }

    public function store(Request $request)
    {
        //
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
        //
    }

    public function destroy($id)
    {
        //
    }
}
