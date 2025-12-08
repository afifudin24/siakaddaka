<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Admin;
use App\Models\Guru;
use App\Models\Kelas;
use App\Models\Siswa;
use App\Models\Jurusan;
use App\Models\WaliKelas;
use App\Models\KetuaKelas;
use App\Models\Mapel;
use App\Models\KategoriMapel;

class AdminMapelController extends Controller
{
    public function index(){
        $mapel = Mapel::with('kategori')->get();
        // dd($mapel);
        $kategorimapel = KategoriMapel::all();
        return view('pages.admin.mapel.index', compact('mapel', 'kategorimapel'));
    }

    public function store(Request $request){
       
        $validator = Validator::make($request->all(), [
            'kategori_mapel_id' => 'required',
            'nama_mapel' => 'required|string|max:255',
        ], [
            'kategori_mapel_id.required' => 'Kategori mapel wajib diisi.',
            'nama_mapel.required' => 'Nama mapel wajib diisi.',
            'nama_mapel.string' => 'Nama mapel harus berupa teks.',
            'nama_mapel.max' => 'Nama mapel maksimal 255 karakter.',
        ]);
     

        $mapel = new Mapel;
        $mapel->kategori_mapel_id = $request->kategori_mapel_id;
        $mapel->nama_mapel = $request->nama_mapel;
        $mapel->save();

        return redirect()->route('admin.mapel.index')
            ->with('success', 'Mapel berhasil ditambahkan.');
    }


    public function update(Request $request, $id){
        $validator = Validator::make($request->all(), [
            'kategori_mapel_id' => 'required',
            'nama_mapel' => 'required|string|max:255',
        ], [
            'kategori_mapel_id.required' => 'Kategori mapel wajib diisi.',
            'nama_mapel.required' => 'Nama mapel wajib diisi.',
            'nama_mapel.string' => 'Nama mapel harus berupa teks.',
            'nama_mapel.max' => 'Nama mapel maksimal 255 karakter.',
        ]);

        $mapel = Mapel::findOrFail($id);
        $mapel->kategori_mapel_id = $request->kategori_mapel_id;
        $mapel->nama_mapel = $request->nama_mapel;
        $mapel->save();

        return redirect()->route('admin.mapel.index')
            ->with('success', 'Mapel berhasil diubah.');
    }

    public function destroy($id){
        $mapel = Mapel::findOrFail($id);
        $mapel->delete();
        return redirect()->route('admin.mapel.index')
            ->with('success', 'Mapel berhasil dihapus.');
    }
}