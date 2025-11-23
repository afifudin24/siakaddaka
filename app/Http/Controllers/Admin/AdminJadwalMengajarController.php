<?php

namespace App\Http\Controllers\Admin;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\HariAktif;
use App\Models\JamPelajaran;
use App\Models\JadwalMengajar;
use App\Models\DataMengajar;

class AdminJadwalMengajarController extends Controller
{
    /**
     * Step 1: pilih kelas
     */
  public function index(Request $request)
{
    $kelas_id = $request->kelas; // ambil kelas dari GET

    $kelas = Kelas::all();

    $jadwal_lama = collect();
    $hari = collect();
    $jam = collect();
    $data_mengajar = collect();

    if ($kelas_id) {
        $hari = HariAktif::all();
        $jam = JamPelajaran::all();

        $data_mengajar = DataMengajar::where('kelas_id', $kelas_id)->get();

        $jadwal_lama = JadwalMengajar::with('dataMengajar')
            ->whereHas('dataMengajar', fn($q) => $q->where('kelas_id', $kelas_id))
            ->get();
    }

    return view('admin.jadwal.index', compact(
        'kelas', 'kelas_id', 'hari', 'jam', 'data_mengajar', 'jadwal_lama'
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
public function store(Request $request, $kelas_id)
{
    $jadwal = $request->jadwal;

    // Hapus jadwal lama berdasarkan kelas via relasi data_mengajar
    JadwalMengajar::whereHas('dataMengajar', function ($q) use ($kelas_id) {
        $q->where('kelas_id', $kelas_id);
    })->delete();

    // Insert ulang jadwal baru
    foreach ($jadwal as $hari_id => $jamList) {
        foreach ($jamList as $jam_id => $dm_id) {

            if (!$dm_id) continue; // skip jika kosong

            JadwalMengajar::create([
                'hari_id' => $hari_id,
                'jam_pelajaran_id' => $jam_id,
                'data_mengajar_id' => $dm_id, // kelas ikut dari sini
            ]);
        }
    }

    return redirect()->route('jadwal.index')
                     ->with('success', 'Jadwal berhasil disimpan!');
}
}
