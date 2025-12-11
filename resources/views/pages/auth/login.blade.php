@extends('layouts.auth')
@section('content')

<body>

<section class="auth bg-base d-flex flex-wrap">  
    <div class="auth-left d-lg-block d-none">
        <div class="d-flex align-items-center flex-column h-100 justify-content-center">
          @php
    $unggulan = optional($datasekolah)->gambar_unggulan_2;
    $unggulanPath = $unggulan ? 'sekolah/' . $unggulan : null;
    $unggulanExists = $unggulanPath && Storage::disk('public')->exists($unggulanPath);
@endphp

<img 
    src="{{ $unggulanExists ? asset('storage/' . $unggulanPath) : asset('assets/images/auth/auth-img.png') }}" 
    alt="Gambar Unggulan"
>

        </div>
    </div>
    <div class="auth-right py-32 px-24 d-flex flex-column justify-content-center">
        <div class="max-w-464-px mx-auto w-100">
            <div>
                <a href="/login" class="mb-40 max-w-290-px">
                @php
    $logoDb = optional($datasekolah)->logo; 
    $logoPath = $logoDb ? 'sekolah/' . $logoDb : null;
    $fileExists = $logoPath && Storage::disk('public')->exists($logoPath);
@endphp

@if($fileExists)
    <img src="{{ asset('storage/' . $logoPath) }}" alt="Logo Sekolah">
@else
    <img src="{{ asset('assets/images/logo.png') }}" alt="Logo Default">
@endif
                </a>
                <h4 class="mb-12">Log In</h4>
                <p class="mb-32 text-secondary-light text-lg">Selamat datang dan isi detail form dibawah</p>
               @if($errors->any())
                <div class="alert alert-danger bg-danger-100 text-danger-600 mb-3 border-danger-100 px-24 py-11 mb-0 fw-semibold text-lg radius-8" role="alert">
                        <div class="d-flex align-items-start justify-content-between text-lg">
                            <div class="d-flex align-items-start gap-2">
                                <iconify-icon icon="mingcute:alert-octagon-line" class="icon text-xl mt-4 flex-shrink-0"></iconify-icon>
                                <div>
                                   {{ $errors->first() }}
                                   
                                </div>
                            </div> 
                            <button class="remove-button text-danger-600 text-xxl line-height-1"> <iconify-icon icon="iconamoon:sign-times-light" class="icon"></iconify-icon></button>
                        </div>
                    </div>
   
@endif
            </div>
         <form id="loginForm">
    @csrf
    <div class="icon-field mb-16">
        <span class="icon top-50 translate-middle-y">
            <iconify-icon icon="mage:email"></iconify-icon>
        </span>
        <input type="text" class="form-control h-56-px bg-neutral-50 radius-12" name="email" required placeholder="Email atau Username">
    </div>

    <div class="position-relative mb-20">
        <div class="icon-field">
            <span class="icon top-50 translate-middle-y">
                <iconify-icon icon="solar:lock-password-outline"></iconify-icon>
            </span>
            <input type="password" name="password" required class="form-control h-56-px bg-neutral-50 radius-12" id="your-password" placeholder="Password">
        </div>
    </div>

    <div class="">
        <div class="d-flex justify-content-between gap-2">
            <div class="form-check style-check d-flex align-items-center">
                <input class="form-check-input" type="checkbox" id="remember" name="remember">
                <label class="form-check-label" for="remember">Ingat saya</label>
            </div>
            <a href="#" class="text-primary-600 fw-medium">Lupa Password?</a>
        </div>
    </div>

    <button type="submit" class="btn btn-primary w-100 radius-12 mt-32" id="signInBtn">Sign In</button>
</form>

        </div>
    </div>
</section>

@push('scripts')
    <script>
      
    
        $('#loginForm').on('submit', function(e) {
    e.preventDefault();
    $('#signInBtn').prop('disabled', true);
    $('#signInBtn').text('Loading...');
    $.ajax({
        url: "{{ route('login.ajax') }}",
        type: "POST",
        data: $(this).serialize(),
        success: function(res) {

            Swal.fire({
                icon: 'success',
                title: 'Berhasil',
                text: res.message,
                timer: 2000,
                showConfirmButton: false
            });

            setTimeout(function() {
                window.location.href = res.redirect;
            }, 2000);
        },
        error: function(err) {
            Swal.fire({
                icon: 'error',
                title: 'Gagal Login',
                text: err.responseJSON?.message || 'Terjadi kesalahan.',
            });
        }
    });
});

    </script>
@endpush
@endsection