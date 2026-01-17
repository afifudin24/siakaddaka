<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Admin;
use App\Models\PembimbingPKL;
use App\Models\Guru;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\File;



class AdminPembimbingPKLController extends Controller
{
   public function index(Request $request)
{
    $search   = $request->search;
    $perPage  = $request->paginate ?? 20;
    $tahunPelajaranAktif = DB::table('tahun_pelajaran')
        ->where('is_active', true)
        ->first();

    $pembimbingPKL = PembimbingPKL::query()
    ->join('guru', 'guru.id', '=', 'pembimbing_pkl.guru_id')
    ->with(['guru', 'dudi'])
    ->when($search, function ($query) use ($search) {
        $query->where(function ($q) use ($search) {
            $q->where('guru.nama', 'like', "%{$search}%")
              ->orWhere('guru.nip', 'like', "%{$search}%");
        });
    })
    ->where('pembimbing_pkl.tahun_pelajaran_id', $tahunPelajaranAktif->id)
    ->orderBy('guru.nama', 'asc')
    ->select('pembimbing_pkl.*') // ⬅️ PENTING
    ->paginate($perPage)
    ->withQueryString();


    return view('pages.admin.pembimbing_pkl.index', compact('pembimbingPKL'));
}

public function add()
{
    // Ambil semua guru_id yang sudah jadi pembimbing PKL
    $guruSudahPembimbing = PembimbingPKL::pluck('guru_id');

    // Ambil guru yang BELUM ada di pembimbing PKL
    $guru = Guru::whereNotIn('id', $guruSudahPembimbing)
                ->orderBy('nama', 'asc')
                ->get();

    return view('pages.admin.pembimbing_pkl.create', compact('guru'));
}
 public function storeMassal(Request $request)
    {
        $request->validate([
            'guru_ids' => 'required|array|min:1',
            'guru_ids.*' => 'exists:guru,id',
        ], [
            'guru_ids.required' => 'Minimal pilih 1 guru',
            'guru_ids.min' => 'Minimal pilih 1 guru',
        ]);

        $tahunPelajaranAktif = DB::table('tahun_pelajaran')
            ->where('is_active', true)
            ->first();

        DB::beginTransaction();
        try {
            foreach ($request->guru_ids as $guruId) {
                PembimbingPKL::firstOrCreate([
                    'guru_id' => $guruId,
                    'tahun_pelajaran_id' => $tahunPelajaranAktif->id,
                ]);
            }

            DB::commit();
            return response()->json([
                'message' => 'Pembimbing PKL berhasil ditambahkan'
            ]);
        } catch (\Exception $e) {
            DB::rollBack();
            return response()->json([
                'message' => 'Terjadi kesalahan'
            ], 500);
        }
    }

    /**
     * TAMBAH PER USER
     */
    public function storeSingle(Request $request)
    {
        $request->validate([
            'guru_id' => 'required|exists:guru,id',
        ]);
        $tahunPelajaranAktif = DB::table('tahun_pelajaran')
            ->where('is_active', true)
            ->first();

        $cek = PembimbingPKL::where('guru_id', $request->guru_id)->exists();
        if ($cek) {
            return response()->json([
                'message' => 'Guru ini sudah terdaftar sebagai Pembimbing PKL'
            ], 422);
        }

        PembimbingPKL::create([
            'guru_id' => $request->guru_id,
            'tahun_pelajaran_id' => $tahunPelajaranAktif->id,
        ]);

        return response()->json([
            'message' => 'Pembimbing PKL berhasil ditambahkan'
        ]);
    }
}