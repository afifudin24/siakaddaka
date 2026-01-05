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
use Illuminate\Validation\Rule;
class AdminKelasController extends Controller
{
    // buatkan resource controller
    public function index(){
      $kelas = Kelas::with(['waliKelas.guru', 'siswa'])
              ->withCount('siswa')->orderBy('nama_kelas', 'asc')
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
    $request->validate(
        [
            'nama_kelas' => [
                'required',
                Rule::unique('kelas')->where(function ($query) use ($request) {
                    return $query
                        ->where('nama_kelas', $request->nama_kelas)
                        ->where('kode_kelas', $request->kode_kelas);
                }),
            ],
            'kode_kelas' => 'required',
            'tingkat' => 'required',
            'jurusan_id' => 'required',
            'guru_id' => 'nullable',
            'ketua_kelas_id' => 'nullable',
            'siswa_ids' => 'nullable',
        ],
        [
            'nama_kelas.required' => 'Nama kelas wajib diisi.',
            'nama_kelas.unique'   => 'Kelas dengan nama dan kode tersebut sudah terdaftar.',
            'kode_kelas.required' => 'Kode kelas wajib diisi.',
            'tingkat.required'    => 'Tingkat wajib dipilih.',
            'jurusan_id.required' => 'Jurusan wajib dipilih.',
        ]
    );

    // decode siswa (boleh null)
    $siswaIds = $request->siswa_ids 
        ? json_decode($request->siswa_ids, true) 
        : [];

    if (!is_array($siswaIds)) {
        return back()->with('error', 'Format data siswa tidak valid');
    }

    DB::beginTransaction();
    try {

        // 1️⃣ Simpan kelas
        $kelas = Kelas::create([
            'nama_kelas' => $request->nama_kelas,
            'kode_kelas' => $request->kode_kelas,
            'tingkat' => $request->tingkat,
            'jurusan_id' => $request->jurusan_id,
        ]);

        // 2️⃣ Jika ADA siswa, baru diproses
        if (count($siswaIds) > 0) {

            $validCount = Siswa::whereIn('id', $siswaIds)->count();
            if ($validCount !== count($siswaIds)) {
                return back()->with('error', 'Terdapat siswa yang tidak valid.');
            }

            Siswa::whereIn('id', $siswaIds)
                ->update(['kelas_id' => $kelas->id]);
        }

        // 3️⃣ Jika ADA wali kelas
        if ($request->filled('guru_id')) {
            WaliKelas::create([
                'kelas_id' => $kelas->id,
                'guru_id' => $request->guru_id
            ]);
        }

        // 4️⃣ Jika ADA ketua kelas
        if ($request->filled('ketua_kelas_id')) {
            KetuaKelas::create([
                'kelas_id' => $kelas->id,
                'siswa_id' => $request->ketua_kelas_id
            ]);
        }

        DB::commit();
        return redirect()
            ->route('admin.kelas.index')
            ->with('success', 'Kelas berhasil ditambahkan.');

    } catch (\Exception $e) {
        DB::rollBack();
        return back()->with('error', 'Terjadi kesalahan saat menyimpan data.');
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
        'guru_id' => 'nullable',
        'ketua_kelas_id' => 'nullable',
        'siswa_ids' => 'nullable',
    ]);

    $siswaIds = $request->siswa_ids
        ? json_decode($request->siswa_ids, true)
        : [];

    if (!is_array($siswaIds)) {
        return back()->with('error', 'Format siswa tidak valid.');
    }

    DB::beginTransaction();

    try {
        $kelas = Kelas::findOrFail($id);

        $kelas->update([
            'nama_kelas' => $request->nama_kelas,
            'kode_kelas' => $request->kode_kelas,
            'tingkat' => $request->tingkat,
            'jurusan_id' => $request->jurusan_id,
            'ketua_kelas_id' => $request->ketua_kelas_id ?? null
        ]);

        // reset siswa lama
        Siswa::where('kelas_id', $kelas->id)->update(['kelas_id' => null]);

        // assign siswa baru (jika ada)
        if (count($siswaIds) > 0) {
            $validCount = Siswa::whereIn('id', $siswaIds)->count();
            if ($validCount !== count($siswaIds)) {
                return back()->with('error', 'Terdapat siswa yang tidak valid.');
            }

            Siswa::whereIn('id', $siswaIds)
                ->update(['kelas_id' => $kelas->id]);
        }

        // wali kelas
        if ($request->guru_id) {
            WaliKelas::updateOrCreate(
                ['kelas_id' => $kelas->id],
                ['guru_id' => $request->guru_id]
            );
        } else {
            WaliKelas::where('kelas_id', $kelas->id)->delete();
        }

        // ketua kelas
        if ($request->ketua_kelas_id) {
            KetuaKelas::updateOrCreate(
                ['kelas_id' => $kelas->id],
                ['siswa_id' => $request->ketua_kelas_id]
            );
        } else {
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