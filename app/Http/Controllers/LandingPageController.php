<?php
namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Models\DataSekolah;
class LandingPageController extends Controller
{
    public function index()
    {
        $datasekolah = DataSekolah::first();
       
       return view('landing', compact('datasekolah'));
    }
}