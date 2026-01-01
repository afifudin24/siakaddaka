<!DOCTYPE html>
<html lang="en" data-theme="light">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="csrf-token" content="{{ csrf_token() }}">

<title>{{ $site_title }}</title>


<link rel="icon" type="image/png" href="{{ sekolah_logo('icon', 'assets/images/logo-icon.png') }}" sizes="16x16">

         
<!-- remix icon font css -->
<link rel="stylesheet" href="{{ asset('assets/css/remixicon.css') }}">
<!-- BootStrap css -->
<link rel="stylesheet" href="{{ asset('assets/css/lib/bootstrap.min.css') }}">
<!-- Apex Chart css -->
<link rel="stylesheet" href="{{ asset('assets/css/lib/apexcharts.css') }}">
<!-- Data Table css -->
<link rel="stylesheet" href="{{ asset('assets/css/lib/dataTables.min.css') }}">
<!-- Text Editor css -->
<link rel="stylesheet" href="{{ asset('assets/css/lib/editor-katex.min.css') }}">
<link rel="stylesheet" href="{{ asset('assets/css/lib/editor.atom-one-dark.min.css') }}">
<link rel="stylesheet" href="{{ asset('assets/css/lib/editor.quill.snow.css') }}">
<!-- Date picker css -->
<link rel="stylesheet" href="{{ asset('assets/css/lib/flatpickr.min.css') }}">
<!-- Calendar css -->
<link rel="stylesheet" href="{{ asset('assets/css/lib/full-calendar.css') }}">
<!-- Vector Map css -->
<link rel="stylesheet" href="{{ asset('assets/css/lib/jquery-jvectormap-2.0.5.css') }}">
<!-- Popup css -->
<link rel="stylesheet" href="{{ asset('assets/css/lib/magnific-popup.css') }}">
<!-- Slick Slider css -->
<link rel="stylesheet" href="{{ asset('assets/css/lib/slick.css') }}">
<!-- prism css -->
<link rel="stylesheet" href="{{ asset('assets/css/lib/prism.css') }}">
<!-- file upload css -->
<link rel="stylesheet" href="{{ asset('assets/css/lib/file-upload.css') }}">
<link rel="stylesheet" href="{{ asset('assets/css/lib/audioplayer.css') }}">
<!-- main css -->
<link rel="stylesheet" href="{{ asset('assets/css/style.css') }}">

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/select2-bootstrap-5-theme@1.3.0/dist/select2-bootstrap-5-theme.min.css" />
<link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />

<link rel="stylesheet"
 href="https://cdnjs.cloudflare.com/ajax/libs/cropperjs/1.5.13/cropper.min.css">

</head>

<body>
    @if(auth()->user()->role == 'admin')
  @include('partials.sidebar_admin') <!-- Include Sidebar -->
  @elseif(auth()->user()->role == 'guru')
  @include('partials.sidebar_guru') <!-- Include Sidebar -->
  @elseif(auth()->user()->role == 'siswa')
  @include('partials.sidebar_siswa') <!-- Include Sidebar -->
  @else
  @include('partials.sidebar_staff') <!-- Include Sidebar -->
  @endif
  <main class="dashboard-main">
    @include('partials.header') <!-- Include Header -->

    <!-- Main content area -->
    @yield('content')

    @include('partials.footer') <!-- Include Footer -->
</main>

 <!-- jQuery library js -->
<script src="{{ asset('assets/js/lib/jquery-3.7.1.min.js') }}"></script>
<!-- Bootstrap js -->
<script src="{{ asset('assets/js/lib/bootstrap.bundle.min.js') }}"></script>
<!-- Apex Chart js -->
<script src="{{ asset('assets/js/lib/apexcharts.min.js') }}"></script>
<!-- Data Table js -->
<script src="{{ asset('assets/js/lib/dataTables.min.js') }}"></script>
<!-- Iconify Font js -->
<script src="{{ asset('assets/js/lib/iconify-icon.min.js') }}"></script>
<!-- jQuery UI js -->
<script src="{{ asset('assets/js/lib/jquery-ui.min.js') }}"></script>
<!-- Vector Map js -->
<script src="{{ asset('assets/js/lib/jquery-jvectormap-2.0.5.min.js') }}"></script>
<script src="{{ asset('assets/js/lib/jquery-jvectormap-world-mill-en.js') }}"></script>
<!-- Popup js -->
<script src="{{ asset('assets/js/lib/magnifc-popup.min.js') }}"></script>
<!-- Slick Slider js -->
<script src="{{ asset('assets/js/lib/slick.min.js') }}"></script>
<!-- prism js -->
<script src="{{ asset('assets/js/lib/prism.js') }}"></script>
<!-- file upload js -->
<script src="{{ asset('assets/js/lib/file-upload.js') }}"></script>
<!-- audioplayer -->
<script src="{{ asset('assets/js/lib/audioplayer.js') }}"></script>

<!-- main js -->
<script src="{{ asset('assets/js/app.js') }}"></script>

<script src="{{ asset('assets/js/homeOneChart.js') }}"></script>

<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>


<script
 src="https://cdnjs.cloudflare.com/ajax/libs/cropperjs/1.5.13/cropper.min.js">
</script>


    @stack('scripts')
  <!-- Other JS files here -->
   <script>    
    $('.remove-button').on('click', function() {
        $(this).closest('.alert').addClass('d-none')
    }); 
    
</script>
<script>
  let table = new DataTable('#dataTable');
  let tableoke = new DataTable('#dataTableSemester');
</script>
<script>
document.getElementById('btnLogout').addEventListener('click', function() {
    Swal.fire({
        title: "Yakin ingin logout?",
        text: "Anda akan keluar dari sesi ini.",
        icon: "warning",
        showCancelButton: true,
        confirmButtonText: "Ya, Logout",
        confirmButtonColor: "#d33",
        cancelButtonText: "Batal"
    }).then((result) => {
        if (result.isConfirmed) {
            document.getElementById('logoutForm').submit();
        }
    });
});
</script>
</body>
</html>
