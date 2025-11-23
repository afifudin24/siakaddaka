@extends('layouts.auth')
@section('content')

<body>

<section class="auth forgot-password-page bg-base d-flex flex-wrap">  
    <div class="auth-left d-lg-block d-none">
        <div class="d-flex align-items-center flex-column h-100 justify-content-center">
            <img src="assets/images/auth/forgot-pass-img.png" alt="">
        </div>
    </div>
    <div class="auth-right py-32 px-24 d-flex flex-column justify-content-center">
        <div class="max-w-464-px mx-auto w-100">
            <div>
                <h4 class="mb-12">Lupa Password</h4>
                <p class="mb-32 text-secondary-light text-lg">Silahkan masukan email yang terdaftar untuk melakukan reset password.</p>
            </div>
            <form action="#">
                <div class="icon-field">
                    <span class="icon top-50 translate-middle-y">
                        <iconify-icon icon="mage:email"></iconify-icon>
                    </span>
                    <input type="email" class="form-control h-56-px bg-neutral-50 radius-12" placeholder="Masukkan Email">
                </div>
                <button type="button" class="btn btn-primary text-sm btn-sm px-12 py-16 w-100 radius-12 mt-32" id="reset-password-btn">Reset Password</button>

                <div class="text-center">
                    <a href="sign-in.html" class="text-primary-600 fw-bold mt-24">Kembali Ke Login</a>
                </div>
                
                <div class="mt-120 text-center text-sm">
                    <p class="mb-0">Sudah punya akun? <a href="/login" class="text-primary-600 fw-semibold">Log In</a></p>
                </div>
            </form>
        </div>
    </div>
</section>

<!-- Modal -->
<div class="modal fade" id="modalResetPassword" tabindex="-1" aria-hidden="true">
    <div class="modal-dialog modal-dialog modal-dialog-centered">
        <div class="modal-content radius-16 bg-base">
        <div class="modal-body p-40 text-center">
            <div class="mb-20">
               <i class="ri-mail-send-line scale-50 fs-1 text-primary-600"></i>
            </div>
            <h6 class="mb-12">Verifikasi Emailmu</h6>
            <p class="text-secondary-light text-sm mb-0">Terimakasih, cek emailmu untuk melakukan verifikasi</p>
            <button type="button" class="btn btn-primary text-sm btn-sm px-12 py-16 w-100 radius-12 mt-32">Baiklah</button>
            <div class="mt-32 text-sm">
                <p class="mb-0">Tidak menerima email? <a href="resend.html" class="text-primary-600 fw-semibold">Kirim Ulang</a></p>
                <p>Atau menghubungi <a href="javascript:void(0)" class="text-primary-600 fw-semibold">Admin</a></p>
             
            </div>
        </div>
        </div>
    </div>
</div>
@endsection