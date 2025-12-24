<?php

namespace App\Http\Controllers\Staff;
use App\Http\Controllers\Controller;
use App\Models\JenisTagihan;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Barryvdh\DomPDF\Facade\Pdf;
use App\Models\Tagihan;
use App\Models\Siswa;
use App\Models\Kelas;
use App\Models\Semester;
use App\Models\TahunPelajaran;
use Illuminate\Support\Facades\DB;
class StaffTagihanController extends Controller
{
    public function index(Request $request)
    {
        $kelas = Kelas::all();

        // Query siswa dengan eager load kelas dan tagihan
        $query = Siswa::with(['kelas', 'tagihan']);

        // Filter search nama siswa
        if ($request->filled('search')) {
            $query->where('nama', 'like', '%' . $request->search . '%');
        }

        // Filter kelas
        if ($request->filled('kelas_id')) {
            if ($request->kelas_id === 'null') {
                $query->whereNull('kelas_id');
            } elseif ($request->kelas_id !== 'all') {
                $query->where('kelas_id', $request->kelas_id);
            }
        }

        // Filter tingkat
        if ($request->filled('tingkat')) {
            $query->whereHas('kelas', function ($q) use ($request) {
                $q->where('tingkat', $request->tingkat);
            });
        }

        // Filter status tagihan keseluruhan
        if ($request->filled('status')) {
            if ($request->status === 'lunas') {
                // Hanya siswa yang semua tagihannya sudah Lunas
                $query->whereDoesntHave('tagihan', function ($q) {
                    $q->where('status', '!=', 'lunas');
                });
            } elseif ($request->status === 'belum lunas') {
                // Siswa yang punya setidaknya 1 tagihan belum lunas
                $query->whereHas('tagihan', function ($q) {
                    $q->where('status', '!=', 'lunas');
                });
            }
        }

        // Pagination
        $perPage = $request->paginate ?? 10;

        $siswa = $query->orderBy('nama')
            ->paginate($perPage)
            ->appends($request->query());

        return view('pages.staff.tagihan.index', compact('siswa', 'kelas'));
    }

   public function tampilkanTagihan(Request $request, $siswaId)
{
    $perPage = $request->paginate ?? 10;
    $status  = $request->status; // lunas | belum

    // 🔎 Ambil Tahun Pelajaran & Semester aktif
    $tahunAktif   = TahunPelajaran::where('is_active', 1)->first();
    $semesterAktif = Semester::where('is_active', 1)->first();

    // 👉 Bisa override lewat request (opsional)
    $tahunPelajaranId = $request->tahun_pelajaran_id ?? $tahunAktif?->id;
    $semesterId       = $request->semester_id ?? $semesterAktif?->id;

    $query = Tagihan::with([
            'siswa.kelas',
            'jenisTagihan',
            'pembayaran',
            'semester',
            'tahunPelajaran'
        ])
        ->where('siswa_id', $siswaId);

    // 🔎 Filter status tagihan
    if ($status === 'lunas') {
        $query->where('status', 'lunas');
    } elseif ($status === 'belum') {
        $query->where('status', 'belum');
    }

    // 📌 Filter Tahun Pelajaran & Semester (default aktif)
    if ($tahunPelajaranId) {
        $query->where('tahun_pelajaran_id', $tahunPelajaranId);
    }

    if ($semesterId) {
        $query->where('semester_id', $semesterId);
    }

    $tagihan = $query->paginate($perPage)->withQueryString();

    $siswa        = Siswa::with('kelas')->findOrFail($siswaId);
    $jenistagihan = JenisTagihan::all();
    $tahunPelajaran = TahunPelajaran::all();
    $semesterList = Semester::where('tahun_pelajaran_id', $tahunPelajaranId)->get();

    return view(
        'pages.staff.tagihan.daftar_tagihan',
        compact(
            'tagihan',
            'siswaId',
            'siswa',
            'jenistagihan',
            'tahunAktif',
            'semesterAktif',
            'tahunPelajaran',
            'semesterList'
        )
    );
}

    public function create()
    {


    }



    public function store(Request $request)
    {
        // Ambil semester & tahun pelajaran aktif
        $semester = Semester::where('is_active', 1)->first();
        $tahunPelajaran = TahunPelajaran::where('is_active', 1)->first();

        if (!$semester || !$tahunPelajaran) {
            return response()->json([
                'status' => false,
                'message' => 'Semester atau Tahun Pelajaran aktif belum diset'
            ], 422);
        }

        $validator = Validator::make($request->all(), [
            'siswa_id' => 'required|exists:siswa,id',
            'nama_tagihan' => 'required|string|max:255',
            'jenis_tagihan_id' => 'required|exists:jenis_tagihan,id',
            'jumlah' => 'required|numeric|min:0',
            'tgl_tagihan' => 'required|date',
        ]);

        if ($validator->fails()) {
            return response()->json([
                'status' => false,
                'errors' => $validator->errors()
            ], 422);
        }

        Tagihan::create([
            'siswa_id' => $request->siswa_id,
            'nama_tagihan' => $request->nama_tagihan,
            'jenis_tagihan_id' => $request->jenis_tagihan_id,
            'jumlah' => $request->jumlah,
            'tgl_tagihan' => $request->tgl_tagihan,
            'status' => 'belum lunas',
            'semester_id' => $semester->id,
            'tahun_pelajaran_id' => $tahunPelajaran->id,
        ]);

        return response()->json([
            'status' => true,
            'message' => 'Tagihan berhasil ditambahkan'
        ], 201);
    }

    public function detailTagihan($id)
    {
        $tagihan = Tagihan::with('siswa.kelas', 'jenisTagihan', 'pembayaran', 'semester', 'tahunPelajaran')->find($id);

        return view('pages.staff.tagihan.detail_tagihan', compact('tagihan'));
    }
    public function cetakTagihan(Tagihan $tagihan)
    {
        $tagihan->load([
            'siswa.kelas',
            'jenisTagihan',
            'pembayaran'
        ]);

        $pdf = Pdf::loadView('pages.staff.tagihan.cetak', [
            'tagihan' => $tagihan
        ])->setPaper('A4', 'portrait');

        // 🔥 PREVIEW di browser
        return $pdf->stream('tagihan-' . $tagihan->id . '.pdf');
    }

    public function show($id)
    {
        //
    }

    public function edit($id)
    {
        //
    }

    public function update(Request $request, Tagihan $tagihan)
    {
        $validated = $request->validate([
            'nama_tagihan' => 'required|string|max:255',
            'jumlah' => 'required|numeric|min:0',
            'status' => 'required|in:lunas,belum lunas'
        ]);

        $tagihan->update($validated);

        return response()->json([
            'status' => true,
            'message' => 'Tagihan berhasil diperbarui'
        ]);
    }



    public function destroy(Tagihan $tagihan)
    {
        DB::beginTransaction();

        try {
            // 1. Hapus semua pembayaran terkait
            $tagihan->pembayaran()->delete();

            // 2. Hapus tagihan
            $tagihan->delete();

            DB::commit();

            return response()->json([
                'status' => true,
                'message' => 'Tagihan dan pembayaran berhasil dihapus'
            ]);
        } catch (\Exception $e) {
            DB::rollBack();

            return response()->json([
                'status' => false,
                'message' => 'Gagal menghapus tagihan'
            ], 500);
        }
    }

          public function massalForm()
    {
     
        $kelas = Kelas::orderBy('nama_kelas')->get();
        $jenistagihan = JenisTagihan::all();
     

        return view('pages.staff.tagihan.massal', compact('kelas', 'jenistagihan'));
    }

    
    public function massalStore(Request $request)
    {
        $request->validate([
            'target' => 'required|in:semua,tingkat,kelas',
            'nama_tagihan' => 'required|string|max:255',
            'jenis_tagihan_id' => 'required',
            'jumlah' => 'required|numeric|min:0',
            'tgl_tagihan' => 'required|date',
        ]);

        $semester = Semester::where('is_active', 1)->firstOrFail();
        $tahunPelajaran = TahunPelajaran::where('is_active', 1)->firstOrFail();

        // === AMBIL SISWA SESUAI TARGET ===
        if ($request->target === 'semua') {
            $siswaList = Siswa::all();

        } elseif ($request->target === 'tingkat') {
            $request->validate([
                'tingkat' => 'required|in:10,11,12'
            ]);

            $siswaList = Siswa::whereHas('kelas', function ($q) use ($request) {
                $q->where('tingkat', $request->tingkat);
            })->get();

        } else { // kelas
            $request->validate([
                'kelas_id' => 'required|exists:kelas,id'
            ]);

            $siswaList = Siswa::where('kelas_id', $request->kelas_id)->get();
        }

        DB::beginTransaction();

        try {
            foreach ($siswaList as $siswa) {
                Tagihan::create([
                    'siswa_id' => $siswa->id,
                    'nama_tagihan' => $request->nama_tagihan,
                    'jenis_tagihan_id' => $request->jenis_tagihan_id,
                    'jumlah' => $request->jumlah,
                    'tgl_tagihan' => $request->tgl_tagihan,
                    'semester_id' => $semester->id,
                    'tahun_pelajaran_id' => $tahunPelajaran->id,
                    'status' => 'belum lunas',
                ]);
            }

            DB::commit();

            return response()->json([
                'status' => true,
                'message' => 'Tagihan massal berhasil ditambahkan',
                'total_siswa' => $siswaList->count()
            ]);
        }catch (\Exception $e) {
    DB::rollBack();

    return response()->json([
        'status'  => false,
        'message' => "Gagal menambahkan tagihan massal", // tampilkan error asli
        'file'    => $e->getFile(),
        'line'    => $e->getLine(),
    ], 500);
}
    }

    public function cetakMassalForm(){
          $kelas = Kelas::orderBy('tingkat')->orderBy('nama_kelas')->get();

    $semesterAktif = Semester::where('is_active', 1)->first();
    $tahunPelajaranAktif = TahunPelajaran::where('is_active', 1)->first();
    $tahunPelajaran = TahunPelajaran::all();
    $semesterTahunPelajaran = Semester::where('tahun_pelajaran_id', $tahunPelajaranAktif->id)->get();
        return view('pages.staff.tagihan.cetak-tagihan-massal-form', compact('kelas', 'tahunPelajaran', 'semesterTahunPelajaran','semesterAktif', 'tahunPelajaranAktif'));
    }
  

public function cetakMassalStore(Request $request)
{
    $request->validate([
        'semester_id' => 'required',
        'tahun_pelajaran_id' => 'required',
        'tingkat' => 'required_if:target,tingkat',
        'kelas_id' => 'required_if:target,kelas',
    ]);

    $query = Siswa::with(['kelas', 'tagihan' => function ($q) use ($request) {
        $q->where('semester_id', $request->semester_id)
          ->where('tahun_pelajaran_id', $request->tahun_pelajaran_id)
          ->where('status', 'belum lunas');

        if ($request->tanggal_mulai && $request->tanggal_selesai) {
            $q->whereBetween('tgl_tagihan', [
                $request->tanggal_mulai,
                $request->tanggal_selesai
            ]);
        }
    }]);

    if ($request->target === 'tingkat') {
        $query->whereHas('kelas', fn ($q) =>
            $q->where('tingkat', $request->tingkat)
        );
    } elseif ($request->target === 'kelas') {
        $query->where('kelas_id', $request->kelas_id);
    }

    $data = $query->get()->filter(fn ($s) => $s->tagihan->count() > 0);

    $tahunPelajaran = TahunPelajaran::find($request->tahun_pelajaran_id);
    $semester = Semester::find($request->semester_id);

    $pdf = Pdf::loadView(
        'pages.staff.tagihan.cetak_massal_tagihan',
        compact('data', 'tahunPelajaran', 'semester')
    )->setPaper('A4', 'portrait');

    // preview (TIDAK DOWNLOAD)
    return $pdf->stream('cetak-tagihan-massal.pdf');
}


   
}