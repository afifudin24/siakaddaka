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
    src="{{sekolah_image('gambar_unggulan_2', 'assets/images/auth/auth-img.png')}}" 
    alt="Gambar Unggulan"
>

        </div>
    </div>
    <div class="auth-right py-32 px-24 d-flex flex-column justify-content-center">
        <div class="max-w-464-px mx-auto w-100">
            <div>
                <a href="/login" class="mb-40 max-w-290-px">
                    <img src="{{ sekolah_logo('light', 'assets/images/logo.png') }}" alt="Logo">
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
    <div class="icon-field position-relative">

        <!-- Icon kiri -->
        <span class="icon top-50 translate-middle-y">
            <iconify-icon icon="solar:lock-password-outline"></iconify-icon>
        </span>

        <!-- Input -->
        <input type="password"
               name="password"
               required
               class="form-control h-56-px bg-neutral-50 radius-12 pe-5"
               id="your-password"
               placeholder="Password">

        <!-- Eye button -->
        <span class="position-absolute top-50 end-0 translate-middle-y me-3 cursor-pointer"
              id="togglePassword">
            <iconify-icon id="eyeIcon" icon="solar:eye-outline" class="text-xl"></iconify-icon>
        </span>

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
              $('#signInBtn').prop('disabled', false);
    $('#signInBtn').text('Sign In');
        }
    });
});

    </script>

    <script>
    const togglePassword = document.getElementById('togglePassword');
    const passwordInput = document.getElementById('your-password');
    const eyeIcon = document.getElementById('eyeIcon');

    togglePassword.addEventListener('click', function () {
        const type = passwordInput.getAttribute('type') === 'password' ? 'text' : 'password';
        passwordInput.setAttribute('type', type);

        eyeIcon.setAttribute(
            'icon',
            type === 'password'
                ? 'solar:eye-outline'
                : 'solar:eye-closed-outline'
        );
    });
</script>
@endpush
@endsection