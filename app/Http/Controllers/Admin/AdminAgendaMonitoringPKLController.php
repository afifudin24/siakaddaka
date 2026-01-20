<?php
namespace App\Http\Controllers\Admin;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Admin;
use App\Models\AgendaMonitoringPKL;
use App\Models\TahunPelajaran;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\File;
class AdminAgendaMonitoringPKLController extends Controller
{
   public function index(Request $request)
{
    // 🔥 Ambil tahun pelajaran aktif
    $tahunPelajaranAktif = TahunPelajaran::where('is_active', '1')->first();
    // Jika request kosong → pakai tahun aktif
    $tahunPelajaranId = $request->tahun_pelajaran_id 
        ?? $tahunPelajaranAktif?->id;
    $tglMulai   = $request->tanggal_mulai;
    $tglSelesai = $request->tanggal_selesai;
    $perPage    = $request->paginate ?? 10;
    $tahunPelajaran = TahunPelajaran::orderBy('nama', 'desc')->get();
    $agenda = AgendaMonitoringPKL::with('tahunPelajaran')
        ->when($tahunPelajaranId, function ($q) use ($tahunPelajaranId) {
            $q->where('tahun_pelajaran_id', $tahunPelajaranId);
        })
        ->when($tglMulai, function ($q) use ($tglMulai) {
            $q->whereDate('tanggal_mulai', '>=', $tglMulai);
        })
        ->when($tglSelesai, function ($q) use ($tglSelesai) {
            $q->whereDate('tanggal_selesai', '<=', $tglSelesai);
        })
        ->orderBy('tanggal_mulai', 'desc')
        ->paginate($perPage)
        ->withQueryString();
    return view(
        'pages.admin.agenda_monitoring_pkl.index',
        compact('agenda', 'tahunPelajaran', 'tahunPelajaranAktif', 'tahunPelajaranId', 'tglMulai', 'tglSelesai', 'perPage')
    );
}
public function store(Request $request)
{
    $request->validate([
        'nama_agenda' => 'required',
        'tanggal_mulai' => 'required|date',
        'tanggal_akhir' => 'required|date',
    ]);
    $tahun = TahunPelajaran::where('is_active', 1)->first();
    AgendaMonitoringPKL::create([
        'nama_agenda' => $request->nama_agenda,
        'tanggal_mulai' => $request->tanggal_mulai,
        'tanggal_selesai' => $request->tanggal_akhir,
        'catatan' => $request->catatan,
        'tahun_pelajaran_id' => $tahun->id,
    ]);
    return response()->json([
        'message' => 'Agenda monitoring berhasil ditambahkan'
    ]);
}
public function update(Request $request, $id)
{
    $request->validate([
        'nama_agenda'   => 'required',
        'tanggal_mulai' => 'required|date',
        'tanggal_akhir' => 'required|date',
        'catatan'       => 'required',
    ]);

    $agenda = AgendaMonitoringPKL::findOrFail($id);

    $agenda->update([
        'nama_agenda'   => $request->nama_agenda,
        'tanggal_mulai' => $request->tanggal_mulai,
        'tanggal_selesai' => $request->tanggal_akhir,
        'catatan'       => $request->catatan,
    ]);

    return response()->json([
        'message' => 'Agenda monitoring berhasil diperbarui'
    ]);
}

public function destroy($id)
{
    $agenda = AgendaMonitoringPKL::findOrFail($id);
    $agenda->delete();

    return response()->json([
        'message' => 'Agenda monitoring berhasil dihapus'
    ]);
}


}