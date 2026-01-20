<?php
namespace App\Http\Controllers\Admin;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Admin;
use App\Models\AgendaMonitoringPKL;
use App\Models\TahunPelajaran;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\File;
class AdminKriteriaNilaiPKLController extends Controller
{
    public function index(){
        $kriteriaNilaiPKL = KriteriaNilaiPKL::all();
        return view('pages.admin.kriteria_pkl.index', compact('kriteriaNilaiPKL'));
    }
}