<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\DataSekolah;
use Illuminate\Support\Facades\Auth;
class AuthController extends Controller
{
    

    public function login()
    {

        $datasekolah = DataSekolah::first();
        
        return view('pages.auth.login', compact('datasekolah'));
    }
    public function loginPost(Request $request){
            // Validasi
        $request->validate([
            'email' => 'required',
            'password' => 'required',
        ]);

        // Cek login menggunakan email atau username
        $loginType = filter_var($request->email, FILTER_VALIDATE_EMAIL) ? 'email' : 'username';

        $credentials = [
            $loginType => $request->email,
            'password' => $request->password
        ];

        // Ambil checkbox remember me (true/false)
        $remember = $request->has('remember');

        // Attempt login + remember me
        if (Auth::attempt($credentials, $remember)) {
            return redirect()->intended('/dashboard');
        }

        return back()->withErrors([
            'email' => 'Email/Username atau password salah.',
        ]);
    }
    public function register()
    {
        return view('pages.auth.register');
    }
    public function logout()
    {
        auth()->logout();
        return redirect('/');  
    }

    public function lupaPassword(){
        return view('pages.auth.lupa_password');
    }
    
}
