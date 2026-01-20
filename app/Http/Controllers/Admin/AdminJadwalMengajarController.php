<?php

namespace App\Http\Controllers\Admin;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\HariAktif;
use App\Models\JamPelajaran;
use App\Models\JadwalMengajar;
use App\Models\Kelas;
use App\Models\DataMengajar;
use Illuminate\Support\Facades\DB;

class AdminJadwalMengajarController extends Controller
{
    /**
     * Step 1: pilih kelas
     */
  public function index(Request $request)
{
      $kelas = Kelas::orderBy('tingkat')->orderBy('nama_kelas')->get();
       $hariAktif = HariAktif::with(['jamPelajaran' => function ($q) {
        $q->orderBy('jam_ke');
    }])->orderBy('urutan_hari')->get();

    if (!$request->filled('kelas_id')) {
        return view('pages.admin.jadwalmengajar.index', compact('kelas', 'hariAktif'));
    }

    $kelasId = $request->kelas_id;

    $hariAktif = HariAktif::with(['jamPelajaran' => function ($q) {
        $q->orderBy('jam_ke');
    }])->orderBy('urutan_hari')->get();

    $dataMengajar = DataMengajar::where('kelas_id', $kelasId)->get();

    $tahunpelajaranAktif = DB::table('tahun_pelajaran')
        ->where('is_active', true)
        ->first();

    $jadwal = JadwalMengajar::where('tahun_pelajaran_id', $tahunpelajaranAktif->id)->whereIn(
        'hari_id',
        $hariAktif->pluck('id')
    )->get()->keyBy(fn ($j) =>
        $j->hari_id . '-' . $j->jam_pelajaran_id
    );

    return view('pages.admin.jadwalmengajar.index', compact(
        'kelas',
        'hariAktif',
        'dataMengajar',
        'jadwal'
    ));
}

    /**
     * Step 2: tampilkan tabel jadwal berdasarkan kelas
     */
    public function show($kelas_id)
    {
        $hari = HariAktif::where('is_active', true)->get();
        $jam = JamPelajaran::orderBy('jam_ke')->get();

        // Ambil data mengajar sesuai kelas
        $data_mengajar = DataMengajar::where('kelas_id', $kelas_id)
            ->with('guru', 'mapel')
            ->get();

        // Ambil jadwal lama jika ada (untuk update)
        $jadwal_lama = JadwalMengajar::where('kelas_id', $kelas_id)->get();

        return view('admin.jadwal.show', compact(
            'kelas_id',
            'hari',
            'jam',
            'data_mengajar',
            'jadwal_lama'
        ));
    }

    /**
     * Step 3: simpan jadwal untuk satu kelas
     */
public function store(Request $request)
{
    DB::transaction(function () use ($request) {

        $tahunPelajaranAktif = DB::table('tahun_pelajaran')
            ->where('is_active', true)
            ->first();

        // Hapus jadwal lama KHUSUS kelas ini
        JadwalMengajar::whereIn('hari_id', array_keys($request->jadwal))
            ->where('tahun_pelajaran_id', $tahunPelajaranAktif->id)
            ->whereHas('dataMengajar', function ($q) use ($request) {
                $q->where('kelas_id', $request->kelas_id);
            })
            ->delete();

        // Insert ulang
        foreach ($request->jadwal as $hariId => $jams) {
            foreach ($jams as $jamId => $dataMengajarId) {
                if (!empty($dataMengajarId)) {
                    JadwalMengajar::create([
                        'hari_id'            => $hariId,
                        'jam_pelajaran_id'   => $jamId,
                        'data_mengajar_id'   => $dataMengajarId,
                        'tahun_pelajaran_id' => $tahunPelajaranAktif->id,
                    ]);
                }
            }
        }
    });

    return response()->json([
        'status' => true,
        'message' => 'Jadwal berhasil disimpan'
    ]);
}

}
