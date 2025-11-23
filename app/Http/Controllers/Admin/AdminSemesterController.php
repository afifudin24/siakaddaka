<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Admin;
use App\Models\Guru;

class AdminSemesterController extends Controller
{
    public function index()
    {
        $data = Semester::all();
        return view('semester.index', compact('data'));
    }
}