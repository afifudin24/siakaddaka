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
         $user = Auth::user();
     
        switch ($user->role) {
            case 'admin':
              
            return redirect('admin/dashboard')->with('login_success', true);

            case 'guru':
               return redirect('/guru/dashboard')->with('login_success', true);

            case 'siswa':
              return  redirect('/siswa/dashboard');

            case 'staff':
               return redirect('/staff/dashboard');

            default:
                abort(403, 'Akses tidak diizinkan');
        }
    
}



        return back()->withErrors([
            'email' => 'Email/Username atau password salah.',
        ]);
    }

    public function loginAjax(Request $request)
{
    $request->validate([
        'email' => 'required',
        'password' => 'required',
    ]);

    $loginType = filter_var($request->email, FILTER_VALIDATE_EMAIL) ? 'email' : 'username';

    $credentials = [
        $loginType => $request->email,
        'password' => $request->password
    ];

    $remember = $request->has('remember');

    if (Auth::attempt($credentials, $remember)) {

        $user = Auth::user();

        switch ($user->role) {
            case 'admin':
                return response()->json([
                    'status' => 'success',
                    'redirect' => url('/admin/dashboard'),
                    'message' => 'Login Berhasil! Mengalihkan...'
                ]);

            case 'guru':
                return response()->json([
                    'status' => 'success',
                    'redirect' => url('/guru/dashboard'),
                    'message' => 'Login Berhasil! Mengalihkan...'
                ]);

            case 'siswa':
                return response()->json([
                    'status' => 'success',
                    'redirect' => url('/siswa/dashboard'),
                    'message' => 'Login Berhasil! Mengalihkan...'
                ]);

            case 'staff':
                return response()->json([
                    'status' => 'success',
                    'redirect' => url('/staff/dashboard'),
                    'message' => 'Login Berhasil! Mengalihkan...'
                ]);
        }
    }

    return response()->json([
        'status' => 'error',
        'message' => 'Email/username atau password salah.'
    ], 401);
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
