<?php

namespace App\Http\Controllers\Staff;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Tagihan;
use App\Models\Siswa;
use App\Models\Kelas;

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
        $query->whereHas('kelas', function($q) use ($request) {
            $q->where('tingkat', $request->tingkat);
        });
    }

    // Filter status tagihan keseluruhan
    if ($request->filled('status')) {
        if ($request->status === 'Lunas') {
            // Hanya siswa yang semua tagihannya sudah Lunas
            $query->whereDoesntHave('tagihan', function($q) {
                $q->where('status', '!=', 'Lunas');
            });
        } elseif ($request->status === 'Belum Lunas') {
            // Siswa yang punya setidaknya 1 tagihan belum lunas
            $query->whereHas('tagihan', function($q) {
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