<?php

namespace App\Http\Controllers\Admin;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\HariAktif;
use App\Models\JamPelajaran;
use App\Models\JadwalMengajar;
use App\Models\DataMengajar;

class AdminJamPelajaranController extends Controller
{

 public function index($hari_id)
    {
        return response()->json([
            'data' => JamPelajaran::where('hari_id', $hari_id)
                ->orderBy('jam_ke')
                ->get()
        ]);
    }

    public function store(Request $request, $hari_id)
    {
        $request->validate([
            'jams' => 'required|array'
        ]);

        // hapus data lama
        JamPelajaran::where('hari_id', $hari_id)->delete();

        // simpan data baru
        foreach ($request->jams as $jam) {
            JamPelajaran::create([
                'hari_id' => $hari_id,
                'jam_ke'  => $jam['jam_ke'],
                'mulai'   => $jam['mulai'],
                'selesai' => $jam['selesai'],
            ]);
        }

        return response()->json(['status' => true]);
    }
}