<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Admin;
use App\Models\Guru;
use App\Models\Kelas;
use App\Models\DataMengajar;
use App\Models\Mapel;
use Illuminate\Support\Facades\DB;

class AdminDataMengajarController extends Controller
{
  public function dataMengajarPerGuru($id)
{
    $guru = Guru::findOrFail($id);
    $mapels = Mapel::all();

    $datamengajar = DataMengajar::with(['kelas', 'mapel'])
        ->where('guru_id', $id)
        ->get();

    $selectedMapels = $datamengajar->pluck('mapel_id')->unique()->toArray();

    // format: [mapel_id => [kelas_id, kelas_id]]
    $kelasPerMapel = [];
    foreach ($datamengajar as $dm) {
        $kelasPerMapel[$dm->mapel_id][] = $dm->kelas_id;
    }

    return view(
        'pages.admin.guru.datamengajar',
        compact('guru', 'mapels', 'selectedMapels', 'kelasPerMapel')
    );
}

    public function kelasByMapel(Request $request)
{
    $mapelId = $request->mapel_id;
    $guruId  = $request->guru_id;

    $kelas = Kelas::with(['jurusan'])->get();

    $existing = DataMengajar::with('guru')
        ->where('mapel_id', $mapelId)
        ->get()
        ->keyBy('kelas_id');

    return response()->json([
        'kelas' => $kelas,
        'existing' => $existing
    ]);
}
public function update(Request $request, $guruId)
{
    $guru = Guru::findOrFail($guruId);

    $requestMapel = $request->kelas_mapel ?? [];

    // ambil semua data mengajar guru ini
    $existingData = DataMengajar::where('guru_id', $guru->id)->get();

    DB::beginTransaction();

    try {

        foreach ($requestMapel as $mapelId => $kelasIds) {

            // ============================
            // 1. INSERT / UPDATE
            // ============================
            foreach ($kelasIds as $kelasId) {

                // cek bentrok guru lain
                $exists = DataMengajar::where('mapel_id', $mapelId)
                    ->where('kelas_id', $kelasId)
                    ->where('guru_id', '!=', $guru->id)
                    ->exists();

                if ($exists) continue;

                DataMengajar::updateOrCreate(
                    [
                        'guru_id'  => $guru->id,
                        'mapel_id' => $mapelId,
                        'kelas_id' => $kelasId,
                    ],
                    [
                        'jam_mengajar' => 0,
                        'pertemuan_per_minggu' => 0,
                    ]
                );
            }

            // ============================
            // 2. DELETE YANG DIHAPUS DI UI
            // ============================
            DataMengajar::where('guru_id', $guru->id)
                ->where('mapel_id', $mapelId)
                ->whereNotIn('kelas_id', $kelasIds)
                ->delete();
        }

        // ============================
        // 3. JIKA MAPEL DIHAPUS TOTAL
        // ============================
        DataMengajar::where('guru_id', $guru->id)
            ->whereNotIn('mapel_id', array_keys($requestMapel))
            ->delete();

        DB::commit();

        return response()->json([
            'status' => true,
            'message' => 'Data mengajar berhasil disinkronkan'
        ]);

    } catch (\Throwable $e) {

        DB::rollBack();

        return response()->json([
            'status' => false,
            'message' => 'Terjadi kesalahan: ' . $e->getMessage()
        ], 500);
    }
}


}