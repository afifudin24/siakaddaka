<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Support\Facades\DB;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Admin;
use App\Models\Guru;
use App\Models\Kelas;
use App\Models\Siswa;
use App\Models\Jurusan;
use App\Models\WaliKelas;
use App\Models\KetuaKelas;

class AdminKelasController extends Controller
{
    // buatkan resource controller
    public function index(){
      $kelas = Kelas::with(['waliKelas.guru', 'siswa'])
              ->withCount('siswa')
              ->get();


        return view('pages.admin.kelas.index', compact('kelas'));
    }
    // tambah kelas
    public function create(){
      $siswas = Siswa::where('kelas_id', null)->get();
     $guru = Guru::whereDoesntHave('walikelas')->get();
     $jurusan = Jurusan::all();
        return view('pages.admin.kelas.create', compact('siswas', 'guru', 'jurusan'));
    }

    public function show($kelas_id){

        $kelas = Kelas::with(['waliKelas.guru', 'siswa'])
        ->withCount('siswa')
        ->findOrFail($kelas_id);

        $siswa = Siswa::where('kelas_id', $kelas_id)->get();

     
        return view('pages.admin.kelas.show', compact('kelas'));
    }

    public function store(Request $request)
{
//   dd($request->siswa_ids);
    $request->validate([
        'nama_kelas' => 'required',
        'kode_kelas' => 'required|unique:kelas,kode_kelas',
        'tingkat' => 'required',
        'jurusan_id' => 'required',
        'guru_id' => 'required',       // wali kelas
        'ketua_kelas_id' => 'nullable', // ketua kelas
        'siswa_ids' => 'required'          // siswa yang masuk kelas ini
    ]);
    $siswaIds = json_decode($request->siswa_ids, true);
   if (!is_array($siswaIds)) {
    return back()->with('error', 'Format siswa tidak valid');
}

    if (count($siswaIds) === 0) {
    return back()->with('error', 'Pilih minimal satu siswa');
}

    DB::beginTransaction();
    try {

        // 1️⃣ Simpan kelas baru
        $kelas = Kelas::create([
            'nama_kelas' => $request->nama_kelas,
            'kode_kelas' => $request->kode_kelas,
            'tingkat' => $request->tingkat,
            'jurusan_id' => $request->jurusan_id,
            'ketua_kelas_id' => $request->ketua_kelas_id ?? null
        ]);

        // 2️⃣ Reset semua siswa yang sebelumnya punya kelas ini (jika ada)
        // (opsional untuk create, wajib untuk update)
         Siswa::where('kelas_id', $kelas->id)->update(['kelas_id' => null]);
         $validCount = Siswa::whereIn('id', $siswaIds)->count();

        // 3️⃣ Update siswa yang dipilih masuk kelas ini
         if ($validCount !== count($siswaIds)) {
        return back()->with('error', 'Terdapat siswa yang tidak valid.');
    }

    // lanjut update kelas_id siswa
    Siswa::whereIn('id', $siswaIds)
         ->update(['kelas_id' => $kelas->id]);

        // 4️⃣ Tambah wali kelas (tabel walikelas)
        WaliKelas::create([
            'kelas_id' => $kelas->id,
            'guru_id' => $request->guru_id
        ]);

        KetuaKelas::create([
            'kelas_id' => $kelas->id,
            'siswa_id' => $request->ketua_kelas
        ]);

        DB::commit();
        return redirect()->route('admin.kelas.index')
            ->with('success', 'Kelas berhasil ditambahkan.');

    } catch (\Exception $e) {
        DB::rollBack();
        return redirect()->back()->with('error', $e->getMessage());
    }
}

public function edit(Kelas $kela)
{

      $kela->load([
        'waliKelas.guru',
        'ketuaKelas',
        'siswa'
    ])->loadCount('siswa');

   
  
    // Guru yang belum jadi wali kelas atau memang wali kelas kelas ini
    $guru = Guru::whereDoesntHave('walikelas')
        ->orWhereHas('walikelas', function($q) use ($kela) {
            $q->where('kelas_id', $kela->id);
        })
        ->get();

    // Siswa yang belum memiliki kelas (list kiri)
    $siswas = Siswa::whereNull('kelas_id')->get();

    

    // Siswa kelas ini (list kanan)
    $siswaKelasIni = Siswa::with('ketuaKelas')->where('kelas_id', $kela->id)->get();
 

    $jurusan = Jurusan::all();
        $kelas = $kela;
    return view('pages.admin.kelas.edit', compact(
        'kelas',
        'guru',
        'jurusan',
        'siswas',
        'siswaKelasIni'
    ));
}

public function update(Request $request, $id)
{
    $request->validate([
        'nama_kelas' => 'required',
        'kode_kelas' => 'required|unique:kelas,kode_kelas,' . $id,
        'tingkat' => 'required',
        'jurusan_id' => 'required',
        'guru_id' => 'required',
        'ketua_kelas_id' => 'nullable',
        'siswa_ids' => 'required'
    ]);

    // Decode siswa_ids
    $siswaIds = json_decode($request->siswa_ids, true);

    if (!is_array($siswaIds)) {
        return back()->with('error', 'Format siswa tidak valid.');
    }

    if (count($siswaIds) === 0) {
        return back()->with('error', 'Pilih minimal satu siswa.');
    }

    DB::beginTransaction();

    try {

        // 1️⃣ Ambil data kelas
        $kelas = Kelas::findOrFail($id);

        // 2️⃣ Update data kelas kecuali wali & ketua
        $kelas->update([
            'nama_kelas' => $request->nama_kelas,
            'kode_kelas' => $request->kode_kelas,
            'tingkat' => $request->tingkat,
            'jurusan_id' => $request->jurusan_id,
            'ketua_kelas_id' => $request->ketua_kelas_id ?? null
        ]);

        // 3️⃣ Kosongkan kelas_id siswa lama
        Siswa::where('kelas_id', $kelas->id)->update(['kelas_id' => null]);

        // Validasi jumlah siswa
        $validCount = Siswa::whereIn('id', $siswaIds)->count();
        if ($validCount !== count($siswaIds)) {
            return back()->with('error', 'Terdapat siswa yang tidak valid.');
        }

        // 4️⃣ Assign siswa baru ke kelas ini
        Siswa::whereIn('id', $siswaIds)
            ->update(['kelas_id' => $kelas->id]);

        // 5️⃣ Update wali kelas
        WaliKelas::updateOrCreate(
            ['kelas_id' => $kelas->id],
            ['guru_id' => $request->guru_id]
        );

        // 6️⃣ Update ketua kelas
        if ($request->ketua_kelas) {
            KetuaKelas::updateOrCreate(
                ['kelas_id' => $kelas->id],
                ['siswa_id' => $request->ketua_kelas]
            );
        } else {
            // Jika ketua dihapus
            KetuaKelas::where('kelas_id', $kelas->id)->delete();
        }

        DB::commit();
        return redirect()->route('admin.kelas.index')
            ->with('success', 'Kelas berhasil diperbarui.');

    } catch (\Exception $e) {
        DB::rollBack();
        return back()->with('error', $e->getMessage());
    }
}
public function destroy(Request $request, $id)
{
    try {
        $siswa = Siswa::where('kelas_id', $id)->get();

        foreach ($siswa as $s) {
            $s->update(['kelas_id' => null]);
        }
        $kelas = Kelas::findOrFail($id);
        $kelas->delete();
        return redirect()->route('admin.kelas.index')
            ->with('success', 'Kelas berhasil dihapus.');
    } catch (\Exception $e) {
        return back()->with('error', $e->getMessage());
    }
}

}