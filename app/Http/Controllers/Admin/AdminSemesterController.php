<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Admin;
use App\Models\Guru;
use App\Models\Semester;
use App\Models\TahunPelajaran;

class AdminSemesterController extends Controller
{
    public function index()
    {
        $data = Semester::with('tahunPelajaran')->get();
        $tahun_pelajaran = TahunPelajaran::all();
        return view('pages.admin.semester.index', compact('data', 'tahun_pelajaran'));
    }

    public function store(Request $request)
    {
        $request->validate([
            'tahun_pelajaran_id' => 'required',
            'nama' => 'required',
            'tanggal_mulai' => 'required',
            'tanggal_selesai' => 'required',
            'is_active' => 'required'
        ]);

        $semesterbaru = Semester::create([
            'tahun_pelajaran_id' => $request->tahun_pelajaran_id,
            'nama' => $request->nama,
            'is_active' => $request->is_active,
            'tanggal_mulai' => $request->tanggal_mulai,
            'tanggal_selesai' => $request->tanggal_selesai

        ]);

        return redirect()->back()->with('success', 'Semester berhasil ditambahkan');
    }
}