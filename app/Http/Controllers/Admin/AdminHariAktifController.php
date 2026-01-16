<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Admin;
use App\Models\User;
use App\Models\Guru;
use App\Models\HariAktif;
use Illuminate\Support\Facades\Hash;
use App\Exports\GuruTemplateExport;
use App\Imports\GuruImport;
use Maatwebsite\Excel\Facades\Excel;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Storage;
use Illuminate\Validation\ValidationException;

class AdminHariAktifController extends Controller
{
    public function index()
    {
        $hariaktif = HariAktif::all();
        return view('pages.admin.hariaktif.index', compact('hariaktif'));
    }
public function store(Request $request)
{
    $request->validate([
        'urutan_hari' => 'required|integer|min:1|max:7',
    ]);

    // Cek apakah hari sudah ada
    $cek = HariAktif::where('urutan_hari', $request->urutan_hari)->exists();

    if ($cek) {
        return response()->json([
            'status'  => false,
            'message' => 'Hari tersebut sudah ditambahkan'
        ], 409); // 409 = Conflict (tepat secara HTTP)
    }

    $mapHari = [
        1 => 'Senin',
        2 => 'Selasa',
        3 => 'Rabu',
        4 => 'Kamis',
        5 => 'Jumat',
        6 => 'Sabtu',
        7 => 'Minggu',
    ];

    HariAktif::create([
        'urutan_hari' => $request->urutan_hari,
        'nama_hari'   => $mapHari[$request->urutan_hari],
    ]);

    return response()->json([
        'status'  => true,
        'message' => 'Hari aktif berhasil ditambahkan'
    ], 201);
}

public function destroy($id)
{
    $hariaktif = HariAktif::findOrFail($id);
    $hariaktif->delete();
    return response()->json([
        'status'  => true,
        'message' => 'Hari aktif berhasil dihapus'
    ]);
}

}