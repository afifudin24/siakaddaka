<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Admin;
use App\Models\Kelas;
use App\Models\Siswa;
use App\Models\Guru;

class AdminSiswaController extends Controller
 {
    public function index( Request $request )
 {
        // Ambil semua kelas ( untuk dropdown filter )
        $kelas = Kelas::all();
        // Query awal
        $query = Siswa::with( 'kelas' );
        // Jika ada filter kelas
        if ( $request->kelas_id ) {
            // Tampilkan siswa tanpa kelas
            if ( $request->kelas_id === 'null' ) {
                $query->whereNull( 'kelas_id' );
            }
            // Jika 'all' → jangan beri filter kelas sama sekali
            else if ( $request->kelas_id === 'all' ) {
                // Tidak memberikan where → tampilkan semua siswa
            }

            // Filter sesuai kelas tertentu
            else {
                $query->where( 'kelas_id', $request->kelas_id );
            }

        }

        // Ambil data siswa ( filtered atau all )
        // sort by asc nama

        $siswa = $query->orderBy('nama')->get();

        return view( 'pages.admin.siswa.index', compact( 'siswa', 'kelas' ) );
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

}