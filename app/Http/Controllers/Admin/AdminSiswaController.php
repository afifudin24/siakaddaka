<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Imports\SiswaImport;
use App\Exports\SiswaTemplateExport;
use Maatwebsite\Excel\Facades\Excel;

use App\Models\Admin;
use App\Models\Kelas;
use App\Models\Siswa;
use App\Models\Guru;

class AdminSiswaController extends Controller
 {
    public function index(Request $request)
{
    $kelas = Kelas::all();

    $query = Siswa::with('kelas');

    // FILTER SEARCH
    if ($request->search) {
        $query->where('nama', 'like', '%' . $request->search . '%');
    }

    // FILTER KELAS
    if ($request->kelas_id) {
        if ($request->kelas_id === 'null') {
            $query->whereNull('kelas_id');
        } elseif ($request->kelas_id !== 'all') {
            $query->where('kelas_id', $request->kelas_id);
        }
    }

    // PAGINATION
    $perPage = $request->paginate ?? 10;

    $siswa = $query->orderBy('nama')
                   ->paginate($perPage)
                   ->appends($request->query());

    return view('pages.admin.siswa.index', compact('siswa', 'kelas'));
}


    public function destroy( $id ) {
        $siswa = Siswa::findOrFail( $id );
        $siswa->delete();
        return redirect()->back()->with('success', 'Berhasil menghapus data.');
    }

    public function massdelete(Request $request)
    {
      
                 if (!$request->selected) {
            return redirect()->back()->with('error', 'Tidak ada data yang dipilih.');
        }
    
        Siswa::whereIn('id', $request->selected)->delete();
    
        return redirect()->back()->with('success', 'Berhasil menghapus data terpilih.');
       
        
      
       
    }
    public function massleave(Request $request) {
        if (!$request->selected) {
            return redirect()->back()->with('error', 'Tidak ada data yang dipilih.');
        }
    
        Siswa::whereIn('id', $request->selected)->update(['kelas_id' => null]);
    
        return redirect()->back()->with('success', 'Berhasil mengeluarkan dari kelas.');
    }

    public function importView() {
        return view('pages.admin.siswa.import');
    }
    public function downloadTemplate()
{
    return Excel::download(new SiswaTemplateExport, 'Template-Siswa.xlsx');
}

public function previewExcel(Request $request)
{
    $request->validate([
        'file' => 'required|mimes:xls,xlsx'
    ]);

    $data = Excel::toArray([], $request->file('file'));

    // Ambil sheet pertama
    $rows = $data[0];

    return response()->json([
        'status' => 'success',
        'rows' => $rows
    ]);
}

public function importExcel(Request $request)
{
    $request->validate([
        'file' => 'required|mimes:xlsx,xls'
    ]);

    try {
        Excel::import(new SiswaImport, $request->file('file'));

        return response()->json([
            'status' => 'success',
            'message' => 'Import data siswa berhasil!'
        ]);
    } catch (\Exception $e) {
        return response()->json([
            'status' => 'error',
            'message' => 'Terjadi kesalahan: ' . $e->getMessage()
        ], 500);
    }
}


}