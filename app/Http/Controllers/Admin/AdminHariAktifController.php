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
        return view('admin.hariaktif.index', compact('hariaktif'));
    }

}