<?php

namespace App\Http\Controllers\Staff;
use App\Http\Controllers\Controller;
use App\Models\JenisTagihan;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use App\Models\Tagihan;
use App\Models\Siswa;
use App\Models\Kelas;
use App\Models\Semester;
use App\Models\TahunPelajaran;

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
            if ($request->status === 'Lunas') {
                // Hanya siswa yang semua tagihannya sudah Lunas
                $query->whereDoesntHave('tagihan', function ($q) {
                    $q->where('status', '!=', 'Lunas');
                });
            } elseif ($request->status === 'Belum Lunas') {
                // Siswa yang punya setidaknya 1 tagihan belum lunas
                $query->whereHas('tagihan', function ($q) {
                    $q->where('status', '!=', 'Lunas');
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
        $status = $request->status; // lunas | belum

        $query = Tagihan::with('siswa')
            ->where('siswa_id', $siswaId);

        // 🔎 Filter status tagihan
        if ($status === 'lunas') {
            $query->where('status', 'lunas');
        } elseif ($status === 'belum') {
            $query->where('status', 'belum');
        }

        $siswa = Siswa::find($siswaId);
        $jenistagihan = JenisTagihan::all();
        $tagihan = $query->paginate($perPage)->withQueryString();


        return view('pages.staff.tagihan.daftar_tagihan', compact('tagihan', 'siswaId', 'siswa', 'jenistagihan'));
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
        'siswa_id'         => 'required|exists:siswa,id',
        'nama_tagihan'     => 'required|string|max:255',
        'jenis_tagihan_id' => 'required|exists:jenis_tagihan,id',
        'jumlah'           => 'required|numeric|min:0',
        'tgl_tagihan'      => 'required|date',
    ]);

    if ($validator->fails()) {
        return response()->json([
            'status' => false,
            'errors' => $validator->errors()
        ], 422);
    }

    Tagihan::create([
        'siswa_id'           => $request->siswa_id,
        'nama_tagihan'       => $request->nama_tagihan,
        'jenis_tagihan_id'   => $request->jenis_tagihan_id,
        'jumlah'             => $request->jumlah,
        'tgl_tagihan'        => $request->tgl_tagihan,
        'status'             => 'belum lunas',
        'semester_id'        => $semester->id,
        'tahun_pelajaran_id' => $tahunPelajaran->id,
    ]);

    return response()->json([
        'status' => true,
        'message' => 'Tagihan berhasil ditambahkan'
    ], 201);
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