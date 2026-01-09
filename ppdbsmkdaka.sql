-- phpMyAdmin SQL Dump
-- version 5.2.1deb1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 09 Jan 2026 pada 09.36
-- Versi server: 10.11.6-MariaDB-0+deb12u1
-- Versi PHP: 8.2.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ppdbsmkdaka`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `no_hp` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `admins`
--

INSERT INTO `admins` (`id`, `user_id`, `nama`, `email`, `no_hp`, `created_at`, `updated_at`) VALUES
(1, 1, 'Afif Waliyudin', 'afifrider507@gmail.com', '6281548769365', NULL, '2025-10-25 02:52:18');

-- --------------------------------------------------------

--
-- Struktur dari tabel `agenda_kehadiran`
--

CREATE TABLE `agenda_kehadiran` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_agenda` varchar(255) NOT NULL,
  `tanggal` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `asalsekolah`
--

CREATE TABLE `asalsekolah` (
  `id` bigint(20) NOT NULL,
  `asal_sekolah` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `asalsekolah`
--

INSERT INTO `asalsekolah` (`id`, `asal_sekolah`) VALUES
(1, 'SMP ALMA ATA'),
(2, 'SMP DIPONEGORO MAJENANG'),
(3, 'SMP ISLAM MAJENANG'),
(4, 'SMP MA\'ARIF NU 1 MAJENANG'),
(5, 'SMP MA\'ARIF NU 2 MAJENANG'),
(6, 'SMP MUHAMMADIYAH MAJENANG'),
(7, 'SMP NEGERI 1 MAJENANG'),
(8, 'SMP NEGERI 2 MAJENANG'),
(9, 'SMP NEGERI 3 MAJENANG'),
(10, 'SMP NEGERI 4 MAJENANG'),
(11, 'SMP YOS SUDARSO MAJENANG'),
(12, 'MTs EL-BAYAN MAJENANG'),
(13, 'MTs PESANTREN PEMBANGUNAN MAJENANG'),
(14, 'MTSN 1 CILACAP'),
(15, 'SMP DARUSSALAM CIMANGGU'),
(16, 'SMP DIPONEGORO CIMANGGU'),
(17, 'SMP ISLAM TERPADU AL-HAMBRA'),
(18, 'SMP MAARIF NU CIMANGGU'),
(19, 'SMP MUHAMMADIYAH CIMANGGU'),
(20, 'SMP NEGERI 1 CIMANGGU'),
(21, 'SMP NEGERI 2 CIMANGGU'),
(22, 'SMP NEGERI 4 SATU ATAP CIMANGGU'),
(23, 'SMP NEGERI SATU ATAP 1 CIMANGGU'),
(24, 'SMP PGRI 18 CIMANGGU'),
(25, 'SMP RADEN FATAH CIMANGGU'),
(26, 'SMP ISLAM KARANGPUCUNG'),
(27, 'SMP IT MIFTAHUL HUDA 520 KARANGPUCUNG'),
(28, 'SMP JENDERAL AHMAD YANI KARANGPUCUNG'),
(29, 'SMP MUHAMMADIYAH 1 KARANGPUCUNG'),
(30, 'SMP MUHAMMADIYAH 2 KARANGPUCUNG'),
(31, 'SMP MUHAMMADIYAH 3 KARANGPUCUNG'),
(32, 'SMP NEGERI 3 SATU ATAP KARANGPUCUNG'),
(33, 'SMP NEGERI 1 KARANGPUCUNG'),
(34, 'SMP NEGERI 2 KARANGPUCUNG'),
(35, 'SMP NEGERI 4 SATU ATAP KARANGPUCUNG'),
(36, 'SMP AL ISLAM CIPARI'),
(37, 'SMP ISLAM CARUY'),
(38, 'SMP NEGERI 1 CIPARI'),
(39, 'SMP NEGERI 2 CIPARI'),
(40, 'SMP NEGERI 3 SATAP CIPARI'),
(41, 'SMP NEGERI 4 CIPARI'),
(42, 'SMP NU CIPARI'),
(43, 'SMP PGRI 27 CISURU'),
(44, 'SMP PGRI 3 Caruy'),
(45, 'SMP AL HIDAYAH SIDAREJA'),
(46, 'SMP IT BINA INSAN KAMIL SIDAREJA'),
(47, 'SMP MUHAMMADIYAH SIDAREJA'),
(48, 'SMP NASIONAL SIDAREJA'),
(49, 'SMP NEGERI 1 SIDAREJA'),
(50, 'SMP NEGERI 2 SIDAREJA'),
(51, 'SMP NEGERI 3 SIDAREJA'),
(52, 'SMP PIUS SIDAREJA'),
(53, 'SMP ISLAM AL HIMA KEDUNGREJA'),
(54, 'SMP JENDERAL SUDIRMAN KEDUNGREJA'),
(55, 'SMP MUHAMMADIYAH KEDUNGREJA'),
(56, 'SMP NEGERI 1 KEDUNGREJA'),
(57, 'SMP NEGERI 2 KEDUNGREJA'),
(58, 'SMP NEGERI 3 KEDUNGREJA'),
(59, 'SMP NEGERI 4 SATU ATAP KEDUNGREJA'),
(60, 'SMP ISLAM AL IRSYAD GANDRUNGMANGU'),
(61, 'SMP KRISTEN GANDRUNGMANGU'),
(62, 'SMP MIFTAHUL FALAH GANDRUNGMANGU'),
(63, 'SMP MUHAMMADIYAH GANDRUNGMANGU'),
(64, 'SMP NEGERI 3 GANDRUNGMANGU'),
(65, 'SMP NEGERI 1 GANDRUNGMANGU'),
(66, 'SMP NEGERI 2 GANDRUNGMANGU'),
(67, 'SMP NEGERI SATU ATAP 1 GANDRUNGMANGU'),
(68, 'SMP NURUL HUDA GANDRUNGMANGU'),
(69, 'SMP PGRI 5 GANDRUNGMANGU'),
(70, 'SMP PGRI 6 GANDRUNGMANGU 2'),
(71, 'SMP PURNAMA GANDRUNGMANGU'),
(72, 'SMP YOS SOEDARSO SIDAURIP GANDRUNGMANGU'),
(73, 'SMP DIPONEGORO PATIMUAN'),
(74, 'SMP NEGERI 1 PATIMUAN'),
(75, 'SMP NEGERI 2 PATIMUAN'),
(76, 'SMP NEGERI 2 SATU ATAP PATIMUAN'),
(77, 'MTS At Taubah'),
(78, 'MTS IBNU KHOLDUN AL AMIN'),
(79, 'MTS MA`ARIF NU CIMANGGU'),
(80, 'MTs AL HIDAYAH KARANGPUCUNG'),
(81, 'MTS MIFTAHUL HUDA'),
(82, 'MTs NURUL HUDA KARANGPUCUNG'),
(83, 'MTSN 2 CILACAP'),
(84, 'MTs MAFATIHUL HUDA'),
(85, 'MTs. DARUL ULUM'),
(86, 'MTS CAHAYA'),
(87, 'MTs MA`ARIF NU 01 Sidareja'),
(88, 'MTS NURUL AMIN AL HIDAYAH SIDAREJA'),
(89, 'MTS. ELL FIRDAUS 01'),
(90, 'MTSS AL MA`SOEM'),
(91, 'MTSS DARUL ULUM 2'),
(92, 'MTS DARUL QUR`AN KEDUNGREJA'),
(93, 'MTS ELL FIRDAUS 02'),
(94, 'MTS SA Nurul Hidayah'),
(95, 'MTs SYAMSUL HUDA'),
(96, 'MTs. AL ISLAM Kedungreja'),
(97, 'MTSS BANUMANGUN'),
(98, 'MTSS SA RIYADHUL MUTA`ALIM'),
(128, 'SMP Negeri 1 Satap Bantarsari'),
(129, 'SMP PGRI Lumbir'),
(130, ' SMP Yabaki 4 Kawunganten'),
(131, 'SMP N 2 Margahayu Bandung'),
(132, 'SMP Negeri 3 Lumbir');

-- --------------------------------------------------------

--
-- Struktur dari tabel `atribut`
--

CREATE TABLE `atribut` (
  `id` bigint(20) NOT NULL,
  `siswa_id` bigint(20) UNSIGNED NOT NULL,
  `tanggal` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `daftar_ulang`
--

CREATE TABLE `daftar_ulang` (
  `id` bigint(20) NOT NULL,
  `siswa_id` bigint(20) UNSIGNED NOT NULL,
  `jumlah` int(255) NOT NULL,
  `tanggal` date NOT NULL,
  `keterangan` text NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `daftar_ulang`
--

INSERT INTO `daftar_ulang` (`id`, `siswa_id`, `jumlah`, `tanggal`, `keterangan`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 10000, '2025-10-14', 'Cicil dulu', 'cicil', '2025-10-14 09:59:42', '2025-10-14 09:59:42');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_kehadiran`
--

CREATE TABLE `data_kehadiran` (
  `id` int(11) NOT NULL,
  `agenda_id` bigint(20) UNSIGNED NOT NULL,
  `siswa_id` bigint(20) UNSIGNED NOT NULL,
  `status_kehadiran` varchar(255) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `gallery`
--

CREATE TABLE `gallery` (
  `id` bigint(20) NOT NULL,
  `gallery_name` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `gallery`
--

INSERT INTO `gallery` (`id`, `gallery_name`, `path`) VALUES
(1, 'gallery1', '/storage/gallery/gallery1.PNG'),
(2, 'gallery2', '/storage/gallery/gallery2.PNG'),
(3, 'gallery3', '/storage/gallery/gallery3.PNG'),
(4, 'gallery4', '/storage/gallery/gallery4.PNG'),
(5, 'gallery5', '/storage/gallery/gallery5.JPG'),
(6, 'gallery6', '/storage/gallery/gallery6.JPG'),
(7, 'Gallery 7', '/storage/gallery/gallery7.JPG'),
(8, 'gallery8', '/storage/gallery/gallery8.JPG'),
(9, 'Afif Waliyudin | Instruktur TKJ', '/storage/gallery/gallery9.JPG'),
(10, 'gallery10', '/storage/gallery/gallery10.JPG'),
(11, 'Guru SMK Darussalam Karangpucung', '/storage/gallery/gallery11.JPG'),
(12, 'gallery12', '/storage/gallery/gallery12.JPG');

-- --------------------------------------------------------

--
-- Struktur dari tabel `gurus`
--

CREATE TABLE `gurus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `nip` varchar(255) DEFAULT NULL,
  `tanggal_lahir` date NOT NULL DEFAULT current_timestamp(),
  `email` varchar(255) NOT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `no_hp` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `gurus`
--

INSERT INTO `gurus` (`id`, `user_id`, `nama`, `nip`, `tanggal_lahir`, `email`, `alamat`, `no_hp`, `created_at`, `updated_at`) VALUES
(19, 1509328, 'Afif Waliyudin', '7424738i7433', '2003-01-24', 'afifrider507@gmail.com', 'Desa Surusunda Rt 01 Rw 03\r\nKecamatan Karangpucung', '6281548769365', NULL, '2025-10-31 00:35:58'),
(21, 4917382, 'Aceng Rahayu', '4917382', '1986-09-03', 'acengnsw@gmail.com', 'Pangawaren Kec. Karangpucung', '6282226836752', NULL, '0000-00-00 00:00:00'),
(22, 3058197, 'ACHMAD FAOZI', '3058197', '1996-12-04', 'faoziachmad15@gmail.com', 'Dusun Bengbulang Rt01 Rw02', '62895357431503', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 9274016, 'ADE APRIYANA', '9274016', '1994-05-29', 'adeapriyana331@gmail.com', 'Madura Kec. Wanareja', '6285715451995', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 2846713, 'Aji Mulyanto', '2846713', '1982-10-03', 'ajimulyanto82@gmail.com', 'Lumbir Kec. Lumbir', '-', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 7031296, 'AJIS ERIYANTO', '7031296', '1990-05-29', 'ajis.eriyanto06@gmail.com', 'Sindangbarang Kec. Karangpucun', '6282298235444', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 8741032, 'ALVIN EKA SAPUTRA', '8741032', '2001-11-04', 'aesaputra62@gmail.com', 'Walangsanga Kec. Moga', '6287897127178', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 3165079, 'Ana Hawa Sholihah', '3165079', '1993-12-02', 'ana12001223@webmail.com', 'Ciporos Kec. Karangpucung', '6289611049225', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 2048719, 'ANDI AGUS TRIANTO', '2048719', '1998-09-21', 'angandiagustrianto@gmail.com', 'Cibeunying Kec. Majenang', '6285942103515', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 1789026, 'Anwar Safii', '1789026', '1982-01-06', 'anwar.safii7@gmail.com', 'Cimanggu Kec. Cimanggu', '6283844499846', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 8457103, 'Budi Hartono', '8457103', '1990-07-07', 'budihartonosmkds@gmail.com', 'Tayem Kec. Karangpucung', '6285772093321', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 2306987, 'CAHYANI UMI IMAROH', '2306987', '2001-04-04', 'usercahyani@gmail.com', 'Pamulihan Kec. Karangpucung', '6287719308331', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 7142859, 'DEDEN KHOLIK IBRAHIM', '7142859', '1991-10-10', 'dedenibrahim310@gmail.com', 'Panimbang Kec. Cimanggu', '6285925158182', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 9673104, 'DEKA ROHMANA', '9673104', '1998-05-19', 'dekarohmana@students.unnes.ac.id', 'Cimanggu Kec. Cimanggu', '6287719715235', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 5894216, 'Dewi Larasatiningsih', '5894216', '1985-07-15', 'dewilarasati1985@gmail.com', 'Karangpucung Kec. Karangpucung', '6281807773944', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 6719024, 'Diyah Wulandari', '6719024', '1976-03-23', 'diyahwulandari1234@gmail.com', 'Panimbang Kec. Cimanggu', '6287728473789', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 4378210, 'Eko Oktiana', '4378210', '1992-10-01', 'ekaoktianaa@gmail.com', 'Gunungtelu Kec. Karangpucung', '6283863224542', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 8420671, 'Irma Riyani', '8420671', '1992-01-23', 'ria.irma92@gmail.com', 'Sindangsari Kec. Majenang', '6282269422773', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 3257908, 'ISMA DWI SUNDARI', '3257908', '1999-01-27', 'ismasundari27@gmail.com', 'Jenang Kec. Majenang', '6287825096622', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 1092837, 'KHOIRUL ANWAR', '1092837', '1994-12-29', 'khoirulanwar1994@gmail.com', 'Cinangsi Kec. Gandrungmangu', '6285236144727', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 7469205, 'LILIS AFIFATUL MAR\'AH', '7469205', '1994-12-05', 'lilisafifah1112@gmail.com', 'Tayem Kec. Karangpucung', '6282134817515', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 5183907, 'LISTIANA NURAENI', '5183907', '1999-01-18', 'listiananuraeni224@gmail.com', 'Bantarpanjang Kec. Karangpucun', '6289512297005', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 6091342, 'Listiya Widiasari', '6091342', '1995-03-23', 'listiyawidiasari23@gmail.com', 'Panimbang Kec. Cimanggu', '6281325349665', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 3081659, 'Mita Puspitasari', '3081659', '1992-01-01', 'selasa.project5@gmail.com', 'Cinangsi Kec. Gandrungmangu', '6285156523961', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 9234810, 'MOCHAMMAD MAGHFURI A', '9234810', '1993-03-31', 'furiabd2@gmail.com', 'Karanganyar Kec. Gandrungmangu', '6282225284500', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 3508196, 'MUHAMMAD LUKMANUL KH', '3508196', '1990-11-18', 'edogawa.lukman@gmail.com', 'Salebu Kec. Karangpucung', '6282226494500', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 6542039, 'NIKEN YUNITA', '6542039', '2000-06-18', 'nikenyunita45@gmail.com', 'Tayem Kec. Karangpucung', '6283862452180', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 4987316, 'NITA OKTAVIANI', '4987316', '2001-10-15', 'nitaokta151001@gmail.com', 'Karangkemiri Kec. Pekuncen', '6285640913652', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 7801432, 'NUGROHO PANGESTU ADI', '7801432', '1999-05-17', 'nugrohopangestuadi17.com', 'Cilacap Utara', '6282220883567', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, 8652037, 'NUNIK AGESTIANI', '8652037', '1995-08-26', 'agestianinunik@gmail.com', 'Surusunda Kec. Karangpucung', '6282324500464', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, 9074516, 'Nuswantoro', '9074516', '1984-06-04', 'nuswantoro04@gmail.com', 'Cibalung Kec. Cimanggu', '6283116301334', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, 1432098, 'PUTRI PERTIWI', '1432098', '1995-08-10', 'ppertiwi53@gmail.com', 'Panimbang Kec. Cimanggu', '6281229612501', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, 3927104, 'RAHARDIKA FAISAL PUTRA', '3927104', '1999-06-09', 'rahardikaputra96@gmail.com', 'Sindangsari Kec. Majenang', '6281325368924', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, 8264013, 'Rahmawati', '8264013', '1990-01-17', 'rahmawati17011990@gmail.com', 'Tayem Barat Kec. Karangpucung', '6287753587790', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, 2743091, 'RAHMI NUR FITRIA UTAMI', '2743091', '1999-03-26', 'rahmirahmiii@gmail.com', 'Cilempuyang Kec. Cimanggu', '6289673550911', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, 6902814, 'RENDY PAMUNGKAS', '6902814', '1997-10-20', 'rendypamungkas65@gmail.com', 'Karanggintung Kec. Gandrungman', '6281327467913', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, 1759230, 'RIZQI ASFIANUDIN', '1759230', '2000-05-01', 'rizqiasfianudin26@gmail.com', 'Batursari Kec. Sirampog', '6281326577560', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, 8347219, 'Sepri', '8347219', '1995-10-30', 'tkrsepri@gmail.com', 'Gunungtelu Kec. Karangpucung', '6285974820509', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, 6194307, 'Siti Maesaroh', '6194307', '1989-02-15', 'sitimaesaroh62780@gmail.com', 'Pengawaren Kec. Karangpucung', '628812669209', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, 7583024, 'SITI MEI RAHMAWATI', '7583024', '1993-05-23', 'meyrachma48@gmail.com', 'Pegadingan Kec. Cipari', '6283816261988', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(63, 4372016, 'SUCI SHOLEHANINGTIAS', '4372016', '1994-09-08', 'sucisholehaning08@gmail.com', 'Karangpucung Kec. Karangpucung', '6281329105022', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, 3814609, 'Sudarti', '3814609', '1983-03-26', 'sdarti.spd@gmail.com', 'Jenang Kec. Majenang', '62817208215', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(65, 7402815, 'Sugito', '7402815', '1977-11-04', 'gits_mjn@yahoo.com', 'Panimbang Kec. Cimanggu', '6281327330427', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(66, 8621734, 'Satriyo', '8621734', '2006-12-14', 'satriodone500@gmail.com', 'Gunungtiga, Bantarmangu Cimanggu', '6283159730125', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(67, 5901732, 'Sukono', '5901732', '1965-10-30', 'sukonoprio31@gmail.com', 'Surusunda Kec. Karangpucung', '6285741174738', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(68, 1204987, 'Suswati', '1204987', '1967-01-01', 'Suswatispd967@gmail.com', 'Sindangbarang Kec. Karangpucun', '6287728422216', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(69, 9704132, 'Wahyuni', '9704132', '1979-04-14', 'wahyuni.arum2019@gmail.com', 'Karangpucung Kec. Karangpucung', '62882005063767', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(70, 8437160, 'Warmansyah', '8437160', '1987-12-12', 'warmansyah1212@gmail.com', 'Mandala Kec. Cimanggu', '6282136475659', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(71, 2918403, 'Waryanto', '2918403', '1973-09-04', 'carsun007@gmail.com', 'Bantarmangu Kec. Cimanggu', '6282138655939', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(72, 4681305, 'Wiwi Waryanti', '4681305', '1990-01-23', 'arruzfaithfully@gmail.com', 'Surusunda Kec. Karangpucung', '6281328190395', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(73, 6390218, 'YENI RAHMAWATI', '6390218', '1994-01-19', 'yenirahmawati123@gmail.com', 'Ciporos Kec. Karangpucung', '6285747778739', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(74, 8302947, 'YUNI ANDARI', '8302947', '1986-06-27', 'yuniandari771@gmail.com', 'Bungbulang Kec. Karangpucung', '6281296161535', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(76, 39339, 'Ikhsan Mahardhika Abdillah', '39339', '2001-08-11', 'ikhsanmahar@gmail.com', 'Bantarpanjang, Cimanggu', '6289675494488', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(77, 82463, 'Bangkit Adi Kurnia U', '82463', '2000-05-07', 'kurniaaditama07@gmail.com', 'Surusunda, Karangpucung', '6285870859419', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(78, 25610, 'NIKY TRIANGGA S', '25610', '2001-05-02', 'nikyrior@gmail.com', 'Cijoho', '6285803223354', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(79, 40013, 'Farhan Nur Azis', '40013', '2003-07-10', 'farhannurazis27@gmail.com', 'Cibalung, Cimanggu', '6285326748397', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(80, 79822, 'Imam Mujiono', '79822', '1991-12-06', 'tobelherbie53@gmail.com', 'Lumbir', '6285725591144', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(81, 17880, 'Atrieus May Shobafaaz', '17880', '1975-05-16', 'atrieusmayshobafaaz@gmail.com', 'Surusunda', '6285725741302', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(82, 74643, 'Al Fitri Widia Sumarsono', '74643', '2000-09-11', 'alfitriwidia11@gmail.com', 'Karangpucung', '6281215027633', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(83, 92832, 'Hendri Santosa', '92832', '1988-04-19', 'hendri@gmail.com', 'Genteng', '628812903098', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(84, 9704150, 'Siti Sholihah', '293479873987398', '1983-07-09', 'sitishilihahbnn5@gmail.com', 'Margasari', '6281215265926', '2025-10-26 01:41:55', '2025-10-26 01:41:55'),
(85, 9704151, 'JEMI NOVEATUN', '98798766867', '1993-11-12', 'jeminoveatun1993@gmail.com', 'KEDUNGGEDE', '6288227221992', '2025-10-26 01:46:27', '2025-10-26 01:46:27'),
(86, 9704152, 'SRI LESTARI', '1985010110035401', '1974-04-22', 'sriles2015@gmail.com', 'Karangpucung', '6281327179920', '2025-10-26 01:48:04', '2025-10-26 01:48:04'),
(87, 9704166, 'Nur Azizah Khomis', '435326', '1985-08-13', 'nurazizahkhomis@gmail.com', 'Cimanggu', '6283825139666', '2025-10-26 05:19:10', '2025-10-26 05:19:10'),
(88, 9704167, 'Wahdani Dzulfikar', '534532', '1990-08-18', 'wdzulfiqar54176@gmail.com', 'Cikondang', '6287812821806', '2025-10-26 05:21:13', '2025-10-26 05:21:13'),
(89, 9704256, 'IBNU SAHAL', '54363543', '1995-01-02', 'sahalibnu003@gmail.com', 'Cileumeuh, Rejodadi, Kec. Cimanggu, Kabupaten Cilacap', '6281903906580', '2025-10-30 01:19:26', '2025-10-30 01:19:26'),
(90, 9704257, 'BAYU APRILIYANTO', '324236532', '1995-04-26', 'bayuapril264@gmail.com', 'Surusunda, Karangpucung', '6285702258869', '2025-10-30 01:22:25', '2025-10-30 01:22:25');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jurusan`
--

CREATE TABLE `jurusan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `jurusan`
--

INSERT INTO `jurusan` (`id`, `nama`, `deskripsi`) VALUES
(1, 'Teknik Komputer dan Jaringan', 'Jurusan Teknik Komputer dan Jaringan mempelajari cara merakit, menginstal, dan mengelola jaringan komputer. Siswa akan belajar tentang perangkat keras, perangkat lunak, keamanan jaringan, serta administrasi server untuk menjadi teknisi IT yang handal dan siap kerja di era digital.'),
(2, 'Teknik Kendaraan Ringan', 'Jurusan Teknik Kendaraan Ringan menyiapkan siswa agar mampu melakukan perawatan, perbaikan, dan analisis kerusakan pada kendaraan bermotor roda empat. Lulusan diharapkan menjadi teknisi otomotif profesional yang terampil, disiplin, dan mengikuti perkembangan teknologi kendaraan modern.'),
(3, 'Teknik Sepeda Motor', 'Jurusan Sepeda Motor berfokus pada pembelajaran perawatan dan perbaikan sepeda motor, baik konvensional maupun injeksi. Selain kemampuan teknis, siswa juga dibekali pengetahuan bisnis bengkel agar siap menjadi wirausahawan muda di bidang otomotif.'),
(5, 'Akuntansi', 'Jurusan Akuntansi membekali siswa dengan keterampilan dalam pencatatan transaksi keuangan, pembuatan laporan keuangan, dan pengelolaan administrasi keuangan. Lulusan diharapkan mampu bekerja di bidang perbankan, perusahaan, maupun membuka usaha jasa akuntansi sendiri.'),
(6, 'Pemasaran', 'Jurusan Pemasaran membekali siswa dengan kemampuan dalam bidang promosi, penjualan, pelayanan pelanggan, dan strategi bisnis. Siswa akan dilatih untuk menjadi tenaga profesional yang kreatif, komunikatif, dan mampu mengikuti perkembangan dunia usaha dan digital marketing.'),
(7, 'Belum Memilih', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2024_02_16_140323_jurusan', 1),
(10, '2024_02_16_150102_siswa', 2),
(11, '2024_02_17_095452_profile_sekolah', 3),
(12, '2024_02_17_102354_pendaftaran', 4),
(13, '2024_02_17_102646_pendaftaran_detail', 4),
(14, '2025_09_27_092020_user_migration', 5),
(15, '2025_09_27_092327_create_admins_table', 5),
(16, '2025_09_27_092503_create_gurus_table', 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pendaftaran`
--

CREATE TABLE `pendaftaran` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tahun_angkatan` int(11) NOT NULL,
  `gelombang` int(11) NOT NULL,
  `kuota` int(11) NOT NULL,
  `tutup` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pendaftaran`
--

INSERT INTO `pendaftaran` (`id`, `tahun_angkatan`, `gelombang`, `kuota`, `tutup`, `created_at`, `updated_at`) VALUES
(1, 2026, 1, 500, 0, '2025-09-27 03:55:48', '2025-09-29 05:33:28'),
(2, 2026, 2, 600, 1, '2025-09-29 05:32:59', '2025-09-29 05:33:19');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pendaftaran_detail`
--

CREATE TABLE `pendaftaran_detail` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pendaftaran_id` int(11) NOT NULL,
  `siswa_id` bigint(20) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `notif` int(11) NOT NULL DEFAULT 0,
  `tgl_verif` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pendaftaran_detail`
--

INSERT INTO `pendaftaran_detail` (`id`, `pendaftaran_id`, `siswa_id`, `status`, `notif`, `tgl_verif`, `created_at`, `updated_at`) VALUES
(11, 1, 11, 1, 0, NULL, '2025-10-24 02:33:31', '2025-10-24 06:20:59'),
(12, 1, 12, 1, 0, NULL, '2025-10-24 03:37:52', '2025-10-29 04:10:39'),
(13, 1, 13, 1, 0, NULL, '2025-10-24 04:27:43', '2025-10-28 11:51:27'),
(14, 1, 14, 1, 0, NULL, '2025-10-26 03:24:09', '2025-10-28 13:00:44'),
(15, 1, 15, 1, 0, NULL, '2025-10-26 03:32:35', '2025-10-27 13:28:47'),
(16, 1, 16, 1, 0, NULL, '2025-10-26 03:39:03', '2025-10-27 13:27:58'),
(17, 1, 17, 1, 0, NULL, '2025-10-26 03:44:14', '2025-10-28 12:50:13'),
(18, 1, 18, 1, 0, NULL, '2025-10-26 03:47:24', '2025-10-29 04:19:25'),
(19, 1, 19, 1, 0, NULL, '2025-10-26 03:52:47', '2025-10-29 04:18:33'),
(20, 1, 20, 1, 0, NULL, '2025-10-26 03:57:40', '2025-10-29 04:19:45'),
(21, 1, 21, 1, 0, NULL, '2025-10-26 04:01:07', '2025-10-28 12:06:04'),
(22, 1, 22, 1, 0, NULL, '2025-10-26 04:10:40', '2025-10-28 12:46:15'),
(23, 1, 23, 1, 0, NULL, '2025-10-26 04:34:35', '2025-10-28 11:39:26'),
(24, 1, 24, 1, 0, NULL, '2025-10-26 04:47:42', '2025-10-28 11:50:08'),
(25, 1, 25, 1, 0, NULL, '2025-10-26 04:54:16', '2025-10-28 12:53:19'),
(26, 1, 26, 1, 0, NULL, '2025-10-26 05:16:25', '2025-10-29 04:16:26'),
(27, 1, 27, 1, 0, NULL, '2025-10-26 05:22:49', '2025-10-28 12:58:15'),
(28, 1, 28, 1, 0, NULL, '2025-10-26 05:25:35', '2025-10-29 04:17:17'),
(29, 1, 29, 1, 0, NULL, '2025-10-26 05:38:44', '2025-10-29 02:48:44'),
(30, 1, 30, 1, 0, NULL, '2025-10-26 05:42:33', '2025-10-28 12:36:05'),
(31, 1, 31, 1, 0, NULL, '2025-10-26 05:45:47', '2025-10-28 13:00:14'),
(32, 1, 32, 1, 0, NULL, '2025-10-26 05:48:45', '2025-10-28 12:56:08'),
(33, 1, 33, 1, 0, NULL, '2025-10-26 05:51:18', '2025-10-29 04:16:53'),
(34, 1, 34, 1, 0, NULL, '2025-10-26 05:55:32', '2025-10-28 12:46:51'),
(35, 1, 35, 1, 0, NULL, '2025-10-26 06:08:08', '2025-10-27 12:46:14'),
(36, 1, 36, 1, 0, NULL, '2025-10-26 06:12:01', '2025-10-28 12:48:35'),
(37, 1, 37, 1, 0, NULL, '2025-10-26 06:16:42', '2025-10-28 12:38:48'),
(38, 1, 38, 1, 0, NULL, '2025-10-26 06:22:37', '2025-10-29 04:12:33'),
(39, 1, 39, 1, 0, NULL, '2025-10-26 06:26:51', '2025-10-27 11:02:03'),
(40, 1, 40, 1, 0, NULL, '2025-10-26 06:32:05', '2025-10-28 12:06:28'),
(41, 1, 41, 1, 0, NULL, '2025-10-26 06:35:29', '2025-10-28 12:06:49'),
(42, 1, 42, 1, 0, NULL, '2025-10-26 06:38:33', '2025-10-28 11:53:07'),
(43, 1, 43, 1, 0, NULL, '2025-10-26 06:41:15', '2025-10-28 11:52:11'),
(44, 1, 44, 1, 0, NULL, '2025-10-26 06:43:27', '2025-10-28 12:39:11'),
(45, 1, 45, 1, 0, NULL, '2025-10-26 06:47:26', '2025-10-28 12:35:46'),
(46, 1, 46, 1, 0, NULL, '2025-10-26 06:50:52', '2025-10-29 02:46:50'),
(47, 1, 47, 1, 0, NULL, '2025-10-26 06:54:25', '2025-10-27 09:40:35'),
(48, 1, 48, 1, 0, NULL, '2025-10-26 07:03:36', '2025-10-27 09:12:29'),
(49, 1, 49, 1, 0, NULL, '2025-10-26 07:11:02', '2025-10-29 04:09:41'),
(50, 1, 50, 1, 0, NULL, '2025-10-26 07:15:24', '2025-10-28 12:59:14'),
(51, 1, 51, 1, 0, NULL, '2025-10-26 07:24:10', '2025-10-28 12:50:44'),
(52, 1, 52, 1, 0, NULL, '2025-10-26 07:33:13', '2025-10-29 04:10:10'),
(53, 1, 53, 1, 0, NULL, '2025-10-26 07:37:08', '2025-10-28 11:54:31'),
(54, 1, 54, 1, 0, NULL, '2025-10-26 07:40:46', '2025-10-29 04:18:14'),
(55, 1, 55, 1, 0, NULL, '2025-10-26 07:49:04', '2025-10-27 09:10:19'),
(56, 1, 56, 1, 0, NULL, '2025-10-26 07:51:55', '2025-10-29 04:14:23'),
(57, 1, 57, 1, 0, NULL, '2025-10-26 07:54:52', '2025-10-29 04:21:50'),
(58, 1, 58, 1, 0, NULL, '2025-10-26 07:57:30', '2025-10-28 12:36:35'),
(59, 1, 59, 1, 0, NULL, '2025-10-26 08:00:11', '2025-10-29 04:13:10'),
(60, 1, 60, 1, 0, NULL, '2025-10-27 01:07:14', '2025-10-29 04:11:09'),
(61, 1, 61, 1, 0, NULL, '2025-10-27 01:14:51', '2025-10-29 04:11:59'),
(62, 1, 62, 1, 0, NULL, '2025-10-27 01:57:32', '2025-10-29 02:10:34'),
(63, 1, 63, 1, 0, NULL, '2025-10-27 02:10:43', '2025-10-28 12:03:36'),
(64, 1, 64, 1, 0, NULL, '2025-10-27 02:19:06', '2025-10-29 02:48:18'),
(65, 1, 65, 1, 0, NULL, '2025-10-27 03:48:38', '2025-10-28 12:56:36'),
(66, 1, 66, 1, 0, NULL, '2025-10-27 04:17:26', '2025-10-28 12:55:45'),
(67, 1, 67, 1, 0, NULL, '2025-10-27 04:21:52', '2025-10-28 11:53:36'),
(68, 1, 68, 1, 0, NULL, '2025-10-27 05:46:55', '2025-10-29 02:47:19'),
(69, 1, 69, 1, 0, NULL, '2025-10-27 09:26:39', '2025-10-27 12:56:03'),
(70, 1, 70, 1, 0, NULL, '2025-10-27 09:58:27', '2025-10-27 12:55:46'),
(71, 1, 71, 1, 0, NULL, '2025-10-27 10:31:51', '2025-10-27 12:57:53'),
(72, 1, 72, 1, 0, NULL, '2025-10-27 10:34:29', '2025-10-27 12:58:04'),
(73, 1, 73, 1, 0, NULL, '2025-10-27 10:42:57', '2025-10-27 10:44:49'),
(74, 1, 74, 1, 0, NULL, '2025-10-27 10:51:21', '2025-10-27 10:51:56'),
(75, 1, 75, 1, 0, NULL, '2025-10-27 11:09:49', '2025-10-27 12:45:16'),
(76, 1, 76, 1, 0, NULL, '2025-10-27 11:11:36', '2025-10-27 12:47:01'),
(77, 1, 77, 1, 0, NULL, '2025-10-27 12:18:16', '2025-10-29 04:13:50'),
(78, 1, 78, 1, 0, NULL, '2025-10-27 12:27:04', '2025-10-27 12:56:20'),
(79, 1, 79, 1, 0, NULL, '2025-10-27 12:35:36', '2025-10-27 12:56:33'),
(80, 1, 80, 1, 0, NULL, '2025-10-27 12:42:47', '2025-10-27 12:56:54'),
(81, 1, 81, 1, 0, NULL, '2025-10-27 12:54:11', '2025-10-27 12:55:22'),
(82, 1, 82, 1, 0, NULL, '2025-10-27 13:15:40', '2025-10-27 13:21:48'),
(83, 1, 83, 1, 0, NULL, '2025-10-27 13:17:46', '2025-10-27 13:18:19'),
(84, 1, 84, 1, 0, NULL, '2025-10-27 13:23:53', '2025-10-27 13:27:28'),
(85, 1, 85, 1, 0, NULL, '2025-10-27 13:25:54', '2025-10-27 13:26:21'),
(86, 1, 86, 1, 0, NULL, '2025-10-27 13:30:59', '2025-10-28 12:52:12'),
(87, 1, 87, 1, 0, NULL, '2025-10-27 13:33:20', '2025-10-27 13:33:44'),
(88, 1, 88, 1, 0, NULL, '2025-10-27 13:35:30', '2025-10-27 13:50:08'),
(89, 1, 89, 1, 0, NULL, '2025-10-27 13:39:46', '2025-10-27 13:51:01'),
(90, 1, 90, 1, 0, NULL, '2025-10-27 13:42:50', '2025-10-27 13:43:13'),
(91, 1, 91, 1, 0, NULL, '2025-10-27 13:45:48', '2025-10-27 13:51:55'),
(92, 1, 92, 1, 0, NULL, '2025-10-27 14:22:41', '2025-10-27 14:25:42'),
(93, 1, 93, 1, 0, NULL, '2025-10-27 14:23:26', '2025-10-29 04:14:53'),
(94, 1, 94, 1, 0, NULL, '2025-10-27 17:05:39', '2025-10-30 12:51:11'),
(95, 1, 95, 1, 0, NULL, '2025-10-28 00:35:53', '2025-10-29 02:49:20'),
(96, 1, 96, 1, 0, NULL, '2025-10-28 00:40:58', '2025-10-28 11:52:46'),
(97, 1, 97, 1, 0, NULL, '2025-10-28 01:33:51', '2025-10-28 12:57:24'),
(98, 1, 98, 1, 0, NULL, '2025-10-28 05:32:03', '2025-10-28 11:38:31'),
(99, 1, 99, 1, 0, NULL, '2025-10-28 05:43:15', '2025-10-28 11:50:59'),
(100, 1, 100, 1, 0, NULL, '2025-10-28 06:30:19', '2025-10-28 11:38:59'),
(101, 1, 101, 1, 0, NULL, '2025-10-28 06:41:30', '2025-10-29 02:47:50'),
(102, 1, 102, 1, 0, NULL, '2025-10-28 06:57:12', '2025-10-28 12:51:14'),
(103, 1, 103, 1, 0, NULL, '2025-10-28 11:14:14', '2025-10-28 11:14:58'),
(104, 1, 104, 1, 0, NULL, '2025-10-28 11:26:08', '2025-10-28 11:27:12'),
(105, 1, 105, 1, 0, NULL, '2025-10-28 11:29:40', '2025-10-28 11:30:35'),
(106, 1, 106, 1, 0, NULL, '2025-10-28 12:12:51', '2025-10-28 12:18:23'),
(108, 1, 108, 1, 0, NULL, '2025-10-28 12:31:03', '2025-10-28 12:32:45'),
(109, 1, 109, 1, 0, NULL, '2025-10-28 12:32:47', '2025-10-29 04:17:44'),
(110, 1, 110, 1, 0, NULL, '2025-10-29 02:26:32', '2025-10-29 04:15:59'),
(111, 1, 111, 1, 0, NULL, '2025-10-29 03:14:21', '2025-10-29 04:19:04'),
(112, 1, 112, 1, 1, NULL, '2025-10-29 04:04:43', '2025-11-02 10:09:54'),
(114, 1, 114, 1, 0, NULL, '2025-10-29 09:52:01', '2025-10-29 11:21:40'),
(115, 1, 115, 1, 0, NULL, '2025-10-30 11:56:05', '2025-10-30 12:49:59'),
(116, 1, 116, 1, 0, NULL, '2025-10-30 12:07:31', '2025-10-30 12:50:29'),
(117, 1, 117, 1, 0, NULL, '2025-10-30 12:32:33', '2025-10-30 12:49:20'),
(118, 1, 118, 1, 0, NULL, '2025-10-30 13:03:37', '2025-10-30 13:10:21'),
(119, 1, 119, 1, 0, NULL, '2025-10-30 14:21:07', '2025-10-31 01:59:30'),
(120, 1, 120, 1, 0, NULL, '2025-10-31 00:54:27', '2025-10-31 02:00:16'),
(121, 1, 121, 1, 0, NULL, '2025-10-31 01:33:32', '2025-10-31 02:36:14'),
(122, 1, 122, 1, 0, NULL, '2025-10-31 02:29:40', '2025-10-31 02:36:54'),
(123, 1, 123, 1, 0, NULL, '2025-10-31 02:42:45', '2025-10-31 02:52:38'),
(124, 1, 124, 1, 0, NULL, '2025-10-31 02:47:33', '2025-10-31 02:53:18'),
(126, 1, 126, 1, 0, NULL, '2025-10-31 07:22:43', '2025-10-31 13:45:43'),
(127, 1, 127, 1, 0, NULL, '2025-10-31 07:40:03', '2025-10-31 13:45:08'),
(128, 1, 128, 1, 0, NULL, '2025-10-31 09:44:03', '2025-10-31 13:46:19'),
(129, 1, 129, 1, 0, NULL, '2025-10-31 12:28:45', '2025-10-31 13:44:41'),
(130, 1, 130, 1, 0, NULL, '2025-10-31 12:31:56', '2025-10-31 13:46:41'),
(131, 1, 131, 1, 0, NULL, '2025-11-01 01:54:02', '2025-11-01 08:11:21'),
(132, 1, 132, 1, 0, NULL, '2025-11-01 02:10:15', '2025-11-01 08:10:13'),
(133, 1, 133, 1, 0, NULL, '2025-11-01 03:46:33', '2025-11-01 08:11:41'),
(134, 1, 134, 1, 0, NULL, '2025-11-01 05:02:14', '2025-11-01 05:06:29'),
(135, 1, 135, 1, 0, NULL, '2025-11-01 05:12:18', '2025-11-01 08:12:04'),
(136, 1, 136, 1, 0, NULL, '2025-11-01 05:16:19', '2025-11-01 08:12:23'),
(137, 1, 137, 1, 0, NULL, '2025-11-01 05:23:18', '2025-11-01 08:10:39'),
(138, 1, 138, 1, 0, NULL, '2025-11-01 10:42:17', '2025-11-02 10:41:36'),
(139, 1, 139, 1, 0, NULL, '2025-11-01 10:50:41', '2025-11-02 10:41:55'),
(140, 1, 140, 1, 0, NULL, '2025-11-01 12:42:00', '2025-11-02 10:41:09'),
(141, 1, 141, 1, 0, NULL, '2025-11-02 09:27:49', '2025-11-02 10:40:44'),
(142, 1, 142, 1, 0, NULL, '2025-11-02 09:35:08', '2025-11-02 10:42:25'),
(143, 1, 143, 1, 0, NULL, '2025-11-02 09:38:23', '2025-11-02 10:42:46'),
(144, 1, 144, 1, 0, NULL, '2025-11-02 11:34:49', '2025-11-03 11:46:25'),
(145, 1, 145, 1, 0, NULL, '2025-11-02 12:17:05', '2025-11-03 11:45:12'),
(146, 1, 146, 1, 0, NULL, '2025-11-02 12:37:25', '2025-11-03 11:48:26'),
(147, 1, 147, 1, 0, NULL, '2025-11-02 12:41:48', '2025-11-03 11:52:06'),
(148, 1, 148, 1, 0, NULL, '2025-11-02 12:57:43', '2025-11-03 11:45:48'),
(149, 1, 149, 1, 0, NULL, '2025-11-02 13:03:42', '2025-11-03 11:50:36'),
(150, 1, 150, 1, 0, NULL, '2025-11-02 13:08:19', '2025-11-03 11:41:52'),
(151, 1, 151, 1, 0, NULL, '2025-11-02 13:17:39', '2025-11-03 11:44:14'),
(152, 1, 152, 1, 0, NULL, '2025-11-02 13:25:40', '2025-11-03 11:51:11'),
(153, 1, 153, 1, 0, NULL, '2025-11-03 01:23:17', '2025-11-03 11:48:03'),
(154, 1, 154, 1, 0, NULL, '2025-11-03 12:26:08', '2025-11-04 04:41:00'),
(155, 1, 155, 1, 0, NULL, '2025-11-03 13:36:43', '2025-11-04 04:40:18'),
(156, 1, 156, 1, 0, NULL, '2025-11-03 13:39:52', '2025-11-04 04:41:55'),
(157, 1, 157, 1, 0, NULL, '2025-11-03 14:05:11', '2025-11-04 04:40:35'),
(158, 1, 158, 1, 0, NULL, '2025-11-04 08:48:42', '2025-11-04 11:16:09'),
(159, 1, 159, 1, 0, NULL, '2025-11-04 14:14:18', '2025-11-04 15:22:50'),
(161, 1, 161, 1, 1, NULL, '2025-11-04 14:31:49', '2025-11-04 15:40:04'),
(162, 1, 162, 1, 0, NULL, '2025-11-04 14:44:36', '2025-11-05 00:31:50'),
(163, 1, 163, 1, 0, NULL, '2025-11-04 15:00:14', '2025-11-04 15:24:48'),
(164, 1, 164, 1, 0, NULL, '2025-11-04 15:10:34', '2025-11-04 15:25:37'),
(165, 1, 165, 1, 0, NULL, '2025-11-04 15:15:01', '2025-11-04 15:25:15'),
(166, 1, 166, 1, 0, NULL, '2025-11-04 15:20:54', '2025-11-04 15:26:28'),
(167, 1, 167, 1, 0, NULL, '2025-11-04 15:26:09', '2025-11-04 22:37:35'),
(168, 1, 168, 1, 0, NULL, '2025-11-04 17:07:39', '2025-11-04 22:37:28'),
(170, 1, 170, 1, 0, NULL, '2025-11-05 10:05:37', '2025-11-05 10:23:22'),
(171, 1, 171, 1, 0, NULL, '2025-11-05 11:37:42', '2025-11-05 11:39:36'),
(172, 1, 172, 1, 0, NULL, '2025-11-05 11:42:59', '2025-11-06 00:00:38'),
(173, 1, 173, 1, 0, NULL, '2025-11-05 12:58:07', '2025-11-05 23:58:53'),
(174, 1, 174, 1, 0, NULL, '2025-11-05 21:41:08', '2025-11-05 23:59:21'),
(175, 1, 175, 1, 0, NULL, '2025-11-05 21:47:49', '2025-11-06 00:00:12'),
(176, 1, 176, 1, 0, NULL, '2025-11-06 01:37:17', '2025-11-06 01:37:52'),
(177, 1, 177, 1, 0, NULL, '2025-11-06 03:43:51', '2025-11-06 04:04:36'),
(178, 1, 178, 1, 0, NULL, '2025-11-06 12:49:02', '2025-11-06 14:44:54'),
(179, 1, 179, 1, 0, NULL, '2025-11-06 14:43:19', '2025-11-06 14:44:20'),
(180, 1, 180, 1, 0, NULL, '2025-11-07 08:00:40', '2025-11-07 08:02:28'),
(181, 1, 181, 1, 0, NULL, '2025-11-07 08:05:29', '2025-11-07 22:29:43'),
(182, 1, 182, 1, 0, NULL, '2025-11-07 08:20:00', '2025-11-07 22:28:49'),
(183, 1, 183, 1, 0, NULL, '2025-11-07 08:28:03', '2025-11-07 22:30:42'),
(184, 1, 184, 1, 0, NULL, '2025-11-07 08:38:06', '2025-11-07 22:29:54'),
(185, 1, 185, 1, 0, NULL, '2025-11-07 08:44:21', '2025-11-07 22:29:09'),
(186, 1, 186, 1, 0, NULL, '2025-11-07 09:01:24', '2025-11-07 22:30:23'),
(187, 1, 187, 1, 0, NULL, '2025-11-07 10:03:29', '2025-11-07 22:31:40'),
(188, 1, 188, 1, 0, NULL, '2025-11-07 12:12:17', '2025-11-07 22:29:25'),
(189, 1, 189, 1, 0, NULL, '2025-11-07 12:17:18', '2025-11-07 22:30:52'),
(190, 1, 190, 1, 0, NULL, '2025-11-07 12:50:59', '2025-11-07 22:30:08'),
(191, 1, 191, 1, 0, NULL, '2025-11-07 14:03:01', '2025-11-07 22:31:06'),
(192, 1, 192, 1, 0, NULL, '2025-11-07 17:23:22', '2025-11-07 22:31:28'),
(193, 1, 193, 1, 0, NULL, '2025-11-07 23:18:09', '2025-11-07 23:31:27'),
(194, 1, 194, 1, 0, NULL, '2025-11-07 23:23:41', '2025-11-07 23:31:43'),
(195, 1, 195, 1, 0, NULL, '2025-11-07 23:30:44', '2025-11-07 23:31:19'),
(196, 1, 196, 1, 0, NULL, '2025-11-07 23:37:50', '2025-11-07 23:38:27'),
(197, 1, 197, 1, 0, NULL, '2025-11-09 04:01:35', '2025-11-09 07:19:56'),
(198, 1, 198, 1, 0, NULL, '2025-11-09 07:16:21', '2025-11-09 07:20:08'),
(199, 1, 199, 1, 0, NULL, '2025-11-09 07:19:09', '2025-11-09 07:19:47'),
(200, 1, 200, 1, 0, NULL, '2025-11-09 22:52:50', '2025-11-09 23:51:39'),
(201, 1, 201, 1, 0, NULL, '2025-11-10 06:16:18', '2025-11-10 10:54:36'),
(202, 1, 202, 1, 0, NULL, '2025-11-10 06:23:54', '2025-11-10 10:54:14'),
(203, 1, 203, 1, 0, NULL, '2025-11-10 09:32:08', '2025-11-10 10:54:52'),
(204, 1, 204, 1, 0, NULL, '2025-11-10 10:53:21', '2025-11-10 10:54:25'),
(205, 1, 205, 1, 0, NULL, '2025-11-11 01:09:28', '2025-11-11 02:24:59'),
(206, 1, 206, 1, 0, NULL, '2025-11-11 02:14:41', '2025-11-11 02:24:32'),
(207, 1, 207, 1, 0, NULL, '2025-11-11 03:06:19', '2025-11-11 05:28:31'),
(208, 1, 208, 1, 0, NULL, '2025-11-11 03:09:58', '2025-11-11 05:28:24'),
(209, 1, 209, 1, 0, NULL, '2025-11-11 07:29:13', '2025-11-11 08:07:11'),
(210, 1, 210, 1, 0, NULL, '2025-11-11 07:54:28', '2025-11-11 08:07:19'),
(211, 1, 211, 1, 0, NULL, '2025-11-11 08:06:03', '2025-11-11 08:07:27'),
(212, 1, 212, 1, 0, NULL, '2025-11-11 14:39:37', '2025-11-12 13:17:32'),
(213, 1, 213, 1, 0, NULL, '2025-11-12 10:07:30', '2025-11-12 13:17:40'),
(214, 1, 214, 1, 0, NULL, '2025-11-12 10:22:43', '2025-11-12 14:41:00'),
(215, 1, 215, 1, 0, NULL, '2025-11-12 10:39:28', '2025-11-12 13:17:58'),
(216, 1, 216, 1, 0, NULL, '2025-11-12 13:06:02', '2025-11-12 13:17:47'),
(217, 1, 217, 1, 0, NULL, '2025-11-12 13:09:59', '2025-11-12 13:18:05'),
(218, 1, 218, 1, 0, NULL, '2025-11-12 13:39:00', '2025-11-12 14:40:39'),
(219, 1, 219, 1, 0, NULL, '2025-11-12 13:47:30', '2025-11-12 14:41:23'),
(220, 1, 220, 1, 0, NULL, '2025-11-12 22:57:39', '2025-11-13 00:34:37'),
(221, 1, 221, 1, 0, NULL, '2025-11-13 03:13:35', '2025-11-13 03:13:59'),
(222, 1, 222, 1, 0, NULL, '2025-11-13 03:16:06', '2025-11-13 04:08:08'),
(223, 1, 223, 1, 0, NULL, '2025-11-13 04:05:23', '2025-11-13 04:08:40'),
(224, 1, 224, 1, 0, NULL, '2025-11-13 04:06:00', '2025-11-13 04:07:28'),
(225, 1, 225, 1, 0, NULL, '2025-11-13 04:23:23', '2025-11-13 11:50:18'),
(226, 1, 226, 1, 0, NULL, '2025-11-13 04:34:25', '2025-11-13 11:50:10'),
(227, 1, 227, 1, 0, NULL, '2025-11-13 11:45:56', '2025-11-13 11:50:38'),
(228, 1, 228, 1, 0, NULL, '2025-11-13 11:49:29', '2025-11-13 11:50:33'),
(229, 1, 229, 1, 0, NULL, '2025-11-13 12:13:14', '2025-11-13 12:17:52'),
(230, 1, 230, 1, 0, NULL, '2025-11-13 12:16:39', '2025-11-13 12:17:58'),
(231, 1, 231, 1, 0, NULL, '2025-11-13 12:49:34', '2025-11-15 02:28:43'),
(232, 1, 232, 1, 0, NULL, '2025-11-13 13:04:51', '2025-11-15 02:28:52'),
(233, 1, 233, 1, 0, NULL, '2025-11-13 13:18:36', '2025-11-15 02:29:31'),
(234, 1, 234, 1, 0, NULL, '2025-11-13 13:21:26', '2025-11-15 05:59:34'),
(235, 1, 235, 1, 0, NULL, '2025-11-13 13:24:36', '2025-11-15 02:29:37'),
(236, 1, 236, 1, 0, NULL, '2025-11-13 13:29:34', '2025-11-15 02:29:23'),
(237, 1, 237, 1, 0, NULL, '2025-11-14 08:12:58', '2025-11-15 02:29:00'),
(238, 1, 238, 1, 0, NULL, '2025-11-15 05:17:29', '2025-11-15 06:01:28'),
(239, 1, 239, 1, 0, NULL, '2025-11-15 05:20:53', '2025-11-15 07:02:43'),
(240, 1, 240, 1, 0, NULL, '2025-11-15 05:34:34', '2025-11-15 06:01:08'),
(241, 1, 241, 1, 0, NULL, '2025-11-15 05:45:26', '2025-11-15 06:01:21'),
(242, 1, 242, 1, 0, NULL, '2025-11-15 05:49:55', '2025-11-15 07:00:03'),
(243, 1, 243, 1, 0, NULL, '2025-11-15 05:49:56', '2025-11-15 07:05:17'),
(244, 1, 244, 1, 0, NULL, '2025-11-15 05:58:26', '2025-11-15 07:05:39'),
(245, 1, 245, 1, 0, NULL, '2025-11-15 06:22:41', '2025-11-15 07:09:52'),
(246, 1, 246, 1, 0, NULL, '2025-11-15 06:23:21', '2025-11-15 07:03:24'),
(247, 1, 247, 1, 0, NULL, '2025-11-15 06:27:40', '2025-11-15 07:07:20'),
(248, 1, 248, 1, 0, NULL, '2025-11-15 06:28:28', '2025-11-15 07:07:03'),
(249, 1, 249, 1, 0, NULL, '2025-11-15 06:28:41', '2025-11-15 07:09:36'),
(250, 1, 250, 1, 0, NULL, '2025-11-15 06:34:51', '2025-11-15 06:59:39'),
(251, 1, 251, 1, 0, NULL, '2025-11-15 06:43:49', '2025-11-15 06:56:51'),
(252, 1, 252, 1, 0, NULL, '2025-11-15 06:47:05', '2025-11-15 07:06:40'),
(253, 1, 253, 1, 0, NULL, '2025-11-15 06:48:53', '2025-11-15 07:03:01'),
(254, 1, 254, 1, 0, NULL, '2025-11-15 07:00:00', '2025-11-15 07:00:22'),
(255, 1, 255, 1, 0, NULL, '2025-11-15 07:00:31', '2025-11-15 07:02:18'),
(256, 1, 256, 1, 0, NULL, '2025-11-15 07:05:40', '2025-11-15 07:06:21'),
(257, 1, 257, 1, 0, NULL, '2025-11-15 07:10:38', '2025-11-15 07:10:55'),
(258, 1, 258, 1, 0, NULL, '2025-11-15 07:21:25', '2025-11-16 05:46:16'),
(259, 1, 259, 1, 0, NULL, '2025-11-15 07:25:58', '2025-11-16 05:46:35'),
(260, 1, 260, 1, 0, NULL, '2025-11-15 11:21:20', '2025-11-16 05:47:04'),
(261, 1, 261, 1, 0, NULL, '2025-11-16 05:24:37', '2025-11-16 05:45:26'),
(262, 1, 262, 1, 0, NULL, '2025-11-16 05:27:17', '2025-11-16 05:47:23'),
(263, 1, 263, 1, 0, NULL, '2025-11-16 06:02:27', '2025-11-16 06:09:21'),
(264, 1, 264, 1, 0, NULL, '2025-11-16 08:24:31', '2025-11-16 09:34:43'),
(265, 1, 265, 1, 0, NULL, '2025-11-16 08:55:50', '2025-11-16 09:33:56'),
(266, 1, 266, 1, 0, NULL, '2025-11-16 09:00:05', '2025-11-16 09:34:09'),
(267, 1, 267, 1, 0, NULL, '2025-11-16 09:10:44', '2025-11-16 09:34:03'),
(268, 1, 268, 1, 0, NULL, '2025-11-16 09:14:50', '2025-11-16 09:33:49'),
(269, 1, 269, 1, 0, NULL, '2025-11-16 09:18:50', '2025-11-16 09:33:40'),
(270, 1, 270, 1, 0, NULL, '2025-11-16 09:25:34', '2025-11-16 09:34:26'),
(271, 1, 271, 1, 0, NULL, '2025-11-16 09:29:39', '2025-11-16 09:34:17'),
(272, 1, 272, 1, 0, NULL, '2025-11-16 09:36:42', '2025-11-16 10:23:49'),
(273, 1, 273, 1, 0, NULL, '2025-11-16 09:40:46', '2025-11-16 10:23:28'),
(274, 1, 274, 1, 0, NULL, '2025-11-16 09:49:18', '2025-11-16 10:24:18'),
(275, 1, 275, 1, 0, NULL, '2025-11-16 09:57:54', '2025-11-16 10:24:00'),
(276, 1, 276, 1, 0, NULL, '2025-11-16 10:02:40', '2025-11-16 10:23:23'),
(277, 1, 277, 1, 0, NULL, '2025-11-16 12:41:33', '2025-11-16 23:39:40'),
(278, 1, 278, 1, 0, NULL, '2025-11-17 01:15:38', '2025-11-17 01:57:50'),
(279, 1, 279, 1, 0, NULL, '2025-11-17 02:34:07', '2025-11-17 02:40:52'),
(280, 1, 280, 1, 0, NULL, '2025-11-17 10:03:26', '2025-11-17 10:38:15'),
(281, 1, 281, 1, 0, NULL, '2025-11-17 10:30:44', '2025-11-17 10:38:04'),
(282, 1, 282, 1, 0, NULL, '2025-11-17 10:36:08', '2025-11-17 10:38:24'),
(283, 1, 283, 1, 0, NULL, '2025-11-17 10:42:39', '2025-11-17 10:43:04'),
(284, 1, 284, 1, 0, NULL, '2025-11-17 11:36:03', '2025-11-17 11:36:25'),
(285, 1, 285, 1, 0, NULL, '2025-11-17 11:54:53', '2025-11-17 12:38:18'),
(286, 1, 286, 1, 0, NULL, '2025-11-17 12:04:36', '2025-11-17 12:38:49'),
(287, 1, 287, 1, 0, NULL, '2025-11-17 16:37:50', '2025-11-17 19:00:07'),
(288, 1, 288, 1, 0, NULL, '2025-11-17 16:46:04', '2025-11-17 19:00:14'),
(289, 1, 289, 1, 0, NULL, '2025-11-17 16:58:33', '2025-11-17 19:00:19'),
(290, 1, 290, 1, 0, NULL, '2025-11-17 17:07:06', '2025-11-17 19:00:25'),
(291, 1, 291, 1, 0, NULL, '2025-11-17 21:35:51', '2025-11-17 23:37:57'),
(292, 1, 292, 1, 0, NULL, '2025-11-18 00:18:19', '2025-11-18 00:57:37'),
(293, 1, 293, 1, 0, NULL, '2025-11-18 00:52:02', '2025-11-18 00:52:27'),
(294, 1, 294, 1, 0, NULL, '2025-11-18 02:32:15', '2025-11-18 03:39:53'),
(295, 1, 295, 1, 0, NULL, '2025-11-18 02:49:51', '2025-11-18 03:39:32'),
(296, 1, 296, 1, 0, NULL, '2025-11-18 03:38:45', '2025-11-18 03:39:39'),
(297, 1, 297, 1, 0, NULL, '2025-11-18 04:08:36', '2025-11-18 05:35:33'),
(298, 1, 298, 1, 0, NULL, '2025-11-18 04:45:26', '2025-11-18 05:39:04'),
(299, 1, 299, 1, 0, NULL, '2025-11-18 09:12:49', '2025-11-18 11:32:40'),
(300, 1, 300, 1, 0, NULL, '2025-11-18 10:46:44', '2025-11-18 11:32:20'),
(301, 1, 301, 1, 0, NULL, '2025-11-18 10:53:58', '2025-11-18 11:32:00'),
(302, 1, 302, 1, 0, NULL, '2025-11-18 11:07:15', '2025-11-18 11:32:58'),
(303, 1, 303, 1, 0, NULL, '2025-11-18 11:15:03', '2025-11-18 11:33:17'),
(304, 1, 304, 1, 0, NULL, '2025-11-18 11:29:20', '2025-11-18 11:31:42'),
(305, 1, 305, 1, 0, NULL, '2025-11-18 14:34:23', '2025-11-22 12:17:27'),
(306, 1, 306, 1, 0, NULL, '2025-11-19 04:22:45', '2025-11-22 12:17:01'),
(307, 1, 307, 1, 0, NULL, '2025-11-19 07:29:34', '2025-11-22 12:18:02'),
(308, 1, 308, 1, 0, NULL, '2025-11-20 00:02:53', '2025-11-22 12:15:08'),
(309, 1, 309, 1, 0, NULL, '2025-11-21 05:45:34', '2025-11-22 12:15:52'),
(310, 1, 310, 1, 0, NULL, '2025-11-21 06:15:31', '2025-11-22 12:16:12'),
(311, 1, 311, 1, 0, NULL, '2025-11-22 03:02:07', '2025-11-22 12:16:28'),
(312, 1, 312, 1, 0, NULL, '2025-11-22 03:07:23', '2025-11-22 12:17:44'),
(313, 1, 313, 1, 0, NULL, '2025-11-22 06:01:31', '2025-11-22 12:16:46'),
(314, 1, 314, 1, 0, NULL, '2025-11-22 11:07:21', '2025-11-22 12:15:28'),
(315, 1, 315, 1, 0, NULL, '2025-11-22 12:01:58', '2025-11-22 12:18:23'),
(316, 1, 316, 1, 0, NULL, '2025-11-23 11:27:48', '2025-11-24 02:19:56'),
(317, 1, 317, 1, 0, NULL, '2025-11-23 11:34:07', '2025-11-24 02:34:02'),
(318, 1, 318, 1, 0, NULL, '2025-11-23 11:42:54', '2025-11-24 02:20:18'),
(319, 1, 319, 1, 0, NULL, '2025-11-23 11:48:12', '2025-11-24 02:19:17'),
(320, 1, 320, 1, 0, NULL, '2025-11-24 10:22:47', '2025-11-24 23:47:05'),
(321, 1, 321, 1, 0, NULL, '2025-11-24 11:03:48', '2025-11-24 23:47:49'),
(322, 1, 322, 1, 0, NULL, '2025-11-24 11:45:23', '2025-11-24 23:47:34'),
(323, 1, 323, 1, 0, NULL, '2025-11-25 04:23:44', '2025-11-26 03:59:40'),
(324, 1, 324, 1, 0, NULL, '2025-11-27 11:37:54', '2025-11-27 23:47:22'),
(325, 1, 325, 1, 0, NULL, '2025-11-27 11:45:09', '2025-11-27 23:46:48'),
(326, 1, 326, 1, 0, NULL, '2025-11-27 11:57:47', '2025-11-27 23:47:03'),
(327, 1, 327, 1, 0, NULL, '2025-11-27 13:06:55', '2025-11-27 23:47:10'),
(328, 1, 328, 1, 0, NULL, '2025-11-28 10:34:49', '2025-11-29 13:11:55'),
(329, 1, 329, 1, 0, NULL, '2025-11-28 12:23:31', '2025-11-30 13:24:50'),
(330, 1, 330, 1, 0, NULL, '2025-12-01 13:18:05', '2025-12-03 12:14:44'),
(331, 1, 331, 1, 0, NULL, '2025-12-03 12:12:53', '2025-12-03 12:14:49'),
(332, 1, 332, 1, 0, NULL, '2025-12-06 12:06:53', '2025-12-06 12:07:17'),
(333, 1, 333, 1, 0, NULL, '2025-12-06 13:10:18', '2025-12-08 02:22:39'),
(334, 1, 334, 1, 0, NULL, '2025-12-06 22:35:45', '2025-12-08 02:22:09'),
(335, 1, 335, 1, 0, NULL, '2025-12-06 22:39:33', '2025-12-08 02:21:16'),
(336, 1, 336, 1, 0, NULL, '2025-12-07 00:28:13', '2025-12-08 02:20:49'),
(337, 1, 337, 1, 0, NULL, '2025-12-08 13:48:32', '2025-12-09 01:47:19'),
(338, 1, 338, 1, 0, NULL, '2025-12-10 04:17:29', '2025-12-10 07:22:09'),
(339, 1, 339, 1, 0, NULL, '2025-12-12 02:55:29', '2025-12-13 08:28:39'),
(340, 1, 340, 1, 0, NULL, '2025-12-15 01:59:47', '2025-12-15 02:11:53'),
(341, 1, 341, 1, 0, NULL, '2025-12-15 02:37:32', '2025-12-15 02:40:14'),
(342, 1, 342, 1, 0, NULL, '2025-12-15 12:02:47', '2025-12-16 11:53:17'),
(343, 1, 343, 1, 0, NULL, '2025-12-19 12:30:49', '2025-12-22 04:17:36'),
(344, 1, 344, 1, 0, NULL, '2025-12-20 05:25:28', '2025-12-22 04:16:34'),
(345, 1, 345, 1, 0, NULL, '2025-12-22 03:10:43', '2025-12-22 04:17:06'),
(346, 1, 346, 1, 0, NULL, '2025-12-22 09:14:22', '2025-12-25 12:29:28'),
(347, 1, 347, 1, 0, NULL, '2025-12-22 10:52:00', '2025-12-25 12:26:46'),
(348, 1, 348, 1, 0, NULL, '2025-12-24 05:15:55', '2025-12-25 12:26:27'),
(349, 1, 349, 1, 0, NULL, '2025-12-25 12:08:16', '2025-12-25 12:24:37'),
(350, 1, 350, 1, 0, NULL, '2025-12-25 12:14:17', '2025-12-25 12:27:23'),
(351, 1, 351, 1, 0, NULL, '2025-12-25 12:19:21', '2025-12-25 12:27:06'),
(352, 1, 352, 1, 0, NULL, '2025-12-25 12:34:18', '2025-12-25 12:36:32'),
(353, 1, 353, 1, 0, NULL, '2025-12-25 12:41:17', '2025-12-25 13:35:56'),
(354, 1, 354, 1, 0, NULL, '2025-12-25 13:45:18', '2025-12-25 13:46:42'),
(355, 1, 355, 1, 0, NULL, '2025-12-26 12:02:39', '2026-01-01 01:46:31'),
(356, 1, 356, 1, 0, NULL, '2025-12-26 12:12:02', '2026-01-01 01:42:48'),
(357, 1, 357, 1, 0, NULL, '2025-12-28 04:33:48', '2026-01-01 01:46:20'),
(358, 1, 358, 1, 0, NULL, '2026-01-01 00:54:03', '2026-01-01 01:24:45'),
(359, 1, 359, 1, 0, NULL, '2026-01-02 09:06:39', '2026-01-02 09:34:27'),
(360, 1, 360, 1, 0, NULL, '2026-01-03 14:03:36', '2026-01-04 01:39:18'),
(361, 1, 361, 1, 0, NULL, '2026-01-05 01:13:36', '2026-01-06 00:03:12'),
(362, 1, 362, 1, 0, NULL, '2026-01-05 10:04:05', '2026-01-06 00:02:50'),
(363, 1, 363, 1, 0, NULL, '2026-01-05 12:46:03', '2026-01-06 00:01:57'),
(364, 1, 364, 1, 0, NULL, '2026-01-05 14:52:09', '2026-01-06 00:02:23'),
(365, 1, 365, 1, 0, NULL, '2026-01-06 03:22:39', '2026-01-06 04:53:25'),
(366, 1, 366, 1, 0, NULL, '2026-01-06 04:45:21', '2026-01-06 04:53:29'),
(367, 1, 367, 1, 0, NULL, '2026-01-06 06:16:37', '2026-01-07 03:49:26'),
(368, 1, 368, 1, 0, NULL, '2026-01-06 08:43:50', '2026-01-07 03:50:48'),
(369, 1, 369, 1, 0, NULL, '2026-01-07 02:34:15', '2026-01-07 03:48:56'),
(370, 1, 370, 1, 0, NULL, '2026-01-07 03:30:05', '2026-01-07 03:48:49'),
(371, 1, 371, 1, 0, NULL, '2026-01-07 08:15:20', '2026-01-08 05:36:30'),
(372, 1, 372, 1, 0, NULL, '2026-01-07 10:11:48', '2026-01-08 05:34:55'),
(373, 1, 373, 1, 0, NULL, '2026-01-07 10:34:54', '2026-01-08 05:35:01'),
(374, 1, 374, 0, 0, NULL, '2026-01-09 05:23:56', '2026-01-09 05:23:56'),
(375, 1, 375, 0, 0, NULL, '2026-01-09 06:59:41', '2026-01-09 06:59:41'),
(376, 1, 376, 0, 0, NULL, '2026-01-09 07:08:53', '2026-01-09 07:08:53'),
(377, 1, 377, 0, 0, NULL, '2026-01-09 07:16:06', '2026-01-09 07:16:06'),
(378, 1, 378, 0, 0, NULL, '2026-01-09 08:41:34', '2026-01-09 08:41:34'),
(379, 1, 379, 0, 0, NULL, '2026-01-09 08:52:29', '2026-01-09 08:52:29'),
(380, 1, 380, 0, 0, NULL, '2026-01-09 09:04:05', '2026-01-09 09:04:05');

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `profile_sekolah`
--

CREATE TABLE `profile_sekolah` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `kepsek` varchar(255) NOT NULL,
  `nip_kepsek` varchar(255) NOT NULL,
  `ttd_kepsek` varchar(255) NOT NULL,
  `panitia` varchar(255) NOT NULL,
  `nip_panitia` varchar(255) NOT NULL,
  `ttd_panitia` varchar(255) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `logo_dark` varchar(255) NOT NULL,
  `alamat` longtext NOT NULL,
  `telpon` varchar(255) NOT NULL,
  `website` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `favicon` varchar(255) NOT NULL,
  `tahun_ajar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `profile_sekolah`
--

INSERT INTO `profile_sekolah` (`id`, `username`, `password`, `nama`, `kepsek`, `nip_kepsek`, `ttd_kepsek`, `panitia`, `nip_panitia`, `ttd_panitia`, `foto`, `logo_dark`, `alamat`, `telpon`, `website`, `email`, `favicon`, `tahun_ajar`) VALUES
(1, 'admin', '123', 'SMK Darussalam Karangpucung', 'Dr. Risa Fita Hapsari, S.Pd, M.M.', '92736826181292', 'ttd-kepsek.png', 'Waryanto, S.Pd', '-', 'kAdnfChXL3w4bigPJBPd08vkWoplcbqiC2BweGfC.png', 'spmbdaka.png', 'spmbdaka.png', 'Jl. Raya Karangpucung-Majenang KM.02 No.8, Karangpucung, Cilacap', '021-4645-7878', 'smkdaka.sch.id', 'smkdkrpc@gmail.com', 'OzHwuS7i18XXpyQ5hycLASimLlF9nqaBh2wgcJWs.png', '2026');

-- --------------------------------------------------------

--
-- Struktur dari tabel `seksi_presensi`
--

CREATE TABLE `seksi_presensi` (
  `id` bigint(20) NOT NULL,
  `guru_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `seksi_presensi`
--

INSERT INTO `seksi_presensi` (`id`, `guru_id`, `created_at`, `updated_at`) VALUES
(2, 19, '2025-09-29 05:36:00', '2025-09-29 05:36:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa`
--

CREATE TABLE `siswa` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `no_regis` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `referral_id` int(11) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `nik` varchar(255) DEFAULT NULL,
  `jurusan` varchar(255) DEFAULT NULL,
  `jenis_kelamin` varchar(255) DEFAULT NULL,
  `tempat_lahir` varchar(255) DEFAULT NULL,
  `tgl_lahir` varchar(255) DEFAULT NULL,
  `hp` varchar(255) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `agama` varchar(255) NOT NULL,
  `desa` varchar(255) DEFAULT NULL,
  `kecamatan` varchar(255) DEFAULT NULL,
  `kabupaten` varchar(255) DEFAULT NULL,
  `provinsi` varchar(255) DEFAULT NULL,
  `no_kk` bigint(255) DEFAULT NULL,
  `nama_ayah` varchar(255) DEFAULT NULL,
  `nama_ibu` varchar(255) DEFAULT NULL,
  `sekolah_asal` varchar(255) DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `akta` varchar(255) NOT NULL,
  `kk` varchar(255) NOT NULL,
  `kip` varchar(255) DEFAULT NULL,
  `suket` varchar(255) DEFAULT NULL,
  `qr_code` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `siswa`
--

INSERT INTO `siswa` (`id`, `no_regis`, `user_id`, `referral_id`, `nama`, `nik`, `jurusan`, `jenis_kelamin`, `tempat_lahir`, `tgl_lahir`, `hp`, `alamat`, `agama`, `desa`, `kecamatan`, `kabupaten`, `provinsi`, `no_kk`, `nama_ayah`, `nama_ibu`, `sekolah_asal`, `foto`, `akta`, `kk`, `kip`, `suket`, `qr_code`, `created_at`, `updated_at`) VALUES
(11, 'REG-00011', 9704147, 69, 'DAFFA UBAIDHILLAH', '3301120206090005', 'Pemasaran', 'L', 'CILACAP', '2011-01-06', '62882005063767', 'DUSUN KARANGANYAR RT02 RW03', 'ISLAM', 'TAYEM TIMUR', 'KARANGPUCUNG', 'CILACAP', 'JAWA TENGAH', 3301121303080036, 'AHMAD DEDI PRAYOGO', 'DARIYAH', 'SMP NEGERI 1 KARANGPUCUNG', NULL, 'storage/akta/yOsZ9Ad4cBZO4YCNJVTRlvZXUEnVJN24d66kEuoT.jpg', 'storage/kk/HrJIi9D195XShE7pqWAFbaQZLNDgFzlPX6wlwUr9.jpg', NULL, NULL, 'qr_code/REG-00011.svg', '2025-10-24 02:33:31', '2025-10-29 05:13:30'),
(12, 'REG-00012', 9704148, 69, 'RANGGA EGA PRATAMA', '3301122212100001', 'Teknik Sepeda Motor', 'L', 'CILACAP', '2010-12-22', '62882005063767', 'DUSUN CIJOLI RT02 RW02', 'ISLAM', 'KARANGPUCUNG', 'KARANGPUCUNG', 'CILACAP', 'JAWA TENGAH', 3301120801058660, 'SUDARTO DATUN', 'RATIMAH', 'SMP NEGERI 1 KARANGPUCUNG', NULL, 'storage/akta/fJZljQLtp2LFV09QFvr1yP5AzuFHQ7BIJzndjZZT.jpg', 'storage/kk/8JbEsFaV1PkCNhMdVhuJaupjwYgfcvZbl2inOvR2.jpg', NULL, NULL, 'qr_code/REG-00012.svg', '2025-10-24 03:37:52', '2025-10-29 04:10:37'),
(13, 'REG-00013', 9704149, 69, 'BISMA AERLANGGA', '3301120306100003', 'Teknik Komputer dan Jaringan', 'L', 'CILACAP', '2010-06-03', '62882005063767', 'DUSUN KARANGPUCUNG RT01/RW06', 'ISLAM', 'KARANGPUCUNG', 'KARANGPUCUNG', 'CILACAP', 'JAWA TENGAH', 3301122104090036, 'KRISNO', 'YAYU RIYANTI', 'SMP NEGERI 1 KARANGPUCUNG', NULL, 'storage/akta/d1SYWLbM4Os8H2K0SXYYhPka0gb8Zb1i2OwDPnGF.jpg', 'storage/kk/T0tojOXxU6cintWky2nFhT02hF9JpJm6T823Ort8.jpg', NULL, NULL, 'qr_code/REG-00013.svg', '2025-10-24 04:27:43', '2025-10-28 11:51:25'),
(14, 'REG-00014', 9704153, 69, 'NASYA SETYO PUTRI', '3301126203110001', 'Teknik Komputer dan Jaringan', 'P', 'CILACAP', '2011-03-22', '62882005063767', 'DUSUN BANJARWARU RT03 RW09', 'ISLAM', 'SINDANGBARANG', 'KARANGPUCUNG', 'CILACAP', 'JAWA TENGAH', 3301121201150006, 'ARI SETIAWAN', 'RATNAWATI', 'SMP NEGERI 1 KARANGPUCUNG', NULL, 'storage/akta/lvDdGEay9GkuBnwpmYmGA2qHnD8jv6ArbHyrOFJX.jpg', 'storage/kk/h0ejcDExnEVxZqA5jnZJ2BUyNEUUSal5agXd91MI.jpg', NULL, NULL, 'qr_code/REG-00014.svg', '2025-10-26 03:24:09', '2025-10-28 13:00:43'),
(15, 'REG-00015', 9704154, 61, 'ARIF NURROHMAN', '3301200310110001', 'Belum Memilih', 'L', 'CILACAP', '2011-10-03', '628812669209', 'DUSUN WATESARI RT06 RW01', 'ISLAM', 'DUSUN WATESARI', 'BANTARSARI', 'CILACAP', 'JAWA TENGAH', 3301200310110001, 'TARAM', 'ROSITI', 'SMP SATAP 1 BANTARSARI', NULL, 'storage/akta/7SbrzlbeO8ZB7ca2kfoxdpkgu6WmVsLVviyXmlXc.jpg', 'storage/kk/hC4iMG5UTX2UTRdzHrWpCPpw626P66sEVK7E1j6L.jpg', NULL, NULL, 'qr_code/REG-00015.svg', '2025-10-26 03:32:35', '2025-10-27 13:28:45'),
(16, 'REG-00016', 9704155, 61, 'ANJAR RISKI RAMDANI', '3301201909090004', 'Teknik Kendaraan Ringan', 'L', 'CILACAP', '2009-09-19', '628812669209', 'DUSUN SIDAMUKTI RT04 RW02', 'ISLAM', 'KEDUNGWADAS', 'BANTARSARI', 'CILACAP', 'JAWA TENGAH', 3301202208130005, 'WAGITO', 'PURWATI', 'SMPN SATAP 1 BANTARSARI', NULL, 'storage/akta/BJ6Hl2nkr8rOCFo65Qkmi77Ue9EcieTnxCFp98Is.jpg', 'storage/kk/k7AzWuO8g5ExRFnSWpN36UGmfmnsW8ZB3Olcs0xZ.jpg', NULL, NULL, 'qr_code/REG-00016.svg', '2025-10-26 03:39:03', '2025-10-27 13:27:56'),
(17, 'REG-00017', 9704156, 61, 'GILANG KOVA ROZAKI', '3301200809110002', 'Teknik Kendaraan Ringan', 'L', 'CILACAP', '2011-09-08', '628812669209', 'DUSUN KARANGTENGAH RT02 RW04', 'ISLAM', 'CITEMBONG', 'BANTARSARI', 'CILACAP', 'JAWA TENGAH', 3301200809110002, 'KARSIM', 'NENAH', 'SMPN SATAP 1 BANTARSARI', NULL, 'storage/akta/Uw0LZEUQwKcr0KK9gs8ly8DTd1lC4wIuNWB7JKnf.jpg', 'storage/kk/ul3NZ4BHmu37Mte1CpQzKE6yWyYP0Lvrcm1Zcc13.jpg', NULL, NULL, 'qr_code/REG-00017.svg', '2025-10-26 03:44:14', '2025-10-28 12:50:12'),
(18, 'REG-00018', 9704157, 61, 'WINDU ADI NUGROHO', '3301201307110003', 'Belum Memilih', 'L', 'CILACAP', '2011-07-13', '628812669209', 'DUSUN KARANGANYAR RT02 RW04', 'ISLAM', 'CITEMBONG', 'BANTARSARI', 'CILACAP', 'JAWA TENGAH', 3301200506170002, 'NURYANTO', 'KUSMIATI', 'SMPN SATAP 1 BANTARSARI', NULL, 'storage/akta/thTOrbvENH6SJUH1AhiQDNAR04zwveagHcAmsj05.jpg', 'storage/kk/WVlF9Hc7N2iUDZSsJMoNCVYLxjzs2oW9sC8FIzAy.jpg', NULL, NULL, 'qr_code/REG-00018.svg', '2025-10-26 03:47:24', '2025-10-29 04:19:24'),
(19, 'REG-00019', 9704158, 61, 'VIO IHZA AFRILIAN', '3301200507110002', 'Teknik Kendaraan Ringan', 'L', 'CILACAP', '2011-07-05', '628812669209', 'DUSUN LIUNGGUNUNG RT09 RW04', 'ISLAM', 'CIKEDONGDONG', 'BANTARSARI', 'CILACAP', 'JAWA TENGAH', 3301202807150001, 'KHOTIB', 'SUYANTI', 'SMPN SATAP 1 BANTARSARI', NULL, 'storage/akta/sWecDnJiT9sk8ZwpMHoQxQ4zdYvmEnh343ruT9pH.jpg', 'storage/kk/uGMIgiJfMX3gmNDbqPUMaAW50FLNeIkSlhb4EPkZ.jpg', NULL, NULL, 'qr_code/REG-00019.svg', '2025-10-26 03:52:47', '2025-10-29 04:18:32'),
(20, 'REG-00020', 9704159, 61, 'WISNU FAJAR SAPUTRA', '3301201104090004', 'Teknik Kendaraan Ringan', 'L', 'CILACAP', '2009-04-11', '628812669209', 'DUSUN GUNUNGSARI RT06 RW01', 'ISLAM', 'KEDUNGWADAS', 'BANTARSARI', 'CILACAP', 'JAWA TENGAH', 3301201601055321, 'CARTUM', 'KUSTINI', 'SMPN SATAP 1 BANTARSARI', NULL, 'storage/akta/UwDlcG0vYcT8hJEKBywSgtsVZUYXdFhMLKMP9msF.jpg', 'storage/kk/YmXxeBrWTPBFoaGFVdwbMz5H5z1TDE3zJ7vfWbyI.jpg', NULL, NULL, 'qr_code/REG-00020.svg', '2025-10-26 03:57:40', '2025-10-29 04:19:43'),
(21, 'REG-00021', 9704160, 61, 'DEDI SOLIHIN', '3301200110100002', 'Teknik Kendaraan Ringan', 'L', 'CILACAP', '2010-10-01', '628812669209', 'DUSUN CITEMBONG RT01 RW02', 'ISLAM', 'CITEMBONG', 'BANTARSARI', 'CILACAP', 'JAWA TENGAH', 3301201906120002, 'TOHIRIN', 'SUPRIYATI', 'SMPN SATAP 1 BANTARSARI', NULL, 'storage/akta/j7Ugfo2RR1lCtXtWxbmhko2GOhRWCTGcaaxJ4iT9.jpg', 'storage/kk/QTzTb0A5ztG6miM1idR9PggkdN5GBLm63R5icHk7.jpg', NULL, NULL, 'qr_code/REG-00021.svg', '2025-10-26 04:01:07', '2025-10-28 12:05:57'),
(22, 'REG-00022', 9704161, 61, 'FAHMI SAEHFUDIN', '3301200710100002', 'Teknik Kendaraan Ringan', 'L', 'CILACAP', '2010-10-07', '628812669209', 'DUSUN LIUNGGUNUNG RT06 RW04', 'ISLAM', 'CIKEDONGDONG', 'BANTARSARI', 'CILACAP', 'JAWA TENGAH', 3301200710100002, 'DARYO', 'MARLIYAH', 'SMPN SATAP 1 BANTARSARI', NULL, 'storage/akta/AUYvDIlkdKxZjn3bblEjS50qC4kwPem7takcnoBk.jpg', 'storage/kk/lVHow5FvveZcLE62DxRsoGp5Z6iAdYFYpp7JlKmD.jpg', NULL, NULL, 'qr_code/REG-00022.svg', '2025-10-26 04:10:40', '2025-10-28 12:46:14'),
(23, 'REG-00023', 9704162, 71, 'ARIN WULAN DARI', '3301136305110002', 'Teknik Komputer dan Jaringan', 'P', 'CILACAP', '2011-05-23', '6282138655939', 'SUDIMARA RT 01 RW07', 'ISLAM', 'BANTARMANGU', 'CIMANGGU', 'CILACAP', 'JAWA TENGAH', 3301132405080042, 'SUPARYO', 'DARSITI', 'MTS IBNU KHOLDUN CIMANGGU', NULL, 'storage/akta/EF4y3awWtWydEhZDMCIWopJf5N59aknKbxPFPfQ2.jpg', 'storage/kk/AlcbyCNw8ErSjml6eePrnTNQXFknTTftrSUoRe8N.jpg', NULL, NULL, 'qr_code/REG-00023.svg', '2025-10-26 04:34:35', '2025-10-28 11:39:19'),
(24, 'REG-00024', 9704163, 71, 'ASRI NURUL ASROR', '3206295812090002', 'Akuntansi', 'P', 'TASIKMALAYA', '2009-12-18', '6282138655939', 'GENTENG WETAN RT02 RW05', 'ISLAM', 'PANIMBANG', 'CIMANGGU', 'CILACAP', 'JAWA TENGAH', 3301130207250006, 'ARIS MUNANDAR', 'DESTIAN WULANDARI', 'SMP RADEN FATAH CIMANGGU', NULL, 'storage/akta/3BgNlUuhPcq7LqAp6VLa3fOkNC8f0R1Y5JPXu64O.jpg', 'storage/kk/QaCEIA1eo6d9H5kAJ5tgNnQ3QEnbIYR5TmdHX1cT.jpg', NULL, NULL, 'qr_code/REG-00024.svg', '2025-10-26 04:47:42', '2025-10-28 11:50:06'),
(25, 'REG-00025', 9704164, 71, 'HANNIFAH AL ASYHARI', '3301135406110001', 'Akuntansi', 'P', 'CILACAP', '2011-06-14', '6282138655939', 'CIPOROS RT05 RW03', 'ISLAM', 'CIPOROS', 'KARANGPUCUNG', 'CILACAP', 'JAWA TENGAH', 3301130204120006, 'SUTRISNO', 'SRI SUGIARTI', 'SMP RADEN FATAH CIMANGGU', NULL, 'storage/akta/HnF9vh10XbWJejGLgF9L27aAfHQG4fU7fIym1pSm.jpg', 'storage/kk/XDwnS23kcvrTzNOrZrIdX6SKObqIxvAytkhcIcVP.jpg', NULL, NULL, 'qr_code/REG-00025.svg', '2025-10-26 04:54:16', '2025-10-28 12:53:17'),
(26, 'REG-00026', 9704165, 31, 'TESA FADILAH', '3301135010100002', 'Teknik Komputer dan Jaringan', 'P', 'CILACAP', '2010-10-10', '6282138655939', 'DUSUN CINGEWOL RT04 RW02', 'ISLAM', 'CIBALUNG', 'CIMANGGU', 'CILACAP', 'JAWA TENGAH', 3301132606130004, 'WASIKO', 'KUSMIYATI', 'SMP Darussalam Cimanggu', NULL, 'storage/akta/PXttiqavZHTdhUhlgWiGOxx6f8ZXFAlTKPKkJWyG.jpg', 'storage/kk/7cGqiZK9IvThT5YRqgQJeGw5U6FisclVEXW4w4cI.jpg', NULL, NULL, 'qr_code/REG-00026.svg', '2025-10-26 05:16:25', '2025-10-29 05:13:48'),
(27, 'REG-00027', 9704168, 71, 'LATIFAH AYU AMBAR SARI', '3301127105100003', 'Pemasaran', 'P', 'CILACAP', '2010-05-31', '6282138655939', 'DUSUN CIPOROS RT03 RW01', 'ISLAM', 'CIPOROS', 'KARANGPUCUNG', 'CILACAP', 'JAWA TENGAH', 3301120512090004, 'WAHIDIN', 'TARMINAH', 'SMP RADEN FATAH CIMANGGU', NULL, 'storage/akta/IqyUq4DTTG6wZ4O4gGEP45yHTGAPjmeUq507yeeQ.jpg', 'storage/kk/23uCow5n9ORnbLgsLUrPqsT0LRv6JNVlxgzTkXar.jpg', NULL, NULL, 'qr_code/REG-00027.svg', '2025-10-26 05:22:49', '2025-10-28 12:58:13'),
(28, 'REG-00028', 9704169, 71, 'TIYAS HAFIZAH', '3301134704110002', 'Pemasaran', 'P', 'CILACAP', '2011-04-07', '6282138655939', 'BANTARMANGU RT01 RW02', 'ISLAM', 'BANTARMANGU', 'CIMANGGU', 'CILACAP', 'JAWA TENGAH', 3301132802230001, 'HOLIL', 'HUJAEMAH', 'SMP RADEN FATAH CIMANGGU', NULL, 'storage/akta/7qVdgZsvzxcfB6WrpKWjnGaUaCCMdZorEE71l5K7.jpg', 'storage/kk/gcWlhcTrw7lqeIxLlBDuhWZFUsoeXcfs7gXqo3dj.jpg', NULL, NULL, 'qr_code/REG-00028.svg', '2025-10-26 05:25:35', '2025-10-29 04:17:16'),
(29, 'REG-00029', 9704170, 71, 'PUTRI AULIA', '3305194810100001', 'Pemasaran', 'P', 'KEBUMEN', '2010-10-08', '6282138655939', 'CIMANGGU RT03 RW12', 'ISLAM', 'CIMANGGU', 'CIMANGGU', 'CILACAP', 'JAWA TENGAH', 3301131705160009, 'OTONG SAPTO NUGROHO', 'TUTI SUGIARTI', 'SMP DIPONEGORO CIMANGGU', NULL, 'storage/akta/eX8BB8yGIYYtNHPxnnoLO4yM4S4dUzfNrRPXwFsu.jpg', 'storage/kk/Erhe7xS2sFkuGPxyNIat8ZJvOWIBdyqGbgJB6Esg.jpg', NULL, NULL, 'qr_code/REG-00029.svg', '2025-10-26 05:38:44', '2025-10-29 02:48:42'),
(30, 'REG-00030', 9704171, 71, 'DIAS CIJAGA', '3301130811100002', 'Pemasaran', 'L', 'CILACAP', '2010-11-08', '6282138655939', 'CIKASO RT05 RW01', 'ISLAM', 'CIBALUNG', 'CIMANGGU', 'CILACAP', 'JAWA TENGAH', 3301131205220003, 'RASDI', 'DASRIYAH', 'SMP DARUSSALAM CIMANGGU', NULL, 'storage/akta/LweLlwgzoUFxt9BHu7bDdmoCuPLg2xa8EMeeiRnN.jpg', 'storage/kk/D2ECQf1DvhFjGlxR6Lcl27TaVwNfmh6WvvtUyIPM.jpg', NULL, NULL, 'qr_code/REG-00030.svg', '2025-10-26 05:42:33', '2025-10-28 12:36:04'),
(31, 'REG-00031', 9704172, 71, 'NAJWA SALSABILLA', '3301134306110001', 'Pemasaran', 'P', 'CILACAP', '2011-06-03', '6282138655939', 'CIBALUNG RT01 RW02', 'ISLAM', 'CIBALUNG', 'CIMANGGU', 'CILACAP', 'JAWA TENGAH', 3301130701059185, 'KOSIM', 'BAROYAH', 'SMP DARUSSALAM CIMANGGU', NULL, 'storage/akta/F9fHEcJPJlpbQQQievFkVtyY1RfLqUGhP4zff2es.jpg', 'storage/kk/1JZ9Cc0n2La17m6Q3FfVpslxkNHcqPHTCho6I293.jpg', NULL, NULL, 'qr_code/REG-00031.svg', '2025-10-26 05:45:47', '2025-10-28 13:00:07'),
(32, 'REG-00032', 9704173, 71, 'HOERUL AMRI ATABIK', '3301132503100003', 'Teknik Sepeda Motor', 'L', 'CILACAP', '2010-03-25', '6282138655939', 'DUSUN SINDANG HAJI RT03 RW05', 'ISLAM', 'BANTARPANJANG', 'CIMANGGU', 'CILACAP', 'JAWA TENGAH', 3301130601052928, 'TARSINO', 'WASONAH', 'SMP DARUSSALAM CIMANGGU', NULL, 'storage/akta/ZadBIBmLbowEkKngmJXqOKe4BOyOujNdKAyGsTOY.jpg', 'storage/kk/g7HJYpet6RvW43swcw9YUvL0w9yGz2jGYboBU5pY.jpg', NULL, NULL, 'qr_code/REG-00032.svg', '2025-10-26 05:48:45', '2025-10-28 12:56:07'),
(33, 'REG-00033', 9704174, 71, 'TIA AMALIA', '3301134311100001', 'Pemasaran', 'P', 'CILACAP', '2010-11-03', '6282138655939', 'CIBALUNG RT03 RW02', 'ISLAM', 'CIBALUNG', 'CIMANGGU', 'CILACAP', 'JAWA TENGAH', 3301130205090004, 'SUTRISNO', 'WASRINAH', 'SMP DARUSSALAM CIMANGGU', NULL, 'storage/akta/ICdyKfL6M3yh6B1V5F11yCaWub5qPyQrSZcoqH3V.jpg', 'storage/kk/JKpivvNRMRlmt5tEl6shBhiZHsiCGLiBo1qcX7BK.jpg', NULL, NULL, 'qr_code/REG-00033.svg', '2025-10-26 05:51:18', '2025-10-29 04:16:51'),
(34, 'REG-00034', 9704175, 71, 'FAHREZA NUR WAHID', '3301132805110062', 'Teknik Sepeda Motor', 'L', 'CILACAP', '2011-05-28', '6282138655939', 'CIMANGGU KULON RT03 RW07', 'ISLAM', 'CIMANGGU', 'CIMANGGU', 'CILACAP', 'JAWA TENGAH', 3301130507120037, 'SUGANTO', 'WARYATI', 'SMP DIPONEGORO CIMANGGU', NULL, 'storage/akta/2w9hu0jbqFykKsE1N9LQZ783WSrFYwLr2qZk6Bgg.jpg', 'storage/kk/haNXzBwVSOZsZapsTskxoQjz2RZGYG1KGtOcOytA.jpg', NULL, NULL, 'qr_code/REG-00034.svg', '2025-10-26 05:55:32', '2025-10-28 12:46:50'),
(35, 'REG-00035', 9704176, 71, 'ALIYUDIN', '3301131310100002', 'Teknik Kendaraan Ringan', 'L', 'CILACAP', '2010-10-13', '6282138655939', 'BOJONG GINTUNG RT02 RW05', 'ISLAM', 'CIBALUNG', 'CIMANGGU', 'CILACAP', 'JAWA TENGAH', 3301132712100015, 'DASTAR', 'KUSMINI', 'SMP DIPONEGORO CIMANGGU', NULL, 'storage/akta/8EUaLu1xwsDT99K9d4IGTXczpWsMWMJ9RxtMwOib.jpg', 'storage/kk/XMMuACgShQ6WcFtMFNJLbdahZj6J4vlsFUrovXB1.jpg', NULL, NULL, 'qr_code/REG-00035.svg', '2025-10-26 06:08:08', '2025-10-27 12:46:12'),
(36, 'REG-00036', 9704177, 71, 'FAIZ MUZAKKI', '3312231109100001', 'Akuntansi', 'L', 'CILACAP', '2010-09-11', '6282138655939', 'CIPODOL RT02 RW06', 'ISLAM', 'CILEMPUYANG', 'CIMANGGU', 'CILACAP', 'JAWA TENGAH', 3301131308120002, 'SUWANTO', 'INDI ASTUTI', 'SMP RADEN FATAH CIMANGGU', NULL, 'storage/akta/w6eXukGi12DErAntBvnhgaNUDIwjl0tLPJ4d8h0j.jpg', 'storage/kk/szWSnzL9nvaezf9c0iUwV48vKMhlxPvsYJ2j6ihV.jpg', NULL, NULL, 'qr_code/REG-00036.svg', '2025-10-26 06:12:01', '2025-10-28 12:48:33'),
(37, 'REG-00037', 9704178, 71, 'FADILAH NURAINI', '3301135801110001', 'Pemasaran', 'P', 'CILACAP', '2011-01-18', '6282138655939', 'BONGHAS RT02 RW02', 'ISLAM', 'BANTARPANJANG', 'CIMANGGU', 'CILACAP', 'JAWA TENGAH', 3301131402080003, 'WASITO', 'SUYANTI', 'SMP RADEN FATAH CIMANGGU', NULL, 'storage/akta/0Q6McLpIVTpntM9wnR0hiV87jemnb8fOTKqtxOSL.jpg', 'storage/kk/5hZvPZH7v2JSKXCzj9UsjfQpDajdFVPc9bmgZ1cc.jpg', NULL, NULL, 'qr_code/REG-00037.svg', '2025-10-26 06:16:42', '2025-10-28 12:38:47'),
(38, 'REG-00038', 9704179, 71, 'RIZKY AKBAR  QUSYAERI', '3301131211100003', 'Belum Memilih', 'L', 'CILACAP', '2010-11-12', '6282138655939', 'DUSUN BANTARPANJANG RT03  RW01', 'ISLAM', 'BANTARPANJANG', 'CIMANGGU', 'CILACAP', 'JAWA TENGAH', 3301133112090001, 'PURWANTO', 'NISA NURJANAH', 'SMP RADEN FATAH CIMANGGU', NULL, 'storage/akta/795FSXT52M6wz0G8btukzFgvIgOwUFBDIQEw1b5S.jpg', 'storage/kk/DRXua73TZbtDqkw1Br8dG7gEx6aOCuHS4GL4MBkK.jpg', NULL, NULL, 'qr_code/REG-00038.svg', '2025-10-26 06:22:37', '2025-10-29 04:12:31'),
(39, 'REG-00039', 9704180, 71, 'AINUN NISA RAMADANI', '3301135208110001', 'Akuntansi', 'P', 'CILACAP', '2011-08-12', '6282138655939', 'BANTARPANJANG RT02 RW02', 'ISLAM', 'BANTARPANJANG', 'CIMANGGU', 'CILACAP', 'JAWA TENGAH', 3301130704100014, 'ABDUL JAPAR', 'LIYA NILAWATI', 'SMP DARUSSALAM CIMANGGU', NULL, 'storage/akta/9QwRWGaZKQPAs0gD0yHJLiKaXmS9rRlG8CYEc5xY.jpg', 'storage/kk/UxmR2RKp8lFY1j5wNBVbqaAtUuNMB4YIPvmKL4uW.jpg', NULL, NULL, 'qr_code/REG-00039.svg', '2025-10-26 06:26:51', '2025-10-27 11:02:02'),
(40, 'REG-00040', 9704181, 71, 'DENADA DEA AJAHIRA', '3301136801110001', 'Akuntansi', 'P', 'CILACAP', '2011-01-28', '6282138655939', 'BANTARPANJANG RT04 RW01', 'ISLAM', 'BANTARPANJANG', 'CIMANGGU', 'CILACAP', 'JAWA TENGAH', 3301130304080038, 'JIMANSUDARMAN', 'MUN FA\'ATUN', 'SMP DARUSSALAM CIMANGGU', NULL, 'storage/akta/JsyRSwomOmiysEC2LvlXbubFBAXTmqpuUmaagH2X.jpg', 'storage/kk/n7QjjvI4RZivG4sladVM43Q03R0Hf2SSvz5JaUhq.jpg', NULL, NULL, 'qr_code/REG-00040.svg', '2025-10-26 06:32:05', '2025-10-28 12:06:26'),
(41, 'REG-00041', 9704182, 71, 'DHAFA ARDIANSYAH', '3301130202100003', 'Teknik Sepeda Motor', 'L', 'CILACAP', '2010-02-02', '6282138655939', 'TAMENG RT03 RW07', 'ISLAM', 'BANTARPANJANG', 'CIMANGGU', 'CILACAP', 'JAWA TENGAH', 3301132801140003, 'ANGGA', 'DARWATI', 'SMP DARUSSALAM CIMANGGU', NULL, 'storage/akta/hOpHkGVX30L2Hkz4Wfy2QNau7EL4rRzj1bsO1iwW.jpg', 'storage/kk/pBPIE5K23xvjl5MzPecq32EHkqQ5OXAf02OZYXOY.jpg', NULL, NULL, 'qr_code/REG-00041.svg', '2025-10-26 06:35:29', '2025-10-28 12:06:48'),
(42, 'REG-00042', 9704183, 71, 'CELSI', '3301134510100001', 'Pemasaran', 'P', 'CILACAP', '2010-10-05', '6282138655939', 'GUNUNGTIGA RT01 RW03', 'ISLAM', 'BANTARMANGU', 'CIMANGGU', 'CILACAP', 'JAWA TENGAH', 3301131707120013, 'RISJA', 'SUTINAH', 'SMP DARUSSALAM CIMANGGU', NULL, 'storage/akta/mdtxmewroucxGklmA9E6oRFS2avEtJjHV4b3FHfz.jpg', 'storage/kk/rpvXyN2PBgB494nvmR5k0frfyiL0lgGPu6l4SQl5.jpg', NULL, NULL, 'qr_code/REG-00042.svg', '2025-10-26 06:38:33', '2025-10-28 11:53:06'),
(43, 'REG-00043', 9704184, 71, 'CAHAYA NUR AENI', '3301134612110003', 'Pemasaran', 'P', 'CILACAP', '2011-12-16', '6282138655939', 'GUNUNGTIGA RT02 RW03', 'ISLAM', 'BANTARMANGU', 'CIMANGGU', 'CILACAP', 'JAWA TENGAH', 3301132112110001, 'WASNO', 'TURIYAH', 'SMP DARUSSALAM CIMANGGU', NULL, 'storage/akta/6ueB8vyOX0y8jzwZlLx8YhgZF69bnJcDaeO8sHDs.jpg', 'storage/kk/EE7rOTUDTbM7lS4ptWAnP8OnkJlXutpEAHWlJHxp.jpg', NULL, NULL, 'qr_code/REG-00043.svg', '2025-10-26 06:41:15', '2025-10-28 11:52:10'),
(44, 'REG-00044', 9704185, 71, 'FADLAN', '3301131903110003', 'Teknik Sepeda Motor', 'L', 'CILACAP', '2011-03-19', '6282138655939', 'BONGHAS RT02 RW02', 'ISLAM', 'BANTARMANGU', 'CIMANGGU', 'CILACAP', 'JAWA TENGAH', 3301130903090018, 'ERO', 'RUMIYATI', 'SMP DARUSSALAM CIMANGGU', NULL, 'storage/akta/iIOf8O49NbGtPJ7IMVBr8197FQkYaoSzGRAw4BZs.jpg', 'storage/kk/uUci5crYxxqrj2soGxfnVGF57HfWeiASnadmgZgK.jpg', NULL, NULL, 'qr_code/REG-00044.svg', '2025-10-26 06:43:27', '2025-10-28 12:39:09'),
(45, 'REG-00045', 9704186, 71, 'DHEFY LIYA AL ASKHA', '3301134112100004', 'Pemasaran', 'P', 'CILACAP', '2010-12-01', '6281327503921', 'CIKADU RT01 RW10', 'ISLAM', 'PANIMBANG', 'CIMANGGU', 'CILACAP', 'JAWA TENGAH', 3301130905120001, 'HENDRIK', 'SRI KURNIATI', 'SMP RADEN FATAH CIMANGGU', NULL, 'storage/akta/dhefy.jpg', 'storage/kk/6rDShseCbaWposEKlEdWLgm8dJ0RT6UNpPtPifZJ.jpg', NULL, NULL, 'qr_code/REG-00045.svg', '2025-10-26 06:47:26', '2025-10-28 12:35:45'),
(46, 'REG-00046', 9704187, 71, 'NAZSWA HERAWATI', '3301136303110002', 'Pemasaran', 'P', 'CILACAP', '2011-03-23', '6282138655939', 'CIKADU RT01 RW09', 'ISLAM', 'PANIMBANG', 'CIMANGGU', 'CILACAP', 'JAWA TENGAH', 3301131601140001, 'JAJANG KURNIADI', 'NURYANTI', 'SMP RADEN FATAH CIMANGGU', NULL, 'storage/akta/19jr8E1XhkNTMjSqnf3KaadsMLNtrAsUt2W8Oa34.jpg', 'storage/kk/Vf1P8HoX7EmxlEUeBc0fO2ydzSXBiUNUR3FPA4Vo.jpg', NULL, NULL, 'qr_code/REG-00046.svg', '2025-10-26 06:50:52', '2025-10-29 02:46:49'),
(47, 'REG-00047', 9704188, 71, 'AENI NURIL AZIZAH', '3301137011100003', 'Teknik Komputer dan Jaringan', 'P', 'CILACAP', '2010-11-20', '6282138655939', 'SUDIMARA RT04 RW07', 'ISLAM', 'BANTARPANJANG', 'CIMANGGU', 'CILACAP', 'JAWA TENGAH', 3301130109100008, 'NANA SUKIRNA', 'KASMITI', 'SMP NEGERI 1 CIMANGGU', NULL, 'storage/akta/H7l00ZRQqfezWgTVal3cGGfF2hCzwP0Xz95sf8Qe.jpg', 'storage/kk/sfrYLi1ZypCzL3qlaJoA8acxhEBVGoj7e0y3UN2T.jpg', NULL, NULL, 'qr_code/REG-00047.svg', '2025-10-26 06:54:25', '2025-10-27 09:40:34'),
(48, 'REG-00048', 9704189, 72, 'ADRIYANSAH', '3301121107100003', 'Teknik Kendaraan Ringan', 'L', 'CILACAP', '0201-07-11', '6281328190395', 'DUSUN BINANGUN RT06 RW04', 'ISLAM', 'TAYEM', 'KARANGPUCUNG', 'CILACAP', 'JAWA TENGAH', 3301120406080033, 'RISWANTO', 'SUTIMAH', 'SMP NEGERI 2 KARANGPUCUNG', NULL, 'storage/akta/Dk6bllIushDPVasTdc6O5U1xP2RMkwn6PEwGPJyX.jpg', 'storage/kk/L7nluwL04IjvLhUvTlv2ohpCCR4bdV2oGSYUOyc4.jpg', NULL, NULL, 'qr_code/REG-00048.svg', '2025-10-26 07:03:36', '2025-10-27 09:12:28'),
(49, 'REG-00049', 9704190, 72, 'RADITYA ANWARI', '3301121310100001', 'Teknik Kendaraan Ringan', 'L', 'CILACAP', '2010-10-13', '6281328190395', 'DUSUN CIPICUNG RT03 RW05', 'ISLAM', 'BENGBULANG', 'CIMANGGU', 'CILACAP', 'JAWA TENGAH', 3301122403100045, 'TUGIYONO TURKIM', 'RUKIYAH', 'SMP NEGERI 2 KARANGPUCUNG', NULL, 'storage/akta/3C1M5BsG8b8l4gMIPhqbOZPFuFTLQrfkA2TfY4ak.jpg', 'storage/kk/HmLZhotOMIbJ5hT6WvE4IPDH9A5Q4AkI3JYxfAjv.jpg', NULL, NULL, 'qr_code/REG-00049.svg', '2025-10-26 07:11:02', '2025-10-29 04:09:39'),
(50, 'REG-00050', 9704191, 72, 'MUHAMAD FURQON HAMDANI', '3301120111100002', 'Teknik Kendaraan Ringan', 'L', 'CILACAP', '2010-11-01', '6281328190395', 'DUSUN BINANGUN RT06 RW03', 'ISLAM', 'TAYEM', 'KARANGPUCUNG', 'CILACAP', 'JAWA TENGAH', 3301120111100002, 'WARTONO', 'KASITEM', 'SMP NEGERI 2 KARANGPUCUNG', NULL, 'storage/akta/Sbxk2wGaD8713oGUgiZlKQiZEyGemOWztNuDD0k7.jpg', 'storage/kk/ycc8GDgP0yIf9BJ729ouEklxUq7cxsiHrEW0ENR1.jpg', NULL, NULL, 'qr_code/REG-00050.svg', '2025-10-26 07:15:24', '2025-10-28 12:59:13'),
(51, 'REG-00051', 9704192, 73, 'HABSYAH FIKRY RAMADHAN', '3301131108110003', 'Belum Memilih', 'L', 'CILACAP', '2011-08-11', '6285747778739', 'SUDIMARA RT01 RW07', 'ISLAM', 'BANTARMANGU', 'CIMANGGU', 'CILACAP', 'JAWA TENGAH', 3301131405080006, 'DIRTO', 'HERMAWATI', 'MTS IBNU KHOLDUN CIMANGGU', NULL, 'storage/akta/WYMMulC0qogXifNy8qljAkOcQAHDzA0zNDAJaTcG.jpg', 'storage/kk/mIOQBzy4tmjv3ivc9k1IsKHtN9QnPRX5HP4w6PT8.jpg', NULL, NULL, 'qr_code/REG-00051.svg', '2025-10-26 07:24:10', '2025-10-28 12:50:43'),
(52, 'REG-00052', 9704193, 87, 'RAEYNA PUTRI YUNAERI', '3301135603110002', 'Belum Memilih', 'P', 'CILACAP', '2011-03-16', '6283825139666', 'SITU RT02 RW03', 'ISLAM', 'CILEMPUYANG', 'CIMANGGU', 'CILACAP', 'JAWA TENGAH', 3301130808250004, 'IWAN YUNERI', 'VIKA ARLINA', 'SMP DIPONEGORO CIMANGGU', NULL, 'storage/akta/hQbExq8qZcKRKgyVFmBh6oGQ44dAgvQ9BTPVfw7c.jpg', 'storage/kk/PCauqm9ATLTjkLVL0lc6lS24DlF5w2moPEde6ASr.jpg', NULL, NULL, 'qr_code/REG-00052.svg', '2025-10-26 07:33:13', '2025-10-29 04:10:09'),
(53, 'REG-00053', 9704194, 87, 'DANI HERMAWAN', '3301122910100002', 'Teknik Sepeda Motor', 'L', 'CILACAP', '2010-10-29', '6283825139666', 'DUSUN CIPOROS RT02 RW01', 'ISLAM', 'CIPOROS', 'KARANGPUCUNG', 'CILACAP', 'JAWA TENGAH', 3301121406100005, 'WARGONO', 'RUMIYATI', 'SMP RADEN FATAH CIMANGGU', NULL, 'storage/akta/vQS4FklA1JJvVIDmj6oUVYuEAIGW5GfanZWY3xd3.jpg', 'storage/kk/cC7cvae0YpWFtb92GG84hwAE67B6VGjWwJfOlK7V.jpg', NULL, NULL, 'qr_code/REG-00053.svg', '2025-10-26 07:37:08', '2025-10-28 11:54:24'),
(54, 'REG-00054', 9704195, 87, 'VINA AMELIASARI', '3301127107100003', 'Belum Memilih', 'P', 'CILACAP', '2010-07-31', '6283825139666', 'DUSUN CIPOROS RT02 RW02', 'ISLAM', 'CIPOROS', 'KARANGPUCUNG', 'CILACAP', 'JAWA TENGAH', 3301122001140007, 'SANTOSA', 'ANI SANDIYANI', 'SMP RADEN FATAH CIMANGGU', NULL, 'storage/akta/tpNMjKTU7td5EFN5HH7Bma2oyjA41Drf3a3GctzD.jpg', 'storage/kk/1Ve7uc0waGVlledY5JpdEpl5P3QDichD7a2vVcHv.jpg', NULL, NULL, 'qr_code/REG-00054.svg', '2025-10-26 07:40:46', '2025-10-29 04:18:13'),
(55, 'REG-00055', 9704196, 74, 'ABDAN AZIZAN', '3301122005110003', 'Teknik Sepeda Motor', 'L', 'CILACAP', '2011-05-20', '6281296161535', 'DUSUN PEKUNCEN RT01 RW04', 'ISLAM', 'BENGBULANG', 'KARANGPUCUNG', 'CILACAP', 'JAWA TENGAH', 3301122407080025, 'DARYO', 'ROHIMAH', 'SMP NEGERI 2 KARANGPUCUNG', NULL, 'storage/akta/edl0xf0EYJEkHqxD4ocxjDQZaxzPVjRQj9pA1Q4m.jpg', 'storage/kk/PCfcvWqG6IRvelC9u6X8WeZAic79uYKDYFtbe9az.jpg', NULL, NULL, 'qr_code/REG-00055.svg', '2025-10-26 07:49:04', '2025-10-27 09:10:17'),
(56, 'REG-00056', 9704197, 74, 'SAFITRI AULIA RAMADHANI', '3301124909100004', 'Teknik Sepeda Motor', 'P', 'CILACAP', '2010-09-09', '6281296161535', 'DUSUN PEKUNCEN RT01 RW04', 'ISLAM', 'BENGBULANG', 'KARANGPUCUNG', 'CILACAP', 'JAWA TENGAH', 3301121205110004, 'ROJIUN', 'ADMINI', 'SMP NEGERI 2 KARANGPUCUNG', NULL, 'storage/akta/bO6SvPAooa6Y7z7DT75oAkrUfmCcQWRTkf32fQWV.jpg', 'storage/kk/Ma87Xncvyu5Spp456w6GMOk4KfIATR28KlvaEUtD.jpg', NULL, NULL, 'qr_code/REG-00056.svg', '2025-10-26 07:51:55', '2025-10-29 04:14:21'),
(57, 'REG-00057', 9704198, 74, 'ZULFATAN MUROZZAQ', '3301122111100003', 'Teknik Sepeda Motor', 'L', 'CILACAP', '2010-11-21', '6281296161535', 'BENGBULANG RT03 RW04', 'ISLAM', 'BENGBULANG', 'KARANGPUCUNG', 'CILACAP', 'JAWA TENGAH', 3301122812100019, 'SUKAM', 'ASIH ANGGOROWATI', 'SMP NEGERI 2 KARANGPUCUNG', NULL, 'storage/akta/mNAOrby6N7DZ0LcR49tyYrQlXp5mf9TvHs3Ybty4.jpg', 'storage/kk/1ldhScg5g1MGrNUlp1MuJsVBdz6fCkGjtUrJFjFY.jpg', NULL, NULL, 'qr_code/REG-00057.svg', '2025-10-26 07:54:52', '2025-10-29 04:21:48'),
(58, 'REG-00058', 9704199, 74, 'DWI ADITIYA SAPUTRA', '3301123105110004', 'Teknik Sepeda Motor', 'L', 'CILACAP', '2011-05-31', '6281296161535', 'DUSUN PEKUNCEN RT03 RW03', 'ISLAM', 'BENGBULANG', 'KARANGPUCUNG', 'CILACAP', 'JAWA TENGAH', 3301120402080006, 'KUSMIARDI', 'KAMYUTI', 'SMP NEGERI 2 KARANGPUCUNG', NULL, 'storage/akta/0F5TbePh8YOWV8DTU21ANNw3pOdebuHOmtFw6L5P.jpg', 'storage/kk/VWuHWI2OQejznaGp97wRHsgyYcO5A1bX7oQHw8XK.jpg', NULL, NULL, 'qr_code/REG-00058.svg', '2025-10-26 07:57:30', '2025-10-28 12:36:33'),
(59, 'REG-00059', 9704200, 74, 'ROBI MUHAMAD', '3301120408100005', 'Teknik Sepeda Motor', 'L', 'CILACAP', '2010-08-04', '6281296161535', 'DUSUN PURBAYASA RT03 RW02', 'ISLAM', 'SINDANGBARANG', 'KARANGPUCUNG', 'CILACAP', 'JAWA TENGAH', 3301120203180003, 'ASRUDIN', 'SOPINYATUN', 'MTS N 2 CILACAP', NULL, 'storage/akta/iVjIDSUSlxhzGr3qVqfb1VErIj5bAwZQpXh8O4CU.jpg', 'storage/kk/b6j2ckSHvN5fCY0ajNnkLpcfA8yvTQ1VahH44mgn.jpg', NULL, NULL, 'qr_code/REG-00059.svg', '2025-10-26 08:00:11', '2025-10-29 04:13:08'),
(60, 'REG-00060', 9704201, 74, 'RAVA VAN NUGROHO', '3174102403111016', 'Teknik Sepeda Motor', 'L', 'JAKARTA', '2011-03-24', '6281296161535', 'DUSUN PEKUNCEN RT02 RW03', 'ISLAM', 'BENGBULANG', 'KARANGPUCUNG', 'CILACAP', 'JAWA TENGAH', 3301122903160003, 'ARYOTO', 'SRI WAHYUNI', 'SMP NEGERI 2 KARANGPUCUNG', NULL, 'storage/akta/K80nuXlVhYms8b6WskRORSZLs48HoaTSeAR1qXMW.jpg', 'storage/kk/o976zIkZgrCThGaoetSS5ntloAYMHMizLkayfFuL.jpg', NULL, NULL, 'qr_code/REG-00060.svg', '2025-10-27 01:07:14', '2025-10-29 04:11:07'),
(61, 'REG-00061', 9704202, 21, 'RILLO PERDIYANSAH', '3301132801110003', 'Belum Memilih', 'L', 'CILACAP', '2011-01-28', '6282226836752', 'TAMENG RT03 RW07', 'ISLAM', 'BANTARPANJANG', 'CIMANGGU', 'CILACAP', 'JAWA TENGAH', 3301132901090017, 'DIRNO', 'ROPINGAH', 'SMP NEGERI 2 KARANGPUCUNG', NULL, 'storage/akta/7ef8FuuRkGJWpfrC6sHVQWd8kG93zwF14uuN6iSN.jpg', 'storage/kk/CKlZA93mChFoFXBP19NBP2fSP7qO1BObxDqwU7pK.jpg', NULL, NULL, 'qr_code/REG-00061.svg', '2025-10-27 01:14:51', '2025-10-29 04:11:56'),
(62, 'REG-00062', 9704203, 87, 'NAURA AFNAN FAIZAH', '3301126705120003', 'Pemasaran', 'P', 'CILACAP', '2012-05-27', '6283825139666', 'CIPOROS RT02 RW01', 'ISLAM', 'CIPOROS', 'KARANGPUCUNG', 'CILACAP', 'JAWA TENGAH', 3301121609120001, 'KORIB', 'TOYIBAH', 'SMP RADEN FATAH CIMANGGU', NULL, 'storage/akta/cphoG3stMjoFDxAWOS7pDkYzhff3piZgW9orYVOE.jpg', 'storage/kk/p7nAnJSOjTKFXybmGdwUeMrtIkaEbbvez7fBpo1J.jpg', NULL, NULL, 'qr_code/REG-00062.svg', '2025-10-27 01:57:32', '2025-10-29 02:10:32'),
(63, 'REG-00063', 9704204, 87, 'DAVID NUR KHOLIK RAMADHAN', '3301130209100002', 'Belum Memilih', 'L', 'CILACAP', '2010-09-02', '6283825139666', 'CIKONDANG RT02 RW01', 'ISLAM', 'PANIMBANG', 'CIMANGGU', 'CILACAP', 'JAWA TENGAH', 3301132710100014, 'MAHFUD', 'RATNASARI', 'SMP RADEN FATAH CIMANGGU', NULL, 'storage/akta/bPUjBb44xV3JHRkoQAr2d4WnslKQq5cZ8KZAgpDa.jpg', 'storage/kk/4eqeAZrO2qDFczOPPxrM35PnRbxQEA5lbffSC8Aj.jpg', NULL, NULL, 'qr_code/REG-00063.svg', '2025-10-27 02:10:43', '2025-10-28 12:03:34'),
(64, 'REG-00064', 9704205, 71, 'NUR LAILATUL QODRIYAH AL ZAELANI', '3271064107100002', 'Akuntansi', 'P', 'BOGOR', '2010-07-01', '6282138655939', 'DUSUN KAPEK RT04 RW01', 'ISLAM', 'BANTARPANJANG', 'CIMANGGU', 'CILACAP', 'JAWA TENGAH', 3301132208220002, 'SLAMET RIYADI', 'SALBIYAH', 'SMP DARUSSALAM CIMANGGU', NULL, 'storage/akta/8en6DvzODSxWeEpftxeBcz4sSutDUbHyCp7vZlQ3.jpg', 'storage/kk/NEtJ8MO0h8JJSj3L4yQKJZVW1NYSjQWpb2mG8Jys.jpg', NULL, NULL, 'qr_code/REG-00064.svg', '2025-10-27 02:19:06', '2025-10-29 02:48:16'),
(65, 'REG-00065', 9704206, 71, 'JAHIRA INDIKA', '3301134701110001', 'Pemasaran', 'P', 'CILACAP', '2011-01-07', '6282138655939', 'DUSUN SUDIMARA RT03 RW06', 'ISLAM', 'BANTARMANGU', 'CIMANGGU', 'CILACAP', 'JAWA TENGAH', 3301132601110021, 'WARLI', 'SUSI', 'SMP RADEN FATAH CIMANGGU', NULL, 'storage/akta/yTHfTFpAvyzKR3UrEwRpf3evILcOf01sUuOVgmZJ.jpg', 'storage/kk/ZvFUiMUKaOcaW2NtD9wS8HtZS4xz3EpLm9yeZqGP.jpg', NULL, NULL, 'qr_code/REG-00065.svg', '2025-10-27 03:48:38', '2025-10-28 12:56:34'),
(66, 'REG-00066', 9704207, 71, 'HAURA SAHDA SALSABILA ARDHYAN', '3301135702110003', 'Pemasaran', 'P', 'CILACAP', '2011-02-17', '6282138655939', 'DUSUN CIBUNGUR RT03 RW05', 'ISLAM', 'MANDALA', 'CIMANGGU', 'CILACAP', 'JAWA TENGAH', 3301131505090003, 'ARDHIE', 'SUPRIYANTI', 'SMP RADEN FATAH CIMANGGU', NULL, 'storage/akta/FUYvmlZ180fcEobgfQuvmXBfIZTpvvC1BKlTsWy8.jpg', 'storage/kk/981L8iRVVcZTdsVKzdNPSnOEgPXAhgoDlB7MMeKg.jpg', NULL, NULL, 'qr_code/REG-00066.svg', '2025-10-27 04:17:26', '2025-10-28 12:55:43'),
(67, 'REG-00067', 9704208, 71, 'DAMAR AZMI DWICAHYONO', '3301122807110002', 'Teknik Kendaraan Ringan', 'L', 'CILACAP', '2011-07-28', '6282138655939', 'DUSUN CILIMUS RT02 RW04', 'ISLAM', 'CIRUYUNG', 'KARANGPUCUNG', 'CILACAP', 'JAWA TENGAH', 3301121605070005, 'RAHYONO', 'ROHATI', 'SMP RADEN FATAH CIMANGGU', NULL, 'storage/akta/sTXQZeNShWII0XwdCCSfodH7K6Lz4ac0iEyGMf4M.jpg', 'storage/kk/5C6IxHvBkW1IP0UpNyp7wzNbbvGKvyO5UNDIrx8e.jpg', NULL, NULL, 'qr_code/REG-00067.svg', '2025-10-27 04:21:52', '2025-10-28 11:53:35'),
(68, 'REG-00068', 9704209, 71, 'NAZWA FADILAH ANKHAR', '3301136605110002', 'Pemasaran', 'P', 'CILACAP', '2011-05-26', '6282138655939', 'CIBUNGUR RT01 RW05', 'ISLAM', 'MANDALA', 'CIMANGGU', 'CILACAP', 'JAWA TENGAH', 3301130303110014, 'WASIS PURWANTO', 'ATRIYANI', 'SMP RADEN FATAH CIMANGGU', NULL, 'storage/akta/kCedaeZx5cHVmHjewnYX5Bt8IAStkQMU0tG8dWjV.jpg', 'storage/kk/MCdkhaQ5hnn2myp5rKIxMDAUdGEp87Jy1xXrmlEX.jpg', NULL, NULL, 'qr_code/REG-00068.svg', '2025-10-27 05:46:55', '2025-10-29 02:47:17'),
(69, 'REG-00069', 9704210, 26, 'Intan Aisah Ramadani', '3301134506110001', 'Akuntansi', 'P', 'CILACAP', '2011-05-06', '6287734792215', 'CIHONJE', 'ISLAM', 'BANTARMANGU', 'CIMANGGU', 'CILACAP', 'Jawa Tengah', 3301131506110010, 'RAHMAT', 'ELI ERMAWATI', 'SMP Darussalam', NULL, 'storage/akta/VxzJo5denVemfolPPE8xZ5y1d3nY0IZBXDH4lgsQ.jpg', 'storage/kk/8b171x0kJ6HTAUbpFF21KI9hcjl4UaOn48YaJRLs.jpg', NULL, NULL, 'qr_code/REG-00069.svg', '2025-10-27 09:26:39', '2025-10-27 12:56:01'),
(70, 'REG-00070', 9704211, 36, 'nita meida sari', '3301135605110003', 'Pemasaran', 'P', 'CILACAP', '2011-05-16', '62895329605381', 'CIBUNGUR RT 02 RW 06', 'ISLAM', 'MANDALA', 'CIMANGGU', 'CILACAP', 'Jawa Tengah', 3301130407090009, 'WAWAN SETIAWAN', 'IIS PRIYANTI', 'SMP RADEN FATAH CIMANGGU', NULL, 'storage/akta/iltYJ3wViYuIP3F1k5e79sEiU8M1zw3N7ZbxMezj.jpg', 'storage/kk/Geo6xugORR0hjGOW73oBORU5SgY4hYjxtY6D145M.jpg', NULL, NULL, 'qr_code/REG-00070.svg', '2025-10-27 09:58:27', '2025-10-27 12:55:44'),
(71, 'REG-00071', 9704212, 36, 'Fenata Mulia', '3301124502110003', 'Teknik Komputer dan Jaringan', 'P', 'CILACAP', '2011-02-05', '628891775253', 'GUNUNG TELU RT 03 RW 01', 'ISLAM', 'GUNUNGTELU', 'KARANGPUCUNG', 'CILACAP', 'Jawa Tengah', 3301120801053193, 'SLAMET RUGITO SUYITNO', 'JUMIYATI', 'Mts Negeri 2 Cilacap', NULL, 'storage/akta/vkRq98bfeetZjnSYvVN7dWvPB1qlJYnEXFiS35LD.jpg', 'storage/kk/I3LjEtcjAkpoTHJO4ON6XItMyqzQlMo4wXodqPSN.jpg', NULL, NULL, 'qr_code/REG-00071.svg', '2025-10-27 10:31:51', '2025-10-27 12:57:51'),
(72, 'REG-00072', 9704213, 36, 'Fenita Mulia', '3301124502110002', 'Teknik Komputer dan Jaringan', 'P', 'CILACAP', '2011-02-05', '6288980277822', 'GUNUNG TELU RT 03 RW 01', 'ISLAM', 'GUNUNGTELU', 'KARANGPUCUNG', 'CILACAP', 'Jawa Tengah', 3301120801053193, 'SLAMET RUGITO SUYITNO', 'JUMIYATI', 'Mts Negeri 2 Cilacap', NULL, 'storage/akta/Au5yawf7VO3oBYD5d2pNHX77FCN6LBdqOUvBLBmD.jpg', 'storage/kk/OkXAeEE44cMZgSpRRLJfcrZSh2nd6GgRALCLuKlM.jpg', NULL, NULL, 'qr_code/REG-00072.svg', '2025-10-27 10:34:29', '2025-10-27 12:58:03'),
(73, 'REG-00073', 9704214, 80, 'Yazid barir mubarok', '3301122508110001', 'Teknik Komputer dan Jaringan', 'L', 'CILACAP', '2011-08-25', '6281328104154', 'PURBAYASA RT 03 RW 03', 'ISLAM', 'SINDANGBARANG', 'KARANGPUCUNG', 'CILACAP', 'Jawa Tengah', 3301120609210002, 'DAIMAN', 'KASIYATUN', 'Mts Negeri 2 Cilacap', NULL, 'storage/akta/k3GIhLB5DQQBKw4TIcMZoJgsQK3iMH9KgDU9e34z.jpg', 'storage/kk/ny6HbdHT86k7dQLn1LFqsRV4lrxzwliQuTwvj5Z9.jpg', NULL, NULL, 'qr_code/REG-00073.svg', '2025-10-27 10:42:57', '2025-10-27 10:44:47'),
(74, 'REG-00074', 9704215, 44, 'Lita Widia', '3301136306100004', 'Akuntansi', 'P', 'CILACAP', '2010-06-23', '6281325533524', 'CINGEWOL RT 04 RW 02', 'ISLAM', 'CIBALUNG', 'CIMANGGU', 'CILACAP', 'Jawa Tengah', 3301130901120004, 'RASTIM', 'SAMSIYAH', 'SMP Darussalam', NULL, 'storage/akta/dn2brllXibi1zeaCi77xWhiKtAHjestYt1Sw2JbW.jpg', 'storage/kk/xspPKKWMyq5NFsDFEdRoeUyNX8j9r9yKls7cPidN.jpg', NULL, NULL, 'qr_code/REG-00074.svg', '2025-10-27 10:51:21', '2025-10-27 10:51:55'),
(75, 'REG-00075', 9704216, 82, 'agustina ramadani putri', '3301125208110002', 'Pemasaran', 'P', 'cilacap', '2011-08-12', '6285649910608', 'dusun bengbulang', 'islam', 'bengbulang', 'karangpucung', 'cilacap', 'jawa tengah', 3301122201070009, 'teguh raharjo', 'herni priyati', 'smp n 2 karangpucung', NULL, 'storage/akta/pQi5fs0Q58UQLCOs2hUNNLYNPSLhIdrvYNETXG40.jpg', 'storage/kk/8eVZwsOUCfiXXo1MB3Qe8psMcyDtaADkAnOro96P.jpg', NULL, NULL, 'qr_code/REG-00075.svg', '2025-10-27 11:09:49', '2025-10-27 12:45:14'),
(76, 'REG-00076', 9704217, 31, 'Alviyah Putri Utari', '3301106805110005', 'Teknik Sepeda Motor', 'P', 'CILACAP', '2011-05-28', '6288226726049', 'SINDANGRAJA RT 07 RW 04', 'ISLAM', 'KARANGGINTUNG', 'GANDRUNGMANGU', 'CILACAP', 'Jawa Tengah', 3301101501053218, 'DAYAT', 'RASIYEM', 'SMP PGRI 6 Gandrungmangu', NULL, 'storage/akta/UGe4wjgLECluWBVeMo2bIhleIgnQkMcFxxx4Wip0.jpg', 'storage/kk/VR2RkBsCGE0brBStUHKUdtNBDzhrutujG3gSztlU.jpg', NULL, NULL, 'qr_code/REG-00076.svg', '2025-10-27 11:11:36', '2025-12-22 03:39:35'),
(77, 'REG-00077', 9704218, 44, 'Safina naja putri hidayah', '3301104203100003', 'Akuntansi', 'P', 'Cilacap', '2010-03-02', '6282329680079', 'Dusun Ciglagah', 'Islam', 'Kertajaya', 'Gandrungmangu', 'Cilacap', 'Jawa Tengah', 3301101401058530, 'Johari', 'Kusmiati', 'SMP N Satap 1 Bantarsari', NULL, 'storage/akta/7D4hpflEuk31m7aWH2GPkDZ6EdrRS0UBew81tyqQ.jpg', 'storage/kk/vA4ozspAuhvxE4QAAnrx37dCLhp7kVNY5H7nbiji.jpg', NULL, NULL, 'qr_code/REG-00077.svg', '2025-10-27 12:18:16', '2025-10-29 04:13:48'),
(78, 'REG-00078', 9704219, 28, 'johan nuari fidianto', '3301121102110001', 'Teknik Kendaraan Ringan', 'L', 'CILACAP', '2011-02-11', '6281775495339', 'CIRAJA RT 01 RW 12', 'ISLAM', 'CIPOROS', 'KARANGPUCUNG', 'CILACAP', 'Jawa Tengah', 3301121712200001, 'SAWINAH', 'SAWINAH', 'mts nurul huda karangpucung', NULL, 'storage/akta/L7BMxm5aVqqjNZMtfC1uM19btx6JCzNzzrKn6nzR.jpg', 'storage/kk/5W46xfrAVlsqtxl1uX4tszYh50Hq23BCOuplqmkO.jpg', NULL, NULL, 'qr_code/REG-00078.svg', '2025-10-27 12:27:04', '2025-10-27 12:56:19'),
(79, 'REG-00079', 9704220, 32, 'Deswinta Maharani', '3301134904100003', 'Akuntansi', 'P', 'CILACAP', '2010-04-09', '6283107241057', 'CIKADONGDONG RT 05 RW 02', 'ISLAM', 'CIBALUNG', 'CIMANGGU', 'CILACAP', 'Jawa Tengah', 3301130801050112, 'SITOB', 'FITRI', 'SMP Darussalam', NULL, 'storage/akta/0sNnUMeAe8AFA5ibpGvw6dMD1Lh3WwUtpPvQocOC.jpg', 'storage/kk/XXiBvvSuLXAouLO41MlUYU2in5DvlJ6CpydfS3kJ.jpg', NULL, NULL, 'qr_code/REG-00079.svg', '2025-10-27 12:35:36', '2025-10-27 12:56:31'),
(80, 'REG-00080', 9704221, 32, 'Dian Avita Sari', '3301104710110005', 'Teknik Komputer dan Jaringan', 'P', 'CILACAP', '2011-10-07', '6283873107055', 'KARANGGINTUNG RT 08 RW 04', 'ISLAM', 'KARANGGINTUNG', 'GANDRUNGMANGU', 'CILACAP', 'Jawa Tengah', 3301102303090023, 'TASLAM', 'KHASANAH', 'Mts Negeri 2 Cilacap', NULL, 'storage/akta/ttgiASTY3DvGQO7tc8UiOPQI8WCEyF3I0C1cyy5p.jpg', 'storage/kk/lC3nxqj4ouQkBhrh11UwSzYk01ADZogyRZRkaMpO.jpg', NULL, NULL, 'qr_code/REG-00080.svg', '2025-10-27 12:42:47', '2025-10-27 12:56:52'),
(81, 'REG-00081', 9704222, 34, 'Cinta Maharani', '3301136412100001', 'Teknik Komputer dan Jaringan', 'P', 'CILACAP', '2010-12-14', '6283838362970', 'CINGEWOL RT 03 RW 02', 'ISLAM', 'CIBALUNG', 'CIMANGGU', 'CILACAP', 'Jawa Tengah', 3301130701059561, 'WAHUDIN', 'SUKINEM', 'SMP Darussalam', NULL, 'storage/akta/yXtO1hx7LU9T61oltY7saLwC7NdlZk4CRHRsVfSx.jpg', 'storage/kk/AHLs5no1YrYyo9zuIQnlL0HXVeOCBW90PwHIwuRY.jpg', NULL, NULL, 'qr_code/REG-00081.svg', '2025-10-27 12:54:11', '2025-10-27 12:55:21'),
(82, 'REG-00082', 9704223, 39, 'Rasya Senzio Riva', '3301130610100005', 'Teknik Sepeda Motor', 'L', 'Cilacap', '2011-10-06', '6283873857200', 'Panusupan RT 02 RW 08', 'Islam', 'Cimanggu', 'Cimanggu', 'Cilacap', 'Jawa Tengah', 3301132103110006, 'Ruslani', 'Rina Jayanti', 'SMPN 1 Cimanggu', NULL, 'storage/akta/CgAEW8cDOof9Lex3hdBzeHuf3Zhc90DyxRQD57K5.jpg', 'storage/kk/cdS7juWgXqsBCWkdfQeBllVNw5VhYBQIqUUw6pDH.jpg', 'storage/kip/CBA8af8gnkSix9IcHzAQVdgciEMKJvaFKDwg59ST.jpg', NULL, 'qr_code/REG-00082.svg', '2025-10-27 13:15:40', '2025-10-27 13:21:46'),
(83, 'REG-00083', 9704224, 36, 'Aulia Zivana', '3301124106110004', 'Teknik Komputer dan Jaringan', 'P', 'CILACAP', '2011-06-01', '628895387538', 'GUNUNG TELU RT 05 RW 01', 'ISLAM', 'GUNUNGTELU', 'KARANGPUCUNG', 'CILACAP', 'Jawa Tengah', 3301121104120003, 'TUHONO', 'YUNIARTI', 'Mts Negeri 2 Cilacap', NULL, 'storage/akta/hxNOEx7eW4d6OOZI0fBfH5XZrKkMRbqMSdMHzQAp.jpg', 'storage/kk/SiABa4WNyS2iFMMNhwnlZyqeZircqiROgiALBqne.jpg', NULL, NULL, 'qr_code/REG-00083.svg', '2025-10-27 13:17:46', '2025-10-27 13:18:17'),
(84, 'REG-00084', 9704225, 39, 'Angger Putra Rahadian Nizar', '3301132704090002', 'Teknik Sepeda Motor', 'L', 'Cilacap', '2025-10-27', '6283879458729', 'Panusupan RT 02 RW 08', 'Islam', 'Cimanggu', 'Cimanggu', 'Cilacap', 'Jawa Tengah', 3301131302090005, 'Sangidi', 'Priyanti', 'SMPN 1 Cimanggu', NULL, 'storage/akta/9dllcM1va8NoAvPtgeD76TXwz2VflgVRQcWn9pfh.jpg', 'storage/kk/XydBV8ktgbYCr4aiFk6VFlNW9XH5Crks2Dj8D3eO.jpg', 'storage/kip/bIG1KTBBcudfKcX00eAJz21SnAwqQGHG0rZuBo1r.jpg', NULL, 'qr_code/REG-00084.svg', '2025-10-27 13:23:53', '2025-10-27 14:04:01'),
(85, 'REG-00085', 9704226, 36, 'Selsadila', '3301105412100001', 'Pemasaran', 'P', 'CILACAP', '2010-12-14', '6285727374112', 'MARGASARI RT 03 RW 02', 'ISLAM', 'RUNGKANG', 'GANDRUNGMANGU', 'CILACAP', 'Jawa Tengah', 3301101703100027, 'TASWIN', 'WARTINI', 'Mts Negeri 2 Cilacap', NULL, 'storage/akta/bdLiix6jMcJuXXYudFFvcOk3NlI6oWg7jAGtpVh5.jpg', 'storage/kk/GC7Sqpfx7FSgiSuAfPs9T70dZQi0m1dp5EXqGDvl.jpg', NULL, NULL, 'qr_code/REG-00085.svg', '2025-10-27 13:25:54', '2025-10-27 13:26:20'),
(86, 'REG-00086', 9704227, 39, 'Hanindia Rahma Agustin', '3301134508100005', 'Akuntansi', 'P', 'Cilacap', '2010-08-05', '6283877958453', 'Panusupan RT 02 RW 08', 'Islam', 'Cimanggu', 'Cimanggu', 'Cilacap', 'Jawa Tengah', 3301131710130016, 'Dartono', 'Karsinah', 'SMPN 1 Cimanggu', NULL, 'storage/akta/2TBdJC7ldCZ2biLd29XPG2uNWxtOH5RKyS7emqxp.jpg', 'storage/kk/q4VG7z1UZrezLZ8uTGicX3JA4rcf0dnVVH1Qg1mE.jpg', 'storage/kip/VVbcHsQkw6g9b7ES4JPCtegt9mYLl7cR9SIVkBIY.jpg', NULL, 'qr_code/REG-00086.svg', '2025-10-27 13:30:59', '2025-10-28 12:52:10'),
(87, 'REG-00087', 9704228, 36, 'DEVA NURUL AZMI', '3301125405100002', 'Pemasaran', 'P', 'CILACAP', '2010-05-14', '62882006135973', 'KAWUNGCARANG RT 02 RW 05', 'ISLAM', 'PENGAWAREN', 'KARANGPUCUNG', 'CILACAP', 'Jawa Tengah', 3301120710110006, 'SAMAN', 'WATIJAH', 'SMP N 1 KARANGPUCUNG', NULL, 'storage/akta/JsUtbAmSafZWUAoOy8OH5JylBsEk6RpfYepFVtm1.jpg', 'storage/kk/PuOjx1buMuSwRSmxYsrJE5FFXdI9tpso28D1jxHC.jpg', NULL, NULL, 'qr_code/REG-00087.svg', '2025-10-27 13:33:20', '2025-10-27 13:33:43'),
(88, 'REG-00088', 9704229, 39, 'Yusron Nuur Rosyiid', '3301131903110002', 'Teknik Kendaraan Ringan', 'L', 'Cilacap', '2011-03-19', '6285931597848', 'Panusupan RT 02 RW 08', 'Islam', 'Cimanggu', 'Cimanggu', 'Cilacap', 'Jawa Tengah', 3301130806110002, 'Omon Kusmono', 'Iis Nurhamah', 'SMPN 1 Cimanggu', NULL, 'storage/akta/ol2nUFNj4ALwGbEvT4xGooTu7cR0bxbwaC831tsh.jpg', 'storage/kk/ur7iZvEPcgUn298ceOhy8gX11ZZX0MbqBhfqtUvZ.jpg', 'storage/kip/opNBgFrw6byvh2T0iil8O4fJe8TfeiKw1Nb4dWyB.jpg', NULL, 'qr_code/REG-00088.svg', '2025-10-27 13:35:30', '2025-10-27 13:50:06'),
(89, 'REG-00089', 9704230, 39, 'Ikhsan Al Bukhori', '3301131809110001', 'Teknik Sepeda Motor', 'L', 'Cilacap', '2011-09-18', '6283873698842', 'Panusupan RT 02 RW 08', 'Islam', 'Cimanggu', 'Cimanggu', 'Cilacap', 'Jawa Tengah', 3301130810080025, 'Karseno', 'Wasriyah', 'SMPN 1 Cimanggu', NULL, 'storage/akta/ETdr4BrFLGHMzSdINK67ntk3jogwApIEoN5gZm6F.jpg', 'storage/kk/HRZS7dWci5pfh7pqsTf15fsG4pT8nSkU31jyOJ7a.jpg', 'storage/kip/qfc8zq0gJNhSjTfiTYUzKx4FL4m79tYnCzVE74qy.jpg', NULL, 'qr_code/REG-00089.svg', '2025-10-27 13:39:46', '2025-10-27 13:51:00'),
(90, 'REG-00090', 9704231, 36, 'desti rahmawati', '3301124712100001', 'Pemasaran', 'P', 'CILACAP', '2010-12-07', '6288980625274', 'PURBAYASA RT 02 RW 02', 'ISLAM', 'SINDANGBARANG', 'KARANGPUCUNG', 'CILACAP', 'Jawa Tengah', 3301121411190004, 'DEWI RIYANTI', 'DEWI RIYANTI', 'Mts Negeri 2 Cilacap', NULL, 'storage/akta/N7hBi5Nc2CTPRtAv8XjKzCqVdWAwYKlJbBcrvW9Q.jpg', 'storage/kk/0ZBJ2dXvsH1tMPTH14MCcJYr0Vb35hzRiUXoK5dm.jpg', NULL, NULL, 'qr_code/REG-00090.svg', '2025-10-27 13:42:50', '2025-10-27 13:43:12'),
(91, 'REG-00091', 9704232, 39, 'Reza Pratama', '3301130309110001', 'Teknik Komputer dan Jaringan', 'L', 'Cilacap', '2011-09-03', '6283846197096', 'Panusupan RT 02 RW 08', 'Islam', 'Cimanggu', 'Cimanggu', 'Cilacap', 'Jawa Tengah', 3301130311100030, 'Kastam', 'Rohanah', 'SMPN 1 Cimanggu', NULL, 'storage/akta/lETeVZxTRNxvDC13rNvvdvHkEwx4JPCY77QAnHTV.jpg', 'storage/kk/BUNlnHTCLvsMPAgQbezhQeOgoUHwhGSNrEZQROYo.jpg', 'storage/kip/HP0C5JhmrMJ28oQlmQTTaGxD0RptQIRr5IOxWOU7.jpg', NULL, 'qr_code/REG-00091.svg', '2025-10-27 13:45:48', '2025-10-27 13:51:53'),
(92, 'REG-00092', 9704233, 39, 'Syifa Nur Fadila', '3301126905120001', 'Teknik Komputer dan Jaringan', 'P', 'Cilacap', '2012-05-29', '6281325581099', 'Sindangbarang RT 04 RW 09', 'Islam', 'Sindangbarang', 'Karangpucung', 'Cilacap', 'Jawa Tengah', 3301120106120003, 'Darminto', 'Riyanti', 'MTs N 2 Cilacap', NULL, 'storage/akta/bmJjuk8qbs55ee3i0iOW1qeCWZ3ZyuyIwEIqmRt8.jpg', 'storage/kk/5d2JVNrn0PBVxg4QmNAeQmMLxSQgwlHbvQIqmCYt.jpg', NULL, NULL, 'qr_code/REG-00092.svg', '2025-10-27 14:22:41', '2025-10-27 14:25:40'),
(93, 'REG-00093', 9704234, 36, 'Sarah Shafania', '3302014406110002', 'Pemasaran', 'P', 'Cilacap', '2011-04-06', '628895651792', 'Dusun Suryan RT 01 RW 08', 'Islam', 'Karangpucung', 'Karangpucung', 'Cilacap', 'Jawa Tengah', 3301122411150005, 'Kartono', 'Sunani', 'SMP N 1 Karangpucung', NULL, 'storage/akta/f45AQB4RBAdJmy6TcLA1KTpcclwoLOLOGSfKSCka.jpg', 'storage/kk/QkXBnEDxwdGC6XqPSzcQ9yFGrbEzh8BiUTNsN6KO.jpg', NULL, NULL, 'qr_code/REG-00093.svg', '2025-10-27 14:23:26', '2025-10-29 04:14:50'),
(94, 'REG-00094', 9704235, NULL, 'Zaskia Nur Amalia', '3301106105110002', 'Akuntansi', 'P', 'Cilacap', '2011-05-21', '6281578234546', 'Margasari', 'Islam', 'Rungkang', 'Gandrungmangu', 'Cilacap', 'Jawa tengah', 3301102801150008, 'Kiswanto', 'Ade nurani', 'SMP N 3 Sidareja', NULL, 'storage/akta/UUVnW5xfbM0UbkNXGo5kcLwuuRo05Fz4D8h24Hqu.jpg', 'storage/kk/oy0gm9iMIxHrU2glAXwsnlxU2cAQ8F1LlGjVajvg.jpg', NULL, NULL, 'qr_code/REG-00094.svg', '2025-10-27 17:05:39', '2025-10-30 12:51:08'),
(95, 'REG-00095', 9704236, 78, 'RADITIYA EGA PRASETYO', '3301101609100002', 'Teknik Kendaraan Ringan', 'L', 'CILACAP', '2010-09-16', '6285803223354', 'RUNGKANG RT05 RW02', 'ISLAM', 'RUNGKANG', 'GANDRUNGMANGU', 'CILACAP', 'JAWA TENGAH', 3301102003120001, 'TEMIN', 'SUKIRAH', 'SMP NEGERI 3 SIDAREJA', NULL, 'storage/akta/3cZSslcNH8jPouKT9l9W6eCDpjL9jQa2YQpXcpb1.jpg', 'storage/kk/fUzU69LV5YmQChna83imykrJuKQXnPQLMh4mo7Jn.jpg', NULL, NULL, 'qr_code/REG-00095.svg', '2025-10-28 00:35:53', '2025-10-29 02:49:18'),
(96, 'REG-00096', 9704237, 58, 'CALLYSTA NEVALIA PUTRI DHINATI', '3301106709120001', 'Akuntansi', 'P', 'CILACAP', '2012-09-27', '6281327467913', 'DUSUN KARANGTAWANG RT03 RW06', 'ISLAM', 'KARANGGINTUNG', 'GANDRUNGMANGU', 'CILACAP', 'JAWA TENGAH', 3301102401120009, 'SUGENG', 'YULIANINGSIH', 'SMP NEGERI 1 KARANGPUCUNG', NULL, 'storage/akta/NesEQUnfd1waur4QBgDNwtpce9tOQECOmETGZXit.jpg', 'storage/kk/9eu5pKxM4zfFEvkZcyxK1DUvUMMWWSz23dqGGxRJ.jpg', NULL, NULL, 'qr_code/REG-00096.svg', '2025-10-28 00:40:58', '2025-10-28 11:52:44'),
(97, 'REG-00097', 9704238, 28, 'Jhahira Sifa Muamanah', '3301126706110002', 'Pemasaran', 'P', 'Cilacap', '2011-07-26', '6289611049225', 'Ciraja Rt 01/012 Ciporos Karangpucung', 'Islam', 'Ciporos', 'Karangpucung', 'Cilacap', 'Jawa Tengah', 3301120709070011, 'Cahyanto', 'Sadinah', 'MTs Nurul Huda Karangpucung', NULL, 'storage/akta/z7O6fWqzBaCb2RDNgDigYYHsQBmdo9VBNxcMGZzi.jpg', 'storage/kk/rEkjG6SwZFcQh2mI4I5Q82mvofmvCF5BcSiwdBTE.jpg', NULL, NULL, 'qr_code/REG-00097.svg', '2025-10-28 01:33:51', '2025-10-28 12:57:23'),
(98, 'REG-00098', 9704239, 37, 'Alfa Rizki Mugni Abadan', '3301132003100004', 'Teknik Komputer dan Jaringan', 'L', 'Cilacap', '2010-03-20', '6281229603663', 'Cikadu, Rt 1, Rw 9', 'Islam', 'Panimbang', 'Cimanggu', 'Cilacap', 'Jawa Tengah', 3301132607220004, 'Agus Diantoro', 'Turyati', 'SMP Raden Fatah', NULL, 'storage/akta/A5U1koQhGizdOs6TCVUfCUnjn5ZImLGZ5gNrIdgg.jpg', 'storage/kk/7aLc5l8R5XojtjMz0lJ7NPg6Oo0XT1X4E8QzUKl3.jpg', NULL, NULL, 'qr_code/REG-00098.svg', '2025-10-28 05:32:03', '2025-10-28 11:38:29'),
(99, 'REG-00099', 9704240, 37, 'AURORA MALIKHA DESTIANT', '3301134612100001', 'Akuntansi', 'P', 'Cilacap', '2010-12-06', '6281401745704', 'Cikadu, Rt 1, Rw 9', 'Islam', 'Panimbang', 'Cimanggu', 'Cilacap', 'Jawa Tengah', 3301130601054329, 'Misyono Edi', 'Nur Eni Apriyanti', 'SMP Raden Fatah', NULL, 'storage/akta/iYFT8rfNocHhm4masZpNPwyW8QFHyBGgGdy1iFNT.jpg', 'storage/kk/DBhbdUlpjMBi40RJaD6owRlvPMk6UcF8Fd0ugZrK.jpg', NULL, NULL, 'qr_code/REG-00099.svg', '2025-10-28 05:43:15', '2025-10-28 11:50:57'),
(100, 'REG-00100', 9704241, 37, 'Alfina Noviyanti Humairoh', '3276025311090003', 'Akuntansi', 'P', 'Cilacap', '2009-11-13', '6282322529016', 'Jl. Genteng Wetan RT 001/RW 003', 'Islam', 'Panimbang', 'Cimanggu', 'Cilacap', 'Jawa Tengah', 3301131412230007, 'Madan', 'Siti Maryamah', 'SMP Raden Fatah', NULL, 'storage/akta/alfina.jpg', 'storage/kk/N2WGd20Ke3MzptBkjMhLiDPTvVDK2j7C3yLMcMTg.jpg', NULL, NULL, 'qr_code/REG-00100.svg', '2025-10-28 06:30:19', '2025-10-28 11:38:57'),
(101, 'REG-00101', 9704242, 37, 'Nur Fauzan', '3301130702110006', 'Belum Memilih', 'L', 'Cilacap', '2011-02-07', '6287728473789', 'Cikadu, Rt 1, Rw 9', 'Islam', 'Panimbang', 'Cimanggu', 'Cilacap', 'Jawa Tengah', 3301130601055231, 'Parsun', 'Darliyah', 'SMP Raden Fatah', NULL, 'storage/akta/39oJRRUd5JFQ5Ga2X9glWyrERy6RY7nsgyu94sqY.jpg', 'storage/kk/smo9Tvr38L8etE7SIQL7xwAaaBZKQbwnSZLoCYOh.jpg', NULL, NULL, 'qr_code/REG-00101.svg', '2025-10-28 06:41:30', '2025-10-29 02:47:48'),
(102, 'REG-00102', 9704243, 37, 'Halimah Sabiya', '3301135206110003', 'Akuntansi', 'P', 'Cilacap', '2011-06-12', '6282228321896', 'Cikadu, RT 004, RW 010', 'Islam', 'Panimbang', 'Cimanggu', 'Cilacap', 'Jawa Tengah', 3301130601110025, 'Da\'un', 'Karsih', 'SMP Raden Fatah', NULL, 'storage/akta/aCikeU0EUFwYMLhbIhxSo712h1iKETBuDBGUyhNY.jpg', 'storage/kk/Ix0Q1evWMBFNJXXBlh8oaxKf4WHJUo5zOpDXVMMq.jpg', NULL, NULL, 'qr_code/REG-00102.svg', '2025-10-28 06:57:12', '2025-10-28 12:51:13'),
(103, 'REG-00103', 9704244, 36, 'ALIEP DANA PURWANTO', '3273052605100002', 'Teknik Sepeda Motor', 'L', 'CILACAP', '2010-05-25', '6285877325389', 'purbayasa RT 3 RW 2', 'ISLAM', 'SINDANGBARANG', 'KARANGPUCUNG', 'CILACAP', 'Jawa Tengah', 3273050202120014, 'SURYANTO', 'SURIPAH', 'Mts Negeri 2 Cilacap', NULL, 'storage/akta/7c9VzR8Rgzg6at4no4sskZyTY6qTizF8lH74YgEY.jpg', 'storage/kk/cajIxwbDAMkIJcdpMrRL4rTdODcMN4Titim2ac8X.jpg', NULL, NULL, 'qr_code/REG-00103.svg', '2025-10-28 11:14:14', '2025-10-28 11:14:57'),
(104, 'REG-00104', 9704245, 79, 'Refi purnama ramadani', '3301131508110001', 'Belum Memilih', 'L', 'CILACAP', '2011-08-15', '6283187143743', 'PANANJUNG RT 09 RW 03', 'ISLAM', 'CIBALUNG', 'CIMANGGU', 'CILACAP', 'Jawa Tengah', 3301132005090015, 'CASTO', 'DURYATI', 'SMP PGRI 18 CIMANGGU', NULL, 'storage/akta/sn7ljI4E0glSdp4A0DHOevWdzk0Qr4vegBVupreL.jpg', 'storage/kk/17z8Sqw8yXcgLz57z3RByz9CvpdcMqE21T6RjGSZ.jpg', NULL, NULL, 'qr_code/REG-00104.svg', '2025-10-28 11:26:08', '2025-10-28 11:33:19'),
(105, 'REG-00105', 9704246, 79, 'Septiana Sari Indriyani', '3301136109110001', 'Belum Memilih', 'P', 'CILACAP', '2011-09-21', '6283846193201', 'KALIMATI RT 09 RW 03', 'ISLAM', 'CIBALUNG', 'CIMANGGU', 'CILACAP', 'Jawa Tengah', 3301131303150004, 'RIDO', 'WARSUTI', 'SMP PGRI 18 CIMANGGU', NULL, 'storage/akta/TIkRdaxQKt4grQoh13yRBxR0hNR7hS9yEbEud5Qz.jpg', 'storage/kk/n2ESPe6aDo9qJXQPC6ufHpCNcxu9tB3FblyhPWuA.jpg', NULL, NULL, 'qr_code/REG-00105.svg', '2025-10-28 11:29:40', '2025-10-28 11:32:53'),
(106, 'REG-00106', 9704247, 28, 'Ismawati', '3301135412100002', 'Teknik Komputer dan Jaringan', 'P', 'CILACAP', '2010-12-14', '6289611049225', 'BOJONG GINTUNG RT 01 RW 05', 'ISLAM', 'CIBALUNG', 'CIMANGGU', 'CILACAP', 'Jawa Tengah', 3301131008100003, 'CARUM MUHRODIN', 'CASMITI', 'SMP RADEN FATAH CIMANGGU', NULL, 'storage/akta/pujcPOnHFqCO4ykQR9hcNuxF1xhVSeXr2fJSWcF3.jpg', 'storage/kk/svzWYyd5ZICqqq1M2SSQ9rtyJX3SEIzie5C2Ujnc.jpg', NULL, NULL, 'qr_code/REG-00106.svg', '2025-10-28 12:12:51', '2025-10-28 12:18:22'),
(108, 'REG-00108', 9704249, 23, 'Hafiz Rouf Mahendra', '3301122910090002', 'Teknik Sepeda Motor', 'L', 'Cilacap', '2009-10-29', '6285715451995', 'Banjarwaru', 'Islam', 'Sindangbarang', 'Karangpucung', 'Cilacap', 'Jawa Tengah', 3301122604100016, 'Wahyudi', 'Siti Maryam', 'MTS N 2 CILACAP', NULL, 'storage/akta/yXETC4v3ABAyrbLG1WQjeioZHY6ZqcV2sVtYzF4X.jpg', 'storage/kk/CkDv4Mo0ffGAbxCEBFxVss3WnTMr5DuVzVQijaxA.jpg', NULL, NULL, 'qr_code/REG-00108.svg', '2025-10-28 12:31:03', '2025-10-28 12:32:39'),
(109, 'REG-00109', 9704250, 28, 'Vega Asyfa Nur Laela', '3301126403110002', 'Pemasaran', 'P', 'Cilacap', '2011-03-24', '6289611049225', 'Pesanggrahan Ciporos Karangpucung', 'Islam', 'Ciporos', 'Karangpucung', 'Cilacap', 'Jawa Tengah', 3301122410110004, 'Tusman', 'Hanifah', 'MTs Nurul Huda Karangpucung', NULL, 'storage/akta/H9l0xSRzYMI4lFwW0KZD3iYCPh8novzRmHx2VcFf.jpg', 'storage/kk/mlKLXW8Pw8QlsTAy74EEfoFVvKDI828qgxw6bOdN.jpg', NULL, NULL, 'qr_code/REG-00109.svg', '2025-10-28 12:32:47', '2025-10-29 04:17:42');
INSERT INTO `siswa` (`id`, `no_regis`, `user_id`, `referral_id`, `nama`, `nik`, `jurusan`, `jenis_kelamin`, `tempat_lahir`, `tgl_lahir`, `hp`, `alamat`, `agama`, `desa`, `kecamatan`, `kabupaten`, `provinsi`, `no_kk`, `nama_ayah`, `nama_ibu`, `sekolah_asal`, `foto`, `akta`, `kk`, `kip`, `suket`, `qr_code`, `created_at`, `updated_at`) VALUES
(110, 'REG-00110', 9704251, 63, 'TAUFAN AKBAR PERMANA', '3301122212100004', 'Teknik Sepeda Motor', 'L', 'Cilacap', '2010-12-22', '6288225129890', 'Dusun Karanganyar, rt 1 rw 3', 'Islam', 'Tayemtimur', 'Karangpucung', 'Cilacap', 'Jawa Tengah', 3301120504100014, 'Slamet Cahyono', 'Eni Suwitaningsih', 'SMP N 1 KARANGPUCUNG', NULL, 'storage/akta/JBhHAy4ZXBluZyrK6fLymdUFw0aq4IGxmvMMoabc.jpg', 'storage/kk/LHZyGUl76OcUFHOs76OzlVdg1L1GCVlLKmXYhol6.jpg', NULL, NULL, 'qr_code/REG-00110.svg', '2025-10-29 02:26:32', '2025-10-29 04:15:57'),
(111, 'REG-00111', 9704252, 79, 'Windri Nurafifah', '3301136603110003', 'Belum Memilih', 'P', 'Cilacap', '2011-03-26', '6285712517759', 'Kalimati RT 06 RW 03 Desa Cibalung Kecamatan Cimanggu', 'Islam', 'Cibalung', 'Cimanggu', 'CILACAP', 'JAWA TENGAH', 3301131103090011, 'Kaswin', 'Tri yanti', 'SMP PGRI 18 CIMANGGU', NULL, 'storage/akta/9jBEJ9egX6jGgcDhvnTqEAME3f8sEaO8dXBRMixB.jpg', 'storage/kk/QXcCPIA9P6H8QmfYizgMw6b52DjpfUY5Q1o4OLsn.jpg', 'storage/kip/BjDqdru29VK1N0vWPjsQ8jfyOGD5c2gsJ0WCaLYN.jpg', NULL, 'qr_code/REG-00111.svg', '2025-10-29 03:14:21', '2025-10-29 04:19:03'),
(112, 'REG-00112', 9704253, NULL, 'Silpi apriliani', '3301206809100002', 'Akuntansi', 'P', 'Cilacap', '2025-10-29', '6285215458628', 'Bantar sari', 'Islam', 'Bantarsari', 'Cimanggu', 'Cilacap', 'Jawa tengah', 3301200301120002, 'Karyoto', 'Lasmini', 'Satap bantarsari', 'storage/foto/L2jJbKEPWFfX6prVgPjQsZT4E8Hjgh86Tk0idKyF.jpg', 'storage/akta/byhlq40xL0iNispY8g3BkOF37lvEskIt5za20EOd.jpg', 'storage/kk/rzoXIGCCYaCp4L4FuE0iCxCbRIW4ArCekBXFWANw.jpg', 'storage/kip/81QM3mwuTALyaTObtnII5gdFXuCacflqlRyhLmkp.jpg', NULL, 'qr_code/REG-00112.svg', '2025-10-29 04:04:43', '2025-10-29 04:15:33'),
(114, 'REG-00114', 9704255, 36, 'Wanda Ayu Lestari', '3301125002110001', 'Akuntansi', 'P', 'Cilacap', '2011-02-10', '6285246438971', 'Banjarwaru', 'Islam', 'Banjarwaru', 'Karangpucung', 'Cilacap', 'Jawa Tengah', 3301120306080001, 'Sarmono', 'Aminah', 'MTs negeri 2 Cilacap', 'storage/foto/YW4uVfL8lKaXhRs39rHCf9L67lOpqKosTSabZgsf.jpg', 'storage/akta/0DNiyBsT8OZX5zWkVPEMTLtneny5NaDpNgVMxF0G.jpg', 'storage/kk/a7UngEptlXhnPWTxncnJ0f48KLVjBLdA8rl1dqgp.jpg', 'storage/kip/t0rY2P5h3YkpfKrEVumEBGZLxTIhDeimsDZPebtA.jpg', NULL, 'qr_code/REG-00114.svg', '2025-10-29 09:52:01', '2025-10-29 11:21:39'),
(115, 'REG-00115', 9704258, 74, 'Sastia Dewi', '3301125201100002', 'Pemasaran', 'P', 'Cilacap', '2010-01-12', '6281318383041', 'Dusun Pekuncen RT.03 RW.04', 'Islam', 'Bengbulang', 'Karangpucung', 'Cilacap', 'Jawa tengah', 3301120408080045, 'Narso', 'Wastoyah', 'Mts Negeri 2 Cilacap', NULL, 'storage/akta/XMy4i7PkQ7TmbjEVlIFp82HnWVj5XjF6Twlt4Ylm.jpg', 'storage/kk/qaGJNkB1ch6T7knVv70afYdFpX2719xvZmJ54WC8.jpg', NULL, NULL, 'qr_code/REG-00115.svg', '2025-10-30 11:56:05', '2025-10-30 12:49:57'),
(116, 'REG-00116', 9704259, 74, 'Tresno Adi Nugroho', '3301120706110001', 'Teknik Sepeda Motor', 'L', 'Cilacap', '2011-06-07', '6285159224073', 'Dusun Pekuncen RT.01 RW.04', 'Islam', 'Bengbulang', 'Karangpucung', 'Cilacap', 'Jawa tengah', 3301121102070027, 'Ratno', 'Royati', 'Mts Negeri 2 Cilacap', NULL, 'storage/akta/ciyTR0cvuRgugBGLIvJBS1JYpSzpH93ej0KlJ6AH.jpg', 'storage/kk/IUJ0zodWah6ET51oNQDtnje2luiiT0nRo1b3i7JA.jpg', NULL, NULL, 'qr_code/REG-00116.svg', '2025-10-30 12:07:31', '2025-10-30 12:50:27'),
(117, 'REG-00117', 9704260, 74, 'Alghofarul Hamdi', '3301121109100004', 'Teknik Sepeda Motor', 'L', 'Cilacap', '2010-12-11', '6285353891390', 'Dusun Pekuncen RT.04 RW.03', 'Islam', 'Bengbulang', 'Karangpucung', 'Cilacap', 'Jawa tengah', 3301122211110009, 'Datuk Riyanto', 'Rokinah', 'SMP Negeri 2 Karangpucung', NULL, 'storage/akta/JZ36ZfnqBDhTSLuyiJnVNVKPM929hfpxSvDyyUal.jpg', 'storage/kk/brwjC6NiqtleQOMsdG9YdqTmMfSAEF489xqoAK3h.jpg', NULL, NULL, 'qr_code/REG-00117.svg', '2025-10-30 12:32:33', '2025-10-30 12:49:19'),
(118, 'REG-00118', 9704261, 32, 'Fabian Evan Radhinka', '3301103103110001', 'Teknik Sepeda Motor', 'L', 'cilacap', '2011-03-31', '62882008776731', 'cinangsi rt 02 rw 02', 'islam', 'cinangsi', 'gandrungmangu', 'cilacap', 'jawa tengah', 3301101611200004, 'puput', 'desti ristaliana', 'smp n 3 gandrungmangu', NULL, 'storage/akta/yrjDXhmnSq61HlgqYApXGUvoncCRlilUSJbZlpKc.jpg', 'storage/kk/5gkBn6bfDNMjyOwilbAXHMqQYvHblSaV6APChtKl.jpg', 'storage/kip/aVUnELcsq1LWfpAqlzTm6XTxhiNQWC4TmHNMmdOT.jpg', NULL, 'qr_code/REG-00118.svg', '2025-10-30 13:03:37', '2025-10-31 11:21:03'),
(119, 'REG-00119', 9704262, 57, 'ADNAN FARIZKI', '3301132208100003', 'Teknik Sepeda Motor', 'L', 'Cilacap', '2010-08-22', '6285715451995', 'Bantarpanjang', 'Islam', 'Bantarpanjang', 'Cimanggu', 'Cilacap', 'Jawa Tengah', 3301132710110004, 'WIDIYANTO', 'RESI ERYAWATI', 'SMP RADEN FATAH CIMANGGU', NULL, 'storage/akta/hG8mWdWzPQ2FI7IQswnUmajfa70GSHur3PeeLBpt.jpg', 'storage/kk/jcBBWqPZCSbNtkNim9a9X7qBVZjlBv8DlEJ6kKML.jpg', NULL, NULL, 'qr_code/REG-00119.svg', '2025-10-30 14:21:07', '2025-10-31 01:59:28'),
(120, 'REG-00120', 9704263, 74, 'Lilis Basuki', '3301125402100001', 'Pemasaran', 'P', 'Cilacap', '2010-02-14', '6282148103174', 'Dusun Pekuncen RT.04 RW. 03', 'Islam', 'Bengbulang', 'Karangpucung', 'Cilacap', 'Jawa tengah', 3301032810100003, 'Sukur Basuki', 'Rabaia', 'Mts Negeri 2 Cilacap', NULL, 'storage/akta/pf8tF58G7S4tELvfiQcdw6pomUQUai92J8dlq4zP.jpg', 'storage/kk/UGNhRNwOfzi9DwXfvXy7FRIAKjeAI1MSPRAdHdKm.jpg', NULL, NULL, 'qr_code/REG-00120.svg', '2025-10-31 00:54:27', '2025-10-31 02:00:14'),
(121, 'REG-00121', 9704264, 32, 'Reval Yahya Maulana', '3301122709100003', 'Belum Memilih', 'L', 'Cilacap', '2010-09-27', '6282314794358', 'Cinangka Babakan', 'Islam', 'Babakan', 'Karangpucung', 'Cilacap', 'Jawa Tengah', 3301120911100002, 'Arman', 'Sumyani', 'SMP Islam Karangpucung', NULL, 'storage/akta/q7QGGLyHMILeFratNmn7jzFaKPZklBPxuL9zKJut.jpg', 'storage/kk/hsW9hHoy9I0YKZ2hm1q6TPSqNqXcmohjT5quKRpW.jpg', NULL, NULL, 'qr_code/REG-00121.svg', '2025-10-31 01:33:32', '2025-10-31 02:36:00'),
(122, 'REG-00122', 9704265, 78, 'Nur wahidur latif', '3301100507100001', 'Teknik Sepeda Motor', 'L', 'Cilacap', '2010-07-05', '62882006667150', 'Karang Gintung RT 10 Rw 3', 'Islam', 'Karanggintung', 'Gandrungmangu', 'Cilacap', 'Jawa Tengah', 3301102508140008, 'Mistam', 'Suryanti', 'MTs Negeri 1 Cilacap', NULL, 'storage/akta/f1tV0iITfwyuXwgSegy15OfHwo5Qi2X1NwZSvNVG.jpg', 'storage/kk/yXRZgyxiUbFGZkTNqVOOYXy5ZjsiJ2L2fBza1ol2.jpg', NULL, NULL, 'qr_code/REG-00122.svg', '2025-10-31 02:29:40', '2025-10-31 02:36:35'),
(123, 'REG-00123', 9704266, 53, 'Tora  Andre Wirawan', '3302011510080001', 'Teknik Kendaraan Ringan', 'L', 'Cilacap', '2008-10-15', '6288229795961', 'Karangjati RT. 01 RW.04', 'Islam', 'Kedunggede', 'Lumbir', 'Banyumas', 'Jawa Tengah', 3302010208060004, 'Dadang Febrian', 'Wimbo Kurningsih', 'SMP N 1 LUMBIR', NULL, 'storage/akta/NceK33vtVovLbdeSEclQtGf8gvEd4mvF5GUqlPfM.jpg', 'storage/kk/XLkqB3GHNtGbc41jXEE34aFPl5CA7Bj1z1Hm4ffJ.jpg', NULL, NULL, 'qr_code/REG-00123.svg', '2025-10-31 02:42:45', '2025-10-31 02:52:37'),
(124, 'REG-00124', 9704267, 71, 'Tatim Matsuadah', '3301136308120001', 'Akuntansi', 'P', 'CILACAP', '2012-08-23', '6281332278143', 'DUSUN GUNUNGTIGA RT05 RW03', 'ISLAM', 'BANTARMANGU', 'CIMANGGU', 'CILACAP', 'JAWA TENGAH', 3301130601059709, 'YANTO', 'WAYINAH', 'SMP DARUSSALAM CIMANGGU', NULL, 'storage/akta/DzpSC4Pk1nhTXcJDsyKb185aawgDkn8e8GVAfknI.jpg', 'storage/kk/yKEQkJrHtBHIDX2hfs1PolrHzitoaV5Odsli10ly.jpg', NULL, NULL, 'qr_code/REG-00124.svg', '2025-10-31 02:47:33', '2025-10-31 02:53:15'),
(126, 'REG-00126', 9704269, 44, 'Istyanah isnaetun', '3301206104110002', 'Pemasaran', 'P', 'Cilacap', '2011-04-21', '6285141179432', 'Dusun Bonjoksaga', 'Islam', 'Citembong', 'Bantarsari', 'Cilacap', 'Jawa tengah', 3301201601050502, 'Sartam', 'Rusni', 'SMPN Satu Atap 1 Bantarsari', NULL, 'storage/akta/BuYrIOaNxTHYgMjBtmWxGo09pKrOliwdyeH0FU3h.jpg', 'storage/kk/F4lUwT85nF51D2rofpp2t3kN50u7YgUJEyDX1rZL.jpg', NULL, NULL, 'qr_code/REG-00126.svg', '2025-10-31 07:22:43', '2025-10-31 13:45:41'),
(127, 'REG-00127', 9704270, 70, 'ELFAIZIA NURUL AQILA', '3301134301110001', 'Belum Memilih', 'P', 'CILACAP', '2011-03-01', '6285713814755', 'LENGKONG RT 03/03', 'ISLAM', 'MANDALA', 'CIMANGGU', 'CILACAP', 'JAWA TENGAH', 3301130909080005, 'SUPRIYANTO', 'HAYATI', 'SMP ISLAM KARANGPUCUNG', NULL, 'storage/akta/VlaT5Fg5vUct2hNwsecBUZXvZP6aBdRcRszG0Bxi.jpg', 'storage/kk/qx6hHSXJnz0FdS26JZDYgkZVP9ONiPNQ5gThjcXY.jpg', NULL, NULL, 'qr_code/REG-00127.svg', '2025-10-31 07:40:03', '2025-10-31 13:45:07'),
(128, 'REG-00128', 9704271, 45, 'Rafi Nur Alfiansyah', '3301102106110003', 'Teknik Sepeda Motor', 'L', 'Cilacap', '2011-06-21', '6285290864503', 'Dusun Cibriluk RT 02 RW 04', 'Islam', 'Cinangsi', 'Gandrungmangu', 'Cilacap', 'Jawa Tengah', 3301101310110001, 'Sutaryo', 'Nikamtun Khoeriyah', 'MTs El Bayan', NULL, 'storage/akta/l50lTD5aBQFIF8xc5KNFTINmHJswzpFvPK084fc5.jpg', 'storage/kk/fmEW5CQoAznESes8AG0pK5KYrIRrtSe1N6OW1tJR.jpg', NULL, NULL, 'qr_code/REG-00128.svg', '2025-10-31 09:44:03', '2025-10-31 13:46:17'),
(129, 'REG-00129', 9704272, 74, 'Ahmad Hafidi', '3301120506110001', 'Teknik Komputer dan Jaringan', 'L', 'Cilacap', '2011-06-05', '6282133777824', 'Dusun Pekuncen RT.01 RW.04', 'Islam', 'Bengbulang', 'Karangpucung', 'Cilacap', 'Jawa tengah', 3301122407080017, 'Wasriyo', 'Wariyah', 'Mts Negeri 2 Cilacap', NULL, 'storage/akta/XvH6cjEqYGlHcvqWCTtyYQQdR6qwYAJAuDed7nIM.jpg', 'storage/kk/nIouNQbcDKK8mgfcH1XKqQhuNtYrsksllNEFnH4a.jpg', NULL, NULL, 'qr_code/REG-00129.svg', '2025-10-31 12:28:45', '2025-10-31 13:44:39'),
(130, 'REG-00130', 9704273, 44, 'Rasya Nuh Dwi Putra', '3301201610100001', 'Teknik Sepeda Motor', 'L', 'Cilacap', '2010-10-16', '6282228309146', 'DUSUN WATES SARI RT 005 /RW 002', 'Islam', 'Citembong', 'Bantarsari', 'Cilacap', 'Jawa tengah', 3301201209070004, 'Cahyono', 'Fitriani', 'SMP N Satap 1 Bantarsari', NULL, 'storage/akta/c5vZxz6bODVOzRwCpAhxawS1HSKDsnHYyeyi7kdC.jpg', 'storage/kk/RqYs0homy5mMd5bCmEgLsVOdHSQCjuTUQIlN1Kav.jpg', NULL, NULL, 'qr_code/REG-00130.svg', '2025-10-31 12:31:56', '2025-10-31 13:46:39'),
(131, 'REG-00131', 9704274, 42, 'Nuril Azkia Milanisti', '3302015901110001', 'Pemasaran', 'P', 'Banyumas', '2011-01-19', '6281226939639', 'Perum Bumi Sakinah 4 Blok C5 No. 9 RT 004 RW 008', 'Islam', 'Muktiwari', 'Cibitung', 'Bekasi', 'Jawa Barat', 3216071009120005, 'Dedi Sumar', 'Masriyah', 'MTs Al-Ajhariyyah Bekasi', NULL, 'storage/akta/clZngJEfysCAujVosR8awFOc3LAiX2oDgYc086By.jpg', 'storage/kk/LjhzUw1vWQSopZk9MBnBZX0mrHlDbRsxrkV7VuEn.jpg', NULL, NULL, 'qr_code/REG-00131.svg', '2025-11-01 01:54:02', '2025-11-01 08:11:19'),
(132, 'REG-00132', 9704275, 73, 'Ilyas insan nugraha', '3301120311120001', 'Teknik Sepeda Motor', 'L', 'Cilacap', '2011-05-26', '6283842862866', 'ciporos', 'islam', 'ciporos', 'Karangpucung', 'cilacap', 'Jawa Tengah', 3301120311120001, 'Agus Priyanto', 'meli sutanti', 'SMP Darussalam Cimanggu', NULL, 'storage/akta/O2AbMu33gvHj9bcDtRNLv7nSAmhlqr427O9VaKdQ.jpg', 'storage/kk/0ys4jrCwYVgVRqjxoGaZRoIVeeUqa1j3UwX9aySv.jpg', NULL, NULL, 'qr_code/REG-00132.svg', '2025-11-01 02:10:15', '2025-11-01 08:10:11'),
(133, 'REG-00133', 9704276, 49, 'Refan Maulana', '3301121305080001', 'Belum Memilih', 'L', 'Cilacap', '2011-05-31', '6283862452180', 'Cijoho', 'Islam', 'Tayem', 'Karangpucung', 'Cilacap', 'Jawa Tengah', 3301121103080008, 'Tursino', 'Sopiyah', 'SMP negeri 2 karangpucung', NULL, 'storage/akta/8TfVjdK0R8BmXuwWyZpQZpnbXCB9VOjqyGNH6QMU.jpg', 'storage/kk/DtYiZ3TqLjIPTiLEtOJf8HhImk1UYVzu8t4Lr3Mt.jpg', NULL, NULL, 'qr_code/REG-00133.svg', '2025-11-01 03:46:33', '2025-11-01 08:11:39'),
(134, 'REG-00134', 9704277, 23, 'GALANG TEGAR RAHAYU', '3301202810100006', 'Teknik Sepeda Motor', 'L', 'CILACAP', '2010-10-28', '628818159974', 'BONJOKSAGA', 'ISLAM', 'CITEMBONG', 'BANTARSARI', 'CILACAP', 'JAWA TENGAH', 3301201812070002, 'saiman', 'lasmini', 'SMP Negeri 1 Satap Bantarsari', NULL, 'storage/akta/FVdAt5eRbnFQ1wTRUqRHTteAcPjoImKfI27WW9Vp.jpg', 'storage/kk/ufSNuwdRnEJopGCv9PtBbfy0JbYKXlvjTAHCcYX4.jpg', NULL, NULL, 'qr_code/REG-00134.svg', '2025-11-01 05:02:14', '2025-11-01 05:06:27'),
(135, 'REG-00135', 9704278, 73, 'tri setianingsih', '3301125502110001', 'Pemasaran', 'P', 'cilacap', '2011-02-15', '6285747778739', 'ciporos', 'islam', 'ciporos', 'Karangpucung', 'cilacap', 'Jawa Tengah', 3301121908110001, 'Sukiman', 'rohyati', 'SMP NEGERI 1 CIMANGGU', NULL, 'storage/akta/jmUInmhDMkSoaZxv4XpYGn2ZxBJCs0q3mVzR8nij.jpg', 'storage/kk/qc7GfqAmySjQVdsyP9EzdXX1v8UAKrZjs5HRznEb.jpg', NULL, NULL, 'qr_code/REG-00135.svg', '2025-11-01 05:12:18', '2025-11-01 08:12:02'),
(136, 'REG-00136', 9704279, 34, 'Vita Destiana', '3301106512100001', 'Pemasaran', 'P', 'Cilacap', '2010-12-25', '6282135517469', 'Dusun Cibenda Rt04 RW 04', 'Islam', 'Kertajaya', 'Gandrungmangu', 'Cilacap', 'Jawa Tengah', 3301101401058477, 'Rusdita', 'Mustiah', 'SMP Negeri 1 Satap Bantarsari', NULL, 'storage/akta/6dToWTUdDLFbniTbVQbnQvtT0qF4KqBhBEaDu9q5.jpg', 'storage/kk/XSUJSQdjiiAxv1VHPOIoeWS0DmgMP3HQuX0wMnRU.jpg', NULL, NULL, 'qr_code/REG-00136.svg', '2025-11-01 05:16:19', '2025-11-01 08:12:21'),
(137, 'REG-00137', 9704280, 73, 'nelvita nur alifa', '3301124804120001', 'Akuntansi', 'P', 'cilacap', '2012-04-08', '6285747778738', 'ciporos', 'islam', 'ciporos', 'Karangpucung', 'cilacap', 'Jawa Tengah', 3301122803120004, 'imam widiyantoro', 'Kurniasih', 'SMP NEGERI 1 CIMANGGU', NULL, 'storage/akta/ojaB0ohu965RJAG733gUEL3rvkPibbnRjY8uDKkp.jpg', 'storage/kk/PG6W1BMzi98zjFOw4fwmV4VCPFiXTO0vCJuljvoY.jpg', NULL, NULL, 'qr_code/REG-00137.svg', '2025-11-01 05:23:18', '2025-11-01 08:10:38'),
(138, 'REG-00138', 9704281, 69, 'MUFIDAH ANGGIT LUSIANA', '3301124085100003', 'Teknik Komputer dan Jaringan', 'P', 'Cilacap', '2010-05-08', '6281285169694', 'Cukangawi RT 05 RW  03', 'Islam', 'Tayem Timur', 'Karangpucung', 'Cilacap', 'Jawatengah', 3301122306080072, 'Samikun', 'Supriani', 'SMP NEGERI 1 KARANGPUCUNG', 'storage/foto/hwsebnPPra5Ou2HXgyIUiqRpdAg2Zm5H4mznU7u4.jpg', 'storage/akta/knhzpfLpsBTMQa5ybcjDNeUfAbtu2ePENIKDxnJc.jpg', 'storage/kk/NSz7IEsguUTvQhxLD40bpCFhPypIIIuzV53NrYjF.jpg', NULL, NULL, 'qr_code/REG-00138.svg', '2025-11-01 10:42:17', '2025-11-02 10:41:33'),
(139, 'REG-00139', 9704282, 69, 'Mufidah Anggit Lusiana', '3301124805100003', 'Teknik Komputer dan Jaringan', 'P', 'Cilacap', '2010-05-08', '6281285169694', 'Cukangawi RT 05 RW 03', 'Islam', 'Tayem Timur', 'Karangpucung', 'Cilacap', 'Jawatengah', 3301122306080072, 'Samikun', 'Supriani', 'SMP NEGERI 1 KARANGPUCUNG', 'storage/foto/Cwn1Y2iagswqjRZ9sH4XS4IUemwr6rnhW2yk6oco.jpg', 'storage/akta/HGi6aJhvCUImsSZ7lWI61VCZ4Upk9EoKbeMppRe3.jpg', 'storage/kk/ZLuRabN9ETdUaMLKZ8vRXN8FYzaf6MV9z6Aeecmf.jpg', NULL, NULL, 'qr_code/REG-00139.svg', '2025-11-01 10:50:41', '2025-11-02 10:41:53'),
(140, 'REG-00140', 9704283, 34, 'fikri akmal fauzan', '3301201712100001', 'Belum Memilih', 'L', 'Cilacap', '2010-12-17', '6282220412262', 'Dusun Sidamukti RT 03/02', 'Islam', 'Kedungwadas', 'Bantarsari', 'Cilacap', 'Jawa tengah', 3301202012100009, 'Caslam', 'Wanti', 'SMP Negeri 1 Satap Bantarsari', NULL, 'storage/akta/HJEJCoXenHw4IRRpGUxZhzQjts8SGfoGJM9zf3Pj.jpg', 'storage/kk/CNLWX8RjfCx4pQMpkBefokeoVWuH0iNvGRY4NnFn.jpg', NULL, NULL, 'qr_code/REG-00140.svg', '2025-11-01 12:42:00', '2025-11-02 10:41:06'),
(141, 'REG-00141', 9704284, 87, 'Dzakiy Dwi Syahdan', '3301131106100001', 'Belum Memilih', 'L', 'Cilacap', '2010-06-11', '6289630453205', 'Cibungur 01/05, Mandala Cimanggu', 'Islam', 'Mandala', 'Cimanggu', 'Cilacap', 'Jawa Tengah', 3301131106100001, 'Sahri', 'Sri Rahayu', 'SMP RADEN FATAH CIMANGGU', NULL, 'storage/akta/a24xDg5IvFR85gFdccPEvUqVxV7tW4swrPX0YZbh.jpg', 'storage/kk/ibX9nnGDB4K77heZck32GXgt4g85pkZb3ae0ukb9.jpg', NULL, NULL, 'qr_code/REG-00141.svg', '2025-11-02 09:27:49', '2025-11-02 10:40:42'),
(142, 'REG-00142', 9704285, 87, 'Rizky Lutfindra Nugraha', '3301132312110006', 'Belum Memilih', 'L', 'Cilacap', '2011-12-23', '62882005352561', 'Cibungur 02/05, Mandala Cimanggu', 'Islam', 'Mandala', 'Cimanggu', 'Cilacap', 'Jawa Tengah', 3301131303120006, 'Narsito', 'Itoh', 'SMP RADEN FATAH CIMANGGU', NULL, 'storage/akta/lQ4flYD9CTcrD87GBSf2xVBv9z4ocoSPxXtl9xO3.jpg', 'storage/kk/CHAbbBraPq9e5jO8h1TqtNrchTNgvaneWM3lXQaz.jpg', NULL, NULL, 'qr_code/REG-00142.svg', '2025-11-02 09:35:08', '2025-11-02 10:42:23'),
(143, 'REG-00143', 9704286, 87, 'Weni Dwi Lestari', '3301136307110001', 'Belum Memilih', 'P', 'Cilacap', '2011-07-23', '6289602864352', 'Cibungur 01/05, Mandala Cimanggu', 'Islam', 'Mandala', 'Cimanggu', 'Cilacap', 'Jawa Tengah', 3301136307110001, 'Wastar', 'Juliyah', 'SMP RADEN FATAH CIMANGGU', NULL, 'storage/akta/uwd3Yf1pPfGZc6tLWTyVj2ldiPJGcsQAWvuYaMk9.jpg', 'storage/kk/r8XBialjLssTHUuqwtWYFqiwsYWsrAZAiqkoBUEm.jpg', NULL, NULL, 'qr_code/REG-00143.svg', '2025-11-02 09:38:23', '2025-11-02 10:42:45'),
(144, 'REG-00144', 9704287, 73, 'Ihwan Revi Agustian', '3301120408100003', 'Teknik Sepeda Motor', 'L', 'Cilacap', '2010-08-04', '6289676560949', 'Dusun Ciporos Rt03 Rw04', 'Islam', 'Ciporos', 'Karangpucung', 'Cilacap', 'Jawa Tengah', 3301120508080055, 'Karsito', 'Sugiati', 'SMP NEGERI 2 KARANGPUCUNG', NULL, 'storage/akta/iUZkpBRIgYSyfGe4DWqSVBvyj3wkjpoWcMlaItVC.jpg', 'storage/kk/CgyBgYYlKeST1FVMVdcnH8BfOSeJpTAljSzIwnoE.jpg', NULL, NULL, 'qr_code/REG-00144.svg', '2025-11-02 11:34:49', '2025-11-03 11:46:24'),
(145, 'REG-00145', 9704288, 58, 'Alea Letisha Agustin', '3301126508110001', 'Akuntansi', 'P', 'Cilacap', '2011-08-25', '6283112932255', 'Karangtawang 04/06, Karanggintung Gandrungmangu', 'Islam', 'Karanggintung', 'Gandrungmangu', 'Cilacap', 'Jawa Tengah', 3301101707170002, 'Solatin', 'Ida Ningsih', 'SMP NEGERI 1 KARANGPUCUNG', NULL, 'storage/akta/MHhT1xyWkQX4r7e6Bbz63MUiMKDay1lpSyfv02qT.jpg', 'storage/kk/WJNISeUjpjLNVpTNgsv3ciaZyosEiL5lxqzgp8D0.jpg', NULL, NULL, 'qr_code/REG-00145.svg', '2025-11-02 12:17:05', '2025-11-03 11:45:10'),
(146, 'REG-00146', 9704289, 73, 'Khusnul khotimah', '3301124412110001', 'Belum Memilih', 'P', 'cilacap', '2011-06-04', '6285747778739', 'ciporos', 'islam', 'ciporos', 'Karangpucung', 'cilacap', 'Jawa Tengah', 3301121303240006, 'warimin', 'yuliyanti', 'SMP NEGERI 2 KARANGPUCUNG', NULL, 'storage/akta/0ve6PyUlgP4Io9KtPhDYsOuryKbS2ZaKU3tyJynU.jpg', 'storage/kk/1ce4h18vffo1SQ0JAXdyxSdyAuNSHwCrLsU07ScN.jpg', NULL, NULL, 'qr_code/REG-00146.svg', '2025-11-02 12:37:25', '2025-11-03 11:48:24'),
(147, 'REG-00147', 9704290, 73, 'Siti hapsoh', '3301124511080001', 'Belum Memilih', 'P', 'cilacap', '2008-11-05', '628889264074', 'ciporos', 'islam', 'ciporos', 'Karangpucung', 'cilacap', 'Jawa Tengah', 3301121407080001, 'karman', 'nining', 'SMP RADEN FATAH CIMANGGU', NULL, 'storage/akta/gPcx4t8W0iHIdt4BaGYQy6vnGlwkN1IhXSNMijsy.jpg', 'storage/kk/FWly0vWde1zPcGTghOb2S9KxJ7DG2W61or4kytBo.jpg', NULL, NULL, 'qr_code/REG-00147.svg', '2025-11-02 12:41:48', '2025-11-03 11:52:04'),
(148, 'REG-00148', 9704291, 42, 'Diana Oktavia', '3301126410100001', 'Pemasaran', 'P', 'Cilacap', '2010-10-24', '6283876348275', 'Dusun Cijoho RT 04 / RW 02', 'Islam', 'Tayem', 'Karangpucung', 'Cilacap', 'Jawa Tengah', 3301122912090003, 'Nurjaya Sondar', 'Wahyuningsih', 'SMP NEGERI 2 KARANGPUCUNG', NULL, 'storage/akta/oQz7pZriQUK0btwtuIpNprNFkJYEGQXXca3BjnKu.jpg', 'storage/kk/hIFYkeNbb0SshbMx9yc6IyX6xGeTLnBKwctcQ9RN.jpg', NULL, NULL, 'qr_code/REG-00148.svg', '2025-11-02 12:57:43', '2025-11-03 11:45:46'),
(149, 'REG-00149', 9704292, 42, 'Reyiva Syafara', '3301124404110001', 'Akuntansi', 'P', 'Cilacap', '2011-04-04', '6285797117884', 'Dusun Binangun RT 02 / RW 03', 'Islam', 'Tayem', 'Karangpucung', 'Cilacap', 'Jawa Tengah', 3301122607110004, 'Sutrisno', 'Saripah', 'SMP NEGERI 2 KARANGPUCUNG', NULL, 'storage/akta/XjfXj60CckcZnUWTtwarMF9qElksKqAnExKbkmys.jpg', 'storage/kk/yofm6uBmIQM3DREnk2lz083FRLcEJWOQ3S7hg0MC.jpg', NULL, NULL, 'qr_code/REG-00149.svg', '2025-11-02 13:03:42', '2025-11-03 11:50:34'),
(150, 'REG-00150', 9704293, 42, 'Adam Malik Abdulah', '3301122407110001', 'Teknik Kendaraan Ringan', 'L', 'Cilacap', '2011-07-24', '6285829149225', 'Dusun Binangun RT 02 / RW 03', 'Islam', 'Tayem', 'Karangpucung', 'Cilacap', 'Jawa Tengah', 3301120812110005, 'Abdulah', 'Amyati', 'SMP NEGERI 2 KARANGPUCUNG', NULL, 'storage/akta/0i1CIes6zPXKKN5Oe2bphNMAgdXblCZZxKrFYUQd.jpg', 'storage/kk/wNBVaaDunr2jqb6966ibQRErkO4s7qwDL2jm1c9F.jpg', NULL, NULL, 'qr_code/REG-00150.svg', '2025-11-02 13:08:19', '2025-11-03 11:41:50'),
(151, 'REG-00151', 9704294, 42, 'Akhmal Rahma Putra', '3175072411101010', 'Teknik Sepeda Motor', 'L', 'Cilacap', '2010-11-24', '6285718672472', 'Dusun Binangun RT 02 / RW 03', 'Islam', 'Tayem', 'Karangpucung', 'Cilacap', 'Jawa Tengah', 3301121001230006, 'Gusrianto', 'Rohani', 'SMP NEGERI 2 KARANGPUCUNG', NULL, 'storage/akta/m8rxT5KtgpvFbyaZLZu6xdGmylJcvYYVnqh5h6yc.jpg', 'storage/kk/YA3FqLIXycVmKntLdf5TEfG9qKajiWrzBQ2k4U5k.jpg', NULL, NULL, 'qr_code/REG-00151.svg', '2025-11-02 13:17:39', '2025-11-03 11:44:12'),
(152, 'REG-00152', 9704295, 56, 'Rizki Mulyana', '3301120604100001', 'Teknik Komputer dan Jaringan', 'L', 'Cilacap', '2010-04-06', '6283863700929', 'Dusun Cijoho RT 04 / RW 02', 'Islam', 'Tayem', 'Karangpucung', 'Cilacap', 'Jawa Tengah', 3301120906080014, 'Tarsono Suharno', 'Karsiwen', 'SMP NEGERI 2 KARANGPUCUNG', NULL, 'storage/akta/BbspIwn7cOqsGUTGjL4M6fmBCF0sA35AaxlRYagG.jpg', 'storage/kk/K7XKPrh1AqnPcYBoSE03xJGMNykDUaSvylK7mWhE.jpg', NULL, NULL, 'qr_code/REG-00152.svg', '2025-11-02 13:25:40', '2025-11-03 11:51:09'),
(153, 'REG-00153', 9704296, 74, 'Iswatun Hasanah', '3301126912090002', 'Teknik Komputer dan Jaringan', 'P', 'Cilacap', '2009-12-29', '6285293035655', 'Dusun Pekuncen RT.05 RW.03', 'Islam', 'Bengbulang', 'Karangpucung', 'Cilacap', 'Jawa tengah', 3301120901057416, 'Rohman', 'Sukini', 'SMP NEGERI 2 KARANGPUCUNG', NULL, 'storage/akta/uQFzDnON1a1PtqsxmYPW4RjMAEH9vckS1gydiz8u.jpg', 'storage/kk/vdSu8SglPwT7tnDhx3ekrZDlDA69bNilnof2OrBi.jpg', NULL, NULL, 'qr_code/REG-00153.svg', '2025-11-03 01:23:17', '2025-11-03 11:48:01'),
(154, 'REG-00154', 9704297, 58, 'Khoerun Nisa Ihza Azanah', '3301125603110001', 'Akuntansi', 'P', 'Cilacap', '2011-03-16', '6283874360437', 'Dusun Pesanggrahan, RT 01 RW 06', 'Islam', 'Ciporos', 'Karangpucung', 'Cilacap', 'Jawa Tengah', 3301121411110003, 'Turijan Andriyanto', 'Hartati', 'SMP NEGERI 1 CIMANGGU', NULL, 'storage/akta/HIR5FIUza6WwwaA0ilvlMBcAhV0p9G6ENQcZN2Qq.jpg', 'storage/kk/soGtwItitpJLWaocjazkhH3P8HC3ivoT0YL4ml1j.jpg', NULL, NULL, 'qr_code/REG-00154.svg', '2025-11-03 12:26:08', '2025-11-04 04:40:59'),
(155, 'REG-00155', 9704298, NULL, 'Aril', '3301106704090004', 'Belum Memilih', 'L', 'Cilacap', '2009-04-27', '6285624381206', 'Rungkang RT 05/02', 'Islam', 'Rungkang', 'Gandrungmangu', 'Cilacap', 'JAWA TENGAH', 3301101501050722, 'Karyidi', 'Dasmi', 'MTSN 2 CILACAP', NULL, 'storage/akta/qkJyIQU7JxJBlfUmfEKzQvcSxcpsvwtEfxxEerGc.jpg', 'storage/kk/g9uapX2DxZG1baZg7pukfisa0JngPDIuodxWq9VM.jpg', NULL, NULL, 'qr_code/REG-00155.svg', '2025-11-03 13:36:43', '2025-11-04 04:40:16'),
(156, 'REG-00156', 9704299, 54, 'Velli Dewi Okta Viani', '3301106501110002', 'Belum Memilih', 'P', 'Cilacap', '2011-01-26', '6281347863323', 'Margasari 3/2', 'Islam', 'Rungkang', 'Gandrungmangu', 'Cilacap', 'Jawa tengah', 3301101501050862, 'Nartim', 'Wastiyah', 'SMP NEGERI 3 SIDAREJA', NULL, 'storage/akta/krQh2j1OPjvVygmzUSfFMrnkODGFd65wI7p422Tw.jpg', 'storage/kk/Qjg5Zr2sVQsSD61EBhNC0o78LYWri2wjORQccSvc.jpg', NULL, NULL, 'qr_code/REG-00156.svg', '2025-11-03 13:39:52', '2025-11-04 04:41:53'),
(157, 'REG-00157', 9704300, 43, 'Inka Nur Fajrin', '3301136703100001', 'Pemasaran', 'P', 'Cilacap', '2010-03-27', '6289676375900', 'Genteng Kulon Rt02 Rw07', 'Islam', 'Panimbang', 'Cimanggu', 'Cilacap', 'Jawa Tengah', 3301131205070005, 'Taryono', 'Yanti Susanti', 'SMP RADEN FATAH CIMANGGU', NULL, 'storage/akta/O4o1DJTHc4PFBVo6rGU80LldOlwrQ11x5I43jTEJ.jpg', 'storage/kk/GX6xFJRkrP7oYzNlFtpCgNdjlIT7fdKCUZ6fP7xH.jpg', NULL, NULL, 'qr_code/REG-00157.svg', '2025-11-03 14:05:11', '2025-11-04 04:40:34'),
(158, 'REG-00158', 9704301, 43, 'Reva Meila Putri', '3301136405100001', 'Pemasaran', 'P', 'Cilacap', '2010-05-24', '6283193556844', 'Genteng Kulon RT1 RW8', 'Islam', 'Panimbang', 'Cimanggu', 'Cilacap', 'Jawa Tengah', 3301132506100006, 'Maryono', 'Mu\'minah', 'SMP RADEN FATAH CIMANGGU', NULL, 'storage/akta/qM5wreR1JRiJQYzl4ykL2O0abjxuaOmnJvqbwnKD.jpg', 'storage/kk/mrowvK4HGtWSNa80fNIGyMsVPLdgfFOg1J2JQ9o7.jpg', NULL, NULL, 'qr_code/REG-00158.svg', '2025-11-04 08:48:42', '2025-11-04 11:16:08'),
(159, 'REG-00159', 9704302, 23, 'ADELIA RIZKY NUR FADILAH', '3301125902110002', 'Akuntansi', 'P', 'CILACAP', '2011-02-19', '62882003974328', 'KARANGPUCUNG', 'ISLAM', 'KARANGPUCUNG', 'KARANGPUCUNG', 'CILACAP', 'JAWA TENGAH', 3301120706080027, 'SUKIRIN', 'ENDANG SUPRIYATIN', 'SMP NEGERI 1 KARANGPUCUNG', NULL, 'storage/akta/0Wnz6rsj09yNnVo1Ll4jajCsDXtriJyB65iURn39.jpg', 'storage/kk/eeTk79EYabWwRf0tSoTlDmUYp22UMfxcbhXxbRSD.jpg', NULL, NULL, 'qr_code/REG-00159.svg', '2025-11-04 14:14:18', '2025-11-04 15:22:48'),
(161, 'REG-00161', 9704304, 55, 'Prima Galuh Mahendra', '3301201905090003', 'Teknik Kendaraan Ringan', 'L', 'Cilacap', '2009-05-19', '6285290375963', 'Dusun Gunungsari', 'Islam', 'Kedungwadas', 'Bantarsari', 'Cilacap', 'Jawa Tengah', 3301200804100001, 'Ansori Hendro margono', 'Daryuwati', 'SMP Negeri 1 Satap Bantarsari', NULL, 'storage/akta/BO32ZZxnEao9Y9wCa3Uxm9BCeUUDzmIbeMFCVKs2.jpg', 'storage/kk/4n46tOY3TBlRZ9W7SNLVGVHVjkBHlaNzbYcWEGxU.jpg', NULL, NULL, 'qr_code/REG-00161.svg', '2025-11-04 14:31:49', '2025-11-04 15:26:05'),
(162, 'REG-00162', 9704305, 55, 'Alva Abrar', '3301122310110001', 'Teknik Komputer dan Jaringan', 'L', 'Cilacap', '2011-10-23', '6285878446689', 'RT 01 RW 06 Karangpucung', 'Islam', 'Karangpucung', 'Karangpucung', 'Kabupaten Cilacap', 'Jawa Tengah', 3301122104090036, 'Krisno', 'Yayu Riyanti', 'SMP NEGERI 1 KARANGPUCUNG', NULL, 'storage/akta/bP4UP93AJNBUoejx9bxI02cPaHISbgWlpoaPiOBZ.jpg', 'storage/kk/avo6wpTqIBRa9kUYTWcBpQ420Q9nZ6YEMt6pth90.jpg', NULL, NULL, 'qr_code/REG-00162.svg', '2025-11-04 14:44:36', '2025-11-04 15:24:16'),
(163, 'REG-00163', 9704306, 55, 'AUFA ROFIF AMRULLOH', '3301100901110001', 'Belum Memilih', 'L', 'Cilacap', '2011-01-09', '6281325319257', 'CINANGSI RT 03 / RW 04 GANDRUNGMANGU CILACAP', 'Islam', 'Cinangsi', 'Gandrungmangu', 'Cilacap', 'Jawa Tengah', 3301101401059861, 'Suripto', 'Tri Mulyani S.Pd.', 'SMP NEGERI 1 KARANGPUCUNG', NULL, 'storage/akta/RXZVWTODfobiW3FIqpk7fXmPAggCYcj92F2nPcml.jpg', 'storage/kk/fvQhcjMnoDFef5FuYjyXJoPgoV62NrXIC8hDz8J8.jpg', NULL, NULL, 'qr_code/REG-00163.svg', '2025-11-04 15:00:14', '2025-11-04 15:24:46'),
(164, 'REG-00164', 9704307, 42, 'Naufal Mirza Nugraha', '3301120709100002', 'Teknik Sepeda Motor', 'L', 'Cilacap', '2010-09-07', '6285713410781', 'Dusun Binangun RT 03 / RW 03', 'Islam', 'Tayem', 'Karangpucung', 'Cilacap', 'Jawa Tengah', 3301120811120002, 'Karmo', 'Somyati', 'SMP NEGERI 2 KARANGPUCUNG', NULL, 'storage/akta/xjnHn1j2shGMwtqd4s2PqvOheSKFDleSIuqU49Ke.jpg', 'storage/kk/LgWb4JKg8xn5tiddASchQqLoo3SlYsPzcUL5ixOR.jpg', NULL, NULL, 'qr_code/REG-00164.svg', '2025-11-04 15:10:34', '2025-11-04 15:25:35'),
(165, 'REG-00165', 9704308, 42, 'Muhammad Ramdan', '3301122008100003', 'Teknik Sepeda Motor', 'L', 'Cilacap', '2010-08-20', '6282134817515', 'Dusun Binangun RT 03 / RW 03', 'Islam', 'Tayem', 'Karangpucung', 'Cilacap', 'Jawa Tengah', 3301120211110003, 'Wahyono', 'Elisa', 'SMP NEGERI 2 KARANGPUCUNG', NULL, 'storage/akta/IfZaE9ZLuydcIdQhG5S9ZbG3pAD3CK0NprS8lUG0.jpg', 'storage/kk/psE52VrqrcD8Wwn6ApO0kwN2sxwHcnD0ZmjRsFb0.jpg', NULL, NULL, 'qr_code/REG-00165.svg', '2025-11-04 15:15:01', '2025-11-04 15:25:13'),
(166, 'REG-00166', 9704309, 42, 'Zaidan Nafis Maulana', '3301122907110003', 'Teknik Sepeda Motor', 'L', 'Cilacap', '2011-07-29', '6282241021557', 'Dusun Binangun RT 01 / RW 03', 'Islam', 'Tayem', 'Karangpucung', 'Cilacap', 'Jawa Tengah', 3301120511070001, 'Supriyono', 'Kusmini Ayuningtias', 'SMP NEGERI 2 KARANGPUCUNG', NULL, 'storage/akta/30ihBPKItzQOCFuPZKwRUyiP0AWzqOLALUglYmfX.jpg', 'storage/kk/YTJgBlmrzITTA9yS4Zzy6qDCReMM5Gzlzc52dBY2.jpg', NULL, NULL, 'qr_code/REG-00166.svg', '2025-11-04 15:20:54', '2025-11-04 15:26:27'),
(167, 'REG-00167', 9704310, 42, 'Laila Septianingsih', '3301124409100001', 'Pemasaran', 'P', 'Cilacap', '2010-09-04', '6285829149190', 'Dusun Binangun RT 03 / RW 03', 'Islam', 'Tayem', 'Karangpucung', 'Cilacap', 'Jawa Tengah', 3301121110080022, 'Sunan Heriyanto', 'Waryuti', 'SMP NEGERI 2 KARANGPUCUNG', NULL, 'storage/akta/GWnb8cdPWcgvqGLeM0wU5kKgnNosbUtteormraX3.jpg', 'storage/kk/2JgLzXoZb5NuMH6kF1YtTYhh4DAZkT93b6b4EM8r.jpg', NULL, NULL, 'qr_code/REG-00167.svg', '2025-11-04 15:26:09', '2025-11-04 22:37:34'),
(168, 'REG-00168', 9704311, 55, 'Dissya Khanaya Syafira', '3301125909110001', 'Akuntansi', 'P', 'Cilacap', '2011-09-19', '62882008119529', 'Dusun Ceger RT 02 RW 02', 'Islam', 'Tayem Timur', 'Karangpucung', 'Cilacap', 'Jawa Tengah', 3301122707120001, 'Wahyu Puji Laksono', 'Mualifah', 'SMP NEGERI 1 KARANGPUCUNG', NULL, 'storage/akta/Tyd79XuBWvOmd2omQbTs35Y040zgmayFnXrYtCd8.jpg', 'storage/kk/kPFlI6QgE9yXo2EWWBMCXBJW8x4CVbL76AWrErVO.jpg', NULL, NULL, 'qr_code/REG-00168.svg', '2025-11-04 17:07:39', '2025-11-04 22:37:27'),
(170, 'REG-00170', 9704313, 44, 'Wida Nur Hasanah', '3301126206100002', 'Belum Memilih', 'P', 'Cilacap', '2010-06-22', '6285325349665', 'Dusun Kawungcarang Desa Pangawaren', 'Islam', 'Pangawaren', 'Karangpucung', 'Cilacap', 'Jawa Tengah', 3301120203090004, 'Wasno', 'Wariyah', 'MTs NURUL HUDA KARANGPUCUNG', NULL, 'storage/akta/1S71SnkEUYhckkTJftbfOnPhDse96XD26jZVmxKG.jpg', 'storage/kk/shnmUHA7cdvpN0fwqcEWcvwHdPc3gtvuAtGR4drJ.jpg', NULL, NULL, 'qr_code/REG-00170.svg', '2025-11-05 10:05:37', '2025-11-05 10:23:21'),
(171, 'REG-00171', 9704314, 54, 'YOSI WIDIYANTI', '3301135012110004', 'Akuntansi', 'P', 'Cilacap', '2011-12-10', '6288224461363', 'Genteng Wetan RT 01  RW  05', 'Islam', 'Panimbang', 'Cimanggu', 'Cilacap', 'Jawa tengah', 3301130510120001, 'Saeful Carsito', 'Romilah', 'SMP RADEN FATAH CIMANGGU', NULL, 'storage/akta/ykvXoSomjl4dziR4pVgoYMyzEt53YY2PPSaCDyBO.jpg', 'storage/kk/wopWU7eRtOwNkCuIgNUp8QuKGmBJTGQUiBFbnjwl.jpg', NULL, NULL, 'qr_code/REG-00171.svg', '2025-11-05 11:37:42', '2025-11-05 11:39:35'),
(172, 'REG-00172', 9704315, 74, 'Reighan Muges Hutama', '3301130703110001', 'Teknik Sepeda Motor', 'L', 'Cilacap', '2011-03-07', '6288902823287', 'Bantar panjang RT.01 RW.05', 'Islam', 'Bantarpanjang', 'Cimanggu', 'Cilacap', 'Jawa tengah', 3301131304110003, 'Mugi Prihantoro', 'Gestiana Vanhoten', 'SMP RADEN FATAH CIMANGGU', NULL, 'storage/akta/os3UnGF0qcgGrrtaYN9ugT9BHrMDYuteoG14wdGc.jpg', 'storage/kk/0fNUr7XmEPjBg5BZUytWAckSJqA111xIW6HOAI8g.jpg', NULL, NULL, 'qr_code/REG-00172.svg', '2025-11-05 11:42:59', '2025-11-06 00:00:37'),
(173, 'REG-00173', 9704316, 34, 'Asnatul husnah', '3301120411110003', 'Belum Memilih', 'P', 'Cilacap', '2011-11-24', '6285183710611', 'Dusun pangawaren rt 01/01', 'Islam', 'Pangawaren', 'Karangpucung', 'Cilacap', 'Jawa tengah', 3301120503120006, 'Holimin', 'Siti rohayati', 'MTs NURUL HUDA KARANGPUCUNG', NULL, 'storage/akta/NXPjVqoCtUVYymDcLXwQg12MvCAwAcp5mWm5lLw1.jpg', 'storage/kk/PnCwI3Zgfu6BfqsiudcpQNyLej73iyMzSZPawejy.jpg', NULL, NULL, 'qr_code/REG-00173.svg', '2025-11-05 12:58:07', '2025-11-05 23:58:51'),
(174, 'REG-00174', 9704317, 44, 'Dina nurul salamah', '3301125302110001', 'Akuntansi', 'P', 'Cilacap', '2011-02-13', '6285183710611', 'Cidadap rt 05/05', 'Islam', 'Desa cidadap', 'Karangpucung', 'Cilacap', 'Jawa tengah', 3301122005110007, 'Usan saeful anwar', 'Dewi sulasih', 'MTs NURUL HUDA KARANGPUCUNG', NULL, 'storage/akta/DjtOetyEq3pke7CmKwBqZhfjQPIZ62ggcmgDe6wS.jpg', 'storage/kk/8OzxmNtbOcVVIHVyOZ3kyfMIn3FO05RDTWiVvY5K.jpg', NULL, NULL, 'qr_code/REG-00174.svg', '2025-11-05 21:41:08', '2025-11-05 23:59:19'),
(175, 'REG-00175', 9704318, 34, 'Hesya okta viana', '3301125810110004', 'Belum Memilih', 'P', 'Cilacap', '2011-10-16', '6285183710611', 'Pangawaren rt 02/04', 'Islam', 'Pangawaren', 'Karangpucung', 'Cilacap', 'Jawa tengah', 3301120810250002, 'Narsono', 'Karyati', 'MTs NURUL HUDA KARANGPUCUNG', NULL, 'storage/akta/47Y9KtQKW4KCzUhIB26CoZMJCo5QIjlyk0xIjkVP.jpg', 'storage/kk/tdBA4hGCkYGY3wAA6khmpgiu8HBG89XlvWLdvuKp.jpg', NULL, NULL, 'qr_code/REG-00175.svg', '2025-11-05 21:47:49', '2025-11-06 00:00:11'),
(176, 'REG-00176', 9704319, 80, 'fazza janati al fafa', '3301126210100001', 'Belum Memilih', 'P', 'CILACAP', '2010-10-22', '6282134119338', 'banjarwaru rt 03 rw 11', 'islam', 'sindangbarang', 'karangpucung', 'cilacap', 'jawa tengah', 3301121311100004, 'dyan prasetyo', 'rusyanti', 'SMP NEGERI 1 KARANGPUCUNG', NULL, 'storage/akta/0jmHHGPbAZQbevWhRFxrtpQY4EsctyZx38FY7Dof.jpg', 'storage/kk/zYXNgKVINAdzehfZaVWFbZcU7NcuGRKnLWa8I5RX.jpg', NULL, NULL, 'qr_code/REG-00176.svg', '2025-11-06 01:37:17', '2025-11-06 01:37:51'),
(177, 'REG-00177', 9704320, 50, 'Rasti Jenia Putri', '3301124606100001', 'Pemasaran', 'P', 'Cilacap', '2010-06-06', '6288980196589', 'Dusun Surian,rt2 rw10', 'Islam', 'Karangpucung', 'Karangpucung', 'Cilacap', 'Jawa Tengah', 3301121406190006, 'Rastum', 'Iyut Ariyani', 'SMP NEGERI 1 KARANGPUCUNG', NULL, 'storage/akta/3gpPoLXE8H0vLe41MmHahUYkPb0MeTLtLJkEz98e.jpg', 'storage/kk/AlBvsOEqUl5nhOcI2kCXOgdreNsRCufWFSe6GwLk.jpg', NULL, NULL, 'qr_code/REG-00177.svg', '2025-11-06 03:43:51', '2025-11-06 04:04:35'),
(178, 'REG-00178', 9704321, 77, 'YUYUD MAHMUD', '3301122103110003', 'Teknik Sepeda Motor', 'L', 'Cilacap', '2011-03-21', '6285642143826', 'Dusun Pengasinan RT 005 RW 002', 'Islam', 'Ciruyung', 'Karangpucung', 'Cilacap', 'Jawa Tengah', 3301122712110001, 'Dahirin', 'Suci Saefuwanti', 'MTs AL HIDAYAH KARANGPUCUNG', NULL, 'storage/akta/9DsMXgN47mzmiOVrubJRlLX19Zn9x03oEjTSTjnW.jpg', 'storage/kk/7i1Xmr4au96UjS1gLKQbxnwt4NF9v8uVBdTtIwdu.jpg', NULL, NULL, 'qr_code/REG-00178.svg', '2025-11-06 12:49:02', '2025-11-06 14:44:53'),
(179, 'REG-00179', 9704322, 44, 'William Anthony Albert', '3301201602100003', 'Teknik Sepeda Motor', 'L', 'Cilacap', '2010-02-16', '6285133737836', 'Dusun Sidamukti Rt03/02', 'Islam', 'Kedungwadas', 'Bantarsari', 'Cilacap', 'Jawa Tengah', 3301201112130001, 'Warjo', 'Siti aminah', 'SMP Negeri 1 Satap Bantarsari', NULL, 'storage/akta/hlcJ0OnqUX7bJPWH3qgKK6lIovL03EM5ALtzsPVM.jpg', 'storage/kk/5TtGgImJcpX5bzHKTbHBY5kOtzMftxxfAwKau37J.jpg', NULL, NULL, 'qr_code/REG-00179.svg', '2025-11-06 14:43:19', '2025-11-06 14:44:19'),
(180, 'REG-00180', 9704323, 83, 'Sintya Bella', '3301124208100001', 'Belum Memilih', 'P', 'CILACAP', '2010-08-02', '6285925158182', 'Dusun pangawaren Rt 01/03', 'Islam', 'Pangawaren', 'Karang pucung', 'Cilacap', 'Jawa Tengah', 3301122309080013, 'Rasiman', 'Kamiyem', 'MTs NURUL HUDA KARANGPUCUNG', NULL, 'storage/akta/NxCAKABgvOkLBIDRnCUyHEOWPvWJcar94DeCAPKJ.jpg', 'storage/kk/2dmiJCqjiikfUCbFkTaauKDtDp09Aceg3EJdRf30.jpg', NULL, NULL, 'qr_code/REG-00180.svg', '2025-11-07 08:00:40', '2025-11-07 08:02:26'),
(181, 'REG-00181', 9704324, 51, 'ASYRAF DZAKWAN MUFLIN', '3301132504110005', 'Teknik Kendaraan Ringan', 'L', 'Cilacap', '2011-04-25', '6282220883567', 'Bantarpanjang', 'ISLAM', 'Bantarpanjang', 'Cimanggu', 'Cilacap', 'Jawa Tengah', 3301131211190008, 'Cahyo', 'Sisa alimah', 'SMP RADEN FATAH CIMANGGU', NULL, 'storage/akta/LdVmNUKOPpTC5y0g4LFCBLB1nHPLfP037XHERj2l.jpg', 'storage/kk/SOkVjajcEJRx3EAgXP38bMKXRPBCvK7OWg1wClFl.jpg', NULL, NULL, 'qr_code/REG-00181.svg', '2025-11-07 08:05:29', '2025-11-07 22:29:41'),
(182, 'REG-00182', 9704325, 83, 'Adam putra ramadhan  alkhafini', '3301120508110002', 'Belum Memilih', 'L', 'CILACAP', '2011-08-05', '6285183710611', 'Dusun ciraja Rt02/11', 'Islam', 'Ciporos', 'Karang pucung', 'Cilacap', 'Jawa Tengah', 3301122507070002, 'Eri jaeri', 'Munifah', 'MTs NURUL HUDA KARANGPUCUNG', NULL, 'storage/akta/4Y23UHGzgUMfev3zmJ3yGS3DJSNGaqG6Lm81hazm.jpg', 'storage/kk/D5LFDdFouVOsg00VueILj6syqjpuQuEb62lxis9u.jpg', NULL, NULL, 'qr_code/REG-00182.svg', '2025-11-07 08:20:00', '2025-11-07 22:28:48'),
(183, 'REG-00183', 9704326, 83, 'Lusi aprilia dewi', '3325064104110001', 'Belum Memilih', 'P', 'BATANG', '2011-04-01', '6285183710661', 'Dusun pesanggrahan Rt 04/08', 'Islam', 'Ciporos', 'Karang pucung', 'Cilacap', 'Jawa Tengah', 3301122507220003, 'Mutolip', 'Asnah', 'MTs NURUL HUDA KARANGPUCUNG', NULL, 'storage/akta/Zo9VoFgKYS880KvOqgCBzeMRqyOQMeQqYBRUkFlI.jpg', 'storage/kk/HRJ5GrModEniwkIRyzpQvwRd3DHCSt2pbtQSDYFY.jpg', NULL, NULL, 'qr_code/REG-00183.svg', '2025-11-07 08:28:03', '2025-11-07 22:30:41'),
(184, 'REG-00184', 9704327, 83, 'Davit alvino', '3301121203110002', 'Belum Memilih', 'L', 'CILACAP', '2011-03-12', '6285183710611', 'Pangawaren Rt 02/01', 'Islam', 'Pangawaren', 'Karang pucung', 'Cilacap', 'Jawa Tengah', 3301121203110002, 'Aryanto', 'Selvia nofelin', 'MTs NURUL HUDA KARANGPUCUNG', NULL, 'storage/akta/aepp8ZuBTphnfFBK2Tm75jxydDBM1hzPZZ2DTn8m.jpg', 'storage/kk/F9ooe4ZeslW9mIh6UiaCtld28F5a4FzOFVXv6Hst.jpg', NULL, NULL, 'qr_code/REG-00184.svg', '2025-11-07 08:38:06', '2025-11-07 22:29:53'),
(185, 'REG-00185', 9704328, 49, 'Sidiq Al-hafid', '3301123105110003', 'Teknik Kendaraan Ringan', 'L', 'Cilacap', '2011-05-31', '6283862452180', 'Cijoho', 'Islam', 'Tayem', 'Karangpucung', 'Cilacap', 'Jawa Tengah', 3301122103090044, 'Mudiriyanto', 'Kisem', 'SMP NEGERI 2 KARANGPUCUNG', NULL, 'storage/akta/vvRzFYehWeFD55rqoTXQ085KOm6ve6nGVi7jMDFI.jpg', 'storage/kk/CM33TZggSuKG9aKVFOEgOM4jo8HNbMo1Ohw7zGiG.jpg', NULL, NULL, 'qr_code/REG-00185.svg', '2025-11-07 08:44:21', '2025-11-07 22:29:08'),
(186, 'REG-00186', 9704329, 49, 'Lukman Nur hakim', '3301120904100002', 'Teknik Kendaraan Ringan', 'L', 'Cilacap', '2010-04-09', '6283862452180', 'Cijoho', 'Islam', 'Tayem', 'Karangpucung', 'Cilacap', 'Jawa Tengah', 3301120911110012, 'Rasito', 'Sutinah', 'SMP NEGERI 2 KARANGPUCUNG', NULL, 'storage/akta/lyozf9CiZIhmEFbUyM5LGi5l4bygGmL9fb76ukKy.jpg', 'storage/kk/gyB4TFrl38KNcReGUuTDR7uGkxbdP0T3zQkOHe0R.jpg', NULL, NULL, 'qr_code/REG-00186.svg', '2025-11-07 09:01:24', '2025-11-07 22:30:21'),
(187, 'REG-00187', 9704330, 71, 'TANTRI CANDRA PERTIWI', '3301134503110001', 'Pemasaran', 'P', 'CILACAP', '2011-03-05', '6282138044747', 'GENTENG WETAN RT 03 RW 03', 'ISLAM', 'PANIMBANG', 'CIMANGGU', 'CILACAP', 'JAWA TENGAH', 3301131804080024, 'IWAN', 'SARYATI', 'SMP RADEN FATAH CIMANGGU', NULL, 'storage/akta/FiS282r3yXRamQtFlalrT7ZNTC2FvCUakK7yQMVj.jpg', 'storage/kk/VUIGXcmt7IOfCT0eggYHHApYoO5ds8Qqt0DVg2aI.jpg', NULL, NULL, 'qr_code/REG-00187.svg', '2025-11-07 10:03:29', '2025-11-08 02:33:14'),
(188, 'REG-00188', 9704331, 77, 'ALDI DWI ANDIKA', '3301120506110006', 'Teknik Kendaraan Ringan', 'L', 'Cilacap', '2011-06-05', '6285848190394', 'Surusunda RT 005 RW 004', 'Islam', 'Surusunda', 'Karangpucung', 'Cilacap', 'Jawa Tengah', 3301121309080018, 'Hendra', 'Solihat', 'MTs AL HIDAYAH KARANGPUCUNG', NULL, 'storage/akta/3bpl8En3zLGwF1YjUSZhsdy59sfQT6V7qCp7LuDj.jpg', 'storage/kk/ejEfzqrtU7zuDvIkroPdObYjdge7ZcSK5jQ9QUsB.jpg', NULL, NULL, 'qr_code/REG-00188.svg', '2025-11-07 12:12:17', '2025-11-17 02:05:23'),
(189, 'REG-00189', 9704332, 77, 'MARIO DUTA MULYA', '3301122903110003', 'Teknik Sepeda Motor', 'L', 'Cilacap', '2011-03-29', '6285842729424', 'Dusun Leuwisaeng RT 002 RW 003', 'Islam', 'Surusunda', 'Karangpucung', 'Cilacap', 'Jawa Tengah', 3301121501080002, 'Hani Prayitno', 'Reni Supriyatin', 'MTs AL HIDAYAH KARANGPUCUNG', NULL, 'storage/akta/73U4JkD40XaGxIEmnVdP2wKXh0Xvrs565ubnx7au.jpg', 'storage/kk/9RJFRkq7ydKUr7PQnMfhiJzERFwZIFTDKzLoLpk3.jpg', NULL, NULL, 'qr_code/REG-00189.svg', '2025-11-07 12:17:18', '2025-11-07 22:30:50'),
(190, 'REG-00190', 9704333, 44, 'Khoerul Febriyansah', '3301201802110002', 'Teknik Sepeda Motor', 'L', 'Cilacap', '2011-02-18', '6281215535733', 'dusun bonjoksaga jl wringin kurung 12', 'Islam', 'Citembong', 'Bantarsari', 'Cilacap', 'Jawa Tengah', 3301201601050522, 'Kasiran', 'Rumini', 'SMP Negeri 1 Satap Bantarsari', NULL, 'storage/akta/WhL0vqnhjR2k4dM9IrQfzsUx2C6kx6HVNel7NVnN.jpg', 'storage/kk/rAOwIescHBavFriZKfXZsNGMEV2fzyZCY8LGp5Qs.jpg', NULL, NULL, 'qr_code/REG-00190.svg', '2025-11-07 12:50:59', '2025-11-07 22:30:07'),
(191, 'REG-00191', 9704334, 39, 'Rifal Aditiyo Duta Guna', '3301121905110004', 'Teknik Sepeda Motor', 'L', 'Cilacap', '2011-05-19', '6288220186066', 'Gunung telu', 'Islam', 'Gunung telu', 'Karang Pucung', 'Cilacap', 'Jawa Tengah', 3301121907080038, 'Karseno', 'Dalyanti', 'MTSN 2 CILACAP', 'storage/foto/gi7ypNVDMc0p48vCU52Wj37NmAo8ETzi16w70Uar.jpg', 'storage/akta/Jm3EHkB98dD4qL05gaWtSSdXFo4PduytqPu9X0O5.jpg', 'storage/kk/5IDjCUozIdGHVKQDzi90uSJtjrlrrEgaMdLkEMVn.jpg', 'storage/kip/m7atqr8hBmeJxdqd5396wdEQVU4jIv4NNnuxJPal.jpg', NULL, 'qr_code/REG-00191.svg', '2025-11-07 14:03:01', '2025-11-07 22:31:05'),
(192, 'REG-00192', 9704335, 55, 'Rifal zaiz arnestian', '3301122807110001', 'Teknik Kendaraan Ringan', 'L', 'Cilacap', '2011-07-28', '6283827793528', 'Cipicung RT 03 RW 05', 'Islam', 'Bengbulang', 'Karangpucung', 'Cilacap', 'Jawa Tengah', 3301120308110002, 'Arsono', 'Esti lestari', 'SMP NEGERI 2 KARANGPUCUNG', NULL, 'storage/akta/ITQPJ1l8rTZ91sGhdxQfJxaFCzUAsXL0S6APHc0n.jpg', 'storage/kk/xzXtiAg72Ki5CtXgMKPseZHQMmrvK6BTKi4CuSyz.jpg', NULL, NULL, 'qr_code/REG-00192.svg', '2025-11-07 17:23:22', '2025-11-07 22:31:26'),
(193, 'REG-00193', 9704336, 34, 'Denis Raditya putra', '3301122003110001', 'Belum Memilih', 'L', 'Cilacap', '2011-03-20', '6285183710611', 'Dusun pesangrahan rt 01/07', 'Islam', 'Ciporos', 'Karangpucung', 'Cilacap', 'Jawa tengah', 3301121201090010, 'Warsito', 'Sri partiwi', 'MTs NURUL HUDA KARANGPUCUNG', NULL, 'storage/akta/oLLjDGzZYfPJevzXsnxEch35gWjaw8mG2CcBJlJO.jpg', 'storage/kk/oIPrioch5IMO9ZbaBWWjKepxGVlmyFqNubCLHWyw.jpg', NULL, NULL, 'qr_code/REG-00193.svg', '2025-11-07 23:18:09', '2025-11-07 23:31:26'),
(194, 'REG-00194', 9704337, 34, 'Daffa agus priyanto', '3301122008100001', 'Belum Memilih', 'L', 'Cilacap', '2010-08-20', '6285183710611', 'Dusun kawungcarang rt 02/08', 'Islam', 'Pangawaren', 'Karangpucung', 'Cilacap', 'Jawa tengah', 3301122106240005, 'Sugimo', 'Ria sonati', 'MTs NURUL HUDA KARANGPUCUNG', NULL, 'storage/akta/HsakdGlpfBZe1L0scu1xM8SUSMkh5Mveq4GPOT8b.jpg', 'storage/kk/olgAV95TlsamPcOn0YpzQcuXX2foExOUZpPTHs3x.jpg', NULL, NULL, 'qr_code/REG-00194.svg', '2025-11-07 23:23:41', '2025-11-07 23:31:37'),
(195, 'REG-00195', 9704338, 34, 'Friga iansyah', '3301121002100003', 'Belum Memilih', 'L', 'Cilacap', '2010-02-10', '6285183710611', 'Dusun ciraja rt 02/12', 'Islam', 'Ciporos', 'Karangpucung', 'Cilacap', 'Jawa tengah', 3301122706070006, 'Sahori', 'Rasikem', 'MTs NURUL HUDA KARANGPUCUNG', NULL, 'storage/akta/ZiLOlyfPLrsSqyJLqUVLik2kwfPyGGnee81bjsHv.jpg', 'storage/kk/v7LMHDZH8VHijGLzYiNbgOzPK79mFwxFR6ZNjDBH.jpg', NULL, NULL, 'qr_code/REG-00195.svg', '2025-11-07 23:30:44', '2025-11-07 23:31:17'),
(196, 'REG-00196', 9704339, 34, 'Priyati', '3301121004110003', 'Akuntansi', 'P', 'Cilacap', '2011-04-10', '6285183710611', 'Dusun kawungcarang rt 02/06', 'Islam', 'Pangawaren', 'Karangpucung', 'Cilacap', 'Jawa tengah', 3301121010090006, 'Dayin', 'Nursiti', 'MTs NURUL HUDA KARANGPUCUNG', NULL, 'storage/akta/awz6brWQvGFiCtvhsiDGRnv9dJBGLXiwogRCN4Un.jpg', 'storage/kk/ZNx5wcUvMEnP77wtJl4rGu3h28GpNqfe7I3NK9U4.jpg', NULL, NULL, 'qr_code/REG-00196.svg', '2025-11-07 23:37:50', '2025-11-07 23:38:26'),
(197, 'REG-00197', 9704340, 52, 'Rahmat rudiyanto', '3301122203100002', 'Teknik Sepeda Motor', 'L', 'Cilacap', '2010-11-22', '6285817918729', 'Kalideres RT 6 RW 1', 'Islam', 'kalideres', 'Kalideres', 'Jakarta barat', 'Jawa Barat', 3173062011200010, 'Sarno', 'Anisah', 'SMP MUHAMMADIYAH 1 KARANGPUCUNG', NULL, 'storage/akta/KN7pnrblcjyXEbV00YdWUEsxnEY1cDVtlc3SXBKR.jpg', 'storage/kk/eKkgkbLAG550lrmLPkpNPWpjwfbFY80TlP2Acmng.jpg', NULL, NULL, 'qr_code/REG-00197.svg', '2025-11-09 04:01:35', '2025-11-09 07:19:55'),
(198, 'REG-00198', 9704341, 49, 'Duta Mulyana', '3301120810100001', 'Teknik Kendaraan Ringan', 'L', 'Cilacap', '2010-10-08', '6285867206094', 'Suryan', 'Islam', 'Karangpucung', 'Karangpucung', 'Cilacap', 'Jawa Tengah', 3301120504080004, 'Karsono', 'Siti saadah', 'SMP NEGERI 1 KARANGPUCUNG', NULL, 'storage/akta/MtaoU4gm1Fzl0ZHlucEydA7QL2Si70zvSBCs1IGs.jpg', 'storage/kk/rKAxK5ywg4kSFkSqEx5gf9G6dm5L7YkoG6MJjuId.jpg', NULL, NULL, 'qr_code/REG-00198.svg', '2025-11-09 07:16:21', '2025-11-09 07:20:05'),
(199, 'REG-00199', 9704342, 49, 'Rere oktaviani', '3301122505110003', 'Belum Memilih', 'P', 'Cilacap', '2010-10-10', '6285867206094', 'Cijoho', 'Islam', 'Tayem', 'Karangpucung', 'Cilacap', 'Jawa Tengah', 3301122505110003, 'Ahmad kusworo', 'Sunasri', 'SMP NEGERI 2 KARANGPUCUNG', NULL, 'storage/akta/0Plr6ZgPRBwybw1dXCrtzo1NMYQPlrDowl9Bdq7f.jpg', 'storage/kk/bwsV9HmrXjmOeRJ29AVvvA7xznMbrhhSuSkRbfWo.jpg', NULL, NULL, 'qr_code/REG-00199.svg', '2025-11-09 07:19:09', '2025-11-09 07:19:45'),
(200, 'REG-00200', 9704343, 73, 'deillen herdiyono', '3301131312100004', 'Teknik Kendaraan Ringan', 'L', 'Cilacap', '2010-12-13', '6285213252668', 'sindanghaji', 'islam', 'bantarpanjang', 'Cimanggu', 'Cilacap', 'Jawa Tengah', 3301132510080011, 'Agus Edy yono', 'nur aini', 'SMP RADEN FATAH CIMANGGU', NULL, 'storage/akta/OrkUo53J5fCkKK0RRYsmDRweIeeFbOWqj2LiuJ9g.jpg', 'storage/kk/00auVqUKZN6RNPHjwQAyJxXpA4WayEZQsba5Mpn1.jpg', NULL, NULL, 'qr_code/REG-00200.svg', '2025-11-09 22:52:50', '2025-11-09 23:51:37'),
(201, 'REG-00201', 9704344, 52, 'Meri marisa putri', '3301124805110002', 'Belum Memilih', 'P', 'Cilacap', '2011-05-08', '6285742394085', 'Dusun lewisaeng rt 2 rw 3', 'Islam', 'Surusunda', 'Karangpucung', 'Cilacap', 'Jawa tengah', 3301122807110001, '-', 'Saijem', 'MTs AL HIDAYAH KARANGPUCUNG', NULL, 'storage/akta/R0JMC58AnELJtbWqDLUQIcb2FFcSGfF1Oup9aNUO.jpg', 'storage/kk/JiYqOcGqUiLe3dWVgnbfXGAFvcktz816wGjlh1yn.jpg', NULL, NULL, 'qr_code/REG-00201.svg', '2025-11-10 06:16:18', '2025-11-10 10:54:34'),
(202, 'REG-00202', 9704345, 52, 'Salwa pinkan rosiana', '3301126101090002', 'Belum Memilih', 'P', 'Cilacap', '2009-01-21', '6288224271594', 'Dusun lewisaeng rt 2 rw 3', 'Islam', 'Surusunda', 'Karangpucung', 'Cilacap', 'Jawa Tengah', 3301121212140002, '-', 'Aminah', 'MTs AL HIDAYAH KARANGPUCUNG', NULL, 'storage/akta/cFNfhbNfsQsZNAjIiEh5rxmrxqv5lUuS63UXwk7P.jpg', 'storage/kk/9qIlMIbAa226og4z7bFeK8V5LuuAOJEX6ALZo2Xg.jpg', NULL, NULL, 'qr_code/REG-00202.svg', '2025-11-10 06:23:54', '2025-11-10 10:54:12'),
(203, 'REG-00203', 9704346, 35, 'KEN ANUR THABRONI', '3301131504100003', 'Teknik Sepeda Motor', 'L', 'CILACAP', '2010-04-15', '62895418894291', 'Cibungur, RT 01 RW 05', 'Islam', 'Mandala', 'Cimanggu', 'Cilacap', 'Jawa Tengah', 3301132304090031, 'Jumad', 'Koniah', 'SMP RADEN FATAH CIMANGGU', NULL, 'storage/akta/OUYztjD3m5Pos5iEHvvlpvS2MTqSjL1Eb4zxO9xY.jpg', 'storage/kk/PTyTp8oDwK7tvwL0cpnMz9ZNy9dmgA3Ji4xZqlmF.jpg', NULL, NULL, 'qr_code/REG-00203.svg', '2025-11-10 09:32:08', '2026-01-08 05:34:30'),
(204, 'REG-00204', 9704347, 82, 'rahmat julianto', '3301122607110001', 'Teknik Sepeda Motor', 'L', 'cilacap', '2011-07-26', '6281215027633', 'dusun cijoli', 'islam', 'karangpucung', 'karangpucung', 'cilacap', 'jawa tengah', 3301120508110001, 'surono', 'tarmiyah', 'SMP NEGERI 1 KARANGPUCUNG', NULL, 'storage/akta/6cqmfJwAf48z6GjTdv0sjNkio8dOo6glnEnVPgsP.jpg', 'storage/kk/FMQbHrD68MPRbOHdOMFXTUpgBE7nxQVOTXW0QOJM.jpg', NULL, NULL, 'qr_code/REG-00204.svg', '2025-11-10 10:53:21', '2025-11-10 10:54:23'),
(205, 'REG-00205', 9704348, 86, 'dennis saputra', '3301121905110003', 'Belum Memilih', 'L', 'cilacap', '2011-05-19', '6281327179920', 'dusun cijoli', 'islam', 'karangpucung', 'karangpucung', 'cilacap', 'jawa tengah', 3301120310110003, 'saliman', 'sulimah', 'SMP NEGERI 1 KARANGPUCUNG', NULL, 'storage/akta/jGKKYDOpJlMeCtw086dIsKiV4HSiyud3xqVM6OFY.jpg', 'storage/kk/kViX7l7zXxbje0MiAqmMT86vha6MCmxoKJjZ6JEr.jpg', NULL, NULL, 'qr_code/REG-00205.svg', '2025-11-11 01:09:28', '2025-11-11 02:24:58'),
(206, 'REG-00206', 9704349, 63, 'RIZKI NUR RAHMAN', '3301122310100004', 'Teknik Sepeda Motor', 'L', 'Boyolali', '2010-10-23', '6283847606569', 'Dusun cijoli, rt 003 rw 002', 'Islam', 'Karangpucung', 'Karangpucung', 'Cilacap', 'Jawa Tengah', 3301120104140004, 'Rahmat Soleh', 'Jaenap', 'SMP NEGERI 1 KARANGPUCUNG', NULL, 'storage/akta/CLYu6e9yAJITeytNWh3nUXNml5bQEmZsuuOIjVMD.jpg', 'storage/kk/8w2a4r1JJDKf9tchwy6u6Dm89sXJqiOdYXBmRz9f.jpg', NULL, NULL, 'qr_code/REG-00206.svg', '2025-11-11 02:14:41', '2025-11-11 02:24:30'),
(207, 'REG-00207', 9704350, 68, 'Bintang Aulia Putra Hutama', '3301122801110001', 'Teknik Kendaraan Ringan', 'L', 'Cilacap', '2011-01-28', '6282138771123', 'Dusun Suryan Rt 03/08 Desa Karangpucung', 'Islam', 'Karangpucung', 'Karangucung', 'Cilacap', 'JAWA TENGAH', 3301120102110006, 'Sukamto', 'Winarti', 'SMP NEGERI 1 KARANGPUCUNG', NULL, 'storage/akta/2rMUdMvft91X1CQHr4tT91lrzUKUnAemXWszJLwZ.jpg', 'storage/kk/zEUG9dYhLFlqRHcpsfQ0WGD25UqP5qAHHvlbUBwV.jpg', NULL, NULL, 'qr_code/REG-00207.svg', '2025-11-11 03:06:19', '2025-11-11 05:28:29'),
(208, 'REG-00208', 9704351, 68, 'Axshel Danu Praditha', '3301120504100004', 'Teknik Komputer dan Jaringan', 'L', 'Cilacap', '2010-04-05', '6288983581821', 'Dusun Jetak Rt03/05', 'Islam', 'Sindangbarang', 'Karangucung', 'Cilacap', 'JAWA TENGAH', 3301120808070003, 'Daryono', 'Nana Supriatin', 'SMP NEGERI 1 KARANGPUCUNG', NULL, 'storage/akta/GX5nQ2tyBRaAS5vFZgeE5aLjLXOzTMzmMgJqBqYg.jpg', 'storage/kk/bN9KQ5HKt0tfonr2o5rHYNXTPcsATwnxpWbai2YK.jpg', NULL, NULL, 'qr_code/REG-00208.svg', '2025-11-11 03:09:58', '2025-11-11 05:28:22'),
(209, 'REG-00209', 9704352, 55, 'SINGGIH WIBOWO', '3301122009110002', 'Teknik Sepeda Motor', 'L', 'Cilacap', '2011-09-20', '6283836742326', 'Suryan RT1/RW7', 'Islam', 'Karangpucung', 'Karangpucung', 'Cilacap', 'Jawa Tengah', 3301120404080039, 'Supriyanto', 'Dewi', 'SMP NEGERI 1 KARANGPUCUNG', NULL, 'storage/akta/Db7r9vkcZTlpY68OVPYOt7uZOeSBf4ZoZAHgMkFO.jpg', 'storage/kk/0ofKTXvaATovtNRuig2dZqYBM5azcOLxvzbhCbvX.jpg', NULL, NULL, 'qr_code/REG-00209.svg', '2025-11-11 07:29:13', '2025-11-11 08:07:09');
INSERT INTO `siswa` (`id`, `no_regis`, `user_id`, `referral_id`, `nama`, `nik`, `jurusan`, `jenis_kelamin`, `tempat_lahir`, `tgl_lahir`, `hp`, `alamat`, `agama`, `desa`, `kecamatan`, `kabupaten`, `provinsi`, `no_kk`, `nama_ayah`, `nama_ibu`, `sekolah_asal`, `foto`, `akta`, `kk`, `kip`, `suket`, `qr_code`, `created_at`, `updated_at`) VALUES
(210, 'REG-00210', 9704353, 50, 'Fikri Faras Hidayat', '3301121402100001', 'Pemasaran', 'P', 'Cilacap', '2010-02-14', '6285292926846', 'RT 01  RW 01', 'Islam', 'Karangpucung', 'Karangpucung', 'Cilacap', 'Jawa Tengah', 3301121712080004, 'Sigit Rismanto', '-', 'SMP NEGERI 1 KARANGPUCUNG', NULL, 'storage/akta/g8snSmIYohkEaaVzQxl7zCmsF0TgfwM6sgCDtXY9.jpg', 'storage/kk/MHyAYghXpiY1XYLw8lftLVItcXlNbGbIquFQfdgI.jpg', NULL, NULL, 'qr_code/REG-00210.svg', '2025-11-11 07:54:28', '2025-11-11 08:07:17'),
(211, 'REG-00211', 9704354, 55, 'FARIS AWALUDIN', '3301121811100003', 'Teknik Sepeda Motor', 'L', 'Cilacap', '2010-11-18', '6288983852011', 'Ciporos RT 002/011', 'Islam', 'Ciporos', 'Karangpucung', 'Cilacap', 'Jawa Tengah', 3301121703110001, 'Arif Setiawan', 'Haryuti', 'SMP NEGERI 2 KARANGPUCUNG', NULL, 'storage/akta/6Cs23o1WulXoQsY6HxG0FNVLvhijPorxDULClFMQ.jpg', 'storage/kk/fZ0yEUTDlU0rwoLNCE3UnDNYznBgsNrzUyiZ3J9I.jpg', NULL, NULL, 'qr_code/REG-00211.svg', '2025-11-11 08:06:03', '2025-11-11 08:07:25'),
(212, 'REG-00212', 9704355, 23, 'Ahmad Safei', '1401123112110006', 'Teknik Sepeda Motor', 'L', 'Kebumen', '2011-12-31', '6281330552918', 'Sindangbarang, RT. 01, RW. 11', 'Islam', 'Desa Sindangbarang', 'Sindangbarang', 'Cilacap', 'Jawa Tengah', 3301120302220001, 'Slamet Mulyono', 'Sumiyati', 'MTSN 2 CILACAP', NULL, 'storage/akta/v5bZcodcySGYNSOH9ubKQ6PSJFXNzw329LGn6n3s.jpg', 'storage/kk/MTJcgJd4A27WIn44qh2GaYNuH7MSWdL6gl4cYlCu.jpg', NULL, NULL, 'qr_code/REG-00212.svg', '2025-11-11 14:39:37', '2025-11-12 13:17:30'),
(213, 'REG-00213', 9704356, 82, 'damar mustaqim', '3301120102080006', 'Teknik Kendaraan Ringan', 'L', 'cilacap', '2011-01-21', '6281215027633', 'dusun cijoli, rt 04 rw 02', 'islam', 'karangpucung', 'karangpucung', 'cilacap', 'jawa tengah', 3301120102080006, 'warlan', 'komidah', 'SMP NEGERI 1 KARANGPUCUNG', NULL, 'storage/akta/1Cr550ydMoNwBJJfzLIpWiv4z7HzUA3tmKPluP79.jpg', 'storage/kk/7jyBqooJM4Nu4M5xoHqmD5mYBtzMKbrVc7LJSrKl.jpg', NULL, NULL, 'qr_code/REG-00213.svg', '2025-11-12 10:07:30', '2025-11-12 13:17:38'),
(214, 'REG-00214', 9704357, 57, 'SAFITRI ZAHRA PRATAMI', '3301204410110002', 'Pemasaran', 'P', 'Cilacap', '2011-10-04', '6285135918930', 'CIBENDA, RT. 02,RW. 04', 'Islam', 'KERTAJAYA', 'GANDRUNGMANGU', 'CILACAP', 'JAWA TENGAH', 3301100603150009, 'TURIMAN', 'KASMIYATI', 'SMP PGRI Lumbir', NULL, 'storage/akta/aeufx2anpos0Rd4SR7H7fWGYnxT60KMQnIVqZfTm.jpg', 'storage/kk/NGoQ8tHtdKjoH1JMzc9OkYdfQixAs0inlPnYMcgR.jpg', NULL, NULL, 'qr_code/REG-00214.svg', '2025-11-12 10:22:43', '2025-11-12 14:40:59'),
(215, 'REG-00215', 9704358, 40, 'Kalifah Hilma Fitroh', '3301106407110003', 'Pemasaran', 'P', 'cilacap', '2011-07-24', '6281325365158', 'Kertajaya', 'Islam', 'Kertajaya', 'Gandrungmangu', 'Cilacap', 'Jawa Tengah', 3301100702110007, 'Eri Ariyanto', 'Rohayati', 'MTSN 2 CILACAP', 'storage/foto/nCt0NMDkJ1H0WkdAOpuixLfj3oklGgTh2gslu7aK.jpg', 'storage/akta/OJbVA0kkqmUoCAjQa2R9jZAT3qMeiVeIKH6UI0J6.jpg', 'storage/kk/snNJxHQnk5fFChE1X4C2uEnOHDcJW5Q6CcRsB3bl.jpg', 'storage/kip/iBVepPsugZ0UE7cDaY63UB5rK8iqc4OfudZl3A5T.jpg', NULL, 'qr_code/REG-00215.svg', '2025-11-12 10:39:28', '2025-11-12 13:17:57'),
(216, 'REG-00216', 9704359, 81, 'DEKA NIZAM RAHMAN', '3301121101110002', 'Teknik Sepeda Motor', 'L', 'CILACAP', '2011-01-11', '6285642205282', 'Grumbul Cirebah', 'Islam', 'Pamulihan', 'Karangpucung', 'Cilacap', 'Jawa Tengah', 3301121507080014, 'Parhanudin', 'Mutmainah', 'SMP NEGERI 4 SATU ATAP KARANGPUCUNG', NULL, 'storage/akta/mwwSGzCW8g4XCsFuoX4a67VsqFe4EP5ylJN80wi2.jpg', 'storage/kk/pnBCUUk1q7vSbA4hGSMRxDiKiVyWMLR0WiibZr3C.jpg', NULL, NULL, 'qr_code/REG-00216.svg', '2025-11-12 13:06:02', '2025-11-12 13:17:45'),
(217, 'REG-00217', 9704360, 81, 'LELI SETIAWAN', '3301121212100002', 'Teknik Sepeda Motor', 'L', 'CILACAP', '2010-12-12', '6285799404962', 'Grumbul Cirebah RT 01 RW 03', 'Islam', 'Pamulihan', 'Karangpucung', 'Cilacap', 'Jawa Tengah', 3301122806100006, 'Daryanto', 'Sulastri', 'SMP NEGERI 4 SATU ATAP KARANGPUCUNG', NULL, 'storage/akta/Rmg7GhFH592VoZNNHuJXNEtDCCkTOaZUISpPA4uv.jpg', 'storage/kk/emxSob85kMNBFS1a1PKUtQ0TodrxQIzxjxTa6DD5.jpg', NULL, NULL, 'qr_code/REG-00217.svg', '2025-11-12 13:09:59', '2025-11-12 13:18:04'),
(218, 'REG-00218', 9704361, 44, 'Lutfiana Silfi', '3328116110100004', 'Akuntansi', 'P', 'Cilacap', '2010-10-21', '6285290650289', 'Dusun Sidamukti RT/RW 05/02', 'Islam', 'Kedungwadas', 'Bantarsari', 'Cilacap', 'Jawa Tengah', 3301201411160005, 'Indra Firmansyah', 'Mutia Setiawati', 'SMP Negeri 1 Satap Bantarsari', NULL, 'storage/akta/vU8QWmB3ZeYYvXymAMxlo5wVqCJziJxnexxTb0Qr.jpg', 'storage/kk/TvPa9hWw6hCjUsRZsYrdh6iB8PIL6lFAnE2AN2uG.jpg', NULL, NULL, 'qr_code/REG-00218.svg', '2025-11-12 13:39:00', '2025-11-12 14:40:37'),
(219, 'REG-00219', 9704362, 71, 'Shofi ananta', '3301135607110004', 'Pemasaran', 'P', 'Cilacap', '2011-07-16', '6281312783926', 'Bantarpanjang rt05 rw03', 'Islam', 'Bantarpanjang', 'Cimanggu', 'Cilacap', 'Jawa tengah', 3301131501070014, 'Satiman', 'Fitriyani', 'SMP RADEN FATAH CIMANGGU', NULL, 'storage/akta/rD8DAZd4dkUvq0kof9SkhLarYjYPqfNzVeVPufuU.jpg', 'storage/kk/RPDIcilJ5rKrTzwWfxzPhuaPp5etxinDmYoApnFo.jpg', NULL, NULL, 'qr_code/REG-00219.svg', '2025-11-12 13:47:30', '2025-11-12 14:41:22'),
(220, 'REG-00220', 9704363, 65, 'Arrafi putra utama', '3301131710090006', 'Teknik Kendaraan Ringan', 'L', 'Cilacap', '2009-10-17', '6287730408584', 'Cimanggu', 'Islam', 'Cimanggu', 'Cimanggu', 'Cilacap', 'Jawa tengah', 3301132406140010, 'Apri romandoni', 'Sri purwanti', 'SMP DARUSSALAM CIMANGGU', NULL, 'storage/akta/zPGY0miJPmguWdc7XE3y3iWEgBuQvCLUqNTCtFAP.jpg', 'storage/kk/0AYnJvgBIwcA1lXl5hO9S0YfuetVB1fx45eM4Qwg.jpg', NULL, NULL, 'qr_code/REG-00220.svg', '2025-11-12 22:57:39', '2025-11-13 00:34:36'),
(221, 'REG-00221', 9704364, 85, 'Muhamad Ravatar Vadillah', '3301132211100002', 'Teknik Kendaraan Ringan', 'L', 'CILACAP', '2010-10-22', '6281321443634', 'Kapek RT 02 RW 01', 'ISLAM', 'BANTARPANJANG', 'CIMANGGU', 'CILACAP', 'Jawa Tengah', 3301132511200003, 'Susanti', 'Susanti', 'SMP RADEN FATAH CIMANGGU', NULL, 'storage/akta/Wzjymz4W5RvnZblU6rjxYFBlKxEfKoVEs0tl8itK.jpg', 'storage/kk/hs2iioPBtSkChQk0gYg6PiSgyb2wAWm5YRlvJml5.jpg', NULL, NULL, 'qr_code/REG-00221.svg', '2025-11-13 03:13:35', '2025-11-13 03:15:01'),
(222, 'REG-00222', 9704365, 42, 'Lisa Aprillia', '3301125304100002', 'Pemasaran', 'P', 'Cilacap', '2010-04-13', '6283149901977', 'Dusun Cijoho RT 06/ RW 01', 'Islam', 'Tayem', 'Karangpucung', 'Cilacap', 'Jawa Tengah', 3301120206080081, 'Warsono', 'Rasmini', 'SMP NEGERI 2 KARANGPUCUNG', NULL, 'storage/akta/7mvsXRlBGcDGfhU5pM4SA0R0AKin0TLUQZ3FK9Wn.jpg', 'storage/kk/iAhTk0upRiSn6rOYzmp7NlMthNLlJ3gmeMzYOmVD.jpg', NULL, NULL, 'qr_code/REG-00222.svg', '2025-11-13 03:16:06', '2025-11-13 04:08:07'),
(223, 'REG-00223', 9704366, 71, 'Randi Putra Pratama', '3301131101100004', 'Teknik Sepeda Motor', 'L', 'Cilacap', '2010-01-11', '6282228322497', 'Cikadu rt 02 rw 09', 'Islam', 'Panimbang', 'Cimanggu', 'Cilacap', 'Jawa Tengah', 3301131305110002, 'Sarka', 'Yati Susilowati', 'SMP RADEN FATAH CIMANGGU', NULL, 'storage/akta/E15Lha60wtf2G207aJPjUQFkkfRS8hL3oy71f8ji.jpg', 'storage/kk/eHVB87F9rT2mv3GSu96irvnfbJz7jOV3ZVlYHf9i.jpg', NULL, NULL, 'qr_code/REG-00223.svg', '2025-11-13 04:05:23', '2025-11-13 04:08:38'),
(224, 'REG-00224', 9704367, 85, 'Kasih April Latifah', '3301134304110001', 'Pemasaran', 'P', 'CILACAP', '2011-04-03', '6283838000978', 'CIBALUNG RT 02 RW 02', 'ISLAM', 'CIBALUNG', 'CIMANGGU', 'CILACAP', 'Jawa Tengah', 3301132007110003, 'Lukman', 'Manisoh', 'SMP RADEN FATAH CIMANGGU', NULL, 'storage/akta/dRHe6sQjxec1tD0Bo3r9rlYLSJRZVfvIEjUs2lIN.jpg', 'storage/kk/9NeGwoDue5yIF76QMRfA7ia17vjuVa4m0xXL7bB8.jpg', NULL, NULL, 'qr_code/REG-00224.svg', '2025-11-13 04:06:00', '2025-11-13 04:07:26'),
(225, 'REG-00225', 9704368, 71, 'Muhamad Rahman', '3301130901100002', 'Teknik Kendaraan Ringan', 'L', 'Cilacap', '2010-01-09', '6281393821547', 'Bantarpanjang rt 03 rw 01', 'Islam', 'Bantarpanjang', 'Cimanggu', 'Cilacap', 'Jawa Tengah', 3301130601055068, 'Sayuti', 'Wasiti', 'SMP RADEN FATAH CIMANGGU', NULL, 'storage/akta/yUov4bcTTRcsmAVvNTYOHWjfUs3ZywHOZ0DPP6yT.jpg', 'storage/kk/9jx3ThUI84q7vM9dtXSX0DRoNFtpbxXMIzZkcYuW.jpg', NULL, NULL, 'qr_code/REG-00225.svg', '2025-11-13 04:23:23', '2025-11-13 11:50:16'),
(226, 'REG-00226', 9704369, 71, 'Raneiza Pradipta Rizkia Dewi', '3301134908100002', 'Akuntansi', 'P', 'Cilacap', '2010-08-09', '62831531851127', 'Tameng rt 03 rw 07', 'Islam', 'Bantarpanjang', 'Cimanggu', 'Cilacap', 'Jawa Tengah', 3301132410110002, 'DENI RIYANTO', 'Fitri Andriyani', 'SMP RADEN FATAH CIMANGGU', NULL, 'storage/akta/hFr98ykx52cNHJajOj5HvPrxcUSlBqaMX6cOtAzl.jpg', 'storage/kk/ibFahmDl3hy8byNnI5ZaqBUKauet5uqndDNl2zYD.jpg', NULL, NULL, 'qr_code/REG-00226.svg', '2025-11-13 04:34:25', '2025-11-13 11:50:09'),
(227, 'REG-00227', 9704370, 84, 'Aldi uci saputra', '3301131103110001', 'Pemasaran', 'L', 'Cilacapa', '2011-03-11', '6283813001658', 'Genteng wetan rt03 rw05', 'Islam', 'Panimbang', 'Cimanggu', 'Cilacap', 'Jawa tengah', 3301132006160004, 'Sujana', 'Naryati', 'SMP RADEN FATAH CIMANGGU', NULL, 'storage/akta/qzEHHeqCxDAo0xi0AOwDzooFnZYGb0bS5cjrTq3A.jpg', 'storage/kk/jMOVA1JaMnKTaWdrfBEs4wq3hm3Vhw7yribXqFks.jpg', NULL, NULL, 'qr_code/REG-00227.svg', '2025-11-13 11:45:56', '2025-11-13 11:50:36'),
(228, 'REG-00228', 9704371, 84, 'Fikri ogit nursalim', '3301130907100002', 'Teknik Kendaraan Ringan', 'L', 'Cilacap', '2010-07-09', '6289630524867', 'Cibungur rt02 rw05', 'Islam', 'Mandala', 'Cimanggu', 'Cilacap', 'Jawa tengah', 3301132009120030, 'Sahud', 'Haryati', 'SMP RADEN FATAH CIMANGGU', NULL, 'storage/akta/DaTgdrNOCrwwabPekS68COjrOvte50n9w2BBnVQr.jpg', 'storage/kk/tfqJzKIoC7x1v7uaN5PdDYoSX7Dp23TAquujQAeC.jpg', NULL, NULL, 'qr_code/REG-00228.svg', '2025-11-13 11:49:29', '2025-11-13 11:50:31'),
(229, 'REG-00229', 9704372, 64, 'Kasih Rahmawati', '3301132112100059', 'Pemasaran', 'P', 'Cilacap', '2010-11-17', '6285138086893', 'Cibubuay RT01/03', 'Islam', 'Bantarpanjang', 'Cimanggu', 'Cilacap', 'Jawa Tengah', 3301132112100059, 'Kisam', 'Tiwen(alm)', 'SMP RADEN FATAH CIMANGGU', NULL, 'storage/akta/41c9c0pbEpxSIor6LuBNBQVM0IQmSsak5Zy5RcBE.jpg', 'storage/kk/9WR8zkPA3OEEojBKxfFgy9E7roa9d3r39MWgslnq.jpg', NULL, NULL, 'qr_code/REG-00229.svg', '2025-11-13 12:13:14', '2025-11-13 12:17:50'),
(230, 'REG-00230', 9704373, 22, 'Rofi\'ul husna', '3301131612100001', 'Teknik Komputer dan Jaringan', 'L', 'Cilacap', '2010-12-16', '62895357431503', 'Cikondang rt02 rw01', 'Islam', 'Panimbang', 'Cimanggu', 'Cilacap', 'Jawa tengah', 3301131805160001, 'Warsud', 'Masyati', 'SMP RADEN FATAH CIMANGGU', NULL, 'storage/akta/yLSdWsXdt6q43WxHHbn1Gh1Sg5Fb66X0hCVx6JhR.jpg', 'storage/kk/ooMp6PuLqD44324Ow684lBKkY2IZLUt3nq9nhrwe.jpg', NULL, NULL, 'qr_code/REG-00230.svg', '2025-11-13 12:16:39', '2025-11-13 12:17:56'),
(231, 'REG-00231', 9704374, 71, 'SINDHI AYUDIA PRATAMA', '3301126106110002', 'Pemasaran', 'P', 'Cilacap', '2011-06-21', '6283130697513', 'Nambo rt 01 rw 10', 'Islam', 'Bantarpanjang', 'Cimanggu', 'Cilacap', 'Jawa Tengah', 3301130708170005, 'Imas Wara', 'Erma Fitriani', 'SMP MUHAMMADIYAH CIMANGGU', NULL, 'storage/akta/X72aVPzuWch3QS2CySEsg8Umw9Si4KOPPGshjHFb.jpg', 'storage/kk/mfaWSnQKntHReLyFrSTLYd6O15ut8KqCe6ypUBmd.jpg', NULL, NULL, 'qr_code/REG-00231.svg', '2025-11-13 12:49:34', '2025-11-15 02:28:42'),
(232, 'REG-00232', 9704375, 71, 'NAYLA   EMELIANI MAULIDA', '3301125912100002', 'Teknik Komputer dan Jaringan', 'P', 'Cilacap', '2010-12-19', '62882008316887', 'Kawungcarang rt 03 rw 04', 'Islam', 'Pangawaren', 'Karangpucung', 'Cilacap', 'Jawa Tengah', 3301120809110002, 'Melki', 'Turyani', 'SMP RADEN FATAH CIMANGGU', NULL, 'storage/akta/R7pDk3AjAUApIWYkg9hfw9FdhK5TtQtWJ6rJuVbO.jpg', 'storage/kk/m87YX9PVzZIucEV77Drdw5Do7Vi2DGieRIVtsAtU.jpg', NULL, NULL, 'qr_code/REG-00232.svg', '2025-11-13 13:04:51', '2025-11-15 02:28:51'),
(233, 'REG-00233', 9704376, 71, 'Azham Muhaimin', '3301130310100004', 'Teknik Kendaraan Ringan', 'L', 'Cilacap', '2010-10-03', '6282295209141', 'Cibubuay rt 04 rw 03', 'Islam', 'Bantarpanjang', 'Cimanggu', 'Cilacap', 'Jawa Tengah', 3301131401230002, 'Tursini', 'Tursini', 'SMP RADEN FATAH CIMANGGU', NULL, 'storage/akta/f2hO4hgu1uxh0iYBdsLwPVtsu9Vt1SrPLkh0vYKZ.jpg', 'storage/kk/jfMQsVo8aSnqzcDkTGCKiWIKwqHgOMSnaXjKovaM.jpg', NULL, NULL, 'qr_code/REG-00233.svg', '2025-11-13 13:18:36', '2025-11-15 02:29:29'),
(234, 'REG-00234', 9704377, 65, 'Jaira Amelia', '3301135801110002', 'Pemasaran', 'P', 'Cilacap', '2011-01-18', '6281226909162', 'Bantarpanjang rt 01/01', 'Islam', 'Bantarpanjang', 'Cimanggu', 'Cilacap', 'Jateng', 3301132012100568, 'Nurofik', 'Tursimah', 'SMP RADEN FATAH CIMANGGU', NULL, 'storage/akta/idE3LmPlaJUcm9dJWkejY5RSLAcPmIV2l8SQpj9E.jpg', 'storage/kk/TQCL3WmcF0Nd6NoA8LkNjyKIUKjXiytV0K1RM9j0.jpg', NULL, NULL, 'qr_code/REG-00234.svg', '2025-11-13 13:21:26', '2025-11-15 06:00:30'),
(235, 'REG-00235', 9704378, 71, 'Andin fitriyani', '3301134609090004', 'Pemasaran', 'P', 'Cilacap', '2009-09-06', '6283872363258', 'Bantarpanjang rt 01 rw 08', 'Islam', 'Bantarpanjang', 'Cimanggu', 'Cilacap', 'Jawa Tengah', 3301130601055841, 'Arseto', 'Solikha', 'SMP RADEN FATAH CIMANGGU', NULL, 'storage/akta/mBNzfKtCMuubgRXTrhB0DexDnS967JHKL3Yg6JH0.jpg', 'storage/kk/qLPR2yfUf6UYgFWV0GMS55Mc0YD3KTqhP8m5MNV8.jpg', NULL, NULL, 'qr_code/REG-00235.svg', '2025-11-13 13:24:36', '2025-11-15 02:29:36'),
(236, 'REG-00236', 9704379, 71, 'Elsa Aulia Putri', '3301134407100003', 'Pemasaran', 'P', 'Cilacap', '2010-07-04', '6283875064669', 'Cingewol rt 04 rw 02', 'Islam', 'Cibalung', 'Cimanggu', 'Cilacqp', 'Jawa Tengah', 3301131609110008, 'Rakimin', 'Yuli', 'SMP RADEN FATAH CIMANGGU', NULL, 'storage/akta/ISii2v9WiDPNaTPfAO2DYcoEYoibtcvwoj7oy647.jpg', 'storage/kk/wI0OGJccq1gM1OiRs5xKdih0MYm2b1FCOPhzLRnB.jpg', NULL, NULL, 'qr_code/REG-00236.svg', '2025-11-13 13:29:34', '2025-11-15 02:29:22'),
(237, 'REG-00237', 9704380, 42, 'Kasih Olivia', '3301126910090002', 'Pemasaran', 'P', 'Cilacap', '2009-10-29', '6285727591017', 'Dusun Cijoho RT 06/ RW 01', 'Islam', 'Tayem', 'Karangpucung', 'Cilacap', 'Jawa Tengah', 3301121212070011, 'Slamet', 'Sujiah', 'SMP NEGERI 2 KARANGPUCUNG', NULL, 'storage/akta/yo5RqKImv9MHBXRZB6IU7xFtgpRcNkGipCDAQ4rK.jpg', 'storage/kk/xwtXTcUSaMs4d3odTw27EiEX5WGrOt64C8ANoKAV.jpg', NULL, NULL, 'qr_code/REG-00237.svg', '2025-11-14 08:12:58', '2025-11-15 02:28:58'),
(238, 'REG-00238', 9704381, 71, 'Fahmi Muhammad Ikhsan', '3301132106110002', 'Teknik Kendaraan Ringan', 'L', 'Cilacqp', '2011-06-21', '6283188846198', 'Genteng Wetan rt 03 rw 03', 'Islam', 'Panimbang', 'Cimanggu', 'Cilacap', 'JAWA TENGAH', 3301131107110010, 'Sutopo', 'Kurnia Wulan Purnamasari', 'SMP RADEN FATAH CIMANGGU', NULL, 'storage/akta/69Casscld2q5sI7KiE4ohOZ4DOz8mZZ5i5bkXv0D.jpg', 'storage/kk/6bT2ZHdGhvMzWE695TT7phuvTfwDnBephfitQgiU.jpg', NULL, NULL, 'qr_code/REG-00238.svg', '2025-11-15 05:17:29', '2025-11-15 06:01:26'),
(239, 'REG-00239', 9704382, 71, 'Farhan Muhammad Ikhsan', '3301132106110001', 'Teknik Komputer dan Jaringan', 'L', 'Cilacap', '2011-06-21', '6282138655939', 'Genteng Wetan rt 03 rw 03', 'Islam', 'Panimbang', 'Cimanggu', 'Cilacap', 'Jawa Tengah', 3301131107110010, 'Sutopo', 'Kurnia Wulan Purnamasari', 'SMP RADEN FATAH CIMANGGU', NULL, 'storage/akta/YSgzumV4ebrPTWr4PP4EcM7F5hCJnZGnFVyWjHxz.jpg', 'storage/kk/OBj8H1pGYY7Bi9lTe1E8H35Zn4g0zqitJAR8KejC.jpg', NULL, NULL, 'qr_code/REG-00239.svg', '2025-11-15 05:20:53', '2025-11-15 07:02:42'),
(240, 'REG-00240', 9704383, 71, 'Tesya Arrayan Istiqomah', '3301135304110001', 'Akuntansi', 'P', 'Cilacap', '2011-04-13', '6288213640004', 'Genteng Wetan rt  02 rw 03', 'Islam', 'Panimbang', 'Cimanggu', 'Cilacap', 'Jawa Tengah', 3301130305240005, 'Siswa', 'Triyani', 'SMP RADEN FATAH CIMANGGU', NULL, 'storage/akta/Ral6k89E6EklU7NoBPfKezHVVqigW2BVY5IgJwOc.jpg', 'storage/kk/J35XLlBWILetWPavo43Uuf6qRktUV3Qh9XDdRUR7.jpg', NULL, NULL, 'qr_code/REG-00240.svg', '2025-11-15 05:34:34', '2025-11-15 06:01:07'),
(241, 'REG-00241', 9704384, 71, 'Kanifan', '3301130801090004', 'Teknik Kendaraan Ringan', 'L', 'Cilacap', '2009-01-08', '6288983466469', 'Sawanfan rt 02 rw 06', 'Islam', 'Bantarpanjang', 'Cimanggu', 'Cilacap', 'Jawa Tengah', 3301131705080020, 'Sutomo', 'Martinah', 'SMP RADEN FATAH CIMANGGU', NULL, 'storage/akta/JIwGxQpXBs1SJrKN6VjNVWMwdfVTUm3dAuUTIpqf.jpg', 'storage/kk/BO1D3bSpCKzVfm9lDWL9YL0JoRk4FRWiX9u9e4KD.jpg', NULL, NULL, 'qr_code/REG-00241.svg', '2025-11-15 05:45:26', '2025-11-15 06:01:19'),
(242, 'REG-00242', 9704385, 31, 'Dewi Putri', '3301130406090001', 'Belum Memilih', 'P', 'Cilacap', '2012-07-28', '62882006072969', 'Genteng wetan', 'Islam', 'Panimbang', 'Cimanggu', 'KABUPATEN CILACAP', 'JAWA TENGAH', 3301135010100002, 'Slamet Setiadi', 'Ajeng Tri Ayu L', 'SMP RADEN FATAH CIMANGGU', NULL, 'storage/akta/zaZTCSHoTByX3oel9HbY0JCbJk6ipzSA4IkXH030.jpg', 'storage/kk/w7bM1dNcq9W3VxDhJMU2cAywdC7YG4u62yoIkjQ0.jpg', NULL, NULL, 'qr_code/REG-00242.svg', '2025-11-15 05:49:55', '2025-11-17 23:54:41'),
(243, 'REG-00243', 9704386, 65, 'Rafli Maulana Muhamad', '3301120902110001', 'Teknik Sepeda Motor', 'L', 'Cilacap', '2011-02-09', '6283846358287', 'Ciporos rt 01/01', 'Islam', 'Ciporos', 'Karangpucung', 'Cilacap', 'Jateng', 3301123011200002, 'Suparno', 'Hernani', 'SMP RADEN FATAH CIMANGGU', NULL, 'storage/akta/aiSqvkCq58qWveshKAzOriWxWFRGE7HZ67DqWqZA.jpg', 'storage/kk/GRdg4Y1dyi4pIAQ8jrcTTpatGYXpEeBsxvJHkKwf.jpg', NULL, NULL, 'qr_code/REG-00243.svg', '2025-11-15 05:49:56', '2025-11-17 02:00:46'),
(245, 'REG-00245', 9704388, 31, 'Dewi Putri Ramadhani', '3301130601055228', 'Akuntansi', 'P', 'Cilacap', '2012-07-28', '62882006072969', 'Genteng Wetan', 'Islam', 'Panimbang', 'Cimanggu', 'KABUPATEN CILACAP', 'JAWA TENGAH', 3301130601055228, 'Slamet Setiadi', 'Ajeng Tri Ayu L', 'SMP RADEN FATAH CIMANGGU', NULL, 'storage/akta/W9p3d6hIg8D9Ge4Q17Vam93y8TWD8ByVGFAHbFjX.jpg', 'storage/kk/m7bsT6NzULlkq7Vg6uldxt1ahjgBwhobIuv4NHnn.jpg', NULL, NULL, 'qr_code/REG-00245.svg', '2025-11-15 06:22:41', '2025-11-15 07:09:26'),
(246, 'REG-00246', 9704389, 73, 'mas annisa zahidah', '3301124309110004', 'Pemasaran', 'P', 'Cilacap', '2011-09-03', '6285731693611', 'ciporos', 'islam', 'ciporos', 'Karangpucung', 'cilacap', 'Jawa Tengah', 3301122307120012, 'saiman', 'nani Suprihatin', 'SMP NEGERI 1 CIMANGGU', NULL, 'storage/akta/TqPnUJDvts9pIvCmY1oXcZAjovPLuxsILFFVIycO.jpg', 'storage/kk/ry31nfB7j09wl11ctuxOXYZqIg8giH53s4hs3QUy.jpg', NULL, NULL, 'qr_code/REG-00246.svg', '2025-11-15 06:23:21', '2025-11-15 07:17:23'),
(247, 'REG-00247', 9704390, 73, 'Tania Anggoro', '3301124203110001', 'Akuntansi', 'P', 'Cilacap', '2011-03-02', '62895383005022', 'ciporos', 'islam', 'ciporos', 'Karangpucung', 'Cilacap', 'Jawa Tengah', 3301121607120005, 'Andi anggoro', 'Saryati', 'SMP NEGERI 1 CIMANGGU', NULL, 'storage/akta/4epvAPGgRgcyjDcjxhmrDc8QxfVm3weoZ81scFcq.jpg', 'storage/kk/wq4wAvzpEqSRtAO095L6kn1fD3LRMkA7E4R1N3YG.jpg', NULL, NULL, 'qr_code/REG-00247.svg', '2025-11-15 06:27:40', '2025-11-15 07:07:19'),
(248, 'REG-00248', 9704391, 37, 'Sayyid', '3301132406100004', 'Belum Memilih', 'L', 'Cilacap', '2010-06-24', '6282141952451', 'Bantarpanjang', 'Islam', 'Bantarpanjang', 'Cimanggu', 'Cilacap', 'Jawa Tengah', 3301131102090008, 'Tatak', 'Ani Susilowati', 'SMP RADEN FATAH CIMANGGU', NULL, 'storage/akta/1cLqxaWBVIGF6KdrT2H9EYQq5rJP3H5taMAynyET.jpg', 'storage/kk/yBmxi3lhFoDTpqpOpnfXXrh0qvZB49Vccle3PzbU.jpg', NULL, NULL, 'qr_code/REG-00248.svg', '2025-11-15 06:28:28', '2025-11-15 07:07:01'),
(249, 'REG-00249', 9704392, 31, 'Raya Akbar Ramdani', '3301119090900001', 'Teknik Kendaraan Ringan', 'L', 'Cilacap', '2009-09-19', '6283844499846', 'Mandala', 'Islam', 'Mandala', 'Cimanggu', 'Cilacap', 'JAWA TENGAH', 3301119090900001, 'Halim', 'Komariyah', 'SMP ISLAM KARANGPUCUNG', NULL, 'storage/akta/E7mhVo9ifpC8zT4cRsJZMMQp9uWzL27dApkny165.jpg', 'storage/kk/S4ZKr56kGhrojqfZpRmlVQEn8Rf7MMwxIke5fXxB.jpg', NULL, NULL, 'qr_code/REG-00249.svg', '2025-11-15 06:28:41', '2025-11-17 00:45:29'),
(250, 'REG-00250', 9704393, 73, 'Atia almaula hidayah', '3301125911100001', 'Pemasaran', 'P', 'Cilacap', '2010-11-19', '6283183034124', 'ciporos', 'islam', 'ciporos', 'Karangpucung', 'Cilacap', 'Jawa Tengah', 3301122904140007, 'Ahmad Syarif Hidayatullah', 'koriah', 'SMP NEGERI 1 CIMANGGU', NULL, 'storage/akta/hRIZhyCUbiAVmKt7nzsq4ECsn4XKc8cc4fmN2isJ.jpg', 'storage/kk/kZHNBqlR8BZJ9qpsF4wMv7LH3s9q7DuEL8AL4N7Y.jpg', NULL, NULL, 'qr_code/REG-00250.svg', '2025-11-15 06:34:51', '2025-11-15 06:59:37'),
(251, 'REG-00251', 9704394, 73, 'Alma Shifa Anggraini', '3301126107100004', 'Belum Memilih', 'P', 'Cilacap', '2010-07-21', '6281310834240', 'ciporos', 'islam', 'ciporos', 'Karangpucung', 'Cilacap', 'Jawa Tengah', 3301120903110003, 'suprapto', 'tri handayani', 'SMP NEGERI 1 CIMANGGU', NULL, 'storage/akta/DIjD6278ULkGZapRtGR2BkGv3VxMrjEiRpHK1fNb.jpg', 'storage/kk/DazkygynTb8W7thpcjE2ipgOsPIVanKVf8kzRanP.jpg', NULL, NULL, 'qr_code/REG-00251.svg', '2025-11-15 06:43:49', '2025-11-15 06:56:50'),
(252, 'REG-00252', 9704395, 37, 'Regita Aulia Firman', '3301136308100003', 'Teknik Komputer dan Jaringan', 'P', 'Cilacap', '2010-08-23', '62887728473789', 'Cikadu', 'Islam', 'Panimbang', 'Cimanggu', 'Cilacap', 'Jawa Tengah', 3301131704090016, 'Ade Firman Andriansyah', 'Rusdiyanti', 'SMP RADEN FATAH CIMANGGU', NULL, 'storage/akta/I87vjME4WtwlArlKPESAo5KTtmWpO3TEU5T49ugH.jpg', 'storage/kk/8J18gbiVVhagSKPZlagU6UQy0GfPsHf3zuYgtRzM.jpg', NULL, NULL, 'qr_code/REG-00252.svg', '2025-11-15 06:47:05', '2025-11-15 07:06:39'),
(253, 'REG-00253', 9704396, 73, 'galih nadil ulum anafis', '3301122103110002', 'Teknik Kendaraan Ringan', 'L', 'Cilacap', '2011-03-21', '62881022753779', 'ciporos', 'islam', 'ciporos', 'Karangpucung', 'Cilacap', 'Jawa Tengah', 3301122104090075, 'taskam', 'wasiah', 'SMP RADEN FATAH CIMANGGU', NULL, 'storage/akta/DVvYKoGfTZuvTK6m5bgPaVCK181WXiPVDuci2ZRl.jpg', 'storage/kk/25hwNKrydecRXlMp3qyvVsp9HTyhiRBeAiIMp27e.jpg', NULL, NULL, 'qr_code/REG-00253.svg', '2025-11-15 06:48:53', '2025-11-15 07:03:00'),
(254, 'REG-00254', 9704397, 73, 'an\'naffi eyffan afandi', '3301120801110001', 'Teknik Kendaraan Ringan', 'L', 'cilacap', '2011-01-08', '628895843451', 'ciporos', 'islam', 'ciporos', 'Karangpucung', 'Cilacap', 'Jawa Tengah', 3301120202110003, 'Ahmad Saifudin Afandi', 'Murtini Herni ningsih', 'SMP RADEN FATAH CIMANGGU', NULL, 'storage/akta/f05YEHzjSu5lsAc8bpzzkmEGCLYbpP1CsHhmTKlQ.jpg', 'storage/kk/zLoF8MRNGdk75Ve0cI62hbYpMv024Ajo9R43fmiU.jpg', NULL, NULL, 'qr_code/REG-00254.svg', '2025-11-15 07:00:00', '2025-11-15 07:00:20'),
(255, 'REG-00255', 9704398, 37, 'Fadil Pratama', '3301130310100002', 'Teknik Sepeda Motor', 'L', 'Cilacap', '2010-08-03', '6287728473789', 'Cokadu', 'Islam', 'Panimbang', 'Cimanggu', 'Cilacap', 'Jawa Tengah', 3301132010100039, 'Natam', 'Wasriah', 'SMP RADEN FATAH CIMANGGU', NULL, 'storage/akta/q3bJRKya0OMZyGFly3meCQkOSrbl4xIxfQPxQyVH.jpg', 'storage/kk/ui7IpUqVOUV9mfJMq9ikrjE9cCWOjYx4SRG5u8Ls.jpg', NULL, NULL, 'qr_code/REG-00255.svg', '2025-11-15 07:00:31', '2025-11-15 07:02:17'),
(256, 'REG-00256', 9704399, 73, 'nur aisyah', '3301124205100002', 'Pemasaran', 'P', 'Cilacap', '2011-05-02', '62882005895297', 'ciporos', 'islam', 'ciporos', 'Karangpucung', 'cilacap', 'Jawa Tengah', 3301120809150003, 'rastoyo', 'warfiah', 'SMP NEGERI 2 KARANGPUCUNG', NULL, 'storage/akta/o3bLoqMUzJ8wSK3FHXChitgHMwpykalgdQP3L8Sk.jpg', 'storage/kk/t0Q0q2glczFmU1CgCC8BGxhBd5AZDZjaae90L8Y0.jpg', NULL, NULL, 'qr_code/REG-00256.svg', '2025-11-15 07:05:40', '2025-11-15 07:06:20'),
(257, 'REG-00257', 9704400, 73, 'Winda dwi putri Puspita sari', '3301126612100001', 'Pemasaran', 'P', 'cilacap', '2010-12-26', '62895332415918', 'ciporos', 'islam', 'ciporos', 'Karangpucung', 'cilacap', 'Jawa Tengah', 3301120804080023, 'warkim', 'tarsilah', 'SMP NEGERI 2 KARANGPUCUNG', NULL, 'storage/akta/q0GBJNafVRYlrpbzVYlYMTDCFNxxcMzKdzYe0mLO.jpg', 'storage/kk/7CMWbeqPnW4yT707we4XguCY8HjGBZTfK8kZqqFO.jpg', NULL, NULL, 'qr_code/REG-00257.svg', '2025-11-15 07:10:38', '2025-11-15 07:10:53'),
(258, 'REG-00258', 9704401, 73, 'Latifah ayu Ambar sari', '3201127105100003', 'Pemasaran', 'P', 'cilacap', '2010-05-31', '6282220291293', 'ciporos', 'islam', 'ciporos', 'Karangpucung', 'cilacap', 'Jawa Tengah', 3301120512090004, 'Wahidin', 'tarminah', 'SMP RADEN FATAH CIMANGGU', NULL, 'storage/akta/mar2ekVSJj2OY8AvVIZzFvwGclweYaYX7TPckzqo.jpg', 'storage/kk/iHLaCEU65vxRKL9vAhXiprtoIdLChhlB2HY8bicw.jpg', NULL, NULL, 'qr_code/REG-00258.svg', '2025-11-15 07:21:25', '2025-11-16 05:46:15'),
(259, 'REG-00259', 9704402, 37, 'Raffa Febianto', '3301130702110005', 'Teknik Komputer dan Jaringan', 'L', 'Cilacap', '2011-02-07', '6285842875569', 'Cikadu', 'Islam', 'Panimbang', 'Cimanggu', 'Cilacap', 'Jawa Tengah', 3301133001120001, 'Yudiyanto', 'Rohati', 'SMP RADEN FATAH CIMANGGU', NULL, 'storage/akta/I73aqPaloK7zE4vCDuQXZp6uhTUkT8CqX3dmTHgD.jpg', 'storage/kk/IamTa3XZZLe9YcfDwtZeJFb8AwVfK2wRRWduVEs3.jpg', NULL, NULL, 'qr_code/REG-00259.svg', '2025-11-15 07:25:58', '2025-11-16 05:46:33'),
(260, 'REG-00260', 9704403, 56, 'Rafis wijaksono', '3301122809110001', 'Teknik Sepeda Motor', 'L', 'Cilacap', '2011-09-28', '6283827085288', 'Dusun cijoho', 'Islam', 'Tayem barat', 'Karangpucung', 'Cilacap', 'Jawa tengah', 3301123009110001, 'Sentot', 'Siti maisaroh', 'SMP NEGERI 2 KARANGPUCUNG', NULL, 'storage/akta/NdSjGdtgRh96JMw371J0xyRbILZS0ryhPeFjU5La.jpg', 'storage/kk/JK6Zu6utYKJHglyw3M2a6BVCk4NJG6LsT43224kK.jpg', NULL, NULL, 'qr_code/REG-00260.svg', '2025-11-15 11:21:20', '2025-11-16 05:47:02'),
(261, 'REG-00261', 9704404, 49, 'David pratama', '3301121902100001', 'Teknik Kendaraan Ringan', 'L', 'Cilacap', '2010-02-19', '6283862452180', 'Suryan', 'Islam', 'Karangpucung', 'Karangpucung', 'Cilacap', 'Jawa Tengah', 3301121702150014, 'Kasim', 'Atiyah', 'SMP NEGERI 1 KARANGPUCUNG', NULL, 'storage/akta/uPZgffweYb75Uwzrg47T8tzNVonn4ow57Q4ZaeTx.jpg', 'storage/kk/IUr8O2QDmZB6lB454FpXQ89jeeJOMLdY3dgylTQg.jpg', NULL, NULL, 'qr_code/REG-00261.svg', '2025-11-16 05:24:37', '2025-11-16 05:45:24'),
(262, 'REG-00262', 9704405, 49, 'Wahyu purnomo', '3301121809100001', 'Teknik Kendaraan Ringan', 'L', 'Cilacap', '2010-09-13', '6283862452180', 'Suryan', 'Islam', 'Karangpucung', 'Karangpucung', 'Cilacap', 'Jawa Tengah', 3301122606090001, 'Sarto', 'Juriyah', 'SMP NEGERI 1 KARANGPUCUNG', NULL, 'storage/akta/wJfKZTpOQq9VOjGP0e2K1iSl9cQVO8GJyoyhQmMj.jpg', 'storage/kk/rpCOs5QKwOvVrgzgKhEND7vNw9K33xRBoNyQC3bc.jpg', NULL, NULL, 'qr_code/REG-00262.svg', '2025-11-16 05:27:17', '2025-11-16 05:47:21'),
(263, 'REG-00263', 9704406, 49, 'M. Sifa ukolbi', '3203112702110001', 'Teknik Kendaraan Ringan', 'L', 'Cianjur', '2011-02-02', '6285786347196', 'Suryan', 'Islam', 'Karangpucung', 'Karangpucung', 'Cilacap', 'Jawa Tengah', 3301121411140005, 'Asep rasmono', 'Reni nuraeni', 'MTs AL HIDAYAH KARANGPUCUNG', NULL, 'storage/akta/lUySsKu2SYBPJGwGXqtfSnBZ67k8N6Rm4Eq8UqYI.jpg', 'storage/kk/AnWDQGEWaVmLyT4D0Dmd4pAU9AXF8ripZpWIODjg.jpg', NULL, NULL, 'qr_code/REG-00263.svg', '2025-11-16 06:02:27', '2025-11-16 06:09:19'),
(264, 'REG-00264', 9704407, 73, 'Anas Tasya Nuraeni', '3301126201110002', 'Akuntansi', 'P', 'cilacap', '2011-01-22', '6283131591948', 'ciporos', 'islam', 'ciporos', 'Karangpucung', 'cilacap', 'Jawa Tengah', 3301120811110005, 'sugiarto', 'haryani', 'SMP NEGERI 2 KARANGPUCUNG', NULL, 'storage/akta/l37yokRcVRW7XHW7k8sBxCzBoo0lmHeJyNIomCW8.jpg', 'storage/kk/4YoVNJDr1haqppC5dHHTlmUaXdWAXkL6tMUr7CPx.jpg', NULL, NULL, 'qr_code/REG-00264.svg', '2025-11-16 08:24:31', '2025-11-16 09:34:41'),
(265, 'REG-00265', 9704408, 73, 'Nazril Pradana', '3301133003110003', 'Teknik Kendaraan Ringan', 'L', 'cilacap', '2011-03-30', '6281236594406', 'bantarpanjang', 'islam', 'bantarpanjang', 'Cimanggu', 'cilacap', 'Jawa Tengah', 3301131203120001, 'carmono', 'Fina apriyana', 'SMP NEGERI 2 KARANGPUCUNG', NULL, 'storage/akta/m9Ri4jN52nrqVdm4QMIR3pwViDNvr6glqtTub3Hs.jpg', 'storage/kk/m2lZZDk6Elh7gi7Sm6C0gVM8p9FSey9iBI2bbwL4.jpg', NULL, NULL, 'qr_code/REG-00265.svg', '2025-11-16 08:55:50', '2025-11-16 09:33:54'),
(266, 'REG-00266', 9704409, 73, 'hazna Zahira kisafani', '3301136810110002', 'Pemasaran', 'P', 'cilacap', '2011-10-25', '6282115733463', 'bantarpanjang', 'islam', 'bantarpanjang', 'Karangpucung', 'cilacap', 'Jawa Tengah', 3301130411110005, 'sutarto', 'deyeni', 'SMP RADEN FATAH CIMANGGU', NULL, 'storage/akta/MOXTlf6pp7rykxhtLOIkFZoHQEIBLsTs1QG1l9hS.jpg', 'storage/kk/8t8SZkHvJHQm1UulsDITKNfricR1kVVFYYAfYvKt.jpg', NULL, NULL, 'qr_code/REG-00266.svg', '2025-11-16 09:00:05', '2025-11-16 09:34:08'),
(267, 'REG-00267', 9704410, 73, 'marsela', '3301137105110003', 'Belum Memilih', 'P', 'cilacap', '2011-05-31', '6282326981880', 'cibubuay', 'islam', 'bantarpanjang', 'Cimanggu', 'cilacap', 'Jawa Tengah', 3301132307120024, 'marno', 'anila', 'SMP RADEN FATAH CIMANGGU', NULL, 'storage/akta/CSAOqS977vmCi2WZsQZxUVcP8t85z1TVeM8TbS3i.jpg', 'storage/kk/KHWeSp3UO35Mkc6qIbJNPKL2MEIRt6RUvvxLFvsP.jpg', NULL, NULL, 'qr_code/REG-00267.svg', '2025-11-16 09:10:44', '2025-11-16 09:34:01'),
(268, 'REG-00268', 9704411, 73, 'widita adristi huwaidah', '3301135501110001', 'Pemasaran', 'P', 'cilacap', '2011-01-15', '6282220377507', 'cibubuay', 'islam', 'bantarpanjang', 'Karangpucung', 'cilacap', 'Jawa Tengah', 3301132311100010, 'mulki hudiyanto', 'Sherly', 'SMP RADEN FATAH CIMANGGU', NULL, 'storage/akta/H2Wo0F0zJgWYmJSUV90rkQQa6D7jWLlCfIc7skJc.jpg', 'storage/kk/0bJ0qnsTriMd6bXrntW3kq0Kav5RYSrVS4NApbXg.jpg', NULL, NULL, 'qr_code/REG-00268.svg', '2025-11-16 09:14:50', '2025-11-16 09:33:47'),
(269, 'REG-00269', 9704412, 73, 'Willy nugraha', '3301131202110004', 'Teknik Sepeda Motor', 'L', 'cilacap', '2011-02-12', '6282138789387', 'cibubuay', 'islam', 'bantarpanjang', 'Karangpucung', 'cilacap', 'Jawa Tengah', 3301130601053786, 'asep supirman', 'Windi sahadah', 'SMP RADEN FATAH CIMANGGU', NULL, 'storage/akta/XdBTn435F4kSM3ds7VqWUg6ADo4as6PmgHKN27JS.jpg', 'storage/kk/oVRzx5oX99c3Crjb41xhuZg8lSpI6HEceFxs7jjp.jpg', NULL, NULL, 'qr_code/REG-00269.svg', '2025-11-16 09:18:50', '2025-11-16 09:33:39'),
(270, 'REG-00270', 9704413, 73, 'enjel Lika melanik', '3301135101110002', 'Akuntansi', 'P', 'Cilacap', '2011-01-11', '6282135656652', 'cibubuay', 'islam', 'bantarpanjang', 'Karangpucung', 'cilacap', 'Jawa Tengah', 3301130404080020, 'edison', 'menti', 'SMP RADEN FATAH CIMANGGU', NULL, 'storage/akta/ArgIh42wBqkoigEbWHUuNsaU5xgui1tT7Kjm3KPP.jpg', 'storage/kk/3iP6HZ80JzkxG0R8Sva4VI1GxyUY0l5FZjKpcKWO.jpg', NULL, NULL, 'qr_code/REG-00270.svg', '2025-11-16 09:25:33', '2025-11-16 09:34:25'),
(271, 'REG-00271', 9704414, 73, 'fathan indrawan', '3301132607110003', 'Belum Memilih', 'L', 'cilacap', '2011-07-26', '62882225139239', 'cibubuay', 'islam', 'bantarpanjang', 'Karangpucung', 'cilacap', 'Jawa Tengah', 3301131402120006, 'indra toni', 'Titin Fatimah', 'SMP RADEN FATAH CIMANGGU', NULL, 'storage/akta/kfOQV2NdZxGB2Qu6eRcU4PlTYluapFXzsi9spJJu.jpg', 'storage/kk/5phKj7T4hKJV3PVd9ykBONQ0WXOWurnmrK31DqCJ.jpg', NULL, NULL, 'qr_code/REG-00271.svg', '2025-11-16 09:29:39', '2025-11-16 09:34:16'),
(272, 'REG-00272', 9704415, 73, 'eleena faiqah edelya', '3301134309100004', 'Pemasaran', 'P', 'cilacap', '2010-09-03', '6282228323386', 'bantarpanjang', 'islam', 'bantarpanjang', 'Cimanggu', 'cilacap', 'Jawa Tengah', 3301131307120001, 'Muhammad mukhlis', 'tri mulyani', 'SMP RADEN FATAH CIMANGGU', NULL, 'storage/akta/DhAL7BhbV5FCQKQ1RnN3UrZ7MoB9564oP9KlRNlo.jpg', 'storage/kk/GH2NU3oJPA6jnvlMJD6FOoE2ACJNU5kl32yDuDyR.jpg', NULL, NULL, 'qr_code/REG-00272.svg', '2025-11-16 09:36:42', '2025-11-16 10:23:48'),
(273, 'REG-00273', 9704416, 73, 'kinanthi Sekar asmarani', '3301134607110001', 'Akuntansi', 'P', 'cilacap', '2011-07-06', '6282324891127', 'bantarpanjang', 'islam', 'bantarpanjang', 'Cimanggu', 'cilacap', 'Jawa Tengah', 3301130410100002, 'darti', 'runiah', 'SMP DARUSSALAM CIMANGGU', NULL, 'storage/akta/XLQg2f81I4rXAmJ4773rOSl3H7tM1FiApKPjkfPm.jpg', 'storage/kk/Ub491J9WTZ4kDKf53D4mnYYF52ZOtfxidYQUVTK2.jpg', NULL, NULL, 'qr_code/REG-00273.svg', '2025-11-16 09:40:46', '2025-11-16 10:23:26'),
(274, 'REG-00274', 9704417, 73, 'anjhelita samrotul milah', '3301136110100001', 'Belum Memilih', 'P', 'cilacap', '2010-10-21', '6281325323287', 'bantarpanjang', 'islam', 'bantarpanjang', 'cimanggu', 'cilacap', 'Jawa Tengah', 3301132001110013, 'tahro', 'tri puji astuti', 'SMP RADEN FATAH CIMANGGU', NULL, 'storage/akta/YPfTCeqnYat7KBhSRdlBSeiPZsHvY0z1d8PDBCOG.jpg', 'storage/kk/LIfvsfWpnmMu0ZTZxX0qRe1zYvFGiTCsNJWMt2zO.jpg', NULL, NULL, 'qr_code/REG-00274.svg', '2025-11-16 09:49:18', '2025-11-16 10:24:16'),
(275, 'REG-00275', 9704418, 73, 'azri nur akbar', '3301131606110001', 'Belum Memilih', 'L', 'cilacap', '2011-06-06', '6282151212031', 'bantarpanjang', 'islam', 'bantarpanjang', 'cimanggu', 'cilacap', 'Jawa Tengah', 3301132801090019, 'wagiyo', 'Nunung Nurhasanah', 'SMP RADEN FATAH CIMANGGU', NULL, 'storage/akta/SZypXaaajxOrXNBnwWdK9L1P57t7BAV3xpgrO5xy.jpg', 'storage/kk/Pa2WzSJzNu1VZTQ4fFBTp22D1lFv6nWdDtFqoZv4.jpg', NULL, NULL, 'qr_code/REG-00275.svg', '2025-11-16 09:57:54', '2025-11-16 10:23:58'),
(276, 'REG-00276', 9704419, 73, 'ra izhan Ahsan arfio', '3301133105110001', 'Teknik Kendaraan Ringan', 'L', 'cilacap', '2011-05-31', '6281330553063', 'bantarpanjang', 'islam', 'bantarpanjang', 'Cimanggu', 'cilacap', 'Jawa Tengah', 3301132207110008, 'kusmoyo', 'Iis hidayati', 'SMP RADEN FATAH CIMANGGU', NULL, 'storage/akta/8qE2qgsInBvQFlW1Q5FlwYBBWn0dR6GMbpjIBBLD.jpg', 'storage/kk/9QNGGyktXuSFEMnzvukOzA9RPN5VQTR3tCwe1Clc.jpg', NULL, NULL, 'qr_code/REG-00276.svg', '2025-11-16 10:02:40', '2025-11-16 10:23:16'),
(277, 'REG-00277', 9704420, 28, 'Hasyifa oktaviana', '3301206210110002', 'Pemasaran', 'P', 'Cilacap', '2011-10-16', '6285291163552', 'Dusun watesari rt 06 rw 01', 'Islam', 'Citembong', 'Bantarsari', 'Cilacap', 'Jawa tengah', 3301201208130005, 'Salimin', 'Trimawati', 'SMP Negeri 1 Satap Bantarsari', 'storage/foto/UF0An3cRy3zDY8v5Wly6qarsOj6enwU2O9UCdWkJ.jpg', 'storage/akta/WgvxuufksKZTNjbFtvphyr0jXkCKTZVNlE9IPkbX.jpg', 'storage/kk/1ZjdRQTFWTHdo0eHybS1DVw7lW5ZteizeVLDpAbz.jpg', 'storage/kip/bAvhXYrxcmOg5TWlwj2nVmVoRCAxSRy0w2bfw2Qj.jpg', NULL, 'qr_code/REG-00277.svg', '2025-11-16 12:41:33', '2025-11-16 23:39:38'),
(278, 'REG-00278', 9704421, 87, 'Widodo saputra', '3301131908100001', 'Belum Memilih', 'L', 'Cilacap', '2010-05-19', '6283825139666', 'Cibungur', 'Islam', 'Panimabng', 'Cimanggu', 'Cilacap', 'Jawatengah', 3301132006120014, 'Kuswari', 'Daroyah', 'SMP RADEN FATAH CIMANGGU', NULL, 'storage/akta/ojHqrFv9E7GB1Fy9ofUX97Mh5aGVHflibljurpeU.jpg', 'storage/kk/JXpZq1ITlXCs8J57ZKvbyiz23N4UY9bhMeIQFIjQ.jpg', NULL, NULL, 'qr_code/REG-00278.svg', '2025-11-17 01:15:38', '2025-11-17 01:57:49'),
(279, 'REG-00279', 9704422, 71, 'MARVEL ADYTIA', '3301120304110004', 'Teknik Sepeda Motor', 'L', 'Cilacap', '2011-04-03', '6282133033726', 'Cadasmalang rt 23 rw 05', 'Islam', 'Babakan', 'Karangpucung', 'Cilacap', 'Jawa tengah', 3301121307170011, 'Karyono', 'Munjiah', 'MTS MIFTAHUL HUDA', NULL, 'storage/akta/QDcOR79csVjNiRxcELIgde8BOZ5mtVtGRgNjt4KU.jpg', 'storage/kk/RmlNhLFMxTcU2KDkyh3YFJh39mpZBZSCHU6t8vD3.jpg', NULL, NULL, 'qr_code/REG-00279.svg', '2025-11-17 02:34:07', '2025-11-17 02:40:50'),
(280, 'REG-00280', 9704423, 89, 'Giska Nadia Tri Cahyani', '3301106207110002', 'Belum Memilih', 'P', 'Cilacap', '2011-07-22', '6288215474751', 'Dusun Ciglagah', 'Islam', 'Kertajaya', 'Gandrungmangu', 'Cilacap', 'Jawa Tengah', 3301102810100007, 'Sarni', 'Nasiatun', 'MTs PESANTREN PEMBANGUNAN MAJENANG', NULL, 'storage/akta/l17YpFzQR1j2TUA3FdrrPCyEvryGIJvyjzzqbyF2.jpg', 'storage/kk/9cGNoemBJIhrzyBh85OzNwVfVI3J2jKEdysHWCPO.jpg', NULL, NULL, 'qr_code/REG-00280.svg', '2025-11-17 10:03:26', '2025-11-17 10:38:14'),
(281, 'REG-00281', 9704424, 71, 'Rafif Fadhilillah', '3301132407110002', 'Teknik Sepeda Motor', 'L', 'Cilacap', '2011-07-24', '6285700973665', 'Lengkong rt 01 rw 03', 'Islam', 'Mandala', 'Cimanggu', 'Cilacap', 'Jawa Tengah', 3301132508110008, 'Prayitno', 'Gita Sugiarti', 'SMP RADEN FATAH CIMANGGU', NULL, 'storage/akta/taC2wEXPA9FszaPMJxQcIl0YGNzzsp8JjJ6UfL6L.jpg', 'storage/kk/6XINi5Z49N1gnwhXcj6GzAlsGyd8dkKfgjt5iGOm.jpg', NULL, NULL, 'qr_code/REG-00281.svg', '2025-11-17 10:30:44', '2025-11-17 10:38:02'),
(282, 'REG-00282', 9704425, 71, 'Evilia Aginaningsih', '3301134108100001', 'Pemasaran', 'P', 'Cilacap', '2010-08-01', '6289630453205', 'Jambuluwuk rt 03 rw 01', 'Islam', 'Cibalung', 'Cimanggu', 'Cilacap', 'Jawa Tengah', 3301131208100016, 'Tri Tugino', 'Yuningsih', 'SMP RADEN FATAH CIMANGGU', NULL, 'storage/akta/5v1jxjWFfgzZMV3Y2eSpMdbXoDEDYb1HrZ4vj7px.jpg', 'storage/kk/m84NqxBcNEvt6XUFzcGVks2yhjlT8pbBwg5lNBr4.jpg', NULL, NULL, 'qr_code/REG-00282.svg', '2025-11-17 10:36:08', '2025-11-17 11:21:37'),
(283, 'REG-00283', 9704426, 71, 'Azmii Syuraih Ghifari', '3301140610100001', 'Pemasaran', 'P', 'Cilacap', '2010-10-06', '628816632039', 'Cikondang rt 03 rw 02', 'Islam', 'Panimbang', 'Cimanggu', 'Cilacap', 'Jawa Tengah', 3301132108190010, 'Sulistyono', 'Sulistyono', 'SMP RADEN FATAH CIMANGGU', NULL, 'storage/akta/dqjMdv0cPGjwmUmJJs4Y2khKut7nbolgy6GZbWbk.jpg', 'storage/kk/SdxZ2KcPNyuuvPjGn9OPZMHG00t6OCRouBoMrwUS.jpg', NULL, NULL, 'qr_code/REG-00283.svg', '2025-11-17 10:42:39', '2025-11-17 10:43:02'),
(284, 'REG-00284', 9704427, 65, 'Arya Airlangga', '3301132904100001', 'Teknik Sepeda Motor', 'L', 'Cilacap', '2010-04-29', '6282114576342', 'Lengkong rt 03/07', 'Islam', 'Mandala', 'Cimanggu', 'Cilacap', 'Jateng', 3301130112220001, 'Wartono', 'Karwati', 'SMP RADEN FATAH CIMANGGU', NULL, 'storage/akta/BkVXTqcWbbqMUR33Ao9XbifSSuEhmdscgomeoNzl.jpg', 'storage/kk/xLSl1Wq7420ktTe82lZ9bFOjI8ORH4ceVC2x7Ccg.jpg', NULL, NULL, 'qr_code/REG-00284.svg', '2025-11-17 11:36:03', '2025-11-17 11:36:24'),
(285, 'REG-00285', 9704428, 21, 'Amira putri nurrohmah', '3172064202111004', 'Belum Memilih', 'P', 'CILACAP', '2011-02-02', '6282228836752', 'Bantarmangu, rt 03,rw 01', 'Islam', 'Bantarmangu', 'Cimanggu', 'Cilacap', 'Jawa tengah', 3301130412180004, 'Sunarso', 'Kosiroh', 'SMP RADEN FATAH CIMANGGU', NULL, 'storage/akta/oKZHABhOhQAFfuMENYEmCb6C5XJlooeOlx8N9bQd.jpg', 'storage/kk/c3HED38Fqx6vRreg7T2kXhrT4ZfGP4PRUKJFJGUD.jpg', NULL, NULL, 'qr_code/REG-00285.svg', '2025-11-17 11:54:53', '2025-11-17 12:45:05'),
(286, 'REG-00286', 9704429, 21, 'Aulia ismawati', '3305015111100002', 'Belum Memilih', 'P', 'Kebumen', '2010-11-11', '6287780426471', 'Dusun ciporos, rt 03, rw 01', 'Islam', 'Ciporos', 'Karangpucung', 'Cilacal', 'Jawa tengah', 3301122201150005, 'Haryanto', 'Surtini', 'SMP RADEN FATAH CIMANGGU', NULL, 'storage/akta/TkPXk7I9OUzB42Vc3WzBE7Sz3wbOsl4S7e6gWlXn.jpg', 'storage/kk/bpESaP7LsXepcBlurdkCXA3sUcjG8xtIMdN3PmJ0.jpg', NULL, NULL, 'qr_code/REG-00286.svg', '2025-11-17 12:04:36', '2025-11-17 12:39:46'),
(287, 'REG-00287', 9704430, 61, 'Maulana davi', '3301192312100002', 'Teknik Kendaraan Ringan', 'L', 'Cilacap', '2010-12-23', '6288812669209', 'Dusun kaleanyar  RT 02 rw 10', 'Islam', 'Rawaapu', 'Patimuan', 'Cilacap', 'Jawa tengah', 3301192304150006, 'Ridwan', 'Rina', 'SMP Negeri 1 Satap Bantarsari', NULL, 'storage/akta/7RpiBKAtGLWIouc1SraaDOuiTzLFtlJjSC71tk8a.jpg', 'storage/kk/iyghvdMsiyIcglM1ndSMSR9BAnOD4Q2HMrK4z6ub.jpg', NULL, NULL, 'qr_code/REG-00287.svg', '2025-11-17 16:37:50', '2025-11-17 19:00:06'),
(288, 'REG-00288', 9704431, 61, 'Mila Nuraeni', '3301105704120003', 'Pemasaran', 'P', 'Cilacap', '2012-04-17', '6288812669209', 'Kertajaya RT 06 rw 03', 'Islam', 'Kertajaya', 'Gandrungmangu', 'Cilacap', 'Jawa tengah', 3301101401055802, 'Mainem', 'Sumini', 'SMP Negeri 1 Satap Bantarsari', NULL, 'storage/akta/lb5btPClvFMhPtT0oVB7ykrIkZhGiplfAGy4sxaN.jpg', 'storage/kk/aiPJtXMNFy4vTSiT1vJGgDZFPYh07qAb2ITchuwH.jpg', NULL, NULL, 'qr_code/REG-00288.svg', '2025-11-17 16:46:04', '2025-11-17 19:00:12'),
(289, 'REG-00289', 9704432, 61, 'Nurhidayat Riski', '3301203005110002', 'Teknik Kendaraan Ringan', 'L', 'Cilacap', '2011-05-30', '6288812669209', 'Dusun kroya rt 03 rw 03', 'Islam', 'Kedungwadas', 'Bantarsari', 'Cilacap', 'Jawa tengah', 3301200801150004, 'Mistam', 'Sugiarti', 'SMP Negeri 1 Satap Bantarsari', NULL, 'storage/akta/9vrcz5VRy2DbRvOuwAgiZ6YEWk8i1vGsPnxJOnmI.jpg', 'storage/kk/bBX5UsrmTMk7Md9LPKTyP5XUQQUM6FshlvqTtXhi.jpg', NULL, NULL, 'qr_code/REG-00289.svg', '2025-11-17 16:58:33', '2025-11-17 19:00:18'),
(290, 'REG-00290', 9704433, 61, 'Nuril ibrahim khaerul', '3301201403110001', 'Teknik Kendaraan Ringan', 'L', 'Cilacap', '2011-03-14', '6288812669209', 'Dusun liunggunung rt 09 rw 04', 'Islam', 'Cikedondong', 'Bantarsari', 'Cilacap', 'Jawa tengah', 3301202710110003, 'Khoerul anas', 'Maryati', 'SMP Negeri 1 Satap Bantarsari', NULL, 'storage/akta/diyQaI1TVijNTREii3HgpzGRDiZEuDcGaB63mzLP.jpg', 'storage/kk/ATNy9OIsIvEDzGbkfUAFTtCJ3IqxgWh4To9RcXma.jpg', NULL, NULL, 'qr_code/REG-00290.svg', '2025-11-17 17:07:06', '2025-11-17 19:00:23'),
(291, 'REG-00291', 9704434, 37, 'Rifky Saputra', '3301131107110001', 'Belum Memilih', 'L', 'Cilacap', '2011-07-11', '6285640814807', 'Cibalung', 'Islam', 'Cibalung', 'Cimanggu', 'Cilacap', 'Jawa Tengah', 3301130701059183, 'Rahmat', 'Tarsumi', 'SMP RADEN FATAH CIMANGGU', NULL, 'storage/akta/gkcIemnj8qRYwNtuch3VeQQW9q0DWlchEAoF4TXO.jpg', 'storage/kk/OY00nCwjZuslEaNVRYwGIsG46hZ99qE2OsM0YeNq.jpg', NULL, NULL, 'qr_code/REG-00291.svg', '2025-11-17 21:35:51', '2025-11-17 23:37:56'),
(292, 'REG-00292', 9704435, 31, 'QORRI ARSYA ANANTA', '3301094510100005', 'Akuntansi', 'P', 'Cilacap', '2010-10-05', '6283844499846', 'Dusun Sidamulya', 'Islam', 'Ujungmanik', 'Kawunganten', 'KABUPATEN CILACAP', 'JAWA TENGAH', 3301092501110027, 'Yulianto', 'Suci Lestari', 'SMP Yabaki 4 Kawunganten', NULL, 'storage/akta/rr2sy0g6ddU4mLmOnFyojf0hhybNgvDJda1nHeOZ.jpg', 'storage/kk/78aZVOitmzGg6VWIznFXfUcU5ueXliLVscXq9evC.jpg', NULL, NULL, 'qr_code/REG-00292.svg', '2025-11-18 00:18:19', '2025-11-18 01:27:00'),
(293, 'REG-00293', 9704436, 22, 'NANDI RAMADANI', '3301133008100001', 'Teknik Kendaraan Ringan', 'L', 'CILACAP', '2010-08-30', '62895357431503', 'CIBUNGUR RT02 RW05', 'ISLAM', 'MANDALA', 'CIMANGGU', 'CILACAP', 'JAWA TENGAH', 3301130601056125, 'TAMJID', 'DARYATI', 'SMP RADEN FATAH CIMANGGU', NULL, 'storage/akta/JzsFFJXomuqKxqWiiqGm34bPILwo2p0BbUMaIJ2f.jpg', 'storage/kk/ZyTJ0GbAeUp0H5rSk2hDWUCLzGimbx0UL9dPMDQm.jpg', NULL, NULL, 'qr_code/REG-00293.svg', '2025-11-18 00:52:02', '2025-11-18 00:52:26'),
(294, 'REG-00294', 9704437, 50, 'Karina Oktavia', '3301126810100001', 'Pemasaran', 'P', 'Cilacap', '2010-10-28', '6285930438778', 'Cijati RT 3 RW3 jalan sunan kalijaga', 'Islam', 'Karangpucung', 'Karangpucung', 'Cilacap', 'Jawa Tengah', 3301122908080007, 'Muhardi Warsono', 'Mursiti', 'SMP NEGERI 1 KARANGPUCUNG', NULL, 'storage/akta/edKAfvPxRCf3ivaopcTdgpO9oQazRoJd21DXUIdh.jpg', 'storage/kk/m7EHK1jocQIKuYvflyIk532KgNtyjlkktF62YZf6.jpg', NULL, NULL, 'qr_code/REG-00294.svg', '2025-11-18 02:32:15', '2025-11-18 03:39:52'),
(295, 'REG-00295', 9704438, 50, 'Akhiron nilnal munaa', '3301122007100001', 'Teknik Komputer dan Jaringan', 'L', 'Cilacap', '2010-07-20', '6285678558073', 'JETAK, RT 02/RW 04', 'Islam', 'Sindangbarang', 'Karangpucung', 'Kab. Cilacap', 'Prop. Jawa Tengah', 3301122301070003, 'Agus Arif Sutrisno', 'Rumiyati', 'SMP NEGERI 1 KARANGPUCUNG', NULL, 'storage/akta/6g9ifUPDTmNVfoH0ZCzhXYFwDJIL9Z3j6QHAoXEQ.jpg', 'storage/kk/jcCKomhdIiwBJ6EKbhJ4WVDKrjcENyzTFY2vgqlx.jpg', NULL, NULL, 'qr_code/REG-00295.svg', '2025-11-18 02:49:51', '2025-11-18 03:39:26'),
(296, 'REG-00296', 9704439, 58, 'Zulfa Rofiqotus Salma', '3301096801110004', 'Teknik Komputer dan Jaringan', 'P', 'Cilacap', '2011-01-28', '6281393921476', 'Dusun Sidamulya', 'Islam', 'Ujung Manik', 'Kawunganten', 'Cilacap', 'Jawa Tengah', 3301091601050180, 'Sudiono', 'Sutiyah', 'SMP Yabaki 4 Kawunganten', NULL, 'storage/akta/hFQIJeklOS18Ahxe7rmnLdZwqnNPKfrX5X7ZlnJD.jpg', 'storage/kk/Su2RK8CPDaoFHxlSk9pSWGO3EwPV3HUgBGCE2ZvB.jpg', NULL, NULL, 'qr_code/REG-00296.svg', '2025-11-18 03:38:45', '2025-11-18 03:39:37'),
(297, 'REG-00297', 9704440, 61, 'Satria nur alim', '3301200303100003', 'Teknik Kendaraan Ringan', 'L', 'Cilacap', '2010-03-03', '6288812669209', 'Kedungsalam rt 02 rw 02', 'Islam', 'Cikedondong', 'Bantarsari', 'Cilacap', 'Jawa tengah', 3301202907080018, 'Nakum priatno', 'Suriati', 'SMP Negeri 1 Satap Bantarsari', NULL, 'storage/akta/S4BS4DgrWE79Av7rfiuAFr2cDWMdw6CyvPDv5wiH.jpg', 'storage/kk/LRAACRKbUKhqhEyokevOQyVilgCnGeMID2j745IY.jpg', NULL, NULL, 'qr_code/REG-00297.svg', '2025-11-18 04:08:36', '2025-11-18 05:35:32'),
(298, 'REG-00298', 9704441, 61, 'Silfi apriliani', '3301205809100002', 'Akuntansi', 'P', 'Cilacap', '2010-09-28', '6288812669209', 'Dusun liunggunung rt 06 rw 04', 'Islam', 'Cikedondong', 'Bantarsari', 'Cilacap', 'Jawa tengah', 3301200301120002, 'Karyoto', 'Lasmini fitriani', 'SMP Negeri 1 Satap Bantarsari', NULL, 'storage/akta/vdBFIfKVadXTmCVR72hHIKcE3VxtcFlFWaXPefXG.jpg', 'storage/kk/d6bSgerFzlhWzgf7iVKbjo4ZCQGo1xu823FtT8de.jpg', NULL, NULL, 'qr_code/REG-00298.svg', '2025-11-18 04:45:26', '2025-11-18 05:39:03'),
(299, 'REG-00299', 9704442, 73, 'Nizam nurrizki', '3301120901120004', 'Teknik Sepeda Motor', 'L', 'cilacap', '2012-01-09', '628582135544475', 'cibubuay', 'islam', 'bantarpanjang', 'Cimanggu', 'Cilacap', 'Jawa Tengah', 3301130108120002, 'kusmo', 'Susilowati', 'SMP RADEN FATAH CIMANGGU', NULL, 'storage/akta/GkhpITz3pXtZdJqCI74CuSrrkjHXfG2kF3LZFi7U.jpg', 'storage/kk/IF3hkMBWLQXkR9D33athWqNwDPrNU3m3vIZWasLI.jpg', NULL, NULL, 'qr_code/REG-00299.svg', '2025-11-18 09:12:49', '2025-11-18 11:32:39'),
(300, 'REG-00300', 9704443, 61, 'Istyana isnaitun', '3301205104110002', 'Pemasaran', 'P', 'Cilacap', '2011-04-21', '6288812669209', 'Dusun bonjoksaga rt 02 rw 03', 'Islam', 'Citembong', 'Bantarsari', 'Cilacap', 'Jawa tengah', 3301201601050502, 'Sartam', 'Rusmiati', 'SMP Negeri 1 Satap Bantarsari', NULL, 'storage/akta/GMRhImoOcuy6UhcKaFxrg1G6XM2YhRJENEnaw6Nj.jpg', 'storage/kk/mlzSe3KMXb2yk6Pt2De0WoRLvkT7gv6KciwIFmQ8.jpg', NULL, NULL, 'qr_code/REG-00300.svg', '2025-11-18 10:46:44', '2025-11-18 11:32:19'),
(301, 'REG-00301', 9704444, 61, 'Ilham baihaki pratama', '3301201101110001', 'Teknik Komputer dan Jaringan', 'L', 'Cilacap', '2011-01-11', '6288812669209', 'Dusun bojonggedang rt 08 rw 01', 'Islam', 'Cikedondong', 'Bantarsari', 'Cilacap', 'Jawa tengah', 3301200409130003, 'Sigit sutrisno', 'Saimah', 'SMP Negeri 1 Satap Bantarsari', NULL, 'storage/akta/eoCtHpK9KgVjkFtBQLHFdachevhLKOyRtlnGpvp5.jpg', 'storage/kk/mmIUDATOjoAjolcWiHjP5lCJ70VbrTEirmaLKkiF.jpg', NULL, NULL, 'qr_code/REG-00301.svg', '2025-11-18 10:53:58', '2025-11-18 11:31:59'),
(302, 'REG-00302', 9704445, 61, 'Riko indrawan', '3301202009100001', 'Teknik Kendaraan Ringan', 'L', 'Cilacap', '2010-09-20', '6288812669209', 'Dusun karangtengah rt 05 rw 04', 'Islam', 'Citembong', 'Bantarsari', 'Cilacap', 'Jawa tengah', 3301202211010004, 'Mistar', 'Tukinah', 'SMP Negeri 1 Satap Bantarsari', NULL, 'storage/akta/zTFDVSRawQyuwfHohlY1VcSdf7Taf6K5avfOlmCu.jpg', 'storage/kk/wL1rIA4BdepbzCuGydLUBOQnytrFQiacyK4ulXXM.jpg', NULL, NULL, 'qr_code/REG-00302.svg', '2025-11-18 11:07:15', '2025-11-18 11:32:57'),
(303, 'REG-00303', 9704446, 61, 'Tika oktafia sari', '3301205510100001', 'Pemasaran', 'P', 'Cilacap', '2010-10-25', '6288812669209', 'Dusun sidamukti rt 03 rw 02', 'Islam', 'Kedungwadas', 'Bantarsari', 'Cilacap', 'Jawa tengah', 3301201601055749, 'Daslam', 'Sukini', 'SMP Negeri 1 Satap Bantarsari', NULL, 'storage/akta/1WBI9mOBpvq0dcTC9iDFlZXvhKZWkIf49a5LNv0Z.jpg', 'storage/kk/ilNg4lYMgmdpSpLfeIR67T9Fzzp2oCVlCMzeHn7p.jpg', NULL, NULL, 'qr_code/REG-00303.svg', '2025-11-18 11:15:03', '2025-11-18 11:33:16'),
(304, 'REG-00304', 9704447, 61, 'Bilal villa ramadhan', '3301202208100003', 'Teknik Sepeda Motor', 'L', 'Cilacap', '2010-08-22', '6288812669209', 'Dusun kedungwadas rt 03 rw 04', 'Islam', 'Kedungwadas', 'Bantarsari', 'Cilacap', 'Jawa tengah', 3301202911130001, 'Kisnanto', 'Kholipatun  hasanah', 'SMP Negeri 1 Satap Bantarsari', NULL, 'storage/akta/cqeqaxFBhMVznlCyyTB7G2keoslXTkpDUPPawLe5.jpg', 'storage/kk/gwssP40sxa5ucJUe4hHpnzKtQUBIM2DDCv8pfhvt.jpg', NULL, NULL, 'qr_code/REG-00304.svg', '2025-11-18 11:29:20', '2025-11-18 11:31:41'),
(305, 'REG-00305', 9704448, 61, 'Nazwa fauziah', '3301126202110003', 'Pemasaran', 'P', 'Cilacap', '2011-02-22', '6288812669209', 'Dusun kawungcarang rt 02 rw 05', 'Islam', 'Pangawaren', 'Karangpucung', 'Cilacap', 'Jawa tengah', 3301122403220009, '-', 'Endang waningsih', 'MTs NURUL HUDA KARANGPUCUNG', NULL, 'storage/akta/9A2TJ37i8TVub5prYtYKyr5cINVEc4nnJbeEt7vf.jpg', 'storage/kk/eUG1bwB5pChvcyPa0hO7JOMtmVWIxz1gd8Pm6Zkx.jpg', NULL, NULL, 'qr_code/REG-00305.svg', '2025-11-18 14:34:23', '2025-11-22 12:17:26'),
(306, 'REG-00306', 9704449, 56, 'Muhammad Ikhsan Al farizi', '3301120911100005', 'Teknik Sepeda Motor', 'L', 'Cilacap', '2010-11-09', '6281809207983', 'Dusun cijoho rt 04 rw 02', 'Islam', 'Tayem barat', 'Karangpucung', 'Cilacap', 'Jawa tengah', 3301120201150003, 'Indra susanto', 'Suliyah', 'SMP N 2 Margahayu Bandung', NULL, 'storage/akta/heS2voM5SzO8S83f75OBqIMiRQtncuNIfqZFS9KS.jpg', 'storage/kk/I0IBaozlOsDogcRz1WDnd79esL4giPgOzxJPFGxA.jpg', NULL, NULL, 'qr_code/REG-00306.svg', '2025-11-19 04:22:45', '2025-11-22 12:17:00'),
(307, 'REG-00307', 9704450, 61, 'Raihan nur adhani', '3301130911100004', 'Teknik Komputer dan Jaringan', 'L', 'Cilacap', '2011-11-09', '6288812669209', 'Ciporos rt 03 rw 03', 'Islam', 'Ciporos', 'Karangpucung', 'Cilacap', 'Jawa tengah', 3301120401190002, 'Kasnoto', 'Sulastri', 'SMP RADEN FATAH CIMANGGU', NULL, 'storage/akta/jTMgLi9fyAveZ1qP3n2o3odz0FEz1bYtnBwftG09.jpg', 'storage/kk/fxvTa3fVElCQnxAaXieiOXDEvOq2JSKsVZnYZb6w.jpg', NULL, NULL, 'qr_code/REG-00307.svg', '2025-11-19 07:29:34', '2025-11-22 12:18:01');
INSERT INTO `siswa` (`id`, `no_regis`, `user_id`, `referral_id`, `nama`, `nik`, `jurusan`, `jenis_kelamin`, `tempat_lahir`, `tgl_lahir`, `hp`, `alamat`, `agama`, `desa`, `kecamatan`, `kabupaten`, `provinsi`, `no_kk`, `nama_ayah`, `nama_ibu`, `sekolah_asal`, `foto`, `akta`, `kk`, `kip`, `suket`, `qr_code`, `created_at`, `updated_at`) VALUES
(308, 'REG-00308', 9704451, 71, 'Arlan Maulana', '3301122508110003', 'Teknik Sepeda Motor', 'L', 'Cilacap', '2011-08-25', '62895411197493', 'Ciporos rt 04 rw 01', 'Islam', 'Ciporos', 'Karangpucung', 'Cilacap', 'Jawa Tengah', 3301121108080004, 'Makmur', 'Suharti', 'SMP RADEN FATAH CIMANGGU', NULL, 'storage/akta/2rQt5OuvNujELY8tIenKT6yXBrzhsAKgBLNqd3gu.jpg', 'storage/kk/S68DC9QViuYL2j8uBtUm3b7GA62Kjjee1JlN3WYl.jpg', NULL, NULL, 'qr_code/REG-00308.svg', '2025-11-20 00:02:53', '2025-11-22 12:15:07'),
(309, 'REG-00309', 9704452, 23, 'DESTY LESTARI', '3301107012100001', 'Pemasaran', 'P', 'CILACAP', '2010-12-30', '6281326135634', 'KERTAJAYA', 'Islam', 'KERTAJAYA', 'GANDRUNGMANGU', 'CILACAP', 'JAWA TENGAH', 3301101801110008, 'HERMANTO', 'ASIH PRIYATIN', 'SMP PGRI Lumbir', NULL, 'storage/akta/mhuamaAV4vTlwfLoXoW0mWiP0NAS02QiD1M45A81.jpg', 'storage/kk/rX22Ai5q99LiqNWaqyUsqberm1jB3axur5MRcqMR.jpg', NULL, NULL, 'qr_code/REG-00309.svg', '2025-11-21 05:45:34', '2025-11-22 12:15:50'),
(310, 'REG-00310', 9704453, 23, 'FERDI SETIAWAN', '3302011707090003', 'Teknik Sepeda Motor', 'L', 'BANYUMAS', '2009-07-17', '628818613110', 'Kedunggede, RT. 05, RW.02', 'Islam', 'KEDUNGGEDE', 'Lumbir', 'Banyumas', 'Jawa Tengah', 3302010708060005, 'Wakhudin', 'Rochayati', 'SMP Negeri 1 Lumbir', NULL, 'storage/akta/OK8W4cq5sr2KwSpxBgd88iShgvYauLdCqXLeRcZi.jpg', 'storage/kk/x9VkWXiUTp7sJDDxSvOKRTBwoseq32Cg1c4TFV9q.jpg', NULL, NULL, 'qr_code/REG-00310.svg', '2025-11-21 06:15:31', '2025-11-22 12:16:11'),
(311, 'REG-00311', 9704454, 61, 'Inez febri annazwa', '3301124902110002', 'Pemasaran', 'P', 'Cilacap', '2011-02-09', '6288812669209', 'Kawungcarang rt 01 rw 07', 'Islam', 'Pangawaren', 'Karangpucung', 'Cilacap', 'Jawa tengah', 3301121903100031, 'Alek permana', 'Endang lestari', 'SMP NEGERI 2 KARANGPUCUNG', NULL, 'storage/akta/mdWoAtI0WAb0T5nUdGiVmB4XqcbRhmKHK0gIhJoc.jpg', 'storage/kk/4tbbDvdYzdWEcu8iZBkQVaBu0ZA9sK45fTLIrZy9.jpg', NULL, NULL, 'qr_code/REG-00311.svg', '2025-11-22 03:02:07', '2025-11-22 12:16:27'),
(312, 'REG-00312', 9704455, 61, 'Rafael galuh maulana', '3301122903110002', 'Teknik Sepeda Motor', 'L', 'Cilacap', '2011-03-29', '6288812669209', 'Kawungcarang rt 01 rw 06', 'Islam', 'Pangawaren', 'Karangpucung', 'Cilacap', 'Jawa tengah', 3301122411100013, 'Nako maulana', 'Rinawati', 'SMP NEGERI 2 KARANGPUCUNG', NULL, 'storage/akta/E5Yc5X6aOIWvewjVIPfJi7nRs6vSqOIPcsktyFg8.jpg', 'storage/kk/ZHakde0A2JGw9jm2oBS1Rp80Yz6HDXIachMhNbyk.jpg', NULL, NULL, 'qr_code/REG-00312.svg', '2025-11-22 03:07:23', '2025-11-22 12:17:43'),
(313, 'REG-00313', 9704456, 82, 'mira ariyanti', '3301124303110001', 'Belum Memilih', 'P', 'cilacap', '2011-03-03', '628815220408', 'dusun cijoli', 'islam', 'karangpucung', 'karangpucung', 'cilacap', 'jawa tengah', 3301120503140002, 'ari susanto', 'karsiwen', 'SMP NEGERI 1 KARANGPUCUNG', NULL, 'storage/akta/GPNE7zQWa1priY0PfVlpMoFn5DIjGKNqpzszpZRo.jpg', 'storage/kk/cPBmxnJoSZbZSJ8D5YImktJmnRJkJe3MuFfhKRBi.jpg', NULL, NULL, 'qr_code/REG-00313.svg', '2025-11-22 06:01:31', '2025-11-22 12:16:44'),
(314, 'REG-00314', 9704457, 61, 'Cantika dwi  anggraeni', '3301124702110002', 'Akuntansi', 'P', 'Cilacap', '2011-02-07', '6288812669209', 'Kawungcarang rt 02 rw 07', 'Islam', 'Pangawaren', 'Karangpucung', 'Cilacap', 'Jawa tengah', 3301120405090010, 'Riyanto pujarsono', 'Beti rusyanti', 'SMP NEGERI 1 KARANGPUCUNG', NULL, 'storage/akta/zcNf9Ff0rXcJ0xmN27GJMDsLQszPgmz46uYwcACp.jpg', 'storage/kk/o9t9rVoEW06G5P0cyZ341IpLn1LbsuqpdZ49rbCN.jpg', NULL, NULL, 'qr_code/REG-00314.svg', '2025-11-22 11:07:21', '2025-11-22 12:15:26'),
(315, 'REG-00315', 9704458, 82, 'renita novita safitri', '3301126011100002', 'Pemasaran', 'P', 'cilacap', '2010-11-20', '6281215027633', 'dusun cijoli', 'islam', 'karangpucung', 'karangpucung', 'cilacap', 'jawa tengah', 3301122705110003, 'maman hilmansyah', 'nur riska', 'SMP NEGERI 1 KARANGPUCUNG', NULL, 'storage/akta/iwlxl3smfNGxfriAqxYi8StSvr0TiybfBwwwAlKz.jpg', 'storage/kk/2kCm8B6bTXNqMNjs2xwGOmFgp0gkr96cFrWiWOAk.jpg', NULL, NULL, 'qr_code/REG-00315.svg', '2025-11-22 12:01:58', '2025-11-22 12:18:22'),
(316, 'REG-00316', 9704459, 44, 'RYAN NUR RIZKI', '3301120410100003', 'Belum Memilih', 'L', 'Cilacap', '2010-10-04', '6285183710611', 'Dusun jambeasem RT01/05', 'Islam', 'Cidadap', 'Karangpucung', 'Cilacap', 'Jawa Tengah', 3301120206200003, 'Teja Suryadi', 'Lina puspitasari', 'MTs NURUL HUDA KARANGPUCUNG', NULL, 'storage/akta/Sao44YuLebigmkFoZb4JcHZ4wfnUMjVgz7Omua6G.jpg', 'storage/kk/gKB4iMWDXedvFRT9Zn4vibJocOqae2Dj3b3wPdxG.jpg', NULL, NULL, 'qr_code/REG-00316.svg', '2025-11-23 11:27:48', '2025-11-24 02:19:49'),
(317, 'REG-00317', 9704460, 44, 'Tina Vitrianingsih', '3301124504110002', 'Belum Memilih', 'P', 'Cilacap', '2011-04-05', '6285183710611', 'Kawungcarang RT01/08', 'Islam', 'Pangawaren', 'Karangpucung', 'Cilacap', 'Jawa tengah', 3301120802120003, 'Triyanto', 'Reni', 'MTs NURUL HUDA KARANGPUCUNG', NULL, 'storage/akta/SdnkY1Muggj7mReCTgrMhQuC6OpPzxzlpvHZF7Ld.jpg', 'storage/kk/yTA9w5T5RgIizRyIgCEjPuQH4RJjpkRYTK21FenS.jpg', NULL, NULL, 'qr_code/REG-00317.svg', '2025-11-23 11:34:07', '2025-11-24 02:20:36'),
(318, 'REG-00318', 9704461, 36, 'Tika Oktavia Sari', '3301206510100001', 'Pemasaran', 'P', 'Cilacap', '2010-10-25', '6282324639812', 'Desa sidomukti  RT 03/02', 'Islam', 'Keduwadas', 'Bantarsari', 'Cilacap', 'Jawa Tengah', 3301201601055749, 'Daslam', 'Sukini', 'SMP Negeri 1 Satap Bantarsari', 'storage/foto/OE24P8GZZe00ouZ3PfBpgifpJnbcjJ0B0FHapLXw.jpg', 'storage/akta/NMKaxRE6DVggyXbLThiAWSr0tyCAYtJgRkUTZe75.jpg', 'storage/kk/1UWqzqhAkOeDRM7Ww8hsZHwX1EkVHHgsLMYz2KuJ.jpg', 'storage/kip/bMamKN4a83rJbET4bSLCkrv7Ei1UecZpYQfwNriU.jpg', NULL, 'qr_code/REG-00318.svg', '2025-11-23 11:42:54', '2025-11-24 02:20:16'),
(319, 'REG-00319', 9704462, 34, 'Hasan Daffa Maulana', '3301121505110005', 'Teknik Sepeda Motor', 'L', 'Cilacap', '2011-05-15', '6285183710611', 'Dusun Jambeasem  RT06/05', 'Islam', 'Cidadap', 'Karangpucung', 'Cilacap', 'Jawa Tengah', 3301122809090002, 'Turiman', 'Soliyah', 'MTs NURUL HUDA KARANGPUCUNG', NULL, 'storage/akta/EcWqrUSQLncAcocSXx1dSasy6TbelZK00SY6kuTN.jpg', 'storage/kk/PpAT0RHFEIH4IjxFXlBbmnt8dSRZqwxnlhtie1Zu.jpg', NULL, NULL, 'qr_code/REG-00319.svg', '2025-11-23 11:48:12', '2025-11-24 02:19:13'),
(320, 'REG-00320', 9704463, 61, 'Alysa Aulia', '3301126905110001', 'Pemasaran', 'P', 'Cilacap', '2011-05-29', '6288812669209', 'Kawungcarang rt 01 rw 06', 'Islam', 'Pangawaren', 'Karangpucung', 'Cilacap', 'Jawa tengah', 3301122209110002, 'Andi', 'Ponirah', 'MTs NURUL HUDA KARANGPUCUNG', NULL, 'storage/akta/BLZwed3TBHvAy04MTSyQCpyPBKNL4dRDd0f7pbLS.jpg', 'storage/kk/iHNQHiQLpox1O6g7lKceTruoRkzh7OsPUvMLNWZ6.jpg', NULL, NULL, 'qr_code/REG-00320.svg', '2025-11-24 10:22:47', '2025-11-24 23:47:03'),
(321, 'REG-00321', 9704464, 61, 'Wisnu isma pratama', '3301120503110001', 'Teknik Kendaraan Ringan', 'L', 'Cilacap', '2011-03-05', '6288812669209', 'Kawungcarang rt 01 rw 06', 'Islam', 'Pangawaren', 'Karangpucung', 'Cilacap', 'Jawa tengah', 3301120811110003, 'Maniso', 'Sartimah', 'SMP NEGERI 1 KARANGPUCUNG', NULL, 'storage/akta/89Kxq8FsZ7cT7zY4qqtUNOr41zFIupZzFtGR4mU0.jpg', 'storage/kk/jTRWWFpx9PoN0Zpxz16oOc7C9gDJ82ODP3h6T2EQ.jpg', NULL, NULL, 'qr_code/REG-00321.svg', '2025-11-24 11:03:48', '2025-11-24 23:47:47'),
(322, 'REG-00322', 9704465, 61, 'Azizah', '3301125811100001', 'Pemasaran', 'P', 'Cilacap', '2010-11-16', '6288812669209', 'Kawungcarang rt 01 rw 06', 'Islam', 'Pangawaren', 'Karangpucung', 'Cilacap', 'Jawa tengah', 3301121404100009, 'Wardikin', 'Sunoh', 'MTs NURUL HUDA KARANGPUCUNG', NULL, 'storage/akta/DH0BmmiA66PTf9w83eSO0b7nXFdwluE1S2ZAPnty.jpg', 'storage/kk/c3BXBAykmAEGPccYKf7obY2Jn0EuTCIpUFG98F2W.jpg', NULL, NULL, 'qr_code/REG-00322.svg', '2025-11-24 11:45:23', '2025-11-24 23:47:33'),
(323, 'REG-00323', 9704466, 81, 'MA\'RUF NURCAHYO', '3301100304110001', 'Teknik Kendaraan Ringan', 'L', 'CILACAP', '2011-04-03', '628816427209', 'RT 05 RW 03', 'Islam', 'Karanggintung', 'Gandrungmangu', 'Cilacap', 'Jawa Tengah', 3301101403110006, 'BARYANTO', 'MUH HIKMAH', 'MTSN 2 CILACAP', NULL, 'storage/akta/iYUtbQQF1G1h4JNY2heoK87mBwnuCjBjOb3w1LzO.jpg', 'storage/kk/JaCtx45zG6cVLNyCRcs5NPVbI0mf9QSSGm1SEUtz.jpg', NULL, NULL, 'qr_code/REG-00323.svg', '2025-11-25 04:23:44', '2025-11-26 03:59:37'),
(324, 'REG-00324', 9704467, 71, 'Kumara Mamdu Zakaria', '3301133112090006', 'Teknik Kendaraan Ringan', 'L', 'Cilacap', '2009-12-31', '6282138655939', 'Sudimara rt 02 rw 07', 'Islam', 'Bantarmangu', 'Cimanggu', 'Cilacap', 'Jawa Tengah', 3301130310110003, 'Paniardi al sodikin', 'Sugiarti', 'SMP RADEN FATAH CIMANGGU', NULL, 'storage/akta/y00qzdUkSgUJMiMOJAGxrVV0LOJyAObn6V6alLdO.jpg', 'storage/kk/LZoBeWNAeBPfrhAGFC48P8n26rnLTf9s8Zl1y3lI.jpg', NULL, NULL, 'qr_code/REG-00324.svg', '2025-11-27 11:37:54', '2025-11-27 23:47:19'),
(325, 'REG-00325', 9704468, 71, 'Adilla Pratama', '3301131209100001', 'Pemasaran', 'P', 'Cilacap', '2010-09-12', '6282138655939', 'Lengkong rt 01 rw 03', 'Islam', 'Mandala', 'Cimanggu', 'Cilacap', 'Jawa Tengah', 3301132909100015, 'Karyoto', 'Wahyuni', 'SMP RADEN FATAH CIMANGGU', NULL, 'storage/akta/znq6IYunC2XoH0LpMJlAiAZ8mOgPqfjlg1lTPPcG.jpg', 'storage/kk/x2Ue55CkwVGRlvWns3yARgXljhPlnb1H7oE3RbEV.jpg', NULL, NULL, 'qr_code/REG-00325.svg', '2025-11-27 11:45:09', '2025-11-27 23:46:46'),
(326, 'REG-00326', 9704469, 82, 'cahyana setiawan', '3301120106100003', 'Teknik Sepeda Motor', 'L', 'cilacap', '2010-06-01', '6281215027633', 'dusun cijoli', 'islam', 'karangpucung', 'karangpucung', 'cilacap', 'jawa tengah', 3301121803090023, 'katam', 'indriyani', 'SMP NEGERI 1 KARANGPUCUNG', NULL, 'storage/akta/09eKaTHEttIQrrIKQosUx8BAlhmh5cqviLlChEFa.jpg', 'storage/kk/DFNKVPNQAIwPOGJL7gXRjWDX5LZF8wfm46AmmZRN.jpg', 'storage/kip/2dtW66pjlj2UoyfFK5hHbkcBYyDduN0XlH1KwQwS.jpg', NULL, 'qr_code/REG-00326.svg', '2025-11-27 11:57:47', '2025-11-27 23:47:01'),
(327, 'REG-00327', 9704470, 62, 'Juli Saputra', '3301122607100002', 'Teknik Sepeda Motor', 'L', 'Cilacap', '2010-07-26', '6283879009055', 'Dusun Cijoli RT 04/RW 02', 'Islam', 'Karangpucung', 'Karangpucung', 'Cilacap', 'Jawa Tengah', 3301122209100005, 'Tamsun', 'Suprihatin', 'SMP NEGERI 1 KARANGPUCUNG', NULL, 'storage/akta/I6DOkOZUQdPnkdUSl1WyXEtXhGrgGdt5MrWEFrG3.jpg', 'storage/kk/WSBGTvAsaxUrAoc0OtLRNule5tX3jELywjmruiuE.jpg', NULL, NULL, 'qr_code/REG-00327.svg', '2025-11-27 13:06:55', '2025-11-27 23:47:08'),
(328, 'REG-00328', 9704471, 79, 'Anisa', '3301135710100002', 'Belum Memilih', 'P', 'Cilacap', '2010-10-17', '6287805773479', 'Dusun Napel RT 1 RW 3', 'Islam', 'Cisalak', 'Cimanggu', 'Cilacap', 'Jawa Tengah', 3301132203080018, 'Surkim', 'Raswen', 'SMP PGRI 18 CIMANGGU', 'storage/foto/85TKEx9E4yuBDD1w1XHC0ncCzN8ZN3tp5Er1HEpa.jpg', 'storage/akta/pCbj3yjZ1rZ2GUPwOaD8zPv7DDkIvdqSi7sgkPNJ.jpg', 'storage/kk/6Hoq74fk24WCiDJtAKINwyiyvFOLyzaKRM55JOwH.jpg', 'storage/kip/hzNrZSMT2Sh8kZ58KsUv2PtrUQX37QAEZjpXPL96.jpg', NULL, 'qr_code/REG-00328.svg', '2025-11-28 10:34:49', '2025-11-29 13:11:53'),
(329, 'REG-00329', 9704472, NULL, 'ALDI SATRIA RAHMADANI', '3301121208100003', 'Teknik Sepeda Motor', 'L', 'Cilacap', '2010-08-12', '6283172613376', 'Grunggang', 'Islam', 'Bungbulang', 'Karang Pucung', 'Cilacap', 'Jawatengah', 3301120503080040, 'Sukman', 'Karnem', 'MTSN 2 CILACAP', NULL, 'storage/akta/VEZWEI6cGRzhDqzPicx5Img25qTu8TOBnsBDsXrB.jpg', 'storage/kk/jhPqtoKALMtL6ndDQNkQr8ddNB8BopofAAzW3Hnm.jpg', NULL, NULL, 'qr_code/REG-00329.svg', '2025-11-28 12:23:31', '2025-11-30 13:24:49'),
(330, 'REG-00330', 9704473, 39, 'Ajeng Nurul A\'ini', '3301135301110001', 'Belum Memilih', 'P', 'Cilacap', '2011-01-13', '6283866767433', 'Panusupan RT 02 RW 08', 'Islam', 'Cimanggu', 'Cimanggu', 'Cilacap', 'Jawa Tengah', 3301132205070002, 'Nurhasani', 'Nasriah', 'MTs PESANTREN PEMBANGUNAN MAJENANG', NULL, 'storage/akta/frnNjZjjbup8a0En1kcGpMgWoKrVHFeQVqJFyHnq.jpg', 'storage/kk/PpayGKMxv0vs28JF1AXRuy6EXtvl4iF7POfp2uXh.jpg', NULL, NULL, 'qr_code/REG-00330.svg', '2025-12-01 13:18:05', '2025-12-03 12:14:42'),
(331, 'REG-00331', 9704474, 72, 'Jesica Putri Anggraeni', '3301125102110001', 'Teknik Kendaraan Ringan', 'P', 'Cilacap', '2011-02-11', '6282257969285', 'Dusun Cijeruk Rt 04 Rw. 09', 'Islam', 'Surusunda', 'Karangpucung', 'Cilacap', 'Jawa Tengah', 3301125102110001, 'Andi Ismail', 'Eni Suheni', 'SMP MUHAMMADIYAH 1 KARANGPUCUNG', NULL, 'storage/akta/QL3XEiiinXgE6VmstF1RxDhTOhpt91teGyyeSDHo.jpg', 'storage/kk/dmatZapaphK0az3CCcCqjCnUSfg2JzXavJXKfLrV.jpg', NULL, NULL, 'qr_code/REG-00331.svg', '2025-12-03 12:12:53', '2025-12-03 12:14:46'),
(332, 'REG-00332', 9704475, 22, 'SILVA NUR AISAH', '3301106705110002', 'Pemasaran', 'P', 'CILACAP', '2011-05-27', '6283852159701', 'Dusun Margasari Rt08 Rw02', 'Islam', 'Rungkang', 'Gandrungmangu', 'Cilacap', 'Jawa Tengah', 3301102508220003, 'Dasman', 'Kamisah', 'SMP NEGERI 3 SIDAREJA', NULL, 'storage/akta/ZxYeOO7VdsXs1yVSSNJbsVMlgN1OFQm7aDt8tjhM.jpg', 'storage/kk/aAxz0JeNLBZztoGVusMIV1z9bzJjhSQmwtoQCKcb.jpg', NULL, NULL, 'qr_code/REG-00332.svg', '2025-12-06 12:06:53', '2025-12-06 12:07:15'),
(333, 'REG-00333', 9704476, 36, 'Sevia Rindiani', '3301205712110002', 'Pemasaran', 'P', 'Cilacap', '2011-12-17', '6282228309639', 'Dusun watesari RT06/01', 'Islam', 'Citembong', 'Bantarsari', 'Cilacap', 'Jawa Tengah', 3301201402080001, 'Warso', 'Kasmiah', 'SMP Negeri 1 Satap Bantarsari', 'storage/foto/WREHnBUp0EQNK4EDhUbJA5Y9a6CKorD4R0rbZsfj.jpg', 'storage/akta/GA2Cs923j9QwLnVqJHQzh16O1r6PGznkjvyt6Vh9.jpg', 'storage/kk/jqm5JEzAaMLnrYS48o18beuR5bHVQfceiaRZBIDX.jpg', 'storage/kip/WGdkSDSpF2jFJyI3GvYwe8LZAmaL0TyHr1O9n1py.jpg', NULL, 'qr_code/REG-00333.svg', '2025-12-06 13:10:18', '2025-12-08 02:22:37'),
(334, 'REG-00334', 9704477, 61, 'Rakha aditya pratama', '3301122109100004', 'Teknik Kendaraan Ringan', 'L', 'Cilacap', '2010-09-21', '6288812669209', 'Kawungcarang rt 02 rw 07', 'Islam', 'Pangawaren', 'Karangpucung', 'Cilacap', 'Jawa tengah', 3301121312220002, 'Eko priyono', 'Lilis wulandari', 'SMP NEGERI 1 KARANGPUCUNG', NULL, 'storage/akta/J1v9I4IgfwXylShWk69CCDYIkKHi5JCB59m7jlFS.jpg', 'storage/kk/uhAUDpnjCm1D5dlhdTtEFhX27ZNB73xTh4qjDmYL.jpg', NULL, NULL, 'qr_code/REG-00334.svg', '2025-12-06 22:35:45', '2025-12-08 02:22:08'),
(335, 'REG-00335', 9704478, 61, 'Muhamad nur kholik', '3301121402080037', 'Teknik Kendaraan Ringan', 'L', 'Cilacap', '2010-09-24', '6288812669209', 'Kawungcarang rt 02 rw 07', 'Islam', 'Pangawaren', 'Karangpucung', 'Cilacap', 'Jawa tengah', 3301121402080037, 'Karsono', 'Yuyun triyana', 'SMP NEGERI 1 KARANGPUCUNG', NULL, 'storage/akta/uVGcF0lPAId51MMdVXYhwcz9mLS0s9QyZtAvPSZg.jpg', 'storage/kk/hKu4ZwT3bWY3SNVZ8Iu57xwP5gUBs5xIm6yG9Mk1.jpg', NULL, NULL, 'qr_code/REG-00335.svg', '2025-12-06 22:39:33', '2025-12-08 02:21:15'),
(336, 'REG-00336', 9704479, 61, 'Meisya kanza adzani', '3301205005110001', 'Akuntansi', 'P', 'Cilacap', '2011-05-10', '6288812669209', 'Bonjoksaga rt 01 rw 03', 'Islam', 'Citembong', 'Bantarsari', 'Cilacap', 'Jawa tengah', 3301200909110001, 'Sirin', 'Darmiyati', 'SMP Negeri 1 Satap Bantarsari', NULL, 'storage/akta/PuFat9w2oRhzrfTHwC7rLpHMhNe9NrSk0LDankwR.jpg', 'storage/kk/6nvFbka3LPsdmX7Ho4j9GE7iBXRkAdnszXflHeBm.jpg', NULL, NULL, 'qr_code/REG-00336.svg', '2025-12-07 00:28:13', '2025-12-08 02:20:48'),
(337, 'REG-00337', 9704480, 69, 'Ruli Herawati', '3301126707100001', 'Pemasaran', 'P', 'Cilacap', '2010-07-27', '6285876515736', 'Cijoli RT 002/001', 'Islam', 'Karangpucug', 'Karangpucung', 'Cilacap', 'Jawa Tengah', 3301122503090039, 'Trisno', 'Kurniati', 'SMP NEGERI 1 KARANGPUCUNG', 'storage/foto/eHZIAaMCWeFPXkVMxSs6XSJpcIFwJ3pYV08Vsg43.jpg', 'storage/akta/RwZqVbdqT8l1bVFd99nUCsby1JhAyxO5E2dkCjks.jpg', 'storage/kk/Mfdj95yssWFoJ0F53Xg3EqlyMSq3jKII7PcDGAnB.jpg', NULL, NULL, 'qr_code/REG-00337.svg', '2025-12-08 13:48:32', '2025-12-09 02:10:28'),
(338, 'REG-00338', 9704481, 43, 'CHIKA OKTAVIANI', '3301135510091002', 'Teknik Komputer dan Jaringan', 'P', 'Cilacap', '2009-10-15', '6285780685770', 'Ciporos', 'Islam', 'Ciporos', 'Karangpucung', 'Cilacap', 'Jawa tengah', 3173041705220010, 'Turimin', 'Daryani', 'SMP NEGERI 1 CIMANGGU', NULL, 'storage/akta/FRM6sgmx0BoZgiyxehLHU36nzASNhSxw3katcjVc.jpg', 'storage/kk/TKZU1pRUSSIAPXWKrhwL5QqISwOgshIEQXBM4r8O.jpg', NULL, NULL, 'qr_code/REG-00338.svg', '2025-12-10 04:17:29', '2025-12-15 03:01:21'),
(339, 'REG-00339', 9704482, 68, 'Arfan Chaerul Azzam', '3304112910100004', 'Teknik Sepeda Motor', 'L', 'Banjarnegara', '2010-10-29', '6283165011827', 'Dusun Jeger RT 008/001', 'Islam', 'Tayem Timur', 'Karangucung', 'Cilacap', 'JAWA TENGAH', 3301121011140006, 'Hartato', 'Suryani', 'SMP JENDERAL AHMAD YANI KARANGPUCUNG', NULL, 'storage/akta/VFV8TGxEyCEpg81qUG5TU3bHAVFiOIJk9TlItTqd.jpg', 'storage/kk/E3843LOKsfByk2bXeuYPVGkOxwcNFS3U2IrFHFpX.jpg', NULL, NULL, 'qr_code/REG-00339.svg', '2025-12-12 02:55:29', '2025-12-13 08:28:38'),
(340, 'REG-00340', 9704483, 87, 'Yolanda Navisa Al shihab', '3301132811110004', 'Belum Memilih', 'P', 'Cilacap', '2011-11-28', '6283856709868', 'Cimanggu', 'Islam', 'Cimanggu', 'Cimanggu', 'Cilacap', 'Jawa tengah', 3301130206160004, 'Rohadi yusuf', 'Juyati', 'SMP DIPONEGORO CIMANGGU', 'storage/foto/lwe6RYBt1wJAEjdoKxnMZI7art4mC0JwjuT9PX4X.jpg', 'storage/akta/BUOpjx6YhUbgAUZbNAgPMXz6j061D9FCcrBPwLH8.jpg', 'storage/kk/jQ0NHBW0lzFhFERCOcnjhtVbfD6gupIowe6O12LS.jpg', NULL, NULL, 'qr_code/REG-00340.svg', '2025-12-15 01:59:47', '2025-12-15 02:11:51'),
(341, 'REG-00341', 9704484, 68, 'Maimunah Musiam', '9111056208100002', 'Teknik Kendaraan Ringan', 'P', 'Keerom, provinsi Papua', '2010-08-22', '628816508964', 'Jl perkutut arso XIII RT009/003', 'Islam', 'Naramben', 'Skanto', 'Keerom', 'Papua', 9111051809120009, 'Sudiyarto Kadis', 'Sudiyati', 'SMP JENDERAL AHMAD YANI KARANGPUCUNG', NULL, 'storage/akta/TW2t4TM88uf1ssQNGuEJFERe3DpAfY5XGUrBQkp5.jpg', 'storage/kk/kQuqFXtHDT6cNWicg5SO2n9ssuvO5Fe4XAEtb4Ub.jpg', NULL, NULL, 'qr_code/REG-00341.svg', '2025-12-15 02:37:32', '2025-12-15 02:41:31'),
(342, 'REG-00342', 9704485, 64, 'Mila Veritasari', '3301016406100003', 'Pemasaran', 'P', 'Cilacap', '2010-06-24', '628895594489', 'Dsn . Tritih RT.003/003', 'Islam', 'Jatisari', 'Kedungreja', 'Cilacap', 'Jawa Tengah', 3301010809100002, 'Ponidi', 'Ambar Siti Zaenah', 'SMP NEGERI 2 KEDUNGREJA', NULL, 'storage/akta/nQPvJHwUQLpJrjvbUzFWX3meszvNSz5Hse9pxZ6U.jpg', 'storage/kk/R7WPPGKTbePSvUUAFMJysCxGeoeCnApQ3mKDLhrw.jpg', NULL, NULL, 'qr_code/REG-00342.svg', '2025-12-15 12:02:47', '2025-12-16 11:53:15'),
(343, 'REG-00343', 9704486, 61, 'Siti Nur Afizah', '3301124504110003', 'Pemasaran', 'P', 'Cilacap', '2011-04-05', '6288812669209', 'Dusun pesanggrahan rt 03 rw 06', 'Islam', 'Ciporos', 'Karangpucung', 'Cilacap', 'Jawa tengah', 3301121711170004, 'Lutfie purwono', 'Widyaningsih', 'MTs NURUL HUDA KARANGPUCUNG', NULL, 'storage/akta/kaLXp6JUwJqLW0D37cNQoyRKpcTwLhlUqkGGiFLN.jpg', 'storage/kk/ObOkHbJ36Lx57dtZJJr4y2IEKWFm18RpZ4szJwdI.jpg', NULL, NULL, 'qr_code/REG-00343.svg', '2025-12-19 12:30:49', '2025-12-22 04:17:35'),
(344, 'REG-00344', 9704487, 71, 'Haykal Ramadhan', '3301122708110001', 'Teknik Sepeda Motor', 'L', 'Cilacap', '2011-08-27', '6285712204920', 'Bengbulang rt 01 rw 07', 'Islam', 'Bengbulang', 'Karangpucung', 'Cilacap', 'Jawa tengah', 3301121210110010, 'Hermawan', 'Yuniati', 'SMP NEGERI 2 KARANGPUCUNG', NULL, 'storage/akta/u1YoduICkQLMrXHCknQBGAQl846aBzmO6MIZkCgs.jpg', 'storage/kk/vH0hnz7tWwip9Nu1UtOMUqCNufqD7Ppl3DfmTdpC.jpg', NULL, NULL, 'qr_code/REG-00344.svg', '2025-12-20 05:25:28', '2025-12-22 04:16:32'),
(345, 'REG-00345', 9704488, 31, 'SHOFI ZAINA  IBTISAMAH', '3301125603110002', 'Pemasaran', 'P', 'Cilacap', '2011-03-16', '62882006947565', 'Ciraja', 'Islam', 'Ciporos', 'Karangpucung', 'Cilacap', 'Jawa Tengah', 3301121409120003, 'Susilo', 'Neneng  Mardiyatun', 'MTSN 2 CILACAP', NULL, 'storage/akta/sLJ60bH4DUEI035n3Z6QKP3BCi2l3RvlEcjLNbm9.jpg', 'storage/kk/Ik73zlH0f3jFmQn3AfrWgUkdKThTRFRuSxHveadj.jpg', NULL, NULL, 'qr_code/REG-00345.svg', '2025-12-22 03:10:43', '2025-12-22 04:17:04'),
(346, 'REG-00346', 9704489, 69, 'Syarif Nur Kholiq', '3301121606110002', 'Teknik Sepeda Motor', 'L', 'Cilacap', '2011-06-16', '62882003262883', 'Dusun Karanganyar Rt 006 RW 003', 'Islam', 'Tayem Timur', 'Karangpucung', 'Cilacap', 'Jawatengah', 3301120108110005, 'Karim', 'Komyati', 'SMP NEGERI 1 KARANGPUCUNG', 'storage/foto/cWUg20StusdGI5Q4osJt5A2YK9DJfoojLkVi2Dha.jpg', 'storage/akta/ovgqp9wGtP5n5yd2Nai8yKVCRut971QgnhKOaDVv.jpg', 'storage/kk/ouA3rIuQnIFIlmta0uYcOadN0ihStPN7l5liNudQ.jpg', 'storage/kip/vCZHgoRw4PBnlFqqHfYvA9ATdP4GGtIwt2fOCXSI.jpg', NULL, 'qr_code/REG-00346.svg', '2025-12-22 09:14:22', '2025-12-25 12:27:41'),
(347, 'REG-00347', 9704490, 69, 'Arya Agus Ramadan', '3301121208110003', 'Teknik Kendaraan Ringan', 'L', 'Cilacap', '2011-08-11', '6283846860132', 'Dusun Karanganyar Rt 005 RW 003', 'Islam', 'Tayem Timur', 'Karangpucung', 'Cilacap', 'Jawatengah', 3301122302150010, 'Muhammad Taufik', 'Romyati', 'SMP NEGERI 1 KARANGPUCUNG', 'storage/foto/QCLv0CktLSxip1ZzGivuUIevflh0fMgCvtd57yT3.jpg', 'storage/akta/JZIvLafcmUESQh86o4sMRHiQ3zLeE8ClHLuUskaO.jpg', 'storage/kk/NFHgbJTvF36lSBkHeHr7iElq8m55hGQq8ojt2Kgq.jpg', 'storage/kip/KJ7vbKUx62Dy1nfYYK2d1VRe9xgel0SgGg6yrCK5.jpg', NULL, 'qr_code/REG-00347.svg', '2025-12-22 10:52:00', '2025-12-25 12:26:45'),
(348, 'REG-00348', 9704491, 69, 'Alfin Aditia prayuda', '3301102310100002', 'Teknik Kendaraan Ringan', 'L', 'Cilacap', '2010-10-23', '62882006770536', 'Karanggintung', 'Islam', 'Karanggintung', 'Gandrungmangu', 'Cilacap', 'Jawatengah', 3301102711120008, 'Kusno', 'Kurniawati', 'SMP PGRI 6 GANDRUNGMANGU 2', 'storage/foto/mKdGP3GAPFIs4goIj4I3urvPmfH9S7HA38fjOiI7.jpg', 'storage/akta/2VVXyHYUCfNybl7mFqMh7SaKTWQKlpMYiaTY529C.jpg', 'storage/kk/6YRRXFIAMiEDxrFTVU3YN3Q67i4MnBT1frtIXfjH.jpg', 'storage/kip/i7AZCtDmeNj26GVTkFvGwqkcBrAFiOkhKYFBvcwk.jpg', NULL, 'qr_code/REG-00348.svg', '2025-12-24 05:15:55', '2025-12-25 12:25:14'),
(349, 'REG-00349', 9704492, 80, 'AHNAV BAHTIAR NUGROHO', '3302012309100001', 'Teknik Komputer dan Jaringan', 'L', 'BANYUMAS', '2010-09-23', '6282138654237', 'DERMAJI RT 03 RW 04', 'ISLAM', 'DERMAJI', 'LUMBIR', 'BANYUMAS', 'Jawa Tengah', 3302010501210002, 'TARSIWEN', 'TARSIWEN', 'SMP Negeri 3 Lumbir', NULL, 'storage/akta/WlpcokfxtrFfSju4PIyPZgasnQr2rjLPYYQ9CEgl.jpg', 'storage/kk/wHAscLNaACese0JvbXMJRsSxhwhBTftVJclef1T2.jpg', NULL, NULL, 'qr_code/REG-00349.svg', '2025-12-25 12:08:16', '2025-12-25 12:24:37'),
(350, 'REG-00350', 9704493, 80, 'ISMAIL ADITIA', '3302011510100003', 'Teknik Komputer dan Jaringan', 'L', 'Kab. Banyumas', '2010-10-15', '6285944607908', 'DERMAJI RT 03 RW 04', 'ISLAM', 'DERMAJI', 'LUMBIR', 'BANYUMAS', 'Jawa Tengah', 3302013101059750, 'KARSITO SUBEKTI', 'SUYATMI', 'SMP Negeri 3 Lumbir', NULL, 'storage/akta/hUPNDjqb8GSBvAecfkJGj4KDRc5pqOjNl97TYq1f.jpg', 'storage/kk/eb4nS1Q6gSRWpylPfdCdHwOC9SSqdx5POTPzKMNQ.jpg', NULL, NULL, 'qr_code/REG-00350.svg', '2025-12-25 12:14:17', '2025-12-25 12:27:22'),
(351, 'REG-00351', 9704494, 80, 'LIVIA NUR KOLIFAH', '3302015801110002', 'Belum Memilih', 'P', 'Kab. Banyumas', '2011-01-18', '6282136353723', 'DERMAJI RT 05 RW 04', 'ISLAM', 'DERMAJI', 'LUMBIR', 'BANYUMAS', 'Jawa Tengah', 3302012508110001, 'KASTO', 'ROHMAH', 'SMP Negeri 3 Lumbir', NULL, 'storage/akta/r8GjZybwvJqSNzGHzxt9lpsv9Jx9CV566oMcs7p4.jpg', 'storage/kk/LDNQotwjwz7Aizk1IPJAipbMagrv6TosnPszEyMG.jpg', NULL, NULL, 'qr_code/REG-00351.svg', '2025-12-25 12:19:21', '2025-12-25 12:27:05'),
(352, 'REG-00352', 9704495, 85, 'OCTAVIANA PUTRI', '3302015810100001', 'Belum Memilih', 'P', 'Kab. Banyumas', '2010-10-28', '6282241135300', 'DERMAJI RT 03 RW 04', 'ISLAM', 'DERMAJI', 'LUMBIR', 'BANYUMAS', 'Jawa Tengah', 3302010708060007, 'HARIYANTO', 'SUKINI', 'SMP Negeri 3 Lumbir', NULL, 'storage/akta/xycyt3r2PK0pt7CUvi73GScbnxj6AV5stU240U67.jpg', 'storage/kk/rc0rMxkXYEa6Je0aq10wyOdxXDV7mHRO5xEk45rz.jpg', NULL, NULL, 'qr_code/REG-00352.svg', '2025-12-25 12:34:18', '2025-12-25 12:35:36'),
(353, 'REG-00353', 9704496, 85, 'RANGGA SYAH PUTRA', '3302012911100001', 'Teknik Sepeda Motor', 'L', 'Kab. Banyumas', '2010-11-29', '6282141776815', 'DERMAJI RT 03 RW 05', 'ISLAM', 'DERMAJI', 'LUMBIR', 'Kab. Banyumas', 'Jawa Tengah', 3302013001230003, 'JUMINAH', 'JUMINAH', 'SMP Negeri 3 Lumbir', NULL, 'storage/akta/SxTLvxGPE6KONGMJV5y0tsY5vOub8Fhf53BC3Q8f.jpg', 'storage/kk/AMMhnAC8M3dSLYANdRC15KG3BdlvShNN7Tt2tF66.jpg', NULL, NULL, 'qr_code/REG-00353.svg', '2025-12-25 12:41:17', '2025-12-25 13:35:55'),
(354, 'REG-00354', 9704497, 85, 'TRIANTONO', '3302012703100001', 'Teknik Komputer dan Jaringan', 'L', 'Kab. Banyumas', '2010-03-27', '6282323152070', 'DERMAJI RT 03 RW 04', 'ISLAM', 'DERMAJI', 'LUMBIR', 'BANYUMAS', 'Jawa Tengah', 3302012208060003, 'KUSMINTO KASNO', 'SAMINAH', 'SMP Negeri 3 Lumbir', NULL, 'storage/akta/kleEowqYV4bGxErdNY2vaX1Tl44bvxs2LBFZCkwG.jpg', 'storage/kk/fnkpAeXqKalH880pUffQ1m03LvbLqdbGV6kkXVSc.jpg', NULL, NULL, 'qr_code/REG-00354.svg', '2025-12-25 13:45:18', '2025-12-25 13:45:32'),
(355, 'REG-00355', 9704498, 73, 'Willdhan Dwi Cahya', '3301130904110006', 'Teknik Kendaraan Ringan', 'L', 'cilacap', '2011-04-09', '62882006336903', 'cilingga', 'islam', 'Nambo', 'Cimanggu', 'cilacap', 'Jawa Tengah', 3301130403090010, 'supriono', 'ningsih', 'SMP NEGERI 1 CIMANGGU', NULL, 'storage/akta/Bt7lalIKiqnbUXEjP35q0qfgfc8trA4qK8eZ92nj.jpg', 'storage/kk/8LDm5WbrzNdIQ3ZMvHCMJNhuzrjduXS5gCZjKxLV.jpg', NULL, NULL, 'qr_code/REG-00355.svg', '2025-12-26 12:02:39', '2026-01-01 01:46:31'),
(356, 'REG-00356', 9704499, 69, 'Wahid Bustanul Firdaus', '3301100303110001', 'Teknik Kendaraan Ringan', 'L', 'Cilacap', '2011-03-03', '6285198204476', 'Karanggintung RT 010 RW 003', 'Islam', 'Karanggintung', 'Gandrungmangu', 'Cilacap', 'Jawatengah', 3301100706180008, 'Saryoko', 'Marjannah', 'SMP NEGERI 3 GANDRUNGMANGU', 'storage/foto/RTz3g5nyfxjr3TaDv2suGRyoW21DKwWoDp8I76Hc.jpg', 'storage/akta/fUNJKaTOXeqMfhDYtYAbyfUMdR30DlSken43hXP0.jpg', 'storage/kk/gNq5wJhImJ5yIVpEB60XOQLxEncP4uedrnR661Dp.jpg', 'storage/kip/b1L5lBDXzoI1XWyJTEKCHd8Ie7T2HG9yHf7lHQOL.jpg', NULL, 'qr_code/REG-00356.svg', '2025-12-26 12:12:02', '2026-01-01 01:25:41'),
(357, 'REG-00357', 9704500, 44, 'MAULANA DAVIANSYAH', '3301192322100002', 'Teknik Sepeda Motor', 'L', 'Cilacap', '2010-12-23', '6285119626321', 'RT 04 RW 02', 'Islam', 'Citembong', 'Bantarsari', 'Cilacap', 'Jawa Tengah', 3301202605250006, 'Ridwan', 'Rina', 'SMP Negeri 1 Satap Bantarsari', NULL, 'storage/akta/MoNUMgyHKZW1Ux0xb30GlNEByqE86iJUJ3nBxvm5.jpg', 'storage/kk/fM7w7uNeVrrSH1a44sR1Nb5n9FfuMxnUdYGlmtl6.jpg', NULL, NULL, 'qr_code/REG-00357.svg', '2025-12-28 04:33:48', '2026-01-01 01:24:52'),
(358, 'REG-00358', 9704501, 68, 'Ardiansyah Sahrul Barokah', '3301122508100003', 'Teknik Sepeda Motor', 'L', 'Cilacap', '2010-08-25', '6283161144718', 'Dusun Cipicung rt 01/ 06', 'Islam', 'Bengbulang', 'Karangucung', 'Cilacap', 'JAWA TENGAH', 3301120907080015, 'Supriyanto', 'Karinah', 'SMP NEGERI 2 KARANGPUCUNG', NULL, 'storage/akta/caM4ZCHZLUAnmMLsVV1smZk5P20KLBl6u4i09KR8.jpg', 'storage/kk/t5JugcYCmYhaxlSYuteoFzEz7gPnhj0gNHqOT4j1.jpg', 'storage/kip/tPozuB2HJq70dWpgU1fyCiTaoR10LZonC045Rx5U.jpg', NULL, 'qr_code/REG-00358.svg', '2026-01-01 00:54:03', '2026-01-01 01:23:51'),
(359, 'REG-00359', 9704502, 60, 'ALENA CEMPAKA', '3301124301110003', 'Teknik Kendaraan Ringan', 'P', 'Cilacap', '2011-01-03', '6283861732752', 'Dusun Karangmangun RT 04 RW 10', 'Islam', 'Pangawaren', 'Karangpucung', 'Cilacap', 'Jawa Tengah', 3301121802190002, 'Suparno Paino', 'Tikem', 'SMP NEGERI 3 SATU ATAP KARANGPUCUNG', NULL, 'storage/akta/TFSSbNwhb0t0H0JWf6HXshDi0eaxsk5h0ZyPSHnq.jpg', 'storage/kk/mcUO2AeC5iKp0AjbekpMGnJsvATxav4sPRg18R2n.jpg', NULL, NULL, 'qr_code/REG-00359.svg', '2026-01-02 09:06:39', '2026-01-02 09:35:25'),
(360, 'REG-00360', 9704503, 29, 'Windi Kosrini', '3301145908110002', 'Pemasaran', 'P', 'Cilacap', '2011-08-19', '6285942103515', 'Sindangsari RT 07 Rw 01', 'Islam', 'Sindangsari', 'Majenang', 'Cilacap', 'JAWA TENGAH', 3301141709130001, 'Engkos Koswara', 'Fiki Anisa', 'SMP DIPONEGORO CIMANGGU', NULL, 'storage/akta/Qju8Lfr9fiNZLzxA9Rgf6YifjmwgHPChsjMrMDwk.jpg', 'storage/kk/6b79fSBFZvn2O6PjXlciaYWEGefSbzaUrq68M1r5.jpg', NULL, NULL, 'qr_code/REG-00360.svg', '2026-01-03 14:03:36', '2026-01-04 01:40:05'),
(361, 'REG-00361', 9704504, 54, 'Saskia Ike Kalista', '3301127011100003', 'Akuntansi', 'P', 'Cilacap', '2010-11-30', '6281347863323', 'Ciporos 03/014', 'Islam', 'Ciporos', 'Karangpucung', 'Cilacap', 'Jawa tengah', 3301121006080053, 'Watiman hardiman', 'Sutriyanti', 'SMP NEGERI 2 KARANGPUCUNG', NULL, 'storage/akta/HJXmX8JHhziobWeH9L3VrcB5yFf6pykYtB4c5Edw.jpg', 'storage/kk/ChlzcxtvrIAnhj8c3yDzZaGxVuZMSmMfeah5gqwn.jpg', NULL, NULL, 'qr_code/REG-00361.svg', '2026-01-05 01:13:36', '2026-01-05 04:47:24'),
(362, 'REG-00362', 9704505, 54, 'Rifa Azzahra Wijayanti', '3301136012110001', 'Akuntansi', 'P', 'Cilacap', '2011-12-20', '628211537676', 'Cisalak 02/01', 'Islam', 'Cisalak', 'Cimanggu', 'Cilacap', 'Jawa tengah', 3301132206200005, 'Eko Ruhanto', 'Erna Barokah wijayanti', 'SMP PGRI 18 CIMANGGU', NULL, 'storage/akta/U3KTR5WCOViEGIIUCe11x6KiDcoFajyLEyKT4aNt.jpg', 'storage/kk/M4hux3SY0D1bWnH5WgHQ8dTT8gXqB7X0Qzkyq8El.jpg', NULL, NULL, 'qr_code/REG-00362.svg', '2026-01-05 10:04:05', '2026-01-06 00:02:49'),
(363, 'REG-00363', 9704506, 71, 'Ayu Puspita Sari', '3301124408110003', 'Pemasaran', 'P', 'Cilacap', '2011-08-04', '6285183704511', 'Cieaja rt 02 rw 013', 'Islam', 'Ciporos', 'Cimanggu', 'Cilacap', 'Jawa Tengah', 3301121711250005, 'Kokom Cici Partimah', 'Kokom Cici Partimah', 'SMP NEGERI 2 KARANGPUCUNG', NULL, 'storage/akta/2gdwOnLxGdpdEzkn8l9qys7eFzjWpp4HGMei2jpM.jpg', 'storage/kk/bV1auqsbBHZRbYxuVyAexI7M03k0PaOHza0ytagJ.jpg', NULL, NULL, 'qr_code/REG-00363.svg', '2026-01-05 12:46:03', '2026-01-06 00:01:56'),
(364, 'REG-00364', 9704507, 54, 'Intan Khoerunnisa Ayuningtyas', '3301135402110002', 'Akuntansi', 'P', 'Cilacap', '2011-08-14', '6288988304136', 'Genteng 01/05', 'Islam', 'Panimbang', 'Cimanggu', 'Cilacap', 'Jawa tengah', 3301130106110007, 'Masruhin', 'Syariah', 'SMP RADEN FATAH CIMANGGU', NULL, 'storage/akta/Wccljsgp3zBoiEcDhi8Mi2ZBMqqjjS1U5rGNu2BB.jpg', 'storage/kk/LcxgjgzXC0uNL1nPx3fXW5WyHc7RjfGAKNb1ONii.jpg', NULL, NULL, 'qr_code/REG-00364.svg', '2026-01-05 14:52:09', '2026-01-06 00:02:23'),
(365, 'REG-00365', 9704508, 29, 'Kevin Pratama Aprilio', '3301102204110001', 'Teknik Sepeda Motor', 'L', 'Cilacap', '2011-04-22', '6285942103515', 'Dusun Karangtawang RT 11 RW 06 Desa Karanggintung, Gandrungmangu', 'Islam', 'Karanggintung', 'Gandrungmangu', 'Cilacap', 'JAWA TENGAH', 3301101009110001, 'Budiman', 'Susi Jeniyanti', 'MTSN 2 CILACAP', NULL, 'storage/akta/BzBBxWQODmCY32EA3Q7BlQl617D1lR1RKOV6lCEV.jpg', 'storage/kk/8UhWHNizKFxuAzH1vt8sxEDjMlWFc3skSmAmMTZY.jpg', 'storage/kip/bkyUllR91WiGy9kxIm4mh4fzgcpCZrrQrm5PGsoS.jpg', NULL, 'qr_code/REG-00365.svg', '2026-01-06 03:22:39', '2026-01-06 04:53:24'),
(366, 'REG-00366', 9704509, 71, 'Rizky Ardiansyah', '3301131511100005', 'Teknik Sepeda Motor', 'L', 'Bekasi', '2010-11-15', '6281330552959', 'Kp.Bali Pinggir Kali', 'Islam', 'Sagara Makmur', 'Taruma Jaya', 'Bekasi', 'Jawa Barat', 3301132711070002, 'Joko Sutrisno', 'Riya Irawan', 'SMP RADEN FATAH CIMANGGU', NULL, 'storage/akta/qVuA1OVWzEqgSd9MbdKC9Q1pdKVtN0IixkfOV0k0.jpg', 'storage/kk/DlT4w6rRfVhqWx3CEMEgkBYo8VwxNly6OtdlY0ma.jpg', NULL, NULL, 'qr_code/REG-00366.svg', '2026-01-06 04:45:21', '2026-01-06 04:53:28'),
(367, 'REG-00367', 9704510, 56, 'Zakiatul Marhamah', '3301125206110004', 'Akuntansi', 'P', 'Cilacap', '2011-06-12', '6281227119413', 'Dusun Cijoho RT 02/ RW 02', 'Islam', 'Tayem', 'Karangpucung', 'Cilacap', 'Jawa Tengah', 3301122107160002, 'Ratinah', 'Ratinah', 'MTs EL-BAYAN MAJENANG', NULL, 'storage/akta/vCcK5aUkZBeRuXmfCsapojKyeN7O1PkNZTOOk9Bj.jpg', 'storage/kk/1IZ3Zu6cxSHhn2vv06fbhtC1WfvonOQwG9GBhWMr.jpg', NULL, NULL, 'qr_code/REG-00367.svg', '2026-01-06 06:16:37', '2026-01-07 03:49:26'),
(368, 'REG-00368', 9704511, 56, 'Safira Nurazizah', '3301124711100001', 'Pemasaran', 'P', 'Cilacap', '2010-11-07', '6285810063589', 'Dusun Cijoho RT 02/ RW 02', 'Islam', 'Tayem', 'Karangpucung', 'Cilacap', 'Jawa Tengah', 3301121812060006, 'Suwardi Sarwono', 'Aminah', 'SMP NEGERI 2 KARANGPUCUNG', NULL, 'storage/akta/vebgU3yDDDBEJAoPrJXolY60VX4uDIkpWiCfg896.jpg', 'storage/kk/3Cl0QY5fD8zlGT1Blb68JgOzS91KieIrjW7jy0wO.jpg', NULL, NULL, 'qr_code/REG-00368.svg', '2026-01-06 08:43:49', '2026-01-07 03:49:23'),
(369, 'REG-00369', 9704512, 71, 'Ragil  Nursapta', '3301131702170004', 'Teknik Kendaraan Ringan', 'L', 'Cilacap', '2009-06-29', '6287836680859', 'Sudimara rt 04 rw 07', 'Islam', 'Bantarmangi', 'Cimanggu', 'Cilacap', 'Jawa Tengah', 3301131702170004, 'Diyan Priyana', 'Diyan Priyana', 'SMP RADEN FATAH CIMANGGU', NULL, 'storage/akta/qWeWKSuURGd5Ddvef2a7aAN4irrdwwV4IkmGL1Gq.jpg', 'storage/kk/55kqKbZ2wo49qQnY0ZfxQ35IdTNF363U5xGgQdRs.jpg', NULL, NULL, 'qr_code/REG-00369.svg', '2026-01-07 02:34:15', '2026-01-07 03:48:55'),
(370, 'REG-00370', 9704513, 26, 'Fricilia septiani', '3301136009110001', 'Pemasaran', 'P', 'Cilacap', '2011-09-10', '6282298235444', 'Gunung tiga, RT 04/03', 'IsIam', 'Bantarmangu', 'Cimanggu', 'Cilacap', 'Jawa Tengah', 3301132502090010, 'Kunkun kurniawan', 'Turyati', 'SMP RADEN FATAH CIMANGGU', NULL, 'storage/akta/frosHUDNQJGkICLfRH892SnFZeK4z7QiKpKiHoQn.jpg', 'storage/kk/pSpWsNR0AMXvhDuvSdqGOA2mUwCwGbHbMjAPf9e8.jpg', NULL, NULL, 'qr_code/REG-00370.svg', '2026-01-07 03:30:05', '2026-01-07 03:48:48'),
(371, 'REG-00371', 9704514, 29, 'Faqih Awaludin', '3301101109120003', 'Teknik Sepeda Motor', 'L', 'Cilacap', '2012-09-11', '6285942103515', 'Dusun Karangtawang RT 01 RW 06 desa Karanggintung kecamatan Gandrungmangu', 'Islam', 'Karanggintung', 'Gandrungmangu', 'Cilacap', 'JAWA TENGAH', 3301101809130005, 'Nahar Waluyo', 'Mutmainah', 'MTSN 2 CILACAP', NULL, 'storage/akta/tPVpJo6t2AWLo1ifxvYD5cfP32VZDdtONDKkQTLs.jpg', 'storage/kk/KB7NiUqbudB7IExAd9qNeR8DPfvuXQ2k57XuvYyT.jpg', 'storage/kip/tJtud4ao3N3iHjxN0q4rTIBIBCDNIhCMwSfaRgXS.jpg', NULL, 'qr_code/REG-00371.svg', '2026-01-07 08:15:20', '2026-01-08 05:36:08'),
(372, 'REG-00372', 9704515, 39, 'Ananta Kharisma Dewi', '3301136810100004', 'Pemasaran', 'P', 'Cilacap', '2010-10-28', '6287781602890', 'Cimanggu Kulon RT 004/007', 'Islam', 'Cimanggu', 'Cimanggu', 'Cilacap', 'Jawa Tengah', 3301130601053216, 'Darman', 'Nunung Nurhayati', 'SMP NEGERI 1 CIMANGGU', NULL, 'storage/akta/x6n90ehvaFWSCGJz3lmKzO6CUQrj2cExbpvmGRDu.jpg', 'storage/kk/MiehtNewtBC5wf11bRP0MwACrURW5wAB1NCPXgU8.jpg', NULL, NULL, 'qr_code/REG-00372.svg', '2026-01-07 10:11:48', '2026-01-08 05:34:54'),
(373, 'REG-00373', 9704516, 39, 'Fahreza Nur Wahid', '3301132805110002', 'Teknik Sepeda Motor', 'L', 'Cilacap', '2011-05-28', '6283121073525', 'Cimanggu Kulon RT 003/007', 'Islam', 'Cimanggu', 'Cimanggu', 'Cilacap', 'Jawa Tengah', 3301130507120037, 'Suganto', 'Waryati', 'SMP DIPONEGORO CIMANGGU', NULL, 'storage/akta/kbRntzbl1lCUKtBOYERtOp5L37LH92l5iJnOi2gq.jpg', 'storage/kk/yJfjiFN3NB4lLBfawD3XnXhlRL7DUPOkEbIqAdwL.jpg', NULL, NULL, 'qr_code/REG-00373.svg', '2026-01-07 10:34:54', '2026-01-08 05:35:00'),
(374, NULL, 9704517, 81, 'ANDHITA NURFIQOH RAMADHANI', '3301127107110002', 'Akuntansi', 'P', 'CILACAP', '2011-11-07', '6282228304900', 'Dusun Banjarwaru', 'Islam', 'Sindangbarang', 'Karangpucung', 'Cilacap', 'Jawa Tengah', 3301120511150011, 'NURKHOLIS', 'MUNTOWATI', 'MTSN 2 CILACAP', NULL, 'storage/akta/ERLamxtgV4j6vMkn0YY17iH8IgSgyQKkcp50RpZJ.jpg', 'storage/kk/99blAOpM2PYEnVz1N4Uu6VgqwuuzwUtoPzsxYPKJ.jpg', NULL, NULL, NULL, '2026-01-09 05:23:56', '2026-01-09 05:23:56'),
(375, NULL, 9704518, 28, 'Yuli ayu ningsih', '3301136409100004', 'Pemasaran', 'P', 'Cilacap', '2004-09-24', '6289611049225', 'Panimbang', 'Islam', 'Mandala', 'Cimanggu', 'Cilacap', 'Jawa tengah', 3301132112100461, 'Nana triyana', 'Misroti', 'MTs NURUL HUDA KARANGPUCUNG', NULL, 'storage/akta/HwGFYgSi6FZ8QkDVTZ4p8vv4kuWja7NxwBZbycaI.jpg', 'storage/kk/DY9PHwIZp8EiEZLTgI73keW9j3si7d3DbI8i0tau.jpg', NULL, NULL, NULL, '2026-01-09 06:59:41', '2026-01-09 06:59:41'),
(376, NULL, 9704519, 28, 'Dellani aulia', '3301124305110003', 'Pemasaran', 'P', 'Cilacap', '2011-05-03', '6289611049225', 'Kawungcarang', 'Islam', 'Pangawaren', 'Karangpucung', 'Cilacap', 'Jawa tengah', 3301121501070005, 'Harno', 'Onih', 'MTs NURUL HUDA KARANGPUCUNG', NULL, 'storage/akta/B0rMiPchAaXKR7zHMPVmuY0p0MDLCBDMYw96tCCr.jpg', 'storage/kk/lYLNUdQ5TgkDgSs3vaVY308yOXIKRtbhTcEJBG5p.jpg', NULL, NULL, NULL, '2026-01-09 07:08:53', '2026-01-09 07:08:53'),
(377, NULL, 9704520, 28, 'Najwa fauziah', '3301126202111000', 'Pemasaran', 'P', 'Cilacap', '2011-02-09', '6289611040225', 'Kawungcarang', 'Islam', 'Pangawaren', 'Karangpucung', 'Cilacap', 'Jawa tengah', 3301122403220009, 'Endang', 'Endang', 'MTs NURUL HUDA KARANGPUCUNG', NULL, 'storage/akta/uLalW9Jd2X3q1kwVHRZyb5gkIaleoJ39YYbdNTaq.jpg', 'storage/kk/Qv2bEmporikS8pSQoMrG6rrQ9IBfKxgP4a1F34oI.jpg', NULL, NULL, NULL, '2026-01-09 07:16:06', '2026-01-09 07:16:06'),
(378, NULL, 9704521, 82, 'bagus hartono', '3301121310100003', 'Belum Memilih', 'L', 'cilacap', '2010-10-13', '6281215027633', 'dusun ceger', 'islam', 'tayem timur', 'karangpucung', 'cilacap', 'jawa tengah', 3301122710080016, 'warsono', 'tuti riyanti', 'SMP NEGERI 1 KARANGPUCUNG', NULL, 'storage/akta/s5NDPgKEo2JuD4pJj3Sahix5Ef2dNckObc6qYskO.jpg', 'storage/kk/cvhK6DQOO5HlWzRWNkuudn3y79hHFbgGCIB0ByCT.jpg', NULL, NULL, NULL, '2026-01-09 08:41:34', '2026-01-09 08:41:34'),
(379, NULL, 9704522, 82, 'wulan bella safitri', '3301125611100004', 'Belum Memilih', 'P', 'cilacap', '2011-11-15', '6281215027633', 'dusun cijoli', 'islam', 'karangpucung', 'karangpucung', 'cilacap', 'jawa tengah', 3301122110110003, 'hendri santoso', 'hestiana rahayu', 'SMP NEGERI 1 KARANGPUCUNG', NULL, 'storage/akta/8qzbhzZIHk3stuPnd8PKKhR5llOYYavUvXiB1x0R.jpg', 'storage/kk/koLvSczYb1smju9yk6mfB8F6u9I3emATRSudZ2aI.jpg', NULL, NULL, NULL, '2026-01-09 08:52:29', '2026-01-09 08:52:29'),
(380, NULL, 9704523, 86, 'jinaan ahnaf nabhaan', '3301122806110004', 'Belum Memilih', 'L', 'cilacap', '2011-06-28', '6281215027633', 'dusun ceger', 'islam', 'tayem timur', 'karangpucung', 'cilacap', 'jawa tengah', 3301120111160002, 'miam marsono', 'wahyuningsih', 'SMP NEGERI 1 KARANGPUCUNG', NULL, 'storage/akta/95cBQPVjc7NtwdSpwTlN0bMDzWnlsSVCZTVVSXQB.jpg', 'storage/kk/9bStuQjUYQo1rcoABcf2PeYWWXYPMmdrOtU1o3pn.jpg', NULL, NULL, NULL, '2026-01-09 09:04:05', '2026-01-09 09:04:05');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tata_usaha`
--

CREATE TABLE `tata_usaha` (
  `id` bigint(20) NOT NULL,
  `guru_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tata_usaha`
--

INSERT INTO `tata_usaha` (`id`, `guru_id`, `created_at`, `updated_at`) VALUES
(3, 85, '2025-10-26 05:11:38', '2025-10-26 05:11:38'),
(4, 86, '2025-10-26 05:11:43', '2025-10-26 05:11:43'),
(5, 84, '2025-10-26 05:11:56', '2025-10-26 05:11:56');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `foto_profil` varchar(255) NOT NULL DEFAULT 'default.png',
  `role` enum('admin','guru','siswa') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `foto_profil`, `role`, `created_at`, `updated_at`) VALUES
(1, 'adminbaru', '$2y$10$VwbFKQbktP8Wn4ztUHvkhOb0/lZnppBrt18MqKSQrmV5ba8X.WHca', 'storage/foto_profil/MtZM0yENwaJ62IyfP8k7OGeLEt1PzNYgMB7C7QYE.jpg', 'admin', '2025-09-27 03:00:56', '2025-10-26 02:25:07'),
(2, 'admin2', '$2y$10$DhoIRGDTny3HBSv.aWkI1ufONUCw2IJd4Pjkz7J8Z6qVIFCl7mdsW', '', 'admin', '2025-09-27 03:00:56', '2025-09-27 03:00:56'),
(3, 'admin3', '$2y$10$DhoIRGDTny3HBSv.aWkI1ufONUCw2IJd4Pjkz7J8Z6qVIFCl7mdsW', '', 'admin', '2025-09-27 03:00:56', '2025-09-27 03:00:56'),
(4, 'guru1', '$2y$10$DhoIRGDTny3HBSv.aWkI1ufONUCw2IJd4Pjkz7J8Z6qVIFCl7mdsW', '', 'guru', '2025-09-27 03:00:57', '2025-09-27 03:00:57'),
(5, 'guru2', '$2y$10$DhoIRGDTny3HBSv.aWkI1ufONUCw2IJd4Pjkz7J8Z6qVIFCl7mdsW', '', 'guru', '2025-09-27 03:00:57', '2025-09-27 03:00:57'),
(6, 'guru3', '$2y$10$DhoIRGDTny3HBSv.aWkI1ufONUCw2IJd4Pjkz7J8Z6qVIFCl7mdsW', '', 'guru', '2025-09-27 03:00:58', '2025-09-27 03:00:58'),
(7, 'siswa1', '$2y$10$DhoIRGDTny3HBSv.aWkI1ufONUCw2IJd4Pjkz7J8Z6qVIFCl7mdsW', '', 'siswa', '2025-09-27 03:00:58', '2025-09-27 03:00:58'),
(8, 'siswa2', '$2y$10$DhoIRGDTny3HBSv.aWkI1ufONUCw2IJd4Pjkz7J8Z6qVIFCl7mdsW', '', 'siswa', '2025-09-27 03:00:59', '2025-09-27 03:00:59'),
(9, 'siswa3', '$2y$10$DhoIRGDTny3HBSv.aWkI1ufONUCw2IJd4Pjkz7J8Z6qVIFCl7mdsW', '', 'siswa', '2025-09-27 03:00:59', '2025-09-27 03:00:59'),
(21, 'udin@gmail.com', '$2y$12$o3wo5zfa7Ytl5bowZyolZOpHcO/J0/SRueBqJwgiWmhEBoTJC6SDm', 'default.png', 'guru', '2025-09-29 07:51:09', '2025-09-29 07:51:09'),
(17880, 'atrieusmayshobafaaz@gmail.com', '$2y$08$5.ds0iZcltlGugIiZMg.1eMKUzQ3qe2hCyBdZiehhMUxJYuETYmnG', 'default.png', 'guru', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25610, 'nikyrior@gmail.com', '$2y$08$y53P.yI51zdW.VmWviylRet.2gRDPk9Jz1UfCzqtw9nytfQndwsm.', 'default.png', 'guru', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39339, 'ikhsanmahar@gmail.com', '$2y$08$9O8agVrraN85Zd6fJYVoVOOYnCUI9pyKxA4zbHCW2xkrdKFPOX.i2', 'default.png', 'guru', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40013, 'farhannurazis27@gmail.com', '$2y$08$M5kEgGOq5.6PJBpdN3MwUe/PEPTCVHJY0sYEZqREZxhB.Vu4YJdLC', 'default.png', 'guru', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(69484, 'ajis@gmail.com', '$2y$08$ARUM0WRsMkg8bPebRz5tcuHbCAeXYIrU35/K47CVBY.EBgCNCitd6', 'default.png', 'guru', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(73571, 'guru@gmail.com', '$2y$08$uooLlJIo9mfsthL/Yc8hI.sknH0OKKbxD67og4xWtURaBqB3hm6tC', 'default.png', 'guru', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(74643, 'alfitriwidia11@gmail.com', '$2y$08$Y.NsCa/0aGoSvgeUhhjn5./WhUfSr24EPs9S8IL5Z8985aN75H.om', 'default.png', 'guru', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(79822, 'tobelherbie53@gmail.com', '$2y$08$A52MzlJGxkbvD0PBPAuLBeK5ayobM7UxQVksaLo5drknidVoL9PBq', 'default.png', 'guru', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(82463, 'kurniaaditama07@gmail.com', '$2y$08$3HT46djCDUCdbcC8J5JLx.fHyIsNVF8C0/53YzW4ocd5wRERaysTi', 'default.png', 'guru', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(83140, 'mita@gmail.com', '$2y$08$CzLtgSJonfS2Oat7AkM5duekKLZOJ1rfeFN10QQ2NbPFI6Ct.0rym', 'default.png', 'guru', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(92832, 'hendri@gmail.com', '$2y$10$iBwSGaF/3BAO1zdxMfL3uO/XNQjZn4t6v8Bq5JlCL1oolhBVq1L9G', 'default.png', 'guru', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1092837, 'khoirulanwar1994@gmail.com', '$2y$08$iUC26596.U0cwAPVcqfe9e9cQVr4tTI5Mt8Wshkds1pyF9VdhjY.O', 'default.png', 'guru', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1204987, 'Suswatispd967@gmail.com', '$2y$08$7pdSJIFiyZSrw7ztoWqTu.JyJ7zENRzI4p012XzNBRai5LCAhaJY2', 'default.png', 'guru', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1432098, 'ppertiwi53@gmail.com', '$2y$08$2yo1MJ/VxsHslR5EXG5nE.0xY4nZPYFV8soXiM6ozlMCuy2GNgIJa', 'default.png', 'guru', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1509328, 'afifrider507@gmail.com', '$2y$10$tPI2GBJKUglvbx5DZGUS1OUcjcpismbjPoe4FCNobRpGEr8V3ewgK', 'storage/foto_profil/n5DtzeyxH7XcUvWkvLGUUNzBLjFktfTtXXfgTglQ.jpg', 'guru', '0000-00-00 00:00:00', '2025-12-08 02:17:49'),
(1759230, 'rizqiasfianudin26@gmail.com', '$2y$08$huM6jkzjE2KK.zKHszC9Qu99x7ikTLYoQb/j8KwtzBsmux0aBFNWC', 'default.png', 'guru', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1789026, 'anwar.safii7@gmail.com', '$2y$08$XPqfgfm8Go4hjSNmEUf4OuorwBkCNbvrXIISdKY5dahH5SFHPqb.i', 'default.png', 'guru', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2048719, 'angandiagustrianto@gmail.com', '$2y$08$/gOyQV0aiWwhXszqjlGgH.0J4PPqNee5pFJSKRdw2xyMonPKq.WP2', 'default.png', 'guru', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2174069, 'muminahrainbows@gmail.com', '$2y$08$qTJdtvqMfouiqIZv7Uv9auUIr6SDqFGPX2j27oO50pGZJyU1troSK', 'default.png', 'guru', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2306987, 'usercahyani@gmail.com', '$2y$08$c1orP1NTIUBk8ZbLO5Tl5OHRQy8a/LRfT9UuGERZuXoKQv1SfgdHu', 'default.png', 'guru', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2743091, 'rahmirahmiii@gmail.com', '$2y$08$Y9hLRVCInj/2jREUeDjSJelnO9L.y3KxDDATW2.qIuUVPTQ8wFZ46', 'default.png', 'guru', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2846713, 'ajimulyanto82@gmail.com', '$2y$08$kdXWPlhAPoeBp0Il5/W9MOrBSraRUPNN2An3urvUsNpOBNnKwGhx2', 'default.png', 'guru', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2918403, 'carsun007@gmail.com', '$2y$08$itw6wLM6Yk67/X0J63kYretOMBOlEY7Eq52YDORQgLynFYT9HXVVG', 'default.png', 'guru', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3058197, 'faoziachmad15@gmail.com', '$2y$08$ZV0jeMN2rqobe8vhbSxLJ.QBbsmqVvXWcCxeB/6JmyxpVaXS7XUoe', 'default.png', 'guru', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3081659, 'selasa.project5@gmail.com', '$2y$08$Pbo60FvTfL8c5guqvvhLr.ykR//0Ryw8hy6.fxSUU/6PvkeoleE..', 'default.png', 'guru', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3165079, 'ana12001223@webmail.com', '$2y$08$q9wT/57Z9FO8tPnA6eMLq.oq6BoU4SNuUDKsNNeaijU8TX1elu/Nu', 'default.png', 'guru', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3257908, 'ismasundari27@gmail.com', '$2y$08$D3onSptK2lPqc0fUFtmOhumMOiaUY6oY./mz68HDaS1qGjsJgBipu', 'default.png', 'guru', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3508196, 'edogawa.lukman@gmail.com', '$2y$08$HYCEQBdDNqsjbRinqJXGb.AvOu0nbTsGDjP95opWeXV6AT1PNf/dC', 'default.png', 'guru', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3814609, 'sdarti.spd@gmail.com', '$2y$08$Nhulcroexvkix3YZwcq.b.Nyc4vkc33kdzAeBE9MEmbNzXQwzjBWm', 'default.png', 'guru', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3927104, 'rahardikaputra96@gmail.com', '$2y$08$ueIavs3Vsx05YCRaFWZVgujnnmbFJf9.r0O7UFGQqRse96samaIuu', 'default.png', 'guru', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4372016, 'sucisholehaning08@gmail.com', '$2y$08$CxYkWgBogoj3kYO.t714e.lZarW6/9KKQn0oqJjZzcdqx1B2vqASW', 'default.png', 'guru', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4378210, 'ekaoktianaa@gmail.com', '$2y$08$N2zNPwnwv1o5UouA4h3ApumkwKjTLpwgRVRBRK49yxoSrWGZDg3cG', 'storage/foto_profil/MJv0jMEH5zn6OFxarWaR5M4FemBLuKqC1jhv4a5k.jpg', 'guru', '0000-00-00 00:00:00', '2025-10-29 02:36:40'),
(4681305, 'arruzfaithfully@gmail.com', '$2y$08$CSlcvn/Y4nj6/o2USmyRSum9An2xapYFY0hCzF1kCr8iwqGGWfah.', 'default.png', 'guru', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4917382, 'acengnsw@gmail.com', '$2y$08$vodu66H3LAbAr3ePN9oIxu53N2hYrxMuJ5sKAvUjrgYQ1su78d8Wi', 'default.png', 'guru', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4987316, 'nitaokta151001@gmail.com', '$2y$08$xPeiKbQfsRE/JYh5no0c/uIIT5TYlmVBvabC/ILQpge.K05BM6rI2', 'default.png', 'guru', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5183907, 'listiananuraeni224@gmail.com', '$2y$08$FBSSFE7nu8oxznLZYFB2dura3N/i8sACJAYEa0Shqpf5iVAcRBd3W', 'default.png', 'guru', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5894216, 'dewilarasati1985@gmail.com', '$2y$08$CBD7YMzPZKlwtpl7vO5GYOjTJBTL2aEOwDY89xrLRy986NJU00Jba', 'default.png', 'guru', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5901732, 'sukonoprio31@gmail.com', '$2y$08$uA7NKKrT4StB1GAxI4PzfO1oo.fuqUaW5i.H3/dOBtiVn8GO17Mju', 'default.png', 'guru', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6091342, 'listiyawidiasari23@gmail.com', '$2y$08$gfB/ATxpv1ZYH1uggdY5nuRmXlPhO38j6ovqeuW/i.Ri3VlWif1mi', 'default.png', 'guru', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6194307, 'sitimaesaroh62780@gmail.com', '$2y$08$lfMeV9gk5j3zm9MUJO8MgOLZ.cD1CaSz8SWCsMaQR8ctf8NWEzAky', 'default.png', 'guru', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6390218, 'yenirahmawati123@gmail.com', '$2y$08$lUenp4shMtVczZYgsIBpD./aYr18tUrb1iL0qiQPQoBSnyqj61hRG', 'default.png', 'guru', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6542039, 'nikenyunita45@gmail.com', '$2y$08$6mXIKrtqakLx.LkHCTNXVOXHg1I1J/3MhMCLW6p0JO0hmTRX73GMy', 'default.png', 'guru', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6719024, 'diyahwulandari1234@gmail.com', '$2y$08$y4F00HozgUaT2I0TmM3Z8u/CfQVZ26w1IT1LqBAmMRDy9yDu2BTxK', 'default.png', 'guru', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6902814, 'rendypamungkas65@gmail.com', '$2y$08$IvkYxvTuXCu/SV5hGPtvmOw4S.ClH6c4Qarum11utQdAWAZqy.qAe', 'default.png', 'guru', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6927430, 'andisupriyanto046@gmail.com', '$2y$08$ckKDo5g2ju21.jU0rFq6gOCGBhsq70Pp/mh9MTRjn.48uvVfi0b/S', 'default.png', 'guru', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7031296, 'ajis.eriyanto06@gmail.com', '$2y$08$rmCptSCd08MqG1WQrX5is.t41uWWmUu6h.3BvLi.eym/XJpRPxiNm', 'default.png', 'guru', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7142859, 'dedenibrahim310@gmail.com', '$2y$08$g2y00ra35NHZG3gB4.HVz.C2bBaXeQWWsPgfCdHGcZ2Wx8zr0EZhm', 'default.png', 'guru', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7402815, 'gits_mjn@yahoo.com', '$2y$08$HiuR4yUBtcvzIuhy/JgbQ.Lpwddog6kshtYVppSx4Izj.FGxKhV96', 'default.png', 'guru', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7469205, 'lilisafifah1112@gmail.com', '$2y$08$mBRV978II7bBIl4/awFhKOPcZfR3gqfTzi0r.JMEzzOxsNKed0TwG', 'default.png', 'guru', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7583024, 'meyrachma48@gmail.com', '$2y$08$0nb3ptaMJGSHhSe55gXloeUcnO7Kw0.nZA5uwWnEP0ontay4wkq1a', 'default.png', 'guru', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7801432, 'nugrohopangestuadi17@gmail.com', '$2y$08$PrbKgay75BLA6SBR5vXUT.b.LuSgIo.bn.GusOyrpCvHKO6k1q2km', 'default.png', 'guru', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7890241, 'lusisanti3@gmail.com', '$2y$08$TuH/hxjXeyjmkdyNzFmzU.itLan5lSS/ZErdo9Mp74AqcPCPEwuBq', 'default.png', 'guru', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8264013, 'rahmawati17011990@gmail.com', '$2y$08$wryztDbx4ZVh4E2vZ03DBueKIhE/eemLNSJgQasolGjcLJ7CgafKu', 'default.png', 'guru', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8302947, 'yuniandari771@gmail.com', '$2y$08$TBJm52PIqvkogu2WTItAYOmXgpZO3D11c5zFbrjLhyXxEZJfNBijC', 'default.png', 'guru', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8347219, 'tkrsepri@gmail.com', '$2y$08$2gVKeADDcy4vgFztO0yote8Sa02s8NpE0NKyJNX0BEObjnKhWHvoe', 'default.png', 'guru', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8420671, 'ria.irma92@gmail.com', '$2y$08$UdOcxcFBHDlPs9arVkGAxeSTK3EOU2KIBx3TOwypo.w8zrlbNb7jG', 'default.png', 'guru', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8437160, 'warmansyah1212@gmail.com', '$2y$08$fV79I80pvcmml/TMoBo27.7znHtAPTIqBU1ag7KGiWyPkXUlj8woK', 'storage/foto_profil/CHV7JXk56jtoEShp0jYtye6TdKuhU3fCPt2uSVTz.png', 'guru', '0000-00-00 00:00:00', '2025-11-04 08:43:56'),
(8457103, 'budihartonosmkds@gmail.com', '$2y$08$H0MLyNk8GuBIIGwzzhEPpO.5jpINTu4e1bEe.q7qJNcXRkAd8xSZu', 'default.png', 'guru', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8621734, 'satriodone500@gmail.com', '$2y$08$DcOtg4aMCebLY39kN9gUkuslwHyronOmhvsHCBBbCyd3G9jbML/ke', 'default.png', 'guru', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8652037, 'agestianinunik@gmail.com', '$2y$08$uQXOGAAiibTKOp.dsXFw4eSp3bHX3xd78Jy8wvw0lAEqiv2C/S2nS', 'default.png', 'guru', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8741032, 'aesaputra62@gmail.com', '$2y$08$hXRznRD0t3EhfHrLzrCAFetdEdUecaIe4KQ4yUcjU/8klfER08Wly', 'default.png', 'guru', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9074516, 'nuswantoro04@gmail.com', '$2y$08$Sp0c7qrxEmK3V7scjdpFBOP4l91OFTEGUWVidHhvUbUVFwQCFyH9q', 'storage/foto_profil/2QyWIMW6S4VUTRRt64avaP8EZpwYqympXe2QjQkU.jpg', 'guru', '0000-00-00 00:00:00', '2025-10-29 02:36:03'),
(9234810, 'furiabd2@gmail.com', '$2y$08$1yvgWoAEdn/9Bn4IJDGRo.DoBDNxC8DIssCCRTrLookYtBABCBjH.', 'default.png', 'guru', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9274016, 'adeapriyana331@gmail.com', '$2y$08$NS8CHqrLTFjwepTxZOhzpeNXc1SadrG1upM15lcsXE7H99f/cI7CS', 'default.png', 'guru', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9673104, 'dekarohmana@students.unnes.ac.id', '$2y$08$dDqOtUw3xguBaTutqA3MtewGmZrv6laP8ZXKPVpz3FtQnVLzMP.U2', 'default.png', 'guru', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9704132, 'wahyuni.arum2019@gmail.com', '$2y$08$qoIxQJ2.jNQxeaesa6XhSuVcm3dJdQSWjSKpnJomqjO5j0/bjAJym', 'default.png', 'guru', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9704146, '3471035512010999', '$2y$12$zvZcD8NpWzjj2O8A.kGN0.cz16Xoh8fY1U3AxUs24U0w2WvfT1IKO', 'default.png', 'siswa', '2025-10-24 00:31:08', '2025-10-24 00:31:08'),
(9704147, '3301120206090005', '$2y$12$RyRYs/c9vdtNgGkb6BV5uuK/FjP79ODptVzdtcjCxGb33p1DLBLYa', 'default.png', 'siswa', '2025-10-24 02:33:31', '2025-10-24 02:33:31'),
(9704148, '3301122212100001', '$2y$12$xcKz6bOPqDw1MOyRqEqlcO4.dUSDkSHssTat8lTjVaSIhq76EY.Km', 'default.png', 'siswa', '2025-10-24 03:37:52', '2025-10-24 03:37:52'),
(9704149, '3301120306100003', '$2y$12$l.T/Arlkz1RBQemXWCTHC.oNDBsULubuMGCEtOvZR1dntXTBvKEJq', 'default.png', 'siswa', '2025-10-24 04:27:43', '2025-10-24 04:27:43'),
(9704150, 'sitishilihahbnn5@gmail.com', '$2y$12$NjQ9Rwqk3Zd5Y4DAkVNoy.15piAsCKyp5UEO05pVCzryNoZT9gH5a', 'default.png', 'guru', '2025-10-26 01:41:55', '2025-10-26 01:41:55'),
(9704151, 'jeminoveatun1993@gmail.com', '$2y$12$JS8BGnp8XqzP.XVsJgxbW.6ogEzVkP3zxi0zg.KIljMufi9Np5bpW', 'default.png', 'guru', '2025-10-26 01:46:27', '2025-10-26 01:46:27'),
(9704152, 'sriles2015@gmail.com', '$2y$12$di6G.fyq307BAx97BFMCeOi42IMG6C7KkRt3PkElfHQ8nf32MKHmi', 'default.png', 'guru', '2025-10-26 01:48:04', '2025-10-26 01:48:04'),
(9704153, '3301126203110001', '$2y$12$rd/wLZT7s2H8XdbcYropIuGfzxbEW4g8YMTtlp7qG.C0bdeE2FwKW', 'default.png', 'siswa', '2025-10-26 03:24:09', '2025-10-26 03:24:09'),
(9704154, '3301200310110001', '$2y$12$B.Cg2V0c0DPILdWJ4AfRNeT8rV2Y9fy.wqR/x6kZlYsJhhq2NlYtK', 'default.png', 'siswa', '2025-10-26 03:32:35', '2025-10-26 03:32:35'),
(9704155, '3301201909090004', '$2y$12$Ug9zzsLAokjqDPrmz71OrepVnWp/oDNglX4AMipUYg.NLP0AH60cq', 'default.png', 'siswa', '2025-10-26 03:39:03', '2025-10-26 03:39:03'),
(9704156, '3301200809110002', '$2y$12$vPwkFUE8HJ7r14NcunIkxeuuHA3XP8ar5FGLUBGOJORLnh.rrc4dm', 'default.png', 'siswa', '2025-10-26 03:44:14', '2025-10-26 03:44:14'),
(9704157, '3301201307110003', '$2y$12$kT3barwBRx6aq4rnH85gkeWBdqz/jwELLSoM3tFA8fed4SRGwwgmG', 'default.png', 'siswa', '2025-10-26 03:47:24', '2025-10-26 03:47:24'),
(9704158, '3301200507110002', '$2y$12$D95fkt91.yFJ5OJRnyIEcecrSa5NMTwvH8fp3Fx6Sjm0FR22ypdj2', 'default.png', 'siswa', '2025-10-26 03:52:47', '2025-10-26 03:52:47'),
(9704159, '3301201104090004', '$2y$12$zTwpBCAu22bReHQCUzit3uFAWnyZFn58wzRxSgXWLjbwPulbwszHO', 'default.png', 'siswa', '2025-10-26 03:57:40', '2025-10-26 03:57:40'),
(9704160, '3301200110100002', '$2y$12$0l7Slu2L41dLGRJKQ8nxZeDqiEZlLXXF2GYXU3WVcAZB8Ik/0PKDG', 'default.png', 'siswa', '2025-10-26 04:01:07', '2025-10-26 04:01:07'),
(9704161, '3301200710100002', '$2y$12$bgtpYMDAk1Mb2u4En3pCnu45ArltHcnbaZC5jxcGG4sKiQeYLKfm2', 'default.png', 'siswa', '2025-10-26 04:10:40', '2025-10-26 04:10:40'),
(9704162, '3301136305110002', '$2y$12$0oPpd685zv2MAnI8/TUVYuk5UhfL2i4vNMVSNdyzahmn3MRCTg.Rq', 'default.png', 'siswa', '2025-10-26 04:34:35', '2025-10-26 04:34:35'),
(9704163, '3206295812090002', '$2y$12$hYAseeWUohq2u3z.MMlATOhLDdWf7Ioz4m/UGIf7EQBU60XIPiLRq', 'default.png', 'siswa', '2025-10-26 04:47:42', '2025-10-26 04:47:42'),
(9704164, '3301135406110001', '$2y$12$AYomkLLjYJ4kcUbjgeXAHuVR35/9ZjVf/Lod9dj8IYvP/Dy6a0x0i', 'default.png', 'siswa', '2025-10-26 04:54:16', '2025-10-26 04:54:16'),
(9704165, '3301135010100002', '$2y$12$0LuGk6/F3.aA3ZIRcb5bwOvySO8dPXhr.AozRy4SMwE3PPcG72n1K', 'default.png', 'siswa', '2025-10-26 05:16:25', '2025-10-26 05:16:25'),
(9704166, 'nurazizahkhomis@gmail.com', '$2y$12$BWqmuTM3gwJirrmuWpt70uMfR32d5b1oHhOpxCmOmKsX9Qt3vWwZW', 'default.png', 'guru', '2025-10-26 05:19:10', '2025-10-26 05:19:10'),
(9704167, 'wdzulfiqar54176@gmail.com', '$2y$12$m/F5ycKwVkkN6D3ubvGYe.sBGJJqMQrTZxO/7eCh4xvNi.vfFaTEe', 'default.png', 'guru', '2025-10-26 05:21:13', '2025-10-26 05:21:13'),
(9704168, '3301127105100003', '$2y$12$6neveAH.RaYxAZbIecr9Z.821DhScPez3N8eUV9kWwua7TUgfmlD6', 'default.png', 'siswa', '2025-10-26 05:22:49', '2025-10-26 05:22:49'),
(9704169, '3301134704110002', '$2y$12$8PZq/LuYqeWl0lafdkV1huGXe.k3ueY37.zAt/kf/Bnc2ab/HouZC', 'default.png', 'siswa', '2025-10-26 05:25:35', '2025-10-26 05:25:35'),
(9704170, '3305194810100001', '$2y$12$kEEyZSHdFbiIuF5M3n3LSOnDppxdR/jcUtpt678GgFVcYdO32.rH6', 'default.png', 'siswa', '2025-10-26 05:38:44', '2025-10-26 05:38:44'),
(9704171, '3301130811100002', '$2y$12$G90nI1wqyFqQkaGBgQ5VPunibZEKUw2L75pmhXFzTQ9Rv6RKgXXqK', 'default.png', 'siswa', '2025-10-26 05:42:33', '2025-10-26 05:42:33'),
(9704172, '3301134306110001', '$2y$12$HDDLOEUIvLuCUX0WzCEyuOqj9uDm0kVOdoCbxkW.r.Px1VeIfokzG', 'default.png', 'siswa', '2025-10-26 05:45:47', '2025-10-26 05:45:47'),
(9704173, '3301132503100003', '$2y$12$Dfiszu5UnDzqoefsowMSC.MY5gxP0Hg9bxqmHY3zh/pV.0pPaPUS.', 'default.png', 'siswa', '2025-10-26 05:48:45', '2025-10-26 05:48:45'),
(9704174, '3301134311100001', '$2y$12$5f0sYW/exxn84xwAiLTMv.nP3TnFj5Mh/TgDwAZMsHqTMrKffhFde', 'default.png', 'siswa', '2025-10-26 05:51:18', '2025-10-26 05:51:18'),
(9704175, '3301132805110062', '$2y$12$YIhfGFYL2lEVxpf5oNZdWeI0TuriZy/eQxyH8s1x2kyP8Fm6Dtiw6', 'default.png', 'siswa', '2025-10-26 05:55:32', '2025-10-26 05:55:32'),
(9704176, '3301131310100002', '$2y$12$/aE2rsmLtvygvMGHzFZAXeAZTwxddVK4fhmeFbeyphjqO29gkxVcK', 'default.png', 'siswa', '2025-10-26 06:08:07', '2025-10-26 06:08:07'),
(9704177, '3312231109100001', '$2y$12$g/xijXM7KhOAtoSHlgFDMeiOiK5BnPE32P1qWllTAP1k8wuRnfZb.', 'default.png', 'siswa', '2025-10-26 06:12:01', '2025-10-26 06:12:01'),
(9704178, '3301135801110001', '$2y$12$6VMqMt4zDhFnNMFh.06dmOheJL2ASEordmqIben79NKXawDOV5JHG', 'default.png', 'siswa', '2025-10-26 06:16:42', '2025-10-26 06:16:42'),
(9704179, '3301131211100003', '$2y$12$/NUyvncluaHfXFaQyBTt4u4e13aL/EctAY1GOD8pap7RqQGjJeGOK', 'default.png', 'siswa', '2025-10-26 06:22:37', '2025-10-26 06:22:37'),
(9704180, '3301135208110001', '$2y$12$a/XCfsmrxHhXAXvn//CEWOFEhEXZzl2uKO9FEU0ZsFEQkQA3UirmO', 'default.png', 'siswa', '2025-10-26 06:26:51', '2025-10-26 06:26:51'),
(9704181, '3301136801110001', '$2y$12$UAGzVEhzZ0FFew7PrNkWL.3lzFfOco9xVwH.DkxK62ifsh3onmJTS', 'default.png', 'siswa', '2025-10-26 06:32:05', '2025-10-26 06:32:05'),
(9704182, '3301130202100003', '$2y$12$WNUgh/Dxb2.Eli20olXXqeHTU1upkKUu8CxzHVj0qhAn2EuRvgebe', 'default.png', 'siswa', '2025-10-26 06:35:29', '2025-10-26 06:35:29'),
(9704183, '3301134510100001', '$2y$12$C0G7oqDqoIAqzO1KhO3vsuKOACBlx8CrjRGChTXs6pwyIcEC4ixOq', 'default.png', 'siswa', '2025-10-26 06:38:33', '2025-10-26 06:38:33'),
(9704184, '3301134612110003', '$2y$12$nsy7FjkeWNxHX.C4YpZsPuPIDAOEh7gYgop/0y4/0ozzzU/lB8VEG', 'default.png', 'siswa', '2025-10-26 06:41:15', '2025-10-26 06:41:15'),
(9704185, '3301131903110003', '$2y$12$WhsE2vCKEebL78tZeOIN8Oh3CN13CnmmIexQH7ejxxUOW6HPB1MrC', 'default.png', 'siswa', '2025-10-26 06:43:27', '2025-10-26 06:43:27'),
(9704186, '3301134112100004', '$2y$12$IZHfgXpJAFtfp/2qzpahKeWcS1ss7Ip2HUDIuYNRdpvAMwTBulHm.', 'default.png', 'siswa', '2025-10-26 06:47:26', '2025-10-26 06:47:26'),
(9704187, '3301136303110002', '$2y$12$OQ.bfZ08MGaM7JS78jMceuBzh4RzpYmYVk0.p7Yfu.aMZH8SIF5a6', 'default.png', 'siswa', '2025-10-26 06:50:52', '2025-10-26 06:50:52'),
(9704188, '3301137011100003', '$2y$12$FNaTK1WKN1hmdeCtumPQ6.QMNh0nOdrZuHFOrAfvwoRm7cUJ/2e3O', 'default.png', 'siswa', '2025-10-26 06:54:25', '2025-10-26 06:54:25'),
(9704189, '3301121107100003', '$2y$12$v8UBBEvDWVZosYGsX6RN..ce60VovX7n2pzVS1Qm1EMufWQjynOgy', 'default.png', 'siswa', '2025-10-26 07:03:36', '2025-10-26 07:03:36'),
(9704190, '3301121310100001', '$2y$12$MrU9e10fa/RKfIctkJ2DG.62VeiSA0.6nrSFWknQ7X4/kCIpznsR6', 'default.png', 'siswa', '2025-10-26 07:11:02', '2025-10-26 07:11:02'),
(9704191, '3301120111100002', '$2y$12$3ZKPCCfSYiYxdJz/QrSAmeVMEIHaOXide3XNHUYnQccjXXCtIOoji', 'default.png', 'siswa', '2025-10-26 07:15:24', '2025-10-26 07:15:24'),
(9704192, '3301131108110003', '$2y$12$dJPkrx8xy1..QwhN0uJumu4lmjF8eDw0gI2Vwy23bG5.urQKJs4ye', 'default.png', 'siswa', '2025-10-26 07:24:10', '2025-10-26 07:24:10'),
(9704193, '3301135603110002', '$2y$12$KkcG4B17..cE.HgnjKv5QOPG2ZWeMpS7N2nkaGalxbyENhAPxZPfG', 'default.png', 'siswa', '2025-10-26 07:33:13', '2025-10-26 07:33:13'),
(9704194, '3301122910100002', '$2y$12$ZKm7w3zyrnS.MbNNCUN0COSwmjO1.n5INVbkUeMdM1uXvYSYECuti', 'default.png', 'siswa', '2025-10-26 07:37:08', '2025-10-26 07:37:08'),
(9704195, '3301127107100003', '$2y$12$/BH0ftz2rhjVFo7o5SsXBO/t8hhtJjcBK4H6jt/JBGn7Sn0Jms4s2', 'default.png', 'siswa', '2025-10-26 07:40:46', '2025-10-26 07:40:46'),
(9704196, '3301122005110003', '$2y$12$jXb4.a9RTO1XyfGMqg83hOlUwRB4dQRxSAst1kRd.UP2AZobiHjcm', 'default.png', 'siswa', '2025-10-26 07:49:04', '2025-10-26 07:49:04'),
(9704197, '3301124909100004', '$2y$12$hVcFcA33xUTshrmIYTMn3esbxBy2qwwtsCiE69oOUuOmElaj6re/a', 'default.png', 'siswa', '2025-10-26 07:51:55', '2025-10-26 07:51:55'),
(9704198, '3301122111100003', '$2y$12$Cy8Jfo.6/tbW/HiTaBOjQ..KaORCZWbuBCDuzhfH.HiGi7uyFTf2i', 'default.png', 'siswa', '2025-10-26 07:54:52', '2025-10-26 07:54:52'),
(9704199, '3301123105110004', '$2y$12$mUQJ5Frj8RQyKYIe7LqeS.2fbOTRNQFpWTBj9ZbZOogUOoHvBLTka', 'default.png', 'siswa', '2025-10-26 07:57:30', '2025-10-26 07:57:30'),
(9704200, '3301120408100005', '$2y$12$joigxO3xsysiR3yRD.5svueMslR7HpV0UoA5FXPZDeF/jGwiVx8.S', 'default.png', 'siswa', '2025-10-26 08:00:11', '2025-10-26 08:00:11'),
(9704201, '3174102403111016', '$2y$12$G7DFQHj4S3XTHdV.FL9YAeZeQ7l3eKMB417LW5coPgehcosNatrXW', 'default.png', 'siswa', '2025-10-27 01:07:14', '2025-10-27 01:07:14'),
(9704202, '3301132801110003', '$2y$12$IE9akcujREpVVdAj/O89f..xqGvTQYUFfZV9NCkI5Y5QsTx.Vcjju', 'default.png', 'siswa', '2025-10-27 01:14:51', '2025-10-27 01:14:51'),
(9704203, '3301126705120003', '$2y$12$Thnw.WE/tecdTdddvSRbjOH2b8yzh.wuBorhHreJohm2fZcBrO66C', 'default.png', 'siswa', '2025-10-27 01:57:32', '2025-10-27 01:57:32'),
(9704204, '3301130209100002', '$2y$12$hW8wfgy0tCH3Y4ytLFvihONsTfcfoth33/w.a3MgshVcKUv3Now7S', 'default.png', 'siswa', '2025-10-27 02:10:43', '2025-10-27 02:10:43'),
(9704205, '3271064107100002', '$2y$12$fdVGJiY3mdTBEwZlmkpjyerzEhBRVZQPZl105D.ba75M9L3TjdmeC', 'default.png', 'siswa', '2025-10-27 02:19:06', '2025-10-27 02:19:06'),
(9704206, '3301134701110001', '$2y$12$jP4V7FQnWQD9YAJ3VzL4lexX3h/z4BSOvBatsA5xdwLCJucz6fMUG', 'default.png', 'siswa', '2025-10-27 03:48:38', '2025-10-27 03:48:38'),
(9704207, '3301135702110003', '$2y$12$34gX5U.HqD2c3TIcUZMf3OLkitRmoGL4Zl0MPss.OGLUXNSui.cFa', 'default.png', 'siswa', '2025-10-27 04:17:26', '2025-10-27 04:17:26'),
(9704208, '3301122807110002', '$2y$12$3gvFgb8FmbBk66xcNETnEO3BLonUrXxfDPkCPlqQMTJONlPtZHaY2', 'default.png', 'siswa', '2025-10-27 04:21:52', '2025-10-27 04:21:52'),
(9704209, '3301136605110002', '$2y$12$R3eNJHJlXxl85tTBMUKR/ezY7vNnrVfZB841aG.plIWvNe2bk3GqC', 'default.png', 'siswa', '2025-10-27 05:46:55', '2025-10-27 05:46:55'),
(9704210, '3301134506110001', '$2y$12$vm4Ocgp88kwsfir2BplTfOP7ZCkdZIxyV73Btvo7UcEdJGWSy8nem', 'default.png', 'siswa', '2025-10-27 09:26:39', '2025-10-27 09:26:39'),
(9704211, '3301135605110003', '$2y$12$QSGacAL1w/j66uJP.nlKgOS6JKd1ILBNzYJpHq.nvQpbubwomnwmK', 'default.png', 'siswa', '2025-10-27 09:58:27', '2025-10-27 09:58:27'),
(9704212, '3301124502110003', '$2y$12$nYTGfLFG4WPUkkcxp8z7uOrgLzg/BeQmCOveeWMACjw5XqvBXWwPi', 'default.png', 'siswa', '2025-10-27 10:31:51', '2025-10-27 10:31:51'),
(9704213, '3301124502110002', '$2y$12$8gs87cgUPrGjHsRQ.74ZzOvFWPCUe0FDu6DamkXy5MA3UuHnX.mym', 'default.png', 'siswa', '2025-10-27 10:34:29', '2025-10-27 10:34:29'),
(9704214, '3301122508110001', '$2y$12$PlroWDvivEICZPH4frlwS.h0tmNyRS.EmGsWJSvPQRlvsPquySetK', 'default.png', 'siswa', '2025-10-27 10:42:57', '2025-10-27 10:42:57'),
(9704215, '3301136306100004', '$2y$12$QfyZuRMPbTPhNwqAyJG6e.RYcdIvttQCtd78oN2TtoW6K.SP6l6Y2', 'default.png', 'siswa', '2025-10-27 10:51:21', '2025-10-27 10:51:21'),
(9704216, '3301125208110002', '$2y$12$TjXhwi9T5Q9bJBKsu1NWquFYSuo3ItsanCSbO3TR8hgF2kq0tyr12', 'default.png', 'siswa', '2025-10-27 11:09:49', '2025-10-27 11:09:49'),
(9704217, '3301106805110005', '$2y$12$/Qg9loDU/vIhGp5DVCGEoOFuxjPy5Rfrg62upZeae6wnKEuiDXjpi', 'default.png', 'siswa', '2025-10-27 11:11:36', '2025-10-27 11:11:36'),
(9704218, '3301104203100003', '$2y$12$VlJxdQWfHhEGRsAhRCqUqOTKMjAqCDpNJSQjPVfb.iQ/TpBQGSL.6', 'default.png', 'siswa', '2025-10-27 12:18:16', '2025-10-27 12:18:16'),
(9704219, '3301121102110001', '$2y$12$eHD2OwKoh9vcVaWNDIk0Ru.g.8Dk3yXkcfdh2VL3SCOcCYA9JYKTu', 'default.png', 'siswa', '2025-10-27 12:27:04', '2025-10-27 12:27:04'),
(9704220, '3301134904100003', '$2y$12$mdlGMGTrWJvVZaTeDYCEA.s/F35Y.1nLaybEfqIaoAwZpXKSQF73a', 'default.png', 'siswa', '2025-10-27 12:35:36', '2025-10-27 12:35:36'),
(9704221, '3301104710110005', '$2y$12$uG4n0LKIiWEouUj23GR9d.Ql5YVVZuFCkY6JxFRSEN0ReLso3xpcC', 'default.png', 'siswa', '2025-10-27 12:42:47', '2025-10-27 12:42:47'),
(9704222, '3301136412100001', '$2y$12$E.7Vfg956CoEOTOD0TnLx.xWWZ/xaarPWvZ.uveo4Bmc8TuadX7pG', 'default.png', 'siswa', '2025-10-27 12:54:11', '2025-10-27 12:54:11'),
(9704223, '3301130610100005', '$2y$12$b8CZWfv1lqDcUlVU0IFz5.UBncipz5FAlLv7YH7ruAjh0YmhN72DW', 'default.png', 'siswa', '2025-10-27 13:15:40', '2025-10-27 13:15:40'),
(9704224, '3301124106110004', '$2y$12$sIvfkzCvYnLfwGFv/YyNzO2cVs111KTdNnF5PhGu5fsnwW4RUTo6K', 'default.png', 'siswa', '2025-10-27 13:17:46', '2025-10-27 13:17:46'),
(9704225, '3301132704090002', '$2y$12$5bHZzWRG5xjZwy27bSaK5.jGA9gykovteMoQ8eYXQ/vrY3jBVJ3Ja', 'default.png', 'siswa', '2025-10-27 13:23:53', '2025-10-27 13:23:53'),
(9704226, '3301105412100001', '$2y$12$9UpyL9uDCnFKbAamcx8eHu1HgTp0mLDDLTER0ouGz9y48h0HgRM0a', 'default.png', 'siswa', '2025-10-27 13:25:54', '2025-10-27 13:25:54'),
(9704227, '3301134508100005', '$2y$12$vkHbmyV72.SwaanIXQc2v.Pxtdkzss.6q2/i99AVSKkaGAdnGw5za', 'default.png', 'siswa', '2025-10-27 13:30:59', '2025-10-27 13:30:59'),
(9704228, '3301125405100002', '$2y$12$PetqHu7agx3lJhZGRFjPyOIpLxT25ipjo11Rv4dsOJpDzTJH/w0RG', 'default.png', 'siswa', '2025-10-27 13:33:20', '2025-10-27 13:33:20'),
(9704229, '3301131903110002', '$2y$12$R4J7bJJSyCCfHgNUX4duHeImzFcOPUugAjpRA9aLvkM9QmSsTyozq', 'default.png', 'siswa', '2025-10-27 13:35:30', '2025-10-27 13:35:30'),
(9704230, '3301131809110001', '$2y$12$bdIjxC0xFVWzM1cCfIYQ9uEbBpDPOTLZ6znGsbUZFjMdZzUqwTxM2', 'default.png', 'siswa', '2025-10-27 13:39:46', '2025-10-27 13:39:46'),
(9704231, '3301124712100001', '$2y$12$rGuAOS/izlOXAZzodtEpBeQ7bITTFUz/F0qHHNUANB4JM1PWfxfim', 'default.png', 'siswa', '2025-10-27 13:42:50', '2025-10-27 13:42:50'),
(9704232, '3301130309110001', '$2y$12$4uoMeCntdMxiePU0AnAlw.IgYY6GoPUH8IzlqvSvJWJtEYYaSEKUq', 'default.png', 'siswa', '2025-10-27 13:45:48', '2025-10-27 13:45:48'),
(9704233, '3301126905120001', '$2y$12$WJ75YiIpcX0xql023zpLb.NEko54.BEsgwBDUjluIbc6iuayc/hse', 'default.png', 'siswa', '2025-10-27 14:22:41', '2025-10-27 14:22:41'),
(9704234, '3302014406110002', '$2y$12$.6K/wKMSdgP8unxB1lP4Jux0cM7wvMG84YcqzyLHTnABkfz7Ywhse', 'default.png', 'siswa', '2025-10-27 14:23:26', '2025-10-27 14:23:26'),
(9704235, '3301106105110002', '$2y$12$YC9jb1LD3N481rAcWqIPx.SkViHSUObjYrLv1BpLGJSRSqj0CR9YC', 'default.png', 'siswa', '2025-10-27 17:05:39', '2025-10-27 17:05:39'),
(9704236, '3301101609100002', '$2y$12$9wumll2dSshv3N5zL5m/Ku.sYJ5rhIThRYFQGz/kyp0HgNHCia19G', 'default.png', 'siswa', '2025-10-28 00:35:53', '2025-10-28 00:35:53'),
(9704237, '3301106709120001', '$2y$12$wbfmJJGfknyyG75goFGETud654vdtJm9.bPydY1dB.7WbTOKOzW3i', 'default.png', 'siswa', '2025-10-28 00:40:58', '2025-10-28 00:40:58'),
(9704238, '3301126706110002', '$2y$12$hjgZuSXl9Z3ey5azeoc.mO4R9/O2DJ89F.PxkFPdEcAXO8vLcFjke', 'default.png', 'siswa', '2025-10-28 01:33:51', '2025-10-28 01:33:51'),
(9704239, '3301132003100004', '$2y$12$PZnc3tUicTpBzyLNRei9XeGEn0EfNmvSC.bm6fpkJ/..dJ9xPmbhK', 'default.png', 'siswa', '2025-10-28 05:32:03', '2025-10-28 05:32:03'),
(9704240, '3301134612100001', '$2y$12$gP.3YN76pMG1QIpkHwgj7e5Kqg0bomFHWsy1Z6jSO9yyY78aiYeO6', 'default.png', 'siswa', '2025-10-28 05:43:15', '2025-10-28 05:43:15'),
(9704241, '3276025311090003', '$2y$12$iGetJZD6GALi642ioRMghuup7y76QFSBKpgZ6B5sU2Jmr6z4pWblC', 'default.png', 'siswa', '2025-10-28 06:30:19', '2025-10-28 06:30:19'),
(9704242, '3301130702110006', '$2y$12$UKz4eyzI8SrVcoXH1lifduWr5ZzWWuAf21b0Ptgrvog41V5nNm8iW', 'default.png', 'siswa', '2025-10-28 06:41:30', '2025-10-28 06:41:30'),
(9704243, '3301135206110003', '$2y$12$g6KACDXIPoKn4Slg/IQmM.qwWvxI/9UFVcbqYCCQy3LIzyqnm7UU6', 'default.png', 'siswa', '2025-10-28 06:57:12', '2025-10-28 06:57:12'),
(9704244, '3273052605100002', '$2y$12$mUIcUHf486QLz0VOWb6ZKuegs1Vys/P6xkwScN.Lv/fMU4nVynySC', 'default.png', 'siswa', '2025-10-28 11:14:14', '2025-10-28 11:14:14'),
(9704245, '3301131508110001', '$2y$12$K0SCWJiBURuKVrw.7HqzVuQm6k8nFkfp2hZkJa9B/buatxLBsmy5i', 'default.png', 'siswa', '2025-10-28 11:26:08', '2025-10-28 11:26:08'),
(9704246, '3301136109110001', '$2y$12$EIgpBvF.UFRj2G6.G0/OAu/Bd5MJ.sd18R1FXwAmjAxMbIYBt7S92', 'default.png', 'siswa', '2025-10-28 11:29:40', '2025-10-28 11:29:40'),
(9704247, '3301135412100002', '$2y$12$xKnEYtPIDjwHIwYlEuebE.SWRl.x8/QxOP.nELDO/ZLKHW.0BPf3.', 'default.png', 'siswa', '2025-10-28 12:12:51', '2025-10-28 12:12:51'),
(9704249, '3301122910090002', '$2y$12$R1C19uiaayi9nUa5TbAcluPtHgmr0PrB/zhDVDgf6kSTD8YeX6Hpm', 'default.png', 'siswa', '2025-10-28 12:31:03', '2025-10-28 12:31:03'),
(9704250, '3301126403110002', '$2y$12$0.RSJfrAgzIYAhdKxh9Vj.54.iL3qd3X6WilqDcJpXeSPCdGpyc0O', 'default.png', 'siswa', '2025-10-28 12:32:47', '2025-10-28 12:32:47'),
(9704251, '3301122212100004', '$2y$12$tFjjNKOTMVPKRaC5.34byekv4IZL69G8JHS3bsCuwhSpZOe2EtWR2', 'default.png', 'siswa', '2025-10-29 02:26:32', '2025-10-29 02:26:32'),
(9704252, '3301136603110003', '$2y$12$iD1EShvfJT0TohWgtQMcT.p3wLmQb0l9s9mbXFpkHHvw4XyE9tOaS', 'default.png', 'siswa', '2025-10-29 03:14:21', '2025-10-29 03:14:21'),
(9704253, '3301206809100002', '$2y$12$5BLLgq0gYnV3DjAWpy0gDuaJOWlHMarxRpenTe3qrFXuGTRgcI0P6', 'default.png', 'siswa', '2025-10-29 04:04:43', '2025-10-29 04:04:43'),
(9704255, '3301125002110001', '$2y$12$/Yz/.tEuM1iJ5tdFJwptGup.ZetO1h5CoW4iaAl8TTkyteunTZwuW', 'default.png', 'siswa', '2025-10-29 09:52:01', '2025-10-29 09:52:01'),
(9704256, 'sahalibnu003@gmail.com', '$2y$12$Xe3a0bEkUw2BKvwhNHYw.uhD3bRSRt9rzUCzR3XBuFQLMyb6W7Ari', 'default.png', 'guru', '2025-10-30 01:19:26', '2025-10-30 01:19:26'),
(9704257, 'bayuapril264@gmail.com', '$2y$12$Mt2R.kGdJKzX8brqspc5O.M0Yt59DaPOBX9PqbRQ/xE.AvO1yk4CO', 'default.png', 'guru', '2025-10-30 01:22:25', '2025-10-30 01:22:25'),
(9704258, '3301125201100002', '$2y$12$QVJKKx0EZ/nguu21W/AifOB6pLoFXXAnfvo3PyOS43V5ELZi2YWwe', 'default.png', 'siswa', '2025-10-30 11:56:05', '2025-10-30 11:56:05'),
(9704259, '3301120706110001', '$2y$12$tN0t1i.U4qQreprmUkLT0OwI193rAGzv5gNYt3CFuXZ/8izRz9FyC', 'default.png', 'siswa', '2025-10-30 12:07:31', '2025-10-30 12:07:31'),
(9704260, '3301121109100004', '$2y$12$yRgaj49XEys2jP3PEwsYU.o/wOuLklygmR5HyvkYw7EXKtljWDiYu', 'default.png', 'siswa', '2025-10-30 12:32:33', '2025-10-30 12:32:33'),
(9704261, '3301103103110001', '$2y$12$SSUV3fvwRZLaJ7vYMXjpdON/62Qzw8Zao/8CEXxGYIjvdUL/Fo7Yu', 'default.png', 'siswa', '2025-10-30 13:03:37', '2025-10-30 13:03:37'),
(9704262, '3301132208100003', '$2y$12$U2Wc32Yd2tkYPsDlUUKbD.wdavRCS6j.Ip06SpPmivT3.BDApIZE6', 'default.png', 'siswa', '2025-10-30 14:21:07', '2025-10-30 14:21:07'),
(9704263, '3301125402100001', '$2y$12$cDT5J.5edkm.Xh9xgoiNYuYAk2uG1aUY.A4uQQOHODNTdfzw1OW3W', 'default.png', 'siswa', '2025-10-31 00:54:27', '2025-10-31 00:54:27'),
(9704264, '3301122709100003', '$2y$12$aG3ifG9uKtyKXTzXiFNfJOw8nCkrsQiTyQwENPa0y7lrJVxL7WMk6', 'default.png', 'siswa', '2025-10-31 01:33:32', '2025-10-31 01:33:32'),
(9704265, '3301100507100001', '$2y$12$3Iqc6UHV9viHgqwSovQUDOHDflQXnQYiBOrKS21GaPiQAPnLbXh/G', 'default.png', 'siswa', '2025-10-31 02:29:40', '2025-10-31 02:29:40'),
(9704266, '3302011510080001', '$2y$12$jLo.kpTHn7lvEnInFflZkOx4/0BOnIH9zG2na8HW9Ev6BMFjbzvh6', 'default.png', 'siswa', '2025-10-31 02:42:45', '2025-10-31 02:42:45'),
(9704267, '3301136308120001', '$2y$12$vkyADlKWlzqRyv1N3JQV5.b0csPkxpZd3WbNqJk3Q5.0WDEzluiQ6', 'default.png', 'siswa', '2025-10-31 02:47:33', '2025-10-31 02:47:33'),
(9704269, '3301206104110002', '$2y$12$Yrl2PEBb9TYVdkDRhqlL5eht3c1PUKgOLTHlm6/NxpcQcQYeuRCHC', 'default.png', 'siswa', '2025-10-31 07:22:43', '2025-10-31 07:22:43'),
(9704270, '3301134301110001', '$2y$12$lqTnSMrvCCIOVzlOnuLcouLVwHe1mV82wmZTaklVSjMP8CzXVVWQe', 'default.png', 'siswa', '2025-10-31 07:40:03', '2025-10-31 07:40:03'),
(9704271, '3301102106110003', '$2y$12$aB9JbJEDEAZakBW5gyegKeRrvVQJYhyG5AaAGcWzaqVQcVOThIwrq', 'default.png', 'siswa', '2025-10-31 09:44:03', '2025-10-31 09:44:03'),
(9704272, '3301120506110001', '$2y$12$c7tb1auI3yDu2NQMOubvxOvy2TPJ3jsPYGL.8xqpqTl5Fqp48iv9W', 'default.png', 'siswa', '2025-10-31 12:28:45', '2025-10-31 12:28:45'),
(9704273, '3301201610100001', '$2y$12$KG5QW2cFIN8Lg6JRjwGoKuiXfzA1tOhLO1W4RzsK3go3UyyS1DJ2e', 'default.png', 'siswa', '2025-10-31 12:31:56', '2025-10-31 12:31:56'),
(9704274, '3302015901110001', '$2y$12$bXesCn/52Mf0JzX0Km9zVO80sHiWha0EIpw8csJDj00pJu9nqlbJ.', 'default.png', 'siswa', '2025-11-01 01:54:02', '2025-11-01 01:54:02'),
(9704275, '3301120311120001', '$2y$12$Vbr9.A3Q/u1KNMLUD/IPF.MS.sI7IHZqswWROWr.fLY4vFO9pv6K6', 'default.png', 'siswa', '2025-11-01 02:10:15', '2025-11-01 02:10:15'),
(9704276, '3301121305080001', '$2y$12$5GBhbXJdqnsVY60CD2WxmO2YSJ16N88GyOa0gqTzuKgXJJI9qxSkW', 'default.png', 'siswa', '2025-11-01 03:46:33', '2025-11-01 03:46:33'),
(9704277, '3301202810100006', '$2y$12$aei0IXtPu2HXjzdx8BC0MebWn8mDbrn/29F0.D9EVrfCesTNgWsIK', 'default.png', 'siswa', '2025-11-01 05:02:14', '2025-11-01 05:02:14'),
(9704278, '3301125502110001', '$2y$12$RgS6OvjYyPj0AnRrrdUyi.GkhcUltp8rEsGcyqhD/mubX74sUUhLO', 'default.png', 'siswa', '2025-11-01 05:12:18', '2025-11-01 05:12:18'),
(9704279, '3301106512100001', '$2y$12$M8Qsi6.bSzFvxvn5UnbemOD7Dnelg7mg3qPH7KMb6ASftFhtXcK.m', 'default.png', 'siswa', '2025-11-01 05:16:19', '2025-11-01 05:16:19'),
(9704280, '3301124804120001', '$2y$12$xCe0kRldqdy.t1udnvrRl.2kmwiT86sWaGHYsAFBs/ALNNRSYQ1YK', 'default.png', 'siswa', '2025-11-01 05:23:18', '2025-11-01 05:23:18'),
(9704281, '3301124085100003', '$2y$12$c72fIBVUCrYmmeqVbkLsP.nZiau8YKicpbQvpnDpW8nxYdMGeBeZu', 'default.png', 'siswa', '2025-11-01 10:42:17', '2025-11-01 10:42:17'),
(9704282, '3301124805100003', '$2y$12$/7JHXlqeitTA0bHoa6ZrA.N0ZAcz5fH9AxiZLShIlbVNaskSatyEu', 'default.png', 'siswa', '2025-11-01 10:50:41', '2025-11-01 10:50:41'),
(9704283, '3301201712100001', '$2y$12$Wknvb5cBnkNJpeWfPVWiIurwanmaUsTpa0XnMT5qIHn/PTr2fI2i6', 'default.png', 'siswa', '2025-11-01 12:42:00', '2025-11-01 12:42:00'),
(9704284, '3301131106100001', '$2y$10$Ye4/advx4sCAG2JoqjkEzOXxWZJPeR2gjaFx2duDSLDwM/wB7Vmyu', 'default.png', 'siswa', '2025-11-02 09:27:49', '2025-11-02 09:27:49'),
(9704285, '3301132312110006', '$2y$12$/0Kg8STWZ6oHDRKyzmviKuBT/Ownfjuq7.N154sQUYW2KSHTwU26i', 'default.png', 'siswa', '2025-11-02 09:35:08', '2025-11-02 09:35:08'),
(9704286, '3301136307110001', '$2y$12$8CctNEp2U84LhJgVhO6jAu6s2nm3foup4GHa1DBzg9xtas8a/8jK2', 'default.png', 'siswa', '2025-11-02 09:38:23', '2025-11-02 09:38:23'),
(9704287, '3301120408100003', '$2y$12$80Yp2Fo7FZrSwVwTmjm6tebE5tuL0rVlY5fYH1GR2nAeYgTrtrCpW', 'default.png', 'siswa', '2025-11-02 11:34:49', '2025-11-02 11:34:49'),
(9704288, '3301126508110001', '$2y$12$wnl7beGH7FP8lr5kQUssbuzWyPLxPw86gjEg4Ceof3Xqu8Wl/YWy2', 'default.png', 'siswa', '2025-11-02 12:17:05', '2025-11-02 12:17:05'),
(9704289, '3301124412110001', '$2y$12$gnV6/IsXKmPJMUoqw7Zv0OlCL6BuxhAMauDV55Gsn8vZGeJSI2sXm', 'default.png', 'siswa', '2025-11-02 12:37:25', '2025-11-02 12:37:25'),
(9704290, '3301124511080001', '$2y$12$7s85.YyaBK.mtDI.SajKoO3rljLoRIisHgDwGlxI6ApWgTDKxOMPK', 'default.png', 'siswa', '2025-11-02 12:41:48', '2025-11-02 12:41:48'),
(9704291, '3301126410100001', '$2y$12$GWTXgpPRx/QgQA.Cft8ufe8D1JuW5QnVodYJxfp1iwGw0JDuaxaEq', 'default.png', 'siswa', '2025-11-02 12:57:43', '2025-11-02 12:57:43'),
(9704292, '3301124404110001', '$2y$12$Rcgffy/c.LMoqXCVz8Bg2O07Lvo70AujywiGpVM93eQTDPbzeGhgi', 'default.png', 'siswa', '2025-11-02 13:03:42', '2025-11-02 13:03:42'),
(9704293, '3301122407110001', '$2y$12$MJo5Gopn1HcQTIt1AOrmGujMUbTSUz7Wc7Xob/DcWB0tHEoZ/OgVa', 'default.png', 'siswa', '2025-11-02 13:08:19', '2025-11-02 13:08:19'),
(9704294, '3175072411101010', '$2y$12$GSU6BG/fcH7yRuD76VnvyuAanCrdgsSUhsBXanohOvhTddE0CRPni', 'default.png', 'siswa', '2025-11-02 13:17:39', '2025-11-02 13:17:39'),
(9704295, '3301120604100001', '$2y$12$CnTI6wThTlgJc0K2njU55.u/hGAo08FyjccFF7fQi7peSyyF54I9K', 'default.png', 'siswa', '2025-11-02 13:25:40', '2025-11-02 13:25:40'),
(9704296, '3301126912090002', '$2y$12$/3ZXIHlUGIoEd7653zA3leyV9K.AQtFSkimfOjqBJkHFJHVKSzs9G', 'default.png', 'siswa', '2025-11-03 01:23:17', '2025-11-03 01:23:17'),
(9704297, '3301125603110001', '$2y$12$.65LH4BO8O7B.Wj78LJIr.Zdtx5IXNKmOxNWU2OzD1zzBlpUfJ8UC', 'default.png', 'siswa', '2025-11-03 12:26:08', '2025-11-03 12:26:08'),
(9704298, '3301106704090004', '$2y$12$wuEQ5zg//hOPWew09TamqOSaXeeVyGDaBllGnUsSpqFtodT2P02WC', 'default.png', 'siswa', '2025-11-03 13:36:43', '2025-11-03 13:36:43'),
(9704299, '3301106501110002', '$2y$12$ceFZHbgy0WARwCohCT2cruVSA6OuyVXjB/Fw8Nr9kRatFXxpFl9uy', 'default.png', 'siswa', '2025-11-03 13:39:52', '2025-11-03 13:39:52'),
(9704300, '3301136703100001', '$2y$12$kn8wngI4jre2YDVschXTbum4whtDZCmZ89l2mqUNXsHGgzR96nFz6', 'default.png', 'siswa', '2025-11-03 14:05:11', '2025-11-03 14:05:11'),
(9704301, '3301136405100001', '$2y$12$afazg3fpOBLzfbdYYhkqCOuz5QHXz7WG4X7WTznARX/.f3.pBQRHy', 'default.png', 'siswa', '2025-11-04 08:48:42', '2025-11-04 08:48:42'),
(9704302, '3301125902110002', '$2y$12$Dwsy1L0r2nBerICSoKT96uryxDcsFkF1Qm6oOJSBXxpYbJ6rWsED6', 'default.png', 'siswa', '2025-11-04 14:14:18', '2025-11-04 14:14:18'),
(9704304, '3301201905090003', '$2y$12$NX.iFylVaD1WzH1j5WSAleebrY/yuIjV/grLj13IVZHXObNXnbb0q', 'default.png', 'siswa', '2025-11-04 14:31:49', '2025-11-04 14:31:49'),
(9704305, '3301122310110001', '$2y$12$4PuUwqSmXzR3FdS4HCHuaeb5Kjnuhy9UK2VvAidjVQBi8pQxOHUuu', 'default.png', 'siswa', '2025-11-04 14:44:36', '2025-11-04 14:44:36'),
(9704306, '3301100901110001', '$2y$12$.8ETjRDbMvtmV1/S1wKIVelEqloTgdfP7MtqE5GCtbjAAx.u0IoCO', 'default.png', 'siswa', '2025-11-04 15:00:14', '2025-11-04 15:00:14'),
(9704307, '3301120709100002', '$2y$12$4L8v1kK3Z4/oT/YLL6S0Te8nw4plsPNCGvOwi6z.rMnv.erwakYvu', 'default.png', 'siswa', '2025-11-04 15:10:34', '2025-11-04 15:10:34'),
(9704308, '3301122008100003', '$2y$12$r0h58Lx.u8aUIOTkaCiwwenurnYJHd9/2ils8gbvE4/xzFQUh0EpO', 'default.png', 'siswa', '2025-11-04 15:15:01', '2025-11-04 15:15:01'),
(9704309, '3301122907110003', '$2y$12$TY0abtpMztZC14.gsXZUsubTiibkImaqUQWULZpGfMCv7Xd594Jpa', 'default.png', 'siswa', '2025-11-04 15:20:54', '2025-11-04 15:20:54'),
(9704310, '3301124409100001', '$2y$12$v.XaN8LiqHosGuf1P3BIVuEj2b3ydda.K/64Pj0aN3UiEQMIrjiYe', 'default.png', 'siswa', '2025-11-04 15:26:09', '2025-11-04 15:26:09'),
(9704311, '3301125909110001', '$2y$12$9r6nQ8x3vZnvvRttFK1v0erKbY/2zGqECmf3GklTOxG7WZcc7B4HW', 'default.png', 'siswa', '2025-11-04 17:07:39', '2025-11-04 17:07:39'),
(9704313, '3301126206100002', '$2y$12$rx1lmpn/Jx2OvSixXIaDqOzW346Wrbor2GRSpP/Zkn/2Oel8ETyeG', 'default.png', 'siswa', '2025-11-05 10:05:37', '2025-11-05 10:05:37'),
(9704314, '3301135012110004', '$2y$12$Aws0qVG8WRPOzvsiCLUniuLHwk8.mwN8On4nK0StHe1NoycP8NvzG', 'default.png', 'siswa', '2025-11-05 11:37:42', '2025-11-05 11:37:42'),
(9704315, '3301130703110001', '$2y$12$4ldpyrLDahp2VwReAmUapOyN.zzXa4TjbQUZVTggacO9bl9CrNKLC', 'default.png', 'siswa', '2025-11-05 11:42:59', '2025-11-05 11:42:59'),
(9704316, '3301120411110003', '$2y$12$/4UFVAeOkRbjjqyj2G.VFec9zXaIjkLVg.hnvmmzWXgWn.ToeDpyu', 'default.png', 'siswa', '2025-11-05 12:58:07', '2025-11-05 12:58:07'),
(9704317, '3301125302110001', '$2y$12$mmryA2QEZKd.MMQPo1IYw.VsAuDatcf.05enQeEWMuLymYNTH7ICq', 'default.png', 'siswa', '2025-11-05 21:41:08', '2025-11-05 21:41:08'),
(9704318, '3301125810110004', '$2y$12$sqfDiL2tXd5NhkT9rfF2zOlxhRjBF5oMInUwE2mBehOpI1/xQTScG', 'default.png', 'siswa', '2025-11-05 21:47:49', '2025-11-05 21:47:49'),
(9704319, '3301126210100001', '$2y$12$wXulnFW9.T8UMTfuNJbG3O4vlrZRpdJFsllNf5OVK6WceKDCGNeZe', 'default.png', 'siswa', '2025-11-06 01:37:17', '2025-11-06 01:37:17'),
(9704320, '3301124606100001', '$2y$12$ZHUepvoC3bUR33wTMKPMx.ZI888moWDIzZes4ZC2gJ/ol84W8UynS', 'default.png', 'siswa', '2025-11-06 03:43:51', '2025-11-06 03:43:51'),
(9704321, '3301122103110003', '$2y$12$9yIiu6SjerlaRBCO3MbEc.b002kwGwVJifPQHOmxdaRgBTvuWeawW', 'default.png', 'siswa', '2025-11-06 12:49:02', '2025-11-06 12:49:02'),
(9704322, '3301201602100003', '$2y$12$cPctsS3oxFvwP0yh9Dh4UOoupH0UJn/.eqzJtGElaNUlAc6toHCP6', 'default.png', 'siswa', '2025-11-06 14:43:19', '2025-11-06 14:43:19'),
(9704323, '3301124208100001', '$2y$12$pWkbh1fdFKnI1GJfZRBdr.XWDeZEAPVCBxjVCHhSKeqYOWo57RvzW', 'default.png', 'siswa', '2025-11-07 08:00:40', '2025-11-07 08:00:40'),
(9704324, '3301132504110005', '$2y$12$2G.njixtuCuNlKHsWQTbr.wLGtmp97l3voOFhgscxzWouIWLraO02', 'default.png', 'siswa', '2025-11-07 08:05:29', '2025-11-07 08:05:29'),
(9704325, '3301120508110002', '$2y$12$VSDmnfh1wRLleY8Lm.lypOHkJXISKO7WXTtQmhqxYE/gOYrHYDB6i', 'default.png', 'siswa', '2025-11-07 08:20:00', '2025-11-07 08:20:00'),
(9704326, '3325064104110001', '$2y$12$lk7oY23Rzfll.tC3vMw7nuf2ja1gc9C2hV7/6GJqg1o9r1KGJ6NPq', 'default.png', 'siswa', '2025-11-07 08:28:03', '2025-11-07 08:28:03'),
(9704327, '3301121203110002', '$2y$12$/caw6ll1IV3LfefRvdQiTOvvxOMTAWIkb/zmI7yKhpdwkMMtll.L.', 'default.png', 'siswa', '2025-11-07 08:38:06', '2025-11-07 08:38:06'),
(9704328, '3301123105110003', '$2y$12$8ujh2N9vTXJGu92iCMilNeswZkcIgF5Q6XeVIDhBrj1wyVw2O5TZy', 'default.png', 'siswa', '2025-11-07 08:44:21', '2025-11-07 08:44:21'),
(9704329, '3301120904100002', '$2y$12$ycMKHZ6HAtnffhSWKcZ7YuNEcG9zENj4vpgLiqqfO9SWjDADvEsKK', 'default.png', 'siswa', '2025-11-07 09:01:24', '2025-11-07 09:01:24'),
(9704330, '3301134503110001', '$2y$12$rqELxOo9jvP4f0j4hX74ReanFvxXg.2PDG3dbyj.OAUSCbpglZXTW', 'default.png', 'siswa', '2025-11-07 10:03:29', '2025-11-07 10:03:29'),
(9704331, '3301120506110006', '$2y$12$BYrNi3sgk2RI1Q0qPOGAeuXBx5FRkkClXpVYlXsnLHeq6HpeibPpK', 'default.png', 'siswa', '2025-11-07 12:12:16', '2025-11-07 12:12:16'),
(9704332, '3301122903110003', '$2y$12$f8J0gA8TRpF3LBi2Fme40.8tckY5bLMEmRzp/9xsI9nyUa/3cf1Qe', 'default.png', 'siswa', '2025-11-07 12:17:18', '2025-11-07 12:17:18'),
(9704333, '3301201802110002', '$2y$12$tAoBS.IvFJ.KWLubtQiR/.0243.SZuK0Ea4moXzXYAum0yZCMEecC', 'default.png', 'siswa', '2025-11-07 12:50:59', '2025-11-07 12:50:59'),
(9704334, '3301121905110004', '$2y$12$5xzhVVT1xxjo4k5XxEsnNeH8wxCdQvqAUatUPb.36qhbRckwgPWYO', 'default.png', 'siswa', '2025-11-07 14:03:01', '2025-11-07 14:03:01'),
(9704335, '3301122807110001', '$2y$12$AYAuFmzLIKtrewbNXp9E8ud5vkeqvH2Q1BnJ.X0on5vMFm49IV0BO', 'default.png', 'siswa', '2025-11-07 17:23:22', '2025-11-07 17:23:22'),
(9704336, '3301122003110001', '$2y$12$Q3hHJLjrCR.G8ftqBk34XuANwNVoygE/.Zh12QEZ5aASzr084vcqS', 'default.png', 'siswa', '2025-11-07 23:18:09', '2025-11-07 23:18:09'),
(9704337, '3301122008100001', '$2y$12$oEyrnQiyUcRADwjj.VbbLOKo10TPExO4Ye6FDXE6uc4/mTK3dR4ku', 'default.png', 'siswa', '2025-11-07 23:23:41', '2025-11-07 23:23:41'),
(9704338, '3301121002100003', '$2y$12$NajdRrYVc6TOJ9fpEX3uX.fsaSvO.0kB5fDN36AQaPXjrndsUE0Zq', 'default.png', 'siswa', '2025-11-07 23:30:44', '2025-11-07 23:30:44'),
(9704339, '3301121004110003', '$2y$12$gEOGn5W7wA73mtwj.EgQ0eBXjT5ryoOQUiuTEYW2P82EkFUh5.5qe', 'default.png', 'siswa', '2025-11-07 23:37:50', '2025-11-07 23:37:50'),
(9704340, '3301122203100002', '$2y$12$7vWeJCgcEje7sukvSD5KvueKvdLCU84MVglKNPTiTg76BRbfzKfZC', 'default.png', 'siswa', '2025-11-09 04:01:35', '2025-11-09 04:01:35'),
(9704341, '3301120810100001', '$2y$12$frJUI3Y2AFi/JNXEO3YsC.HDdWRvTf4B6Rys3SZMiGydqx/zRlls6', 'default.png', 'siswa', '2025-11-09 07:16:21', '2025-11-09 07:16:21'),
(9704342, '3301122505110003', '$2y$12$kdqbLlYyHnwd3f00gUGKu.kcEL5YEhw57lnNoip1Qy5yBUHFUMTA.', 'default.png', 'siswa', '2025-11-09 07:19:09', '2025-11-09 07:19:09'),
(9704343, '3301131312100004', '$2y$12$vG6lbqIgaPh8.asF9n43P.xxXPkN0ddkatk3Cu8Xd1.Skmdh03Kvy', 'default.png', 'siswa', '2025-11-09 22:52:50', '2025-11-09 22:52:50'),
(9704344, '3301124805110002', '$2y$12$smZ9FlvXuH.xnU3lCKjVdONYsOysrewTUObfbZkUjeBSx3FZz.S2m', 'default.png', 'siswa', '2025-11-10 06:16:18', '2025-11-10 06:16:18'),
(9704345, '3301126101090002', '$2y$12$g246pZQ8wiVgjSaB3f7oaOn8/KwqO96V8Vc1XLsQJToEbC4KJSds6', 'default.png', 'siswa', '2025-11-10 06:23:54', '2025-11-10 06:23:54'),
(9704346, '3301131504100003', '$2y$12$Vs2DALKTddieC6dQ.1oaa.KZrI4shx7QisNpFI1fGPqW6DQl5U5n6', 'default.png', 'siswa', '2025-11-10 09:32:08', '2025-11-10 09:32:08'),
(9704347, '3301122607110001', '$2y$12$2u.Ep6xvBj5EVgJSQ9kA9OljB5PIVkj14LFVYzYPos7EYnKNzpHQS', 'default.png', 'siswa', '2025-11-10 10:53:21', '2025-11-10 10:53:21'),
(9704348, '3301121905110003', '$2y$12$s8D/UfLcgBo/I0Wqu0wnvuO7q3hpiGIHEn6cznYY.2VW6bHDVGiyK', 'default.png', 'siswa', '2025-11-11 01:09:28', '2025-11-11 01:09:28'),
(9704349, '3301122310100004', '$2y$12$7t24lCC/E0rE0E6ej7E/BOxZcpK.ivUcf1KY44lQFFtJmpjOfp1lm', 'default.png', 'siswa', '2025-11-11 02:14:41', '2025-11-11 02:14:41'),
(9704350, '3301122801110001', '$2y$12$6webHCtiJXfX38Rwd0kJDuwhtDqfoEQDqcoLhoxkjz1c1nd/xLssO', 'default.png', 'siswa', '2025-11-11 03:06:19', '2025-11-11 03:06:19'),
(9704351, '3301120504100004', '$2y$12$iOBsMMThRXffzsABqa8p7ed0CJU2MYx3jFZynQ1q2koqmfbNvT8zS', 'default.png', 'siswa', '2025-11-11 03:09:58', '2025-11-11 03:09:58'),
(9704352, '3301122009110002', '$2y$12$Cb6T0KrQlPZEuPVNwXyjgO0PzNQM.YBQDBmDY5IvhUaah2yOIjDKO', 'default.png', 'siswa', '2025-11-11 07:29:13', '2025-11-11 07:29:13'),
(9704353, '3301121402100001', '$2y$12$FWUhOf05NFciMTgZkYryC.j5RK08oMhEL593uggnCYy5MD0pZCn62', 'default.png', 'siswa', '2025-11-11 07:54:28', '2025-11-11 07:54:28'),
(9704354, '3301121811100003', '$2y$12$8s4I.f0/g2pruMchcICe9OCq47LQ69xr00nbMCMQa5AHiUah.NMm6', 'default.png', 'siswa', '2025-11-11 08:06:03', '2025-11-11 08:06:03'),
(9704355, '1401123112110006', '$2y$12$ZIQ9.Hvl6Jlh011NJYFz0e120q3jYbHBC5Q2penymiszLHqABNg8q', 'default.png', 'siswa', '2025-11-11 14:39:37', '2025-11-11 14:39:37'),
(9704356, '3301120102080006', '$2y$12$OJVXe2UHPtTmtB1P7/PWhOntN6o64/icq026DE2DTcQOMn1O8/mKK', 'default.png', 'siswa', '2025-11-12 10:07:30', '2025-11-12 10:07:30'),
(9704357, '3301204410110002', '$2y$12$sUZ3aO/l33tFRgrWInbluuwJknFHU.vLZjgsxosnnk6w1vC3BcUOa', 'default.png', 'siswa', '2025-11-12 10:22:43', '2025-11-12 10:22:43'),
(9704358, '3301106407110003', '$2y$12$ect7w5.FrIwrGuTsdb51U.BFjkvghe5lGmiRfZoEM.5YQeWUOpvUq', 'default.png', 'siswa', '2025-11-12 10:39:28', '2025-11-12 10:39:28'),
(9704359, '3301121101110002', '$2y$12$2tTqV86bHZopX.MzMkSdyu3w4XDHGjUEXKfd9WDDvhfod.XFRQrHC', 'default.png', 'siswa', '2025-11-12 13:06:02', '2025-11-12 13:06:02'),
(9704360, '3301121212100002', '$2y$12$Jlgg2y2vldxYw5gA58VufeJ.KpGeAG5yZijucCLqqzEiopUx/Tf..', 'default.png', 'siswa', '2025-11-12 13:09:59', '2025-11-12 13:09:59'),
(9704361, '3328116110100004', '$2y$12$58YeCcIBsxc9dMNk1jHg.u.sBJm5rSE3JdQ.LI0RaqosSxjcn5kX6', 'default.png', 'siswa', '2025-11-12 13:39:00', '2025-11-12 13:39:00'),
(9704362, '3301135607110004', '$2y$12$KUcsXKpHzL86vjf3on9NvuF8B3juNpeM.2g3ilYL/pOMiI0.iiXNS', 'default.png', 'siswa', '2025-11-12 13:47:30', '2025-11-12 13:47:30'),
(9704363, '3301131710090006', '$2y$12$Oya7ZZmxzQmO1BRHNlm1uO9foWLt9FmO3P.rXBxbACbmZMbWbQ.by', 'default.png', 'siswa', '2025-11-12 22:57:39', '2025-11-12 22:57:39'),
(9704364, '3301132211100002', '$2y$12$BRdihRMXDseCXmL/Ibsa9e3A.qSbwrDkiz.MnRuw.DP.upwGfNxma', 'default.png', 'siswa', '2025-11-13 03:13:35', '2025-11-13 03:13:35'),
(9704365, '3301125304100002', '$2y$12$C7aXMx4Z6Tygo2kEIGMbPujMShLrr2YVhzxdpm.6FPnU/v4SvMwpe', 'default.png', 'siswa', '2025-11-13 03:16:06', '2025-11-13 03:16:06'),
(9704366, '3301131101100004', '$2y$12$a6RswDAtNgQPeeVoMMGyiu7SZFOUpG9a5gVrEjV3yKBmduENP584e', 'default.png', 'siswa', '2025-11-13 04:05:23', '2025-11-13 04:05:23'),
(9704367, '3301134304110001', '$2y$12$3FjbWUwWJZWnTYrhI7zRJOpgvCz77ArGd8vq8uB9ps36itFE2AAuu', 'default.png', 'siswa', '2025-11-13 04:06:00', '2025-11-13 04:06:00'),
(9704368, '3301130901100002', '$2y$12$lecNvkZxQV.J5KApquVws.QyXCjESCDlbjolwEVuak7aqf1fqTdQe', 'default.png', 'siswa', '2025-11-13 04:23:23', '2025-11-13 04:23:23'),
(9704369, '3301134908100002', '$2y$12$pkHrKzeGqviaCG2sdK.OUemUVLV0Yjl7H4GWsl3dDwbEaUGoOhIRO', 'default.png', 'siswa', '2025-11-13 04:34:25', '2025-11-13 04:34:25'),
(9704370, '3301131103110001', '$2y$12$F.crQ.9YqzQiJ9aimdOj7OEPdkMlgrtcRCMAPG4mLnSsd95cBa1cy', 'default.png', 'siswa', '2025-11-13 11:45:56', '2025-11-13 11:45:56'),
(9704371, '3301130907100002', '$2y$12$jzo538S7IMAo5lRir9CLMeN6H9pQXi0fHBJfEKFYpS3gys9Um.XaS', 'default.png', 'siswa', '2025-11-13 11:49:29', '2025-11-13 11:49:29'),
(9704372, '3301132112100059', '$2y$12$9SHwV4RjZ4qmblBa.KN6aeA76PYV50y5sBV5OMw2ko4RH37bERM6y', 'default.png', 'siswa', '2025-11-13 12:13:14', '2025-11-13 12:13:14'),
(9704373, '3301131612100001', '$2y$12$O/NQqVzRXT97a0EaUkwpBeu8oFa.oIQN/AQ7ewNbNH3e3KCzaYzC2', 'default.png', 'siswa', '2025-11-13 12:16:39', '2025-11-13 12:16:39'),
(9704374, '3301126106110002', '$2y$12$8PPyB68WQgLBGpusGeS9KeKloaN.3i/clE8SQVGsH/C4ZYbQlkk5S', 'default.png', 'siswa', '2025-11-13 12:49:34', '2025-11-13 12:49:34'),
(9704375, '3301125912100002', '$2y$12$BR65pkvxjEzfxS1vm2Krd.8bLFwzbFM0iHQ3ZMFOXFdxUZOYlw142', 'default.png', 'siswa', '2025-11-13 13:04:51', '2025-11-13 13:04:51'),
(9704376, '3301130310100004', '$2y$12$u0GJZ3p2eJelBY51uvEE3OyJYzL8PmMgv0p2uqWj/9P/NfrOwcpAS', 'default.png', 'siswa', '2025-11-13 13:18:36', '2025-11-13 13:18:36'),
(9704377, '3301135801110002', '$2y$12$5zDjRV2VuNja7Dg6xikXH.QYxVbya6TbKt8efhQh/WIGXTp6vgOuq', 'default.png', 'siswa', '2025-11-13 13:21:26', '2025-11-13 13:21:26');
INSERT INTO `users` (`id`, `username`, `password`, `foto_profil`, `role`, `created_at`, `updated_at`) VALUES
(9704378, '3301134609090004', '$2y$12$tJbjaTDDbxX7NX8xNC/tVeHDph8OqNOZDRhVJklR73x6YPGSkUBWC', 'default.png', 'siswa', '2025-11-13 13:24:36', '2025-11-13 13:24:36'),
(9704379, '3301134407100003', '$2y$12$9rrodoDr2ctnKR0/s0sXVuBboNBsm6L24RMGxBG9AsD4NSIjwUqR2', 'default.png', 'siswa', '2025-11-13 13:29:34', '2025-11-13 13:29:34'),
(9704380, '3301126910090002', '$2y$12$eCueDnHweKbVdzvlYjEiHezAlTHNbN9737qVEF8Kjk/Aq1uh4PSXG', 'default.png', 'siswa', '2025-11-14 08:12:58', '2025-11-14 08:12:58'),
(9704381, '3301132106110002', '$2y$12$1ypT5ohpM06xBELne97VD.i44crPZezryXAQvomzlTsXMW8Okr6Zi', 'default.png', 'siswa', '2025-11-15 05:17:29', '2025-11-15 05:17:29'),
(9704382, '3301132106110001', '$2y$12$JibMFkSUbNhH3mXQW.Ealej8WLtgfyqiM3KiV8RkPGwvdE3QJBAOm', 'default.png', 'siswa', '2025-11-15 05:20:53', '2025-11-15 05:20:53'),
(9704383, '3301135304110001', '$2y$12$2dcmwRl97iaQbG/3HWxQvu4N017lTYxEXwvMo7ka3EszCEVPhE9FS', 'default.png', 'siswa', '2025-11-15 05:34:34', '2025-11-15 05:34:34'),
(9704384, '3301130801090004', '$2y$12$v8rEGIXgO4BVBTmQmA1lQe6aikwv/Pw1oT0Mxupx8/34oXCdEWK6O', 'default.png', 'siswa', '2025-11-15 05:45:26', '2025-11-15 05:45:26'),
(9704385, '3301130406090001', '$2y$12$a95paxbYmaEuHANYTgmms.So0Pk2fdz4Ld.1Y9LRsX7h5Y/SlxNHG', 'default.png', 'siswa', '2025-11-15 05:49:55', '2025-11-15 05:49:55'),
(9704386, '3301120902110001', '$2y$12$Dr8cNwXgzj9sYTOurHRSJODdJARGzeTMIrp7/usNr7yPDl1kHMBcK', 'default.png', 'siswa', '2025-11-15 05:49:56', '2025-11-15 05:49:56'),
(9704387, '3301119090900004', '$2y$12$wcdZocw3SNVREYjlF19NauRz60OsDFrDK.NZdHnTw.p9jvIHkb7b6', 'default.png', 'siswa', '2025-11-15 05:58:26', '2025-11-15 05:58:26'),
(9704388, '3301130601055228', '$2y$12$F8mXcVyqo0rRE/kwRclyxOx0VsoKbCmJYpCKKCC5A5/f95Jjp0qVe', 'default.png', 'siswa', '2025-11-15 06:22:41', '2025-11-15 06:22:41'),
(9704389, '3301124309110004', '$2y$12$cZUDkHlQQvfKVzDbib6C7OOFO8p8gvjTIwrcd4SozMdwZDXVAWhAW', 'default.png', 'siswa', '2025-11-15 06:23:21', '2025-11-15 06:23:21'),
(9704390, '3301124203110001', '$2y$12$IQGrvDzfTtiSG1oJZ3yVH.ZQVZi3pox3xhifO5LY4BLiZlLDrw5K2', 'default.png', 'siswa', '2025-11-15 06:27:40', '2025-11-15 06:27:40'),
(9704391, '3301132406100004', '$2y$12$RVosALTejt/T8OvXCiEtCu4V1pzDOCdoZB4pv0deN8IvBXW0Xvx7K', 'default.png', 'siswa', '2025-11-15 06:28:28', '2025-11-15 06:28:28'),
(9704392, '3301119090900001', '$2y$12$9mvsTgzVXlJ3ECuCFS8f4.XUfL0b6CZWOFMkc7TyEXtjMT6vmAvSK', 'default.png', 'siswa', '2025-11-15 06:28:41', '2025-11-15 06:28:41'),
(9704393, '3301125911100001', '$2y$12$CXNpp7hLNX89PN.wTYB.y.sdqh9/XcRlLkkcGQt8NLwi4STG6H.NS', 'default.png', 'siswa', '2025-11-15 06:34:51', '2025-11-15 06:34:51'),
(9704394, '3301126107100004', '$2y$12$cXjQOwg7DqZV2sIFUpHY..RTb0hPyoAkPSkJABk7QK.ImL8v7.FcG', 'default.png', 'siswa', '2025-11-15 06:43:49', '2025-11-15 06:43:49'),
(9704395, '3301136308100003', '$2y$12$LYART4yJ6he6PZA0SMBj7OoH9D6.MDA5Xhk0Ff6U.ieEUZluD6YoG', 'default.png', 'siswa', '2025-11-15 06:47:05', '2025-11-15 06:47:05'),
(9704396, '3301122103110002', '$2y$12$hyEXref17xLrvbWubfyDxOI9PhxTbEOddXOyEc.daQP/mqJHOqqRC', 'default.png', 'siswa', '2025-11-15 06:48:53', '2025-11-15 06:48:53'),
(9704397, '3301120801110001', '$2y$12$zMHErct..eoNyPzrnShqc.9NJiKtBF85ogzlyASPscrZZA2bEzph2', 'default.png', 'siswa', '2025-11-15 07:00:00', '2025-11-15 07:00:00'),
(9704398, '3301130310100002', '$2y$12$oPRHDTQ9lE4OeIKFW8y6k.6midHVr0iGJ9/aV/0tpvTOI/2RVIR5K', 'default.png', 'siswa', '2025-11-15 07:00:31', '2025-11-15 07:00:31'),
(9704399, '3301124205100002', '$2y$12$G2kLZM6eVUQYvvcFzQPhruoREJJUZ/1XamVFBfGtsaDWnyyMfKULS', 'default.png', 'siswa', '2025-11-15 07:05:40', '2025-11-15 07:05:40'),
(9704400, '3301126612100001', '$2y$12$/5eDWyg.qEWP06wbLHv0quWw9QOiENr2Aj17VwVKmt6.pXUrkeAuC', 'default.png', 'siswa', '2025-11-15 07:10:38', '2025-11-15 07:10:38'),
(9704401, '3201127105100003', '$2y$12$HocBJ3fUgC/tYJzI/rVUVOyrOlm9hUA7JqW9V7hhHMTBgc5q1P5zy', 'default.png', 'siswa', '2025-11-15 07:21:25', '2025-11-15 07:21:25'),
(9704402, '3301130702110005', '$2y$12$0T7mhMcx.E3wJxhXJ5cTHul.sy7ajNHsOoUZpQ5xhOK1KsASb21Je', 'default.png', 'siswa', '2025-11-15 07:25:58', '2025-11-15 07:25:58'),
(9704403, '3301122809110001', '$2y$12$mHudMj9BeluRZfhGdkEWCOwFmaCi0pCB1o0WEd0QQ/qvobDvSsLQC', 'default.png', 'siswa', '2025-11-15 11:21:20', '2025-11-15 11:21:20'),
(9704404, '3301121902100001', '$2y$12$akGjl4e8x8nXIpRwISC.putyvqw0fyohFYnUdN.2zwWY4zkc6t.DK', 'default.png', 'siswa', '2025-11-16 05:24:37', '2025-11-16 05:24:37'),
(9704405, '3301121809100001', '$2y$12$Oi/pKlm8P7bPaiSqUWs3y.ejCHFRfIu38qPdfjeRuV/0lZTz0215G', 'default.png', 'siswa', '2025-11-16 05:27:17', '2025-11-16 05:27:17'),
(9704406, '3203112702110001', '$2y$12$h1HRzpOOWEj0uE.MoYzmKecL3UcwpY0sSf7YwKkVWtTh0zDnFZlg2', 'default.png', 'siswa', '2025-11-16 06:02:27', '2025-11-16 06:02:27'),
(9704407, '3301126201110002', '$2y$12$./QrxSLxYXs../VXCBuwyOD4TZdhd9XlZRQ6PvzuxFFk77ukEmDaG', 'default.png', 'siswa', '2025-11-16 08:24:31', '2025-11-16 08:24:31'),
(9704408, '3301133003110003', '$2y$12$uroM2sKo8JKbmQpUGdBnZ.6cUEWMWk7O1Hj5/4uuE1C2g9xU0tTvK', 'default.png', 'siswa', '2025-11-16 08:55:50', '2025-11-16 08:55:50'),
(9704409, '3301136810110002', '$2y$12$PvA2hgZ4JmWTCTQGOJPHE.h7ubitv6U5iWO05L0BhzLSgc7kEO.by', 'default.png', 'siswa', '2025-11-16 09:00:05', '2025-11-16 09:00:05'),
(9704410, '3301137105110003', '$2y$12$V0a8v5CBlbzidPyS95ZLTuzdqWhrDRRsFsrpUPZXNPJJeCyk3Smau', 'default.png', 'siswa', '2025-11-16 09:10:44', '2025-11-16 09:10:44'),
(9704411, '3301135501110001', '$2y$12$ljHaQFusRb4IJ./qNYzL5eINS90PFUYoJC6pR6Zq9JMTCMez1gvbK', 'default.png', 'siswa', '2025-11-16 09:14:50', '2025-11-16 09:14:50'),
(9704412, '3301131202110004', '$2y$12$Tj8hGMo3FuFjuB4h8IEFkuOeUPe7wl4Qk5EwALPO/1WYZ1p3HJIYG', 'default.png', 'siswa', '2025-11-16 09:18:50', '2025-11-16 09:18:50'),
(9704413, '3301135101110002', '$2y$12$rK41pv6D9H2smkY7O08/h.IZ57tL0bCajtfft3K/94LBVoqJcA9M6', 'default.png', 'siswa', '2025-11-16 09:25:33', '2025-11-16 09:25:33'),
(9704414, '3301132607110003', '$2y$12$fJhjrdbGASS53n2wTRRSTeZXh0TFHdRNYPvgxbTgCfDtehbQpaIgS', 'default.png', 'siswa', '2025-11-16 09:29:39', '2025-11-16 09:29:39'),
(9704415, '3301134309100004', '$2y$12$k7AZV106.MbSlmfuEBZAtOH9Uvtdu4QamtDEOJXvdFN77guBG.ULS', 'default.png', 'siswa', '2025-11-16 09:36:42', '2025-11-16 09:36:42'),
(9704416, '3301134607110001', '$2y$12$97TwEOwJA16zHeGi7MlBM.ksRvC/bGdwpjpgzjAeMVAWh.I6BgUYy', 'default.png', 'siswa', '2025-11-16 09:40:46', '2025-11-16 09:40:46'),
(9704417, '3301136110100001', '$2y$12$nFJSstK9yiXqh2nwrn0ZoOBAU7CFaBO7yitobiW5sALLXI7xJDPky', 'default.png', 'siswa', '2025-11-16 09:49:18', '2025-11-16 09:49:18'),
(9704418, '3301131606110001', '$2y$12$xq31RV1Irc41zNtETKr9N.TSDB4ll2RUNHo91pDEPQpXsfvyKF9sq', 'default.png', 'siswa', '2025-11-16 09:57:54', '2025-11-16 09:57:54'),
(9704419, '3301133105110001', '$2y$12$tw10ZMPzqPHl3ZFpfP9m8Ol4FARsD.B/AiV4mMRGnum92Uf1SIm1G', 'default.png', 'siswa', '2025-11-16 10:02:40', '2025-11-16 10:02:40'),
(9704420, '3301206210110002', '$2y$12$tF2Oew/bb1rMvEj4jr7OPucNbQzUNFqJme71mzz0g2G19NhBP6IA6', 'default.png', 'siswa', '2025-11-16 12:41:33', '2025-11-16 12:41:33'),
(9704421, '3301131908100001', '$2y$12$HQOSroikN4s0PLe8Q0Ca/.p/pD08cB6g5nq9VRqEmTliSJ/pCCgmO', 'default.png', 'siswa', '2025-11-17 01:15:38', '2025-11-17 01:15:38'),
(9704422, '3301120304110004', '$2y$12$P0t5sFuINhz0Itgsq0f3kOwy9DA7WWm8Wflhf.tDCRnP3rqnJRBZS', 'default.png', 'siswa', '2025-11-17 02:34:07', '2025-11-17 02:34:07'),
(9704423, '3301106207110002', '$2y$12$Nd0ErODXbyC8nxkbgHFlH.iKLlzmR/0OSVxxbyWF2wfu771t6k.kq', 'default.png', 'siswa', '2025-11-17 10:03:26', '2025-11-17 10:03:26'),
(9704424, '3301132407110002', '$2y$12$.K4l7kL/TqKD2eZMpLUsH..ElbWGu0uIUTPcKsjicAvccQD4etW56', 'default.png', 'siswa', '2025-11-17 10:30:44', '2025-11-17 10:30:44'),
(9704425, '3301134108100001', '$2y$12$v6Pr8duxpWBm5LxSujUkj.kzaJt4M73YJ4K1yS9lcBtNc2fhX5t/q', 'default.png', 'siswa', '2025-11-17 10:36:08', '2025-11-17 10:36:08'),
(9704426, '3301140610100001', '$2y$12$q0qf9QhSG./cwioD.zIrVuW/GUNXpkPBVNHFcmQPXOsFEIdQaXCja', 'default.png', 'siswa', '2025-11-17 10:42:39', '2025-11-17 10:42:39'),
(9704427, '3301132904100001', '$2y$12$45Vly3Mo/W3XNo8vkHfv6OzseaB9/48Hn/RG8VTweCQD64jIIrnke', 'default.png', 'siswa', '2025-11-17 11:36:03', '2025-11-17 11:36:03'),
(9704428, '3172064202111004', '$2y$12$Iqaasp3dEVBdg.v9fPfEg.2vlV87WttUQbDh2UhDFjmST0t.eqgWG', 'default.png', 'siswa', '2025-11-17 11:54:53', '2025-11-17 11:54:53'),
(9704429, '3305015111100002', '$2y$12$H.IHAZND2USZaQOcE3BOn.6XPWNHkw3KgU7uq/VkkGkmhZ2kjzAj.', 'default.png', 'siswa', '2025-11-17 12:04:36', '2025-11-17 12:04:36'),
(9704430, '3301192312100002', '$2y$12$jtbbiVwyYgHyU5PEqdM1z.dqYXHLUsTFN9p.ZW0JY1NkGMwSN8jdG', 'default.png', 'siswa', '2025-11-17 16:37:50', '2025-11-17 16:37:50'),
(9704431, '3301105704120003', '$2y$12$YNGy03FkyIdJB.oD0SaCU.GcEXk26laX63jlLJNsfJSxPIxo/9nQ.', 'default.png', 'siswa', '2025-11-17 16:46:04', '2025-11-17 16:46:04'),
(9704432, '3301203005110002', '$2y$12$mOLf.p/BBrZR.uEgzL6ea.5LMRYszXPT1y8sgaALXoVA3wAQhOAr.', 'default.png', 'siswa', '2025-11-17 16:58:33', '2025-11-17 16:58:33'),
(9704433, '3301201403110001', '$2y$12$T36gxZmfTUXbhiHDg8dlHuVZfMTa/EARxcDDmzRIopelOiKHH7H/m', 'default.png', 'siswa', '2025-11-17 17:07:06', '2025-11-17 17:07:06'),
(9704434, '3301131107110001', '$2y$12$wDuNW2tRaWOxEJt/6txAGO5ygfjG79IIBJTMP2cKOxc5x/5iLBBkG', 'default.png', 'siswa', '2025-11-17 21:35:51', '2025-11-17 21:35:51'),
(9704435, '3301094510100005', '$2y$12$w6EHiz7RRjGVNfN8c.hZg.1wv1n7QkNuYVpk6VtJB4DlaSMyyKQdW', 'default.png', 'siswa', '2025-11-18 00:18:19', '2025-11-18 00:18:19'),
(9704436, '3301133008100001', '$2y$12$YRYA5zt7gE0U1.1Zjrx8rONlncgFXiMWKLxv2aTpnjCSnuus5wTYu', 'default.png', 'siswa', '2025-11-18 00:52:02', '2025-11-18 00:52:02'),
(9704437, '3301126810100001', '$2y$12$9XPfGh02bTx9D3ZNU50V4.eimxnSYYQCsz/IVDnjMEJkfbKZGm9Ty', 'default.png', 'siswa', '2025-11-18 02:32:15', '2025-11-18 02:32:15'),
(9704438, '3301122007100001', '$2y$12$0GW4YJnqXNQT/tiWw1pnhuLaHGTPIuTxRukhnkhij0HcMla/VEvC2', 'default.png', 'siswa', '2025-11-18 02:49:51', '2025-11-18 02:49:51'),
(9704439, '3301096801110004', '$2y$12$LkBMOJNchAVtup2y86yJpueeliaqRQJHb5enromRhtwp4sncIBXvK', 'default.png', 'siswa', '2025-11-18 03:38:45', '2025-11-18 03:38:45'),
(9704440, '3301200303100003', '$2y$12$b3frL1tp4niN.eQmjeyV6esnFZzBN0fVrY8L.3h9UUWts1BehpxbW', 'default.png', 'siswa', '2025-11-18 04:08:36', '2025-11-18 04:08:36'),
(9704441, '3301205809100002', '$2y$12$/fXvQb90OZK9FOE9HEzqMOJPIpx1ZAlHUlgx8ySzh4DYIsx6xGATy', 'default.png', 'siswa', '2025-11-18 04:45:26', '2025-11-18 04:45:26'),
(9704442, '3301120901120004', '$2y$12$S2PthWNZFx6OZQVHxCjXiOPb08J.0p6gdK5MFvy90ylg3h4SzDXHO', 'default.png', 'siswa', '2025-11-18 09:12:49', '2025-11-18 09:12:49'),
(9704443, '3301205104110002', '$2y$12$hoOiGuIaKTdXZj7ZWcHlROOx5dUWCkrwqfMdcpsVRk7sVRu8hIz.2', 'default.png', 'siswa', '2025-11-18 10:46:44', '2025-11-18 10:46:44'),
(9704444, '3301201101110001', '$2y$12$IhII/d.Xfxl91.BVXzWsauVDlHXv4/vKCQvu9JNh9JwAjf44cSbBy', 'default.png', 'siswa', '2025-11-18 10:53:58', '2025-11-18 10:53:58'),
(9704445, '3301202009100001', '$2y$12$nJXPoJGuA9kyjF8muRhbUuWBPGW1uU53Kvd6hlF4Le3W8mZ1JRdZC', 'default.png', 'siswa', '2025-11-18 11:07:15', '2025-11-18 11:07:15'),
(9704446, '3301205510100001', '$2y$12$XmNIjL0h6vRc08gIIxxnfeQLp6g.V2bu7t1LOvlLJuYBU2naSSUa6', 'default.png', 'siswa', '2025-11-18 11:15:03', '2025-11-18 11:15:03'),
(9704447, '3301202208100003', '$2y$12$12jqt5A1az95t1qRA1co5.S4zXAwfQbzAWvJiFIIOPwtOy1a6l6/u', 'default.png', 'siswa', '2025-11-18 11:29:20', '2025-11-18 11:29:20'),
(9704448, '3301126202110003', '$2y$12$GHcB9oo.0MpBZJEiJJ.7YO5NrOwep0k6FJYOEVHgKqZZUTitYIQcu', 'default.png', 'siswa', '2025-11-18 14:34:23', '2025-11-18 14:34:23'),
(9704449, '3301120911100005', '$2y$12$WuAlFNEgw6OZuGYLJ.ZAiuqicjbu7ziOQs96W2CakdKJekzfJhaF2', 'default.png', 'siswa', '2025-11-19 04:22:45', '2025-11-19 04:22:45'),
(9704450, '3301130911100004', '$2y$12$XBN5us37Lj.LtNpx6mkXDOKwz.Ltwyyi8GYYvVJVl5tm7dhbyw5MO', 'default.png', 'siswa', '2025-11-19 07:29:34', '2025-11-19 07:29:34'),
(9704451, '3301122508110003', '$2y$12$bnVth761agEovsH6IhIMHOTrK07ChY96EC/lmzbND6gdv99tQmWIm', 'default.png', 'siswa', '2025-11-20 00:02:53', '2025-11-20 00:02:53'),
(9704452, '3301107012100001', '$2y$12$VoDEfu8Xv0xD8kReuVutpOdg4x13PEEtLOvUkqQfXblgiwO2AiH52', 'default.png', 'siswa', '2025-11-21 05:45:34', '2025-11-21 05:45:34'),
(9704453, '3302011707090003', '$2y$12$ryvnrY3ayHY392ugbndmKegbEiArVQWRTuQI0ftS61fLiIqqTD/ym', 'default.png', 'siswa', '2025-11-21 06:15:31', '2025-11-21 06:15:31'),
(9704454, '3301124902110002', '$2y$12$Yb2l7mJc9ZOOwUpUNM7zEujsi2FPBxVgqsYwaKEBud1IuPbLirhva', 'default.png', 'siswa', '2025-11-22 03:02:07', '2025-11-22 03:02:07'),
(9704455, '3301122903110002', '$2y$12$24I4U0IipIbH7K46LHCCXup3YihRN3y/l.p/8YFB3Tnhg4Bddba1.', 'default.png', 'siswa', '2025-11-22 03:07:23', '2025-11-22 03:07:23'),
(9704456, '3301124303110001', '$2y$12$afWSEVyXBZz4YCMaUmTCgOAdtsbSetqBU36f3a6s2ainpCxIDxoYK', 'default.png', 'siswa', '2025-11-22 06:01:31', '2025-11-22 06:01:31'),
(9704457, '3301124702110002', '$2y$12$OISlZRBnbn/iN4lUB7ranOY7QuI.NHYIYm/Sglt0kj25HbQIG2lB2', 'default.png', 'siswa', '2025-11-22 11:07:21', '2025-11-22 11:07:21'),
(9704458, '3301126011100002', '$2y$12$9ywLRHoJ1q16Egf1LOAcHOI1Yqf/nwtfQQTLg0A/HZB4nGNBgYqJq', 'default.png', 'siswa', '2025-11-22 12:01:58', '2025-11-22 12:01:58'),
(9704459, '3301120410100003', '$2y$12$/3cEsv2D2t7cVqvVVSkidO5JfcP61Yl1ooMT3A8iZHCfGLo..Wz6m', 'default.png', 'siswa', '2025-11-23 11:27:48', '2025-11-23 11:27:48'),
(9704460, '3301124504110002', '$2y$12$1nxN7dKQ/YtEqjeJ0KJsY.4pW5Wiu3LCb6ARI6fjgQm7nA.Vv9MjC', 'default.png', 'siswa', '2025-11-23 11:34:07', '2025-11-23 11:34:07'),
(9704461, '3301206510100001', '$2y$12$MdCTE.GuV6nWxU9FO.1klO06rEpgJhhSUjrFjxYyAHQZdLbd5YY96', 'default.png', 'siswa', '2025-11-23 11:42:54', '2025-11-23 11:42:54'),
(9704462, '3301121505110005', '$2y$12$dhcA8xKnblf4IlodVGL0Fu1.Nbz9NihxXlk9XukfAHcGy7rjs0wC.', 'default.png', 'siswa', '2025-11-23 11:48:12', '2025-11-23 11:48:12'),
(9704463, '3301126905110001', '$2y$12$EpFO0Tfu7D9j.M.FTz0To.omo8aZdQKQcZn7dnGXicgh27Wy5jor.', 'default.png', 'siswa', '2025-11-24 10:22:47', '2025-11-24 10:22:47'),
(9704464, '3301120503110001', '$2y$12$x6th./LANfBSWVXEd6G7zedAw2KOMVIsmK3AaBVHdeTmNLWe2ns12', 'default.png', 'siswa', '2025-11-24 11:03:48', '2025-11-24 11:03:48'),
(9704465, '3301125811100001', '$2y$12$j8rZ5JczDWhjc10Nh/rdQO5Lbc1ZwRkWHKAK9003u1DXFZmak9N66', 'default.png', 'siswa', '2025-11-24 11:45:23', '2025-11-24 11:45:23'),
(9704466, '3301100304110001', '$2y$12$wcnSpDKrODtRlz.E06pRuOd0DtKh.a.Uhl3IHx/N9GlK5ceoJDMbW', 'default.png', 'siswa', '2025-11-25 04:23:44', '2025-11-25 04:23:44'),
(9704467, '3301133112090006', '$2y$12$Psj3OYzcXAcDiJg49t.t0Onji8gQkcgp/DPNBYyLVJ.kXTMpZ4ig.', 'default.png', 'siswa', '2025-11-27 11:37:54', '2025-11-27 11:37:54'),
(9704468, '3301131209100001', '$2y$12$oMwak2KvifNibnsg3jdhjuHeVN7fQ7XKXQhxLnkbUul7/KC.0SOcy', 'default.png', 'siswa', '2025-11-27 11:45:09', '2025-11-27 11:45:09'),
(9704469, '3301120106100003', '$2y$12$6wMUuZZHk7ByWqczhU74ee3e9Y43Vg3blGr6vjrfXztGSlRAOc7FC', 'default.png', 'siswa', '2025-11-27 11:57:47', '2025-11-27 11:57:47'),
(9704470, '3301122607100002', '$2y$12$QSEAUc6cb9igIudJ/j1H3ezrrbrEMP8ouraLV7o27OT09tqcSFNla', 'default.png', 'siswa', '2025-11-27 13:06:55', '2025-11-27 13:06:55'),
(9704471, '3301135710100002', '$2y$12$umg93Pkz2pbF3b1FlUs22OagwJ8SpMhfNqKzltkOdY/Rtzc9L6k9a', 'default.png', 'siswa', '2025-11-28 10:34:49', '2025-11-28 10:34:49'),
(9704472, '3301121208100003', '$2y$12$kwrmPauLCQJ4IRA6evovw.xZBrTxr5NOApzDC/l4IsTnF1IRlwP/q', 'default.png', 'siswa', '2025-11-28 12:23:31', '2025-11-28 12:23:31'),
(9704473, '3301135301110001', '$2y$12$HcJKUcbFd1kTo0QO11YAk.1anBe1cjVQvSrSyi8/gbbVZ3Mx3SeLu', 'default.png', 'siswa', '2025-12-01 13:18:05', '2025-12-01 13:18:05'),
(9704474, '3301125102110001', '$2y$12$HFB9MzJoNlsjTwrtE24emOV1Zqr/4HcCIPIQ.5gl7/eAahUPesSs2', 'default.png', 'siswa', '2025-12-03 12:12:53', '2025-12-03 12:12:53'),
(9704475, '3301106705110002', '$2y$12$JCzq0SugpporP1MWuZ.qDOQDtiRMT1kG5qRUG8s2GHM53YqariVDu', 'default.png', 'siswa', '2025-12-06 12:06:53', '2025-12-06 12:06:53'),
(9704476, '3301205712110002', '$2y$12$aASQQWjnOOtAh8GeEoiRLe0cgMQT0HpErOnXii3xHY2iT433GaVG.', 'default.png', 'siswa', '2025-12-06 13:10:18', '2025-12-06 13:10:18'),
(9704477, '3301122109100004', '$2y$12$Sg80FKTe0o3Iy6gml1WAduEFlhauTeGtf6XKTw3d0MYqogEO.t8OO', 'default.png', 'siswa', '2025-12-06 22:35:45', '2025-12-06 22:35:45'),
(9704478, '3301121402080037', '$2y$12$zzsAKk2w4AdOPbRR4uPkVeS8zl6XLGmDyT.W3iEuD3Ev/EukYwwx2', 'default.png', 'siswa', '2025-12-06 22:39:33', '2025-12-06 22:39:33'),
(9704479, '3301205005110001', '$2y$12$91qCO3Gv7Jtouplj7V/ca.hpypFB8N1vr4pP0q3hYT9SOnWQqhkby', 'default.png', 'siswa', '2025-12-07 00:28:13', '2025-12-07 00:28:13'),
(9704480, '3301126707100001', '$2y$12$sTvQlkMRr9kNsly3fGGiluHuGZgQG9o5I.yNEs3YhrSJR7/jCL17K', 'default.png', 'siswa', '2025-12-08 13:48:32', '2025-12-08 13:48:32'),
(9704481, '3301135510091002', '$2y$12$/1XG2hwpI5FUF7QpM3ed/OnytE1bq0G2wVaPPt37KDqdq5jAYo7Dm', 'default.png', 'siswa', '2025-12-10 04:17:29', '2025-12-10 04:17:29'),
(9704482, '3304112910100004', '$2y$12$Jzc4lyaUAdMad/T8wXYh.u.n1gd/3kPQQW447Lgc0pauXqm8od3ru', 'default.png', 'siswa', '2025-12-12 02:55:29', '2025-12-12 02:55:29'),
(9704483, '3301132811110004', '$2y$12$kckUin3W5xhQ4TCv42IByOj3jse.ypbQ.5ZCYEfrnuR2lf2IjuoCi', 'default.png', 'siswa', '2025-12-15 01:59:47', '2025-12-15 01:59:47'),
(9704484, '9111056208100002', '$2y$12$xfK1hyh034dqA.JJsIBF4O6KvQYfqG9IuJQYFV5qa5XwenuNFzNB2', 'default.png', 'siswa', '2025-12-15 02:37:31', '2025-12-15 02:37:31'),
(9704485, '3301016406100003', '$2y$12$TlzwxdV4IUpHvqaEjgpmf.CX8TUExhOzURogu774Dxl13IIGUj2m6', 'default.png', 'siswa', '2025-12-15 12:02:47', '2025-12-15 12:02:47'),
(9704486, '3301124504110003', '$2y$12$F7zzGiPahhRHzgre00numuBiMGPCgD0uRmGtu6lt19nU2fHHhDWae', 'default.png', 'siswa', '2025-12-19 12:30:49', '2025-12-19 12:30:49'),
(9704487, '3301122708110001', '$2y$12$WkFxII18CIVFMM8nsMLwbuv6heTTmLRWqylpEO9Jakk.eI7krOjMq', 'default.png', 'siswa', '2025-12-20 05:25:28', '2025-12-20 05:25:28'),
(9704488, '3301125603110002', '$2y$12$t1ON88B0xzs3D5JZlfl09urg6p1WvaqOUykcHs.jOE9V4QpxN.lf.', 'default.png', 'siswa', '2025-12-22 03:10:43', '2025-12-22 03:10:43'),
(9704489, '3301121606110002', '$2y$12$rXUapMiIlc6gYgysLrXdheopKql.6o0DcvamGBcRBkCr9eCYSXvnW', 'default.png', 'siswa', '2025-12-22 09:14:22', '2025-12-22 09:14:22'),
(9704490, '3301121208110003', '$2y$12$IlRi/.xjboJAblsDJaZo6.mVKOtD84.CdQGFiV34JA.o1eIKVPdu.', 'default.png', 'siswa', '2025-12-22 10:52:00', '2025-12-22 10:52:00'),
(9704491, '3301102310100002', '$2y$12$seIeYT26WLf6vpycz8uG7.sbOLpBOlmWGygpg6LJvgOTc3dmKTCdC', 'default.png', 'siswa', '2025-12-24 05:15:55', '2025-12-24 05:15:55'),
(9704492, '3302012309100001', '$2y$12$6dUgTg6o6J2yEZQeHIAPY.z6jls9acNdcSwM2n0gdg4cUXN/s6m86', 'default.png', 'siswa', '2025-12-25 12:08:16', '2025-12-25 12:08:16'),
(9704493, '3302011510100003', '$2y$12$AD914EcUPqGclC6VLHGo6..AqWS3EuTI4Xl/.RXDEs.zEw/26YW7S', 'default.png', 'siswa', '2025-12-25 12:14:17', '2025-12-25 12:14:17'),
(9704494, '3302015801110002', '$2y$12$gjL3hKC9fgRUlbwz39TsTurjGfp5GbGFWgpEX09HUTOQPIuIufBgK', 'default.png', 'siswa', '2025-12-25 12:19:21', '2025-12-25 12:19:21'),
(9704495, '3302015810100001', '$2y$12$.B4/dzxeOohwrViif4W1wO2rmlwbuGNI8AbyCDVwLUFk3v.hVkY/.', 'default.png', 'siswa', '2025-12-25 12:34:18', '2025-12-25 12:34:18'),
(9704496, '3302012911100001', '$2y$12$nApZaDxfn79g7PqPCyUbUOCFZr.9J.SG1Q4/JDFxOZ2GSebL6eRC.', 'default.png', 'siswa', '2025-12-25 12:41:17', '2025-12-25 12:41:17'),
(9704497, '3302012703100001', '$2y$12$MtcnsyyJQvClmBo.W/ewZucxYoNOuJ263kX0DbaEg/zZ3jjGX.j.2', 'default.png', 'siswa', '2025-12-25 13:45:18', '2025-12-25 13:45:18'),
(9704498, '3301130904110006', '$2y$12$7ubcvzQKAR1w1Ylc/HHHHes1z2uCCYZN8HD.CMOZu1jTcw1fF6WFm', 'default.png', 'siswa', '2025-12-26 12:02:39', '2025-12-26 12:02:39'),
(9704499, '3301100303110001', '$2y$12$LnZ7cJpQ4fZ6AaQlINE.meWP.7a5diiQH.eaZq6DvljW8nq9DdIsO', 'default.png', 'siswa', '2025-12-26 12:12:02', '2025-12-26 12:12:02'),
(9704500, '3301192322100002', '$2y$12$7SxM0wfEtuQPpaP8n7Jod.tr9N4GyaQSrGtKbvGi1lI.17Twy0jaK', 'default.png', 'siswa', '2025-12-28 04:33:48', '2025-12-28 04:33:48'),
(9704501, '3301122508100003', '$2y$12$QSdHyU7naC3atOMOunU9d.7dN8T6idiRjeACigQsmMLoAMiUxx75O', 'default.png', 'siswa', '2026-01-01 00:54:03', '2026-01-01 00:54:03'),
(9704502, '3301124301110003', '$2y$12$VcJcjHlnsnDlfAx4f2mQQuI2zTSkU.KbiSFb2xlCcKWrCc3d3Jb/S', 'default.png', 'siswa', '2026-01-02 09:06:39', '2026-01-02 09:06:39'),
(9704503, '3301145908110002', '$2y$10$cheaTq0EcMnbeUCbiLOQ7elVYtmu9fQfQSE5b2uD05.HnVUYiRKGW', 'default.png', 'siswa', '2026-01-03 14:03:36', '2026-01-03 14:03:36'),
(9704504, '3301127011100003', '$2y$12$MQ.Q/o.X/P34N4e.236Q1.67WOQb5kSzwDBOkSfzI.syRRo6.WhKO', 'default.png', 'siswa', '2026-01-05 01:13:36', '2026-01-05 01:13:36'),
(9704505, '3301136012110001', '$2y$12$t16zdWKVvmrn6J7kdmGVHu8waV8AqfFQd7K4VXQTLOfCQbgpJdhnq', 'default.png', 'siswa', '2026-01-05 10:04:05', '2026-01-05 10:04:05'),
(9704506, '3301124408110003', '$2y$12$tQMca.XdM55Vn37pO.V0Mema9tK8cyi1PFAxAKhADCXfoAOyNGSw.', 'default.png', 'siswa', '2026-01-05 12:46:03', '2026-01-05 12:46:03'),
(9704507, '3301135402110002', '$2y$12$Q581y6kUT6RWVTxV3/StAeJ6gMTa7eBi5sKUZKUywo1KFvSfM35VG', 'default.png', 'siswa', '2026-01-05 14:52:09', '2026-01-05 14:52:09'),
(9704508, '3301102204110001', '$2y$12$Ojj3IFapcfgH9hCPypYhjOfKgD8btFTDGUxjcbBC6mx9awCM0cqty', 'default.png', 'siswa', '2026-01-06 03:22:39', '2026-01-06 03:22:39'),
(9704509, '3301131511100005', '$2y$12$/4YJ/3vtBP7WYSjQK0vVxOR9BpXtIUmDByfmaMXZot7mGDFldrTuW', 'default.png', 'siswa', '2026-01-06 04:45:21', '2026-01-06 04:45:21'),
(9704510, '3301125206110004', '$2y$12$ZSnGd0yFj1rfoAO.hq31V.m7H5fISMN/Zx3ySy3OoZAn2wzkobl8C', 'default.png', 'siswa', '2026-01-06 06:16:37', '2026-01-06 06:16:37'),
(9704511, '3301124711100001', '$2y$12$gtu.uPkUU7r0Gv3L54LBeurvjjQhRF28LJrJwkMrhVFPkE/1Nptx6', 'default.png', 'siswa', '2026-01-06 08:43:49', '2026-01-06 08:43:49'),
(9704512, '3301131702170004', '$2y$12$WXRaQg7R26.FgI0/7s1z1uKn4aeWaV2MBZuzfcSRMkjqxbSexQNMK', 'default.png', 'siswa', '2026-01-07 02:34:15', '2026-01-07 02:34:15'),
(9704513, '3301136009110001', '$2y$12$NT/zGgN/eze9zVLCYrhtg.npLaWo/ned8S4VDYlk8qsS8TrUnuoam', 'default.png', 'siswa', '2026-01-07 03:30:05', '2026-01-07 03:30:05'),
(9704514, '3301101109120003', '$2y$12$GTqo2s5mRek/8s1f.mWgq.9l0w3XOUhv9qQ8IETbVSF3kNURbrOc2', 'default.png', 'siswa', '2026-01-07 08:15:20', '2026-01-07 08:15:20'),
(9704515, '3301136810100004', '$2y$12$QmMth7/eCNbTbZ5nhPyk..HhqMW.a0WJvqTCE.Pl3DcO1BXkb2B5e', 'default.png', 'siswa', '2026-01-07 10:11:48', '2026-01-07 10:11:48'),
(9704516, '3301132805110002', '$2y$12$ehW4Wf5cxuA2qLCHpPj8UOQfs/SMHgSghzgGZdy.VbRGl0OBF28Fm', 'default.png', 'siswa', '2026-01-07 10:34:54', '2026-01-07 10:34:54'),
(9704517, '3301127107110002', '$2y$12$BR829hiiiENvXZbKm0P0rO02l0A.hcgiqEYVgbhgmDeBiSyR4OyFC', 'default.png', 'siswa', '2026-01-09 05:23:56', '2026-01-09 05:23:56'),
(9704518, '3301136409100004', '$2y$12$Jqp4GTXPlqsS2hutzWJcAui0dVDVytMarzgDq35UdcounVm3malxG', 'default.png', 'siswa', '2026-01-09 06:59:41', '2026-01-09 06:59:41'),
(9704519, '3301124305110003', '$2y$12$oDHmkCD9TN2vayS34BYtA.vJz0hYGj6fRGYMHxs/HXuyV1wNsjV.a', 'default.png', 'siswa', '2026-01-09 07:08:53', '2026-01-09 07:08:53'),
(9704520, '3301126202111000', '$2y$12$iCJQaMihHRS5XFl5WjL5zOe5Sdh0JAk1FY1dxtJmUf6JVZ05bJB8O', 'default.png', 'siswa', '2026-01-09 07:16:06', '2026-01-09 07:16:06'),
(9704521, '3301121310100003', '$2y$12$2ClelYG8J.S4vJGuI3suPe0q26XPkdYe2dpY8P/feKFLu8aFImhmu', 'default.png', 'siswa', '2026-01-09 08:41:34', '2026-01-09 08:41:34'),
(9704522, '3301125611100004', '$2y$12$/AMTMvL5KkbulgbYz6ZtMOxafwy00rZS69L/B7V.LqykokeyxWyr6', 'default.png', 'siswa', '2026-01-09 08:52:29', '2026-01-09 08:52:29'),
(9704523, '3301122806110004', '$2y$12$5Sq9ZZ/lYi9RVVeJweMx9.XZMRCWBqkV8glt2K0eDHYQMUKQhcm76', 'default.png', 'siswa', '2026-01-09 09:04:05', '2026-01-09 09:04:05');

-- --------------------------------------------------------

--
-- Struktur dari tabel `verificator`
--

CREATE TABLE `verificator` (
  `id` bigint(20) NOT NULL,
  `guru_id` bigint(20) UNSIGNED NOT NULL,
  `start_char` varchar(10) NOT NULL,
  `end_char` varchar(10) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `verificator`
--

INSERT INTO `verificator` (`id`, `guru_id`, `start_char`, `end_char`, `created_at`, `updated_at`) VALUES
(5, 22, 'A', 'M', '2025-10-23 14:53:59', '2025-10-23 14:53:59'),
(6, 80, 'N', 'Z', '2025-10-23 14:54:09', '2025-10-23 14:54:09');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`),
  ADD KEY `admins_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `agenda_kehadiran`
--
ALTER TABLE `agenda_kehadiran`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `asalsekolah`
--
ALTER TABLE `asalsekolah`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `atribut`
--
ALTER TABLE `atribut`
  ADD PRIMARY KEY (`id`),
  ADD KEY `siswa_id` (`siswa_id`);

--
-- Indeks untuk tabel `daftar_ulang`
--
ALTER TABLE `daftar_ulang`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `data_kehadiran`
--
ALTER TABLE `data_kehadiran`
  ADD PRIMARY KEY (`id`),
  ADD KEY `siswa` (`siswa_id`),
  ADD KEY `agenda` (`agenda_id`);

--
-- Indeks untuk tabel `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `gurus`
--
ALTER TABLE `gurus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `gurus_email_unique` (`email`),
  ADD UNIQUE KEY `gurus_nip_unique` (`nip`),
  ADD KEY `gurus_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `jurusan`
--
ALTER TABLE `jurusan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pendaftaran`
--
ALTER TABLE `pendaftaran`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pendaftaran_detail`
--
ALTER TABLE `pendaftaran_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `profile_sekolah`
--
ALTER TABLE `profile_sekolah`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `seksi_presensi`
--
ALTER TABLE `seksi_presensi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `guru_id` (`guru_id`);

--
-- Indeks untuk tabel `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tata_usaha`
--
ALTER TABLE `tata_usaha`
  ADD PRIMARY KEY (`id`),
  ADD KEY `guru_id` (`guru_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- Indeks untuk tabel `verificator`
--
ALTER TABLE `verificator`
  ADD PRIMARY KEY (`id`),
  ADD KEY `guru` (`guru_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `agenda_kehadiran`
--
ALTER TABLE `agenda_kehadiran`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `asalsekolah`
--
ALTER TABLE `asalsekolah`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- AUTO_INCREMENT untuk tabel `atribut`
--
ALTER TABLE `atribut`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `daftar_ulang`
--
ALTER TABLE `daftar_ulang`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `data_kehadiran`
--
ALTER TABLE `data_kehadiran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `gurus`
--
ALTER TABLE `gurus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT untuk tabel `jurusan`
--
ALTER TABLE `jurusan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `pendaftaran`
--
ALTER TABLE `pendaftaran`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `pendaftaran_detail`
--
ALTER TABLE `pendaftaran_detail`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=381;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `profile_sekolah`
--
ALTER TABLE `profile_sekolah`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `seksi_presensi`
--
ALTER TABLE `seksi_presensi`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=381;

--
-- AUTO_INCREMENT untuk tabel `tata_usaha`
--
ALTER TABLE `tata_usaha`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9704524;

--
-- AUTO_INCREMENT untuk tabel `verificator`
--
ALTER TABLE `verificator`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `admins`
--
ALTER TABLE `admins`
  ADD CONSTRAINT `admins_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `atribut`
--
ALTER TABLE `atribut`
  ADD CONSTRAINT `atribut_ibfk_1` FOREIGN KEY (`siswa_id`) REFERENCES `siswa` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `data_kehadiran`
--
ALTER TABLE `data_kehadiran`
  ADD CONSTRAINT `agenda` FOREIGN KEY (`agenda_id`) REFERENCES `agenda_kehadiran` (`id`),
  ADD CONSTRAINT `siswa` FOREIGN KEY (`siswa_id`) REFERENCES `siswa` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `gurus`
--
ALTER TABLE `gurus`
  ADD CONSTRAINT `gurus_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `seksi_presensi`
--
ALTER TABLE `seksi_presensi`
  ADD CONSTRAINT `seksi_presensi_ibfk_1` FOREIGN KEY (`guru_id`) REFERENCES `gurus` (`id`);

--
-- Ketidakleluasaan untuk tabel `tata_usaha`
--
ALTER TABLE `tata_usaha`
  ADD CONSTRAINT `tata_usaha_ibfk_1` FOREIGN KEY (`guru_id`) REFERENCES `gurus` (`id`);

--
-- Ketidakleluasaan untuk tabel `verificator`
--
ALTER TABLE `verificator`
  ADD CONSTRAINT `guru` FOREIGN KEY (`guru_id`) REFERENCES `gurus` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
