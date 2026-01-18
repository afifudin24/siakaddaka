<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Admin;
use App\Models\Jurusan;
use App\Models\Dudi;
use App\Models\PesertaPKL;
use App\Models\PembimbingPKL;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\File;

class AdminDudiController extends Controller
{
   public function index(Request $request)
{
    $jurusanId = $request->jurusan_id;
    $search    = $request->search;
    $perPage   = $request->paginate ?? 20;

    $dudi = Dudi::with(['jurusan', 'pembimbingPkl.guru'])
        ->when($jurusanId && $jurusanId != 'all', function($query) use ($jurusanId) {
            $query->where('jurusan_id', $jurusanId);
        })
        ->when($search, function($query) use ($search) {
            $query->where('nama_dudi', 'like', "%{$search}%");
        })
        ->orderBy('nama_dudi', 'asc')
        ->paginate($perPage)
        ->withQueryString(); // agar query tetap ada saat paginate

    $jurusan = Jurusan::orderBy('nama_jurusan', 'asc')->get();

    return view('pages.admin.dudi.index', compact('dudi', 'jurusan'));
}
public function add()
{
    $jurusan = Jurusan::orderBy('nama_jurusan', 'asc')->get();
 $pesertaPKL = PesertaPKL::join('siswa', 'siswa.id', '=', 'peserta_pkl.siswa_id')
    ->with('siswa')
    ->whereNull('dudi_id')
    ->orderBy('siswa.nama', 'asc')
    ->select('peserta_pkl.*')
    ->get();


  $pembimbing = PembimbingPKL::join('guru', 'guru.id', '=', 'pembimbing_pkl.guru_id')
    ->with('guru') // tetap eager load supaya bisa diakses di view
    ->orderBy('guru.nama', 'asc')
    ->select('pembimbing_pkl.*') // wajib supaya model tetap PembimbingPKL
    ->get();

    return view('pages.admin.dudi.add', compact('jurusan', 'pesertaPKL', 'pembimbing'));
}
public function store(Request $request)
{
    $request->validate([
        'nama_dudi' => 'required|string|max:255',
        'bidang_usaha' => 'required|string|max:255',
        'alamat' => 'required|string',
        'jurusan_id' => 'required|exists:jurusan,id',
        'kontak' => 'required|numeric',
        'pembimbing_pkl_id' => 'required|exists:pembimbing_pkl,id',
        'pimpinan_dudi' => 'nullable|string|max:255',
        'peserta_ids' => 'nullable|string', // json array peserta PKL
        'pembimbing_dudi' => 'nullable|string|max:255',
    ]);

    try {
        // Simpan DUDI
        $dudi = Dudi::create([
            'nama_dudi' => $request->nama_dudi,
            'bidang_usaha' => $request->bidang_usaha,
            'alamat' => $request->alamat,
            'jurusan_id' => $request->jurusan_id,
            'kontak' => $request->kontak,
            'pembimbing_pkl_id' => $request->pembimbing_pkl_id,
            'pimpinan_dudi' => $request->pimpinan_dudi,
            'pembimbing_dudi' => $request->pembimbing_dudi,
        ]);

        // Jika ada peserta PKL yang dipilih, update dudi_id mereka
        if ($request->peserta_ids) {
            $pesertaIds = json_decode($request->peserta_ids, true);
            PesertaPKL::whereIn('id', $pesertaIds)->update(['dudi_id' => $dudi->id]);
        }

        return response()->json([
            'success' => true,
            'message' => 'DUDI berhasil ditambahkan'
        ]);
    } catch (\Exception $e) {
        return response()->json([
            'success' => false,
            'message' => 'Terjadi kesalahan: ' . $e->getMessage()
        ], 500);
    }
}
public function edit($id)
{
    $dudi = Dudi::with([
        'pembimbingPkl',
        'jurusan',
        'pesertaPkl' => function ($q) {
            $q->with('siswa');
        }
    ])->findOrFail($id);

    // Peserta PKL yang BELUM punya DUDI + yang SUDAH di DUDI ini
  $pesertaPKL = PesertaPKL::query()
    ->join('siswa', 'siswa.id', '=', 'peserta_pkl.siswa_id')
    ->where(function ($q) use ($id) {
        $q->whereNull('peserta_pkl.dudi_id')
          ->orWhere('peserta_pkl.dudi_id', $id);
    })
    ->orderBy('siswa.nama', 'asc')
    ->select('peserta_pkl.*') // 🔥 penting supaya model tetap PesertaPKL
    ->with('siswa')           // eager load relasi tetap jalan
    ->get();


    $jurusan = Jurusan::orderBy('nama_jurusan')->get();
    $pembimbing = PembimbingPKL::query()
    ->join('guru', 'guru.id', '=', 'pembimbing_pkl.guru_id')
    ->orderBy('guru.nama', 'asc')
    ->select('pembimbing_pkl.*') // 🔥 wajib
    ->with('guru')               // eager load tetap jalan
    ->get();


    // ambil ID peserta yang sudah terkait dengan DUDI
    $selectedPesertaIds = $dudi->pesertaPkl->pluck('id')->toArray();

    return view('pages.admin.dudi.edit', compact(
        'dudi',
        'pesertaPKL',
        'jurusan',
        'pembimbing',
        'selectedPesertaIds'
    ));
}

public function update(Request $request, $id)
{
    $request->validate([
        'nama_dudi' => 'required|string|max:255',
        'kontak' => 'required',
        'bidang_usaha' => 'required|string',
        'alamat' => 'required|string',
        'jurusan_id' => 'required|exists:jurusan,id',
        'pembimbing_pkl_id' => 'nullable|exists:pembimbing_pkl,id',
    ]);

    DB::beginTransaction();
    try {

        $dudi = Dudi::findOrFail($id);

        $dudi->update([
            'nama_dudi'        => $request->nama_dudi,
            'pimpinan_dudi'    => $request->pimpinan_dudi,
            'kontak'           => $request->kontak,
            'pembimbing_dudi'  => $request->pembimbing_dudi,
            'bidang_usaha'     => $request->bidang_usaha,
            'alamat'           => $request->alamat,
            'jurusan_id'       => $request->jurusan_id,
            'pembimbing_pkl_id'=> $request->pembimbing_pkl_id,
        ]);

        // ===============================
        // RESET peserta PKL lama
        // ===============================
        PesertaPKL::where('dudi_id', $dudi->id)
            ->update(['dudi_id' => null]);

        // ===============================
        // SET peserta PKL baru
        // ===============================
        $pesertaIds = json_decode($request->peserta_ids, true) ?? [];

        if (count($pesertaIds) > 0) {
            PesertaPKL::whereIn('id', $pesertaIds)
                ->update([
                    'dudi_id' => $dudi->id,
                    'status'  => 'aktif'
                ]);
        }

        DB::commit();

        return response()->json([
            'success' => true,
            'message' => 'Data DUDI berhasil diperbarui'
        ]);

    } catch (\Throwable $e) {
        DB::rollBack();

        return response()->json([
            'success' => false,
            'message' => $e->getMessage()
        ], 500);
    }
}





}