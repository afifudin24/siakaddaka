<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sistem Akademik SMK - Solusi Manajemen Sekolah Modern</title>
    
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800&display=swap" rel="stylesheet">
    
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
    
    <style>
        :root {
            /* Light Mode Colors - Hijau & Putih */
            --bg-primary-light: #ffffff;
            --bg-secondary-light: #f8fdf9;
            --text-primary-light: #1a1a1a;
            --text-secondary-light: #4a5568;
            --accent-light: #10b981;
            --accent-hover-light: #059669;
            --card-bg-light: #ffffff;
            --border-light: #e2e8f0;
            
            /* Dark Mode Colors - Biru & Hitam */
            --bg-primary-dark: #0a0e1a;
            --bg-secondary-dark: #111827;
            --text-primary-dark: #f9fafb;
            --text-secondary-dark: #d1d5db;
            --accent-dark: #3b82f6;
            --accent-hover-dark: #2563eb;
            --card-bg-dark: #1f2937;
            --border-dark: #374151;
        }
        
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        
        body {
            font-family: 'Inter', sans-serif;
            transition: background-color 0.3s ease, color 0.3s ease;
            overflow-x: hidden;
        }
        
        /* Light Mode (Default) */
        body.light-mode {
            background-color: var(--bg-primary-light);
            color: var(--text-primary-light);
        }
        
        body.light-mode .navbar {
            background-color: var(--bg-primary-light) !important;
            border-bottom: 1px solid var(--border-light);
        }
        
        body.light-mode .feature-card,
        body.light-mode .faq-item {
            background-color: var(--card-bg-light);
            border: 1px solid var(--border-light);
        }
        
        body.light-mode .btn-primary-custom {
            background: linear-gradient(135deg, var(--accent-light), #059669);
            color: white;
        }
        
        body.light-mode .btn-primary-custom:hover {
            background: linear-gradient(135deg, var(--accent-hover-light), #047857);
        }
        
        body.light-mode .section-subtitle {
            color: var(--accent-light);
        }
        
        body.light-mode .hero-section {
            background: linear-gradient(135deg, #f0fdf4 0%, #dcfce7 100%);
        }
        
        body.light-mode footer {
            background-color: var(--bg-secondary-light);
            border-top: 1px solid var(--border-light);
        }
        
        /* Dark Mode */
        body.dark-mode {
            background-color: var(--bg-primary-dark);
            color: var(--text-primary-dark);
        }
        
        body.dark-mode .navbar {
            background-color: var(--bg-secondary-dark) !important;
            border-bottom: 1px solid var(--border-dark);
        }
        
        body.dark-mode .feature-card,
        body.dark-mode .faq-item {
            background-color: var(--card-bg-dark);
            border: 1px solid var(--border-dark);
        }
        
        body.dark-mode .btn-primary-custom {
            background: linear-gradient(135deg, var(--accent-dark), #2563eb);
            color: white;
        }
        
        body.dark-mode .btn-primary-custom:hover {
            background: linear-gradient(135deg, var(--accent-hover-dark), #1d4ed8);
        }
        
        body.dark-mode .section-subtitle {
            color: var(--accent-dark);
        }
        
        body.dark-mode .hero-section {
            background: linear-gradient(135deg, #0a0e1a 0%, #1e3a8a 100%);
        }
        
        body.dark-mode footer {
            background-color: var(--bg-secondary-dark);
            border-top: 1px solid var(--border-dark);
        }
        
        body.dark-mode .text-muted {
            color: var(--text-secondary-dark) !important;
        }
        
        body.dark-mode .navbar-brand {
            color: var(--text-primary-dark) !important;
        }
        
        body.dark-mode .navbar-nav .nav-link {
            color: var(--text-secondary-dark) !important;
        }
        
        body.dark-mode .navbar-nav .nav-link:hover {
            color: var(--accent-dark) !important;
        }
        
        body.dark-mode .btn-outline-custom {
            color: var(--text-primary-dark);
            border-color: var(--accent-dark);
        }
        
        body.dark-mode .btn-outline-custom:hover {
            background-color: var(--accent-dark);
            color: white;
            border-color: var(--accent-dark);
        }
        
        body.light-mode .btn-outline-custom {
            color: var(--text-primary-light);
            border-color: var(--accent-light);
        }
        
        body.light-mode .btn-outline-custom:hover {
            background-color: var(--accent-light);
            color: white;
            border-color: var(--accent-light);
        }

        body.dark-mode .navbar-brand {
    color: var(--text-primary-dark) !important;
}

body.dark-mode .navbar-nav .nav-link {
    color: var(--text-secondary-dark) !important;
}

body.dark-mode .navbar-nav .nav-link:hover {
    color: var(--accent-dark) !important;
}

body.dark-mode .btn-outline-custom {
    color: var(--text-primary-dark);
    border-color: var(--accent-dark);
}

body.dark-mode .btn-outline-custom:hover {
    background-color: var(--accent-dark);
    color: white;
    border-color: var(--accent-dark);
}
        
        /* Navbar Styles */
        .navbar {
            padding: 1rem 0;
            transition: all 0.3s ease;
            backdrop-filter: blur(10px);
        }
        
        .navbar-brand {
            font-weight: 700;
            font-size: 1.5rem;
        }
        
        .navbar-nav .nav-link {
            margin: 0 0.5rem;
            font-weight: 500;
            transition: color 0.3s ease;
        }
        
        .navbar-nav .nav-link:hover {
            opacity: 0.8;
        }
        
        .theme-toggle {
            cursor: pointer;
            padding: 0.5rem;
            border-radius: 50%;
            transition: all 0.3s ease;
        }
        
        .theme-toggle:hover {
            transform: scale(1.1);
        }
        
        /* Hero Section */
        .hero-section {
            min-height: 90vh;
            display: flex;
            align-items: center;
            padding: 4rem 0;
            position: relative;
            overflow: hidden;
        }
        
        .hero-content h1 {
            font-size: 3.5rem;
            font-weight: 800;
            line-height: 1.2;
            margin-bottom: 1.5rem;
        }
        
        .hero-content p {
            font-size: 1.25rem;
            margin-bottom: 2rem;
            opacity: 0.9;
        }
        
        .hero-image {
            position: relative;
            /* animation: float 6s ease-in-out infinite; */
            text-align: center
        }
        
        .hero-image img {
           
            border-radius: 20px;
            box-shadow: 0 20px 60px rgba(0, 0, 0, 0.1);
        }
        .navbar-toggler {
    border: none;
    padding: 0.5rem;
}

.navbar-toggler:focus {
    box-shadow: none;
}

body.dark-mode .navbar-toggler-icon {
    background-image: url("data:image/svg+xml,%3csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 30 30'%3e%3cpath stroke='rgba(249, 250, 251, 0.95)' stroke-linecap='round' stroke-miterlimit='10' stroke-width='2' d='M4 7h22M4 15h22M4 23h22'/%3e%3c/svg%3e");
}
        
        @keyframes float {
            0%, 100% { transform: translateY(0px); }
            50% { transform: translateY(-20px); }
        }
        
        /* Buttons */
        .btn-primary-custom {
            padding: 0.875rem 2rem;
            font-weight: 600;
            border: none;
            border-radius: 12px;
            transition: all 0.3s ease;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
        }
        
        .btn-primary-custom:hover {
            transform: translateY(-2px);
            box-shadow: 0 6px 20px rgba(0, 0, 0, 0.15);
        }
        
        .btn-outline-custom {
            padding: 0.875rem 2rem;
            font-weight: 600;
            border: 2px solid currentColor;
            border-radius: 12px;
            background: transparent;
            transition: all 0.3s ease;
        }
        
        .btn-outline-custom:hover {
            transform: translateY(-2px);
        }
        
        /* Section Styles */
        .section-padding {
            padding: 5rem 0;
        }
        
        .section-title {
            font-size: 2.5rem;
            font-weight: 700;
            margin-bottom: 1rem;
            text-align: center;
        }
        
        .section-subtitle {
            font-weight: 600;
            text-transform: uppercase;
            letter-spacing: 1px;
            font-size: 0.875rem;
            text-align: center;
            margin-bottom: 0.5rem;
        }
        
        .section-description {
            text-align: center;
            max-width: 600px;
            margin: 0 auto 3rem;
            opacity: 0.8;
        }
        
        /* Feature Cards */
        .feature-card {
            padding: 2rem;
            border-radius: 16px;
            transition: all 0.3s ease;
            height: 100%;
            cursor: pointer;
        }
        
        .feature-card:hover {
            transform: translateY(-10px);
            box-shadow: 0 20px 40px rgba(0, 0, 0, 0.1);
        }
        
        .feature-icon {
            width: 60px;
            height: 60px;
            border-radius: 12px;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 1.5rem;
            margin-bottom: 1.5rem;
        }
        
        body.light-mode .feature-icon {
            background: linear-gradient(135deg, #10b981, #059669);
            color: white;
        }
        
        body.dark-mode .feature-icon {
            background: linear-gradient(135deg, #3b82f6, #2563eb);
            color: white;
        }
        
        .feature-card h5 {
            font-weight: 600;
            font-size: 1.25rem;
            margin-bottom: 0.75rem;
        }
        
        .feature-card p {
            opacity: 0.8;
            margin-bottom: 0;
        }
        
        /* FAQ Section */
        .faq-item {
            padding: 1.5rem;
            border-radius: 12px;
            margin-bottom: 1rem;
            cursor: pointer;
            transition: all 0.3s ease;
        }
        
        .faq-item:hover {
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.05);
        }
        
        .faq-question {
            display: flex;
            justify-content: space-between;
            align-items: center;
            font-weight: 600;
            font-size: 1.125rem;
        }
        
        .faq-answer {
            max-height: 0;
            overflow: hidden;
            transition: max-height 0.3s ease, margin-top 0.3s ease;
            opacity: 0.8;
        }
        
        .faq-item.active .faq-answer {
            max-height: 300px;
            margin-top: 1rem;
        }
        
        .faq-item .fa-chevron-down {
            transition: transform 0.3s ease;
        }
        
        .faq-item.active .fa-chevron-down {
            transform: rotate(180deg);
        }
        
        /* Contact Section */
        .contact-section {
            background: linear-gradient(135deg, rgba(16, 185, 129, 0.1), rgba(59, 130, 246, 0.1));
            border-radius: 20px;
            padding: 3rem;
            text-align: center;
        }
        
        /* Footer */
        footer {
            padding: 3rem 0 1.5rem;
            margin-top: 5rem;
        }
        
        .footer-brand {
            font-size: 1.5rem;
            font-weight: 700;
            margin-bottom: 1rem;
        }
        
        .social-links a {
            display: inline-block;
            width: 40px;
            height: 40px;
            border-radius: 50%;
            line-height: 40px;
            text-align: center;
            margin: 0 0.5rem;
            transition: all 0.3s ease;
        }
        .ikon{
            width: 40px;
            height: 40px;
            border-radius: 50%;
            line-height: 40px;
            text-align: center;
            margin: 0 0.5rem;
            transition: all 0.3s ease;
        }
        
        body.light-mode .social-links a {
            background-color: var(--accent-light);
            color: white;
        }
        
        body.dark-mode .social-links a {
            background-color: var(--accent-dark);
            color: white;
        }
        
        .social-links a:hover {
            transform: translateY(-3px);
        }
        
        /* Responsive */
        @media (max-width: 768px) {
            .hero-content h1 {
                font-size: 2.5rem;
            }
            
            .section-title {
                font-size: 2rem;
            }
            
            .hero-section {
                min-height: auto;
              padding: 6rem 0 3rem 0;  /* Top lebih besar untuk space dari navbar */
              text-align: center;
            }
        }
        
        /* Animations */
        .fade-in {
            animation: fadeIn 1s ease-in;
        }
        
        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(20px); }
            to { opacity: 1; transform: translateY(0); }
        }
    </style>
</head>
<body class="light-mode">

    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg fixed-top">
        <div class="container">
            <a class="navbar-brand" href="/">
                @if($datasekolah && $datasekolah->logo)
                    <img class="ikon" src="{{ asset('storage/sekolah/' . $datasekolah->logo) }}" alt="">
                    {{-- <img class="ikon" src="{{ asset('images/sekolah/logo.png')}}" alt=""> --}}
                @else
                <i class="fas fa-graduation-cap me-2"></i>
                @endif
                
                SIAKAD SMK
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto align-items-center">
                    <li class="nav-item">
                        <a class="nav-link" href="#beranda">Beranda</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#fitur">Fitur</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#faq">FAQ</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#kontak">Kontak</a>
                    </li>
                    <li>
                                          @auth
    <a href="/dashboard" class="btn btn-primary-custom">
        <i class="fas fa-tachometer-alt me-2"></i> Dashboard
    </a>
@else
    <a href="/login" class="btn btn-primary-custom">
        <i class="fas fa-rocket me-2"></i> Login
    </a>
@endauth
                    </li>
                    <li class="nav-item ms-3">
                        <div class="theme-toggle " onclick="toggleTheme()">
                            <i class="fas fa-moon" id="themeIcon"></i>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- Hero Section -->
    <section id="beranda" class="hero-section">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-6 fade-in mt-5">
                    <div class="hero-content">
                        <h1>Sistem Akademik SMK Terpadu & Modern</h1>
                        @if($datasekolah && $datasekolah->nama_sekolah)
                        <h4>Selamat Datang di SIAKAD {{ $datasekolah->nama_sekolah }}</h4>
                        @endif
                        <p class="fs-6">Kelola seluruh aktivitas sekolah dalam satu platform. Efisien, mudah, dan terintegrasi penuh untuk SMK modern.</p>
                        <div class="d-flex gap-3 flex-wrap">
                           @auth
    <a href="/dashboard" class="btn btn-primary-custom">
        <i class="fas fa-tachometer-alt me-2"></i> Dashboard
    </a>
@else
    <a href="/login" class="btn btn-primary-custom">
        <i class="fas fa-rocket me-2"></i> Login
    </a>
@endauth
                            <a href="#fitur" class="btn btn-outline-custom">
                                <i class="fas fa-info-circle me-2"></i>Lihat Fitur
                            </a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 mt-5 mt-lg-0">
                   @php
    $defaultImage = asset('images/sekolah/gambar_unggulan.png');

    // Jika ada nama file di database
    if (!empty($dataSekolah->gambar_unggulan)) {
        $storagePath = 'storage/sekolah/' . $dataSekolah->gambar_unggulan;

        // Cek apakah file benar-benar ada
        if (file_exists(public_path($storagePath))) {
            $image = asset($storagePath);  // ambil dari storage
        } else {
            $image = asset('images/sekolah/gambar_unggulan.png');
        }
    } else {
        $image = $defaultImage; // fallback default
    }
@endphp

<div class="hero-image">
    <img class="img-fluid" style="width : 70%;"  src="{{ $image }}" alt="Sistem Akademik SMK">
</div>
                </div>
            </div>
        </div>
    </section>

    <!-- Features Section -->
    <section id="fitur" class="section-padding">
        <div class="container">
            <div class="section-subtitle">FITUR LENGKAP</div>
            <h2 class="section-title">Solusi Manajemen Sekolah All-in-One</h2>
            <p class="section-description">Sistem akademik yang dilengkapi dengan berbagai fitur untuk mendukung operasional sekolah Anda</p>
            
            <div class="row g-4">
                <!-- Feature 1 -->
                <div class="col-lg-4 col-md-6">
                    <div class="feature-card">
                        <div class="feature-icon">
                            <i class="fas fa-users"></i>
                        </div>
                        <h5>Manajemen Data</h5>
                        <p>Kelola data guru, siswa, dan staff dengan sistem database yang terstruktur dan aman</p>
                    </div>
                </div>
                
                <!-- Feature 2 -->
                <div class="col-lg-4 col-md-6">
                    <div class="feature-card">
                        <div class="feature-icon">
                            <i class="fas fa-book"></i>
                        </div>
                        <h5>Mata Pelajaran & Kelas</h5>
                        <p>Atur mata pelajaran, kelas, dan jurusan dengan mudah dan fleksibel</p>
                    </div>
                </div>
                
                <!-- Feature 3 -->
                <div class="col-lg-4 col-md-6">
                    <div class="feature-card">
                        <div class="feature-icon">
                            <i class="fas fa-clipboard-check"></i>
                        </div>
                        <h5>Presensi Kehadiran</h5>
                        <p>Sistem absensi digital untuk memantau kehadiran siswa dan guru secara real-time</p>
                    </div>
                </div>
                
                <!-- Feature 4 -->
                <div class="col-lg-4 col-md-6">
                    <div class="feature-card">
                        <div class="feature-icon">
                            <i class="fas fa-calendar-alt"></i>
                        </div>
                        <h5>Jadwal Mengajar</h5>
                        <p>Buat dan kelola jadwal mengajar dengan sistem yang terorganisir dan mudah diakses</p>
                    </div>
                </div>
                
                <!-- Feature 5 -->
                <div class="col-lg-4 col-md-6">
                    <div class="feature-card">
                        <div class="feature-icon">
                            <i class="fas fa-file-alt"></i>
                        </div>
                        <h5>Jurnal Pembelajaran</h5>
                        <p>Catat dan dokumentasikan setiap kegiatan pembelajaran dengan jurnal digital</p>
                    </div>
                </div>
                
                <!-- Feature 6 -->
                <div class="col-lg-4 col-md-6">
                    <div class="feature-card">
                        <div class="feature-icon">
                            <i class="fas fa-folder-open"></i>
                        </div>
                        <h5>Materi & Tugas</h5>
                        <p>Upload dan distribusi materi pembelajaran serta penugasan kepada siswa</p>
                    </div>
                </div>
                
                <!-- Feature 7 -->
                <div class="col-lg-4 col-md-6">
                    <div class="feature-card">
                        <div class="feature-icon">
                            <i class="fas fa-chart-line"></i>
                        </div>
                        <h5>Penilaian</h5>
                        <p>Sistem penilaian terintegrasi untuk ujian, tugas, dan rapor siswa</p>
                    </div>
                </div>
                
                <!-- Feature 8 -->
                <div class="col-lg-4 col-md-6">
                    <div class="feature-card">
                        <div class="feature-icon">
                            <i class="fas fa-money-bill-wave"></i>
                        </div>
                        <h5>Tagihan & Pembayaran</h5>
                        <p>Kelola tagihan SPP dan pembayaran sekolah dengan sistem yang transparan</p>
                    </div>
                </div>
                
                <!-- Feature 9 -->
                <div class="col-lg-4 col-md-6">
                    <div class="feature-card">
                        <div class="feature-icon">
                            <i class="fas fa-shield-alt"></i>
                        </div>
                        <h5>Keamanan Data</h5>
                        <p>Sistem keamanan berlapis untuk melindungi data sensitif sekolah Anda</p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- FAQ Section -->
    <section id="faq" class="section-padding" style="background-color: rgba(0,0,0,0.02);">
        <div class="container">
            <div class="section-subtitle">FAQ</div>
            <h2 class="section-title">Pertanyaan yang Sering Diajukan</h2>
            <p class="section-description">Temukan jawaban untuk pertanyaan umum tentang sistem akademik kami</p>
            
            <div class="row justify-content-center">
                <div class="col-lg-8">
                    <!-- FAQ 1 -->
                    <div class="faq-item" onclick="toggleFaq(this)">
                        <div class="faq-question">
                            <span>Apa saja fitur utama dari sistem ini?</span>
                            <i class="fas fa-chevron-down"></i>
                        </div>
                        <div class="faq-answer">
                            Sistem ini dilengkapi dengan fitur lengkap meliputi manajemen data guru/siswa/staff, mata pelajaran, kelas, jurusan, jurnal pembelajaran, presensi kehadiran, materi & tugas, tagihan & pembayaran, jadwal mengajar, dan sistem penilaian yang terintegrasi.
                        </div>
                    </div>
                    
                    <!-- FAQ 2 -->
                    <div class="faq-item" onclick="toggleFaq(this)">
                        <div class="faq-question">
                            <span>Apakah sistem ini cocok untuk semua jenis SMK?</span>
                            <i class="fas fa-chevron-down"></i>
                        </div>
                        <div class="faq-answer">
                            Ya, sistem ini dirancang fleksibel untuk mengakomodasi berbagai jurusan dan kebutuhan SMK, baik SMK negeri maupun swasta dengan berbagai ukuran.
                        </div>
                    </div>
                    
                    <!-- FAQ 3 -->
                    <div class="faq-item" onclick="toggleFaq(this)">
                        <div class="faq-question">
                            <span>Bagaimana dengan keamanan data sekolah?</span>
                            <i class="fas fa-chevron-down"></i>
                        </div>
                        <div class="faq-answer">
                            Sistem kami menggunakan enkripsi data dan sistem keamanan berlapis untuk melindungi semua informasi sensitif sekolah. Data Anda dijamin aman dan terlindungi.
                        </div>
                    </div>
                    
                    <!-- FAQ 4 -->
                    <div class="faq-item" onclick="toggleFaq(this)">
                        <div class="faq-question">
                            <span>Apakah bisa diakses melalui smartphone?</span>
                            <i class="fas fa-chevron-down"></i>
                        </div>
                        <div class="faq-answer">
                            Ya, sistem ini responsive dan dapat diakses melalui smartphone, tablet, maupun komputer dengan browser modern.
                        </div>
                    </div>
                    
                    <!-- FAQ 5 -->
                    <div class="faq-item" onclick="toggleFaq(this)">
                        <div class="faq-question">
                            <span>Apakah tersedia support dan pelatihan?</span>
                            <i class="fas fa-chevron-down"></i>
                        </div>
                        <div class="faq-answer">
                            Kami menyediakan pelatihan lengkap untuk admin dan pengguna, serta support teknis yang siap membantu Anda kapan saja.
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Contact Section -->
    <section id="kontak" class="section-padding">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-8">
                    <div class="contact-section">
                        <div class="section-subtitle">HUBUNGI KAMI</div>
                        <h2 class="section-title mb-3">Siap Meningkatkan Sistem Sekolah Anda?</h2>
                        <p class="section-description mb-4">
                            Hubungi admin kami untuk mendapatkan demo gratis dan penawaran terbaik untuk sekolah Anda
                        </p>
                        <div class="d-flex justify-content-center gap-3 flex-wrap mb-4">
                            <a href="https://adservices.site" class="btn btn-primary-custom">
                                <i class="fas fa-globe me-2"></i>Assalam Digital Services
                            </a>
                             <a href="mailto:afifrider507@gmail.com" class="btn btn-outline-custom">
                                <i class="fas fa-envelope me-2"></i>Email ADS
                            </a>
                        </div>
                        <p class="text-muted">
                            <i class="fas fa-clock me-2"></i>Kami siap melayani Anda kapan saja
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Footer -->
    <footer>
        <div class="container">
            <div class="row">
                <div class="col-lg-4 mb-4 mb-lg-0">
                    <div class="footer-brand">
                        <i class="fas fa-graduation-cap me-2"></i>Sistem Akademik SMK
                    </div>
                    <p class="text-muted">Solusi manajemen sekolah modern untuk SMK di seluruh Indonesia</p>
                </div>
                <div class="col-lg-4 mb-4 mb-lg-0">
                    <h6 class="mb-3 fw-bold">Menu Cepat</h6>
                    <ul class="list-unstyled">
                        <li class="mb-2"><a href="#beranda" class="text-muted text-decoration-none">Beranda</a></li>
                        <li class="mb-2"><a href="#fitur" class="text-muted text-decoration-none">Fitur</a></li>
                        <li class="mb-2"><a href="#faq" class="text-muted text-decoration-none">FAQ</a></li>
                        <li class="mb-2"><a href="#kontak" class="text-muted text-decoration-none">Kontak</a></li>
                    </ul>
                </div>
                <div class="col-lg-4">
                    <h6 class="mb-3 fw-bold">Hubungi Kami</h6>
                    <p class="text-muted mb-3">
                        <i class="fas fa-envelope me-2"></i>admin@adservices.site
                    </p>
                    <div class="social-links">
                        <a href="#"><i class="fab fa-facebook-f"></i></a>
                        <a href="#"><i class="fab fa-twitter"></i></a>
                        <a href="#"><i class="fab fa-instagram"></i></a>
                        <a href="#"><i class="fab fa-linkedin-in"></i></a>
                    </div>
                </div>
            </div>
            <hr class="my-4">
            <div class="text-center text-muted">
                <p class="mb-0">&copy; 2025 Sistem Akademik SMK. All rights reserved.</p>
            </div>
        </div>
    </footer>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
    
    <!-- Custom JavaScript -->
    <script>
        // Theme Toggle Function
        function toggleTheme() {
            const body = document.body;
            const themeIcon = document.getElementById('themeIcon');
            
            if (body.classList.contains('light-mode')) {
                body.classList.remove('light-mode');
                body.classList.add('dark-mode');
                themeIcon.classList.remove('fa-moon');
                themeIcon.classList.add('fa-sun');
                localStorage.setItem('theme', 'dark');
            } else {
                body.classList.remove('dark-mode');
                body.classList.add('light-mode');
                themeIcon.classList.remove('fa-sun');
                themeIcon.classList.add('fa-moon');
                localStorage.setItem('theme', 'light');
            }
        }
        
        // Load saved theme
        window.addEventListener('DOMContentLoaded', () => {
            const savedTheme = localStorage.getItem('theme') || 'light';
            const body = document.body;
            const themeIcon = document.getElementById('themeIcon');
            
            if (savedTheme === 'dark') {
                body.classList.remove('light-mode');
                body.classList.add('dark-mode');
                themeIcon.classList.remove('fa-moon');
                themeIcon.classList.add('fa-sun');
            }
        });
        
        // FAQ Toggle Function
        function toggleFaq(element) {
            const allFaqs = document.querySelectorAll('.faq-item');
            
            // Close all other FAQs
            allFaqs.forEach(faq => {
                if (faq !== element && faq.classList.contains('active')) {
                    faq.classList.remove('active');
                }
            });
            
            // Toggle current FAQ
            element.classList.toggle('active');
        }
        
        // Smooth Scrolling
        document.querySelectorAll('a[href^="#"]').forEach(anchor => {
            anchor.addEventListener('click', function (e) {
                e.preventDefault();
                const target = document.querySelector(this.getAttribute('href'));
                if (target) {
                    const offset = 80;
                    const targetPosition = target.offsetTop - offset;
                    window.scrollTo({
                        top: targetPosition,
                        behavior: 'smooth'
                    });
                }
            });
        });
        
        // Navbar Scroll Effect
        let lastScroll = 0;
        const navbar = document.querySelector('.navbar');
        
        window.addEventListener('scroll', () => {
            const currentScroll = window.pageYOffset;
            
            if (currentScroll > 100) {
                navbar.style.boxShadow = '0 2px 10px rgba(0,0,0,0.1)';
            } else {
                navbar.style.boxShadow = 'none';
            }
            
            lastScroll = currentScroll;
        });
        
        // Animate on Scroll
        const observerOptions = {
            threshold: 0.1,
            rootMargin: '0px 0px -50px 0px'
        };
        
        const observer = new IntersectionObserver((entries) => {
            entries.forEach(entry => {
                if (entry.isIntersecting) {
                    entry.target.style.animation = 'fadeIn 1s ease-in forwards';
                }
            });
        }, observerOptions);
        
        // Observe feature cards
        document.querySelectorAll('.feature-card').forEach(card => {
            observer.observe(card);
        });
    </script>
</body>
</html>