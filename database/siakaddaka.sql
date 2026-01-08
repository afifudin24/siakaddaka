-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Waktu pembuatan: 08 Jan 2026 pada 09.24
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `siakaddaka`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `no_hp` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id`, `user_id`, `nama`, `email`, `alamat`, `no_hp`, `created_at`, `updated_at`) VALUES
(1, 1, 'Darwin Kuvalis', 'jlarson@example.org', '51873 Grimes Bypass Apt. 306\nRitchiehaven, AZ 53561', '1-283-673-2542', '2025-11-21 20:32:49', '2025-11-21 20:32:49'),
(2, 27, 'Orville Larson Sr.', 'nolan.eunice@example.net', '394 Hansen Row\nSchroederbury, NC 02318-9890', '1-678-541-7400', '2025-11-21 20:33:50', '2025-11-21 20:33:50'),
(3, 53, 'Dr. Eric Bradtke I', 'cjaskolski@example.org', '931 Quitzon Club\nJakubowskiland, WI 98520', '401.915.1310', '2025-11-21 20:36:26', '2025-11-21 20:36:26');

-- --------------------------------------------------------

--
-- Struktur dari tabel `agenda`
--

CREATE TABLE `agenda` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(255) NOT NULL,
  `deskripsi` text DEFAULT NULL,
  `tgl_mulai` date NOT NULL,
  `tgl_selesai` date DEFAULT NULL,
  `waktu_mulai` time DEFAULT NULL,
  `waktu_selesai` time DEFAULT NULL,
  `lokasi` varchar(255) DEFAULT NULL,
  `status` enum('terjadwal','selesai','batal') NOT NULL DEFAULT 'terjadwal',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `agenda`
--

INSERT INTO `agenda` (`id`, `judul`, `deskripsi`, `tgl_mulai`, `tgl_selesai`, `waktu_mulai`, `waktu_selesai`, `lokasi`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Voluptatem qui quasi voluptatem.', 'Est illo explicabo harum omnis esse. Laborum deserunt at enim repudiandae. Necessitatibus doloremque illo est ut voluptas. Quidem explicabo labore culpa enim.', '2025-10-23', '2025-10-26', '22:53:02', '02:06:13', 'East Jamarville', 'batal', '2025-11-21 20:32:48', '2025-11-21 20:32:48'),
(2, 'Dicta expedita.', 'Magnam vel voluptas dicta est autem. Iure laborum soluta quidem natus. Pariatur ab laudantium quas qui ab consequatur. Minus reprehenderit quia enim cupiditate quae.', '2025-12-14', '2025-12-16', '08:58:51', '21:52:18', 'Marquisport', 'selesai', '2025-11-21 20:32:48', '2025-11-21 20:32:48'),
(3, 'Ut qui voluptatum.', 'Aut nemo voluptatem rerum cupiditate. Libero sit et officia error quam. Sequi ab porro qui odit quidem. Rerum rerum debitis quidem officia labore impedit debitis.', '2025-11-20', '2025-11-23', '20:42:22', '05:24:56', 'Boehmfurt', 'selesai', '2025-11-21 20:32:48', '2025-11-21 20:32:48'),
(4, 'Sapiente ut.', 'Cupiditate est aspernatur sapiente quia quis nemo. Et esse odit qui. Nihil magni sapiente temporibus. Dolorum ex ipsum debitis saepe.', '2025-11-29', '2025-12-02', '17:49:17', '10:27:21', 'Port Willis', 'terjadwal', '2025-11-21 20:32:49', '2025-11-21 20:32:49'),
(5, 'Odio adipisci quasi ratione aut.', 'Nam ut nemo deleniti nihil et. Unde minima exercitationem saepe quidem. Veritatis et provident qui ipsum ab accusamus.', '2025-11-15', '2025-11-16', '05:49:33', '21:46:49', 'Ebertland', 'selesai', '2025-11-21 20:32:49', '2025-11-21 20:32:49'),
(6, 'Deserunt sunt maxime asperiores consequatur.', 'Molestias ullam tempora similique aut. Voluptatem quisquam eum perferendis asperiores voluptatem quia commodi.', '2025-11-01', '2025-11-03', '03:57:02', '05:41:26', 'Port Westleyshire', 'batal', '2025-11-21 20:32:49', '2025-11-21 20:32:49'),
(7, 'Modi debitis ipsam.', 'Delectus vel aut accusamus suscipit optio. Voluptatem ut nemo fuga eveniet ut quo ut. Eius et ipsa nihil ratione iste rerum. Similique beatae repudiandae maxime consequuntur.', '2025-12-15', '2025-12-18', '19:11:23', '04:52:01', 'Russelmouth', 'terjadwal', '2025-11-21 20:32:49', '2025-11-21 20:32:49'),
(8, 'Sequi necessitatibus et natus.', 'Harum illo unde quis numquam distinctio. Praesentium magnam est molestiae consequatur quibusdam. Omnis illo non animi quasi quod. Aperiam quibusdam qui sunt quae nemo repellat.', '2025-12-09', '2025-12-12', '10:40:18', '20:33:47', 'Maxinemouth', 'terjadwal', '2025-11-21 20:32:49', '2025-11-21 20:32:49'),
(9, 'Est perspiciatis et.', 'Aut et labore autem reprehenderit. Est deserunt nam quia molestiae. Non consequatur quo quo.', '2025-11-15', '2025-11-17', '11:10:39', '22:29:02', 'Reingerside', 'batal', '2025-11-21 20:32:49', '2025-11-21 20:32:49'),
(10, 'Odio architecto nostrum modi.', 'Fugiat voluptatem voluptate architecto in et sapiente. Vitae ea voluptatibus illum dolor sequi eum. Est quam tenetur ullam qui aut similique. Quo dolor cum quia rem.', '2025-12-16', '2025-12-18', '07:42:51', '11:43:14', 'Holliemouth', 'terjadwal', '2025-11-21 20:32:49', '2025-11-21 20:32:49'),
(11, 'Quia itaque neque.', 'Quaerat ea odio amet dolore rerum. Alias consequatur voluptas nihil qui itaque. Doloremque et illo quis nihil quaerat accusantium modi et. Ut eius voluptatum delectus ab sequi rerum asperiores.', '2025-11-02', '2025-11-05', '11:00:55', '07:21:50', 'South Manuela', 'selesai', '2025-11-21 20:33:49', '2025-11-21 20:33:49'),
(12, 'Aut autem consequatur non.', 'Est est saepe a et quae consequatur cupiditate. Veniam tempore saepe corrupti amet aut repellat. Soluta debitis nemo quaerat consequuntur voluptas est.', '2025-12-05', '2025-12-08', '11:09:11', '01:02:22', 'Mayerton', 'selesai', '2025-11-21 20:33:49', '2025-11-21 20:33:49'),
(13, 'At quia labore.', 'Provident placeat et alias rerum aut minus. Minima dicta quibusdam hic mollitia. Nihil dolor labore quia placeat. Sed dolorum quis ducimus ducimus.', '2025-12-07', '2025-12-08', '19:40:32', '03:09:16', 'New Diego', 'selesai', '2025-11-21 20:33:49', '2025-11-21 20:33:49'),
(14, 'Itaque dicta.', 'Aliquid totam rerum optio in voluptas fugiat. Consequatur repellat amet rerum ea et. Doloribus mollitia quia error ut.', '2025-11-07', '2025-11-09', '20:46:49', '13:32:14', 'Staceyside', 'batal', '2025-11-21 20:33:49', '2025-11-21 20:33:49'),
(15, 'Tempora aut id enim.', 'Recusandae quo hic aspernatur perspiciatis. Officia qui labore minima aut qui perspiciatis ipsa. Aspernatur qui molestiae veritatis magni esse sequi. Cupiditate error at qui omnis sequi et sequi.', '2025-12-06', '2025-12-07', '03:34:24', '08:07:41', 'New Oranshire', 'selesai', '2025-11-21 20:33:49', '2025-11-21 20:33:49'),
(16, 'Rem aut illo ut.', 'Officiis molestiae temporibus distinctio quas et. Nulla sed qui atque quidem error aliquid. Nam magnam ducimus consequatur harum est sit. Aut consequatur et veritatis facilis deserunt rem sint.', '2025-12-02', '2025-12-04', '13:28:33', '11:10:47', 'South Bobbyport', 'selesai', '2025-11-21 20:33:49', '2025-11-21 20:33:49'),
(17, 'Molestiae voluptatibus consectetur.', 'Laudantium et ex iure suscipit earum a. Rerum et quia error. Accusamus reiciendis totam natus necessitatibus atque aut libero. Id ut aut aut tenetur omnis est.', '2025-12-10', '2025-12-12', '04:56:27', '22:37:38', 'Daijaside', 'batal', '2025-11-21 20:33:49', '2025-11-21 20:33:49'),
(18, 'Sit quia voluptatem similique totam.', 'Ut quo et laudantium fugiat similique ut ut. Praesentium et illum tempora est. Perspiciatis non tempore quae voluptas aperiam. Dolore et animi laborum.', '2025-11-02', '2025-11-04', '06:58:36', '20:47:50', 'New Natasha', 'batal', '2025-11-21 20:33:49', '2025-11-21 20:33:49'),
(19, 'Quaerat placeat maxime ad.', 'Qui non non velit. Expedita nisi tempore et est asperiores ut. Iure vero vel dolore autem quam.', '2025-10-25', '2025-10-28', '02:56:56', '09:04:41', 'Port Opheliaburgh', 'selesai', '2025-11-21 20:33:49', '2025-11-21 20:33:49'),
(20, 'Voluptatibus asperiores earum porro.', 'Quibusdam rerum ea quo quis doloremque. Sequi natus ad ut nam nobis repellat numquam. Adipisci consequatur aliquid et tempore expedita odit.', '2025-10-25', '2025-10-28', '07:10:28', '19:48:53', 'North Felipamouth', 'terjadwal', '2025-11-21 20:33:49', '2025-11-21 20:33:49'),
(21, 'Culpa omnis.', 'Cum nisi amet vitae iure. Maiores voluptatem et itaque exercitationem et consectetur. Quas enim blanditiis magnam asperiores. Sunt in et tenetur illo laborum.', '2025-11-15', '2025-11-16', '19:44:47', '06:55:44', 'Borerside', 'terjadwal', '2025-11-21 20:36:24', '2025-11-21 20:36:24'),
(22, 'Autem veniam laudantium.', 'Alias deleniti saepe accusantium tempora rerum. Perspiciatis est et dolorem non. Velit atque laboriosam quia dolores est quam. Quia sed optio magnam unde enim omnis.', '2025-12-01', '2025-12-03', '14:36:53', '16:42:29', 'Elzahaven', 'batal', '2025-11-21 20:36:24', '2025-11-21 20:36:24'),
(23, 'Voluptas iusto consequuntur.', 'Nulla dolore ex id nam. Aliquid quae voluptate neque quod possimus. Perspiciatis laborum eveniet a libero ad reprehenderit et. Repellendus in quia veritatis cupiditate excepturi.', '2025-11-19', '2025-11-20', '08:16:06', '20:43:04', 'Izaiahbury', 'selesai', '2025-11-21 20:36:24', '2025-11-21 20:36:24'),
(24, 'Quae quo nulla praesentium.', 'Quo doloribus nam quia et est dignissimos dolorum. Qui magnam nihil aut consequatur dolores ut possimus.', '2025-12-03', '2025-12-05', '18:36:44', '22:33:56', 'Elsieton', 'terjadwal', '2025-11-21 20:36:24', '2025-11-21 20:36:24'),
(25, 'Explicabo libero.', 'Quia aut repellat molestiae pariatur quo harum. Quo sed omnis non nemo est rerum dolor. Ut iste minus incidunt natus odio mollitia.', '2025-11-02', '2025-11-05', '17:46:26', '01:25:24', 'East Geraldine', 'terjadwal', '2025-11-21 20:36:25', '2025-11-21 20:36:25'),
(26, 'Accusantium voluptas in.', 'Enim sed commodi quo vero. In autem quia dolor magni. Vitae nihil voluptas consectetur consequatur laborum.', '2025-12-15', '2025-12-16', '16:01:04', '16:56:47', 'West Karlee', 'batal', '2025-11-21 20:36:25', '2025-11-21 20:36:25'),
(27, 'At illo itaque.', 'Quae veniam minus quia quidem autem mollitia. Nam eius aut ut laboriosam minus. Sed placeat et consequatur qui aliquid et.', '2025-12-09', '2025-12-10', '02:39:13', '03:22:38', 'Spinkaton', 'terjadwal', '2025-11-21 20:36:25', '2025-11-21 20:36:25'),
(28, 'Consectetur voluptate eveniet.', 'Et vel quo eveniet iusto nesciunt ea nisi. Eligendi dolores dolore aut quae nisi enim. Accusantium dolores repudiandae deleniti earum dolorem officia nostrum rerum.', '2025-10-31', '2025-11-03', '15:52:49', '14:47:39', 'Braunport', 'selesai', '2025-11-21 20:36:25', '2025-11-21 20:36:25'),
(29, 'Velit alias sunt tempore.', 'Iste corrupti neque quo quis rem. Omnis assumenda officia cumque distinctio. Quasi doloremque debitis iure fugit temporibus autem. Tempore iure beatae aperiam dignissimos quia placeat ea vel.', '2025-11-14', '2025-11-16', '07:06:09', '22:32:23', 'New Kara', 'selesai', '2025-11-21 20:36:25', '2025-11-21 20:36:25'),
(30, 'Eos occaecati et voluptatibus.', 'Ipsum eos nulla id earum cum harum. Quisquam adipisci non omnis aliquid. Quo recusandae sint repellendus ipsa dolorum impedit illo. Blanditiis at reiciendis aperiam debitis perspiciatis voluptates.', '2025-11-12', '2025-11-15', '14:52:41', '16:39:33', 'Mohrfurt', 'batal', '2025-11-21 20:36:25', '2025-11-21 20:36:25');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_mengajar`
--

CREATE TABLE `data_mengajar` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `guru_id` bigint(20) UNSIGNED NOT NULL,
  `kelas_id` bigint(20) UNSIGNED NOT NULL,
  `mapel_id` bigint(20) UNSIGNED NOT NULL,
  `jam_mengajar` int(11) NOT NULL,
  `pertemuan_per_minggu` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `data_mengajar`
--

INSERT INTO `data_mengajar` (`id`, `guru_id`, `kelas_id`, `mapel_id`, `jam_mengajar`, `pertemuan_per_minggu`, `created_at`, `updated_at`) VALUES
(3, 19, 11, 6, 0, 0, '2026-01-06 07:57:38', '2026-01-06 07:57:38'),
(5, 19, 9, 6, 0, 0, '2026-01-06 08:18:38', '2026-01-06 08:18:38'),
(6, 19, 13, 7, 0, 0, '2026-01-06 08:18:38', '2026-01-06 08:18:38'),
(7, 18, 9, 8, 0, 0, '2026-01-06 08:21:39', '2026-01-06 08:21:39'),
(8, 17, 11, 9, 0, 0, '2026-01-07 03:00:36', '2026-01-07 03:00:36'),
(9, 17, 27, 9, 0, 0, '2026-01-07 03:00:36', '2026-01-07 03:00:36'),
(10, 17, 10, 7, 0, 0, '2026-01-07 03:00:51', '2026-01-07 03:00:51'),
(11, 19, 26, 6, 0, 0, '2026-01-07 03:01:51', '2026-01-07 03:01:51'),
(12, 19, 27, 6, 0, 0, '2026-01-07 03:01:51', '2026-01-07 03:01:51'),
(13, 17, 8, 10, 0, 0, '2026-01-07 18:16:45', '2026-01-07 18:16:45'),
(14, 17, 10, 10, 0, 0, '2026-01-07 18:16:45', '2026-01-07 18:16:45'),
(15, 17, 13, 10, 0, 0, '2026-01-07 18:16:45', '2026-01-07 18:16:45'),
(16, 17, 14, 10, 0, 0, '2026-01-07 18:16:45', '2026-01-07 18:16:45');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_sekolah`
--

CREATE TABLE `data_sekolah` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_sekolah` varchar(255) DEFAULT NULL,
  `nama_singkatan` varchar(100) NOT NULL,
  `npsn` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `jenjang` varchar(255) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `kecamatan` varchar(255) DEFAULT NULL,
  `yayasan_sekolah` varchar(255) DEFAULT NULL,
  `email_sekolah` varchar(255) DEFAULT NULL,
  `telepon` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `logo_dark` varchar(255) DEFAULT NULL,
  `logo_icon` varchar(255) DEFAULT NULL,
  `logo_surat` varchar(255) DEFAULT NULL,
  `gambar_unggulan` varchar(255) DEFAULT NULL,
  `gambar_unggulan_2` varchar(255) DEFAULT NULL,
  `website` varchar(255) NOT NULL,
  `banner` varchar(255) DEFAULT NULL,
  `kepala_sekolah` varchar(255) DEFAULT NULL,
  `nip_kepala_sekolah` varchar(255) DEFAULT NULL,
  `deskripsi_singkat` text DEFAULT NULL,
  `visi` text DEFAULT NULL,
  `misi` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `data_sekolah`
--

INSERT INTO `data_sekolah` (`id`, `nama_sekolah`, `nama_singkatan`, `npsn`, `status`, `jenjang`, `alamat`, `kecamatan`, `yayasan_sekolah`, `email_sekolah`, `telepon`, `logo`, `logo_dark`, `logo_icon`, `logo_surat`, `gambar_unggulan`, `gambar_unggulan_2`, `website`, `banner`, `kepala_sekolah`, `nip_kepala_sekolah`, `deskripsi_singkat`, `visi`, `misi`, `created_at`, `updated_at`) VALUES
(1, 'SMK Darussalam Karangpucung', 'SMK DAKA', NULL, 'Swasta', 'SMK', 'Jl. Raya Karangpucung - Majenang KM. 02 No. 08 Kec. Karangpucung, Kab. Cilacap', 'Karangpucung', 'YAYASAN DARUSSALAM AL-FATAH KABUPATEN CILACAP', 'smkdkrpc@gmail.com', '0281-123456', 'sekolah/lMrvFdwsncLf54g0jKtjkajsoZFMXwf2ZM4Hbfb1.jpg', 'sekolah/3KpVwkvSAhpv9V7hpJIu5NjvrDLmT1vBAhSvODAK.png', 'sekolah/ttTYorqbIFKiEudqyiUOmYP6ciRCz046qutGRmSR.png', 'sekolah/kMEBGJsMOjKubRSOaFBA1Q5eiqAgeSixytz5PxQO.png', 'sekolah/GzR6XFaXd8CUdJqxMePf9V5TW5Fimq6qy8VqiDuz.png', 'sekolah/0SOgWPb5xauwVqbZRDCgkaOkqEDuQzUCmlGltEoH.png', 'https://www.smkdaka.sch.id', NULL, 'Dr. Risa Fita Hapsari, S.Pd, M.M.', NULL, 'SMK Sakti', 'Menjadi sekolah unggul yang berkarakter dan berprestasi.', '[\"Tes aja\"]', '2025-11-21 20:36:44', '2026-01-02 19:16:16');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ejurnal`
--

CREATE TABLE `ejurnal` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `mengajar_id` bigint(20) UNSIGNED NOT NULL,
  `tgl_jurnal` date NOT NULL,
  `pembahasan` text DEFAULT NULL,
  `jml_hadir` int(11) NOT NULL DEFAULT 0,
  `jml_izin` int(11) NOT NULL DEFAULT 0,
  `jml_sakit` int(11) NOT NULL DEFAULT 0,
  `jml_alfa` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `guru`
--

CREATE TABLE `guru` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `bio` varchar(255) DEFAULT NULL,
  `nip` varchar(255) DEFAULT NULL,
  `nuptk` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `no_hp` varchar(255) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `jenis_kelamin` enum('L','P') DEFAULT 'P',
  `alamat` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `guru`
--

INSERT INTO `guru` (`id`, `user_id`, `nama`, `bio`, `nip`, `nuptk`, `email`, `no_hp`, `tgl_lahir`, `jenis_kelamin`, `alamat`, `created_at`, `updated_at`) VALUES
(1, 2, 'AfifKeren', 'Nam in sint atque ex qui enim a deserunt.', '7205564583', '2749431145', 'afifsaja@gmail.com', '6281548769365', '2010-08-13', 'P', 'Desa Surusunda Rt 01 Rw 03', '2025-11-21 20:32:51', '2026-01-04 21:16:59'),
(4, 5, 'Coby Beahan', 'Sequi impedit qui mollitia fugit doloribus.', '7841974130', '7901528296', 'gvolkman@example.com', '409.715.9141', '1987-03-17', '', '3202 Bartell Knolls Apt. 408\nSouth Melbahaven, FL 25084', '2025-11-21 20:32:51', '2025-11-21 20:32:51'),
(8, 30, 'Kayla Jacobs', 'Veniam omnis voluptas repudiandae dolorum aliquid.', '4962156306', '8968984254', 'akuhlman@example.org', '(534) 976-9686', '2025-05-01', '', '263 Tromp Cape\nDooleyfurt, NJ 12415-2578', '2025-11-21 20:33:52', '2025-11-21 20:33:52'),
(9, 31, 'Wanda Simonis I', 'Laudantium distinctio fugiat accusantium reiciendis sapiente ut.', '4371981429', '5497741093', 'sarai.walter@example.com', '+1 (925) 807-7968', '1998-12-31', '', '604 Schultz Meadow\nNew Orlo, MA 26967', '2025-11-21 20:33:52', '2025-11-21 20:33:52'),
(10, 32, 'Dr. Ariane Bosco Jr.', 'Vitae possimus facilis dignissimos temporibus vel ea.', '7200947223', '8855350180', 'xwintheiser@example.org', '(816) 444-2392', '2012-09-01', '', '58594 Auer Trafficway Suite 915\nWolfmouth, NE 97638-9621', '2025-11-21 20:33:52', '2025-11-21 20:33:52'),
(12, 55, 'Lukas Douglas', 'Nulla est est ex accusamus.', '5020137654', '0764997175', 'pouros.santa@example.org', '251.903.8594', '1991-05-18', '', '4320 King Center\nPort Jasenside, NJ 98536-5099', '2025-11-21 20:36:30', '2025-11-21 20:36:30'),
(13, 56, 'Landen Hegmann', 'Ut non temporibus dignissimos est fugiat commodi.', '7862062173', '6513709001', 'reilly.wehner@example.org', '+1-252-699-9147', '2014-07-30', '', '1515 Maximilian Points\nEmardshire, WV 25895', '2025-11-21 20:36:30', '2025-11-21 20:36:30'),
(14, 57, 'Greg Crist', 'Distinctio quia mollitia modi eveniet.', '1147338264', '3893018613', 'annalise.stokes@example.net', '(678) 540-1260', '2024-11-12', '', '370 Nathaniel Way Suite 672\nBergeland, OK 09518', '2025-11-21 20:36:30', '2025-11-21 20:36:30'),
(15, 58, 'Prof. Elinor Hudson', 'Nostrum rerum nobis et quia.', '5880948654', '9481109539', 'ucarroll@example.org', '1-351-867-7771', '1988-04-02', '', '14951 Prohaska Summit Apt. 049\nWest Kattieview, PA 22398-0044', '2025-11-21 20:36:30', '2025-11-21 20:36:30'),
(16, 339, 'Aceng Rahayu', NULL, NULL, NULL, 'acengnsw@gmail.com', NULL, '1986-09-03', 'P', NULL, '2026-01-04 21:17:25', '2026-01-04 21:17:25'),
(17, 340, 'ACHMAD FAOZI', NULL, NULL, NULL, 'faoziachmad15@gmail.com', NULL, '1996-12-04', 'P', NULL, '2026-01-04 21:17:26', '2026-01-04 21:17:26'),
(18, 341, 'ADE APRIYANA', NULL, NULL, NULL, 'adeapriyana331@gmail.com', NULL, '1994-05-29', 'P', NULL, '2026-01-04 21:17:26', '2026-01-04 21:17:26'),
(19, 342, 'AFIF WALIYUDIN', NULL, NULL, NULL, 'afifrider507@gmail.com', NULL, '2003-01-24', 'P', NULL, '2026-01-04 21:17:27', '2026-01-04 21:17:27'),
(20, 343, 'AJIS ERIYANTO', NULL, NULL, NULL, 'ajis.eriyanto06@gmail.com', NULL, '1990-05-29', 'P', NULL, '2026-01-04 21:17:27', '2026-01-04 21:17:27'),
(21, 344, 'AL FITRI WIDIA SUMARSONO', NULL, NULL, NULL, 'alfitriwidias@gmail.com', NULL, '2000-09-11', 'P', NULL, '2026-01-04 21:17:28', '2026-01-04 21:17:28'),
(22, 345, 'ALVIN EKA SAPUTRA', NULL, NULL, NULL, 'aesaputra62@gmail.com', NULL, '2001-11-04', 'P', NULL, '2026-01-04 21:17:28', '2026-01-04 21:17:28'),
(23, 346, 'Ana Hawa Sholihah', NULL, NULL, NULL, 'ana12001223@webmail.uad.ac.id', NULL, '1993-12-02', 'P', NULL, '2026-01-04 21:17:29', '2026-01-04 21:17:29'),
(24, 347, 'ANDI AGUS TRIANTO', NULL, NULL, NULL, 'angandiagustrianto@gmail.com', NULL, '1998-09-21', 'P', NULL, '2026-01-04 21:17:29', '2026-01-04 21:17:29'),
(25, 348, 'Anwar Safii', NULL, NULL, NULL, 'anwar.safii7@gmail.com', NULL, '1982-01-06', 'P', NULL, '2026-01-04 21:17:29', '2026-01-04 21:17:29'),
(26, 349, 'Atrieus May Shobafaaz', NULL, NULL, NULL, 'atrieusmayshobafaaz@gmail.com', NULL, '1975-05-16', 'P', NULL, '2026-01-04 21:17:29', '2026-01-04 21:17:29'),
(27, 350, 'BANGKIT ADI KURNIA UTAMA', NULL, NULL, NULL, 'kurniaaditama07@gmail.com', NULL, '2000-05-07', 'P', NULL, '2026-01-04 21:17:30', '2026-01-04 21:17:30'),
(28, 351, 'Budi Hartono', NULL, NULL, NULL, 'budihartonosmkds@gmail.com', NULL, '1990-07-07', 'P', NULL, '2026-01-04 21:17:30', '2026-01-04 21:17:30'),
(29, 352, 'CAHYANI UMI IMAROH', NULL, NULL, NULL, 'usercahyani@gmail.com', NULL, '2001-04-04', 'P', NULL, '2026-01-04 21:17:30', '2026-01-04 21:17:30'),
(30, 353, 'DEDEN KHOLIK IBRAHIM', NULL, NULL, NULL, 'dedenibrahim310@gmail.com', NULL, '1991-10-10', 'P', NULL, '2026-01-04 21:17:30', '2026-01-04 21:17:30'),
(31, 354, 'DEKA ROHMANA', NULL, NULL, NULL, 'dekarohmana@students.unnes.sc.id', NULL, '1998-05-19', 'P', NULL, '2026-01-04 21:17:31', '2026-01-04 21:17:31'),
(32, 355, 'Dewi Larasatiningsih', NULL, NULL, NULL, 'dewilarasati1985@gmail.com', NULL, '1985-07-15', 'P', NULL, '2026-01-04 21:17:31', '2026-01-04 21:17:31'),
(33, 356, 'Diyah Wulandari', NULL, NULL, NULL, 'diyahwulandari1234@gmail.com', NULL, '1976-03-23', 'P', NULL, '2026-01-04 21:17:31', '2026-01-04 21:17:31'),
(34, 357, 'Eko Oktiana', NULL, NULL, NULL, 'ekaoktianaa@gmail.com', NULL, '1992-10-01', 'P', NULL, '2026-01-04 21:17:32', '2026-01-04 21:17:32'),
(35, 358, 'FARHAN NUR AZIS', NULL, NULL, NULL, 'farhannurazis23@gmail.com', NULL, '2003-07-10', 'P', NULL, '2026-01-04 21:17:32', '2026-01-04 21:17:32'),
(36, 359, 'IKHSAN MAHARDHIKA ABDILLAH', NULL, NULL, NULL, 'ikhsanmahar@gmail.com', NULL, '2001-08-11', 'P', NULL, '2026-01-04 21:17:32', '2026-01-04 21:17:32'),
(37, 360, 'Imam Mujiono', NULL, NULL, NULL, 'tobelherbie53@gmail.com', NULL, '1991-12-06', 'P', NULL, '2026-01-04 21:17:32', '2026-01-04 21:17:32'),
(38, 361, 'Irma Riyani', NULL, NULL, NULL, 'ria.irma92@gmail.com', NULL, '1992-01-23', 'P', NULL, '2026-01-04 21:17:33', '2026-01-04 21:17:33'),
(39, 362, 'ISMA DWI SUNDARI', NULL, NULL, NULL, 'ismasundari27@gmail.com', NULL, '1999-01-27', 'P', NULL, '2026-01-04 21:17:33', '2026-01-04 21:17:33'),
(40, 363, 'KHOIRUL ANWAR', NULL, NULL, NULL, 'khoirulanwar1994@gmail.com', NULL, '1994-12-29', 'P', NULL, '2026-01-04 21:17:33', '2026-01-04 21:17:33'),
(41, 364, 'LILIS AFIFATUL MAR\'AH', NULL, NULL, NULL, 'lilisafifah1112@gmail.com', NULL, '1994-12-05', 'P', NULL, '2026-01-04 21:17:33', '2026-01-04 21:17:33'),
(42, 365, 'LISTIANA NURAENI', NULL, NULL, NULL, 'listiananuraeni224@gmail.com', NULL, '1999-01-18', 'P', NULL, '2026-01-04 21:17:34', '2026-01-04 21:17:34'),
(43, 366, 'Listiya Widiasari', NULL, NULL, NULL, 'listiyawidiasari23@gmail.com', NULL, '1995-03-23', 'P', NULL, '2026-01-04 21:17:34', '2026-01-04 21:17:34'),
(44, 367, 'Mita Puspitasari', NULL, NULL, NULL, 'mita.puspitasari9201@gmail.com', NULL, '1992-01-01', 'P', NULL, '2026-01-04 21:17:34', '2026-01-04 21:17:34'),
(45, 368, 'MOCHAMMAD MAGHFURI ABDULOH', NULL, NULL, NULL, 'furiabd2@gmail.com', NULL, '1993-03-31', 'P', NULL, '2026-01-04 21:17:35', '2026-01-04 21:17:35'),
(46, 369, 'MUHAMMAD LUKMANUL KHAKIM', NULL, NULL, NULL, 'edogawa.lukman@gmail.com', NULL, '1990-11-18', 'P', NULL, '2026-01-04 21:17:35', '2026-01-04 21:17:35'),
(47, 370, 'NIKEN YUNITA', NULL, NULL, NULL, 'nikenyunita45@gmail.com', NULL, '2000-06-18', 'P', NULL, '2026-01-04 21:17:35', '2026-01-04 21:17:35'),
(48, 371, 'NIKY TRIYANGGA SETYAWAN', NULL, NULL, NULL, 'nickyrior@gmail.com', NULL, '2001-05-02', 'P', NULL, '2026-01-04 21:17:36', '2026-01-04 21:17:36'),
(49, 372, 'NITA OKTAVIANI', NULL, NULL, NULL, 'nitaokta151001@gmail.com', NULL, '2001-10-15', 'P', NULL, '2026-01-04 21:17:36', '2026-01-04 21:17:36'),
(50, 373, 'NUGROHO PANGESTU ADI', NULL, NULL, NULL, 'nugrohopangestuadi17@gmail.com', NULL, '1999-05-17', 'P', NULL, '2026-01-04 21:17:36', '2026-01-04 21:17:36'),
(51, 374, 'NUNIK AGESTIANI', NULL, NULL, NULL, 'agestianinunik@gmail.com', NULL, '1995-08-26', 'P', NULL, '2026-01-04 21:17:36', '2026-01-04 21:17:36'),
(52, 375, 'Nuswantoro', NULL, NULL, NULL, 'nuswantoro04@gmail.com', NULL, '1984-06-04', 'P', NULL, '2026-01-04 21:17:37', '2026-01-04 21:17:37'),
(53, 376, 'PUTRI PERTIWI', NULL, NULL, NULL, 'ppertiwi53@gmail.com', NULL, '1995-08-10', 'P', NULL, '2026-01-04 21:17:37', '2026-01-04 21:17:37'),
(54, 377, 'RAHARDIKA FAISAL PUTRA', NULL, NULL, NULL, 'rahardikaputra96@gmail.com', NULL, '1999-06-09', 'P', NULL, '2026-01-04 21:17:37', '2026-01-04 21:17:37'),
(55, 378, 'Rahmawati', NULL, NULL, NULL, 'rahmawati17januari90@gmail.com', NULL, '1990-01-17', 'P', NULL, '2026-01-04 21:17:38', '2026-01-04 21:17:38'),
(56, 379, 'RAHMI NUR FITRIA UTAMI', NULL, NULL, NULL, 'rahmirahmiii@gmail.com', NULL, '1999-03-26', 'P', NULL, '2026-01-04 21:17:38', '2026-01-04 21:17:38'),
(57, 380, 'RENDY PAMUNGKAS', NULL, NULL, NULL, 'rendypamungkas65@gmail.com', NULL, '1997-10-20', 'P', NULL, '2026-01-04 21:17:38', '2026-01-04 21:17:38'),
(58, 381, 'RIZQI ASFIANUDIN', NULL, NULL, NULL, 'rizqiasfianudin26@gmail.com', NULL, '2000-05-01', 'P', NULL, '2026-01-04 21:17:39', '2026-01-04 21:17:39'),
(59, 382, 'Sepri', NULL, NULL, NULL, 'tkrsepri@gmail.com', NULL, '1995-10-30', 'P', NULL, '2026-01-04 21:17:39', '2026-01-04 21:17:39'),
(60, 383, 'Siti Maesaroh', NULL, NULL, NULL, 'sitimaesaroh62780@gmail.com', NULL, '1989-02-15', 'P', NULL, '2026-01-04 21:17:39', '2026-01-04 21:17:39'),
(61, 384, 'SITI MEI RAHMAWATI', NULL, NULL, NULL, 'meyrachma48@gmail.com', NULL, '1993-05-23', 'P', NULL, '2026-01-04 21:17:39', '2026-01-04 21:17:39'),
(62, 385, 'SUCI SHOLEHANINGTIAS', NULL, NULL, NULL, 'sucisholehaning08@gmail.com', NULL, '1994-09-08', 'P', NULL, '2026-01-04 21:17:40', '2026-01-04 21:17:40'),
(63, 386, 'Sudarti', NULL, NULL, NULL, 'sofieladia@gmail.com', NULL, '1983-03-26', 'P', NULL, '2026-01-04 21:17:40', '2026-01-04 21:17:40'),
(64, 387, 'Sugito', NULL, NULL, NULL, 'gits_mjn@yahoo.com', NULL, '1977-11-04', 'P', NULL, '2026-01-04 21:17:40', '2026-01-04 21:17:40'),
(65, 388, 'Suswati', NULL, NULL, NULL, 'Suswatispd967@gmail.com', NULL, '1967-01-01', 'P', NULL, '2026-01-04 21:17:41', '2026-01-04 21:17:41'),
(66, 389, 'Wahyuni', NULL, NULL, NULL, 'wahyuni.arum2019@gmail.com', NULL, '1979-04-14', 'P', NULL, '2026-01-04 21:17:41', '2026-01-04 21:17:41'),
(67, 390, 'Warmansyah', NULL, NULL, NULL, 'warmansyah1212@gmail.com', NULL, '1987-12-12', 'P', NULL, '2026-01-04 21:17:41', '2026-01-04 21:17:41'),
(68, 391, 'Waryanto', NULL, NULL, NULL, 'carsun007@gmail.com', NULL, '1973-09-04', 'P', NULL, '2026-01-04 21:17:42', '2026-01-04 21:17:42'),
(69, 392, 'Wiwi Waryanti', NULL, NULL, NULL, 'arruzfaithfully@gmail.com', NULL, '1990-01-23', 'P', NULL, '2026-01-04 21:17:42', '2026-01-04 21:17:42'),
(70, 393, 'YENI RAHMAWATI', NULL, NULL, NULL, 'yenirahmawati123@gmail.com', NULL, '1994-01-19', 'P', NULL, '2026-01-04 21:17:42', '2026-01-04 21:17:42'),
(71, 394, 'YUNI ANDARI', NULL, NULL, NULL, 'yuniandari771@gmail.com', NULL, '1986-06-27', 'P', NULL, '2026-01-04 21:17:42', '2026-01-04 21:17:42');

-- --------------------------------------------------------

--
-- Struktur dari tabel `hari_aktif`
--

CREATE TABLE `hari_aktif` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_hari` varchar(255) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jadwal_mengajar`
--

CREATE TABLE `jadwal_mengajar` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `data_mengajar_id` bigint(20) UNSIGNED NOT NULL,
  `jam_mulai_id` bigint(20) UNSIGNED NOT NULL,
  `jam_selesai_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jam_mengajar`
--

CREATE TABLE `jam_mengajar` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `jam_ke` int(11) NOT NULL,
  `pukul` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jam_pelajaran`
--

CREATE TABLE `jam_pelajaran` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `jam_ke` int(11) NOT NULL,
  `mulai` time NOT NULL,
  `selesai` time NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jenis_tagihan`
--

CREATE TABLE `jenis_tagihan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_jenis` varchar(30) NOT NULL,
  `deskripsi` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `jenis_tagihan`
--

INSERT INTO `jenis_tagihan` (`id`, `nama_jenis`, `deskripsi`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'SPP', 'Pembayaran SPP Bulanan', 1, '2025-12-22 21:41:54', '2025-12-22 22:40:56'),
(3, 'Umum', 'Tagihan Untuk Umum', 1, '2025-12-22 22:48:03', '2025-12-22 22:48:03');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jurusan`
--

CREATE TABLE `jurusan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_jurusan` varchar(255) NOT NULL,
  `kode_jurusan` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `jurusan`
--

INSERT INTO `jurusan` (`id`, `nama_jurusan`, `kode_jurusan`, `created_at`, `updated_at`) VALUES
(2, 'Teknik Komputer dan Jaringan', 'TKJ', '2025-12-06 20:01:18', '2025-12-06 20:01:18'),
(3, 'Teknik Kendaraan Ringan', 'TKR', '2026-01-04 19:14:47', '2026-01-04 19:14:47'),
(4, 'Akuntansi', 'AK', '2026-01-04 19:14:58', '2026-01-04 19:15:09'),
(5, 'Bisnis Digital', 'BD', '2026-01-04 19:15:37', '2026-01-04 19:15:37'),
(6, 'Teknik Sepeda Motor', 'TSM', '2026-01-07 02:22:31', '2026-01-07 02:22:31');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kaskeluar`
--

CREATE TABLE `kaskeluar` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode_pengeluaran` varchar(255) NOT NULL,
  `tanggal` date NOT NULL,
  `kategori` varchar(255) NOT NULL,
  `keterangan` text DEFAULT NULL,
  `jumlah` decimal(15,2) NOT NULL,
  `petugas_id` bigint(20) UNSIGNED NOT NULL,
  `semester_id` bigint(20) UNSIGNED NOT NULL,
  `tahun_pelajaran_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kaskeluar`
--

INSERT INTO `kaskeluar` (`id`, `kode_pengeluaran`, `tanggal`, `kategori`, `keterangan`, `jumlah`, `petugas_id`, `semester_id`, `tahun_pelajaran_id`, `created_at`, `updated_at`) VALUES
(2, 'KK-1766558165', '2025-12-24', 'ATK', 'Beli alat tulis kantor', 90000.00, 1, 1, 6, '2025-12-23 23:36:05', '2025-12-23 23:36:05'),
(3, 'KK-1766636347', '2025-12-25', 'Transport', 'Transport guru MGMP', 150000.00, 1, 6, 11, '2025-12-24 21:19:07', '2025-12-24 21:19:07');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori_mapel`
--

CREATE TABLE `kategori_mapel` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_kategori_mapel` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kategori_mapel`
--

INSERT INTO `kategori_mapel` (`id`, `nama_kategori_mapel`, `created_at`, `updated_at`) VALUES
(1, 'Kejuruan', '2025-12-07 23:46:47', '2025-12-08 00:02:25'),
(4, 'Umum', '2026-01-05 19:14:30', '2026-01-05 19:14:30'),
(5, 'Kejuruan TKJ', '2026-01-05 21:15:23', '2026-01-05 21:15:23'),
(6, 'Kejuruan AK', '2026-01-05 21:21:31', '2026-01-05 21:21:31');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelas`
--

CREATE TABLE `kelas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tingkat` varchar(255) NOT NULL,
  `nama_kelas` varchar(255) NOT NULL,
  `kode_kelas` varchar(255) NOT NULL,
  `jurusan_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kelas`
--

INSERT INTO `kelas` (`id`, `tingkat`, `nama_kelas`, `kode_kelas`, `jurusan_id`, `created_at`, `updated_at`) VALUES
(8, '11', '11 TKJ 2', '11TKJ2', 2, '2025-12-06 21:37:03', '2025-12-06 21:37:03'),
(9, '12', '12 TKJ 2', '12TKJ2', 2, '2025-12-08 01:58:48', '2025-12-08 01:58:48'),
(10, '11', '11 TKJ 3', '11TKJ3', 2, '2025-12-23 19:33:15', '2025-12-23 19:33:15'),
(11, '12', '12 TKJ 3', '12TKJ3', 2, '2025-12-23 19:33:43', '2025-12-23 19:33:43'),
(13, '11', '11 TKJ 4', '11TKJ4', 2, '2026-01-04 18:49:16', '2026-01-04 18:49:16'),
(14, '11', '11 TKJ 1', '11TKJ1', 2, '2026-01-04 18:54:07', '2026-01-04 18:54:07'),
(15, '11', '11 TKR 1', '11TKR1', 2, '2026-01-04 18:56:50', '2026-01-04 21:26:28'),
(16, '10', '10 TJKT 1', '10TJKT1', 2, '2026-01-04 19:12:46', '2026-01-04 19:12:46'),
(17, '10', '10 TJKT 2', '10 TJKT 2', 2, '2026-01-04 19:13:02', '2026-01-04 19:13:02'),
(18, '10', '10 TO 1', '10TO1', 3, '2026-01-07 01:49:41', '2026-01-07 01:49:41'),
(19, '10', '10 TO 2', '10TO2', 3, '2026-01-07 01:50:15', '2026-01-07 01:50:15'),
(20, '10', '10 TO 3', '10TO3', 3, '2026-01-07 01:51:58', '2026-01-07 01:51:58'),
(21, '10', '10 AK', '10AK', 4, '2026-01-07 01:52:54', '2026-01-07 01:52:54'),
(22, '10', '10 PM 1', '10PM1', 5, '2026-01-07 01:53:54', '2026-01-07 01:53:54'),
(23, '10', '10 PM 2', '10PM2', 5, '2026-01-07 01:56:36', '2026-01-07 01:56:36'),
(24, '11', '11 TKR 2', '11TKR2', 3, '2026-01-07 02:00:56', '2026-01-07 02:00:56'),
(25, '11', '11 TKR 3', '11TKR3', 3, '2026-01-07 02:02:06', '2026-01-07 02:02:06'),
(26, '12', '12 TKJ 1', '12TKJ1', 2, '2026-01-07 02:05:31', '2026-01-07 02:05:31'),
(27, '12', '12 TKJ 4', '12TKJ4', 2, '2026-01-07 02:06:19', '2026-01-07 02:06:19'),
(28, '11', '11 TSM 1', '11TSM1', 6, '2026-01-07 02:23:19', '2026-01-07 02:23:19'),
(29, '11', '11 TSM 2', '11TSM2', 6, '2026-01-07 02:24:54', '2026-01-07 02:24:54'),
(30, '11', '11 TSM 3', '11TSM3', 6, '2026-01-07 02:25:50', '2026-01-07 02:25:50');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ketua_kelas`
--

CREATE TABLE `ketua_kelas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kelas_id` bigint(20) UNSIGNED NOT NULL,
  `siswa_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `laporan_keuangan`
--

CREATE TABLE `laporan_keuangan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tanggal_mulai` date DEFAULT NULL,
  `tanggal_selesai` date DEFAULT NULL,
  `semester_id` bigint(20) UNSIGNED NOT NULL,
  `tahun_pelajaran_id` bigint(20) UNSIGNED NOT NULL,
  `status_rekap` tinyint(4) DEFAULT 0 COMMENT '0 = belum direkap, 1 = sudah direkap',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `laporan_keuangan`
--

INSERT INTO `laporan_keuangan` (`id`, `tanggal_mulai`, `tanggal_selesai`, `semester_id`, `tahun_pelajaran_id`, `status_rekap`, `created_at`, `updated_at`) VALUES
(17, NULL, NULL, 1, 6, 1, '2025-12-24 20:07:05', '2025-12-24 20:37:54'),
(19, NULL, NULL, 6, 11, 0, '2025-12-24 21:29:26', '2025-12-24 21:29:26'),
(21, NULL, NULL, 6, 11, 0, '2025-12-24 21:36:34', '2025-12-24 21:36:34');

-- --------------------------------------------------------

--
-- Struktur dari tabel `laporan_keuangan_detail`
--

CREATE TABLE `laporan_keuangan_detail` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `laporan_id` bigint(20) UNSIGNED NOT NULL,
  `jenis` enum('pemasukan','pengeluaran') NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `tanggal` date NOT NULL,
  `nominal` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `laporan_keuangan_detail`
--

INSERT INTO `laporan_keuangan_detail` (`id`, `laporan_id`, `jenis`, `keterangan`, `tanggal`, `nominal`, `created_at`, `updated_at`) VALUES
(4, 17, 'pemasukan', 'Pembayaran Tagihan Uang Gedung oleh Pemuda Biasa', '2025-12-23', 900000, '2025-12-24 20:07:05', '2025-12-24 20:07:05'),
(5, 17, 'pemasukan', 'Pembayaran Tagihan SPP Maret oleh Candice Fay', '2025-12-24', 175000, '2025-12-24 20:07:05', '2025-12-24 20:07:05'),
(6, 17, 'pengeluaran', 'Beli alat tulis kantor', '2025-12-24', 90000, '2025-12-24 20:07:05', '2025-12-24 20:07:05'),
(7, 21, 'pengeluaran', 'Transport guru MGMP', '2025-12-25', 150000, '2025-12-24 21:36:34', '2025-12-24 21:36:34');

-- --------------------------------------------------------

--
-- Struktur dari tabel `log_kehadiran`
--

CREATE TABLE `log_kehadiran` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `mengajar_id` bigint(20) UNSIGNED NOT NULL,
  `siswa_id` bigint(20) UNSIGNED NOT NULL,
  `pertemuan_ke` int(11) NOT NULL,
  `tgl_kehadiran` date NOT NULL,
  `status_kehadiran` enum('H','I','S','A') NOT NULL DEFAULT 'H',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `log_kehadiran_kelas`
--

CREATE TABLE `log_kehadiran_kelas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kelas_id` bigint(20) UNSIGNED NOT NULL,
  `siswa_id` bigint(20) UNSIGNED NOT NULL,
  `tgl_kehadiran` date NOT NULL,
  `status_kehadiran` enum('H','I','S','A') NOT NULL DEFAULT 'H',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `log_user`
--

CREATE TABLE `log_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `action` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `log_user`
--

INSERT INTO `log_user` (`id`, `user_id`, `action`, `description`, `ip_address`, `user_agent`, `created_at`, `updated_at`) VALUES
(1, 1, 'created', 'User baru dibuat: Darwin Kuvalis (admin)', '127.0.0.1', 'Symfony', '2025-11-21 20:32:49', '2025-11-21 20:32:49'),
(2, 2, 'created', 'User baru dibuat: Mr. Alek Kunze (guru)', '127.0.0.1', 'Symfony', '2025-11-21 20:32:50', '2025-11-21 20:32:50'),
(5, 5, 'created', 'User baru dibuat: Coby Beahan (guru)', '127.0.0.1', 'Symfony', '2025-11-21 20:32:51', '2025-11-21 20:32:51'),
(7, 7, 'created', 'User baru dibuat: Prof. Archibald Langosh DDS (siswa)', '127.0.0.1', 'Symfony', '2025-11-21 20:32:52', '2025-11-21 20:32:52'),
(8, 8, 'created', 'User baru dibuat: Prof. Mayra Heathcote PhD (siswa)', '127.0.0.1', 'Symfony', '2025-11-21 20:32:52', '2025-11-21 20:32:52'),
(9, 9, 'created', 'User baru dibuat: Elmore Jones (siswa)', '127.0.0.1', 'Symfony', '2025-11-21 20:32:53', '2025-11-21 20:32:53'),
(10, 10, 'created', 'User baru dibuat: Mekhi Raynor (siswa)', '127.0.0.1', 'Symfony', '2025-11-21 20:32:53', '2025-11-21 20:32:53'),
(11, 11, 'created', 'User baru dibuat: Kenneth Ward (siswa)', '127.0.0.1', 'Symfony', '2025-11-21 20:32:53', '2025-11-21 20:32:53'),
(12, 12, 'created', 'User baru dibuat: Candice Fay (siswa)', '127.0.0.1', 'Symfony', '2025-11-21 20:32:54', '2025-11-21 20:32:54'),
(14, 14, 'created', 'User baru dibuat: Rosalind Kertzmann Sr. (siswa)', '127.0.0.1', 'Symfony', '2025-11-21 20:32:54', '2025-11-21 20:32:54'),
(15, 15, 'created', 'User baru dibuat: Kip Willms (siswa)', '127.0.0.1', 'Symfony', '2025-11-21 20:32:55', '2025-11-21 20:32:55'),
(16, 16, 'created', 'User baru dibuat: Adrien Beier (siswa)', '127.0.0.1', 'Symfony', '2025-11-21 20:32:55', '2025-11-21 20:32:55'),
(17, 17, 'created', 'User baru dibuat: Darien Emard I (siswa)', '127.0.0.1', 'Symfony', '2025-11-21 20:32:56', '2025-11-21 20:32:56'),
(19, 19, 'created', 'User baru dibuat: Dr. Davin Bechtelar (siswa)', '127.0.0.1', 'Symfony', '2025-11-21 20:32:56', '2025-11-21 20:32:56'),
(21, 21, 'created', 'User baru dibuat: Geovany Lehner (siswa)', '127.0.0.1', 'Symfony', '2025-11-21 20:32:57', '2025-11-21 20:32:57'),
(22, 22, 'created', 'User baru dibuat: Jermaine Huels (siswa)', '127.0.0.1', 'Symfony', '2025-11-21 20:32:57', '2025-11-21 20:32:57'),
(23, 23, 'created', 'User baru dibuat: Dr. Sienna Jast (siswa)', '127.0.0.1', 'Symfony', '2025-11-21 20:32:58', '2025-11-21 20:32:58'),
(24, 24, 'created', 'User baru dibuat: Emiliano Blanda (siswa)', '127.0.0.1', 'Symfony', '2025-11-21 20:32:58', '2025-11-21 20:32:58'),
(25, 25, 'created', 'User baru dibuat: Mafalda Gulgowski (siswa)', '127.0.0.1', 'Symfony', '2025-11-21 20:32:59', '2025-11-21 20:32:59'),
(26, 26, 'created', 'User baru dibuat: Darion Ondricka (siswa)', '127.0.0.1', 'Symfony', '2025-11-21 20:32:59', '2025-11-21 20:32:59'),
(27, 27, 'created', 'User baru dibuat: Orville Larson Sr. (admin)', '127.0.0.1', 'Symfony', '2025-11-21 20:33:50', '2025-11-21 20:33:50'),
(30, 30, 'created', 'User baru dibuat: Kayla Jacobs (guru)', '127.0.0.1', 'Symfony', '2025-11-21 20:33:51', '2025-11-21 20:33:51'),
(31, 31, 'created', 'User baru dibuat: Wanda Simonis I (guru)', '127.0.0.1', 'Symfony', '2025-11-21 20:33:51', '2025-11-21 20:33:51'),
(32, 32, 'created', 'User baru dibuat: Dr. Ariane Bosco Jr. (guru)', '127.0.0.1', 'Symfony', '2025-11-21 20:33:51', '2025-11-21 20:33:51'),
(33, 33, 'created', 'User baru dibuat: Dovie Lynch (siswa)', '127.0.0.1', 'Symfony', '2025-11-21 20:33:52', '2025-11-21 20:33:52'),
(34, 34, 'created', 'User baru dibuat: Elton Bayer Jr. (siswa)', '127.0.0.1', 'Symfony', '2025-11-21 20:33:52', '2025-11-21 20:33:52'),
(35, 35, 'created', 'User baru dibuat: Prof. Ollie Bartell (siswa)', '127.0.0.1', 'Symfony', '2025-11-21 20:33:53', '2025-11-21 20:33:53'),
(36, 36, 'created', 'User baru dibuat: Abdiel Daniel (siswa)', '127.0.0.1', 'Symfony', '2025-11-21 20:33:54', '2025-11-21 20:33:54'),
(37, 37, 'created', 'User baru dibuat: Dr. Amely Kuphal (siswa)', '127.0.0.1', 'Symfony', '2025-11-21 20:33:54', '2025-11-21 20:33:54'),
(38, 38, 'created', 'User baru dibuat: Tyra Purdy (siswa)', '127.0.0.1', 'Symfony', '2025-11-21 20:33:54', '2025-11-21 20:33:54'),
(40, 40, 'created', 'User baru dibuat: Nyah Spencer III (siswa)', '127.0.0.1', 'Symfony', '2025-11-21 20:33:55', '2025-11-21 20:33:55'),
(41, 41, 'created', 'User baru dibuat: Dr. Werner Jones I (siswa)', '127.0.0.1', 'Symfony', '2025-11-21 20:33:55', '2025-11-21 20:33:55'),
(42, 42, 'created', 'User baru dibuat: Dr. Reginald Parker (siswa)', '127.0.0.1', 'Symfony', '2025-11-21 20:33:56', '2025-11-21 20:33:56'),
(43, 43, 'created', 'User baru dibuat: Elfrieda Reilly (siswa)', '127.0.0.1', 'Symfony', '2025-11-21 20:33:56', '2025-11-21 20:33:56'),
(44, 44, 'created', 'User baru dibuat: Kaley Bailey (siswa)', '127.0.0.1', 'Symfony', '2025-11-21 20:33:56', '2025-11-21 20:33:56'),
(45, 45, 'created', 'User baru dibuat: Kiana Mertz (siswa)', '127.0.0.1', 'Symfony', '2025-11-21 20:33:57', '2025-11-21 20:33:57'),
(46, 46, 'created', 'User baru dibuat: Tierra Nicolas (siswa)', '127.0.0.1', 'Symfony', '2025-11-21 20:33:57', '2025-11-21 20:33:57'),
(47, 47, 'created', 'User baru dibuat: Janis Hermiston (siswa)', '127.0.0.1', 'Symfony', '2025-11-21 20:33:57', '2025-11-21 20:33:57'),
(48, 48, 'created', 'User baru dibuat: Ottilie Koch (siswa)', '127.0.0.1', 'Symfony', '2025-11-21 20:33:58', '2025-11-21 20:33:58'),
(49, 49, 'created', 'User baru dibuat: Mrs. Dayana Johnson (siswa)', '127.0.0.1', 'Symfony', '2025-11-21 20:33:58', '2025-11-21 20:33:58'),
(50, 50, 'created', 'User baru dibuat: Mallory Miller (siswa)', '127.0.0.1', 'Symfony', '2025-11-21 20:33:58', '2025-11-21 20:33:58'),
(51, 51, 'created', 'User baru dibuat: Efren Hansen (siswa)', '127.0.0.1', 'Symfony', '2025-11-21 20:33:59', '2025-11-21 20:33:59'),
(52, 52, 'created', 'User baru dibuat: Mr. Philip Gleichner Jr. (siswa)', '127.0.0.1', 'Symfony', '2025-11-21 20:33:59', '2025-11-21 20:33:59'),
(53, 53, 'created', 'User baru dibuat: Dr. Eric Bradtke I (admin)', '127.0.0.1', 'Symfony', '2025-11-21 20:36:26', '2025-11-21 20:36:26'),
(55, 55, 'created', 'User baru dibuat: Lukas Douglas (guru)', '127.0.0.1', 'Symfony', '2025-11-21 20:36:28', '2025-11-21 20:36:28'),
(56, 56, 'created', 'User baru dibuat: Landen Hegmann (guru)', '127.0.0.1', 'Symfony', '2025-11-21 20:36:28', '2025-11-21 20:36:28'),
(57, 57, 'created', 'User baru dibuat: Greg Crist (guru)', '127.0.0.1', 'Symfony', '2025-11-21 20:36:29', '2025-11-21 20:36:29'),
(58, 58, 'created', 'User baru dibuat: Prof. Elinor Hudson (guru)', '127.0.0.1', 'Symfony', '2025-11-21 20:36:29', '2025-11-21 20:36:29'),
(59, 59, 'created', 'User baru dibuat: Jeramie Koch II (siswa)', '127.0.0.1', 'Symfony', '2025-11-21 20:36:30', '2025-11-21 20:36:30'),
(60, 60, 'created', 'User baru dibuat: Ahmed Tromp (siswa)', '127.0.0.1', 'Symfony', '2025-11-21 20:36:31', '2025-11-21 20:36:31'),
(61, 61, 'created', 'User baru dibuat: Dr. Heather Pollich (siswa)', '127.0.0.1', 'Symfony', '2025-11-21 20:36:32', '2025-11-21 20:36:32'),
(62, 62, 'created', 'User baru dibuat: Prof. Richard Renner Sr. (siswa)', '127.0.0.1', 'Symfony', '2025-11-21 20:36:32', '2025-11-21 20:36:32'),
(63, 63, 'created', 'User baru dibuat: Zena Leuschke (siswa)', '127.0.0.1', 'Symfony', '2025-11-21 20:36:33', '2025-11-21 20:36:33'),
(64, 64, 'created', 'User baru dibuat: Hermina Jakubowski DVM (siswa)', '127.0.0.1', 'Symfony', '2025-11-21 20:36:34', '2025-11-21 20:36:34'),
(65, 65, 'created', 'User baru dibuat: Audra Abbott III (siswa)', '127.0.0.1', 'Symfony', '2025-11-21 20:36:34', '2025-11-21 20:36:34'),
(66, 66, 'created', 'User baru dibuat: Orland Leuschke Jr. (siswa)', '127.0.0.1', 'Symfony', '2025-11-21 20:36:35', '2025-11-21 20:36:35'),
(67, 67, 'created', 'User baru dibuat: Kitty Schultz (siswa)', '127.0.0.1', 'Symfony', '2025-11-21 20:36:36', '2025-11-21 20:36:36'),
(68, 68, 'created', 'User baru dibuat: Robert Dach (siswa)', '127.0.0.1', 'Symfony', '2025-11-21 20:36:36', '2025-11-21 20:36:36'),
(69, 69, 'created', 'User baru dibuat: Tressie Wisoky (siswa)', '127.0.0.1', 'Symfony', '2025-11-21 20:36:37', '2025-11-21 20:36:37'),
(70, 70, 'created', 'User baru dibuat: Elmer Fadel (siswa)', '127.0.0.1', 'Symfony', '2025-11-21 20:36:38', '2025-11-21 20:36:38'),
(71, 71, 'created', 'User baru dibuat: Stuart Parker (siswa)', '127.0.0.1', 'Symfony', '2025-11-21 20:36:38', '2025-11-21 20:36:38'),
(72, 72, 'created', 'User baru dibuat: Mabelle Sauer (siswa)', '127.0.0.1', 'Symfony', '2025-11-21 20:36:38', '2025-11-21 20:36:38'),
(73, 73, 'created', 'User baru dibuat: Mario Marks V (siswa)', '127.0.0.1', 'Symfony', '2025-11-21 20:36:39', '2025-11-21 20:36:39'),
(74, 74, 'created', 'User baru dibuat: Rowland Schulist DDS (siswa)', '127.0.0.1', 'Symfony', '2025-11-21 20:36:39', '2025-11-21 20:36:39'),
(76, 76, 'created', 'User baru dibuat: Zora Russel (siswa)', '127.0.0.1', 'Symfony', '2025-11-21 20:36:40', '2025-11-21 20:36:40'),
(78, 78, 'created', 'User baru dibuat: Prof. Alva Ryan (siswa)', '127.0.0.1', 'Symfony', '2025-11-21 20:36:42', '2025-11-21 20:36:42'),
(79, 1, 'login', 'User login ke sistem', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-22 07:18:36', '2025-11-22 07:18:36'),
(80, 1, 'login', 'User login ke sistem', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-23 00:33:19', '2025-11-23 00:33:19'),
(81, 1, 'login', 'User login ke sistem', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-29 23:40:30', '2025-11-29 23:40:30'),
(82, 1, 'login', 'User login ke sistem', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-12-04 05:59:06', '2025-12-04 05:59:06'),
(83, 1, 'login', 'User login ke sistem', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-12-06 17:31:54', '2025-12-06 17:31:54'),
(84, 79, 'login', 'User login ke sistem', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2025-12-07 02:59:49', '2025-12-07 02:59:49'),
(85, 79, 'login', 'User login ke sistem', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2025-12-07 03:09:56', '2025-12-07 03:09:56'),
(86, 1, 'created', 'Mapel baru dibuat: Kompetensi Kejuruan TKJ (Kategori: Tidak ada kategori)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-12-08 00:14:36', '2025-12-08 00:14:36'),
(87, 1, 'created', 'Mapel baru dibuat: Kompetensi Kejuruan TKJ (Kategori: Tidak ada kategori)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-12-08 00:21:30', '2025-12-08 00:21:30'),
(88, 1, 'created', 'Mapel baru dibuat: Kompetensi Kejuruan TKJ (Kategori: Tidak ada kategori)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-12-08 00:26:12', '2025-12-08 00:26:12'),
(89, 1, 'created', 'Mapel baru dibuat: Kompetensi Kejuruan TKJ (Kategori: Tidak ada kategori)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-12-08 00:26:47', '2025-12-08 00:26:47'),
(90, 1, 'updated', 'Mapel diperbarui: Kompetensi Kejuruan TKR (Kategori: Tidak ada kategori)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-12-08 00:38:26', '2025-12-08 00:38:26'),
(91, 1, 'created', 'Mapel baru dibuat: Kompetensi Kejuruan TKJ (Kategori: Tidak ada kategori)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-12-08 00:38:57', '2025-12-08 00:38:57'),
(92, 1, 'updated', 'Mapel diperbarui: Kompetensi Kejuruan TKR (Kategori: Tidak ada kategori)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-12-08 00:39:36', '2025-12-08 00:39:36'),
(93, 1, 'deleted', 'Mapel dihapus: Kompetensi Kejuruan TKR (Kategori: Tidak ada kategori)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-12-08 00:39:50', '2025-12-08 00:39:50'),
(94, 1, 'created', 'Mapel baru dibuat: Kompetensi Kejuruan TKJ (Kategori: Tidak ada kategori)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-12-08 02:05:41', '2025-12-08 02:05:41'),
(95, 1, 'login', 'User login ke sistem', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-12-08 06:37:45', '2025-12-08 06:37:45'),
(96, 1, 'login', 'User login ke sistem', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-12-08 20:30:56', '2025-12-08 20:30:56'),
(97, 1, 'login', 'User login ke sistem', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-12-08 20:37:05', '2025-12-08 20:37:05'),
(98, 1, 'login', 'User login ke sistem', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-12-08 20:40:00', '2025-12-08 20:40:00'),
(99, 1, 'login', 'User login ke sistem', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-12-08 20:45:06', '2025-12-08 20:45:06'),
(100, 1, 'login', 'User login ke sistem', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-12-08 20:46:14', '2025-12-08 20:46:14'),
(101, 1, 'login', 'User login ke sistem', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-12-08 20:48:17', '2025-12-08 20:48:17'),
(102, 1, 'logout', 'User logout dari sistem', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-12-08 21:23:05', '2025-12-08 21:23:05'),
(103, 1, 'login', 'User login ke sistem', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-12-08 21:23:34', '2025-12-08 21:23:34'),
(104, 1, 'logout', 'User logout dari sistem', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-12-08 21:23:46', '2025-12-08 21:23:46'),
(105, 1, 'login', 'User login ke sistem', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-12-08 21:24:31', '2025-12-08 21:24:31'),
(106, 1, 'logout', 'User logout dari sistem', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-19 05:49:53', '2025-12-19 05:49:53'),
(107, 1, 'login', 'User login ke sistem', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-19 05:50:12', '2025-12-19 05:50:12'),
(108, 1, 'logout', 'User logout dari sistem', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-19 05:54:35', '2025-12-19 05:54:35'),
(109, 1, 'updated', 'User diperbarui: Darwin Kuvalis (admin)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-19 05:57:23', '2025-12-19 05:57:23'),
(110, 1, 'login', 'User login ke sistem', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-19 05:57:23', '2025-12-19 05:57:23'),
(111, 1, 'updated', 'User diperbarui: Mr. Alek Kunze (guru)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-19 07:03:51', '2025-12-19 07:03:51'),
(112, 1, 'updated', 'User diperbarui: Mr. Alek Kunze (guru)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-19 07:26:06', '2025-12-19 07:26:06'),
(113, 1, 'updated', 'User diperbarui: Mr. Alek Kunze (guru)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-19 07:38:54', '2025-12-19 07:38:54'),
(114, 1, 'updated', 'User diperbarui: Mr. Alek Kunze (guru)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-19 07:41:35', '2025-12-19 07:41:35'),
(115, 1, 'updated', 'User diperbarui: Mr. Alek Kunze (guru)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-19 07:45:44', '2025-12-19 07:45:44'),
(116, 1, 'updated', 'User diperbarui: Mr. Alek Kunze (guru)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-19 08:00:48', '2025-12-19 08:00:48'),
(117, 1, 'login', 'User login ke sistem', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-20 06:02:38', '2025-12-20 06:02:38'),
(118, 1, 'updated', 'User diperbarui: Mr. Alek Kunze (guru)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-20 06:10:56', '2025-12-20 06:10:56'),
(119, 1, 'updated', 'User diperbarui: Mr. Alek Kunze (guru)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-20 06:11:41', '2025-12-20 06:11:41'),
(120, 1, 'updated', 'User diperbarui: Kimberly Reichel (guru)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-20 06:12:47', '2025-12-20 06:12:47'),
(121, 1, 'updated', 'User diperbarui: Kimberly Reichel (guru)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-20 06:13:24', '2025-12-20 06:13:24'),
(122, 1, 'login', 'User login ke sistem', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-22 05:52:21', '2025-12-22 05:52:21'),
(123, 1, 'updated', 'User diperbarui: Darwin Kuvalis (admin)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-22 06:11:59', '2025-12-22 06:11:59'),
(124, 1, 'logout', 'User logout dari sistem', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-22 06:11:59', '2025-12-22 06:11:59'),
(125, 80, 'login', 'User login ke sistem', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-22 06:12:13', '2025-12-22 06:12:13'),
(126, 80, 'login', 'User login ke sistem', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-22 20:29:57', '2025-12-22 20:29:57'),
(127, 80, 'logout', 'User logout dari sistem', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-22 20:44:06', '2025-12-22 20:44:06'),
(128, 1, 'login', 'User login ke sistem', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-22 20:44:26', '2025-12-22 20:44:26'),
(129, 1, 'updated', 'User diperbarui: Mr. Alek Kunze (guru)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-22 20:45:50', '2025-12-22 20:45:50'),
(130, 1, 'updated', 'User diperbarui: Darwin Kuvalis (admin)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-22 20:47:23', '2025-12-22 20:47:23'),
(131, 1, 'logout', 'User logout dari sistem', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-22 20:47:23', '2025-12-22 20:47:23'),
(132, 80, 'login', 'User login ke sistem', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-22 20:47:34', '2025-12-22 20:47:34'),
(133, 80, 'updated', 'User diperbarui: Tata Usaha (staff)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-23 03:57:01', '2025-12-23 03:57:01'),
(134, 80, 'login', 'User login ke sistem', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-23 03:57:01', '2025-12-23 03:57:01'),
(135, 80, 'login', 'User login ke sistem', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-23 18:12:37', '2025-12-23 18:12:37'),
(136, 1, 'login', 'User login ke sistem', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-12-23 19:32:05', '2025-12-23 19:32:05'),
(137, 80, 'login', 'User login ke sistem', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-24 17:21:32', '2025-12-24 17:21:32'),
(138, 1, 'login', 'User login ke sistem', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-12-24 21:15:13', '2025-12-24 21:15:13'),
(139, 80, 'login', 'User login ke sistem', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-31 18:22:01', '2025-12-31 18:22:01'),
(140, 1, 'login', 'User login ke sistem', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2025-12-31 20:10:52', '2025-12-31 20:10:52'),
(141, 1, 'login', 'User login ke sistem', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2025-12-31 21:21:28', '2025-12-31 21:21:28'),
(142, 80, 'updated', 'User diperbarui: Tata Usaha (staff)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-31 21:24:50', '2025-12-31 21:24:50'),
(143, 80, 'logout', 'User logout dari sistem', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-31 21:24:50', '2025-12-31 21:24:50'),
(144, 1, 'login', 'User login ke sistem', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-31 21:25:01', '2025-12-31 21:25:01'),
(145, 1, 'updated', 'User diperbarui: Darwin Kuvalis (admin)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2025-12-31 23:33:18', '2025-12-31 23:33:18'),
(146, 1, 'logout', 'User logout dari sistem', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2025-12-31 23:33:18', '2025-12-31 23:33:18'),
(147, 80, 'login', 'User login ke sistem', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2025-12-31 23:33:33', '2025-12-31 23:33:33'),
(148, 80, 'login', 'User login ke sistem', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 17:48:41', '2026-01-02 17:48:41'),
(149, 1, 'login', 'User login ke sistem', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-02 18:33:45', '2026-01-02 18:33:45'),
(150, 80, 'updated', 'User diperbarui: Tata Usaha (staff)', '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Mobile Safari/537.36', '2026-01-02 19:52:36', '2026-01-02 19:52:36'),
(151, 80, 'updated', 'User diperbarui: Tata Usaha (staff)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 19:57:15', '2026-01-02 19:57:15'),
(152, 80, 'updated', 'User diperbarui: Tata Usaha (staff)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 20:07:27', '2026-01-02 20:07:27'),
(153, 80, 'updated', 'User diperbarui: Tata Usaha (staff)', '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Mobile Safari/537.36', '2026-01-02 20:09:47', '2026-01-02 20:09:47'),
(154, 80, 'updated', 'User diperbarui: Tata Usaha (staff)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 20:18:32', '2026-01-02 20:18:32'),
(155, 80, 'updated', 'User diperbarui: Tata Usaha (staff)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 20:18:47', '2026-01-02 20:18:47'),
(156, 1, 'created', 'User baru dibuat: Afif Waliyudin (staff)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-02 21:09:21', '2026-01-02 21:09:21'),
(157, 80, 'updated', 'User diperbarui: Tata Usaha (staff)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 21:13:12', '2026-01-02 21:13:12'),
(158, 80, 'logout', 'User logout dari sistem', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 21:13:12', '2026-01-02 21:13:12'),
(166, 80, 'login', 'User login ke sistem', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 23:10:58', '2026-01-02 23:10:58'),
(167, 1, 'updated', 'User diperbarui: Tata Usaha (staff)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-02 23:47:25', '2026-01-02 23:47:25'),
(168, 1, 'updated', 'User diperbarui: Tata Usaha (staff)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-03 00:13:15', '2026-01-03 00:13:15'),
(169, 1, 'deleted', 'User dihapus: Afif Waliyudin (staff)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-03 00:14:22', '2026-01-03 00:14:22'),
(170, 1, 'created', 'User baru dibuat: tes (staff)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-03 00:19:57', '2026-01-03 00:19:57'),
(171, 1, 'deleted', 'User dihapus: tes (staff)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-03 00:20:05', '2026-01-03 00:20:05'),
(172, 80, 'login', 'User login ke sistem', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-04 18:36:15', '2026-01-04 18:36:15'),
(173, 80, 'updated', 'User diperbarui: Tata Usaha (staff)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-04 18:37:14', '2026-01-04 18:37:14'),
(174, 80, 'logout', 'User logout dari sistem', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-04 18:37:14', '2026-01-04 18:37:14'),
(175, 1, 'login', 'User login ke sistem', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-04 18:37:37', '2026-01-04 18:37:37'),
(176, 1, 'created', 'User baru dibuat: AKQILAH PANGESTU (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-04 19:16:25', '2026-01-04 19:16:25'),
(177, 1, 'created', 'User baru dibuat: Alexa Gustiana Ramadhani (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-04 19:16:25', '2026-01-04 19:16:25'),
(178, 1, 'created', 'User baru dibuat: ALIVAH RIZQI BAROKAH (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-04 19:16:26', '2026-01-04 19:16:26'),
(179, 1, 'created', 'User baru dibuat: AZ ZAHRA FAMELA ALKIRANA PUTRI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-04 19:16:26', '2026-01-04 19:16:26'),
(180, 1, 'created', 'User baru dibuat: DELYNA RAMADHANI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-04 19:16:27', '2026-01-04 19:16:27'),
(181, 1, 'created', 'User baru dibuat: FIORENZA AZALIA SHAHIA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-04 19:16:27', '2026-01-04 19:16:27'),
(182, 1, 'created', 'User baru dibuat: IXZEL KHABILNA PUTRI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-04 19:16:27', '2026-01-04 19:16:27'),
(183, 1, 'created', 'User baru dibuat: Jenita Lidia Saputri (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-04 19:16:28', '2026-01-04 19:16:28'),
(184, 1, 'created', 'User baru dibuat: Liyal Aristiani (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-04 19:16:28', '2026-01-04 19:16:28'),
(185, 1, 'created', 'User baru dibuat: Miftah Nurjanah (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-04 19:16:29', '2026-01-04 19:16:29'),
(186, 1, 'created', 'User baru dibuat: Nadira Pangelista (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-04 19:16:29', '2026-01-04 19:16:29'),
(187, 1, 'created', 'User baru dibuat: NAGITA APRILIA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-04 19:16:30', '2026-01-04 19:16:30'),
(188, 1, 'created', 'User baru dibuat: NAURA RAHMA DINA AL WAHDANI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-04 19:16:30', '2026-01-04 19:16:30'),
(189, 1, 'created', 'User baru dibuat: NIA RAMADHANI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-04 19:16:31', '2026-01-04 19:16:31'),
(190, 1, 'created', 'User baru dibuat: ROSSY YULIA SARI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-04 19:16:31', '2026-01-04 19:16:31'),
(191, 1, 'created', 'User baru dibuat: SAHRINI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-04 19:16:32', '2026-01-04 19:16:32'),
(192, 1, 'created', 'User baru dibuat: SALFA SINAR SAPUTRI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-04 19:16:32', '2026-01-04 19:16:32'),
(193, 1, 'created', 'User baru dibuat: SEVI VIDIANINGSIH (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-04 19:16:32', '2026-01-04 19:16:32'),
(194, 1, 'created', 'User baru dibuat: SHANY AZIFFA FIRRELLI EQUILLA TAMI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-04 19:16:32', '2026-01-04 19:16:32'),
(195, 1, 'created', 'User baru dibuat: Shieva Putri Lestari (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-04 19:16:33', '2026-01-04 19:16:33'),
(196, 1, 'created', 'User baru dibuat: Sifa Tri Lestari (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-04 19:16:34', '2026-01-04 19:16:34'),
(197, 1, 'created', 'User baru dibuat: SITA DWI MU\'RIFFAH (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-04 19:16:34', '2026-01-04 19:16:34'),
(198, 1, 'created', 'User baru dibuat: TANSA DELISA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-04 19:16:35', '2026-01-04 19:16:35'),
(199, 1, 'created', 'User baru dibuat: Tiara Nofiana (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-04 19:16:35', '2026-01-04 19:16:35'),
(200, 1, 'created', 'User baru dibuat: Triyana Selfiani (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-04 19:16:36', '2026-01-04 19:16:36'),
(201, 1, 'created', 'User baru dibuat: VITA NURAENI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-04 19:16:36', '2026-01-04 19:16:36'),
(202, 1, 'created', 'User baru dibuat: ZASQIA RAHYANITA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-04 19:16:36', '2026-01-04 19:16:36'),
(203, 1, 'created', 'User baru dibuat: ALLENA WIDAYANTI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-04 19:16:36', '2026-01-04 19:16:36'),
(204, 1, 'created', 'User baru dibuat: ANE AGUSTINA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-04 19:16:37', '2026-01-04 19:16:37'),
(205, 1, 'created', 'User baru dibuat: ANETA LIDYA INDAH WARDHANA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-04 19:16:37', '2026-01-04 19:16:37'),
(206, 1, 'created', 'User baru dibuat: AZLINA SANDRA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-04 19:16:38', '2026-01-04 19:16:38'),
(207, 1, 'created', 'User baru dibuat: Bilqis Ghefira Shefa (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-04 19:16:38', '2026-01-04 19:16:38'),
(208, 1, 'created', 'User baru dibuat: Carolina Firgianti (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-04 19:16:38', '2026-01-04 19:16:38'),
(209, 1, 'created', 'User baru dibuat: DWI SAPUTRI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-04 19:16:39', '2026-01-04 19:16:39'),
(210, 1, 'created', 'User baru dibuat: Feby Destiana Putri (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-04 19:16:40', '2026-01-04 19:16:40'),
(211, 1, 'created', 'User baru dibuat: HESTI ZASKIA FITRIYAH (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-04 19:16:40', '2026-01-04 19:16:40'),
(212, 1, 'created', 'User baru dibuat: KEYLA ALMEDIVA AL HADID (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-04 19:16:40', '2026-01-04 19:16:40'),
(213, 1, 'created', 'User baru dibuat: KHOIRU NISA RAMADHANI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-04 19:16:40', '2026-01-04 19:16:40'),
(214, 1, 'created', 'User baru dibuat: MIFTAHUL ALFIATU RAMADANI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-04 19:16:41', '2026-01-04 19:16:41'),
(215, 1, 'created', 'User baru dibuat: MU\'ALIMATUL HAFIDZOH (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-04 19:16:42', '2026-01-04 19:16:42'),
(216, 1, 'created', 'User baru dibuat: RAHMAH RAHAYU (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-04 19:16:42', '2026-01-04 19:16:42'),
(217, 1, 'created', 'User baru dibuat: Reva Ayu Anjani (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-04 19:16:43', '2026-01-04 19:16:43'),
(218, 1, 'created', 'User baru dibuat: ROSYDIANA SEKAR ARUM (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-04 19:16:43', '2026-01-04 19:16:43'),
(219, 1, 'created', 'User baru dibuat: SILVI TRI MARLINA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-04 19:16:43', '2026-01-04 19:16:43'),
(220, 1, 'created', 'User baru dibuat: SITI MEGA ROHANI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-04 19:16:44', '2026-01-04 19:16:44'),
(221, 1, 'created', 'User baru dibuat: Siti Nur Awaliyah (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-04 19:16:45', '2026-01-04 19:16:45'),
(222, 1, 'created', 'User baru dibuat: SYAKINA NUR ASYIFA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-04 19:16:45', '2026-01-04 19:16:45'),
(223, 1, 'created', 'User baru dibuat: TERA PISESA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-04 19:16:46', '2026-01-04 19:16:46'),
(224, 1, 'created', 'User baru dibuat: TERI LESTARI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-04 19:16:46', '2026-01-04 19:16:46'),
(225, 1, 'created', 'User baru dibuat: Adelia Indrawati (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-04 19:16:47', '2026-01-04 19:16:47'),
(226, 1, 'created', 'User baru dibuat: AMELIYA RAHAYU (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-04 19:16:47', '2026-01-04 19:16:47'),
(227, 1, 'created', 'User baru dibuat: ANIFA AZIZAH RAHMAWATI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-04 19:16:47', '2026-01-04 19:16:47'),
(228, 1, 'created', 'User baru dibuat: ANISA LATIFAH (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-04 19:16:48', '2026-01-04 19:16:48'),
(229, 1, 'created', 'User baru dibuat: Arinta Jufika Putri (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-04 19:16:49', '2026-01-04 19:16:49'),
(230, 1, 'created', 'User baru dibuat: AYU PUSPITASARI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-04 19:16:49', '2026-01-04 19:16:49'),
(231, 1, 'created', 'User baru dibuat: BUNGA APRILLIA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-04 19:16:49', '2026-01-04 19:16:49'),
(232, 1, 'created', 'User baru dibuat: CANTIKA NOPITASARI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-04 19:16:49', '2026-01-04 19:16:49'),
(233, 1, 'created', 'User baru dibuat: CELSIANA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-04 19:16:50', '2026-01-04 19:16:50'),
(234, 1, 'created', 'User baru dibuat: ERMI SULISTIAWATI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-04 19:16:50', '2026-01-04 19:16:50'),
(235, 1, 'created', 'User baru dibuat: FADILA WIJAYANTI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-04 19:16:51', '2026-01-04 19:16:51'),
(236, 1, 'created', 'User baru dibuat: FAUZIAH NUR SUKMA AULIA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-04 19:16:51', '2026-01-04 19:16:51'),
(237, 1, 'created', 'User baru dibuat: Hilda Asfarinazul Fatie (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-04 19:16:51', '2026-01-04 19:16:51'),
(238, 1, 'created', 'User baru dibuat: ISNAENI IYANATUNNISA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-04 19:16:52', '2026-01-04 19:16:52'),
(239, 1, 'created', 'User baru dibuat: KANIA FADHILA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-04 19:16:52', '2026-01-04 19:16:52'),
(240, 1, 'created', 'User baru dibuat: KEYSA ALYA ROIKHATUSYYFA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-04 19:16:53', '2026-01-04 19:16:53'),
(241, 1, 'created', 'User baru dibuat: Keysha Setianingrum (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-04 19:16:53', '2026-01-04 19:16:53'),
(242, 1, 'created', 'User baru dibuat: LASTRI AGNISA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-04 19:16:54', '2026-01-04 19:16:54'),
(243, 1, 'created', 'User baru dibuat: MARISKA NUR FADILAH (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-04 19:16:54', '2026-01-04 19:16:54'),
(244, 1, 'created', 'User baru dibuat: MELDA NUR ANGGRAENI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-04 19:16:54', '2026-01-04 19:16:54'),
(245, 1, 'created', 'User baru dibuat: MELDA PERTIWI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-04 19:16:55', '2026-01-04 19:16:55'),
(246, 1, 'created', 'User baru dibuat: NAYLA ROUDLOTUL JANNAH (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-04 19:16:56', '2026-01-04 19:16:56'),
(247, 1, 'created', 'User baru dibuat: NESYA APRILIA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-04 19:16:56', '2026-01-04 19:16:56'),
(248, 1, 'created', 'User baru dibuat: NIKEN DWI MUTIA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-04 19:16:57', '2026-01-04 19:16:57'),
(249, 1, 'created', 'User baru dibuat: Nonie Zaskia Mulan (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-04 19:16:57', '2026-01-04 19:16:57'),
(250, 1, 'created', 'User baru dibuat: RISMA DWI YANTI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-04 19:16:58', '2026-01-04 19:16:58'),
(251, 1, 'created', 'User baru dibuat: RIZKA ZAHRATUL JANAH (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-04 19:16:58', '2026-01-04 19:16:58'),
(252, 1, 'created', 'User baru dibuat: SAFIRA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-04 19:16:58', '2026-01-04 19:16:58'),
(253, 1, 'created', 'User baru dibuat: SAUSAN LUKI NOVIANA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-04 19:16:59', '2026-01-04 19:16:59'),
(254, 1, 'created', 'User baru dibuat: SEFIRA AGUSTINA RAMADANI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-04 19:16:59', '2026-01-04 19:16:59'),
(255, 1, 'created', 'User baru dibuat: SEPTI NUR AENI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-04 19:17:00', '2026-01-04 19:17:00'),
(256, 1, 'created', 'User baru dibuat: SITI MUNINGSIH (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-04 19:17:01', '2026-01-04 19:17:01'),
(257, 1, 'created', 'User baru dibuat: SITI NUR FADILAH (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-04 19:17:01', '2026-01-04 19:17:01'),
(258, 1, 'created', 'User baru dibuat: SYAHFA DWI MULYA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-04 19:17:02', '2026-01-04 19:17:02'),
(259, 1, 'created', 'User baru dibuat: SYFA DWI DUTA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-04 19:17:02', '2026-01-04 19:17:02');
INSERT INTO `log_user` (`id`, `user_id`, `action`, `description`, `ip_address`, `user_agent`, `created_at`, `updated_at`) VALUES
(260, 1, 'created', 'User baru dibuat: TESA APRILIYANA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-04 19:17:03', '2026-01-04 19:17:03'),
(261, 1, 'created', 'User baru dibuat: TIA DININGSIH (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-04 19:17:03', '2026-01-04 19:17:03'),
(262, 1, 'created', 'User baru dibuat: Valen Anjani (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-04 19:17:03', '2026-01-04 19:17:03'),
(263, 1, 'created', 'User baru dibuat: VIRA TRI RAHMADANI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-04 19:17:04', '2026-01-04 19:17:04'),
(264, 1, 'created', 'User baru dibuat: WULAN AMALLIA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-04 19:17:05', '2026-01-04 19:17:05'),
(265, 1, 'created', 'User baru dibuat: YUAN NITA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-04 19:17:05', '2026-01-04 19:17:05'),
(266, 1, 'created', 'User baru dibuat: AMELIA DWI RAMADANI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-04 19:17:06', '2026-01-04 19:17:06'),
(267, 1, 'created', 'User baru dibuat: ANGGA FIRMANSYAH (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-04 19:17:06', '2026-01-04 19:17:06'),
(268, 1, 'created', 'User baru dibuat: ANGGER KUKUH LANGGENG RADITYA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-04 19:17:07', '2026-01-04 19:17:07'),
(269, 1, 'created', 'User baru dibuat: ANJAR ZAJMIRANTO (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-04 19:17:07', '2026-01-04 19:17:07'),
(270, 1, 'created', 'User baru dibuat: AZRIL SYAFI\'IL KHUSNA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-04 19:17:08', '2026-01-04 19:17:08'),
(271, 1, 'created', 'User baru dibuat: BAYU SAPUTRA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-04 19:17:09', '2026-01-04 19:17:09'),
(272, 1, 'created', 'User baru dibuat: DAFFA RIZQI RAMADHANI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-04 19:17:09', '2026-01-04 19:17:09'),
(273, 1, 'created', 'User baru dibuat: Damar Zachary Sheehan (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-04 19:17:09', '2026-01-04 19:17:09'),
(274, 1, 'created', 'User baru dibuat: DIAR RAMADANI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-04 19:17:10', '2026-01-04 19:17:10'),
(275, 1, 'created', 'User baru dibuat: Fathan Rizqi Mahardika (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-04 19:17:10', '2026-01-04 19:17:10'),
(276, 1, 'created', 'User baru dibuat: FINZA DWI ATTRISNO (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-04 19:17:11', '2026-01-04 19:17:11'),
(277, 1, 'created', 'User baru dibuat: IKBAL HIDAYATUROHMAN (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-04 19:17:12', '2026-01-04 19:17:12'),
(278, 1, 'login', 'User login ke sistem', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 19:21:55', '2026-01-04 19:21:55'),
(279, 1, 'created', 'User baru dibuat: LINTAN SASI ADELIA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 19:54:14', '2026-01-04 19:54:14'),
(280, 1, 'created', 'User baru dibuat: Livia Lestari Putri (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 19:54:15', '2026-01-04 19:54:15'),
(281, 1, 'created', 'User baru dibuat: Ma\'ruf Alif Hidayat (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 19:54:15', '2026-01-04 19:54:15'),
(282, 1, 'created', 'User baru dibuat: MARSYA AURELIA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 19:54:15', '2026-01-04 19:54:15'),
(283, 1, 'created', 'User baru dibuat: Muhamad Rapa Ardiansah (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 19:54:16', '2026-01-04 19:54:16'),
(284, 1, 'created', 'User baru dibuat: MUHAMMAD FAATHIR (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 19:54:16', '2026-01-04 19:54:16'),
(285, 1, 'created', 'User baru dibuat: Munifatun Azka Juniah (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 19:54:16', '2026-01-04 19:54:16'),
(286, 1, 'created', 'User baru dibuat: Najwa Amalia (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 19:54:16', '2026-01-04 19:54:16'),
(287, 1, 'created', 'User baru dibuat: NOVITA CLARA ANGELIKA BEBY PUTRI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 19:54:17', '2026-01-04 19:54:17'),
(288, 1, 'created', 'User baru dibuat: NUGI PRIA NARA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 19:54:17', '2026-01-04 19:54:17'),
(289, 1, 'created', 'User baru dibuat: NURUL AURA DEWI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 19:54:18', '2026-01-04 19:54:18'),
(290, 1, 'created', 'User baru dibuat: NURUL FARADILA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 19:54:18', '2026-01-04 19:54:18'),
(291, 1, 'created', 'User baru dibuat: RAFI MUZHAFFAR (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 19:54:18', '2026-01-04 19:54:18'),
(292, 1, 'created', 'User baru dibuat: Rafikul Fadilah (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 19:54:19', '2026-01-04 19:54:19'),
(293, 1, 'created', 'User baru dibuat: RAKA RAFIRQA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 19:54:19', '2026-01-04 19:54:19'),
(294, 1, 'created', 'User baru dibuat: Rizal Triyanto (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 19:54:19', '2026-01-04 19:54:19'),
(295, 1, 'created', 'User baru dibuat: SEPTIANA RAMADINA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 19:54:19', '2026-01-04 19:54:19'),
(296, 1, 'created', 'User baru dibuat: SILVIA INDRIANI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 19:54:20', '2026-01-04 19:54:20'),
(297, 1, 'created', 'User baru dibuat: Tria Apriani (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 19:54:20', '2026-01-04 19:54:20'),
(298, 1, 'created', 'User baru dibuat: WAFII PRATAMA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 19:54:20', '2026-01-04 19:54:20'),
(299, 1, 'created', 'User baru dibuat: WENDY PRATAMA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 19:54:20', '2026-01-04 19:54:20'),
(300, 1, 'created', 'User baru dibuat: ADINDA JULIANTI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 20:05:30', '2026-01-04 20:05:30'),
(301, 1, 'created', 'User baru dibuat: AL RAHEZA FERIZQO MAULANA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 20:05:30', '2026-01-04 20:05:30'),
(302, 1, 'created', 'User baru dibuat: Almira Nurindar Febriani (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 20:05:31', '2026-01-04 20:05:31'),
(303, 1, 'created', 'User baru dibuat: ANAS SAHRUL MUBAROK (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 20:05:31', '2026-01-04 20:05:31'),
(304, 1, 'created', 'User baru dibuat: ANGEL SILA ALIFA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 20:05:31', '2026-01-04 20:05:31'),
(305, 1, 'created', 'User baru dibuat: ARDAN MAULID (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 20:05:32', '2026-01-04 20:05:32'),
(306, 1, 'created', 'User baru dibuat: Bunga Fadillah (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 20:05:32', '2026-01-04 20:05:32'),
(307, 1, 'created', 'User baru dibuat: CAHYA RAMDANI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 20:05:32', '2026-01-04 20:05:32'),
(308, 1, 'created', 'User baru dibuat: DIMAS NOVIANTO RUSLAN (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 20:05:33', '2026-01-04 20:05:33'),
(309, 1, 'created', 'User baru dibuat: Erik Setiawan (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 20:05:33', '2026-01-04 20:05:33'),
(310, 1, 'created', 'User baru dibuat: FAHRI ASYAQIF (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 20:05:34', '2026-01-04 20:05:34'),
(311, 1, 'created', 'User baru dibuat: Hafiza Safa (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 20:05:34', '2026-01-04 20:05:34'),
(312, 1, 'created', 'User baru dibuat: Haikal Duta Mulya (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 20:05:35', '2026-01-04 20:05:35'),
(313, 1, 'created', 'User baru dibuat: MAFTUH LABIB KAUTSAR (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 20:05:35', '2026-01-04 20:05:35'),
(314, 1, 'created', 'User baru dibuat: MU ANWARUDIN (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 20:05:36', '2026-01-04 20:05:36'),
(315, 1, 'created', 'User baru dibuat: MUHAMAD ALFIANSYAH (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 20:05:36', '2026-01-04 20:05:36'),
(316, 1, 'created', 'User baru dibuat: MUHAMMAD SYARIF HIDAYATULLOH (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 20:05:37', '2026-01-04 20:05:37'),
(317, 1, 'created', 'User baru dibuat: NADIA FAJRI FAUZIATI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 20:05:37', '2026-01-04 20:05:37'),
(318, 1, 'created', 'User baru dibuat: NAJWA NURINATULLAILA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 20:05:38', '2026-01-04 20:05:38'),
(319, 1, 'created', 'User baru dibuat: Natasha Agnes Marcia (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 20:05:38', '2026-01-04 20:05:38'),
(320, 1, 'created', 'User baru dibuat: Olivia Larastika (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 20:05:38', '2026-01-04 20:05:38'),
(321, 1, 'created', 'User baru dibuat: RAIF AMANULOH ZAIN (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 20:05:39', '2026-01-04 20:05:39'),
(322, 1, 'created', 'User baru dibuat: REVFAL SUGIYANTO (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 20:05:39', '2026-01-04 20:05:39'),
(323, 1, 'created', 'User baru dibuat: RIFI ALFIAN FAUZI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 20:05:40', '2026-01-04 20:05:40'),
(324, 1, 'created', 'User baru dibuat: RIVAN NANDA MARDIKA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 20:05:40', '2026-01-04 20:05:40'),
(325, 1, 'created', 'User baru dibuat: RIZKA NUR UTAMI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 20:05:40', '2026-01-04 20:05:40'),
(326, 1, 'created', 'User baru dibuat: RIZKI TEGAR PRASETYO (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 20:05:41', '2026-01-04 20:05:41'),
(327, 1, 'created', 'User baru dibuat: ROSTIANA SARI INTEN DEWATA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 20:05:41', '2026-01-04 20:05:41'),
(328, 1, 'created', 'User baru dibuat: Surya hansyah (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 20:05:42', '2026-01-04 20:05:42'),
(329, 1, 'created', 'User baru dibuat: VANI ALVIANA SARI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 20:05:42', '2026-01-04 20:05:42'),
(330, 1, 'created', 'User baru dibuat: WAHYU RIZKI PRATAMA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 20:05:43', '2026-01-04 20:05:43'),
(331, 1, 'created', 'User baru dibuat: WINA WIDIANINGSIH (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 20:05:43', '2026-01-04 20:05:43'),
(332, 1, 'created', 'User baru dibuat: YASMIN NUR AFIFAH (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 20:05:43', '2026-01-04 20:05:43'),
(333, 1, 'created', 'User baru dibuat: YODI SETIAWAN (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 20:05:44', '2026-01-04 20:05:44'),
(334, 1, 'created', 'User baru dibuat: AHMAD KHOIRURRIJAL (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 20:05:44', '2026-01-04 20:05:44'),
(335, 1, 'created', 'User baru dibuat: DENIS NUR AIMAN (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 20:05:44', '2026-01-04 20:05:44'),
(336, 1, 'created', 'User baru dibuat: DIMAS ARGA RIDHO SAPUTRA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 20:05:45', '2026-01-04 20:05:45'),
(337, 1, 'created', 'User baru dibuat: DWI NAUFAL HIDAYAT (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 20:05:46', '2026-01-04 20:05:46'),
(338, 1, 'created', 'User baru dibuat: DYTRA NEZTHA GHAFIKY (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 20:05:46', '2026-01-04 20:05:46'),
(339, 1, 'created', 'User baru dibuat: FARRAS ALFIAN (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 20:05:46', '2026-01-04 20:05:46'),
(340, 1, 'created', 'User baru dibuat: GALANG AGNESAR RAMADAN (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 20:05:47', '2026-01-04 20:05:47'),
(341, 1, 'created', 'User baru dibuat: HADI FAHMI PERMANA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 20:05:47', '2026-01-04 20:05:47'),
(342, 1, 'created', 'User baru dibuat: Isnan Bahrul Ulum (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 20:05:48', '2026-01-04 20:05:48'),
(343, 1, 'created', 'User baru dibuat: LUTHFI ALIF AMMANULLOH (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 20:05:49', '2026-01-04 20:05:49'),
(344, 1, 'created', 'User baru dibuat: MAHESA SAPUTRA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 20:05:49', '2026-01-04 20:05:49'),
(345, 1, 'created', 'User baru dibuat: Masruri Ramadhani (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 20:05:49', '2026-01-04 20:05:49'),
(346, 1, 'created', 'User baru dibuat: MUHAMMAD AZFA HAKAMI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 20:05:50', '2026-01-04 20:05:50'),
(347, 1, 'created', 'User baru dibuat: MUHAMMAD BAGUS MIFTA FAUZI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 20:05:50', '2026-01-04 20:05:50'),
(348, 1, 'created', 'User baru dibuat: Naufal Adi Nugroho (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 20:05:51', '2026-01-04 20:05:51'),
(349, 1, 'created', 'User baru dibuat: PAZHAR IBRAHIM (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 20:05:51', '2026-01-04 20:05:51'),
(350, 1, 'created', 'User baru dibuat: QINAN PERLIYANSAH (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 20:05:51', '2026-01-04 20:05:51'),
(351, 1, 'created', 'User baru dibuat: QODRI HANDAYANA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 20:05:52', '2026-01-04 20:05:52'),
(352, 1, 'created', 'User baru dibuat: RADITYA ALDIYANSAH (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 20:05:52', '2026-01-04 20:05:52'),
(353, 1, 'created', 'User baru dibuat: RAFA PUTRA RAMADHAN (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 20:05:53', '2026-01-04 20:05:53'),
(354, 1, 'created', 'User baru dibuat: RAFI ZAIDAN LUBAWI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 20:05:53', '2026-01-04 20:05:53'),
(355, 1, 'created', 'User baru dibuat: REVAN FAUZAN (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 20:05:54', '2026-01-04 20:05:54'),
(356, 1, 'created', 'User baru dibuat: RIFKI AUNUR ARI RAHMAN (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 20:05:54', '2026-01-04 20:05:54'),
(357, 1, 'created', 'User baru dibuat: RIKI PEBRIYAN (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 20:05:55', '2026-01-04 20:05:55'),
(358, 1, 'created', 'User baru dibuat: RIZKI FARHAN ADITIANA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 20:05:55', '2026-01-04 20:05:55'),
(359, 1, 'created', 'User baru dibuat: Slamet (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 20:05:56', '2026-01-04 20:05:56'),
(360, 1, 'created', 'User baru dibuat: Viken Arif Wicaksono (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 20:05:56', '2026-01-04 20:05:56'),
(361, 1, 'created', 'User baru dibuat: ZAENAL ABIDIN (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 20:05:57', '2026-01-04 20:05:57'),
(362, 1, 'created', 'User baru dibuat: ABDHI PRATAMA PRIMA ANGGARA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 20:34:22', '2026-01-04 20:34:22'),
(363, 1, 'created', 'User baru dibuat: ABIAN MAULANA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 20:34:23', '2026-01-04 20:34:23'),
(364, 1, 'created', 'User baru dibuat: ADITYA ZAKI ALFARIZI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 20:34:23', '2026-01-04 20:34:23'),
(365, 1, 'created', 'User baru dibuat: AGIS SALMAN DHAIFULLAH (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 20:34:24', '2026-01-04 20:34:24'),
(366, 1, 'created', 'User baru dibuat: ALDO HERLINO (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 20:34:24', '2026-01-04 20:34:24'),
(367, 1, 'created', 'User baru dibuat: ALFIAN JAMALUDIN (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 20:34:25', '2026-01-04 20:34:25'),
(368, 1, 'created', 'User baru dibuat: ALIF MULYANA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 20:34:25', '2026-01-04 20:34:25'),
(369, 1, 'created', 'User baru dibuat: ANDRE NUR RAMADITYA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 20:34:25', '2026-01-04 20:34:25'),
(370, 1, 'created', 'User baru dibuat: ARJUN NAJAY (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 20:34:26', '2026-01-04 20:34:26'),
(371, 1, 'created', 'User baru dibuat: BAGUS KHOERUL AZAM (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 20:34:26', '2026-01-04 20:34:26'),
(372, 1, 'created', 'User baru dibuat: BAMBANG PRASETIO (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 20:34:26', '2026-01-04 20:34:26'),
(373, 1, 'created', 'User baru dibuat: DENY TRIAWAN (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 20:34:27', '2026-01-04 20:34:27'),
(374, 1, 'created', 'User baru dibuat: DEVIN ZORA ALTHAFAH (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 20:34:27', '2026-01-04 20:34:27'),
(375, 1, 'created', 'User baru dibuat: Dimas Setyo Nugroho (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 20:34:28', '2026-01-04 20:34:28'),
(376, 1, 'created', 'User baru dibuat: DZIHNI LUTHFI SHAFIQ (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 20:34:28', '2026-01-04 20:34:28'),
(377, 1, 'created', 'User baru dibuat: EVAN HENDRI YANTO (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 20:34:29', '2026-01-04 20:34:29'),
(378, 1, 'created', 'User baru dibuat: Evan Prasetio (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 20:34:29', '2026-01-04 20:34:29'),
(379, 1, 'created', 'User baru dibuat: Fajar Sidiq (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 20:34:30', '2026-01-04 20:34:30'),
(380, 1, 'created', 'User baru dibuat: Gilang Aji Pamungkas (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 20:34:30', '2026-01-04 20:34:30'),
(381, 1, 'created', 'User baru dibuat: INDRA PRASETIA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 20:34:31', '2026-01-04 20:34:31'),
(382, 1, 'created', 'User baru dibuat: Irfan Bagaskoro (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 20:34:31', '2026-01-04 20:34:31'),
(383, 1, 'created', 'User baru dibuat: KEVAN JUN CHAIRIL (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 20:34:32', '2026-01-04 20:34:32'),
(384, 1, 'created', 'User baru dibuat: Kevin Dwi Saputra (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 20:34:33', '2026-01-04 20:34:33'),
(385, 1, 'created', 'User baru dibuat: KIRAN ARDIANSYAH (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 20:34:33', '2026-01-04 20:34:33'),
(386, 1, 'created', 'User baru dibuat: MANGGALA YUDHA KELANA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 20:34:34', '2026-01-04 20:34:34'),
(387, 1, 'created', 'User baru dibuat: MAULANA MALIK IBRAHIM (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 20:34:34', '2026-01-04 20:34:34'),
(388, 1, 'created', 'User baru dibuat: Muhamad Fadil (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 20:34:35', '2026-01-04 20:34:35'),
(389, 1, 'created', 'User baru dibuat: MUHAMAD REZA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 20:34:36', '2026-01-04 20:34:36'),
(390, 1, 'created', 'User baru dibuat: MUHAMAD YUNUS ALFARIZI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 20:34:36', '2026-01-04 20:34:36'),
(391, 1, 'created', 'User baru dibuat: Muhammad Julian Rivano (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 20:34:37', '2026-01-04 20:34:37'),
(392, 1, 'created', 'User baru dibuat: NANDA PRADIPTYA TAMA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 20:34:37', '2026-01-04 20:34:37'),
(393, 1, 'created', 'User baru dibuat: NIZAR RAMADHAN (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 20:34:37', '2026-01-04 20:34:37'),
(394, 1, 'created', 'User baru dibuat: RAFA ADE MEILA PUTRA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 20:34:37', '2026-01-04 20:34:37'),
(395, 1, 'created', 'User baru dibuat: Rahman Dani (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 20:34:38', '2026-01-04 20:34:38'),
(396, 1, 'created', 'User baru dibuat: REHAN MAULIDIN (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 20:34:39', '2026-01-04 20:34:39'),
(397, 1, 'created', 'User baru dibuat: RIDO SETIAWAN (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 20:34:39', '2026-01-04 20:34:39'),
(398, 1, 'created', 'User baru dibuat: ACHMAD NUR SAEFI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 20:41:55', '2026-01-04 20:41:55'),
(399, 1, 'created', 'User baru dibuat: Adliyansah Ramadan (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 20:41:55', '2026-01-04 20:41:55'),
(400, 1, 'created', 'User baru dibuat: AFIF NUR SAPUTRA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 20:41:55', '2026-01-04 20:41:55'),
(401, 1, 'created', 'User baru dibuat: AIRLANGGA ADITIYA SAPUTRA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 20:41:56', '2026-01-04 20:41:56'),
(402, 1, 'created', 'User baru dibuat: AR RAYYAN TIZAR FIRDAUS (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 20:41:56', '2026-01-04 20:41:56'),
(403, 1, 'created', 'User baru dibuat: AZIS SYAKUR HAFIDZI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 20:41:56', '2026-01-04 20:41:56'),
(404, 1, 'created', 'User baru dibuat: DENDRA SAPUTRA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 20:41:57', '2026-01-04 20:41:57'),
(405, 1, 'created', 'User baru dibuat: FATIMAH SEKAR KINASIH (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 20:41:58', '2026-01-04 20:41:58'),
(406, 1, 'created', 'User baru dibuat: HENK QI RACHMAT BACHTIAR (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 20:41:58', '2026-01-04 20:41:58'),
(407, 1, 'created', 'User baru dibuat: Hexa Bona Raditya (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 20:41:59', '2026-01-04 20:41:59'),
(408, 1, 'created', 'User baru dibuat: JONI PRAYOGA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 20:41:59', '2026-01-04 20:41:59'),
(409, 1, 'created', 'User baru dibuat: Kharis Saktia Pebriawan (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 20:42:00', '2026-01-04 20:42:00'),
(410, 1, 'created', 'User baru dibuat: KIRANA NURMALA PUTRI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 20:42:01', '2026-01-04 20:42:01'),
(411, 1, 'created', 'User baru dibuat: MAHESA AFGANI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 20:42:01', '2026-01-04 20:42:01'),
(412, 1, 'created', 'User baru dibuat: MEIKEL KELVIN ROLINZO (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 20:42:01', '2026-01-04 20:42:01'),
(413, 1, 'created', 'User baru dibuat: MOHAMAD ALDI FIRMANSAH (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 20:42:02', '2026-01-04 20:42:02'),
(414, 1, 'created', 'User baru dibuat: MUHAMMAD AQIL MUZZAKI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 20:42:02', '2026-01-04 20:42:02'),
(415, 1, 'created', 'User baru dibuat: MUHAMMAD FARHAN (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 20:42:03', '2026-01-04 20:42:03'),
(416, 1, 'created', 'User baru dibuat: RAFA ADIRA PUTRA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 20:42:03', '2026-01-04 20:42:03'),
(417, 1, 'created', 'User baru dibuat: RAFA SEPTIAN PRATAMA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 20:42:04', '2026-01-04 20:42:04'),
(418, 1, 'created', 'User baru dibuat: RAFAEL KAZAN AL KAIRI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 20:42:05', '2026-01-04 20:42:05'),
(419, 1, 'created', 'User baru dibuat: RAFFA ADE KURNIAWAN (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 20:42:05', '2026-01-04 20:42:05'),
(420, 1, 'created', 'User baru dibuat: RAFIF ARDANA SAKHI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 20:42:05', '2026-01-04 20:42:05'),
(421, 1, 'created', 'User baru dibuat: Rama Fikri Ardiansah (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 20:42:06', '2026-01-04 20:42:06'),
(422, 1, 'created', 'User baru dibuat: REZA HARIS PRATAMA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 20:42:06', '2026-01-04 20:42:06'),
(423, 1, 'created', 'User baru dibuat: RIDHO FAHRUL AMANAH (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 20:42:06', '2026-01-04 20:42:06'),
(424, 1, 'created', 'User baru dibuat: RIDHO MULYANA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 20:42:07', '2026-01-04 20:42:07'),
(425, 1, 'created', 'User baru dibuat: RIFKI TAUFIQ MUBAROK (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 20:42:07', '2026-01-04 20:42:07'),
(426, 1, 'created', 'User baru dibuat: RIZAL FAHMA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 20:42:08', '2026-01-04 20:42:08'),
(427, 1, 'created', 'User baru dibuat: Rizky Ammar Said (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 20:42:08', '2026-01-04 20:42:08'),
(428, 1, 'created', 'User baru dibuat: Voza Syafiq Mu\'ammar (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 20:42:08', '2026-01-04 20:42:08'),
(429, 1, 'created', 'User baru dibuat: Wahyu Hanif Saefulloh (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 20:42:09', '2026-01-04 20:42:09'),
(430, 1, 'created', 'User baru dibuat: YONKI ARI WIBOWO (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 20:42:10', '2026-01-04 20:42:10'),
(431, 1, 'created', 'User baru dibuat: AFIN KURNIAWAN (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 21:03:42', '2026-01-04 21:03:42'),
(432, 1, 'created', 'User baru dibuat: ANALIA PASARANI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 21:03:43', '2026-01-04 21:03:43'),
(433, 1, 'created', 'User baru dibuat: Aceng Rahayu (guru)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 21:17:25', '2026-01-04 21:17:25'),
(434, 1, 'created', 'User baru dibuat: ACHMAD FAOZI (guru)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 21:17:26', '2026-01-04 21:17:26'),
(435, 1, 'created', 'User baru dibuat: ADE APRIYANA (guru)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 21:17:26', '2026-01-04 21:17:26'),
(436, 1, 'created', 'User baru dibuat: AFIF WALIYUDIN (guru)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 21:17:27', '2026-01-04 21:17:27'),
(437, 1, 'created', 'User baru dibuat: AJIS ERIYANTO (guru)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 21:17:27', '2026-01-04 21:17:27'),
(438, 1, 'created', 'User baru dibuat: AL FITRI WIDIA SUMARSONO (guru)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 21:17:28', '2026-01-04 21:17:28'),
(439, 1, 'created', 'User baru dibuat: ALVIN EKA SAPUTRA (guru)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 21:17:28', '2026-01-04 21:17:28'),
(440, 1, 'created', 'User baru dibuat: Ana Hawa Sholihah (guru)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 21:17:29', '2026-01-04 21:17:29'),
(441, 1, 'created', 'User baru dibuat: ANDI AGUS TRIANTO (guru)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 21:17:29', '2026-01-04 21:17:29'),
(442, 1, 'created', 'User baru dibuat: Anwar Safii (guru)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 21:17:29', '2026-01-04 21:17:29'),
(443, 1, 'created', 'User baru dibuat: Atrieus May Shobafaaz (guru)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 21:17:29', '2026-01-04 21:17:29'),
(444, 1, 'created', 'User baru dibuat: BANGKIT ADI KURNIA UTAMA (guru)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 21:17:30', '2026-01-04 21:17:30'),
(445, 1, 'created', 'User baru dibuat: Budi Hartono (guru)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 21:17:30', '2026-01-04 21:17:30'),
(446, 1, 'created', 'User baru dibuat: CAHYANI UMI IMAROH (guru)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 21:17:30', '2026-01-04 21:17:30'),
(447, 1, 'created', 'User baru dibuat: DEDEN KHOLIK IBRAHIM (guru)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 21:17:30', '2026-01-04 21:17:30'),
(448, 1, 'created', 'User baru dibuat: DEKA ROHMANA (guru)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 21:17:31', '2026-01-04 21:17:31'),
(449, 1, 'created', 'User baru dibuat: Dewi Larasatiningsih (guru)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 21:17:31', '2026-01-04 21:17:31'),
(450, 1, 'created', 'User baru dibuat: Diyah Wulandari (guru)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 21:17:31', '2026-01-04 21:17:31'),
(451, 1, 'created', 'User baru dibuat: Eko Oktiana (guru)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 21:17:32', '2026-01-04 21:17:32'),
(452, 1, 'created', 'User baru dibuat: FARHAN NUR AZIS (guru)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 21:17:32', '2026-01-04 21:17:32'),
(453, 1, 'created', 'User baru dibuat: IKHSAN MAHARDHIKA ABDILLAH (guru)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 21:17:32', '2026-01-04 21:17:32'),
(454, 1, 'created', 'User baru dibuat: Imam Mujiono (guru)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 21:17:32', '2026-01-04 21:17:32'),
(455, 1, 'created', 'User baru dibuat: Irma Riyani (guru)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 21:17:33', '2026-01-04 21:17:33'),
(456, 1, 'created', 'User baru dibuat: ISMA DWI SUNDARI (guru)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 21:17:33', '2026-01-04 21:17:33');
INSERT INTO `log_user` (`id`, `user_id`, `action`, `description`, `ip_address`, `user_agent`, `created_at`, `updated_at`) VALUES
(457, 1, 'created', 'User baru dibuat: KHOIRUL ANWAR (guru)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 21:17:33', '2026-01-04 21:17:33'),
(458, 1, 'created', 'User baru dibuat: LILIS AFIFATUL MAR\'AH (guru)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 21:17:33', '2026-01-04 21:17:33'),
(459, 1, 'created', 'User baru dibuat: LISTIANA NURAENI (guru)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 21:17:34', '2026-01-04 21:17:34'),
(460, 1, 'created', 'User baru dibuat: Listiya Widiasari (guru)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 21:17:34', '2026-01-04 21:17:34'),
(461, 1, 'created', 'User baru dibuat: Mita Puspitasari (guru)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 21:17:34', '2026-01-04 21:17:34'),
(462, 1, 'created', 'User baru dibuat: MOCHAMMAD MAGHFURI ABDULOH (guru)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 21:17:35', '2026-01-04 21:17:35'),
(463, 1, 'created', 'User baru dibuat: MUHAMMAD LUKMANUL KHAKIM (guru)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 21:17:35', '2026-01-04 21:17:35'),
(464, 1, 'created', 'User baru dibuat: NIKEN YUNITA (guru)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 21:17:35', '2026-01-04 21:17:35'),
(465, 1, 'created', 'User baru dibuat: NIKY TRIYANGGA SETYAWAN (guru)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 21:17:36', '2026-01-04 21:17:36'),
(466, 1, 'created', 'User baru dibuat: NITA OKTAVIANI (guru)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 21:17:36', '2026-01-04 21:17:36'),
(467, 1, 'created', 'User baru dibuat: NUGROHO PANGESTU ADI (guru)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 21:17:36', '2026-01-04 21:17:36'),
(468, 1, 'created', 'User baru dibuat: NUNIK AGESTIANI (guru)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 21:17:36', '2026-01-04 21:17:36'),
(469, 1, 'created', 'User baru dibuat: Nuswantoro (guru)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 21:17:37', '2026-01-04 21:17:37'),
(470, 1, 'created', 'User baru dibuat: PUTRI PERTIWI (guru)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 21:17:37', '2026-01-04 21:17:37'),
(471, 1, 'created', 'User baru dibuat: RAHARDIKA FAISAL PUTRA (guru)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 21:17:37', '2026-01-04 21:17:37'),
(472, 1, 'created', 'User baru dibuat: Rahmawati (guru)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 21:17:38', '2026-01-04 21:17:38'),
(473, 1, 'created', 'User baru dibuat: RAHMI NUR FITRIA UTAMI (guru)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 21:17:38', '2026-01-04 21:17:38'),
(474, 1, 'created', 'User baru dibuat: RENDY PAMUNGKAS (guru)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 21:17:38', '2026-01-04 21:17:38'),
(475, 1, 'created', 'User baru dibuat: RIZQI ASFIANUDIN (guru)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 21:17:39', '2026-01-04 21:17:39'),
(476, 1, 'created', 'User baru dibuat: Sepri (guru)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 21:17:39', '2026-01-04 21:17:39'),
(477, 1, 'created', 'User baru dibuat: Siti Maesaroh (guru)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 21:17:39', '2026-01-04 21:17:39'),
(478, 1, 'created', 'User baru dibuat: SITI MEI RAHMAWATI (guru)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 21:17:39', '2026-01-04 21:17:39'),
(479, 1, 'created', 'User baru dibuat: SUCI SHOLEHANINGTIAS (guru)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 21:17:40', '2026-01-04 21:17:40'),
(480, 1, 'created', 'User baru dibuat: Sudarti (guru)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 21:17:40', '2026-01-04 21:17:40'),
(481, 1, 'created', 'User baru dibuat: Sugito (guru)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 21:17:40', '2026-01-04 21:17:40'),
(482, 1, 'created', 'User baru dibuat: Suswati (guru)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 21:17:41', '2026-01-04 21:17:41'),
(483, 1, 'created', 'User baru dibuat: Wahyuni (guru)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 21:17:41', '2026-01-04 21:17:41'),
(484, 1, 'created', 'User baru dibuat: Warmansyah (guru)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 21:17:41', '2026-01-04 21:17:41'),
(485, 1, 'created', 'User baru dibuat: Waryanto (guru)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 21:17:42', '2026-01-04 21:17:42'),
(486, 1, 'created', 'User baru dibuat: Wiwi Waryanti (guru)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 21:17:42', '2026-01-04 21:17:42'),
(487, 1, 'created', 'User baru dibuat: YENI RAHMAWATI (guru)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 21:17:42', '2026-01-04 21:17:42'),
(488, 1, 'created', 'User baru dibuat: YUNI ANDARI (guru)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 21:17:42', '2026-01-04 21:17:42'),
(489, 1, 'login', 'User login ke sistem', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-05 21:15:15', '2026-01-05 21:15:15'),
(490, 1, 'updated', 'Mapel diperbarui: Konsentrasi Keahlian TKJ (Kategori: Tidak ada kategori)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-05 21:21:12', '2026-01-05 21:21:12'),
(491, 1, 'updated', 'Mapel diperbarui: Konsentrasi Keahlian TKJ (Kategori: Tidak ada kategori)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-05 21:22:45', '2026-01-05 21:22:45'),
(492, 1, 'updated', 'Mapel diperbarui: Konsentrasi Keahlian TKJJJ (Kategori: Tidak ada kategori)', '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Mobile Safari/537.36', '2026-01-05 21:23:50', '2026-01-05 21:23:50'),
(493, 1, 'updated', 'Mapel diperbarui: Konsentrasi Keahlian TKJ (Kategori: Tidak ada kategori)', '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Mobile Safari/537.36', '2026-01-05 21:24:58', '2026-01-05 21:24:58'),
(494, 1, 'updated', 'Mapel diperbarui: Konsentrasi Keahlian TKJJJ (Kategori: Tidak ada kategori)', '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Mobile Safari/537.36', '2026-01-05 21:25:44', '2026-01-05 21:25:44'),
(495, 1, 'updated', 'Mapel diperbarui: Konsentrasi Keahlian T (Kategori: Tidak ada kategori)', '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Mobile Safari/537.36', '2026-01-05 21:28:45', '2026-01-05 21:28:45'),
(496, 1, 'updated', 'Mapel diperbarui: Konsentrasi Keahlian TKJ (Kategori: Tidak ada kategori)', '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Mobile Safari/537.36', '2026-01-05 21:29:28', '2026-01-05 21:29:28'),
(497, 1, 'updated', 'Mapel diperbarui: Konsentrasi Keahlian TEKAJE (Kategori: Tidak ada kategori)', '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Mobile Safari/537.36', '2026-01-05 21:31:47', '2026-01-05 21:31:47'),
(498, 1, 'updated', 'Mapel diperbarui: Konsentrasi Keahlian TKJ (Kategori: Tidak ada kategori)', '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Mobile Safari/537.36', '2026-01-05 21:32:41', '2026-01-05 21:32:41'),
(499, 1, 'updated', 'Mapel diperbarui: Konsentrasi Keahlian TKJ (Kategori: Tidak ada kategori)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-05 21:32:57', '2026-01-05 21:32:57'),
(500, 1, 'updated', 'Mapel diperbarui: Konsentrasi Keahlian TKJ (Kategori: Tidak ada kategori)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-05 21:36:26', '2026-01-05 21:36:26'),
(501, 1, 'updated', 'Mapel diperbarui: Konsentrasi Keahlian TKJ (Kategori: Tidak ada kategori)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-05 21:37:13', '2026-01-05 21:37:13'),
(502, 1, 'created', 'Mapel baru dibuat: Mapel Pilihan TKJ (Kategori: Tidak ada kategori)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-05 21:37:28', '2026-01-05 21:37:28'),
(503, 1, 'login', 'User login ke sistem', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 02:49:35', '2026-01-06 02:49:35'),
(504, 1, 'updated', 'User diperbarui: ANALIA PASARANI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 02:52:11', '2026-01-06 02:52:11'),
(505, 1, 'updated', 'User diperbarui: ANALIA PASARANI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 02:52:26', '2026-01-06 02:52:26'),
(506, 1, 'updated', 'User diperbarui: AFIN KURNIAWAN (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 02:53:01', '2026-01-06 02:53:01'),
(507, 1, 'updated', 'User diperbarui: AFIN KURNIAWAN (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 02:53:16', '2026-01-06 02:53:16'),
(508, 1, 'deleted', 'User dihapus: Myron Mohr (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 02:59:08', '2026-01-06 02:59:08'),
(509, 1, 'deleted', 'User dihapus: Aron Leannon (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 03:10:34', '2026-01-06 03:10:34'),
(510, 1, 'login', 'User login ke sistem', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 06:27:40', '2026-01-06 06:27:40'),
(511, 1, 'deleted', 'User dihapus: Arnulfo Rolfson (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 06:44:39', '2026-01-06 06:44:39'),
(512, 1, 'deleted', 'User dihapus: Antwan Heathcote DDS (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 06:45:57', '2026-01-06 06:45:57'),
(513, 1, 'deleted', 'User dihapus: Annamarie Ernser I (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 06:46:43', '2026-01-06 06:46:43'),
(514, 1, 'deleted', 'User dihapus: Blanche Schoen (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 06:46:55', '2026-01-06 06:46:55'),
(515, 1, 'created', 'Data mengajar dibuat: Guru AFIF WALIYUDIN, Mapel Konsentrasi Keahlian TKJ, Jam 0, Pertemuan per minggu 0', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 07:57:38', '2026-01-06 07:57:38'),
(516, 1, 'created', 'Data mengajar dibuat: Guru AFIF WALIYUDIN, Mapel Mapel Pilihan TKJ, Jam 0, Pertemuan per minggu 0', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 08:07:43', '2026-01-06 08:07:43'),
(517, 1, 'updated', 'Mapel diperbarui: Konsentrasi Keahlian TKJ 2 (Kategori: Tidak ada kategori)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 08:17:49', '2026-01-06 08:17:49'),
(518, 1, 'created', 'Data mengajar dibuat: Guru AFIF WALIYUDIN, Mapel Konsentrasi Keahlian TKJ 2, Jam 0, Pertemuan per minggu 0', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 08:18:38', '2026-01-06 08:18:38'),
(519, 1, 'created', 'Data mengajar dibuat: Guru AFIF WALIYUDIN, Mapel Mapel Pilihan TKJ, Jam 0, Pertemuan per minggu 0', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 08:18:38', '2026-01-06 08:18:38'),
(520, 1, 'created', 'Mapel baru dibuat: Bahasa Inggris (Kategori: Tidak ada kategori)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 08:21:06', '2026-01-06 08:21:06'),
(521, 1, 'created', 'Data mengajar dibuat: Guru ADE APRIYANA, Mapel Bahasa Inggris, Jam 0, Pertemuan per minggu 0', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 08:21:39', '2026-01-06 08:21:39'),
(522, 1, 'login', 'User login ke sistem', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 17:29:01', '2026-01-06 17:29:01'),
(523, 1, 'created', 'User baru dibuat: ABDUL RAHMAN FADILAH (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:01:12', '2026-01-06 18:01:12'),
(524, 1, 'created', 'User baru dibuat: ABDUL RAHMAN FADILAH (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:12:39', '2026-01-06 18:12:39'),
(525, 1, 'created', 'User baru dibuat: AGUNG PRASETYO (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:12:40', '2026-01-06 18:12:40'),
(526, 1, 'created', 'User baru dibuat: Alfisyah Gusta (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:12:40', '2026-01-06 18:12:40'),
(527, 1, 'created', 'User baru dibuat: ANDIKA FIRMANSYAH (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:12:41', '2026-01-06 18:12:41'),
(528, 1, 'created', 'User baru dibuat: ASYRAF KHOLIQ ARDANI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:12:41', '2026-01-06 18:12:41'),
(529, 1, 'created', 'User baru dibuat: BAMBANG FEBRIANSYAH (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:12:42', '2026-01-06 18:12:42'),
(530, 1, 'created', 'User baru dibuat: DHAFA AL AMIEN (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:12:42', '2026-01-06 18:12:42'),
(531, 1, 'created', 'User baru dibuat: EVAN DARMA PUTRA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:12:43', '2026-01-06 18:12:43'),
(532, 1, 'created', 'User baru dibuat: Faizal Tusrono (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:12:44', '2026-01-06 18:12:44'),
(533, 1, 'created', 'User baru dibuat: FAJAR HARIYANTO (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:12:44', '2026-01-06 18:12:44'),
(534, 1, 'created', 'User baru dibuat: Hafizd Eri Saputra (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:12:45', '2026-01-06 18:12:45'),
(535, 1, 'created', 'User baru dibuat: Haikal Syahrul Hidayat (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:12:45', '2026-01-06 18:12:45'),
(536, 1, 'created', 'User baru dibuat: IRKHAMMAFIF ELSA MAHENDRA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:12:46', '2026-01-06 18:12:46'),
(537, 1, 'created', 'User baru dibuat: KELVIN ALIF SAPUTRA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:12:46', '2026-01-06 18:12:46'),
(538, 1, 'created', 'User baru dibuat: KHABIB ANANDA ACHMAD NOFEBRI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:12:47', '2026-01-06 18:12:47'),
(539, 1, 'created', 'User baru dibuat: MUFLIH NUR RAMADAN (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:12:47', '2026-01-06 18:12:47'),
(540, 1, 'created', 'User baru dibuat: MUHAMAD FALLIH LUTHFI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:12:48', '2026-01-06 18:12:48'),
(541, 1, 'created', 'User baru dibuat: MUHAMMAD RAAFID SUBEKTI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:12:49', '2026-01-06 18:12:49'),
(542, 1, 'created', 'User baru dibuat: MUHAMMAD TANAYA JUNIOR (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:12:49', '2026-01-06 18:12:49'),
(543, 1, 'created', 'User baru dibuat: OKTA RIYAN MUHAMMAD AZHAR (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:12:50', '2026-01-06 18:12:50'),
(544, 1, 'created', 'User baru dibuat: PANGGIH PANGESTU (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:12:51', '2026-01-06 18:12:51'),
(545, 1, 'created', 'User baru dibuat: RAFA IKHWAN ATTALANI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:12:52', '2026-01-06 18:12:52'),
(546, 1, 'created', 'User baru dibuat: Rifay Bingut Riyadi (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:12:52', '2026-01-06 18:12:52'),
(547, 1, 'created', 'User baru dibuat: Rivano Mustofa (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:12:53', '2026-01-06 18:12:53'),
(548, 1, 'created', 'User baru dibuat: SAHRUL GANIMA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:12:53', '2026-01-06 18:12:53'),
(549, 1, 'created', 'User baru dibuat: Sandy Bagus Ramadhan (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:12:54', '2026-01-06 18:12:54'),
(550, 1, 'created', 'User baru dibuat: SULTAN YAHYA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:12:55', '2026-01-06 18:12:55'),
(551, 1, 'created', 'User baru dibuat: SYAHMINAN ABIB KHOLISON RAMADAN (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:12:55', '2026-01-06 18:12:55'),
(552, 1, 'created', 'User baru dibuat: ABID RAMDANI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:12:58', '2026-01-06 18:12:58'),
(553, 1, 'created', 'User baru dibuat: ADIT PRASTIAN (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:12:59', '2026-01-06 18:12:59'),
(554, 1, 'created', 'User baru dibuat: AGUS ANUGRAH (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:12:59', '2026-01-06 18:12:59'),
(555, 1, 'created', 'User baru dibuat: AL HILAL HAMDI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:13:00', '2026-01-06 18:13:00'),
(556, 1, 'created', 'User baru dibuat: ALFIN RAMDANI PUTRA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:13:00', '2026-01-06 18:13:00'),
(557, 1, 'created', 'User baru dibuat: ANDREAS SAPUTRA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:13:01', '2026-01-06 18:13:01'),
(558, 1, 'created', 'User baru dibuat: ANTON BUDI MULYONO (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:13:02', '2026-01-06 18:13:02'),
(559, 1, 'created', 'User baru dibuat: DAVA ANINDRA SETIA PRATAMA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:13:02', '2026-01-06 18:13:02'),
(560, 1, 'created', 'User baru dibuat: DIQTA ANDIKA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:13:03', '2026-01-06 18:13:03'),
(561, 1, 'created', 'User baru dibuat: DONI IBNU SAPUTRA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:13:03', '2026-01-06 18:13:03'),
(562, 1, 'created', 'User baru dibuat: EKA MARDIAN (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:13:04', '2026-01-06 18:13:04'),
(563, 1, 'created', 'User baru dibuat: FABIANO AL FATHIR (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:13:05', '2026-01-06 18:13:05'),
(564, 1, 'created', 'User baru dibuat: FAHRI SAHENDRA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:13:05', '2026-01-06 18:13:05'),
(565, 1, 'created', 'User baru dibuat: FAISAL NUR HIDAYAT (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:13:06', '2026-01-06 18:13:06'),
(566, 1, 'created', 'User baru dibuat: FAJAR PRATAMA KAMIL (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:13:07', '2026-01-06 18:13:07'),
(567, 1, 'created', 'User baru dibuat: GALANG MENTARI PUTRA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:13:07', '2026-01-06 18:13:07'),
(568, 1, 'created', 'User baru dibuat: HANIF KURNIAWAN SAPUTRA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:13:08', '2026-01-06 18:13:08'),
(569, 1, 'created', 'User baru dibuat: IKO CITRA TRI SATRIO (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:13:08', '2026-01-06 18:13:08'),
(570, 1, 'created', 'User baru dibuat: KHAIRUL MU\'IZZ (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:13:09', '2026-01-06 18:13:09'),
(571, 1, 'created', 'User baru dibuat: MOCHAMAD RIVALDY (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:13:09', '2026-01-06 18:13:09'),
(572, 1, 'created', 'User baru dibuat: Muhamad Fadil Aldiyansah (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:13:10', '2026-01-06 18:13:10'),
(573, 1, 'created', 'User baru dibuat: Muhamad Fathurrohman (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:13:10', '2026-01-06 18:13:10'),
(574, 1, 'created', 'User baru dibuat: MUHAMMAD RIZKY PRATAMA SAEFUDIN (siswa)', '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Mobile Safari/537.36', '2026-01-06 18:13:12', '2026-01-06 18:13:12'),
(575, 1, 'created', 'User baru dibuat: NANDA HAFIZ FAUZIAN (siswa)', '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Mobile Safari/537.36', '2026-01-06 18:13:14', '2026-01-06 18:13:14'),
(576, 1, 'created', 'User baru dibuat: NAZRIL WAHDA AL KHUSNA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Mobile Safari/537.36', '2026-01-06 18:13:14', '2026-01-06 18:13:14'),
(577, 1, 'created', 'User baru dibuat: Rendika Pratama (siswa)', '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Mobile Safari/537.36', '2026-01-06 18:13:15', '2026-01-06 18:13:15'),
(578, 1, 'created', 'User baru dibuat: REVAN ARDYANSYAH (siswa)', '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Mobile Safari/537.36', '2026-01-06 18:13:16', '2026-01-06 18:13:16'),
(579, 1, 'created', 'User baru dibuat: RIFKY RAHMAT SHOLEHAN (siswa)', '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Mobile Safari/537.36', '2026-01-06 18:13:17', '2026-01-06 18:13:17'),
(580, 1, 'created', 'User baru dibuat: RIZAL NU\'MAN SYARIF (siswa)', '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Mobile Safari/537.36', '2026-01-06 18:13:17', '2026-01-06 18:13:17'),
(581, 1, 'created', 'User baru dibuat: RIZQI FIRMANSYAH (siswa)', '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Mobile Safari/537.36', '2026-01-06 18:13:18', '2026-01-06 18:13:18'),
(582, 1, 'created', 'User baru dibuat: SATRIA WAHYU PRATAMA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Mobile Safari/537.36', '2026-01-06 18:13:18', '2026-01-06 18:13:18'),
(583, 1, 'created', 'User baru dibuat: SUBUR ABADI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Mobile Safari/537.36', '2026-01-06 18:13:19', '2026-01-06 18:13:19'),
(584, 1, 'created', 'User baru dibuat: TEDI PEBRIYANTO (siswa)', '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Mobile Safari/537.36', '2026-01-06 18:13:20', '2026-01-06 18:13:20'),
(585, 1, 'created', 'User baru dibuat: WAHYU ADI SAPUTRO (siswa)', '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Mobile Safari/537.36', '2026-01-06 18:13:20', '2026-01-06 18:13:20'),
(586, 1, 'created', 'User baru dibuat: WILY SAPUTRA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Mobile Safari/537.36', '2026-01-06 18:13:21', '2026-01-06 18:13:21'),
(587, 1, 'created', 'User baru dibuat: ZHARIF KHOERULLOH (siswa)', '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Mobile Safari/537.36', '2026-01-06 18:13:21', '2026-01-06 18:13:21'),
(588, 1, 'created', 'User baru dibuat: ZIDAN AMUKTI RAZENDRA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Mobile Safari/537.36', '2026-01-06 18:13:22', '2026-01-06 18:13:22'),
(589, 1, 'created', 'User baru dibuat: ABHISTA ENDAH PRAMESTI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:27:39', '2026-01-06 18:27:39'),
(590, 1, 'created', 'User baru dibuat: Afifah (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:27:39', '2026-01-06 18:27:39'),
(591, 1, 'created', 'User baru dibuat: AL ZAETUN NURIN DESIDIN (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:27:40', '2026-01-06 18:27:40'),
(592, 1, 'created', 'User baru dibuat: ALIFA ALFIYATURROHIMAH (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:27:41', '2026-01-06 18:27:41'),
(593, 1, 'created', 'User baru dibuat: ALIYA HUSNIYA ALTHAF (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:27:41', '2026-01-06 18:27:41'),
(594, 1, 'created', 'User baru dibuat: AMANDA LESTARI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:27:42', '2026-01-06 18:27:42'),
(595, 1, 'created', 'User baru dibuat: ANISA HAWA AZIZZAH (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:27:43', '2026-01-06 18:27:43'),
(596, 1, 'created', 'User baru dibuat: DEVITA CANDRA ANGGRAENI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:27:44', '2026-01-06 18:27:44'),
(597, 1, 'created', 'User baru dibuat: Dian Lolita Ningrum (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:27:44', '2026-01-06 18:27:44'),
(598, 1, 'created', 'User baru dibuat: Dinda Olia (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:27:45', '2026-01-06 18:27:45'),
(599, 1, 'created', 'User baru dibuat: DIVA PURYANI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:27:46', '2026-01-06 18:27:46'),
(600, 1, 'created', 'User baru dibuat: ERISA ARYANTI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:27:46', '2026-01-06 18:27:46'),
(601, 1, 'created', 'User baru dibuat: ISNA FITRI FAJARINA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:27:47', '2026-01-06 18:27:47'),
(602, 1, 'created', 'User baru dibuat: KHUMAIROH (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:27:47', '2026-01-06 18:27:47'),
(603, 1, 'created', 'User baru dibuat: KIRANA LARAS SATY (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:27:48', '2026-01-06 18:27:48'),
(604, 1, 'created', 'User baru dibuat: NONIK TRIUTAMI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:27:48', '2026-01-06 18:27:48'),
(605, 1, 'created', 'User baru dibuat: NOVA DIANTI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:27:49', '2026-01-06 18:27:49'),
(606, 1, 'created', 'User baru dibuat: Nur Fitri Oktavia (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:27:49', '2026-01-06 18:27:49'),
(607, 1, 'created', 'User baru dibuat: REGINA APRILIA PUTRI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:27:50', '2026-01-06 18:27:50'),
(608, 1, 'created', 'User baru dibuat: RISKA RAHMAWATI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:27:50', '2026-01-06 18:27:50'),
(609, 1, 'created', 'User baru dibuat: Rizka Oktavia (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:27:51', '2026-01-06 18:27:51'),
(610, 1, 'created', 'User baru dibuat: RIZQYA AFIFAH RAMADHANI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:27:52', '2026-01-06 18:27:52'),
(611, 1, 'created', 'User baru dibuat: SARAH ATHA GHUMAISHA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:27:52', '2026-01-06 18:27:52'),
(612, 1, 'created', 'User baru dibuat: SEPTI BODI RAHAYU (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:27:53', '2026-01-06 18:27:53'),
(613, 1, 'created', 'User baru dibuat: TITAN FIRLIYANSYAH (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:27:53', '2026-01-06 18:27:53'),
(614, 1, 'created', 'User baru dibuat: Tri Yuniarti Sholehah (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:27:54', '2026-01-06 18:27:54'),
(615, 1, 'created', 'User baru dibuat: UNDATUL AWALIYAH (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:27:55', '2026-01-06 18:27:55'),
(616, 1, 'created', 'User baru dibuat: WENING DWI CAHYANINGTYAS (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:27:55', '2026-01-06 18:27:55'),
(617, 1, 'created', 'User baru dibuat: ANDARA NURAINI AGUSTIN (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:27:56', '2026-01-06 18:27:56'),
(618, 1, 'created', 'User baru dibuat: ANDINA FIRASHA ZAHRA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:27:57', '2026-01-06 18:27:57'),
(619, 1, 'created', 'User baru dibuat: Ardyta Maya Styani (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:27:58', '2026-01-06 18:27:58'),
(620, 1, 'created', 'User baru dibuat: ASIFA SALWA RAHMADANI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:27:58', '2026-01-06 18:27:58'),
(621, 1, 'created', 'User baru dibuat: Devika Chelsea Agustina (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:27:59', '2026-01-06 18:27:59'),
(622, 1, 'created', 'User baru dibuat: DEWI ALTHAFUNNISA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:28:00', '2026-01-06 18:28:00'),
(623, 1, 'created', 'User baru dibuat: DINA NURMILAH (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:28:01', '2026-01-06 18:28:01'),
(624, 1, 'created', 'User baru dibuat: Faridha Shafa Rania (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:28:02', '2026-01-06 18:28:02'),
(625, 1, 'created', 'User baru dibuat: FATIKA YULI WIJAYANTI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:28:03', '2026-01-06 18:28:03'),
(626, 1, 'created', 'User baru dibuat: Febi Dwi Lutvitha (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:28:03', '2026-01-06 18:28:03'),
(627, 1, 'created', 'User baru dibuat: FEBY ELISA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:28:04', '2026-01-06 18:28:04'),
(628, 1, 'created', 'User baru dibuat: Isna Wati Nurhafifah (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:28:05', '2026-01-06 18:28:05'),
(629, 1, 'created', 'User baru dibuat: JESIKA AULIA PUTRI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:28:05', '2026-01-06 18:28:05'),
(630, 1, 'created', 'User baru dibuat: KHARISMA ANNISA PUTRI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:28:06', '2026-01-06 18:28:06'),
(631, 1, 'created', 'User baru dibuat: LAILI ISNI RAHMAWATI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:28:07', '2026-01-06 18:28:07'),
(632, 1, 'created', 'User baru dibuat: LILY SAOMI AGESTINA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:28:08', '2026-01-06 18:28:08'),
(633, 1, 'created', 'User baru dibuat: LUSIANA NURAENI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:28:09', '2026-01-06 18:28:09'),
(634, 1, 'created', 'User baru dibuat: NAYLA FAZA AL ANSOR (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:28:09', '2026-01-06 18:28:09'),
(635, 1, 'created', 'User baru dibuat: Putri Yulianti (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:28:10', '2026-01-06 18:28:10'),
(636, 1, 'created', 'User baru dibuat: RAFIKA MIFTAH NURJANAH (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:28:11', '2026-01-06 18:28:11'),
(637, 1, 'created', 'User baru dibuat: Rani Riama Ulya (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:28:11', '2026-01-06 18:28:11'),
(638, 1, 'created', 'User baru dibuat: Rozana Humayroh (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:28:12', '2026-01-06 18:28:12'),
(639, 1, 'created', 'User baru dibuat: SANTI NUR MALASARI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:28:13', '2026-01-06 18:28:13'),
(640, 1, 'created', 'User baru dibuat: SITI NUR AENI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:28:14', '2026-01-06 18:28:14'),
(641, 1, 'created', 'User baru dibuat: Siva Rahmania (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:28:14', '2026-01-06 18:28:14'),
(642, 1, 'created', 'User baru dibuat: SUCI NAELA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:28:15', '2026-01-06 18:28:15'),
(643, 1, 'created', 'User baru dibuat: SYAILA SALSA NUR HIDAYAH (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:28:15', '2026-01-06 18:28:15'),
(644, 1, 'created', 'User baru dibuat: VELIAN AULIA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:28:16', '2026-01-06 18:28:16'),
(645, 1, 'created', 'User baru dibuat: YOLANDA JATI LUTNA FATIN (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:28:17', '2026-01-06 18:28:17'),
(646, 1, 'created', 'User baru dibuat: YULI NUR AINI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:28:17', '2026-01-06 18:28:17'),
(647, 1, 'created', 'User baru dibuat: Alifnatun Nawal Hikmah (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:28:18', '2026-01-06 18:28:18'),
(648, 1, 'created', 'User baru dibuat: Alvina Anggraeni (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:28:18', '2026-01-06 18:28:18'),
(649, 1, 'created', 'User baru dibuat: AMIMI VIVIAN (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:28:19', '2026-01-06 18:28:19'),
(650, 1, 'created', 'User baru dibuat: Ayu Septiana (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:28:20', '2026-01-06 18:28:20'),
(651, 1, 'created', 'User baru dibuat: Bunga Dwi Lestari (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:28:21', '2026-01-06 18:28:21'),
(652, 1, 'created', 'User baru dibuat: DECHA NUR FAUZIAH (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:28:21', '2026-01-06 18:28:21'),
(653, 1, 'created', 'User baru dibuat: FINA PUJI RAHAYU (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:28:22', '2026-01-06 18:28:22'),
(654, 1, 'created', 'User baru dibuat: Hilma Jakiah (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:28:22', '2026-01-06 18:28:22'),
(655, 1, 'created', 'User baru dibuat: ISCHA APRILYSTIA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:28:23', '2026-01-06 18:28:23'),
(656, 1, 'created', 'User baru dibuat: LINDA APRIYANI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:28:23', '2026-01-06 18:28:23'),
(657, 1, 'created', 'User baru dibuat: MELQISSYA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:28:24', '2026-01-06 18:28:24');
INSERT INTO `log_user` (`id`, `user_id`, `action`, `description`, `ip_address`, `user_agent`, `created_at`, `updated_at`) VALUES
(658, 1, 'created', 'User baru dibuat: Nadlirotul Ruwaidah (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:28:25', '2026-01-06 18:28:25'),
(659, 1, 'created', 'User baru dibuat: NAJID WAROHMAN (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:28:25', '2026-01-06 18:28:25'),
(660, 1, 'created', 'User baru dibuat: NANI APRIYANTI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:28:26', '2026-01-06 18:28:26'),
(661, 1, 'created', 'User baru dibuat: NAZWA OKTAVIA AZAHRA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:28:27', '2026-01-06 18:28:27'),
(662, 1, 'created', 'User baru dibuat: RAHMA OKTA FITRIYANTI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:28:27', '2026-01-06 18:28:27'),
(663, 1, 'created', 'User baru dibuat: REFA TANIA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:28:28', '2026-01-06 18:28:28'),
(664, 1, 'created', 'User baru dibuat: RINDI PUJI ARFIKAH (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:28:29', '2026-01-06 18:28:29'),
(665, 1, 'created', 'User baru dibuat: Rivka Olivia Anggita (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:28:29', '2026-01-06 18:28:29'),
(666, 1, 'created', 'User baru dibuat: SARAH AMELIA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:28:30', '2026-01-06 18:28:30'),
(667, 1, 'created', 'User baru dibuat: Serina Septiana Putri (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:28:31', '2026-01-06 18:28:31'),
(668, 1, 'created', 'User baru dibuat: SIPA MAULIDA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:28:31', '2026-01-06 18:28:31'),
(669, 1, 'created', 'User baru dibuat: SISKA APRIANI SUNDARI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:28:32', '2026-01-06 18:28:32'),
(670, 1, 'created', 'User baru dibuat: SISKA RAHMAWATI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:28:33', '2026-01-06 18:28:33'),
(671, 1, 'created', 'User baru dibuat: SOPINA DULHIJAH JAHRA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:28:33', '2026-01-06 18:28:33'),
(672, 1, 'created', 'User baru dibuat: SUCI NABILA RAHMADANI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:28:34', '2026-01-06 18:28:34'),
(673, 1, 'created', 'User baru dibuat: Tita Efiana (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:28:34', '2026-01-06 18:28:34'),
(674, 1, 'created', 'User baru dibuat: TITI WIDIYA NINGSIH (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:28:35', '2026-01-06 18:28:35'),
(675, 1, 'created', 'User baru dibuat: VERLIN OKTARINA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:28:35', '2026-01-06 18:28:35'),
(676, 1, 'created', 'User baru dibuat: WAFADIYA AERLA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:28:36', '2026-01-06 18:28:36'),
(677, 1, 'created', 'User baru dibuat: WILDA NUROHMAH (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:28:37', '2026-01-06 18:28:37'),
(678, 1, 'created', 'User baru dibuat: AGUNG SUKRADI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:50:05', '2026-01-06 18:50:05'),
(679, 1, 'created', 'User baru dibuat: AISYAH NURUL AZKIYA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:50:05', '2026-01-06 18:50:05'),
(680, 1, 'created', 'User baru dibuat: CAHYA ADI PAMUNGKAS (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:50:06', '2026-01-06 18:50:06'),
(681, 1, 'created', 'User baru dibuat: Chesya Dheana Moudzah (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:50:07', '2026-01-06 18:50:07'),
(682, 1, 'created', 'User baru dibuat: DAPINA NURPADILA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:50:08', '2026-01-06 18:50:08'),
(683, 1, 'created', 'User baru dibuat: Davit Firmansyah (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:50:09', '2026-01-06 18:50:09'),
(684, 1, 'created', 'User baru dibuat: FINA SYNDI AULIA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:50:09', '2026-01-06 18:50:09'),
(685, 1, 'created', 'User baru dibuat: HAJRI MAULANA ADRIANSYAH (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:50:10', '2026-01-06 18:50:10'),
(686, 1, 'created', 'User baru dibuat: HANDIKA ADI FIRMANSYAH (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:50:10', '2026-01-06 18:50:10'),
(687, 1, 'created', 'User baru dibuat: INDRA DERMAWAN (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:50:11', '2026-01-06 18:50:11'),
(688, 1, 'created', 'User baru dibuat: IRPAN SETIANA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:50:12', '2026-01-06 18:50:12'),
(689, 1, 'created', 'User baru dibuat: KELVIN ADRIFIANO (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:50:13', '2026-01-06 18:50:13'),
(690, 1, 'created', 'User baru dibuat: LEPI JAKARIA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:50:13', '2026-01-06 18:50:13'),
(691, 1, 'created', 'User baru dibuat: LESTARI DEWI PRIHATIN (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:50:14', '2026-01-06 18:50:14'),
(692, 1, 'created', 'User baru dibuat: MAHIR ISMA RAFI RABBANI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:50:15', '2026-01-06 18:50:15'),
(693, 1, 'created', 'User baru dibuat: NURDIANA PRATIWI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:50:17', '2026-01-06 18:50:17'),
(694, 1, 'created', 'User baru dibuat: RAHMAN ALFARIZI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:50:18', '2026-01-06 18:50:18'),
(695, 1, 'created', 'User baru dibuat: RAIHAN GILAR PRASETYO (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:50:19', '2026-01-06 18:50:19'),
(696, 1, 'created', 'User baru dibuat: RAMZI ACHYAR (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:50:19', '2026-01-06 18:50:19'),
(697, 1, 'created', 'User baru dibuat: Revan Habib Pratama (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:50:20', '2026-01-06 18:50:20'),
(698, 1, 'created', 'User baru dibuat: REYHAN GANESSA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:50:21', '2026-01-06 18:50:21'),
(699, 1, 'created', 'User baru dibuat: Rifka Septya Putri (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:50:22', '2026-01-06 18:50:22'),
(700, 1, 'created', 'User baru dibuat: RINI FAJARINA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:50:23', '2026-01-06 18:50:23'),
(701, 1, 'created', 'User baru dibuat: Saeful Rohman (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:50:24', '2026-01-06 18:50:24'),
(702, 1, 'created', 'User baru dibuat: SEMMY RADITYA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:50:24', '2026-01-06 18:50:24'),
(703, 1, 'created', 'User baru dibuat: SILFANI ISNA RAMADAN (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:50:25', '2026-01-06 18:50:25'),
(704, 1, 'created', 'User baru dibuat: SINTA PUSPITA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:50:26', '2026-01-06 18:50:26'),
(705, 1, 'created', 'User baru dibuat: TRIO SAPUTRA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:50:26', '2026-01-06 18:50:26'),
(706, 1, 'created', 'User baru dibuat: USMAN SAPUTRA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:50:27', '2026-01-06 18:50:27'),
(707, 1, 'created', 'User baru dibuat: Vanny Putri Anggraeni (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:50:28', '2026-01-06 18:50:28'),
(708, 1, 'created', 'User baru dibuat: WAFI AMRU BAIHAQI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:50:29', '2026-01-06 18:50:29'),
(709, 1, 'created', 'User baru dibuat: ZIKRI ILHAM FIRMANSAH (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 18:50:30', '2026-01-06 18:50:30'),
(710, 1, 'created', 'User baru dibuat: AL NURHASANAH (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 19:03:06', '2026-01-06 19:03:06'),
(711, 1, 'created', 'User baru dibuat: Ananda Dwi Saputra (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 19:03:07', '2026-01-06 19:03:07'),
(712, 1, 'created', 'User baru dibuat: ATHIN HIJDAROH DUROTUROFIKOH (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 19:03:07', '2026-01-06 19:03:07'),
(713, 1, 'created', 'User baru dibuat: ATIFAH NAYLA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 19:03:08', '2026-01-06 19:03:08'),
(714, 1, 'created', 'User baru dibuat: Budi Ramadani (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 19:03:08', '2026-01-06 19:03:08'),
(715, 1, 'created', 'User baru dibuat: CELSI APRIYANI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 19:03:09', '2026-01-06 19:03:09'),
(716, 1, 'created', 'User baru dibuat: DESTIA APRILLIA PUTRI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 19:03:10', '2026-01-06 19:03:10'),
(717, 1, 'created', 'User baru dibuat: DIMAS PRASETIO (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 19:03:10', '2026-01-06 19:03:10'),
(718, 1, 'created', 'User baru dibuat: FARIS ZAIDAAN (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 19:03:11', '2026-01-06 19:03:11'),
(719, 1, 'created', 'User baru dibuat: GALIH PRATAMA PUTRA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 19:03:11', '2026-01-06 19:03:11'),
(720, 1, 'created', 'User baru dibuat: HANUM SETYA NINGSIH (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 19:03:12', '2026-01-06 19:03:12'),
(721, 1, 'created', 'User baru dibuat: IDA NURAENI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 19:03:13', '2026-01-06 19:03:13'),
(722, 1, 'created', 'User baru dibuat: ILHAM (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 19:03:13', '2026-01-06 19:03:13'),
(723, 1, 'created', 'User baru dibuat: IQBAL AKDARI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 19:03:14', '2026-01-06 19:03:14'),
(724, 1, 'created', 'User baru dibuat: KEYILA ANASTASYA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 19:03:14', '2026-01-06 19:03:14'),
(725, 1, 'created', 'User baru dibuat: LUTFI RAMADHAN (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 19:03:15', '2026-01-06 19:03:15'),
(726, 1, 'created', 'User baru dibuat: OCCA SUBANDI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 19:03:16', '2026-01-06 19:03:16'),
(727, 1, 'created', 'User baru dibuat: PASHA DZIKRI RAMADHAN (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 19:03:16', '2026-01-06 19:03:16'),
(728, 1, 'created', 'User baru dibuat: PERI GUNAWAN (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 19:03:17', '2026-01-06 19:03:17'),
(729, 1, 'created', 'User baru dibuat: PUTRI RAHMADANI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 19:03:17', '2026-01-06 19:03:17'),
(730, 1, 'created', 'User baru dibuat: RAFA MAULANA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 19:03:20', '2026-01-06 19:03:20'),
(731, 1, 'created', 'User baru dibuat: RAHMAT DANI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 19:03:21', '2026-01-06 19:03:21'),
(732, 1, 'created', 'User baru dibuat: REHANS FREBIAN (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 19:03:21', '2026-01-06 19:03:21'),
(733, 1, 'created', 'User baru dibuat: RIRIN ARYANTI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 19:03:22', '2026-01-06 19:03:22'),
(734, 1, 'created', 'User baru dibuat: RIYANTI MEI LATIFAH (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 19:03:23', '2026-01-06 19:03:23'),
(735, 1, 'created', 'User baru dibuat: SABILAL MU\'ARIF (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 19:03:23', '2026-01-06 19:03:23'),
(736, 1, 'created', 'User baru dibuat: SABRINA SALSABILA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 19:03:24', '2026-01-06 19:03:24'),
(737, 1, 'created', 'User baru dibuat: SAHARA INDRIYANI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 19:03:25', '2026-01-06 19:03:25'),
(738, 1, 'created', 'User baru dibuat: TEGAR PUTRA PAMUNGKAS (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 19:03:25', '2026-01-06 19:03:25'),
(739, 1, 'created', 'User baru dibuat: TIARA KASIH (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 19:03:26', '2026-01-06 19:03:26'),
(740, 1, 'created', 'User baru dibuat: YUSUF ALFARISY (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 19:03:27', '2026-01-06 19:03:27'),
(741, 1, 'created', 'User baru dibuat: AKENZO SALVARO (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 19:03:27', '2026-01-06 19:03:27'),
(742, 1, 'created', 'User baru dibuat: ALNISA NUR UTAMI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 19:03:28', '2026-01-06 19:03:28'),
(743, 1, 'created', 'User baru dibuat: AMANDA PUTRIYANI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 19:03:29', '2026-01-06 19:03:29'),
(744, 1, 'created', 'User baru dibuat: ARKA PUTRA KRISTIAN (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 19:03:29', '2026-01-06 19:03:29'),
(745, 1, 'created', 'User baru dibuat: ATIF ALMAS RIFQI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 19:03:30', '2026-01-06 19:03:30'),
(746, 1, 'created', 'User baru dibuat: AZZAHRA TRI ARDA RAMADHANI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 19:03:30', '2026-01-06 19:03:30'),
(747, 1, 'created', 'User baru dibuat: bilal (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 19:03:31', '2026-01-06 19:03:31'),
(748, 1, 'created', 'User baru dibuat: BINTANG PRABOWO SUMARSONO (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 19:03:33', '2026-01-06 19:03:33'),
(749, 1, 'created', 'User baru dibuat: Desta Pramono (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 19:03:33', '2026-01-06 19:03:33'),
(750, 1, 'created', 'User baru dibuat: DIVA SUCI SAPUTRI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 19:03:34', '2026-01-06 19:03:34'),
(751, 1, 'created', 'User baru dibuat: EVA SELVIANA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 19:03:35', '2026-01-06 19:03:35'),
(752, 1, 'created', 'User baru dibuat: FALAH RADITIYAL SAPUTRA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 19:03:36', '2026-01-06 19:03:36'),
(753, 1, 'created', 'User baru dibuat: FEBRIA AULIANTI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 19:03:36', '2026-01-06 19:03:36'),
(754, 1, 'created', 'User baru dibuat: GILANG RAMADHAN (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 19:03:37', '2026-01-06 19:03:37'),
(755, 1, 'created', 'User baru dibuat: Hesti Kurniawati (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 19:03:38', '2026-01-06 19:03:38'),
(756, 1, 'created', 'User baru dibuat: IBRAHIM WAHYU ILHAM (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 19:03:39', '2026-01-06 19:03:39'),
(757, 1, 'created', 'User baru dibuat: JELITA AULIA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 19:03:39', '2026-01-06 19:03:39'),
(758, 1, 'created', 'User baru dibuat: JENI DWI KARTIKA SARI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 19:03:40', '2026-01-06 19:03:40'),
(759, 1, 'created', 'User baru dibuat: JIMMY KURNIAWAN PUTRA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 19:03:40', '2026-01-06 19:03:40'),
(760, 1, 'created', 'User baru dibuat: KARISSA NAYA SYIFA PUTRI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 19:03:42', '2026-01-06 19:03:42'),
(761, 1, 'created', 'User baru dibuat: KEYSA OKTAVIANI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 19:03:43', '2026-01-06 19:03:43'),
(762, 1, 'created', 'User baru dibuat: KUR CHELAWATI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 19:03:43', '2026-01-06 19:03:43'),
(763, 1, 'created', 'User baru dibuat: MELLVI NUR FAJRIANI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 19:03:44', '2026-01-06 19:03:44'),
(764, 1, 'created', 'User baru dibuat: MUHAMAD YUSUF ALFARIZI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 19:03:44', '2026-01-06 19:03:44'),
(765, 1, 'created', 'User baru dibuat: MUHAMMAD FARELL ADISTIAN (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 19:03:45', '2026-01-06 19:03:45'),
(766, 1, 'created', 'User baru dibuat: MUKTY RAMADHAN (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 19:03:46', '2026-01-06 19:03:46'),
(767, 1, 'created', 'User baru dibuat: Nazar Oki Mardiana (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 19:03:47', '2026-01-06 19:03:47'),
(768, 1, 'created', 'User baru dibuat: RAIHAN ALIF BINTANG WICAKSONSO (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 19:03:48', '2026-01-06 19:03:48'),
(769, 1, 'created', 'User baru dibuat: Rifal Andika Saputro (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 19:03:48', '2026-01-06 19:03:48'),
(770, 1, 'created', 'User baru dibuat: ROSSA SETIAWATI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 19:03:50', '2026-01-06 19:03:50'),
(771, 1, 'created', 'User baru dibuat: TANGGUH ALFATTAH DZUL HADI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 19:03:51', '2026-01-06 19:03:51'),
(772, 1, 'created', 'User baru dibuat: VIDIANA NUR ANGGRAENI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 19:03:52', '2026-01-06 19:03:52'),
(773, 1, 'login', 'User login ke sistem', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 01:47:35', '2026-01-07 01:47:35'),
(774, 1, 'created', 'Mapel baru dibuat: Konsentrasi Keahlian TKJ 1 (Kategori: Tidak ada kategori)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 02:33:19', '2026-01-07 02:33:19'),
(775, 1, 'created', 'Mapel baru dibuat: Konsentrasi Keahlian TKJ 3 (Kategori: Tidak ada kategori)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 02:33:42', '2026-01-07 02:33:42'),
(776, 1, 'created', 'Data mengajar dibuat: Guru ACHMAD FAOZI, Mapel Konsentrasi Keahlian TKJ 1, Jam 0, Pertemuan per minggu 0', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 03:00:36', '2026-01-07 03:00:36'),
(777, 1, 'created', 'Data mengajar dibuat: Guru ACHMAD FAOZI, Mapel Konsentrasi Keahlian TKJ 1, Jam 0, Pertemuan per minggu 0', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 03:00:36', '2026-01-07 03:00:36'),
(778, 1, 'created', 'Data mengajar dibuat: Guru ACHMAD FAOZI, Mapel Mapel Pilihan TKJ, Jam 0, Pertemuan per minggu 0', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 03:00:51', '2026-01-07 03:00:51'),
(779, 1, 'created', 'Data mengajar dibuat: Guru AFIF WALIYUDIN, Mapel Konsentrasi Keahlian TKJ 2, Jam 0, Pertemuan per minggu 0', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 03:01:51', '2026-01-07 03:01:51'),
(780, 1, 'created', 'Data mengajar dibuat: Guru AFIF WALIYUDIN, Mapel Konsentrasi Keahlian TKJ 2, Jam 0, Pertemuan per minggu 0', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 03:01:51', '2026-01-07 03:01:51'),
(781, 1, 'login', 'User login ke sistem', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 18:02:42', '2026-01-07 18:02:42'),
(782, 1, 'created', 'User baru dibuat: ADPI SALMAN ALFARIZKI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 18:05:01', '2026-01-07 18:05:01'),
(783, 1, 'created', 'User baru dibuat: ADZIKRA MIKEYL SAPUTRA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 18:05:02', '2026-01-07 18:05:02'),
(784, 1, 'created', 'User baru dibuat: AFRIZAL NURFADILAH (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 18:05:02', '2026-01-07 18:05:02'),
(785, 1, 'created', 'User baru dibuat: ALIA SHAFFANI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 18:05:02', '2026-01-07 18:05:02'),
(786, 1, 'created', 'User baru dibuat: Anjani (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 18:05:03', '2026-01-07 18:05:03'),
(787, 1, 'created', 'User baru dibuat: Anjar Artandi (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 18:05:04', '2026-01-07 18:05:04'),
(788, 1, 'created', 'User baru dibuat: Apriyanto (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 18:05:04', '2026-01-07 18:05:04'),
(789, 1, 'created', 'User baru dibuat: AZJRIL JONNATA IRSYAD (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 18:05:05', '2026-01-07 18:05:05'),
(790, 1, 'created', 'User baru dibuat: AZKA IKBAL NABAWI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 18:05:05', '2026-01-07 18:05:05'),
(791, 1, 'created', 'User baru dibuat: BAEHAKI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 18:05:05', '2026-01-07 18:05:05'),
(792, 1, 'created', 'User baru dibuat: DEA APRILIA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 18:05:06', '2026-01-07 18:05:06'),
(793, 1, 'created', 'User baru dibuat: DELLA PUSPITA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 18:05:07', '2026-01-07 18:05:07'),
(794, 1, 'created', 'User baru dibuat: DIDI KURNIAWAN (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 18:05:07', '2026-01-07 18:05:07'),
(795, 1, 'created', 'User baru dibuat: EGA FRADIKA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 18:05:08', '2026-01-07 18:05:08'),
(796, 1, 'created', 'User baru dibuat: EZA AGUSTIAR RAMADHAN (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 18:05:08', '2026-01-07 18:05:08'),
(797, 1, 'created', 'User baru dibuat: FILA RAMADANI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 18:05:09', '2026-01-07 18:05:09'),
(798, 1, 'created', 'User baru dibuat: IIF NURHIDAYAT (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 18:05:09', '2026-01-07 18:05:09'),
(799, 1, 'created', 'User baru dibuat: IMAM MUHAMMAD AL FARIZ (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 18:05:10', '2026-01-07 18:05:10'),
(800, 1, 'created', 'User baru dibuat: Kemal Pebriyan (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 18:05:10', '2026-01-07 18:05:10'),
(801, 1, 'created', 'User baru dibuat: MUHAMMAD FATHAN AL FATIH (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 18:05:11', '2026-01-07 18:05:11'),
(802, 1, 'created', 'User baru dibuat: NADIA NURULIA SYAFIRA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 18:05:12', '2026-01-07 18:05:12'),
(803, 1, 'created', 'User baru dibuat: NANDA UTAMI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 18:05:12', '2026-01-07 18:05:12'),
(804, 1, 'created', 'User baru dibuat: NAUFAL ROFI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 18:05:12', '2026-01-07 18:05:12'),
(805, 1, 'created', 'User baru dibuat: NISAUL MUSYARROFAH (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 18:05:13', '2026-01-07 18:05:13'),
(806, 1, 'created', 'User baru dibuat: Reno Septiawan Ramadan (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 18:05:13', '2026-01-07 18:05:13'),
(807, 1, 'created', 'User baru dibuat: RIDHA SINTIA OKTAVIANTI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 18:05:14', '2026-01-07 18:05:14'),
(808, 1, 'created', 'User baru dibuat: RINA ALAMSYAH (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 18:05:14', '2026-01-07 18:05:14'),
(809, 1, 'created', 'User baru dibuat: RISMA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 18:05:15', '2026-01-07 18:05:15'),
(810, 1, 'created', 'User baru dibuat: Sulistiana Wati (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 18:05:15', '2026-01-07 18:05:15'),
(811, 1, 'created', 'User baru dibuat: SYAKILA MAWARDANI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 18:05:16', '2026-01-07 18:05:16'),
(812, 1, 'created', 'User baru dibuat: SYIVA AULIA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 18:05:17', '2026-01-07 18:05:17'),
(813, 1, 'created', 'User baru dibuat: URIFA YASIN (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 18:05:17', '2026-01-07 18:05:17'),
(814, 1, 'created', 'User baru dibuat: USWATUN KHASANAH (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 18:05:17', '2026-01-07 18:05:17'),
(815, 1, 'created', 'User baru dibuat: ADE AHMAD RIZKI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 18:08:46', '2026-01-07 18:08:46'),
(816, 1, 'created', 'User baru dibuat: ADHITYA PERDANA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 18:08:47', '2026-01-07 18:08:47'),
(817, 1, 'created', 'User baru dibuat: ADITYA HILDAN JAEVANI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 18:08:47', '2026-01-07 18:08:47'),
(818, 1, 'created', 'User baru dibuat: AGUS FIRMANSYAH (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 18:08:47', '2026-01-07 18:08:47'),
(819, 1, 'created', 'User baru dibuat: AHMAD KHOERUL ANAM (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 18:08:48', '2026-01-07 18:08:48'),
(820, 1, 'created', 'User baru dibuat: AMIN RACHMAT ROMADHON (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 18:08:49', '2026-01-07 18:08:49'),
(821, 1, 'created', 'User baru dibuat: ANDREAN NUR IJLAL KUSWOYO (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 18:08:49', '2026-01-07 18:08:49'),
(822, 1, 'created', 'User baru dibuat: AQCHMAL NOVA ARDIANSYAH (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 18:08:50', '2026-01-07 18:08:50'),
(823, 1, 'created', 'User baru dibuat: AQIL AL FARROSI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 18:08:50', '2026-01-07 18:08:50'),
(824, 1, 'created', 'User baru dibuat: DAFA JULIANDRA PRATAMA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 18:08:51', '2026-01-07 18:08:51'),
(825, 1, 'created', 'User baru dibuat: FAJRI TRI FAHRUDIN (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 18:08:51', '2026-01-07 18:08:51'),
(826, 1, 'created', 'User baru dibuat: Immam Maullana (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 18:08:51', '2026-01-07 18:08:51'),
(827, 1, 'created', 'User baru dibuat: KEVIN WAHYUDI PRATAMA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 18:08:52', '2026-01-07 18:08:52'),
(828, 1, 'created', 'User baru dibuat: KHAERUL SALAM (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 18:08:52', '2026-01-07 18:08:52'),
(829, 1, 'created', 'User baru dibuat: MUHAMMAD SYAHRIL MUBAROK (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 18:08:53', '2026-01-07 18:08:53'),
(830, 1, 'created', 'User baru dibuat: MUSTOFA ROMADHONI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 18:08:54', '2026-01-07 18:08:54'),
(831, 1, 'created', 'User baru dibuat: NOVAL DWI ANDIKA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 18:08:54', '2026-01-07 18:08:54'),
(832, 1, 'created', 'User baru dibuat: Raka Adindia Shadidan Althaf (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 18:08:54', '2026-01-07 18:08:54'),
(833, 1, 'created', 'User baru dibuat: RAMA HESA JENAR (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 18:08:55', '2026-01-07 18:08:55'),
(834, 1, 'created', 'User baru dibuat: RIZKY SAEFULLOH (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 18:08:55', '2026-01-07 18:08:55'),
(835, 1, 'created', 'User baru dibuat: SHAKTI MEZZA MILANO (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 18:08:56', '2026-01-07 18:08:56'),
(836, 1, 'created', 'User baru dibuat: TOVAL KHASAN NUR HIDAYAH (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 18:08:56', '2026-01-07 18:08:56'),
(837, 1, 'created', 'User baru dibuat: Yosi Nanda Pratama (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 18:08:57', '2026-01-07 18:08:57'),
(838, 1, 'created', 'User baru dibuat: Zacky Putra Aprilian (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 18:08:57', '2026-01-07 18:08:57'),
(839, 1, 'created', 'User baru dibuat: ABAS GILANG SAPUTRA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 18:08:57', '2026-01-07 18:08:57'),
(840, 1, 'created', 'User baru dibuat: ABIB MUZAKI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 18:08:58', '2026-01-07 18:08:58'),
(841, 1, 'created', 'User baru dibuat: ADITYA FIRMANSYAH (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 18:08:59', '2026-01-07 18:08:59'),
(842, 1, 'created', 'User baru dibuat: Agiardia (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 18:08:59', '2026-01-07 18:08:59'),
(843, 1, 'created', 'User baru dibuat: ALFA REFANDRA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 18:08:59', '2026-01-07 18:08:59'),
(844, 1, 'created', 'User baru dibuat: ALVIN SYAHRIN (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 18:09:00', '2026-01-07 18:09:00'),
(845, 1, 'created', 'User baru dibuat: ARIF NABIL RAMADHAN (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 18:09:00', '2026-01-07 18:09:00'),
(846, 1, 'created', 'User baru dibuat: ARVEL FAIQ NUR HERMAWAN (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 18:09:01', '2026-01-07 18:09:01'),
(847, 1, 'created', 'User baru dibuat: Bahrul Arifin Fauzan (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 18:09:01', '2026-01-07 18:09:01'),
(848, 1, 'created', 'User baru dibuat: DAFFA AL FAREZI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 18:09:02', '2026-01-07 18:09:02'),
(849, 1, 'created', 'User baru dibuat: Dede Ardiansyah (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 18:09:02', '2026-01-07 18:09:02'),
(850, 1, 'created', 'User baru dibuat: DENIS (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 18:09:03', '2026-01-07 18:09:03'),
(851, 1, 'created', 'User baru dibuat: DENIS DWI SAPUTRA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 18:09:03', '2026-01-07 18:09:03'),
(852, 1, 'created', 'User baru dibuat: DIKI DWI SANTOSO (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 18:09:04', '2026-01-07 18:09:04'),
(853, 1, 'created', 'User baru dibuat: FAHRI WIIBOWO (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 18:09:04', '2026-01-07 18:09:04'),
(854, 1, 'created', 'User baru dibuat: FAHRUR ALI REJI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 18:09:05', '2026-01-07 18:09:05'),
(855, 1, 'created', 'User baru dibuat: FAISAL EGALIOSA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 18:09:05', '2026-01-07 18:09:05'),
(856, 1, 'created', 'User baru dibuat: GIFFAR ROZAQ PRATAMA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 18:09:06', '2026-01-07 18:09:06'),
(857, 1, 'created', 'User baru dibuat: JOHAN FIRDAUS (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 18:09:06', '2026-01-07 18:09:06'),
(858, 1, 'created', 'User baru dibuat: JOKO SUTRISNO (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 18:09:06', '2026-01-07 18:09:06'),
(859, 1, 'created', 'User baru dibuat: MOHAMAD RIZQI NUGROHO (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 18:09:07', '2026-01-07 18:09:07'),
(860, 1, 'created', 'User baru dibuat: QORIBUL \'IBAD MUJAZIN (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 18:09:08', '2026-01-07 18:09:08'),
(861, 1, 'created', 'User baru dibuat: REFALDY ARIE SADEWO (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 18:09:08', '2026-01-07 18:09:08'),
(862, 1, 'created', 'User baru dibuat: RIDWAN HARDIANZYAH (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 18:09:09', '2026-01-07 18:09:09'),
(863, 1, 'created', 'User baru dibuat: RIZKI NAZRIL IRHAM (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 18:09:09', '2026-01-07 18:09:09');
INSERT INTO `log_user` (`id`, `user_id`, `action`, `description`, `ip_address`, `user_agent`, `created_at`, `updated_at`) VALUES
(864, 1, 'created', 'User baru dibuat: RIZQI BILAL ROMADHON (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 18:09:09', '2026-01-07 18:09:09'),
(865, 1, 'created', 'User baru dibuat: RUSTRIANSYAH (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 18:09:10', '2026-01-07 18:09:10'),
(866, 1, 'created', 'User baru dibuat: Surya Irfansah (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 18:09:10', '2026-01-07 18:09:10'),
(867, 1, 'created', 'User baru dibuat: ANTONY (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 18:10:52', '2026-01-07 18:10:52'),
(868, 1, 'created', 'User baru dibuat: Banyu Hasan Bahri (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 18:10:53', '2026-01-07 18:10:53'),
(869, 1, 'created', 'User baru dibuat: BAYU BAEHAKI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 18:10:54', '2026-01-07 18:10:54'),
(870, 1, 'created', 'User baru dibuat: FHENO EKA SANDIYANA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 18:10:55', '2026-01-07 18:10:55'),
(871, 1, 'created', 'User baru dibuat: JOHAN PUTRA ARYANTO (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 18:10:56', '2026-01-07 18:10:56'),
(872, 1, 'created', 'User baru dibuat: KURNIA RASYA ALDIANSYAH (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 18:10:57', '2026-01-07 18:10:57'),
(873, 1, 'created', 'User baru dibuat: Lutfi Mubarok (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 18:10:58', '2026-01-07 18:10:58'),
(874, 1, 'created', 'User baru dibuat: LUTFIANSYAH NOOR MAULIDA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 18:10:58', '2026-01-07 18:10:58'),
(875, 1, 'created', 'User baru dibuat: MAHESA LESMANA PUTRA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 18:10:59', '2026-01-07 18:10:59'),
(876, 1, 'created', 'User baru dibuat: MARSEL PUTRA PRATAMA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 18:10:59', '2026-01-07 18:10:59'),
(877, 1, 'created', 'User baru dibuat: Marvel Elni Putra (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 18:11:00', '2026-01-07 18:11:00'),
(878, 1, 'created', 'User baru dibuat: MUKHAMMAD GIYAT SETIAWAN (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 18:11:01', '2026-01-07 18:11:01'),
(879, 1, 'created', 'User baru dibuat: NUAF AL SYAMRI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 18:11:01', '2026-01-07 18:11:01'),
(880, 1, 'created', 'User baru dibuat: RAFFI NURROHMAN (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 18:11:02', '2026-01-07 18:11:02'),
(881, 1, 'created', 'User baru dibuat: RAFKHA MAJID RAMADHAN (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 18:11:02', '2026-01-07 18:11:02'),
(882, 1, 'created', 'User baru dibuat: RAMDAN APRILIANO KHOLIK (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 18:11:04', '2026-01-07 18:11:04'),
(883, 1, 'created', 'User baru dibuat: REYHAN (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 18:11:04', '2026-01-07 18:11:04'),
(884, 1, 'created', 'User baru dibuat: REZA SAPUTRA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 18:11:06', '2026-01-07 18:11:06'),
(885, 1, 'created', 'User baru dibuat: Rezkya Dhesta Permana (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 18:11:06', '2026-01-07 18:11:06'),
(886, 1, 'created', 'User baru dibuat: RIFQI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 18:11:07', '2026-01-07 18:11:07'),
(887, 1, 'created', 'User baru dibuat: RISZIANTO (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 18:11:08', '2026-01-07 18:11:08'),
(888, 1, 'created', 'User baru dibuat: Rizal Dwi Setiawan (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 18:11:08', '2026-01-07 18:11:08'),
(889, 1, 'created', 'User baru dibuat: RYNDAN ALIEF HARFIANSYAH (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 18:11:09', '2026-01-07 18:11:09'),
(890, 1, 'created', 'User baru dibuat: Sulistiono Pratama (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 18:11:09', '2026-01-07 18:11:09'),
(891, 1, 'created', 'User baru dibuat: Sultan Surya Ardiyanto (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 18:11:10', '2026-01-07 18:11:10'),
(892, 1, 'created', 'User baru dibuat: TEMY SAPUTRA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 18:11:11', '2026-01-07 18:11:11'),
(893, 1, 'created', 'User baru dibuat: TIVAN ANDREAN (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 18:11:11', '2026-01-07 18:11:11'),
(894, 1, 'created', 'User baru dibuat: Yahya Al Fauzan (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 18:11:12', '2026-01-07 18:11:12'),
(895, 1, 'created', 'Data mengajar dibuat: Guru ACHMAD FAOZI, Mapel Konsentrasi Keahlian TKJ 3, Jam 0, Pertemuan per minggu 0', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 18:16:45', '2026-01-07 18:16:45'),
(896, 1, 'created', 'Data mengajar dibuat: Guru ACHMAD FAOZI, Mapel Konsentrasi Keahlian TKJ 3, Jam 0, Pertemuan per minggu 0', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 18:16:45', '2026-01-07 18:16:45'),
(897, 1, 'created', 'Data mengajar dibuat: Guru ACHMAD FAOZI, Mapel Konsentrasi Keahlian TKJ 3, Jam 0, Pertemuan per minggu 0', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 18:16:45', '2026-01-07 18:16:45'),
(898, 1, 'created', 'Data mengajar dibuat: Guru ACHMAD FAOZI, Mapel Konsentrasi Keahlian TKJ 3, Jam 0, Pertemuan per minggu 0', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 18:16:45', '2026-01-07 18:16:45'),
(899, 1, 'login', 'User login ke sistem', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-07 18:20:33', '2026-01-07 18:20:33'),
(900, 1, 'updated', 'User diperbarui: Darwin Kuvalis (admin)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-07 18:20:39', '2026-01-07 18:20:39'),
(901, 1, 'logout', 'User logout dari sistem', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-07 18:20:39', '2026-01-07 18:20:39'),
(902, 80, 'login', 'User login ke sistem', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-07 18:20:51', '2026-01-07 18:20:51'),
(903, 1, 'created', 'User baru dibuat: ADIT MUHAMMAD FARIZ ABDULLAH (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:04:25', '2026-01-07 19:04:25'),
(904, 1, 'created', 'User baru dibuat: AHMAD UBAYU ZIDAN (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:04:26', '2026-01-07 19:04:26'),
(905, 1, 'created', 'User baru dibuat: AHMAD WILDAN RAMDANI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:04:26', '2026-01-07 19:04:26'),
(906, 1, 'created', 'User baru dibuat: Alfian Nur Rizky (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:04:27', '2026-01-07 19:04:27'),
(907, 1, 'created', 'User baru dibuat: ALFINDO HARDIANSAH ADITAMA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:04:28', '2026-01-07 19:04:28'),
(908, 1, 'created', 'User baru dibuat: DENIS ANGGANA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:04:29', '2026-01-07 19:04:29'),
(909, 1, 'created', 'User baru dibuat: EGI ALFISHA FIANDIKA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:04:30', '2026-01-07 19:04:30'),
(910, 1, 'created', 'User baru dibuat: FAJAR PRASETIYO WIJAYANTO (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:04:30', '2026-01-07 19:04:30'),
(911, 1, 'created', 'User baru dibuat: FAUZI NUR ROHMAN (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:04:31', '2026-01-07 19:04:31'),
(912, 1, 'created', 'User baru dibuat: HILAL ISTANTO (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:04:32', '2026-01-07 19:04:32'),
(913, 1, 'created', 'User baru dibuat: IRWAN SAPUTRA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:04:33', '2026-01-07 19:04:33'),
(914, 1, 'created', 'User baru dibuat: JUNIAR DWI SAPUTRA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:04:34', '2026-01-07 19:04:34'),
(915, 1, 'created', 'User baru dibuat: KHOERUL NGIZZUL ANAM (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:04:34', '2026-01-07 19:04:34'),
(916, 1, 'created', 'User baru dibuat: MARSEL ADITYA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:04:35', '2026-01-07 19:04:35'),
(917, 1, 'created', 'User baru dibuat: Masaji Subekti (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:04:35', '2026-01-07 19:04:35'),
(918, 1, 'created', 'User baru dibuat: MOHAMAD ARJUNA NARARYA KHALIVI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:04:36', '2026-01-07 19:04:36'),
(919, 1, 'created', 'User baru dibuat: MUHAMAD AKMALLUDIN (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:04:37', '2026-01-07 19:04:37'),
(920, 1, 'created', 'User baru dibuat: Raditia Faiz Nur Ramadhan (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:04:37', '2026-01-07 19:04:37'),
(921, 1, 'created', 'User baru dibuat: REFA PRIYONO (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:04:38', '2026-01-07 19:04:38'),
(922, 1, 'created', 'User baru dibuat: Restu Yogi Pratama (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:04:38', '2026-01-07 19:04:38'),
(923, 1, 'created', 'User baru dibuat: SYAIFUL DIMAS PRATAMA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:04:40', '2026-01-07 19:04:40'),
(924, 1, 'created', 'User baru dibuat: AGISTA BUDI PAMUNGKAS (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:04:41', '2026-01-07 19:04:41'),
(925, 1, 'created', 'User baru dibuat: Agnin Nur Hidayah (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:04:42', '2026-01-07 19:04:42'),
(926, 1, 'created', 'User baru dibuat: Alfiyan Dwiyanto (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:04:42', '2026-01-07 19:04:42'),
(927, 1, 'created', 'User baru dibuat: ANGGA MAULANA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:04:43', '2026-01-07 19:04:43'),
(928, 1, 'created', 'User baru dibuat: Angga Nugroho (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:04:44', '2026-01-07 19:04:44'),
(929, 1, 'created', 'User baru dibuat: Ari Dwi Priyanto (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:04:44', '2026-01-07 19:04:44'),
(930, 1, 'created', 'User baru dibuat: ASHEL JUAN PRADISTA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:04:45', '2026-01-07 19:04:45'),
(931, 1, 'created', 'User baru dibuat: AZKA AL AZHAR (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:04:45', '2026-01-07 19:04:45'),
(932, 1, 'created', 'User baru dibuat: Bagas Alifansah (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:04:46', '2026-01-07 19:04:46'),
(933, 1, 'created', 'User baru dibuat: DAFA SAPUTRA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:04:47', '2026-01-07 19:04:47'),
(934, 1, 'created', 'User baru dibuat: DENI FEBRIAN (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:04:48', '2026-01-07 19:04:48'),
(935, 1, 'created', 'User baru dibuat: DESTA MAULANA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:04:48', '2026-01-07 19:04:48'),
(936, 1, 'created', 'User baru dibuat: EKI ALIF APRILIANO (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:04:49', '2026-01-07 19:04:49'),
(937, 1, 'created', 'User baru dibuat: ERI PRATAMA IBRAHIM (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:04:50', '2026-01-07 19:04:50'),
(938, 1, 'created', 'User baru dibuat: FADIL RAMADHAN (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:04:51', '2026-01-07 19:04:51'),
(939, 1, 'created', 'User baru dibuat: FAHRI SETIAWAN (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:04:52', '2026-01-07 19:04:52'),
(940, 1, 'created', 'User baru dibuat: FAKHRI NUR FAYI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:04:53', '2026-01-07 19:04:53'),
(941, 1, 'created', 'User baru dibuat: Farel Adiansah (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:04:53', '2026-01-07 19:04:53'),
(942, 1, 'created', 'User baru dibuat: Furqon Alam Syah (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:04:55', '2026-01-07 19:04:55'),
(943, 1, 'created', 'User baru dibuat: GILANG OCTAVIANO (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:04:57', '2026-01-07 19:04:57'),
(944, 1, 'created', 'User baru dibuat: HILDAN FAIZ FAHREZA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:04:58', '2026-01-07 19:04:58'),
(945, 1, 'created', 'User baru dibuat: IHWAN NURHIDAYAH (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:04:59', '2026-01-07 19:04:59'),
(946, 1, 'created', 'User baru dibuat: LUTFI MAULANA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:05:00', '2026-01-07 19:05:00'),
(947, 1, 'created', 'User baru dibuat: MARFEL (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:05:00', '2026-01-07 19:05:00'),
(948, 1, 'created', 'User baru dibuat: MILA PURWATI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:05:01', '2026-01-07 19:05:01'),
(949, 1, 'created', 'User baru dibuat: MULYO DWI HAFIDZ HIDAYAH (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:05:02', '2026-01-07 19:05:02'),
(950, 1, 'created', 'User baru dibuat: NIZAR ABDALLAH (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:05:03', '2026-01-07 19:05:03'),
(951, 1, 'created', 'User baru dibuat: OVAL AL MUALIF (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:05:03', '2026-01-07 19:05:03'),
(952, 1, 'created', 'User baru dibuat: RAMANDA FAHRI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:05:04', '2026-01-07 19:05:04'),
(953, 1, 'created', 'User baru dibuat: REPAN HIDAYAT (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:05:06', '2026-01-07 19:05:06'),
(954, 1, 'created', 'User baru dibuat: Riski Saputra (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:05:07', '2026-01-07 19:05:07'),
(955, 1, 'created', 'User baru dibuat: RUDIYANTO (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:05:08', '2026-01-07 19:05:08'),
(956, 1, 'created', 'User baru dibuat: SAUFIQ JUMANTORO (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:05:09', '2026-01-07 19:05:09'),
(957, 1, 'created', 'User baru dibuat: SHEYLLA RISTIANA PUTRI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:05:10', '2026-01-07 19:05:10'),
(958, 1, 'created', 'User baru dibuat: SOFIYAN HERDIYANSYAH (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:05:10', '2026-01-07 19:05:10'),
(959, 1, 'created', 'User baru dibuat: Surya Darmawan (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:05:12', '2026-01-07 19:05:12'),
(960, 1, 'created', 'User baru dibuat: SYAFRI IKHFARUL AKBAR (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:05:13', '2026-01-07 19:05:13'),
(961, 1, 'created', 'User baru dibuat: Wisnu Kurniawan (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:05:14', '2026-01-07 19:05:14'),
(962, 1, 'created', 'User baru dibuat: ZIBRAN ABIYASO PUTRA PAMUNGKAS (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:05:14', '2026-01-07 19:05:14'),
(963, 1, 'created', 'User baru dibuat: Zidane Purnomo (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:05:16', '2026-01-07 19:05:16'),
(964, 1, 'created', 'User baru dibuat: ADITYA EGA NURGALIH (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:05:17', '2026-01-07 19:05:17'),
(965, 1, 'created', 'User baru dibuat: AFRI TRIA SUGIHARTO (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:05:17', '2026-01-07 19:05:17'),
(966, 1, 'created', 'User baru dibuat: AGUS SATRIO (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:05:18', '2026-01-07 19:05:18'),
(967, 1, 'created', 'User baru dibuat: AL MUMIN AHMAD RAMADHAN (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:05:19', '2026-01-07 19:05:19'),
(968, 1, 'created', 'User baru dibuat: ANDRA SEFRI SAPUTRA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:05:19', '2026-01-07 19:05:19'),
(969, 1, 'created', 'User baru dibuat: ARGA SUBACHTIAR (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:05:20', '2026-01-07 19:05:20'),
(970, 1, 'created', 'User baru dibuat: BILAL SYAFARUDIN (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:05:20', '2026-01-07 19:05:20'),
(971, 1, 'created', 'User baru dibuat: Candra Adi Pratama (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:05:21', '2026-01-07 19:05:21'),
(972, 1, 'created', 'User baru dibuat: CHICO ZAKY RADHINKA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:05:21', '2026-01-07 19:05:21'),
(973, 1, 'created', 'User baru dibuat: Dafa Saputra (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:05:22', '2026-01-07 19:05:22'),
(974, 1, 'created', 'User baru dibuat: DAFFA YUSUF AL FACHRI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:05:22', '2026-01-07 19:05:22'),
(975, 1, 'created', 'User baru dibuat: DERI SANJAYA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:05:23', '2026-01-07 19:05:23'),
(976, 1, 'created', 'User baru dibuat: DONI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:05:23', '2026-01-07 19:05:23'),
(977, 1, 'created', 'User baru dibuat: DWI ALDIKA NUGROHO (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:05:24', '2026-01-07 19:05:24'),
(978, 1, 'created', 'User baru dibuat: FADZLI RABBANI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:05:24', '2026-01-07 19:05:24'),
(979, 1, 'created', 'User baru dibuat: FARIJ AKBAR (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:05:25', '2026-01-07 19:05:25'),
(980, 1, 'created', 'User baru dibuat: FATTAN AMRIZAL SYA\'BANI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:05:25', '2026-01-07 19:05:25'),
(981, 1, 'created', 'User baru dibuat: FEBRIAN IMAM SANTOSO (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:05:26', '2026-01-07 19:05:26'),
(982, 1, 'created', 'User baru dibuat: Gangga Aji Saputra (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:05:26', '2026-01-07 19:05:26'),
(983, 1, 'created', 'User baru dibuat: GHANIF NUR FADILA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:05:27', '2026-01-07 19:05:27'),
(984, 1, 'created', 'User baru dibuat: GILANG ADI SABEKTI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:05:28', '2026-01-07 19:05:28'),
(985, 1, 'created', 'User baru dibuat: HOKY KRISDIYANTO (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:05:28', '2026-01-07 19:05:28'),
(986, 1, 'created', 'User baru dibuat: KIKI FAREL (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:05:28', '2026-01-07 19:05:28'),
(987, 1, 'created', 'User baru dibuat: MUHAMAD RIJAL RAHMATULLOH (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:05:29', '2026-01-07 19:05:29'),
(988, 1, 'created', 'User baru dibuat: NURUL PAZRI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:05:29', '2026-01-07 19:05:29'),
(989, 1, 'created', 'User baru dibuat: PAMBAYUNING YUAN PRAMESTI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:05:30', '2026-01-07 19:05:30'),
(990, 1, 'created', 'User baru dibuat: REHAN ANURI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:05:30', '2026-01-07 19:05:30'),
(991, 1, 'created', 'User baru dibuat: RIZKI SAPUTRA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:05:31', '2026-01-07 19:05:31'),
(992, 1, 'created', 'User baru dibuat: RIZQI ADITYA SAPUTRA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:05:31', '2026-01-07 19:05:31'),
(993, 1, 'created', 'User baru dibuat: Soni Kurniawan (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:05:32', '2026-01-07 19:05:32'),
(994, 1, 'created', 'User baru dibuat: SULTAN HASAN (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:05:33', '2026-01-07 19:05:33'),
(995, 1, 'created', 'User baru dibuat: TRIONO JAKA SAPUTRA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:05:33', '2026-01-07 19:05:33'),
(996, 1, 'created', 'User baru dibuat: UJANG IRWANSAH (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:05:33', '2026-01-07 19:05:33'),
(997, 1, 'created', 'User baru dibuat: Wahyu Saputra (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:05:34', '2026-01-07 19:05:34'),
(998, 1, 'created', 'User baru dibuat: WISNU HANAFI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:05:34', '2026-01-07 19:05:34'),
(999, 1, 'created', 'User baru dibuat: YOGA PRATAMA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:05:35', '2026-01-07 19:05:35'),
(1000, 1, 'created', 'User baru dibuat: ZAKI PRASTIO (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:05:35', '2026-01-07 19:05:35'),
(1001, 1, 'created', 'User baru dibuat: ANGGITA RIANY (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:08:36', '2026-01-07 19:08:36'),
(1002, 1, 'created', 'User baru dibuat: DIAS AYU LESTARI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:08:37', '2026-01-07 19:08:37'),
(1003, 1, 'created', 'User baru dibuat: DIVA INDAH AGUSTINA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:08:38', '2026-01-07 19:08:38'),
(1004, 1, 'created', 'User baru dibuat: FAIHA NADILA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:08:38', '2026-01-07 19:08:38'),
(1005, 1, 'created', 'User baru dibuat: Firda Juwita Zul Faliana (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:08:39', '2026-01-07 19:08:39'),
(1006, 1, 'created', 'User baru dibuat: Indah Safarah Fitria (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:08:40', '2026-01-07 19:08:40'),
(1007, 1, 'created', 'User baru dibuat: INDIRA AYU ISMANDARI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:08:41', '2026-01-07 19:08:41'),
(1008, 1, 'created', 'User baru dibuat: Inez Evan (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:08:41', '2026-01-07 19:08:41'),
(1009, 1, 'created', 'User baru dibuat: JESIKA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:08:42', '2026-01-07 19:08:42'),
(1010, 1, 'created', 'User baru dibuat: JULIA PUTRI AYU DELVIRA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:08:42', '2026-01-07 19:08:42'),
(1011, 1, 'created', 'User baru dibuat: MARSELA ELISTIYANA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:08:43', '2026-01-07 19:08:43'),
(1012, 1, 'created', 'User baru dibuat: NADIYA ADI SAPUTRI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:08:44', '2026-01-07 19:08:44'),
(1013, 1, 'created', 'User baru dibuat: Nazwa Salsabila (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:08:44', '2026-01-07 19:08:44'),
(1014, 1, 'created', 'User baru dibuat: NISA NURAINI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:08:45', '2026-01-07 19:08:45'),
(1015, 1, 'created', 'User baru dibuat: NOVINA SRI RAHAYU (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:08:46', '2026-01-07 19:08:46'),
(1016, 1, 'created', 'User baru dibuat: REVA RIYANTI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:08:46', '2026-01-07 19:08:46'),
(1017, 1, 'created', 'User baru dibuat: SARAH AGUSTIN (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:08:47', '2026-01-07 19:08:47'),
(1018, 1, 'created', 'User baru dibuat: Silviana Lintang Andriyani (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:08:47', '2026-01-07 19:08:47'),
(1019, 1, 'created', 'User baru dibuat: SYAHLA MEILIA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:08:48', '2026-01-07 19:08:48'),
(1020, 1, 'created', 'User baru dibuat: TIARA DWI SAFITRI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:08:49', '2026-01-07 19:08:49'),
(1021, 1, 'created', 'User baru dibuat: UNES AMANIA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:08:50', '2026-01-07 19:08:50'),
(1022, 1, 'created', 'User baru dibuat: Vivin Hayati Hasanah (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:08:51', '2026-01-07 19:08:51'),
(1023, 1, 'created', 'User baru dibuat: Widia Aulia Assyifa (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:08:52', '2026-01-07 19:08:52'),
(1024, 1, 'created', 'User baru dibuat: WINA ROSMILA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:08:53', '2026-01-07 19:08:53'),
(1025, 1, 'created', 'User baru dibuat: YETI WULAN SARI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:08:53', '2026-01-07 19:08:53'),
(1026, 1, 'created', 'User baru dibuat: Zazkiatul Aulia (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:08:54', '2026-01-07 19:08:54'),
(1027, 1, 'created', 'User baru dibuat: AULIDIYA MUHAYATI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:08:55', '2026-01-07 19:08:55'),
(1028, 1, 'created', 'User baru dibuat: Auliya Ramadhani (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:08:55', '2026-01-07 19:08:55'),
(1029, 1, 'created', 'User baru dibuat: Cantika Febriyanti (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:08:56', '2026-01-07 19:08:56'),
(1030, 1, 'created', 'User baru dibuat: CHINTYA SABRIANA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:08:56', '2026-01-07 19:08:56'),
(1031, 1, 'created', 'User baru dibuat: DANITA NURCAHYANI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:08:59', '2026-01-07 19:08:59'),
(1032, 1, 'created', 'User baru dibuat: Dwi Baitulrohmah (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:08:59', '2026-01-07 19:08:59'),
(1033, 1, 'created', 'User baru dibuat: EMILIA PUTRI MAHARANI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:09:00', '2026-01-07 19:09:00'),
(1034, 1, 'created', 'User baru dibuat: FITRI NUR OKTAVIYANI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:09:01', '2026-01-07 19:09:01'),
(1035, 1, 'created', 'User baru dibuat: Halimatu Saadiah (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:09:01', '2026-01-07 19:09:01'),
(1036, 1, 'created', 'User baru dibuat: ISNAINI NUR FAUZIYAH (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:09:02', '2026-01-07 19:09:02'),
(1037, 1, 'created', 'User baru dibuat: JELITA NUR OKTAVIANI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:09:03', '2026-01-07 19:09:03'),
(1038, 1, 'created', 'User baru dibuat: KHALIMATUS SAADIYAH (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:09:04', '2026-01-07 19:09:04'),
(1039, 1, 'created', 'User baru dibuat: Luki Adi Wijaya (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:09:05', '2026-01-07 19:09:05'),
(1040, 1, 'created', 'User baru dibuat: Nadia Rahmawati (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:09:06', '2026-01-07 19:09:06'),
(1041, 1, 'created', 'User baru dibuat: Nuryeti Atmah (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:09:08', '2026-01-07 19:09:08'),
(1042, 1, 'created', 'User baru dibuat: Salsa Fadilla Turohmah (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:09:08', '2026-01-07 19:09:08'),
(1043, 1, 'created', 'User baru dibuat: SANTIKA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:09:09', '2026-01-07 19:09:09'),
(1044, 1, 'created', 'User baru dibuat: SHINTIA DEWI ZHULIASARI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:09:10', '2026-01-07 19:09:10'),
(1045, 1, 'created', 'User baru dibuat: SINTA DWI ARYANTI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:09:11', '2026-01-07 19:09:11'),
(1046, 1, 'created', 'User baru dibuat: Siti Marwah Nurhayani (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:09:11', '2026-01-07 19:09:11'),
(1047, 1, 'created', 'User baru dibuat: Sukma Wijaya (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:09:12', '2026-01-07 19:09:12'),
(1048, 1, 'created', 'User baru dibuat: Tika Lestari (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:09:12', '2026-01-07 19:09:12'),
(1049, 1, 'created', 'User baru dibuat: TRI YULIANA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:09:13', '2026-01-07 19:09:13'),
(1050, 1, 'created', 'User baru dibuat: ZAHRA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:09:14', '2026-01-07 19:09:14'),
(1051, 1, 'created', 'User baru dibuat: ABIM RIANSYAH (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:10:49', '2026-01-07 19:10:49'),
(1052, 1, 'created', 'User baru dibuat: Ade Rizkita Fitri (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:10:49', '2026-01-07 19:10:49'),
(1053, 1, 'created', 'User baru dibuat: ADIRA AGUSTINA DEWI LESTARI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:10:50', '2026-01-07 19:10:50'),
(1054, 1, 'created', 'User baru dibuat: AISAH DWI NINGRUM (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:10:51', '2026-01-07 19:10:51'),
(1055, 1, 'created', 'User baru dibuat: AULIA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:10:52', '2026-01-07 19:10:52'),
(1056, 1, 'created', 'User baru dibuat: CINTA NUR FEBIYANI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:10:53', '2026-01-07 19:10:53'),
(1057, 1, 'created', 'User baru dibuat: DIKI PRIYANTO (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:10:53', '2026-01-07 19:10:53'),
(1058, 1, 'created', 'User baru dibuat: ENI SURYANI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:10:54', '2026-01-07 19:10:54'),
(1059, 1, 'created', 'User baru dibuat: FINFIN APRILIANINGSIH (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:10:55', '2026-01-07 19:10:55'),
(1060, 1, 'created', 'User baru dibuat: Holfiyatun Nasiroh (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:10:56', '2026-01-07 19:10:56'),
(1061, 1, 'created', 'User baru dibuat: INDRI YUNIARTI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:10:57', '2026-01-07 19:10:57'),
(1062, 1, 'created', 'User baru dibuat: Kesya Nurhasanah (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:10:58', '2026-01-07 19:10:58'),
(1063, 1, 'created', 'User baru dibuat: LENA SARI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:10:59', '2026-01-07 19:10:59'),
(1064, 1, 'created', 'User baru dibuat: Lutfiyatul Fatimah (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:10:59', '2026-01-07 19:10:59'),
(1065, 1, 'created', 'User baru dibuat: NAFA SUCIATI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:11:00', '2026-01-07 19:11:00'),
(1066, 1, 'created', 'User baru dibuat: SELA PEBRIYANTI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:11:01', '2026-01-07 19:11:01'),
(1067, 1, 'created', 'User baru dibuat: SEVIRA RAKHMADANI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:11:02', '2026-01-07 19:11:02'),
(1068, 1, 'created', 'User baru dibuat: SITI ZULAEHA LESTARI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:11:03', '2026-01-07 19:11:03'),
(1069, 1, 'created', 'User baru dibuat: SUCI NOVITA SARI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:11:03', '2026-01-07 19:11:03'),
(1070, 1, 'created', 'User baru dibuat: SYARA DWI AJIJAH (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:11:04', '2026-01-07 19:11:04');
INSERT INTO `log_user` (`id`, `user_id`, `action`, `description`, `ip_address`, `user_agent`, `created_at`, `updated_at`) VALUES
(1071, 1, 'created', 'User baru dibuat: VIVIT PUTRIYANI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:11:05', '2026-01-07 19:11:05'),
(1072, 1, 'created', 'User baru dibuat: ZAHRA NURUSSHIFA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:11:06', '2026-01-07 19:11:06'),
(1073, 1, 'created', 'User baru dibuat: AIN DIASTUTI RAHAYU (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:11:06', '2026-01-07 19:11:06'),
(1074, 1, 'created', 'User baru dibuat: Alifa Chika Meivia (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:11:07', '2026-01-07 19:11:07'),
(1075, 1, 'created', 'User baru dibuat: ANA RAHAYU NINGSIH (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:11:07', '2026-01-07 19:11:07'),
(1076, 1, 'created', 'User baru dibuat: BUNGA HARMONI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:11:10', '2026-01-07 19:11:10'),
(1077, 1, 'created', 'User baru dibuat: DARA TRI LATIFAH (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:11:10', '2026-01-07 19:11:10'),
(1078, 1, 'created', 'User baru dibuat: Dian Apriyani (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:11:11', '2026-01-07 19:11:11'),
(1079, 1, 'created', 'User baru dibuat: DILA APRILLIANA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:11:12', '2026-01-07 19:11:12'),
(1080, 1, 'created', 'User baru dibuat: Fajri Mulya Fitri (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:11:12', '2026-01-07 19:11:12'),
(1081, 1, 'created', 'User baru dibuat: INDAH JAMI\'ATUN LESTARI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:11:14', '2026-01-07 19:11:14'),
(1082, 1, 'created', 'User baru dibuat: Jingga Putri Lestari (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:11:15', '2026-01-07 19:11:15'),
(1083, 1, 'created', 'User baru dibuat: Junita Rahmawati (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:11:15', '2026-01-07 19:11:15'),
(1084, 1, 'created', 'User baru dibuat: JUWITA SUKMA RAHAYU (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:11:16', '2026-01-07 19:11:16'),
(1085, 1, 'created', 'User baru dibuat: KARINA KHOLIFAH (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:11:17', '2026-01-07 19:11:17'),
(1086, 1, 'created', 'User baru dibuat: KEYSA DYAH KUMALASARI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:11:18', '2026-01-07 19:11:18'),
(1087, 1, 'created', 'User baru dibuat: LISNA FIGIYANI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:11:19', '2026-01-07 19:11:19'),
(1088, 1, 'created', 'User baru dibuat: Lolyta Putriana Hilmantoro (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:11:19', '2026-01-07 19:11:19'),
(1089, 1, 'created', 'User baru dibuat: NABILA SAFITRI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:11:20', '2026-01-07 19:11:20'),
(1090, 1, 'created', 'User baru dibuat: NESTI SUNDARI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:11:21', '2026-01-07 19:11:21'),
(1091, 1, 'created', 'User baru dibuat: OCA YUANITA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:11:22', '2026-01-07 19:11:22'),
(1092, 1, 'created', 'User baru dibuat: SELLY SESILIA AL FIANTI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:11:23', '2026-01-07 19:11:23'),
(1093, 1, 'created', 'User baru dibuat: Sevina Tri Amalia (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:11:23', '2026-01-07 19:11:23'),
(1094, 1, 'created', 'User baru dibuat: SHINTIA INDAH LESTARI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:11:24', '2026-01-07 19:11:24'),
(1095, 1, 'created', 'User baru dibuat: SITI KIRANI NURVIANA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:11:25', '2026-01-07 19:11:25'),
(1096, 1, 'created', 'User baru dibuat: SRI RAHAYU (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:11:26', '2026-01-07 19:11:26'),
(1097, 1, 'created', 'User baru dibuat: SYAFKAH FALIYAH RATMONO (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:11:26', '2026-01-07 19:11:26'),
(1098, 1, 'created', 'User baru dibuat: TAAT PUJI RAHAYU (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:11:27', '2026-01-07 19:11:27'),
(1099, 1, 'created', 'User baru dibuat: Tiara Ramadhani (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:11:27', '2026-01-07 19:11:27'),
(1100, 1, 'created', 'User baru dibuat: WAHYUNINGSIH (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:11:28', '2026-01-07 19:11:28'),
(1101, 1, 'created', 'User baru dibuat: ABDUL PAKIH (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:11:29', '2026-01-07 19:11:29'),
(1102, 1, 'created', 'User baru dibuat: ABIGAIL VANIA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:11:30', '2026-01-07 19:11:30'),
(1103, 1, 'created', 'User baru dibuat: Agus Saputra (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:11:30', '2026-01-07 19:11:30'),
(1104, 1, 'created', 'User baru dibuat: AISYAH NURFADHILAH (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:11:31', '2026-01-07 19:11:31'),
(1105, 1, 'created', 'User baru dibuat: AKHSAN SAEFANI MA\'RUF (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:11:32', '2026-01-07 19:11:32'),
(1106, 1, 'created', 'User baru dibuat: ANIATURROHMAH (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:11:34', '2026-01-07 19:11:34'),
(1107, 1, 'created', 'User baru dibuat: ASYAM ILHAM ALHAKIM (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:11:34', '2026-01-07 19:11:34'),
(1108, 1, 'created', 'User baru dibuat: DAVINA SIFA VELLISA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:11:35', '2026-01-07 19:11:35'),
(1109, 1, 'created', 'User baru dibuat: DIAN RIZQY NUGROHO (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:11:36', '2026-01-07 19:11:36'),
(1110, 1, 'created', 'User baru dibuat: Fien Zahra Sawittri (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:11:36', '2026-01-07 19:11:36'),
(1111, 1, 'created', 'User baru dibuat: FISAL ADI KURNIAWAN (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:11:37', '2026-01-07 19:11:37'),
(1112, 1, 'created', 'User baru dibuat: GILANG AJI PRAYOGA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:11:38', '2026-01-07 19:11:38'),
(1113, 1, 'created', 'User baru dibuat: HERLAN SANTOSA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:11:38', '2026-01-07 19:11:38'),
(1114, 1, 'created', 'User baru dibuat: HIBATULLAH NAUFAL (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:11:39', '2026-01-07 19:11:39'),
(1115, 1, 'created', 'User baru dibuat: KHILYATUL QINAYAH (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:11:40', '2026-01-07 19:11:40'),
(1116, 1, 'created', 'User baru dibuat: MUHAMAD FARID ARISKI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:11:42', '2026-01-07 19:11:42'),
(1117, 1, 'created', 'User baru dibuat: MUHAMMAD YUSUF SUPRIYATNA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:11:43', '2026-01-07 19:11:43'),
(1118, 1, 'created', 'User baru dibuat: NAZWA FITRIYANI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:11:44', '2026-01-07 19:11:44'),
(1119, 1, 'created', 'User baru dibuat: NIHAYAH BELLA ADINA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:11:44', '2026-01-07 19:11:44'),
(1120, 1, 'created', 'User baru dibuat: NURHASIM (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:11:45', '2026-01-07 19:11:45'),
(1121, 1, 'created', 'User baru dibuat: PUTRI MARLINA RAHAYU (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:11:46', '2026-01-07 19:11:46'),
(1122, 1, 'created', 'User baru dibuat: RANI DIAH ASTUTI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:11:46', '2026-01-07 19:11:46'),
(1123, 1, 'created', 'User baru dibuat: REZA AUXILLIA SEKAR ZIVANNA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:11:47', '2026-01-07 19:11:47'),
(1124, 1, 'created', 'User baru dibuat: REZHA SULISTYA NINGSIH (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:11:47', '2026-01-07 19:11:47'),
(1125, 1, 'created', 'User baru dibuat: RIDHO RAMADANI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:11:47', '2026-01-07 19:11:47'),
(1126, 1, 'created', 'User baru dibuat: RIFKI SEBASTIAR (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:11:48', '2026-01-07 19:11:48'),
(1127, 1, 'created', 'User baru dibuat: SISKA DWI LARASATI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:11:49', '2026-01-07 19:11:49'),
(1128, 1, 'created', 'User baru dibuat: SITI NURUS SYIFA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:11:49', '2026-01-07 19:11:49'),
(1129, 1, 'created', 'User baru dibuat: WINTA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:11:50', '2026-01-07 19:11:50'),
(1130, 1, 'created', 'User baru dibuat: ZAGHWA OKTAVIA PRIANI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:11:50', '2026-01-07 19:11:50'),
(1131, 1, 'created', 'User baru dibuat: ZAHRA ALYCIA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:11:51', '2026-01-07 19:11:51'),
(1132, 1, 'created', 'User baru dibuat: ZULFAH RAUDATUL ZANNAH (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:11:51', '2026-01-07 19:11:51'),
(1133, 1, 'created', 'User baru dibuat: AHMAD REZA RAMADANI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:11:52', '2026-01-07 19:11:52'),
(1134, 1, 'created', 'User baru dibuat: ALFIATUL (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:11:52', '2026-01-07 19:11:52'),
(1135, 1, 'created', 'User baru dibuat: ANDINA RAHMASARI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:11:52', '2026-01-07 19:11:52'),
(1136, 1, 'created', 'User baru dibuat: ANDRIAN (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:11:53', '2026-01-07 19:11:53'),
(1137, 1, 'created', 'User baru dibuat: CHRISNA RANGGA PRATAMA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:11:54', '2026-01-07 19:11:54'),
(1138, 1, 'created', 'User baru dibuat: DHIANY SILVIA CAHYA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:11:54', '2026-01-07 19:11:54'),
(1139, 1, 'created', 'User baru dibuat: Dila Lutvia Meylani (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:11:55', '2026-01-07 19:11:55'),
(1140, 1, 'created', 'User baru dibuat: Fajar Gilar Saputra (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:11:55', '2026-01-07 19:11:55'),
(1141, 1, 'created', 'User baru dibuat: FARHAN KHOERUNNAS (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:11:56', '2026-01-07 19:11:56'),
(1142, 1, 'created', 'User baru dibuat: Gagas Kurniawan (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:11:56', '2026-01-07 19:11:56'),
(1143, 1, 'created', 'User baru dibuat: IFON FEBRIANI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:11:57', '2026-01-07 19:11:57'),
(1144, 1, 'created', 'User baru dibuat: IHFA NUR INSANI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:11:57', '2026-01-07 19:11:57'),
(1145, 1, 'created', 'User baru dibuat: KASELINDA AGUSTIN (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:11:58', '2026-01-07 19:11:58'),
(1146, 1, 'created', 'User baru dibuat: KEVIN ANDREAN PRATAMA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:11:59', '2026-01-07 19:11:59'),
(1147, 1, 'created', 'User baru dibuat: MUHAMAD FAJAR SATRIO (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:11:59', '2026-01-07 19:11:59'),
(1148, 1, 'created', 'User baru dibuat: NANDA ANDRIYANI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:12:00', '2026-01-07 19:12:00'),
(1149, 1, 'created', 'User baru dibuat: Nur Rohmah Ramdani (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:12:00', '2026-01-07 19:12:00'),
(1150, 1, 'created', 'User baru dibuat: RADIT SAPUTRA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:12:01', '2026-01-07 19:12:01'),
(1151, 1, 'created', 'User baru dibuat: Raka Aditya Pratama (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:12:01', '2026-01-07 19:12:01'),
(1152, 1, 'created', 'User baru dibuat: Refan Aditiya Permana (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:12:02', '2026-01-07 19:12:02'),
(1153, 1, 'created', 'User baru dibuat: Reza Apriliyanto (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:12:02', '2026-01-07 19:12:02'),
(1154, 1, 'created', 'User baru dibuat: RIDWAN JAYA SAPUTRA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:12:03', '2026-01-07 19:12:03'),
(1155, 1, 'created', 'User baru dibuat: Rini Puspita Sari (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:12:03', '2026-01-07 19:12:03'),
(1156, 1, 'created', 'User baru dibuat: riska ayu pangestu (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:12:04', '2026-01-07 19:12:04'),
(1157, 1, 'created', 'User baru dibuat: Rizal Aji Nugroho (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:12:05', '2026-01-07 19:12:05'),
(1158, 1, 'created', 'User baru dibuat: RIZKI MAULANA IBRAHIM (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:12:05', '2026-01-07 19:12:05'),
(1159, 1, 'created', 'User baru dibuat: Sandi Saputra (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:12:06', '2026-01-07 19:12:06'),
(1160, 1, 'created', 'User baru dibuat: Satria Pratama (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:12:06', '2026-01-07 19:12:06'),
(1161, 1, 'created', 'User baru dibuat: SATRIO JANARA ARAFA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:12:07', '2026-01-07 19:12:07'),
(1162, 1, 'created', 'User baru dibuat: SOFA HASAN FALSAFI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:12:07', '2026-01-07 19:12:07'),
(1163, 1, 'created', 'User baru dibuat: TYAS SEVY NAZZAHRA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:12:07', '2026-01-07 19:12:07'),
(1164, 1, 'created', 'User baru dibuat: Vega Diantari (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:12:08', '2026-01-07 19:12:08'),
(1165, 1, 'created', 'User baru dibuat: ADITYA WARMAN (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:12:53', '2026-01-07 19:12:53'),
(1166, 1, 'created', 'User baru dibuat: ALYA PITRIYANI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:12:54', '2026-01-07 19:12:54'),
(1167, 1, 'created', 'User baru dibuat: AULIA NABILA SAFITRI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:12:54', '2026-01-07 19:12:54'),
(1168, 1, 'created', 'User baru dibuat: AZRA FADILAH ARISTIANA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:12:55', '2026-01-07 19:12:55'),
(1169, 1, 'created', 'User baru dibuat: BAGAS SAPUTRA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:12:55', '2026-01-07 19:12:55'),
(1170, 1, 'created', 'User baru dibuat: BANGKIT ADI PRAYUGA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:12:56', '2026-01-07 19:12:56'),
(1171, 1, 'created', 'User baru dibuat: CHIKA AMELIA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:12:56', '2026-01-07 19:12:56'),
(1172, 1, 'created', 'User baru dibuat: DAFA JULIAN PRABOWO (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:12:57', '2026-01-07 19:12:57'),
(1173, 1, 'created', 'User baru dibuat: DESWITA NAZWA AZAHRA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:12:57', '2026-01-07 19:12:57'),
(1174, 1, 'created', 'User baru dibuat: DIKA BAGUS RAHAYU (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:12:58', '2026-01-07 19:12:58'),
(1175, 1, 'created', 'User baru dibuat: DWI TASYA OKTAVIANA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:12:58', '2026-01-07 19:12:58'),
(1176, 1, 'created', 'User baru dibuat: DWIKI ANDHIKA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:12:59', '2026-01-07 19:12:59'),
(1177, 1, 'created', 'User baru dibuat: HELIANA HERMAN (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:12:59', '2026-01-07 19:12:59'),
(1178, 1, 'created', 'User baru dibuat: IDZAN ADIANTO (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:13:00', '2026-01-07 19:13:00'),
(1179, 1, 'created', 'User baru dibuat: Kalvina Novela (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:13:00', '2026-01-07 19:13:00'),
(1180, 1, 'created', 'User baru dibuat: LAURA BUNGA SARI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:13:01', '2026-01-07 19:13:01'),
(1181, 1, 'created', 'User baru dibuat: Leman Adi Prasetia (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:13:01', '2026-01-07 19:13:01'),
(1182, 1, 'created', 'User baru dibuat: LITA FELINA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:13:02', '2026-01-07 19:13:02'),
(1183, 1, 'created', 'User baru dibuat: MUHAMMAD ILHAM NURKHOLIQ (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:13:02', '2026-01-07 19:13:02'),
(1184, 1, 'created', 'User baru dibuat: MUTMAINAH MUTIARA LESTARI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:13:03', '2026-01-07 19:13:03'),
(1185, 1, 'created', 'User baru dibuat: RAHMA LUGINA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:13:04', '2026-01-07 19:13:04'),
(1186, 1, 'created', 'User baru dibuat: RAMADHANI SENDYANTORO (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:13:04', '2026-01-07 19:13:04'),
(1187, 1, 'created', 'User baru dibuat: REVI DAMAYANTI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:13:04', '2026-01-07 19:13:04'),
(1188, 1, 'created', 'User baru dibuat: RIEFAN MAULANA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:13:05', '2026-01-07 19:13:05'),
(1189, 1, 'created', 'User baru dibuat: SALWA DWI ARYANTI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:13:05', '2026-01-07 19:13:05'),
(1190, 1, 'created', 'User baru dibuat: SANDRA OKTAVIA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:13:06', '2026-01-07 19:13:06'),
(1191, 1, 'created', 'User baru dibuat: Satria Aldiansyah (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:13:07', '2026-01-07 19:13:07'),
(1192, 1, 'created', 'User baru dibuat: SIFA MUTIARA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:13:07', '2026-01-07 19:13:07'),
(1193, 1, 'created', 'User baru dibuat: TALIA STEVANI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:13:07', '2026-01-07 19:13:07'),
(1194, 1, 'created', 'User baru dibuat: THALITA ALYA PUTRI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:13:08', '2026-01-07 19:13:08'),
(1195, 1, 'created', 'User baru dibuat: Tri Bayu Nurohman (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:13:08', '2026-01-07 19:13:08'),
(1196, 1, 'created', 'User baru dibuat: Tri Nuraeni (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:13:09', '2026-01-07 19:13:09'),
(1197, 1, 'created', 'User baru dibuat: VIDO RIFKY DENIRO (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:13:09', '2026-01-07 19:13:09'),
(1198, 1, 'created', 'User baru dibuat: AFINUR ISNAENI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:13:10', '2026-01-07 19:13:10'),
(1199, 1, 'created', 'User baru dibuat: Ahmad Mustakim (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:13:10', '2026-01-07 19:13:10'),
(1200, 1, 'created', 'User baru dibuat: Ari Gusti Setiawan (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:13:11', '2026-01-07 19:13:11'),
(1201, 1, 'created', 'User baru dibuat: ARINA HOLIMATUL FATIMAH (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:13:12', '2026-01-07 19:13:12'),
(1202, 1, 'created', 'User baru dibuat: DIKA ABDY PRAMONO (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:13:12', '2026-01-07 19:13:12'),
(1203, 1, 'created', 'User baru dibuat: FACHRY FAJAR DESTIAN (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:13:13', '2026-01-07 19:13:13'),
(1204, 1, 'created', 'User baru dibuat: FIQI ALFRIANSYAH (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:13:13', '2026-01-07 19:13:13'),
(1205, 1, 'created', 'User baru dibuat: FIRA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:13:14', '2026-01-07 19:13:14'),
(1206, 1, 'created', 'User baru dibuat: HAFIZ REIFANSYAH (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:13:14', '2026-01-07 19:13:14'),
(1207, 1, 'created', 'User baru dibuat: Isfa Fahrizal (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:13:14', '2026-01-07 19:13:14'),
(1208, 1, 'created', 'User baru dibuat: LELI NUR HIKMA WATI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:13:15', '2026-01-07 19:13:15'),
(1209, 1, 'created', 'User baru dibuat: MIKO REZI WIBOWO (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:13:15', '2026-01-07 19:13:15'),
(1210, 1, 'created', 'User baru dibuat: Muhamad Erwin Juniantoro (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:13:16', '2026-01-07 19:13:16'),
(1211, 1, 'created', 'User baru dibuat: MUHAMMAD HAFID (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:13:17', '2026-01-07 19:13:17'),
(1212, 1, 'created', 'User baru dibuat: MUHAMMAD NAZAM NAFI\'AN (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:13:17', '2026-01-07 19:13:17'),
(1213, 1, 'created', 'User baru dibuat: MUHAMMAD TEGAR PANGESTU (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:13:17', '2026-01-07 19:13:17'),
(1214, 1, 'created', 'User baru dibuat: NASWA RAMADHANI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:13:18', '2026-01-07 19:13:18'),
(1215, 1, 'created', 'User baru dibuat: PUTRI WULANDARI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:13:19', '2026-01-07 19:13:19'),
(1216, 1, 'created', 'User baru dibuat: REGITA NURAHMAH (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:13:19', '2026-01-07 19:13:19'),
(1217, 1, 'created', 'User baru dibuat: RETNO AYUNINGSIH (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:13:20', '2026-01-07 19:13:20'),
(1218, 1, 'created', 'User baru dibuat: RIDHO WARIHSAN (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:13:20', '2026-01-07 19:13:20'),
(1219, 1, 'created', 'User baru dibuat: ROHAMAH WANTI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:13:21', '2026-01-07 19:13:21'),
(1220, 1, 'created', 'User baru dibuat: ROSALINDA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:13:21', '2026-01-07 19:13:21'),
(1221, 1, 'created', 'User baru dibuat: SANDI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:13:22', '2026-01-07 19:13:22'),
(1222, 1, 'created', 'User baru dibuat: Santiyasari (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:13:22', '2026-01-07 19:13:22'),
(1223, 1, 'created', 'User baru dibuat: SITI NURYAH RAHAYU (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:13:23', '2026-01-07 19:13:23'),
(1224, 1, 'created', 'User baru dibuat: SUCI ANGGRAENI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:13:23', '2026-01-07 19:13:23'),
(1225, 1, 'created', 'User baru dibuat: TAMESYA NENDA SAFIRA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:13:25', '2026-01-07 19:13:25'),
(1226, 1, 'created', 'User baru dibuat: TAUFA AFRIANSAH (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:13:25', '2026-01-07 19:13:25'),
(1227, 1, 'created', 'User baru dibuat: Tio Saputra (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:13:26', '2026-01-07 19:13:26'),
(1228, 1, 'created', 'User baru dibuat: WAHYU ADHI ALGIFARY (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:13:26', '2026-01-07 19:13:26'),
(1229, 1, 'created', 'User baru dibuat: Adi Saputra (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:13:26', '2026-01-07 19:13:26'),
(1230, 1, 'created', 'User baru dibuat: ADITYA FAUZI ZAIN (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:13:27', '2026-01-07 19:13:27'),
(1231, 1, 'created', 'User baru dibuat: ADRIAN NUR ROHMAN (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:13:27', '2026-01-07 19:13:27'),
(1232, 1, 'created', 'User baru dibuat: AJI GALIH PRASETYO (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:13:28', '2026-01-07 19:13:28'),
(1233, 1, 'created', 'User baru dibuat: ALDI AYRIAN (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:13:28', '2026-01-07 19:13:28'),
(1234, 1, 'created', 'User baru dibuat: ALI MA\'RUF (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:13:29', '2026-01-07 19:13:29'),
(1235, 1, 'created', 'User baru dibuat: CHOIRUL ZAKI RAMDANI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:13:30', '2026-01-07 19:13:30'),
(1236, 1, 'created', 'User baru dibuat: EKSA JULIO PANGESTU (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:13:30', '2026-01-07 19:13:30'),
(1237, 1, 'created', 'User baru dibuat: FAHRI MUHAMAD FAISAL (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:13:30', '2026-01-07 19:13:30'),
(1238, 1, 'created', 'User baru dibuat: FAHRI RAHMADAN (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:13:31', '2026-01-07 19:13:31'),
(1239, 1, 'created', 'User baru dibuat: IBNU NGAZIZATULNGUBAIDILLAH (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:13:31', '2026-01-07 19:13:31'),
(1240, 1, 'created', 'User baru dibuat: IKHSAN HARI PRIANDIKA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:13:32', '2026-01-07 19:13:32'),
(1241, 1, 'created', 'User baru dibuat: KAKA NAJRIL (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:13:32', '2026-01-07 19:13:32'),
(1242, 1, 'created', 'User baru dibuat: MUHAMAD ALI AAS HUSAENI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:13:33', '2026-01-07 19:13:33'),
(1243, 1, 'created', 'User baru dibuat: Prasta nizzar Nur Luf Ayyi Maad Adnan (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:13:33', '2026-01-07 19:13:33'),
(1244, 1, 'created', 'User baru dibuat: RAFAH RAHMADDANI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:13:34', '2026-01-07 19:13:34'),
(1245, 1, 'created', 'User baru dibuat: RISKI ALAMSYAH (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:13:35', '2026-01-07 19:13:35'),
(1246, 1, 'created', 'User baru dibuat: SATRIA AJI NUGROHO (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:13:35', '2026-01-07 19:13:35'),
(1247, 1, 'created', 'User baru dibuat: SYAHRIL HASBI DWIJAYANTO (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:13:36', '2026-01-07 19:13:36'),
(1248, 1, 'created', 'User baru dibuat: WAHYU DWI PIRMANSYAH (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:13:36', '2026-01-07 19:13:36'),
(1249, 1, 'created', 'User baru dibuat: ADITYA DUTAMULYA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:13:37', '2026-01-07 19:13:37'),
(1250, 1, 'created', 'User baru dibuat: AFFAN NUR EDI NUGROHO (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:13:37', '2026-01-07 19:13:37'),
(1251, 1, 'created', 'User baru dibuat: AGHSAL MAULANA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:13:38', '2026-01-07 19:13:38'),
(1252, 1, 'created', 'User baru dibuat: AGIS MAULANA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:13:38', '2026-01-07 19:13:38'),
(1253, 1, 'created', 'User baru dibuat: AHMAD DANU (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:13:38', '2026-01-07 19:13:38'),
(1254, 1, 'created', 'User baru dibuat: AHMAD FAIZAL (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:13:39', '2026-01-07 19:13:39'),
(1255, 1, 'created', 'User baru dibuat: AHMAD RIJAL MUTTAQIN (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:13:40', '2026-01-07 19:13:40'),
(1256, 1, 'created', 'User baru dibuat: AKBAR KHAFID HAKIM ALGHOZALI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:13:41', '2026-01-07 19:13:41'),
(1257, 1, 'created', 'User baru dibuat: AKHMAD MAULANA BARIADI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:13:41', '2026-01-07 19:13:41'),
(1258, 1, 'created', 'User baru dibuat: AKMAL ALFIAN (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:13:41', '2026-01-07 19:13:41'),
(1259, 1, 'created', 'User baru dibuat: ARDIYANTO (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:13:42', '2026-01-07 19:13:42'),
(1260, 1, 'created', 'User baru dibuat: Bayu Aulia Daniswara (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:13:42', '2026-01-07 19:13:42'),
(1261, 1, 'created', 'User baru dibuat: Bayu Laksana (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:13:43', '2026-01-07 19:13:43'),
(1262, 1, 'created', 'User baru dibuat: BOBY SAEFULMILLAH (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:13:43', '2026-01-07 19:13:43'),
(1263, 1, 'created', 'User baru dibuat: DANNY RAMADHAN (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:13:44', '2026-01-07 19:13:44'),
(1264, 1, 'created', 'User baru dibuat: DIKA AJI SAPUTRA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:13:44', '2026-01-07 19:13:44'),
(1265, 1, 'created', 'User baru dibuat: Dika Bangun Prasetyo (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:13:45', '2026-01-07 19:13:45'),
(1266, 1, 'created', 'User baru dibuat: FAREL ADITYA RAMADHAN (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:13:46', '2026-01-07 19:13:46'),
(1267, 1, 'created', 'User baru dibuat: LATHIF MUBAROK (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:13:46', '2026-01-07 19:13:46'),
(1268, 1, 'created', 'User baru dibuat: MUHAMAD RAIHAN PRATAMA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:13:47', '2026-01-07 19:13:47'),
(1269, 1, 'created', 'User baru dibuat: MUHRON HANAFI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:13:47', '2026-01-07 19:13:47'),
(1270, 1, 'created', 'User baru dibuat: Rendi Budiyanto (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:13:48', '2026-01-07 19:13:48'),
(1271, 1, 'created', 'User baru dibuat: RIFANDI ADAM AHMADANI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:13:48', '2026-01-07 19:13:48'),
(1272, 1, 'created', 'User baru dibuat: Rifki Adi Saputra (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:13:48', '2026-01-07 19:13:48'),
(1273, 1, 'created', 'User baru dibuat: RIZAL RIZKI MAULANA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:13:49', '2026-01-07 19:13:49'),
(1274, 1, 'created', 'User baru dibuat: RIZKY ADITIYA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:13:49', '2026-01-07 19:13:49'),
(1275, 1, 'created', 'User baru dibuat: Satria Cahya Gumilang (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:13:50', '2026-01-07 19:13:50'),
(1276, 1, 'created', 'User baru dibuat: SATRIA FEBRIAN (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:13:51', '2026-01-07 19:13:51'),
(1277, 1, 'created', 'User baru dibuat: TEGAR ALFIANO (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:13:51', '2026-01-07 19:13:51');
INSERT INTO `log_user` (`id`, `user_id`, `action`, `description`, `ip_address`, `user_agent`, `created_at`, `updated_at`) VALUES
(1278, 1, 'created', 'User baru dibuat: Tora Andre Wirawan (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:13:52', '2026-01-07 19:13:52'),
(1279, 1, 'created', 'User baru dibuat: WAHYU MUHAMAD NURHIDAYAT (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:13:52', '2026-01-07 19:13:52'),
(1280, 1, 'created', 'User baru dibuat: ALI HIDAYAH NURY (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:14:53', '2026-01-07 19:14:53'),
(1281, 1, 'created', 'User baru dibuat: ALVA ARIYANSAH (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:14:53', '2026-01-07 19:14:53'),
(1282, 1, 'created', 'User baru dibuat: ANANDA SAPUTRA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:14:54', '2026-01-07 19:14:54'),
(1283, 1, 'created', 'User baru dibuat: ANDIKA PRATAMA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:14:54', '2026-01-07 19:14:54'),
(1284, 1, 'created', 'User baru dibuat: Andika Rangga Pamungkas (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:14:54', '2026-01-07 19:14:54'),
(1285, 1, 'created', 'User baru dibuat: Arif Maulana (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:14:55', '2026-01-07 19:14:55'),
(1286, 1, 'created', 'User baru dibuat: CHANDRA ADI RAMZZANI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:14:56', '2026-01-07 19:14:56'),
(1287, 1, 'created', 'User baru dibuat: Chandra Maulana (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:14:56', '2026-01-07 19:14:56'),
(1288, 1, 'created', 'User baru dibuat: FADHLAN AQILA LAJUARDHI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:14:57', '2026-01-07 19:14:57'),
(1289, 1, 'created', 'User baru dibuat: FAHRI IRAWAN (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:14:57', '2026-01-07 19:14:57'),
(1290, 1, 'created', 'User baru dibuat: FASYA GALUH PAMUNGKAS (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:14:57', '2026-01-07 19:14:57'),
(1291, 1, 'created', 'User baru dibuat: Hariansyah (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:14:58', '2026-01-07 19:14:58'),
(1292, 1, 'created', 'User baru dibuat: Ihksan Aldy Irwansyah (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:14:58', '2026-01-07 19:14:58'),
(1293, 1, 'created', 'User baru dibuat: IMRON JULIANTO (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:14:59', '2026-01-07 19:14:59'),
(1294, 1, 'created', 'User baru dibuat: MADHAN SHABIRI AUFAR (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:14:59', '2026-01-07 19:14:59'),
(1295, 1, 'created', 'User baru dibuat: MAULANA VAEROUS AL FARABI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:15:00', '2026-01-07 19:15:00'),
(1296, 1, 'created', 'User baru dibuat: MUHAMAD AMIN TOHAR (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:15:00', '2026-01-07 19:15:00'),
(1297, 1, 'created', 'User baru dibuat: MUHAMMAD BAYU ANWARI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:15:01', '2026-01-07 19:15:01'),
(1298, 1, 'created', 'User baru dibuat: NOVAL IRMAN MUKTI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:15:01', '2026-01-07 19:15:01'),
(1299, 1, 'created', 'User baru dibuat: RAFYYANSAH (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:15:02', '2026-01-07 19:15:02'),
(1300, 1, 'created', 'User baru dibuat: Rashultan Wicaksono Pamungkas (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:15:02', '2026-01-07 19:15:02'),
(1301, 1, 'created', 'User baru dibuat: REFANSYAH ALFANI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:15:03', '2026-01-07 19:15:03'),
(1302, 1, 'created', 'User baru dibuat: RIZKY ZULFATIAN (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:15:03', '2026-01-07 19:15:03'),
(1303, 1, 'created', 'User baru dibuat: SAEFUL NUR AKBAR (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:15:03', '2026-01-07 19:15:03'),
(1304, 1, 'created', 'User baru dibuat: SEPRI ADI SAPUTRA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:15:04', '2026-01-07 19:15:04'),
(1305, 1, 'created', 'User baru dibuat: SYAFIQ YADIKA NURFAKIH (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:15:05', '2026-01-07 19:15:05'),
(1306, 1, 'created', 'User baru dibuat: Syaiful Fitrian (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:15:06', '2026-01-07 19:15:06'),
(1307, 1, 'created', 'User baru dibuat: ZAHRAH APRILIANA PUTRI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:15:06', '2026-01-07 19:15:06'),
(1308, 1, 'created', 'User baru dibuat: ZAKY HUMAEDI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:15:06', '2026-01-07 19:15:06'),
(1309, 1, 'created', 'User baru dibuat: Zhidan Rizky Hartono (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:15:07', '2026-01-07 19:15:07'),
(1310, 1, 'created', 'User baru dibuat: ADAM ABI MULKHI FIRMAN HIDAYAT (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:15:07', '2026-01-07 19:15:07'),
(1311, 1, 'created', 'User baru dibuat: Ahmad Ikhsan Fauzi (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:15:08', '2026-01-07 19:15:08'),
(1312, 1, 'created', 'User baru dibuat: ALAN ERLANGGA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:15:08', '2026-01-07 19:15:08'),
(1313, 1, 'created', 'User baru dibuat: ANA AMELIA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:15:09', '2026-01-07 19:15:09'),
(1314, 1, 'created', 'User baru dibuat: ARIYA DANI SAPUTRA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:15:09', '2026-01-07 19:15:09'),
(1315, 1, 'created', 'User baru dibuat: BAYU FIRMANSAH (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:15:10', '2026-01-07 19:15:10'),
(1316, 1, 'created', 'User baru dibuat: IBRAHIM MOVIC (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:15:11', '2026-01-07 19:15:11'),
(1317, 1, 'created', 'User baru dibuat: Irwanto (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:15:11', '2026-01-07 19:15:11'),
(1318, 1, 'created', 'User baru dibuat: khanafi (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:15:11', '2026-01-07 19:15:11'),
(1319, 1, 'created', 'User baru dibuat: Marvel Avrijal Mubarok (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:15:12', '2026-01-07 19:15:12'),
(1320, 1, 'created', 'User baru dibuat: NUR ANWAR (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:15:13', '2026-01-07 19:15:13'),
(1321, 1, 'created', 'User baru dibuat: RAIHAN AL FAUZI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:15:13', '2026-01-07 19:15:13'),
(1322, 1, 'created', 'User baru dibuat: Rendi Windu Nugraha (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:15:13', '2026-01-07 19:15:13'),
(1323, 1, 'created', 'User baru dibuat: Revan Shavanda (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:15:14', '2026-01-07 19:15:14'),
(1324, 1, 'created', 'User baru dibuat: RIDHO PRASETYO (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:15:14', '2026-01-07 19:15:14'),
(1325, 1, 'created', 'User baru dibuat: Rifki Febrian (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:15:15', '2026-01-07 19:15:15'),
(1326, 1, 'created', 'User baru dibuat: RYAN ADRIANSYAH (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:15:16', '2026-01-07 19:15:16'),
(1327, 1, 'created', 'User baru dibuat: Samsul Ali Hidayat (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:15:16', '2026-01-07 19:15:16'),
(1328, 1, 'created', 'User baru dibuat: Yudistira Pamuji (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:15:17', '2026-01-07 19:15:17'),
(1329, 1, 'created', 'User baru dibuat: ZAHRAH FADILAH (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:15:17', '2026-01-07 19:15:17'),
(1330, 1, 'created', 'User baru dibuat: AFIK YAHYA UBAIDILAH (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:15:18', '2026-01-07 19:15:18'),
(1331, 1, 'created', 'User baru dibuat: ALDI ANGGORO (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:15:18', '2026-01-07 19:15:18'),
(1332, 1, 'created', 'User baru dibuat: ALIF ADI MAULANA SAPUTRA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:15:19', '2026-01-07 19:15:19'),
(1333, 1, 'created', 'User baru dibuat: ANANDA PUTRA SYAHRUR RAYA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:15:19', '2026-01-07 19:15:19'),
(1334, 1, 'created', 'User baru dibuat: ARZETI EGI APRILIANI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:15:19', '2026-01-07 19:15:19'),
(1335, 1, 'created', 'User baru dibuat: ATTAHIA BILAL (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:15:20', '2026-01-07 19:15:20'),
(1336, 1, 'created', 'User baru dibuat: AZMI IHWANUL MAHFUD (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:15:21', '2026-01-07 19:15:21'),
(1337, 1, 'created', 'User baru dibuat: AZREL FIRMANSYAH (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:15:21', '2026-01-07 19:15:21'),
(1338, 1, 'created', 'User baru dibuat: CACA MUSTOPA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:15:22', '2026-01-07 19:15:22'),
(1339, 1, 'created', 'User baru dibuat: CAHYO ARI SIGIT (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:15:22', '2026-01-07 19:15:22'),
(1340, 1, 'created', 'User baru dibuat: DANAR SETYO HASTORO (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:15:23', '2026-01-07 19:15:23'),
(1341, 1, 'created', 'User baru dibuat: Danu Adli Iyansyah (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:15:23', '2026-01-07 19:15:23'),
(1342, 1, 'created', 'User baru dibuat: DICKY RAMDANI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:15:24', '2026-01-07 19:15:24'),
(1343, 1, 'created', 'User baru dibuat: EVAN SETIAWAN (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:15:24', '2026-01-07 19:15:24'),
(1344, 1, 'created', 'User baru dibuat: FA\'IQ ISNANDI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:15:24', '2026-01-07 19:15:24'),
(1345, 1, 'created', 'User baru dibuat: FAAIZ RAMADHAN (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:15:26', '2026-01-07 19:15:26'),
(1346, 1, 'created', 'User baru dibuat: Fahkri Rizki Arsyah (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:15:26', '2026-01-07 19:15:26'),
(1347, 1, 'created', 'User baru dibuat: FAREL MUARIF (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:15:26', '2026-01-07 19:15:26'),
(1348, 1, 'created', 'User baru dibuat: Ihza Malzen (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:15:27', '2026-01-07 19:15:27'),
(1349, 1, 'created', 'User baru dibuat: IMAM ARIF NUGROHO (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:15:27', '2026-01-07 19:15:27'),
(1350, 1, 'created', 'User baru dibuat: IMAM WIDAYAH SAFUTRA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:15:28', '2026-01-07 19:15:28'),
(1351, 1, 'created', 'User baru dibuat: IRGI AHMAD FAUZI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:15:28', '2026-01-07 19:15:28'),
(1352, 1, 'created', 'User baru dibuat: ISMAIL SAPUTRA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:15:29', '2026-01-07 19:15:29'),
(1353, 1, 'created', 'User baru dibuat: LUKMAN HAKIKI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:15:29', '2026-01-07 19:15:29'),
(1354, 1, 'created', 'User baru dibuat: MAULANA ABDUL MALIK (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:15:30', '2026-01-07 19:15:30'),
(1355, 1, 'created', 'User baru dibuat: MIFTAHURRIZKI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:15:31', '2026-01-07 19:15:31'),
(1356, 1, 'created', 'User baru dibuat: MUHAMAD JAMI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:15:31', '2026-01-07 19:15:31'),
(1357, 1, 'created', 'User baru dibuat: NANDIKA FALEN MAULANA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:15:32', '2026-01-07 19:15:32'),
(1358, 1, 'created', 'User baru dibuat: NAUFAL RA\'IF ROMANDANIS (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:15:32', '2026-01-07 19:15:32'),
(1359, 1, 'created', 'User baru dibuat: NIFTAH FARID (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:15:32', '2026-01-07 19:15:32'),
(1360, 1, 'created', 'User baru dibuat: REVAN ARDIYAN (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:15:33', '2026-01-07 19:15:33'),
(1361, 1, 'created', 'User baru dibuat: RIZKY SEPTIAN BAYU SAPUTRA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:15:33', '2026-01-07 19:15:33'),
(1362, 1, 'created', 'User baru dibuat: TARI NOVITA SARI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:15:34', '2026-01-07 19:15:34'),
(1363, 1, 'created', 'User baru dibuat: VICKY MAULANA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:15:34', '2026-01-07 19:15:34'),
(1364, 1, 'created', 'User baru dibuat: WILI BREGAS RAHAYU (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:15:35', '2026-01-07 19:15:35'),
(1365, 1, 'created', 'User baru dibuat: YOGA PRAYOGA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:15:36', '2026-01-07 19:15:36'),
(1366, 1, 'created', 'User baru dibuat: Adhnan Tridziianto (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:16:21', '2026-01-07 19:16:21'),
(1367, 1, 'created', 'User baru dibuat: Adi Tatmimul Husna (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:16:22', '2026-01-07 19:16:22'),
(1368, 1, 'created', 'User baru dibuat: ADITYA ARFI MAULANA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:16:22', '2026-01-07 19:16:22'),
(1369, 1, 'created', 'User baru dibuat: AKMAL NURHAMID (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:16:22', '2026-01-07 19:16:22'),
(1370, 1, 'created', 'User baru dibuat: ANGGA DWI PRASETIO (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:16:23', '2026-01-07 19:16:23'),
(1371, 1, 'created', 'User baru dibuat: Arga Pratama (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:16:24', '2026-01-07 19:16:24'),
(1372, 1, 'created', 'User baru dibuat: DANUR ROHMAN (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:16:24', '2026-01-07 19:16:24'),
(1373, 1, 'created', 'User baru dibuat: EGI FIRMANSYAH (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:16:25', '2026-01-07 19:16:25'),
(1374, 1, 'created', 'User baru dibuat: Emiliah Rahmah (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:16:25', '2026-01-07 19:16:25'),
(1375, 1, 'created', 'User baru dibuat: FEBIYANSAH (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:16:25', '2026-01-07 19:16:25'),
(1376, 1, 'created', 'User baru dibuat: FIRMAN RIYADI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:16:26', '2026-01-07 19:16:26'),
(1377, 1, 'created', 'User baru dibuat: FIRMANDA OKI ROMADHAN (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:16:26', '2026-01-07 19:16:26'),
(1378, 1, 'created', 'User baru dibuat: GANANG SAPUTRA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:16:27', '2026-01-07 19:16:27'),
(1379, 1, 'created', 'User baru dibuat: Hadi Putra Firmansyah (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:16:27', '2026-01-07 19:16:27'),
(1380, 1, 'created', 'User baru dibuat: HANUM EKHA SAWITRI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:16:28', '2026-01-07 19:16:28'),
(1381, 1, 'created', 'User baru dibuat: KELPIN (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:16:29', '2026-01-07 19:16:29'),
(1382, 1, 'created', 'User baru dibuat: Muhammad Farid Hidayat (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:16:29', '2026-01-07 19:16:29'),
(1383, 1, 'created', 'User baru dibuat: Parhan Afandi (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:16:29', '2026-01-07 19:16:29'),
(1384, 1, 'created', 'User baru dibuat: RAFLI HARDIANSYAH (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:16:30', '2026-01-07 19:16:30'),
(1385, 1, 'created', 'User baru dibuat: RAFLI WILDANU (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:16:30', '2026-01-07 19:16:30'),
(1386, 1, 'created', 'User baru dibuat: RAGIL PRIHATIN (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:16:31', '2026-01-07 19:16:31'),
(1387, 1, 'created', 'User baru dibuat: Raif Al Muhyi (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:16:31', '2026-01-07 19:16:31'),
(1388, 1, 'created', 'User baru dibuat: RANDI WAELAN GASELA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:16:32', '2026-01-07 19:16:32'),
(1389, 1, 'created', 'User baru dibuat: REDIT JUWANTORO (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:16:32', '2026-01-07 19:16:32'),
(1390, 1, 'created', 'User baru dibuat: Restu Ilham Nurrizal (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:16:33', '2026-01-07 19:16:33'),
(1391, 1, 'created', 'User baru dibuat: RICO ROZAK (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:16:34', '2026-01-07 19:16:34'),
(1392, 1, 'created', 'User baru dibuat: RIDO AGUNG PANGESTU (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:16:34', '2026-01-07 19:16:34'),
(1393, 1, 'created', 'User baru dibuat: SAIFUL IKBAL PRADITA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:16:35', '2026-01-07 19:16:35'),
(1394, 1, 'created', 'User baru dibuat: SAMSI AL GOZALI (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:16:35', '2026-01-07 19:16:35'),
(1395, 1, 'created', 'User baru dibuat: sigit triandaru (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:16:35', '2026-01-07 19:16:35'),
(1396, 1, 'created', 'User baru dibuat: SOFIA ARZETA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:16:36', '2026-01-07 19:16:36'),
(1397, 1, 'created', 'User baru dibuat: Subarno Doni Seloso (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:16:36', '2026-01-07 19:16:36'),
(1398, 1, 'created', 'User baru dibuat: SURYA ANDIKA SAPUTRA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:16:37', '2026-01-07 19:16:37'),
(1399, 1, 'created', 'User baru dibuat: SYAMSURI IKHSAN (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:16:37', '2026-01-07 19:16:37'),
(1400, 1, 'created', 'User baru dibuat: TEGAR AGUSTIAWAN (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:16:38', '2026-01-07 19:16:38'),
(1401, 1, 'created', 'User baru dibuat: TIO (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:16:39', '2026-01-07 19:16:39'),
(1402, 1, 'created', 'User baru dibuat: WIRANTO (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-07 19:16:39', '2026-01-07 19:16:39');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mapel`
--

CREATE TABLE `mapel` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_mapel` varchar(255) NOT NULL,
  `kode_mapel` varchar(100) NOT NULL,
  `kategori_mapel_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `mapel`
--

INSERT INTO `mapel` (`id`, `nama_mapel`, `kode_mapel`, `kategori_mapel_id`, `created_at`, `updated_at`) VALUES
(6, 'Konsentrasi Keahlian TKJ 2', 'KKTKJ2', 5, '2025-12-08 02:05:41', '2026-01-06 08:17:49'),
(7, 'Mapel Pilihan TKJ', 'MPTKJ', 5, '2026-01-05 21:37:28', '2026-01-05 21:37:28'),
(8, 'Bahasa Inggris', 'BING', 4, '2026-01-06 08:21:06', '2026-01-06 08:21:06'),
(9, 'Konsentrasi Keahlian TKJ 1', 'KKTKJ1', 5, '2026-01-07 02:33:19', '2026-01-07 02:33:19'),
(10, 'Konsentrasi Keahlian TKJ 3', 'KKTKJ3', 5, '2026-01-07 02:33:42', '2026-01-07 02:33:42');

-- --------------------------------------------------------

--
-- Struktur dari tabel `materi`
--

CREATE TABLE `materi` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `mengajar_id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(255) NOT NULL,
  `deskripsi` text DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `tanggal` date NOT NULL,
  `tipe` enum('teks','file','video') NOT NULL DEFAULT 'teks',
  `status` enum('draft','publish') NOT NULL DEFAULT 'draft',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2025_11_21_021825_create_jurusan_table', 1),
(6, '2025_11_21_021827_create_kelas_table', 1),
(7, '2025_11_21_022324_create_siswa_table', 1),
(8, '2025_11_21_022459_create_guru_table', 1),
(9, '2025_11_21_023211_create_admin_table', 1),
(10, '2025_11_21_024102_create_kategori_mapel_table', 1),
(11, '2025_11_21_024312_create_mapel_table', 1),
(12, '2025_11_21_031630_create_data_mengajar_table', 1),
(13, '2025_11_21_032645_create_jam_mengajar_table', 1),
(14, '2025_11_21_032648_create_jadwal_mengajar_table', 1),
(15, '2025_11_21_033031_create_staff_table', 1),
(16, '2025_11_21_033726_create_walikelas_table', 1),
(17, '2025_11_21_034257_create_waka_kesiswaan_table', 1),
(18, '2025_11_21_034804_create_waka_kurikulum_table', 1),
(19, '2025_11_21_042935_create_ejurnal_table', 1),
(20, '2025_11_21_043513_create_log_kehadiran_table', 1),
(21, '2025_11_21_043723_create_log_kehadiran_kelas_table', 1),
(22, '2025_11_21_044144_create_materi_table', 1),
(23, '2025_11_21_044609_create_tugas_table', 1),
(24, '2025_11_21_044755_create_pengumpulantugas_table', 1),
(25, '2025_11_21_064637_create_status_notifikasi_table', 1),
(26, '2025_11_21_064827_create_notifikasi_table', 1),
(27, '2025_11_21_065439_create_log_user_table', 1),
(28, '2025_11_21_070128_create_adminkelas_table', 1),
(29, '2025_11_21_115503_tagihan', 1),
(30, '2025_11_21_115931_pembayaran', 1),
(31, '2025_11_21_120651_agenda', 1),
(32, '2025_11_22_022903_create_data_sekolah_table', 1),
(33, '2025_11_23_083149_create_tahun_pelajaran_table', 2),
(34, '2025_11_23_083336_create_semesters_table', 2),
(35, '2025_11_21_032646_jam_pelajaran', 3),
(36, '2025_11_23_114730_hari_aktif', 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `notifikasi`
--

CREATE TABLE `notifikasi` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `status_notifikasi_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `message` text DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `is_read` tinyint(1) NOT NULL DEFAULT 0,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tagihan_id` bigint(20) UNSIGNED NOT NULL,
  `tahun_pelajaran_id` bigint(20) UNSIGNED NOT NULL,
  `semester_id` bigint(20) UNSIGNED NOT NULL,
  `jumlah_bayar` decimal(12,2) NOT NULL,
  `tgl_bayar` date NOT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pembayaran`
--

INSERT INTO `pembayaran` (`id`, `tagihan_id`, `tahun_pelajaran_id`, `semester_id`, `jumlah_bayar`, `tgl_bayar`, `keterangan`, `created_at`, `updated_at`) VALUES
(5, 2, 6, 1, 900000.00, '2025-12-23', 'Langsung lunas', '2025-12-23 08:17:37', '2025-12-23 08:17:37');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengumpulan_tugas`
--

CREATE TABLE `pengumpulan_tugas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tugas_id` bigint(20) UNSIGNED NOT NULL,
  `siswa_id` bigint(20) UNSIGNED NOT NULL,
  `file` varchar(255) DEFAULT NULL,
  `jawaban_teks` text DEFAULT NULL,
  `nilai` int(11) DEFAULT NULL,
  `komentar` text DEFAULT NULL,
  `status` enum('belum','terkirim','dinilai') NOT NULL DEFAULT 'belum',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Struktur dari tabel `semesters`
--

CREATE TABLE `semesters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tahun_pelajaran_id` bigint(20) UNSIGNED NOT NULL,
  `nama` enum('Gasal','Genap') NOT NULL,
  `tanggal_mulai` date DEFAULT NULL,
  `tanggal_selesai` date DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `semesters`
--

INSERT INTO `semesters` (`id`, `tahun_pelajaran_id`, `nama`, `tanggal_mulai`, `tanggal_selesai`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 6, 'Gasal', '2025-11-07', '2025-11-29', 1, '2025-11-30 00:55:31', '2025-12-25 00:03:46'),
(6, 11, 'Gasal', '2025-12-25', '2025-12-26', 0, '2025-12-23 20:14:02', '2025-12-25 00:03:46');

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa`
--

CREATE TABLE `siswa` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `nis` varchar(255) NOT NULL,
  `nisn` varchar(255) NOT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `no_hp` varchar(255) DEFAULT NULL,
  `jenis_kelamin` enum('P','L') NOT NULL DEFAULT 'P',
  `no_hp_ortu` varchar(255) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `kelas_id` bigint(20) UNSIGNED DEFAULT NULL,
  `is_lulus` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `siswa`
--

INSERT INTO `siswa` (`id`, `user_id`, `nama`, `nis`, `nisn`, `tgl_lahir`, `no_hp`, `jenis_kelamin`, `no_hp_ortu`, `alamat`, `kelas_id`, `is_lulus`, `created_at`, `updated_at`) VALUES
(1, 7, 'Prof. Archibald Langosh DDS', 'SIS596127', 'NISN940160', '2016-01-09', '1-630-409-4242', 'P', '682-218-5763', '7320 Mathias Unions Apt. 966\nLittelville, PA 81555-4696', 9, 0, '2025-11-21 20:32:59', '2026-01-04 21:25:10'),
(2, 8, 'Prof. Mayra Heathcote PhD', 'SIS962960', 'NISN598168', '2025-01-13', '+1-212-315-7308', 'P', '1-432-520-8058', '50127 Veum Manor\nRueckerton, VT 38251', 11, 0, '2025-11-21 20:32:59', '2026-01-04 21:25:24'),
(4, 10, 'Mekhi Raynor', 'SIS287979', 'NISN052471', '2023-11-14', '769.455.0679', 'P', '(847) 660-5830', '840 Senger Oval\nElwynhaven, SD 39403', 11, 0, '2025-11-21 20:32:59', '2026-01-04 21:25:24'),
(5, 11, 'Kenneth Ward', 'SIS575141', 'NISN967540', '2013-04-18', '847.630.4813', 'P', '423.320.4828', '84995 Schumm Street Suite 118\nJuliusburgh, VA 73107', 8, 0, '2025-11-21 20:32:59', '2026-01-04 21:26:03'),
(8, 14, 'Rosalind Kertzmann Sr.', 'SIS359559', 'NISN112949', '2008-05-25', '1-478-331-8220', 'P', '1-708-783-4326', '743 Elenor Corners\nEast Jennyfer, VT 83097-6807', 9, 0, '2025-11-21 20:32:59', '2026-01-04 21:25:10'),
(11, 17, 'Darien Emard I', 'SIS022016', 'NISN844416', '1995-09-15', '+1-630-964-9188', 'P', '+1-240-990-2828', '7875 Pierce Crossroad\nVirgiefurt, MD 77399', NULL, 0, '2025-11-21 20:32:59', '2026-01-07 19:21:18'),
(13, 19, 'Dr. Davin Bechtelar', 'SIS663960', 'NISN531580', '2009-12-02', '+12342580382', 'P', '540-272-8647', '3699 Stamm Lake\nEast Malvina, VA 95193-2136', NULL, 0, '2025-11-21 20:32:59', '2025-11-21 20:32:59'),
(15, 21, 'Geovany Lehner', 'SIS414664', 'NISN298115', '1974-11-01', '+1.304.809.0038', 'P', '564-726-8542', '851 Elaina Islands\nCandidochester, NJ 95788-3105', 11, 0, '2025-11-21 20:33:00', '2026-01-04 21:25:24'),
(16, 22, 'Jermaine Huels', 'SIS753778', 'NISN808136', '1987-12-13', '+1 (240) 429-2855', 'P', '904.713.6749', '311 Stephania Rue\nBernicemouth, NJ 98427', NULL, 0, '2025-11-21 20:33:00', '2026-01-07 19:21:18'),
(17, 23, 'Dr. Sienna Jast', 'SIS347187', 'NISN731015', '1996-11-05', '1-571-402-8156', 'P', '+1.319.878.7221', '21468 Gutkowski Centers\nEast Cindyfurt, AL 94734-6527', 11, 0, '2025-11-21 20:33:00', '2026-01-04 21:25:24'),
(18, 24, 'Emiliano Blanda', 'SIS193376', 'NISN315237', '2005-04-07', '620-663-4088', 'P', '+1-970-773-3208', '71638 Nadia Via\nNew Hertha, TN 51244-7593', NULL, 0, '2025-11-21 20:33:00', '2025-11-21 20:33:00'),
(19, 25, 'Mafalda Gulgowski', 'SIS049677', 'NISN400197', '2014-08-02', '+19498370245', 'P', '(979) 600-2808', '6441 Carmen Branch\nPort Jasen, UT 80774', NULL, 0, '2025-11-21 20:33:00', '2025-11-21 20:33:00'),
(20, 26, 'Darion Ondricka', 'SIS039197', 'NISN291067', '2018-11-04', '(360) 644-0557', 'P', '347-599-3686', '2831 Bette Neck\nPort Dianna, OR 50943-5359', NULL, 0, '2025-11-21 20:33:00', '2025-11-21 20:33:00'),
(21, 33, 'Dovie Lynch', 'SIS769732', 'NISN778267', '2001-10-03', '+1 (478) 396-2932', 'P', '541-477-4658', '707 Jakubowski Roads\nNorth Lou, IN 55398-2832', NULL, 0, '2025-11-21 20:33:59', '2025-11-21 20:33:59'),
(22, 34, 'Elton Bayer Jr.', 'SIS272448', 'NISN938901', '1988-02-19', '570-310-5430', 'P', '(575) 595-8074', '300 McCullough Wells\nKreigerton, NE 46646-3826', NULL, 0, '2025-11-21 20:33:59', '2026-01-07 19:21:18'),
(23, 35, 'Prof. Ollie Bartell', 'SIS059729', 'NISN436708', '2013-04-06', '517.564.6345', 'P', '1-650-968-5159', '879 Stroman Fall\nCarmellafort, RI 95066', NULL, 0, '2025-11-21 20:33:59', '2025-11-21 20:33:59'),
(24, 36, 'Pemuda Biasa', 'SIS286533', 'NISN901822', '1999-07-01', '+1.320.956.3912', 'P', '325.232.7379', '641 Enoch Ferry Apt. 279\nLeanneborough, MA 00597-1802', 8, 0, '2025-11-21 20:33:59', '2026-01-04 21:26:03'),
(25, 37, 'Dr. Amely Kuphal', 'SIS355756', 'NISN374337', '1979-10-27', '+1.917.961.8202', 'P', '1-364-257-7601', '6817 Bayer Landing Suite 175\nNorth Rodrickborough, ME 29278', NULL, 0, '2025-11-21 20:33:59', '2025-11-21 20:33:59'),
(26, 38, 'Tyra Purdy', 'SIS700464', 'NISN795645', '1980-01-05', '+1-743-580-8411', 'P', '(919) 655-0852', '538 Trace Extensions\nEast Norwood, DE 41503', NULL, 0, '2025-11-21 20:33:59', '2025-11-21 20:33:59'),
(28, 40, 'Nyah Spencer III', 'SIS141855', 'NISN021513', '1975-12-24', '+1 (952) 537-3666', 'P', '+1 (815) 838-2345', '559 Kozey Trafficway Apt. 481\nLake Margieton, GA 38372', NULL, 0, '2025-11-21 20:33:59', '2025-11-21 20:33:59'),
(29, 41, 'Dr. Werner Jones I', 'SIS558461', 'NISN908344', '2006-09-05', '+1-205-520-8083', 'P', '(425) 440-9939', '98258 Mayert Burg Apt. 323\nLake Kamronmouth, PA 21213', NULL, 0, '2025-11-21 20:33:59', '2025-11-21 20:33:59'),
(30, 42, 'Dr. Reginald Parker', 'SIS868534', 'NISN592756', '1974-09-20', '601.400.1479', 'P', '952.931.4613', '10850 Wilber Hollow\nTorpland, FL 67590-3871', NULL, 0, '2025-11-21 20:33:59', '2025-11-21 20:33:59'),
(31, 43, 'Elfrieda Reilly', 'SIS280286', 'NISN497777', '1985-09-22', '408-451-3744', 'P', '1-458-310-2333', '579 Quincy Expressway Apt. 691\nEmmystad, NE 96386-3760', NULL, 0, '2025-11-21 20:33:59', '2025-11-21 20:33:59'),
(32, 44, 'Kaley Bailey', 'SIS640448', 'NISN804873', '2020-11-25', '1-786-758-6907', 'P', '504-919-6094', '154 Conn Passage Apt. 378\nPort Diego, NY 61226', NULL, 0, '2025-11-21 20:34:00', '2025-11-21 20:34:00'),
(33, 45, 'Kiana Mertz', 'SIS126875', 'NISN864747', '1984-09-13', '+1.360.350.9863', 'P', '+1-407-589-9410', '84862 Letitia Flat Suite 557\nSummerberg, WY 91676', NULL, 0, '2025-11-21 20:34:00', '2025-11-21 20:34:00'),
(34, 46, 'Tierra Nicolas', 'SIS506439', 'NISN377647', '1997-04-12', '+17169848961', 'P', '302.230.4659', '746 Klocko Mill\nPaucekbury, AZ 23179', NULL, 0, '2025-11-21 20:34:00', '2025-11-21 20:34:00'),
(35, 47, 'Janis Hermiston', 'SIS258115', 'NISN837348', '1985-12-27', '1-920-874-1781', 'P', '(540) 719-6948', '3286 Elna Prairie\nLehnermouth, FL 12262', NULL, 0, '2025-11-21 20:34:00', '2025-11-21 20:34:00'),
(36, 48, 'Ottilie Koch', 'SIS584277', 'NISN192383', '1975-10-17', '1-458-768-1387', 'P', '928.269.7229', '525 Lehner Field\nSouth Camillafort, MD 95899', NULL, 0, '2025-11-21 20:34:00', '2025-11-21 20:34:00'),
(37, 49, 'Mrs. Dayana Johnson', 'SIS647100', 'NISN170712', '1982-05-27', '(979) 354-5021', 'P', '+14584756080', '4118 Robin Route\nWest Mollyberg, SD 10271-3637', NULL, 0, '2025-11-21 20:34:00', '2025-11-21 20:34:00'),
(38, 50, 'Mallory Miller', 'SIS273556', 'NISN701131', '1974-12-15', '574.241.8018', 'P', '845-318-8233', '133 Quentin Ferry Apt. 681\nEinoville, MT 05456', NULL, 0, '2025-11-21 20:34:00', '2025-11-21 20:34:00'),
(39, 51, 'Efren Hansen', 'SIS377278', 'NISN600428', '1994-07-10', '830.547.4675', 'P', '769.801.3070', '49658 Tressie Shores Apt. 736\nSpencerfurt, VT 58939', NULL, 0, '2025-11-21 20:34:00', '2025-11-21 20:34:00'),
(40, 52, 'Mr. Philip Gleichner Jr.', 'SIS584596', 'NISN637985', '2024-10-06', '386.826.7838', 'P', '+1-534-745-7342', '31796 Chester Ports\nPort Liza, IA 25350', NULL, 0, '2025-11-21 20:34:00', '2025-11-21 20:34:00'),
(41, 59, 'Jeramie Koch II', 'SIS891772', 'NISN172647', '1994-02-22', '1-351-719-4443', 'P', '1-737-989-2626', '2655 Wunsch Branch Apt. 897\nNorth Whitneystad, SD 36668', NULL, 0, '2025-11-21 20:36:42', '2025-11-21 20:36:42'),
(42, 60, 'Ahmed Tromp', 'SIS199152', 'NISN888384', '2000-03-03', '+1-606-244-7440', 'P', '786.527.2717', '163 Buck Gateway Apt. 897\nMadisenfort, OK 19665-6673', NULL, 0, '2025-11-21 20:36:42', '2025-11-21 20:36:42'),
(43, 61, 'Dr. Heather Pollich', 'SIS674109', 'NISN172941', '2009-09-18', '769-535-4674', 'P', '+1.574.347.0810', '238 Williamson Estates\nEast Marysefurt, AL 66100-4127', NULL, 0, '2025-11-21 20:36:42', '2025-11-21 20:36:42'),
(44, 62, 'Prof. Richard Renner Sr.', 'SIS280486', 'NISN681587', '1977-08-06', '1-531-701-6987', 'P', '+16622928236', '991 Baumbach Groves\nSengerstad, SC 82275-5431', NULL, 0, '2025-11-21 20:36:42', '2025-11-21 20:36:42'),
(45, 63, 'Zena Leuschke', 'SIS950858', 'NISN887055', '1977-07-05', '+1 (740) 759-9263', 'P', '+1-838-284-1300', '711 Nitzsche Islands Apt. 317\nLurlineview, DC 55769', NULL, 0, '2025-11-21 20:36:42', '2025-11-21 20:36:42'),
(46, 64, 'Hermina Jakubowski DVM', 'SIS888423', 'NISN123087', '1975-04-22', '1-954-440-8050', 'P', '+1 (551) 292-0842', '5207 Sonia Drive\nBergestad, MD 53215', NULL, 0, '2025-11-21 20:36:42', '2025-11-21 20:36:42'),
(47, 65, 'Audra Abbott III', 'SIS902531', 'NISN456590', '2012-05-19', '1-409-229-1922', 'P', '+13416988709', '5718 Duane Islands\nCamillafort, MD 79254', NULL, 0, '2025-11-21 20:36:42', '2025-11-21 20:36:42'),
(48, 66, 'Orland Leuschke Jr.', 'SIS346048', 'NISN534486', '2022-06-18', '+1 (832) 417-8961', 'P', '845-217-2472', '433 Frederic Orchard Apt. 667\nMelynaport, KY 44944-4452', NULL, 0, '2025-11-21 20:36:43', '2025-11-21 20:36:43'),
(49, 67, 'Kitty Schultz', 'SIS131214', 'NISN066824', '2024-12-23', '+17725641548', 'P', '+1-762-914-2872', '73695 Lesch Fort\nPort Reta, TN 36215-4966', NULL, 0, '2025-11-21 20:36:43', '2025-11-21 20:36:43'),
(50, 68, 'Robert Dach', 'SIS417007', 'NISN725337', '1985-01-18', '928-908-8485', 'P', '(929) 443-9274', '788 Garfield Walks\nLake Mercedesville, MI 45610-3917', NULL, 0, '2025-11-21 20:36:43', '2025-11-21 20:36:43'),
(51, 69, 'Tressie Wisoky', 'SIS585293', 'NISN166051', '1996-11-08', '+13127606375', 'P', '1-458-238-3986', '405 Ferry Ridge\nReichertton, UT 60662', NULL, 0, '2025-11-21 20:36:43', '2025-11-21 20:36:43'),
(52, 70, 'Elmer Fadel', 'SIS140071', 'NISN873015', '2011-12-29', '662.383.5959', 'P', '1-386-645-1666', '2573 Boyle Summit Suite 524\nEast Bennie, MA 13849', NULL, 0, '2025-11-21 20:36:43', '2025-11-21 20:36:43'),
(53, 71, 'Stuart Parker', 'SIS894833', 'NISN223642', '1979-03-24', '+1 (435) 612-5278', 'P', '1-929-810-6946', '11168 Hammes Mall\nPort Barrettton, MS 21984-4338', NULL, 0, '2025-11-21 20:36:43', '2025-11-21 20:36:43'),
(54, 72, 'Mabelle Sauer', 'SIS147867', 'NISN221105', '1971-02-02', '+1-534-678-9368', 'P', '(302) 649-7690', '8993 Noel Shoals\nHarrismouth, DE 28803', NULL, 0, '2025-11-21 20:36:43', '2025-11-21 20:36:43'),
(55, 73, 'Mario Marks V', 'SIS651422', 'NISN922796', '2019-03-17', '+1.989.210.2341', 'P', '667.364.4320', '33769 Quinn Forge\nLake Lilian, CT 07574-4115', NULL, 0, '2025-11-21 20:36:43', '2025-11-21 20:36:43'),
(56, 74, 'Rowland Schulist DDS', 'SIS437355', 'NISN055654', '2014-10-22', '346.706.5630', 'P', '+1-667-998-3397', '594 Lance Place\nDeshaunmouth, NY 62084-1494', NULL, 0, '2025-11-21 20:36:43', '2025-11-21 20:36:43'),
(58, 76, 'Zora Russel', 'SIS532673', 'NISN745155', '1986-03-02', '+1.862.567.9889', 'P', '520.602.3838', '47811 Ismael Lock Apt. 314\nHansenfort, DC 92720', NULL, 0, '2025-11-21 20:36:44', '2025-11-21 20:36:44'),
(60, 78, 'Prof. Alva Ryan', 'SIS778774', 'NISN089965', '1999-03-04', '407-303-6145', 'P', '+15599145720', '2820 Jonathon Forge\nPort Tess, MS 92525-8309', NULL, 0, '2025-11-21 20:36:44', '2025-11-21 20:36:44'),
(61, 83, 'AKQILAH PANGESTU', '25268501', '0087319875', '2008-12-01', NULL, 'P', NULL, 'Karangpucung RT 6 RW 1, Kec. Karangpucung', NULL, 0, '2026-01-04 19:16:25', '2026-01-04 19:16:25'),
(62, 84, 'Alexa Gustiana Ramadhani', '25268524', '0102869117', '2010-08-10', NULL, 'P', NULL, 'Ciporos RT 1 RW 9, Kec. Karangpucung', NULL, 0, '2026-01-04 19:16:25', '2026-01-04 19:16:25'),
(63, 85, 'ALIVAH RIZQI BAROKAH', '25268529', '0097454417', '2009-08-23', NULL, 'P', NULL, 'Bengbulang RT 2 RW 5, Kec. Karangpucung', NULL, 0, '2026-01-04 19:16:26', '2026-01-04 19:16:26'),
(64, 86, 'AZ ZAHRA FAMELA ALKIRANA PUTRI', '25268559', '0097001296', '2009-02-08', NULL, 'P', NULL, 'Cilempuyang RT 1 RW 1, Kec. Cimanggu', NULL, 0, '2026-01-04 19:16:26', '2026-01-04 19:16:26'),
(65, 87, 'DELYNA RAMADHANI', '25268576', '0101757791', '2010-08-12', NULL, 'P', NULL, 'KELAPA INDAH RT 2 RW 4, Kec. Tangerang', NULL, 0, '2026-01-04 19:16:27', '2026-01-04 19:16:27'),
(66, 88, 'FIORENZA AZALIA SHAHIA', '25268617', '0107149658', '2010-11-04', NULL, 'P', NULL, 'Cinangsi RT 3 RW 6, Kec. Gandrungmangu', NULL, 0, '2026-01-04 19:16:27', '2026-01-04 19:16:27'),
(67, 89, 'IXZEL KHABILNA PUTRI', '25268639', '0109847728', '2010-11-04', NULL, 'P', NULL, 'Kedungwadas RT 6 RW 1, Kec. Bantarsari', NULL, 0, '2026-01-04 19:16:27', '2026-01-04 19:16:27'),
(68, 90, 'Jenita Lidia Saputri', '25268640', '0107172482', '2010-01-09', NULL, 'P', NULL, 'Citembong RT 3 RW 4, Kec. Bantarsari', NULL, 0, '2026-01-04 19:16:28', '2026-01-04 19:16:28'),
(69, 91, 'Liyal Aristiani', '25268659', '0109779115', '2010-04-11', NULL, 'P', NULL, 'Dermaji RT 5 RW 1, Kec. Lumbir', NULL, 0, '2026-01-04 19:16:28', '2026-01-04 19:16:28'),
(70, 92, 'Miftah Nurjanah', '25268849', '0102076496', '2010-03-23', NULL, 'P', NULL, 'Sawah Baru RT 1 RW 1, Kec. Ciputat', NULL, 0, '2026-01-04 19:16:29', '2026-01-04 19:16:29'),
(71, 93, 'Nadira Pangelista', '25268703', '0099837221', '2009-02-19', NULL, 'P', NULL, 'Cidadap RT 4 RW 2, Kec. Karangpucung', NULL, 0, '2026-01-04 19:16:29', '2026-01-04 19:16:29'),
(72, 94, 'NAGITA APRILIA', '25268704', '0109409684', '2010-04-21', NULL, 'P', NULL, 'Bantarmangu RT 4 RW 4, Kec. Cimanggu', NULL, 0, '2026-01-04 19:16:30', '2026-01-04 19:16:30'),
(73, 95, 'NAURA RAHMA DINA AL WAHDANI', '25268712', '0094525638', '2010-09-03', NULL, 'P', NULL, 'Cinangsi RT 1 RW 6, Kec. Gandrungmangu', NULL, 0, '2026-01-04 19:16:30', '2026-01-04 19:16:30'),
(74, 96, 'NIA RAMADHANI', '25268716', '3108616878', '2010-08-27', NULL, 'P', NULL, 'Cinangsi RT 1 RW 2, Kec. Gandrungmangu', NULL, 0, '2026-01-04 19:16:31', '2026-01-04 19:16:31'),
(75, 97, 'ROSSY YULIA SARI', '25268782', '0109577422', '2010-05-15', NULL, 'P', NULL, 'Bengbulang RT 4 RW 2, Kec. Karangpucung', NULL, 0, '2026-01-04 19:16:31', '2026-01-04 19:16:31'),
(76, 98, 'SAHRINI', '25268786', '0108366135', '2010-09-23', NULL, 'P', NULL, 'Bantarmangu RT 4 RW 3, Kec. Cimanggu', NULL, 0, '2026-01-04 19:16:32', '2026-01-04 19:16:32'),
(77, 99, 'SALFA SINAR SAPUTRI', '25268788', '0105523330', '2010-03-23', NULL, 'P', NULL, 'Bantarpanjang RT 4 RW 10, Kec. Cimanggu', NULL, 0, '2026-01-04 19:16:32', '2026-01-04 19:16:32'),
(78, 100, 'SEVI VIDIANINGSIH', '25268795', '0094923675', '2009-12-15', NULL, 'P', NULL, 'CINANGSI RT 1 RW 2, Kec. Gandrungmangu', NULL, 0, '2026-01-04 19:16:32', '2026-01-04 19:16:32'),
(79, 101, 'SHANY AZIFFA FIRRELLI EQUILLA TAMI', '25268796', '0106602486', '2010-11-23', NULL, 'P', NULL, 'Karanganyar RT 4 RW 3, Kec. Gandrungmangu', NULL, 0, '2026-01-04 19:16:32', '2026-01-04 19:16:32'),
(80, 102, 'Shieva Putri Lestari', '25268797', '3092473709', '2009-05-02', NULL, 'P', NULL, 'Karanggintung RT 10 RW 3, Kec. Gandrungmangu', NULL, 0, '2026-01-04 19:16:33', '2026-01-04 19:16:33'),
(81, 103, 'Sifa Tri Lestari', '25268798', '0109201792', '2010-03-03', NULL, 'P', NULL, 'Citembong RT 2 RW 4, Kec. Bantarsari', NULL, 0, '2026-01-04 19:16:34', '2026-01-04 19:16:34'),
(82, 104, 'SITA DWI MU\'RIFFAH', '25268801', '0103089132', '2010-09-06', NULL, 'P', NULL, 'Tayem RT 5 RW 1, Kec. Karangpucung', NULL, 0, '2026-01-04 19:16:34', '2026-01-04 19:16:34'),
(83, 105, 'TANSA DELISA', '25268815', '0103108519', '2009-12-30', NULL, 'P', NULL, 'Cibalung RT 3 RW 1, Kec. Cimanggu', NULL, 0, '2026-01-04 19:16:35', '2026-01-04 19:16:35'),
(84, 106, 'Tiara Nofiana', '25268821', '0096681102', '2009-11-11', NULL, 'P', NULL, 'Dermaji RT 5 RW 1, Kec. Lumbir', NULL, 0, '2026-01-04 19:16:35', '2026-01-04 19:16:35'),
(85, 107, 'Triyana Selfiani', '25268824', '0109619940', '2010-07-19', NULL, 'P', NULL, 'Citembong RT 4 RW 3, Kec. Bantarsari', NULL, 0, '2026-01-04 19:16:36', '2026-01-04 19:16:36'),
(86, 108, 'VITA NURAENI', '25268829', '0107192307', '2010-10-09', NULL, 'P', NULL, 'KERTAJAYA RT 3 RW 4, Kec. Gandrungmangu', NULL, 0, '2026-01-04 19:16:36', '2026-01-04 19:16:36'),
(87, 109, 'ZASQIA RAHYANITA', '25268845', '0082212267', '2008-09-05', NULL, 'P', NULL, 'Ciporos RT 1 RW 13, Kec. Karangpucung', NULL, 0, '2026-01-04 19:16:36', '2026-01-04 19:16:36'),
(88, 110, 'ALLENA WIDAYANTI', '25268530', '0109456393', '2010-08-28', NULL, 'P', NULL, 'Bantarpanjang RT 1 RW 2, Kec. Cimanggu', NULL, 0, '2026-01-04 19:16:36', '2026-01-04 19:16:36'),
(89, 111, 'ANE AGUSTINA', '25268540', '0108304694', '2010-08-02', NULL, 'P', NULL, 'SURUSUNDA RT 5 RW 4, Kec. Karangpucung', NULL, 0, '2026-01-04 19:16:37', '2026-01-04 19:16:37'),
(90, 112, 'ANETA LIDYA INDAH WARDHANA', '25268541', '0119941768', '2011-03-07', NULL, 'P', NULL, 'Panimbang RT 3 RW 6, Kec. Cimanggu', NULL, 0, '2026-01-04 19:16:37', '2026-01-04 19:16:37'),
(91, 113, 'AZLINA SANDRA', '25268557', '0103717669', '2010-03-20', NULL, 'P', NULL, 'Tayemtimur RT 2 RW 3, Kec. Karangpucung', NULL, 0, '2026-01-04 19:16:38', '2026-01-04 19:16:38'),
(92, 114, 'Bilqis Ghefira Shefa', '25268565', '0106241902', '2010-08-10', NULL, 'P', NULL, 'Bantarpanjang RT 4 RW 1, Kec. Cimanggu', NULL, 0, '2026-01-04 19:16:38', '2026-01-04 19:16:38'),
(93, 115, 'Carolina Firgianti', '25268570', '0105592458', '2010-03-18', NULL, 'P', NULL, 'Cidadap RT 4 RW 5, Kec. Karangpucung', NULL, 0, '2026-01-04 19:16:39', '2026-01-04 19:16:39'),
(94, 116, 'DWI SAPUTRI', '25268590', '0093644441', '2009-12-03', NULL, 'P', NULL, 'Pengawaren RT 1 RW 6, Kec. Karangpucung', NULL, 0, '2026-01-04 19:16:39', '2026-01-04 19:16:39'),
(95, 117, 'Feby Destiana Putri', '25268615', '0094481688', '2009-02-27', NULL, 'P', NULL, 'Sindangbarang RT 0 RW 0, Kec. Karangpucung', NULL, 0, '2026-01-04 19:16:40', '2026-01-04 19:16:40'),
(96, 118, 'HESTI ZASKIA FITRIYAH', '25268630', '0093988895', '2009-09-18', NULL, 'P', NULL, 'Mandala RT 2 RW 6, Kec. Cimanggu', NULL, 0, '2026-01-04 19:16:40', '2026-01-04 19:16:40'),
(97, 119, 'KEYLA ALMEDIVA AL HADID', '25268647', '0091745540', '2009-08-24', NULL, 'P', NULL, 'Panimbang RT 1 RW 8, Kec. Cimanggu', NULL, 0, '2026-01-04 19:16:40', '2026-01-04 19:16:40'),
(98, 120, 'KHOIRU NISA RAMADHANI', '25268653', '0103967812', '2010-08-26', NULL, 'P', NULL, 'Citembong RT 1 RW 2, Kec. Bantarsari', NULL, 0, '2026-01-04 19:16:40', '2026-01-04 19:16:40'),
(99, 121, 'MIFTAHUL ALFIATU RAMADANI', '25268674', '0086281374', '2008-09-27', NULL, 'P', NULL, 'SINDANGBARANG RT 3 RW 9, Kec. Karangpucung', NULL, 0, '2026-01-04 19:16:41', '2026-01-04 19:16:41'),
(100, 122, 'MU\'ALIMATUL HAFIDZOH', '25268678', '0094836669', '2009-04-23', NULL, 'P', NULL, 'Mandala RT 2 RW 5, Kec. Cimanggu', NULL, 0, '2026-01-04 19:16:42', '2026-01-04 19:16:42'),
(101, 123, 'RAHMAH RAHAYU', '25268745', '0104588119', '2010-05-10', NULL, 'P', NULL, 'CIBALUNG RT 1 RW 3, Kec. Cimanggu', NULL, 0, '2026-01-04 19:16:42', '2026-01-04 19:16:42'),
(102, 124, 'Reva Ayu Anjani', '25268754', '0102406188', '2010-07-14', NULL, 'P', NULL, 'Cidadap RT 3 RW 5, Kec. Karangpucung', NULL, 0, '2026-01-04 19:16:43', '2026-01-04 19:16:43'),
(103, 125, 'ROSYDIANA SEKAR ARUM', '25268784', '0107871238', '2010-06-15', NULL, 'P', NULL, 'Tritih Kulon RT 5 RW 9, Kec. Cilacap Utara', NULL, 0, '2026-01-04 19:16:43', '2026-01-04 19:16:43'),
(104, 126, 'SILVI TRI MARLINA', '25268799', '0109994102', '2010-03-27', NULL, 'P', NULL, 'Panimbang RT 2 RW 3, Kec. Cimanggu', NULL, 0, '2026-01-04 19:16:43', '2026-01-04 19:16:43'),
(105, 127, 'SITI MEGA ROHANI', '25268802', '0083127344', '2008-10-25', NULL, 'P', NULL, 'CIBALUNG RT 1 RW 3, Kec. Cimanggu', NULL, 0, '2026-01-04 19:16:44', '2026-01-04 19:16:44'),
(106, 128, 'Siti Nur Awaliyah', '25268804', '0104051617', '2010-06-18', NULL, 'P', NULL, 'Babakan RT 17 RW 4, Kec. Karangpucung', NULL, 0, '2026-01-04 19:16:45', '2026-01-04 19:16:45'),
(107, 129, 'SYAKINA NUR ASYIFA', '25268813', '0105145849', '2010-06-16', NULL, 'P', NULL, 'Bengbulang RT 2 RW 1, Kec. Karangpucung', NULL, 0, '2026-01-04 19:16:45', '2026-01-04 19:16:45'),
(108, 130, 'TERA PISESA', '25268817', '0093580328', '2009-12-23', NULL, 'P', NULL, 'Pengawaren RT 1 RW 6, Kec. Karangpucung', NULL, 0, '2026-01-04 19:16:46', '2026-01-04 19:16:46'),
(109, 131, 'TERI LESTARI', '25268818', '0094851153', '2009-12-23', NULL, 'P', NULL, 'Pengawaren RT 1 RW 6, Kec. Karangpucung', NULL, 0, '2026-01-04 19:16:46', '2026-01-04 19:16:46'),
(110, 132, 'Adelia Indrawati', '25268507', '0095984173', '2009-10-28', NULL, 'P', NULL, 'Pamulihan RT 2 RW 2, Kec. Karangpucung', NULL, 0, '2026-01-04 19:16:47', '2026-01-04 19:16:47'),
(111, 133, 'AMELIYA RAHAYU', '25268533', '0097350305', '2009-05-21', NULL, 'P', NULL, 'Karangpucung RT 4 RW 10, Kec. Karangpucung', NULL, 0, '2026-01-04 19:16:47', '2026-01-04 19:16:47'),
(112, 134, 'ANIFA AZIZAH RAHMAWATI', '25268545', '0103221670', '2010-10-01', NULL, 'P', NULL, 'Karangpucung RT 4 RW 2, Kec. Karangpucung', NULL, 0, '2026-01-04 19:16:47', '2026-01-04 19:16:47'),
(113, 135, 'ANISA LATIFAH', '25268546', '0105786798', '2010-07-14', NULL, 'P', NULL, 'CIBALUNG RT 1 RW 3, Kec. Cimanggu', NULL, 0, '2026-01-04 19:16:48', '2026-01-04 19:16:48'),
(114, 136, 'Arinta Jufika Putri', '25268551', '0083139975', '2008-12-18', NULL, 'P', NULL, 'Pamulihan RT 1 RW 1, Kec. Karangpucung', NULL, 0, '2026-01-04 19:16:49', '2026-01-04 19:16:49'),
(115, 137, 'AYU PUSPITASARI', '25268555', '0106002629', '2010-07-28', NULL, 'P', NULL, 'Bantarpanjang RT 2 RW 3, Kec. Cimanggu', NULL, 0, '2026-01-04 19:16:49', '2026-01-04 19:16:49'),
(116, 138, 'BUNGA APRILLIA', '25268566', '0109483769', '2010-04-20', NULL, 'P', NULL, 'Ciporos RT 2 RW 13, Kec. Karangpucung', NULL, 0, '2026-01-04 19:16:49', '2026-01-04 19:16:49'),
(117, 139, 'CANTIKA NOPITASARI', '25268569', '0109648589', '2010-11-26', NULL, 'P', NULL, 'Ciporos RT 1 RW 10, Kec. Karangpucung', NULL, 0, '2026-01-04 19:16:50', '2026-01-04 19:16:50'),
(118, 140, 'CELSIANA', '25268571', '0101616677', '2010-05-25', NULL, 'P', NULL, 'Sindangbarang RT 6 RW 5, Kec. Karangpucung', NULL, 0, '2026-01-04 19:16:50', '2026-01-04 19:16:50'),
(119, 141, 'ERMI SULISTIAWATI', '25268595', '0106778991', '2010-02-03', NULL, 'P', NULL, 'SINDANGBARANG RT 2 RW 10, Kec. Karangpucung', NULL, 0, '2026-01-04 19:16:50', '2026-01-04 19:16:50'),
(120, 142, 'FADILA WIJAYANTI', '25268601', '0101458493', '2010-03-20', NULL, 'P', NULL, 'Tayem Timur RT 7 RW 1, Kec. Karangpucung', NULL, 0, '2026-01-04 19:16:51', '2026-01-04 19:16:51'),
(121, 143, 'FAUZIAH NUR SUKMA AULIA', '25268614', '0101276727', '2010-01-07', NULL, 'P', NULL, 'Karangpucung RT 3 RW 2, Kec. Karangpucung', NULL, 0, '2026-01-04 19:16:51', '2026-01-04 19:16:51'),
(122, 144, 'Hilda Asfarinazul Fatie', '25268632', '0099109917', '2009-12-18', NULL, 'P', NULL, 'Jatisawit RT 6 RW 2, Kec. Jatiyoso', NULL, 0, '2026-01-04 19:16:51', '2026-01-04 19:16:51'),
(123, 145, 'ISNAENI IYANATUNNISA', '25268637', '0107994196', '2010-06-25', NULL, 'P', NULL, 'KARANGGINTUNG RT 6 RW 4, Kec. Gandrungmangu', NULL, 0, '2026-01-04 19:16:52', '2026-01-04 19:16:52'),
(124, 146, 'KANIA FADHILA', '25268642', '0104974465', '2010-10-14', NULL, 'P', NULL, 'SINDANGBARANG RT 1 RW 9, Kec. Karangpucung', NULL, 0, '2026-01-04 19:16:52', '2026-01-04 19:16:52'),
(125, 147, 'KEYSA ALYA ROIKHATUSYYFA', '25268648', '0097928752', '2009-09-16', NULL, 'P', NULL, 'Bantarpanjang RT 3 RW 5, Kec. Cimanggu', NULL, 0, '2026-01-04 19:16:53', '2026-01-04 19:16:53'),
(126, 148, 'Keysha Setianingrum', '25268649', '0106716703', '2010-01-27', NULL, 'P', NULL, 'Ciporos RT 1 RW 7, Kec. Karangpucung', NULL, 0, '2026-01-04 19:16:53', '2026-01-04 19:16:53'),
(127, 149, 'LASTRI AGNISA', '25268657', '0105348254', '2010-06-12', NULL, 'P', NULL, 'CIBALUNG RT 1 RW 3, Kec. Cimanggu', NULL, 0, '2026-01-04 19:16:54', '2026-01-04 19:16:54'),
(128, 150, 'MARISKA NUR FADILAH', '25268665', '0103974710', '2010-03-21', NULL, 'P', NULL, 'Panimbang RT 1 RW 1, Kec. Cimanggu', NULL, 0, '2026-01-04 19:16:54', '2026-01-04 19:16:54'),
(129, 151, 'MELDA NUR ANGGRAENI', '25268672', '0099878278', '2009-05-12', NULL, 'P', NULL, 'Ciporos RT 1 RW 12, Kec. Karangpucung', NULL, 0, '2026-01-04 19:16:54', '2026-01-04 19:16:54'),
(130, 152, 'MELDA PERTIWI', '25268673', '0108472970', '2010-12-12', NULL, 'P', NULL, 'Mandala RT 2 RW 2, Kec. Cimanggu', NULL, 0, '2026-01-04 19:16:55', '2026-01-04 19:16:55'),
(131, 153, 'NAYLA ROUDLOTUL JANNAH', '25268713', '0109481431', '2010-07-01', NULL, 'P', NULL, 'Bantarpanjang RT 5 RW 1, Kec. Cimanggu', NULL, 0, '2026-01-04 19:16:56', '2026-01-04 19:16:56'),
(132, 154, 'NESYA APRILIA', '25268715', '0108832424', '2010-04-14', NULL, 'P', NULL, 'Cibalung RT 2 RW 1, Kec. Cimanggu', NULL, 0, '2026-01-04 19:16:56', '2026-01-04 19:16:56'),
(133, 155, 'NIKEN DWI MUTIA', '25268717', '0108176678', '2010-03-03', NULL, 'P', NULL, 'Tayem RT 1 RW 3, Kec. Karangpucung', NULL, 0, '2026-01-04 19:16:57', '2026-01-04 19:16:57'),
(134, 156, 'Nonie Zaskia Mulan', '25268719', '0109907880', '2010-09-21', NULL, 'P', NULL, 'Bantarpanjang RT 3 RW 1, Kec. Cimanggu', NULL, 0, '2026-01-04 19:16:57', '2026-01-04 19:16:57'),
(135, 157, 'RISMA DWI YANTI', '25268769', '0094741957', '2009-12-14', NULL, 'P', NULL, 'Sindangbarang RT 6 RW 5, Kec. Karangpucung', NULL, 0, '2026-01-04 19:16:58', '2026-01-04 19:16:58'),
(136, 158, 'RIZKA ZAHRATUL JANAH', '25268776', '0109490531', '2010-07-17', NULL, 'P', NULL, 'Babakan RT 23 RW 5, Kec. Karangpucung', NULL, 0, '2026-01-04 19:16:58', '2026-01-04 19:16:58'),
(137, 159, 'SAFIRA', '25268785', '0091721726', '2009-11-22', NULL, 'P', NULL, 'KARANGGINTUNG RT 4 RW 5, Kec. Gandrungmangu', NULL, 0, '2026-01-04 19:16:58', '2026-01-04 19:16:58'),
(138, 160, 'SAUSAN LUKI NOVIANA', '25268791', '0103184275', '2010-11-22', NULL, 'P', NULL, 'Sindangbarang RT 1 RW 7, Kec. Karangpucung', NULL, 0, '2026-01-04 19:16:59', '2026-01-04 19:16:59'),
(139, 161, 'SEFIRA AGUSTINA RAMADANI', '25268792', '3107631687', '2010-08-08', NULL, 'P', NULL, 'Cinangsi RT 5 RW 2, Kec. Gandrungmangu', NULL, 0, '2026-01-04 19:16:59', '2026-01-04 19:16:59'),
(140, 162, 'SEPTI NUR AENI', '25268793', '0094702978', '2009-09-22', NULL, 'P', NULL, 'Babakan RT 18 RW 4, Kec. Karangpucung', NULL, 0, '2026-01-04 19:17:00', '2026-01-04 19:17:00'),
(141, 163, 'SITI MUNINGSIH', '25268803', '0096241149', '2009-09-18', NULL, 'P', NULL, 'Babakan RT 2 RW 1, Kec. Karangpucung', NULL, 0, '2026-01-04 19:17:01', '2026-01-04 19:17:01'),
(142, 164, 'SITI NUR FADILAH', '25268805', '0108439682', '2010-07-22', NULL, 'P', NULL, 'CIBALUNG RT 2 RW 2, Kec. Cimanggu', NULL, 0, '2026-01-04 19:17:01', '2026-01-04 19:17:01'),
(143, 165, 'SYAHFA DWI MULYA', '25268811', '0093424580', '2009-09-15', NULL, 'P', NULL, 'Pengawaren RT 4 RW 2, Kec. Karangpucung', NULL, 0, '2026-01-04 19:17:02', '2026-01-04 19:17:02'),
(144, 166, 'SYFA DWI DUTA', '25268814', '0094995657', '2009-09-15', NULL, 'P', NULL, 'Pengawaren RT 4 RW 2, Kec. Karangpucung', NULL, 0, '2026-01-04 19:17:02', '2026-01-04 19:17:02'),
(145, 167, 'TESA APRILIYANA', '25268819', '0091802317', '2009-04-30', NULL, 'P', NULL, 'BANTARPANJANG RT 4 RW 6, Kec. Cimanggu', NULL, 0, '2026-01-04 19:17:03', '2026-01-04 19:17:03'),
(146, 168, 'TIA DININGSIH', '25268820', '0093208436', '2009-12-30', NULL, 'P', NULL, 'Cibalung RT 5 RW 2, Kec. Cimanggu', NULL, 0, '2026-01-04 19:17:03', '2026-01-04 19:17:03'),
(147, 169, 'Valen Anjani', '25268825', '0104357667', '2010-02-05', NULL, 'P', NULL, 'Bantarpanjang RT 4 RW 1, Kec. Cimanggu', NULL, 0, '2026-01-04 19:17:03', '2026-01-04 19:17:03'),
(148, 170, 'VIRA TRI RAHMADANI', '25268828', '0097955734', '2009-09-03', NULL, 'P', NULL, 'Bantarmangu RT 3 RW 3, Kec. Cimanggu', NULL, 0, '2026-01-04 19:17:04', '2026-01-04 19:17:04'),
(149, 171, 'WULAN AMALLIA', '25268838', '0095457135', '2009-10-19', NULL, 'P', NULL, 'Surusunda RT 4 RW 7, Kec. Karangpucung', NULL, 0, '2026-01-04 19:17:05', '2026-01-04 19:17:05'),
(150, 172, 'YUAN NITA', '25268842', '0096836757', '2009-10-24', NULL, 'P', NULL, 'Bantarmangu RT 4 RW 4, Kec. Cimanggu', NULL, 0, '2026-01-04 19:17:06', '2026-01-04 19:17:06'),
(151, 173, 'AMELIA DWI RAMADANI', '25268532', '0106624616', '2010-08-11', NULL, 'P', NULL, 'Rungkang RT 7 RW 2, Kec. Gandrungmangu', NULL, 0, '2026-01-04 19:17:06', '2026-01-04 19:17:06'),
(152, 174, 'ANGGA FIRMANSYAH', '25268543', '0107865220', '2010-08-20', NULL, 'P', NULL, 'Cibalung RT 4 RW 2, Kec. Cimanggu', NULL, 0, '2026-01-04 19:17:06', '2026-01-04 19:17:06'),
(153, 175, 'ANGGER KUKUH LANGGENG RADITYA', '25268544', '0093886321', '2009-05-28', NULL, 'P', NULL, 'Semarang RT 1 RW 6, Kec. Banjarnegara', NULL, 0, '2026-01-04 19:17:07', '2026-01-04 19:17:07'),
(154, 176, 'ANJAR ZAJMIRANTO', '25268547', '0106855021', '2010-07-04', NULL, 'P', NULL, 'Cibalung RT 4 RW 3, Kec. Cimanggu', NULL, 0, '2026-01-04 19:17:07', '2026-01-04 19:17:07'),
(155, 177, 'AZRIL SYAFI\'IL KHUSNA', '25268558', '0101612586', '2010-06-29', NULL, 'P', NULL, 'BANTARMANGU RT 2 RW 6, Kec. Majenang', NULL, 0, '2026-01-04 19:17:08', '2026-01-04 19:17:08'),
(156, 178, 'BAYU SAPUTRA', '25268564', '0091363966', '2009-12-03', NULL, 'P', NULL, 'BANTARPANJANG RT 5 RW 7, Kec. Cimanggu', NULL, 0, '2026-01-04 19:17:09', '2026-01-04 19:17:09'),
(157, 179, 'DAFFA RIZQI RAMADHANI', '25268572', '0107853008', '2010-08-22', NULL, 'P', NULL, 'Adi Jaya RT 10 RW 2, Kec. Terbanggi Besar', NULL, 0, '2026-01-04 19:17:09', '2026-01-04 19:17:09'),
(158, 180, 'Damar Zachary Sheehan', '25268573', '0102202608', '2010-03-31', NULL, 'P', NULL, 'Dermaji RT 2 RW 2, Kec. Lumbir', NULL, 0, '2026-01-04 19:17:09', '2026-01-04 19:17:09'),
(159, 181, 'DIAR RAMADANI', '25268583', '0103698164', '2010-06-10', NULL, 'P', NULL, 'Bantarmangu RT 2 RW 4, Kec. Cimanggu', NULL, 0, '2026-01-04 19:17:10', '2026-01-04 19:17:10'),
(160, 182, 'Fathan Rizqi Mahardika', '25268612', '0109221970', '2010-03-06', NULL, 'P', NULL, 'Panimbang RT 4 RW 10, Kec. Cimanggu', NULL, 0, '2026-01-04 19:17:11', '2026-01-04 19:17:11'),
(161, 183, 'FINZA DWI ATTRISNO', '25268616', '0105835857', '2010-06-26', NULL, 'P', NULL, 'Cinangsi RT 7 RW 7, Kec. Gandrungmangu', NULL, 0, '2026-01-04 19:17:11', '2026-01-04 19:17:11'),
(162, 184, 'IKBAL HIDAYATUROHMAN', '25268633', '0107230869', '2010-07-11', NULL, 'P', NULL, 'Babakan RT 23 RW 5, Kec. Karangpucung', NULL, 0, '2026-01-04 19:17:12', '2026-01-04 19:17:12'),
(163, 185, 'LINTAN SASI ADELIA', '25268852', '0105550886', '2010-07-29', NULL, 'P', NULL, 'SINDANGBARANG RT 1 RW 1, Kec. Karangpucung', NULL, 0, '2026-01-04 19:54:14', '2026-01-04 19:54:14'),
(164, 186, 'Livia Lestari Putri', '25268658', '0109163640', '2010-10-12', NULL, 'P', NULL, 'Kedunggede RT 3 RW 3, Kec. Lumbir', NULL, 0, '2026-01-04 19:54:15', '2026-01-04 19:54:15'),
(165, 187, 'Ma\'ruf Alif Hidayat', '25268667', '0105732843', '2010-03-28', NULL, 'P', NULL, 'Kedungwadas RT 1 RW 4, Kec. Bantarsari', NULL, 0, '2026-01-04 19:54:15', '2026-01-04 19:54:15'),
(166, 188, 'MARSYA AURELIA', '25268666', '0103196131', '2010-03-18', NULL, 'P', NULL, 'Karanggintung RT 5 RW 2, Kec. Gandrungmangu', NULL, 0, '2026-01-04 19:54:15', '2026-01-04 19:54:15'),
(167, 189, 'Muhamad Rapa Ardiansah', '25268686', '0104134157', '2010-10-17', NULL, 'P', NULL, 'Pamulihan RT 3 RW 4, Kec. Karangpucung', NULL, 0, '2026-01-04 19:54:16', '2026-01-04 19:54:16'),
(168, 190, 'MUHAMMAD FAATHIR', '25268694', '0106520003', '2010-01-03', NULL, 'P', NULL, 'Panimbang RT 2 RW 2, Kec. Cimanggu', NULL, 0, '2026-01-04 19:54:16', '2026-01-04 19:54:16'),
(169, 191, 'Munifatun Azka Juniah', '25268701', '0099361956', '2009-06-11', NULL, 'P', NULL, 'Sidamulya RT 3 RW 4, Kec. Karangpucung', NULL, 0, '2026-01-04 19:54:16', '2026-01-04 19:54:16'),
(170, 192, 'Najwa Amalia', '25268705', '0093967827', '2009-08-27', NULL, 'P', NULL, 'muktisari RT 7 RW 2, Kec. Gandrungmangu', NULL, 0, '2026-01-04 19:54:16', '2026-01-04 19:54:16'),
(171, 193, 'NOVITA CLARA ANGELIKA BEBY PUTRI', '25268720', '0091161678', '2009-11-07', NULL, 'P', NULL, 'Karangtengah RT 1 RW 2, Kec. Poncowarno', NULL, 0, '2026-01-04 19:54:17', '2026-01-04 19:54:17'),
(172, 194, 'NUGI PRIA NARA', '25268721', '0095282778', '2009-06-21', NULL, 'P', NULL, 'Rungkang RT 3 RW 2, Kec. Gandrungmangu', NULL, 0, '2026-01-04 19:54:17', '2026-01-04 19:54:17'),
(173, 195, 'NURUL AURA DEWI', '25268722', '0107123108', '2010-01-22', NULL, 'P', NULL, 'Bengbulang RT 3 RW 4, Kec. Karangpucung', NULL, 0, '2026-01-04 19:54:18', '2026-01-04 19:54:18'),
(174, 196, 'NURUL FARADILA', '25268723', '0107553689', '2010-03-25', NULL, 'P', NULL, 'Karanggintung RT 9 RW 4, Kec. Gandrungmangu', NULL, 0, '2026-01-04 19:54:18', '2026-01-04 19:54:18'),
(175, 197, 'RAFI MUZHAFFAR', '25268741', '0104955169', '2010-07-11', NULL, 'P', NULL, 'Cibinong RT 2 RW 8, Kec. Cibinong', NULL, 0, '2026-01-04 19:54:18', '2026-01-04 19:54:18'),
(176, 198, 'Rafikul Fadilah', '25268744', '0081440732', '2008-06-06', NULL, 'P', NULL, 'Cikedondong RT 6 RW 4, Kec. Bantarsari', NULL, 0, '2026-01-04 19:54:19', '2026-01-04 19:54:19'),
(177, 199, 'RAKA RAFIRQA', '25268749', '0109723833', '2010-01-18', NULL, 'P', NULL, 'Bantarmangu RT 1 RW 6, Kec. Cimanggu', NULL, 0, '2026-01-04 19:54:19', '2026-01-04 19:54:19'),
(178, 200, 'Rizal Triyanto', '25268774', '0108806504', '2010-09-23', NULL, 'P', NULL, 'Kedungwadas RT 1 RW 4, Kec. Bantarsari', NULL, 0, '2026-01-04 19:54:19', '2026-01-04 19:54:19'),
(179, 201, 'SEPTIANA RAMADINA', '25268794', '0104082631', '2010-08-08', NULL, 'P', NULL, 'Karanggintung RT 4 RW 4, Kec. Gandrungmangu', NULL, 0, '2026-01-04 19:54:19', '2026-01-04 19:54:19'),
(180, 202, 'SILVIA INDRIANI', '25268800', '0101928901', '2010-02-06', NULL, 'P', NULL, 'Rungkang RT 3 RW 1, Kec. Gandrungmangu', NULL, 0, '2026-01-04 19:54:20', '2026-01-04 19:54:20'),
(181, 203, 'Tria Apriani', '25268823', '0102886325', '2010-04-15', NULL, 'P', NULL, 'Citembong RT 2 RW 4, Kec. Bantarsari', NULL, 0, '2026-01-04 19:54:20', '2026-01-04 19:54:20'),
(182, 204, 'WAFII PRATAMA', '25268831', '0102105127', '2010-06-19', NULL, 'P', NULL, 'Bantarmangu RT 3 RW 6, Kec. Cimanggu', NULL, 0, '2026-01-04 19:54:20', '2026-01-04 19:54:20'),
(183, 205, 'WENDY PRATAMA', '25268835', '0109442347', '2010-01-09', NULL, 'P', NULL, 'Bantarmangu RT 2 RW 4, Kec. Cimanggu', NULL, 0, '2026-01-04 19:54:20', '2026-01-04 19:54:20'),
(184, 206, 'ADINDA JULIANTI', '25268508', '0101971308', '2010-01-05', NULL, 'P', NULL, 'Karangreja RT 6 RW 2, Kec. Cimanggu', NULL, 0, '2026-01-04 20:05:30', '2026-01-04 20:05:30'),
(185, 207, 'AL RAHEZA FERIZQO MAULANA', '25268522', '0103307169', '2010-07-27', NULL, 'P', NULL, 'Bantarpanjang RT 1 RW 3, Kec. Cimanggu', NULL, 0, '2026-01-04 20:05:30', '2026-01-04 20:05:30'),
(186, 208, 'Almira Nurindar Febriani', '25268531', '0106117580', '2010-02-23', NULL, 'P', NULL, 'Ciporos RT 5 RW 3, Kec. Karangpucung', NULL, 0, '2026-01-04 20:05:31', '2026-01-04 20:05:31'),
(187, 209, 'ANAS SAHRUL MUBAROK', '25268535', '3090515982', '2009-08-28', NULL, 'P', NULL, 'Gandrungmanis RT 1 RW 1, Kec. Gandrungmangu', NULL, 0, '2026-01-04 20:05:31', '2026-01-04 20:05:31'),
(188, 210, 'ANGEL SILA ALIFA', '25268542', '0094772868', '2009-06-18', NULL, 'P', NULL, 'Babakan RT 2 RW 1, Kec. Karangpucung', NULL, 0, '2026-01-04 20:05:31', '2026-01-04 20:05:31'),
(189, 211, 'ARDAN MAULID', '25268550', '0109423359', '2010-03-06', NULL, 'P', NULL, 'Kertajaya RT 4 RW 1, Kec. Gandrungmangu', NULL, 0, '2026-01-04 20:05:32', '2026-01-04 20:05:32'),
(190, 212, 'Bunga Fadillah', '25268567', '0104298241', '2010-05-15', NULL, 'P', NULL, 'Dermaji RT 2 RW 6, Kec. Lumbir', NULL, 0, '2026-01-04 20:05:32', '2026-01-04 20:05:32'),
(191, 213, 'CAHYA RAMDANI', '25268568', '0105936159', '2010-11-28', NULL, 'P', NULL, 'Tayemtimur RT 4 RW 6, Kec. Karangpucung', NULL, 0, '2026-01-04 20:05:33', '2026-01-04 20:05:33'),
(192, 214, 'DIMAS NOVIANTO RUSLAN', '25268585', '0109676650', '2010-11-15', NULL, 'P', NULL, 'SURUSUNDA RT 1 RW 7, Kec. Karangpucung', NULL, 0, '2026-01-04 20:05:33', '2026-01-04 20:05:33'),
(193, 215, 'Erik Setiawan', '25268594', '0097290140', '2009-10-18', NULL, 'P', NULL, 'Dermaji RT 5 RW 4, Kec. Lumbir', NULL, 0, '2026-01-04 20:05:33', '2026-01-04 20:05:33'),
(194, 216, 'FAHRI ASYAQIF', '25268603', '0102943597', '2010-09-18', NULL, 'P', NULL, 'KARANGGINTUNG RT 4 RW 4, Kec. Gandrungmangu', NULL, 0, '2026-01-04 20:05:34', '2026-01-04 20:05:34'),
(195, 217, 'Hafiza Safa', '25268624', '0103227283', '2010-07-03', NULL, 'P', NULL, 'Cinangsi RT 5 RW 3, Kec. Gandrungmangu', NULL, 0, '2026-01-04 20:05:34', '2026-01-04 20:05:34'),
(196, 218, 'Haikal Duta Mulya', '25268626', '0101613312', '2010-10-09', NULL, 'P', NULL, 'Cidadap RT 1 RW 5, Kec. Karangpucung', NULL, 0, '2026-01-04 20:05:35', '2026-01-04 20:05:35'),
(197, 219, 'MAFTUH LABIB KAUTSAR', '25268661', '0103642400', '2010-02-07', NULL, 'P', NULL, 'Ciklapa RT 7 RW 1, Kec. Kedungreja', NULL, 0, '2026-01-04 20:05:35', '2026-01-04 20:05:35'),
(198, 220, 'MU ANWARUDIN', '25268677', '0082809959', '2008-05-11', NULL, 'P', NULL, 'GUNUNGTELU RT 1 RW 4, Kec. Karangpucung', NULL, 0, '2026-01-04 20:05:36', '2026-01-04 20:05:36'),
(199, 221, 'MUHAMAD ALFIANSYAH', '25268690', '0109902448', '2010-06-03', NULL, 'P', NULL, 'CINANGSI RT 6 RW 5, Kec. Gandrungmangu', NULL, 0, '2026-01-04 20:05:36', '2026-01-04 20:05:36'),
(200, 222, 'MUHAMMAD SYARIF HIDAYATULLOH', '25268699', '0097391125', '2009-05-08', NULL, 'P', NULL, 'Cingebul RT 3 RW 9, Kec. Lumbir', NULL, 0, '2026-01-04 20:05:37', '2026-01-04 20:05:37'),
(201, 223, 'NADIA FAJRI FAUZIATI', '25268702', '3108252503', '2010-06-18', NULL, 'P', NULL, 'Tayemtimur RT 5 RW 2, Kec. Karangpucung', NULL, 0, '2026-01-04 20:05:37', '2026-01-04 20:05:37'),
(202, 224, 'NAJWA NURINATULLAILA', '25268706', '3102187283', '2010-03-26', NULL, 'P', NULL, 'Cinangsi RT 5 RW 2, Kec. Gandrungmangu', NULL, 0, '2026-01-04 20:05:38', '2026-01-04 20:05:38'),
(203, 225, 'Natasha Agnes Marcia', '25268710', '0103852132', '2009-12-25', NULL, 'P', NULL, 'Ciporos RT 2 RW 7, Kec. Karangpucung', NULL, 0, '2026-01-04 20:05:38', '2026-01-04 20:05:38'),
(204, 226, 'Olivia Larastika', '25268725', '0093258519', '2009-07-10', NULL, 'P', NULL, 'Sindangbarang RT 2 RW 3, Kec. Karangpucung', NULL, 0, '2026-01-04 20:05:38', '2026-01-04 20:05:38'),
(205, 227, 'RAIF AMANULOH ZAIN', '25268748', '0103165747', '2010-03-03', NULL, 'P', NULL, 'Sindangbarang RT 4 RW 10, Kec. Karangpucung', NULL, 0, '2026-01-04 20:05:39', '2026-01-04 20:05:39'),
(206, 228, 'REVFAL SUGIYANTO', '25268757', '0106169151', '2010-08-02', NULL, 'P', NULL, 'CISALAK RT 1 RW 2, Kec. Cimanggu', NULL, 0, '2026-01-04 20:05:39', '2026-01-04 20:05:39'),
(207, 229, 'RIFI ALFIAN FAUZI', '25268764', '0101741601', '2010-08-31', NULL, 'P', NULL, 'Karanggintung RT 7 RW 2, Kec. Gandrungmangu', NULL, 0, '2026-01-04 20:05:40', '2026-01-04 20:05:40'),
(208, 230, 'RIVAN NANDA MARDIKA', '25268770', '0093837156', '2009-08-17', NULL, 'P', NULL, 'Karangreja RT 6 RW 2, Kec. Cimanggu', NULL, 0, '2026-01-04 20:05:40', '2026-01-04 20:05:40'),
(209, 231, 'RIZKA NUR UTAMI', '25268775', '0103957018', '2010-04-26', NULL, 'P', NULL, 'Bengbulang RT 4 RW 2, Kec. Karangpucung', NULL, 0, '2026-01-04 20:05:40', '2026-01-04 20:05:40'),
(210, 232, 'RIZKI TEGAR PRASETYO', '25268778', '0094086356', '2009-05-04', NULL, 'P', NULL, 'Cinangsi RT 1 RW 7, Kec. Gandrungmangu', NULL, 0, '2026-01-04 20:05:41', '2026-01-04 20:05:41'),
(211, 233, 'ROSTIANA SARI INTEN DEWATA', '25268783', '0107546218', '2010-05-18', NULL, 'P', NULL, 'Karangreja RT 6 RW 2, Kec. Cimanggu', NULL, 0, '2026-01-04 20:05:41', '2026-01-04 20:05:41'),
(212, 234, 'Surya hansyah', '25268809', '0099981564', '2009-10-05', NULL, 'P', NULL, 'Cidadap RT 2 RW 5, Kec. Karangpucung', NULL, 0, '2026-01-04 20:05:42', '2026-01-04 20:05:42'),
(213, 235, 'VANI ALVIANA SARI', '25268826', '0091366127', '2009-12-29', NULL, 'P', NULL, 'Cimanggu RT 1 RW 11, Kec. Cimanggu', NULL, 0, '2026-01-04 20:05:42', '2026-01-04 20:05:42'),
(214, 236, 'WAHYU RIZKI PRATAMA', '25268834', '0104006855', '2010-06-05', NULL, 'P', NULL, 'Cibalung RT 3 RW 4, Kec. Cimanggu', NULL, 0, '2026-01-04 20:05:43', '2026-01-04 20:05:43'),
(215, 237, 'WINA WIDIANINGSIH', '25268837', '0103413361', '2010-10-16', NULL, 'P', NULL, 'Boja RT 6 RW 3, Kec. Majenang', NULL, 0, '2026-01-04 20:05:43', '2026-01-04 20:05:43'),
(216, 238, 'YASMIN NUR AFIFAH', '25268839', '0096598088', '2009-04-17', NULL, 'P', NULL, 'Karangpucung RT 4 RW 2, Kec. Karangpucung', NULL, 0, '2026-01-04 20:05:44', '2026-01-04 20:05:44'),
(217, 239, 'YODI SETIAWAN', '25268840', '3092092035', '2009-10-02', NULL, 'P', NULL, 'Kertajaya RT 5 RW 1, Kec. Gandrungmangu', NULL, 0, '2026-01-04 20:05:44', '2026-01-04 20:05:44'),
(218, 240, 'AHMAD KHOIRURRIJAL', '25268519', '3102744462', '2010-02-05', NULL, 'P', NULL, 'Cinangsi RT 5 RW 2, Kec. Gandrungmangu', NULL, 0, '2026-01-04 20:05:44', '2026-01-04 20:05:44'),
(219, 241, 'DENIS NUR AIMAN', '25268578', '0107557020', '2010-06-15', NULL, 'P', NULL, 'Cibalung RT 5 RW 4, Kec. Cimanggu', NULL, 0, '2026-01-04 20:05:44', '2026-01-04 20:05:44'),
(220, 242, 'DIMAS ARGA RIDHO SAPUTRA', '25268584', '0093958692', '2009-06-25', NULL, 'P', NULL, 'Karangpucung RT 3 RW 3, Kec. Karangpucung', NULL, 0, '2026-01-04 20:05:45', '2026-01-04 20:05:45'),
(221, 243, 'DWI NAUFAL HIDAYAT', '25268589', '0097289386', '2009-12-10', NULL, 'P', NULL, 'CINYAWANG RT 2 RW 5, Kec. Patimuan', NULL, 0, '2026-01-04 20:05:46', '2026-01-04 20:05:46'),
(222, 244, 'DYTRA NEZTHA GHAFIKY', '25268591', '0104317672', '2010-05-08', NULL, 'P', NULL, 'SINDANGBARANG RT 4 RW 3, Kec. Karangpucung', NULL, 0, '2026-01-04 20:05:46', '2026-01-04 20:05:46'),
(223, 245, 'FARRAS ALFIAN', '25268611', '0101960799', '2010-05-01', NULL, 'P', NULL, 'Ciporos RT 3 RW 4, Kec. Karangpucung', NULL, 0, '2026-01-04 20:05:46', '2026-01-04 20:05:46'),
(224, 246, 'GALANG AGNESAR RAMADAN', '25268618', '0109685222', '2010-08-17', NULL, 'P', NULL, 'Panimbang RT 1 RW 4, Kec. Cimanggu', NULL, 0, '2026-01-04 20:05:47', '2026-01-04 20:05:47'),
(225, 247, 'HADI FAHMI PERMANA', '25268623', '0098252917', '2009-12-11', NULL, 'P', NULL, 'Karangsari RT 3 RW 4, Kec. Cimanggu', NULL, 0, '2026-01-04 20:05:47', '2026-01-04 20:05:47'),
(226, 248, 'Isnan Bahrul Ulum', '25268638', '0095533395', '2009-12-20', NULL, 'P', NULL, 'Mandala RT 2 RW 5, Kec. Cimanggu', NULL, 0, '2026-01-04 20:05:48', '2026-01-04 20:05:48'),
(227, 249, 'LUTHFI ALIF AMMANULLOH', '25268660', '0102384795', '2010-06-24', NULL, 'P', NULL, 'CIPOROS RT 2 RW 11, Kec. Karangpucung', NULL, 0, '2026-01-04 20:05:49', '2026-01-04 20:05:49'),
(228, 250, 'MAHESA SAPUTRA', '25268663', '0103466600', '2010-05-29', NULL, 'P', NULL, 'Karanggintung RT 3 RW 6, Kec. Gandrungmangu', NULL, 0, '2026-01-04 20:05:49', '2026-01-04 20:05:49'),
(229, 251, 'Masruri Ramadhani', '25268668', '0098092864', '2009-09-08', NULL, 'P', NULL, 'Tayemtimur RT 3 RW 2, Kec. Karangpucung', NULL, 0, '2026-01-04 20:05:49', '2026-01-04 20:05:49'),
(230, 252, 'MUHAMMAD AZFA HAKAMI', '25268692', '0096586469', '2009-12-27', NULL, 'P', NULL, 'Karangpucung RT 2 RW 5, Kec. Karangpucung', NULL, 0, '2026-01-04 20:05:50', '2026-01-04 20:05:50'),
(231, 253, 'MUHAMMAD BAGUS MIFTA FAUZI', '25268693', '0111078789', '2011-02-27', NULL, 'P', NULL, 'Cinangsi RT 1 RW 3, Kec. Gandrungmangu', NULL, 0, '2026-01-04 20:05:50', '2026-01-04 20:05:50'),
(232, 254, 'Naufal Adi Nugroho', '25268711', '0096261356', '2009-05-14', NULL, 'P', NULL, 'Panimbang RT 1 RW 2, Kec. Cimanggu', NULL, 0, '2026-01-04 20:05:51', '2026-01-04 20:05:51'),
(233, 255, 'PAZHAR IBRAHIM', '25268727', '0107666641', '2010-03-12', NULL, 'P', NULL, 'MANDALA RT 2 RW 1, Kec. Cimanggu', NULL, 0, '2026-01-04 20:05:51', '2026-01-04 20:05:51'),
(234, 256, 'QINAN PERLIYANSAH', '25268728', '0098236930', '2009-04-02', NULL, 'P', NULL, 'Ciporos RT 3 RW 8, Kec. Karangpucung', NULL, 0, '2026-01-04 20:05:51', '2026-01-04 20:05:51'),
(235, 257, 'QODRI HANDAYANA', '25268729', '0103060456', '2010-06-08', NULL, 'P', NULL, 'Gunungtelu RT 3 RW 3, Kec. Karangpucung', NULL, 0, '2026-01-04 20:05:52', '2026-01-04 20:05:52'),
(236, 258, 'RADITYA ALDIYANSAH', '25268732', '0103129697', '2010-03-05', NULL, 'P', NULL, 'Mandala RT 3 RW 5, Kec. Cimanggu', NULL, 0, '2026-01-04 20:05:52', '2026-01-04 20:05:52'),
(237, 259, 'RAFA PUTRA RAMADHAN', '25268736', '0095041956', '2009-09-12', NULL, 'P', NULL, 'Karanggintung RT 10 RW 3, Kec. Gandrungmangu', NULL, 0, '2026-01-04 20:05:53', '2026-01-04 20:05:53'),
(238, 260, 'RAFI ZAIDAN LUBAWI', '25268742', '0108188576', '2010-02-22', NULL, 'P', NULL, 'PANIMBANG RT 1 RW 9, Kec. Karanglewas', NULL, 0, '2026-01-04 20:05:53', '2026-01-04 20:05:53'),
(239, 261, 'REVAN FAUZAN', '25268756', '0106146078', '2010-12-06', NULL, 'P', NULL, 'Cibalung RT 6 RW 1, Kec. Cimanggu', NULL, 0, '2026-01-04 20:05:54', '2026-01-04 20:05:54'),
(240, 262, 'RIFKI AUNUR ARI RAHMAN', '25268765', '0099978850', '2009-10-21', NULL, 'P', NULL, 'Panimbang RT 1 RW 5, Kec. Cimanggu', NULL, 0, '2026-01-04 20:05:54', '2026-01-04 20:05:54'),
(241, 263, 'RIKI PEBRIYAN', '25268768', '0104756378', '2010-02-10', NULL, 'P', NULL, 'Tayem RT 1 RW 2, Kec. Karangpucung', NULL, 0, '2026-01-04 20:05:55', '2026-01-04 20:05:55'),
(242, 264, 'RIZKI FARHAN ADITIANA', '25268777', '0108949103', '2010-04-26', NULL, 'P', NULL, 'Cisalak RT 8 RW 2, Kec. Cimanggu', NULL, 0, '2026-01-04 20:05:55', '2026-01-04 20:05:55'),
(243, 265, 'Slamet', '25268806', '0098757492', '2009-04-13', NULL, 'P', NULL, 'Tayem RT 4 RW 2, Kec. Karangpucung', NULL, 0, '2026-01-04 20:05:56', '2026-01-04 20:05:56'),
(244, 266, 'Viken Arif Wicaksono', '25268827', '0097920641', '2009-03-24', NULL, 'P', NULL, 'Ciporos RT 2 RW 2, Kec. Karangpucung', NULL, 0, '2026-01-04 20:05:57', '2026-01-04 20:05:57'),
(245, 267, 'ZAENAL ABIDIN', '25268843', '0101461752', '2010-05-07', NULL, 'P', NULL, 'Tayemtimur RT 2 RW 2, Kec. Karangpucung', NULL, 0, '2026-01-04 20:05:57', '2026-01-04 20:05:57'),
(246, 268, 'ABDHI PRATAMA PRIMA ANGGARA', '25268502', '0119066266', '2011-10-30', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-04 20:34:22', '2026-01-04 20:34:22'),
(247, 269, 'ABIAN MAULANA', '25268504', '0096698215', '2009-12-30', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-04 20:34:23', '2026-01-04 20:34:23'),
(248, 270, 'ADITYA ZAKI ALFARIZI', '25268510', '0107187880', '2010-04-27', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-04 20:34:23', '2026-01-04 20:34:23'),
(249, 271, 'AGIS SALMAN DHAIFULLAH', '25268514', '3097459470', '2009-12-28', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-04 20:34:24', '2026-01-04 20:34:24'),
(250, 272, 'ALDO HERLINO', '25268523', '0103238787', '2010-03-30', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-04 20:34:24', '2026-01-04 20:34:24'),
(251, 273, 'ALFIAN JAMALUDIN', '25268525', '0104441149', '2010-06-10', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-04 20:34:25', '2026-01-04 20:34:25'),
(252, 274, 'ALIF MULYANA', '25268528', '0103425130', '2010-07-04', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-04 20:34:25', '2026-01-04 20:34:25'),
(253, 275, 'ANDRE NUR RAMADITYA', '25268538', '0094272657', '2009-08-27', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-04 20:34:25', '2026-01-04 20:34:25'),
(254, 276, 'ARJUN NAJAY', '25268553', '0091545056', '2009-08-09', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-04 20:34:26', '2026-01-04 20:34:26'),
(255, 277, 'BAGUS KHOERUL AZAM', '25268561', '0099116744', '2009-08-18', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-04 20:34:26', '2026-01-04 20:34:26'),
(256, 278, 'BAMBANG PRASETIO', '25268563', '0104097555', '2010-06-07', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-04 20:34:26', '2026-01-04 20:34:26'),
(257, 279, 'DENY TRIAWAN', '25268579', '0095939413', '2009-05-15', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-04 20:34:27', '2026-01-04 20:34:27'),
(258, 280, 'DEVIN ZORA ALTHAFAH', '25268581', '0108198718', '2010-06-15', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-04 20:34:27', '2026-01-04 20:34:27'),
(259, 281, 'Dimas Setyo Nugroho', '25268586', '0091834025', '2009-11-06', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-04 20:34:28', '2026-01-04 20:34:28'),
(260, 282, 'DZIHNI LUTHFI SHAFIQ', '25268592', '0104550913', '2010-06-20', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-04 20:34:28', '2026-01-04 20:34:28'),
(261, 283, 'EVAN HENDRI YANTO', '25268597', '0103965220', '2010-02-10', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-04 20:34:29', '2026-01-04 20:34:29'),
(262, 284, 'Evan Prasetio', '25268598', '0101074910', '2010-01-18', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-04 20:34:30', '2026-01-04 20:34:30'),
(263, 285, 'Fajar Sidiq', '25268610', '0107410742', '2010-04-25', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-04 20:34:30', '2026-01-04 20:34:30'),
(264, 286, 'Gilang Aji Pamungkas', '25268620', '0093997038', '2009-11-22', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-04 20:34:30', '2026-01-04 20:34:30'),
(265, 287, 'INDRA PRASETIA', '25268635', '0082982838', '2008-06-13', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-04 20:34:31', '2026-01-04 20:34:31'),
(266, 288, 'Irfan Bagaskoro', '25268850', '0103323023', '2010-06-22', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-04 20:34:31', '2026-01-04 20:34:31'),
(267, 289, 'KEVAN JUN CHAIRIL', '25268645', '0081812230', '2008-06-08', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-04 20:34:32', '2026-01-04 20:34:32'),
(268, 290, 'Kevin Dwi Saputra', '25268646', '0104616491', '2010-05-02', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-04 20:34:33', '2026-01-04 20:34:33'),
(269, 291, 'KIRAN ARDIANSYAH', '25268654', '0097473136', '2009-03-26', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-04 20:34:33', '2026-01-04 20:34:33'),
(270, 292, 'MANGGALA YUDHA KELANA', '25268664', '0098254743', '2009-08-14', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-04 20:34:34', '2026-01-04 20:34:34'),
(271, 293, 'MAULANA MALIK IBRAHIM', '25268670', '0095855222', '2009-05-02', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-04 20:34:34', '2026-01-04 20:34:34'),
(272, 294, 'Muhamad Fadil', '25268681', '0102330595', '2010-11-03', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-04 20:34:35', '2026-01-04 20:34:35'),
(273, 295, 'MUHAMAD REZA', '25268688', '0106819250', '2010-06-22', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-04 20:34:36', '2026-01-04 20:34:36'),
(274, 296, 'MUHAMAD YUNUS ALFARIZI', '25268689', '0094870979', '2009-01-26', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-04 20:34:36', '2026-01-04 20:34:36'),
(275, 297, 'Muhammad Julian Rivano', '25268696', '0098414925', '2009-07-11', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-04 20:34:37', '2026-01-04 20:34:37'),
(276, 298, 'NANDA PRADIPTYA TAMA', '25268708', '0094480382', '2009-03-12', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-04 20:34:37', '2026-01-04 20:34:37'),
(277, 299, 'NIZAR RAMADHAN', '25268718', '0101515462', '2010-09-07', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-04 20:34:37', '2026-01-04 20:34:37'),
(278, 300, 'RAFA ADE MEILA PUTRA', '25268733', '0104334159', '2010-05-01', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-04 20:34:37', '2026-01-04 20:34:37'),
(279, 301, 'Rahman Dani', '25268746', '0081692807', '2008-09-16', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-04 20:34:38', '2026-01-04 20:34:38');
INSERT INTO `siswa` (`id`, `user_id`, `nama`, `nis`, `nisn`, `tgl_lahir`, `no_hp`, `jenis_kelamin`, `no_hp_ortu`, `alamat`, `kelas_id`, `is_lulus`, `created_at`, `updated_at`) VALUES
(280, 302, 'REHAN MAULIDIN', '25268752', '0109949402', '2010-02-18', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-04 20:34:39', '2026-01-04 20:34:39'),
(281, 303, 'RIDO SETIAWAN', '25268762', '0096789105', '2009-12-11', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-04 20:34:39', '2026-01-04 20:34:39'),
(282, 304, 'ACHMAD NUR SAEFI', '25268506', '0097085415', '2009-12-29', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-04 20:41:55', '2026-01-04 20:41:55'),
(283, 305, 'Adliyansah Ramadan', '25268511', '0103494177', '2010-09-05', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-04 20:41:55', '2026-01-04 20:41:55'),
(284, 306, 'AFIF NUR SAPUTRA', '25268512', '0091517258', '2009-12-27', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-04 20:41:55', '2026-01-04 20:41:55'),
(285, 307, 'AIRLANGGA ADITIYA SAPUTRA', '25268520', '0109082807', '2010-07-20', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-04 20:41:56', '2026-01-04 20:41:56'),
(286, 308, 'AR RAYYAN TIZAR FIRDAUS', '25268549', '0105708748', '2010-06-17', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-04 20:41:56', '2026-01-04 20:41:56'),
(287, 309, 'AZIS SYAKUR HAFIDZI', '25268556', '0099217432', '2009-07-20', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-04 20:41:56', '2026-01-04 20:41:56'),
(288, 310, 'DENDRA SAPUTRA', '25268577', '0092183640', '2009-08-14', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-04 20:41:57', '2026-01-04 20:41:57'),
(289, 311, 'FATIMAH SEKAR KINASIH', '25268613', '0101964930', '2010-01-01', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-04 20:41:58', '2026-01-04 20:41:58'),
(290, 312, 'HENK QI RACHMAT BACHTIAR', '25268629', '0108143554', '2010-07-15', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-04 20:41:58', '2026-01-04 20:41:58'),
(291, 313, 'Hexa Bona Raditya', '25268631', '0095007966', '2009-11-22', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-04 20:41:59', '2026-01-04 20:41:59'),
(292, 314, 'JONI PRAYOGA', '25268641', '0109368315', '2010-07-11', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-04 20:42:00', '2026-01-04 20:42:00'),
(293, 315, 'Kharis Saktia Pebriawan', '25268652', '0107529182', '2010-02-25', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-04 20:42:00', '2026-01-04 20:42:00'),
(294, 316, 'KIRANA NURMALA PUTRI', '25268655', '0106827479', '2010-06-24', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-04 20:42:01', '2026-01-04 20:42:01'),
(295, 317, 'MAHESA AFGANI', '25268662', '0098570083', '2009-05-17', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-04 20:42:01', '2026-01-04 20:42:01'),
(296, 318, 'MEIKEL KELVIN ROLINZO', '25268671', '0102945178', '2010-05-13', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-04 20:42:01', '2026-01-04 20:42:01'),
(297, 319, 'MOHAMAD ALDI FIRMANSAH', '25268680', '0154377223', '2009-04-07', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-04 20:42:02', '2026-01-04 20:42:02'),
(298, 320, 'MUHAMMAD AQIL MUZZAKI', '25268691', '0108145224', '2010-11-28', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-04 20:42:02', '2026-01-04 20:42:02'),
(299, 321, 'MUHAMMAD FARHAN', '25268695', '0094788022', '2009-10-31', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-04 20:42:03', '2026-01-04 20:42:03'),
(300, 322, 'RAFA ADIRA PUTRA', '25268734', '0101744671', '2010-07-26', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-04 20:42:03', '2026-01-04 20:42:03'),
(301, 323, 'RAFA SEPTIAN PRATAMA', '25268737', '0092182294', '2009-09-03', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-04 20:42:04', '2026-01-04 20:42:04'),
(302, 324, 'RAFAEL KAZAN AL KAIRI', '25268738', '0095827010', '2009-12-03', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-04 20:42:05', '2026-01-04 20:42:05'),
(303, 325, 'RAFFA ADE KURNIAWAN', '25268740', '0095610987', '2009-12-23', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-04 20:42:05', '2026-01-04 20:42:05'),
(304, 326, 'RAFIF ARDANA SAKHI', '25268743', '0101657688', '2010-06-10', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-04 20:42:05', '2026-01-04 20:42:05'),
(305, 327, 'Rama Fikri Ardiansah', '25268750', '0094571571', '2009-03-04', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-04 20:42:06', '2026-01-04 20:42:06'),
(306, 328, 'REZA HARIS PRATAMA', '25268759', '0095227023', '2009-04-02', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-04 20:42:06', '2026-01-04 20:42:06'),
(307, 329, 'RIDHO FAHRUL AMANAH', '25268760', '3099028149', '2009-12-06', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-04 20:42:06', '2026-01-04 20:42:06'),
(308, 330, 'RIDHO MULYANA', '25268761', '0097061033', '2009-07-29', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-04 20:42:07', '2026-01-04 20:42:07'),
(309, 331, 'RIFKI TAUFIQ MUBAROK', '25268766', '0094205749', '2009-12-08', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-04 20:42:08', '2026-01-04 20:42:08'),
(310, 332, 'RIZAL FAHMA', '25268772', '0103808018', '2010-12-29', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-04 20:42:08', '2026-01-04 20:42:08'),
(311, 333, 'Rizky Ammar Said', '25268779', '0103584850', '2010-08-07', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-04 20:42:08', '2026-01-04 20:42:08'),
(312, 334, 'Voza Syafiq Mu\'ammar', '25268830', '0104226720', '2010-01-23', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-04 20:42:08', '2026-01-04 20:42:08'),
(313, 335, 'Wahyu Hanif Saefulloh', '25268833', '0098591610', '2009-10-17', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-04 20:42:09', '2026-01-04 20:42:09'),
(314, 336, 'YONKI ARI WIBOWO', '25268841', '0109982823', '2010-07-22', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-04 20:42:10', '2026-01-04 20:42:10'),
(315, 337, 'AFIN KURNIAWAN', '25268513', '0087491155', NULL, NULL, 'P', NULL, NULL, NULL, 0, '2026-01-04 21:03:42', '2026-01-04 21:03:42'),
(316, 338, 'ANALIA PASARANI', '25268534', '0091691499', NULL, NULL, 'P', NULL, NULL, NULL, 0, '2026-01-04 21:03:43', '2026-01-04 21:03:43'),
(318, 396, 'ABDUL RAHMAN FADILAH', '25268503', '3095314473', '2009-07-04', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:12:39', '2026-01-06 18:12:39'),
(319, 397, 'AGUNG PRASETYO', '25268515', '0106913020', '2010-03-26', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:12:40', '2026-01-06 18:12:40'),
(320, 398, 'Alfisyah Gusta', '25268527', '0101127286', '2010-08-25', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:12:40', '2026-01-06 18:12:40'),
(321, 399, 'ANDIKA FIRMANSYAH', '25268537', '0104445369', '2010-03-21', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:12:41', '2026-01-06 18:12:41'),
(322, 400, 'ASYRAF KHOLIQ ARDANI', '25268554', '0109170816', '2010-07-30', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:12:42', '2026-01-06 18:12:42'),
(323, 401, 'BAMBANG FEBRIANSYAH', '25268562', '0099084092', '2009-02-20', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:12:42', '2026-01-06 18:12:42'),
(324, 402, 'DHAFA AL AMIEN', '25268582', '0094327455', '2009-12-22', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:12:43', '2026-01-06 18:12:43'),
(325, 403, 'EVAN DARMA PUTRA', '25268596', '0096101138', '2009-07-28', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:12:43', '2026-01-06 18:12:43'),
(326, 404, 'Faizal Tusrono', '25268607', '0084774048', '2008-12-12', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:12:44', '2026-01-06 18:12:44'),
(327, 405, 'FAJAR HARIYANTO', '25268608', '0109488304', '2010-01-07', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:12:44', '2026-01-06 18:12:44'),
(328, 406, 'Hafizd Eri Saputra', '25268625', '0103944171', '2010-01-04', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:12:45', '2026-01-06 18:12:45'),
(329, 407, 'Haikal Syahrul Hidayat', '25268627', '0082612968', '2008-07-29', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:12:45', '2026-01-06 18:12:45'),
(330, 408, 'IRKHAMMAFIF ELSA MAHENDRA', '25268636', '0108675426', '2010-02-11', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:12:46', '2026-01-06 18:12:46'),
(331, 409, 'KELVIN ALIF SAPUTRA', '25268644', '0093006962', '2009-12-31', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:12:46', '2026-01-06 18:12:46'),
(332, 410, 'KHABIB ANANDA ACHMAD NOFEBRI', '25268650', '3083235434', '2008-11-14', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:12:47', '2026-01-06 18:12:47'),
(333, 411, 'MUFLIH NUR RAMADAN', '25268679', '0092382811', '2009-09-30', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:12:47', '2026-01-06 18:12:47'),
(334, 412, 'MUHAMAD FALLIH LUTHFI', '25268683', '0106051459', '2010-06-08', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:12:48', '2026-01-06 18:12:48'),
(335, 413, 'MUHAMMAD RAAFID SUBEKTI', '25268697', '0096031994', '2009-06-29', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:12:49', '2026-01-06 18:12:49'),
(336, 414, 'MUHAMMAD TANAYA JUNIOR', '25268700', '0102736376', '2010-07-15', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:12:49', '2026-01-06 18:12:49'),
(337, 415, 'OKTA RIYAN MUHAMMAD AZHAR', '25268724', '0106520486', '2010-10-25', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:12:50', '2026-01-06 18:12:50'),
(338, 416, 'PANGGIH PANGESTU', '25268726', '3102385412', '2010-04-11', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:12:51', '2026-01-06 18:12:51'),
(339, 417, 'RAFA IKHWAN ATTALANI', '25268735', '0102239484', '2010-01-11', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:12:52', '2026-01-06 18:12:52'),
(340, 418, 'Rifay Bingut Riyadi', '25268763', '0097996239', '2009-11-14', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:12:52', '2026-01-06 18:12:52'),
(341, 419, 'Rivano Mustofa', '25268771', '0107995540', '2010-08-04', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:12:53', '2026-01-06 18:12:53'),
(342, 420, 'SAHRUL GANIMA', '25268787', '0092521688', '2009-04-20', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:12:53', '2026-01-06 18:12:53'),
(343, 421, 'Sandy Bagus Ramadhan', '25268789', '0109113533', '2010-08-28', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:12:54', '2026-01-06 18:12:54'),
(344, 422, 'SULTAN YAHYA', '25268808', '0074443936', '2007-08-15', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:12:55', '2026-01-06 18:12:55'),
(345, 423, 'SYAHMINAN ABIB KHOLISON RAMADAN', '25268812', '3090098194', '2009-09-06', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:12:56', '2026-01-06 18:12:56'),
(346, 424, 'ABID RAMDANI', '25268505', '0105288852', '2010-08-12', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:12:58', '2026-01-06 18:12:58'),
(347, 425, 'ADIT PRASTIAN', '25268509', '0105560255', '2010-09-21', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:12:59', '2026-01-06 18:12:59'),
(348, 426, 'AGUS ANUGRAH', '25268516', '0106838439', '2010-08-07', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:12:59', '2026-01-06 18:12:59'),
(349, 427, 'AL HILAL HAMDI', '25268521', '0109933131', '2010-06-18', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:13:00', '2026-01-06 18:13:00'),
(350, 428, 'ALFIN RAMDANI PUTRA', '25268526', '0093891644', '2009-09-02', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:13:00', '2026-01-06 18:13:00'),
(351, 429, 'ANDREAS SAPUTRA', '25268539', '0095176218', '2009-07-28', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:13:01', '2026-01-06 18:13:01'),
(352, 430, 'ANTON BUDI MULYONO', '25268548', '0099711105', '2009-07-13', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:13:02', '2026-01-06 18:13:02'),
(353, 431, 'DAVA ANINDRA SETIA PRATAMA', '25268575', '0104657784', '2010-05-05', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:13:02', '2026-01-06 18:13:02'),
(354, 432, 'DIQTA ANDIKA', '25268587', '0079018685', '2007-07-12', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:13:03', '2026-01-06 18:13:03'),
(355, 433, 'DONI IBNU SAPUTRA', '25268588', '3097432995', '2009-11-20', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:13:04', '2026-01-06 18:13:04'),
(356, 434, 'EKA MARDIAN', '25268593', '0107564137', '2010-03-30', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:13:04', '2026-01-06 18:13:04'),
(357, 435, 'FABIANO AL FATHIR', '25268599', '0107689683', '2010-03-05', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:13:05', '2026-01-06 18:13:05'),
(358, 436, 'FAHRI SAHENDRA', '25268605', '0096006049', '2009-06-22', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:13:05', '2026-01-06 18:13:05'),
(359, 437, 'FAISAL NUR HIDAYAT', '25268606', '0107797974', '2010-12-21', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:13:06', '2026-01-06 18:13:06'),
(360, 438, 'FAJAR PRATAMA KAMIL', '25268609', '0105884171', '2010-07-31', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:13:07', '2026-01-06 18:13:07'),
(361, 439, 'GALANG MENTARI PUTRA', '25268619', '0107448765', '2010-01-21', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:13:07', '2026-01-06 18:13:07'),
(362, 440, 'HANIF KURNIAWAN SAPUTRA', '25268628', '0101256049', '2010-04-02', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:13:08', '2026-01-06 18:13:08'),
(363, 441, 'IKO CITRA TRI SATRIO', '25268634', '0101636434', '2010-03-11', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:13:08', '2026-01-06 18:13:08'),
(364, 442, 'KHAIRUL MU\'IZZ', '25268651', '0109173459', '2010-07-25', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:13:09', '2026-01-06 18:13:09'),
(365, 443, 'MOCHAMAD RIVALDY', '25268676', '0096778489', '2009-05-13', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:13:09', '2026-01-06 18:13:09'),
(366, 444, 'Muhamad Fadil Aldiyansah', '25268682', '0107557809', '2010-09-30', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:13:10', '2026-01-06 18:13:10'),
(367, 445, 'Muhamad Fathurrohman', '25268684', '0104381022', '2010-01-10', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:13:10', '2026-01-06 18:13:10'),
(368, 446, 'MUHAMMAD RIZKY PRATAMA SAEFUDIN', '25268851', '0107974764', '2010-05-31', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:13:13', '2026-01-06 18:13:13'),
(369, 447, 'NANDA HAFIZ FAUZIAN', '25268707', '0092436499', '2009-06-12', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:13:14', '2026-01-06 18:13:14'),
(370, 448, 'NAZRIL WAHDA AL KHUSNA', '25268714', '0107324316', '2010-04-13', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:13:15', '2026-01-06 18:13:15'),
(371, 449, 'Rendika Pratama', '25268753', '0092008409', '2009-11-14', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:13:15', '2026-01-06 18:13:15'),
(372, 450, 'REVAN ARDYANSYAH', '25268755', '0095369145', '2009-07-06', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:13:16', '2026-01-06 18:13:16'),
(373, 451, 'RIFKY RAHMAT SHOLEHAN', '25268767', '0107644008', '2010-04-12', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:13:17', '2026-01-06 18:13:17'),
(374, 452, 'RIZAL NU\'MAN SYARIF', '25268773', '0102811120', '2010-03-09', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:13:17', '2026-01-06 18:13:17'),
(375, 453, 'RIZQI FIRMANSYAH', '25268781', '0109837043', '2010-06-07', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:13:18', '2026-01-06 18:13:18'),
(376, 454, 'SATRIA WAHYU PRATAMA', '25268790', '0098165586', '2009-11-25', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:13:19', '2026-01-06 18:13:19'),
(377, 455, 'SUBUR ABADI', '25268807', '0104140241', '2010-09-19', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:13:19', '2026-01-06 18:13:19'),
(378, 456, 'TEDI PEBRIYANTO', '25268816', '0106502448', '2010-02-17', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:13:20', '2026-01-06 18:13:20'),
(379, 457, 'WAHYU ADI SAPUTRO', '25268832', '0107800992', '2010-08-21', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:13:20', '2026-01-06 18:13:20'),
(380, 458, 'WILY SAPUTRA', '25268836', '0099849352', '2009-10-17', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:13:21', '2026-01-06 18:13:21'),
(381, 459, 'ZHARIF KHOERULLOH', '25268846', '0105601771', '2010-07-16', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:13:21', '2026-01-06 18:13:21'),
(382, 460, 'ZIDAN AMUKTI RAZENDRA', '25268847', '0095286877', '2009-10-13', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:13:22', '2026-01-06 18:13:22'),
(383, 461, 'ABHISTA ENDAH PRAMESTI', '24258082', '0095739972', '2009-08-06', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:27:39', '2026-01-06 18:27:39'),
(384, 462, 'Afifah', '24258092', '0096374171', '2009-01-11', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:27:39', '2026-01-06 18:27:39'),
(385, 463, 'AL ZAETUN NURIN DESIDIN', '24258109', '0098922073', '2009-10-18', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:27:40', '2026-01-06 18:27:40'),
(386, 464, 'ALIFA ALFIYATURROHIMAH', '24258115', '0097005125', '2009-03-06', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:27:41', '2026-01-06 18:27:41'),
(387, 465, 'ALIYA HUSNIYA ALTHAF', '24258117', '0106978208', '2010-04-07', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:27:41', '2026-01-06 18:27:41'),
(388, 466, 'AMANDA LESTARI', '24258121', '0094176369', '2009-07-08', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:27:43', '2026-01-06 18:27:43'),
(389, 467, 'ANISA HAWA AZIZZAH', '24258132', '0095117764', '2009-05-14', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:27:43', '2026-01-06 18:27:43'),
(390, 468, 'DEVITA CANDRA ANGGRAENI', '24258186', '0094433762', '2009-12-08', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:27:44', '2026-01-06 18:27:44'),
(391, 469, 'Dian Lolita Ningrum', '24258188', '0099299234', '2009-07-03', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:27:44', '2026-01-06 18:27:44'),
(392, 470, 'Dinda Olia', '24258194', '0099136785', '2009-07-09', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:27:45', '2026-01-06 18:27:45'),
(393, 471, 'DIVA PURYANI', '24258195', '0087459604', '2008-12-14', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:27:46', '2026-01-06 18:27:46'),
(394, 472, 'ERISA ARYANTI', '24258203', '0082815546', '2008-11-12', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:27:46', '2026-01-06 18:27:46'),
(395, 473, 'ISNA FITRI FAJARINA', '24258258', '0097190840', '2009-09-21', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:27:47', '2026-01-06 18:27:47'),
(396, 474, 'KHUMAIROH', '24258278', '0097706952', '2009-02-10', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:27:47', '2026-01-06 18:27:47'),
(397, 475, 'KIRANA LARAS SATY', '24258280', '0091525475', '2009-11-14', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:27:48', '2026-01-06 18:27:48'),
(398, 476, 'NONIK TRIUTAMI', '24258329', '0081035779', '2008-11-12', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:27:48', '2026-01-06 18:27:48'),
(399, 477, 'NOVA DIANTI', '24258330', '0085024421', '2008-11-29', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:27:49', '2026-01-06 18:27:49'),
(400, 478, 'Nur Fitri Oktavia', '24258333', '0081930919', '2008-10-06', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:27:49', '2026-01-06 18:27:49'),
(401, 479, 'REGINA APRILIA PUTRI', '24258363', '0094535867', '2009-04-07', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:27:50', '2026-01-06 18:27:50'),
(402, 480, 'RISKA RAHMAWATI', '24258382', '0083018294', '2008-11-26', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:27:50', '2026-01-06 18:27:50'),
(403, 481, 'Rizka Oktavia', '24258390', '0091507004', '2009-10-29', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:27:51', '2026-01-06 18:27:51'),
(404, 482, 'RIZQYA AFIFAH RAMADHANI', '24258396', '3099940263', '2009-09-03', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:27:52', '2026-01-06 18:27:52'),
(405, 483, 'SARAH ATHA GHUMAISHA', '24258410', '0095537197', '2009-04-07', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:27:52', '2026-01-06 18:27:52'),
(406, 484, 'SEPTI BODI RAHAYU', '24258415', '0086210121', '2008-09-03', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:27:53', '2026-01-06 18:27:53'),
(407, 485, 'TITAN FIRLIYANSYAH', '24258449', '0092770053', '2009-01-31', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:27:53', '2026-01-06 18:27:53'),
(408, 486, 'Tri Yuniarti Sholehah', '24258453', '0084072662', '2008-06-26', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:27:54', '2026-01-06 18:27:54'),
(409, 487, 'UNDATUL AWALIYAH', '24258457', '0086419248', '2008-09-27', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:27:55', '2026-01-06 18:27:55'),
(410, 488, 'WENING DWI CAHYANINGTYAS', '24258469', '0096179766', '2009-06-27', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:27:55', '2026-01-06 18:27:55'),
(411, 489, 'ANDARA NURAINI AGUSTIN', '24258126', '0094330816', '2009-08-16', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:27:56', '2026-01-06 18:27:56'),
(412, 490, 'ANDINA FIRASHA ZAHRA', '24258127', '0096252011', '2009-06-15', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:27:57', '2026-01-06 18:27:57'),
(413, 491, 'Ardyta Maya Styani', '24258139', '0083190478', '2008-05-03', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:27:58', '2026-01-06 18:27:58'),
(414, 492, 'ASIFA SALWA RAHMADANI', '24258146', '0095339706', '2009-08-21', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:27:58', '2026-01-06 18:27:58'),
(415, 493, 'Devika Chelsea Agustina', '24258185', '0086185636', '2008-09-06', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:27:59', '2026-01-06 18:27:59'),
(416, 494, 'DEWI ALTHAFUNNISA', '24258187', '0098879680', '2009-07-01', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:28:00', '2026-01-06 18:28:00'),
(417, 495, 'DINA NURMILAH', '24258193', '0083047827', '2008-10-07', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:28:01', '2026-01-06 18:28:01'),
(418, 496, 'Faridha Shafa Rania', '24258218', '0095853729', '2009-04-19', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:28:02', '2026-01-06 18:28:02'),
(419, 497, 'FATIKA YULI WIJAYANTI', '24258221', '0085656929', '2008-07-18', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:28:03', '2026-01-06 18:28:03'),
(420, 498, 'Febi Dwi Lutvitha', '24258224', '0094049437', '2009-02-02', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:28:04', '2026-01-06 18:28:04'),
(421, 499, 'FEBY ELISA', '24258227', '0093941057', '2009-02-27', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:28:04', '2026-01-06 18:28:04'),
(422, 500, 'Isna Wati Nurhafifah', '24258259', '0093996427', '2009-05-06', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:28:05', '2026-01-06 18:28:05'),
(423, 501, 'JESIKA AULIA PUTRI', '24258263', '0093080827', '2009-08-07', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:28:06', '2026-01-06 18:28:06'),
(424, 502, 'KHARISMA ANNISA PUTRI', '24258276', '0094245553', '2009-08-23', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:28:06', '2026-01-06 18:28:06'),
(425, 503, 'LAILI ISNI RAHMAWATI', '24258284', '0096622566', '2009-03-31', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:28:07', '2026-01-06 18:28:07'),
(426, 504, 'LILY SAOMI AGESTINA', '24258287', '0096549749', '2009-08-16', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:28:08', '2026-01-06 18:28:08'),
(427, 505, 'LUSIANA NURAENI', '24258289', '0097283195', '2009-03-25', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:28:09', '2026-01-06 18:28:09'),
(428, 506, 'NAYLA FAZA AL ANSOR', '24258323', '0098300501', '2009-08-22', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:28:09', '2026-01-06 18:28:09'),
(429, 507, 'Putri Yulianti', '24258343', '0095858166', '2009-07-22', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:28:10', '2026-01-06 18:28:10'),
(430, 508, 'RAFIKA MIFTAH NURJANAH', '24258348', '0093219873', '2009-01-01', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:28:11', '2026-01-06 18:28:11'),
(431, 509, 'Rani Riama Ulya', '24258359', '0087627181', '2008-11-10', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:28:11', '2026-01-06 18:28:11'),
(432, 510, 'Rozana Humayroh', '24258399', '0094261271', '2009-07-29', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:28:12', '2026-01-06 18:28:12'),
(433, 511, 'SANTI NUR MALASARI', '24258408', '0096105247', '2009-05-21', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:28:13', '2026-01-06 18:28:13'),
(434, 512, 'SITI NUR AENI', '24258424', '0098325472', '2009-01-05', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:28:14', '2026-01-06 18:28:14'),
(435, 513, 'Siva Rahmania', '24258425', '0092660563', '2009-10-06', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:28:14', '2026-01-06 18:28:14'),
(436, 514, 'SUCI NAELA', '24258431', '0091102210', '2009-07-13', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:28:15', '2026-01-06 18:28:15'),
(437, 515, 'SYAILA SALSA NUR HIDAYAH', '24258440', '0091394947', '2009-12-31', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:28:16', '2026-01-06 18:28:16'),
(438, 516, 'VELIAN AULIA', '24258462', '0098685666', '2009-06-20', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:28:16', '2026-01-06 18:28:16'),
(439, 517, 'YOLANDA JATI LUTNA FATIN', '24258475', '0093244537', '2009-05-06', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:28:17', '2026-01-06 18:28:17'),
(440, 518, 'YULI NUR AINI', '24258477', '0093125197', '2008-07-10', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:28:17', '2026-01-06 18:28:17'),
(441, 519, 'Alifnatun Nawal Hikmah', '24258116', '0092797713', '2009-04-14', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:28:18', '2026-01-06 18:28:18'),
(442, 520, 'Alvina Anggraeni', '24258120', '0096836529', '2009-02-01', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:28:18', '2026-01-06 18:28:18'),
(443, 521, 'AMIMI VIVIAN', '24258123', '0099175669', '2009-01-20', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:28:19', '2026-01-06 18:28:19'),
(444, 522, 'Ayu Septiana', '24258150', '0083711331', '2008-09-19', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:28:20', '2026-01-06 18:28:20'),
(445, 523, 'Bunga Dwi Lestari', '24258162', '0099782022', '2009-07-06', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:28:21', '2026-01-06 18:28:21'),
(446, 524, 'DECHA NUR FAUZIAH', '24258174', '0082080243', '2008-12-19', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:28:21', '2026-01-06 18:28:21'),
(447, 525, 'FINA PUJI RAHAYU', '24258230', '0098873858', '2009-06-03', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:28:22', '2026-01-06 18:28:22'),
(448, 526, 'Hilma Jakiah', '24258245', '0098777532', '2009-03-21', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:28:22', '2026-01-06 18:28:22'),
(449, 527, 'ISCHA APRILYSTIA', '24258257', '0099441472', '2009-04-08', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:28:23', '2026-01-06 18:28:23'),
(450, 528, 'LINDA APRIYANI', '24258288', '0093932747', '2009-06-21', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:28:24', '2026-01-06 18:28:24'),
(451, 529, 'MELQISSYA', '24258303', '0093810500', '2009-05-27', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:28:24', '2026-01-06 18:28:24'),
(452, 530, 'Nadlirotul Ruwaidah', '24258318', '0091391697', '2009-07-29', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:28:25', '2026-01-06 18:28:25'),
(453, 531, 'NAJID WAROHMAN', '24258319', '0068403237', '2006-02-12', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:28:25', '2026-01-06 18:28:25'),
(454, 532, 'NANI APRIYANTI', '24258321', '0092262840', '2009-04-27', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:28:26', '2026-01-06 18:28:26'),
(455, 533, 'NAZWA OKTAVIA AZAHRA', '24258325', '0096201643', '2009-10-24', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:28:27', '2026-01-06 18:28:27'),
(456, 534, 'RAHMA OKTA FITRIYANTI', '24258349', '0069799611', '2006-10-12', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:28:27', '2026-01-06 18:28:27'),
(457, 535, 'REFA TANIA', '24258361', '0099957089', '2009-12-09', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:28:28', '2026-01-06 18:28:28'),
(458, 536, 'RINDI PUJI ARFIKAH', '24258379', '0093558983', '2009-03-02', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:28:29', '2026-01-06 18:28:29'),
(459, 537, 'Rivka Olivia Anggita', '24258387', '0087212159', '2008-07-07', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:28:29', '2026-01-06 18:28:29'),
(460, 538, 'SARAH AMELIA', '24258409', '0092400567', '2009-06-30', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:28:30', '2026-01-06 18:28:30'),
(461, 539, 'Serina Septiana Putri', '24258416', '0093524568', '2009-09-30', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:28:31', '2026-01-06 18:28:31'),
(462, 540, 'SIPA MAULIDA', '24258421', '0094155778', '2009-03-08', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:28:31', '2026-01-06 18:28:31'),
(463, 541, 'SISKA APRIANI SUNDARI', '24258422', '3093038763', '2009-03-19', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:28:32', '2026-01-06 18:28:32'),
(464, 542, 'SISKA RAHMAWATI', '24258423', '0083053043', '2008-03-15', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:28:33', '2026-01-06 18:28:33'),
(465, 543, 'SOPINA DULHIJAH JAHRA', '24258429', '0071934500', '2007-01-16', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:28:33', '2026-01-06 18:28:33'),
(466, 544, 'SUCI NABILA RAHMADANI', '24258430', '3099860524', '2009-09-01', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:28:34', '2026-01-06 18:28:34'),
(467, 545, 'Tita Efiana', '24258448', '0081616464', '2008-07-16', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:28:34', '2026-01-06 18:28:34'),
(468, 546, 'TITI WIDIYA NINGSIH', '24258450', '0083886589', '2008-11-08', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:28:35', '2026-01-06 18:28:35'),
(469, 547, 'VERLIN OKTARINA', '24258463', '0099063918', '2009-10-30', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:28:36', '2026-01-06 18:28:36'),
(470, 548, 'WAFADIYA AERLA', '24258466', '0091887099', '2009-06-20', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:28:36', '2026-01-06 18:28:36'),
(471, 549, 'WILDA NUROHMAH', '24258470', '0092245671', '2009-07-11', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:28:37', '2026-01-06 18:28:37'),
(472, 550, 'AGUNG SUKRADI', '24258098', '0086231665', '2008-01-25', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:50:05', '2026-01-06 18:50:05'),
(473, 551, 'AISYAH NURUL AZKIYA', '24258104', '0096835961', '2009-09-08', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:50:06', '2026-01-06 18:50:06'),
(474, 552, 'CAHYA ADI PAMUNGKAS', '24258488', '0085584486', '2008-12-21', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:50:06', '2026-01-06 18:50:06'),
(475, 553, 'Chesya Dheana Moudzah', '24258165', '0081786744', '2008-07-20', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:50:07', '2026-01-06 18:50:07'),
(476, 554, 'DAPINA NURPADILA', '24258171', '0082483903', '2008-12-01', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:50:08', '2026-01-06 18:50:08'),
(477, 555, 'Davit Firmansyah', '24258172', '0085148049', '2008-10-17', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:50:09', '2026-01-06 18:50:09'),
(478, 556, 'FINA SYNDI AULIA', '24258231', '0092755341', '2009-05-03', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:50:09', '2026-01-06 18:50:09'),
(479, 557, 'HAJRI MAULANA ADRIANSYAH', '24258240', '0086248212', '2008-12-24', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:50:10', '2026-01-06 18:50:10'),
(480, 558, 'HANDIKA ADI FIRMANSYAH', '24258241', '0097498160', '2009-06-22', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:50:11', '2026-01-06 18:50:11'),
(481, 559, 'INDRA DERMAWAN', '24258253', '0091143572', '2009-03-21', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:50:11', '2026-01-06 18:50:11'),
(482, 560, 'IRPAN SETIANA', '24258255', '0081901228', '2008-09-24', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:50:12', '2026-01-06 18:50:12'),
(483, 561, 'KELVIN ADRIFIANO', '24258270', '0095482959', '2009-06-29', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:50:13', '2026-01-06 18:50:13'),
(484, 562, 'LEPI JAKARIA', '24258285', '0091610356', '2009-05-07', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:50:14', '2026-01-06 18:50:14'),
(485, 563, 'LESTARI DEWI PRIHATIN', '24258286', '0083417740', '2008-12-04', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:50:14', '2026-01-06 18:50:14'),
(486, 564, 'MAHIR ISMA RAFI RABBANI', '24258295', '0091752520', '2009-02-06', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:50:15', '2026-01-06 18:50:15'),
(487, 565, 'NURDIANA PRATIWI', '24258334', '0092744096', '2009-11-01', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:50:17', '2026-01-06 18:50:17'),
(488, 566, 'RAHMAN ALFARIZI', '24258350', '0082878911', '2008-11-24', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:50:18', '2026-01-06 18:50:18'),
(489, 567, 'RAIHAN GILAR PRASETYO', '24258353', '0096844604', '2009-02-09', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:50:19', '2026-01-06 18:50:19'),
(490, 568, 'RAMZI ACHYAR', '24258358', '0096362434', '2009-08-03', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:50:19', '2026-01-06 18:50:19'),
(491, 569, 'Revan Habib Pratama', '24258369', '0086221344', '2008-07-22', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:50:20', '2026-01-06 18:50:20'),
(492, 570, 'REYHAN GANESSA', '24258370', '0094762948', '2009-06-16', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:50:21', '2026-01-06 18:50:21'),
(493, 571, 'Rifka Septya Putri', '24258376', '0094621103', '2009-09-24', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:50:22', '2026-01-06 18:50:22'),
(494, 572, 'RINI FAJARINA', '24258380', '0092577945', '2009-06-10', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:50:23', '2026-01-06 18:50:23'),
(495, 573, 'Saeful Rohman', '24258405', '0098143707', '2009-07-04', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:50:24', '2026-01-06 18:50:24'),
(496, 574, 'SEMMY RADITYA', '24258414', '0107834500', '2010-01-28', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:50:24', '2026-01-06 18:50:24'),
(497, 575, 'SILFANI ISNA RAMADAN', '24258419', '0099731759', '2009-09-08', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:50:25', '2026-01-06 18:50:25'),
(498, 576, 'SINTA PUSPITA', '24258420', '0097328173', '2009-10-16', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:50:26', '2026-01-06 18:50:26'),
(499, 577, 'TRIO SAPUTRA', '24258454', '0095273303', '2010-01-25', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:50:27', '2026-01-06 18:50:27'),
(500, 578, 'USMAN SAPUTRA', '24258459', '0091762273', '2010-04-27', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:50:27', '2026-01-06 18:50:27'),
(501, 579, 'Vanny Putri Anggraeni', '24258461', '0099702541', '2009-04-15', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:50:28', '2026-01-06 18:50:28'),
(502, 580, 'WAFI AMRU BAIHAQI', '24258467', '0091480912', '2009-09-08', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:50:29', '2026-01-06 18:50:29'),
(503, 581, 'ZIKRI ILHAM FIRMANSAH', '24258482', '0084145462', '2008-12-29', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 18:50:30', '2026-01-06 18:50:30'),
(504, 582, 'AL NURHASANAH', '24258108', '0091176598', '2009-05-30', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 19:03:06', '2026-01-06 19:03:06'),
(505, 583, 'Ananda Dwi Saputra', '24258125', '0092470240', '2009-10-29', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 19:03:07', '2026-01-06 19:03:07'),
(506, 584, 'ATHIN HIJDAROH DUROTUROFIKOH', '24258147', '0093289953', '2009-03-13', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 19:03:07', '2026-01-06 19:03:07'),
(507, 585, 'ATIFAH NAYLA', '24258149', '0097835349', '2009-04-07', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 19:03:08', '2026-01-06 19:03:08'),
(508, 586, 'Budi Ramadani', '24258161', '0092899325', '2009-08-26', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 19:03:08', '2026-01-06 19:03:08'),
(509, 587, 'CELSI APRIYANI', '24258164', '0094061802', '2009-04-14', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 19:03:09', '2026-01-06 19:03:09'),
(510, 588, 'DESTIA APRILLIA PUTRI', '24258184', '0099541980', '2009-04-22', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 19:03:10', '2026-01-06 19:03:10'),
(511, 589, 'DIMAS PRASETIO', '24258192', '0083100542', '2008-12-12', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 19:03:10', '2026-01-06 19:03:10'),
(512, 590, 'FARIS ZAIDAAN', '24258220', '0095659976', '2009-01-29', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 19:03:11', '2026-01-06 19:03:11'),
(513, 591, 'GALIH PRATAMA PUTRA', '24258233', '0102794933', '2010-03-20', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 19:03:11', '2026-01-06 19:03:11'),
(514, 592, 'HANUM SETYA NINGSIH', '24258242', '0092834780', '2009-01-09', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 19:03:12', '2026-01-06 19:03:12'),
(515, 593, 'IDA NURAENI', '24258490', '0085720527', '2008-11-25', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 19:03:13', '2026-01-06 19:03:13'),
(516, 594, 'ILHAM', '24258250', '0099196341', '2009-01-26', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 19:03:13', '2026-01-06 19:03:13'),
(517, 595, 'IQBAL AKDARI', '24258254', '0093477012', '2009-02-12', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 19:03:14', '2026-01-06 19:03:14'),
(518, 596, 'KEYILA ANASTASYA', '24258273', '0089332856', '2008-10-26', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 19:03:14', '2026-01-06 19:03:14'),
(519, 597, 'LUTFI RAMADHAN', '24258292', '0098993400', '2009-09-05', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 19:03:15', '2026-01-06 19:03:15'),
(520, 598, 'OCCA SUBANDI', '24258336', '0091320824', '2009-05-05', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 19:03:16', '2026-01-06 19:03:16'),
(521, 599, 'PASHA DZIKRI RAMADHAN', '24258340', '0081215316', '2008-09-17', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 19:03:16', '2026-01-06 19:03:16'),
(522, 600, 'PERI GUNAWAN', '24258341', '0099848455', '2009-02-14', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 19:03:17', '2026-01-06 19:03:17'),
(523, 601, 'PUTRI RAHMADANI', '24258342', '0096838898', '2009-08-24', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 19:03:17', '2026-01-06 19:03:17'),
(524, 602, 'RAFA MAULANA', '24258346', '0096630204', '2009-11-02', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 19:03:20', '2026-01-06 19:03:20'),
(525, 603, 'RAHMAT DANI', '24258351', '0089704594', '2008-09-03', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 19:03:21', '2026-01-06 19:03:21'),
(526, 604, 'REHANS FREBIAN', '24258365', '0098383153', '2009-02-24', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 19:03:22', '2026-01-06 19:03:22'),
(527, 605, 'RIRIN ARYANTI', '24258381', '0099017898', '2009-03-23', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 19:03:22', '2026-01-06 19:03:22'),
(528, 606, 'RIYANTI MEI LATIFAH', '24258388', '0095681586', '2009-05-18', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 19:03:23', '2026-01-06 19:03:23'),
(529, 607, 'SABILAL MU\'ARIF', '24258403', '0098552246', '2009-07-07', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 19:03:23', '2026-01-06 19:03:23'),
(530, 608, 'SABRINA SALSABILA', '24258404', '3091469296', '2009-05-03', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 19:03:24', '2026-01-06 19:03:24'),
(531, 609, 'SAHARA INDRIYANI', '24258406', '0099078436', '2009-09-28', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 19:03:25', '2026-01-06 19:03:25'),
(532, 610, 'TEGAR PUTRA PAMUNGKAS', '24258445', '0088529616', '2008-06-08', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 19:03:25', '2026-01-06 19:03:25'),
(533, 611, 'TIARA KASIH', '24258447', '0085077954', '2008-06-22', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 19:03:26', '2026-01-06 19:03:26'),
(534, 612, 'YUSUF ALFARISY', '24258478', '0095708018', '2009-08-26', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-06 19:03:27', '2026-01-06 19:03:27'),
(535, 613, 'AKENZO SALVARO', '24258106', '0086461213', '2008-10-14', NULL, 'P', NULL, NULL, 10, 0, '2026-01-06 19:03:27', '2026-01-07 19:21:18'),
(536, 614, 'ALNISA NUR UTAMI', '24258118', '0081314257', '2008-12-14', NULL, 'P', NULL, NULL, 10, 0, '2026-01-06 19:03:28', '2026-01-07 19:21:18'),
(537, 615, 'AMANDA PUTRIYANI', '24258122', '0048302145', '2009-10-10', NULL, 'P', NULL, NULL, 10, 0, '2026-01-06 19:03:29', '2026-01-07 19:21:18'),
(538, 616, 'ARKA PUTRA KRISTIAN', '24258143', '0097231026', '2009-08-07', NULL, 'P', NULL, NULL, 10, 0, '2026-01-06 19:03:29', '2026-01-07 19:21:18'),
(539, 617, 'ATIF ALMAS RIFQI', '24258148', '0083227560', '2008-12-31', NULL, 'P', NULL, NULL, 10, 0, '2026-01-06 19:03:30', '2026-01-07 19:21:18'),
(540, 618, 'AZZAHRA TRI ARDA RAMADHANI', '24258483', '0082167583', '2008-09-29', NULL, 'P', NULL, NULL, 10, 0, '2026-01-06 19:03:31', '2026-01-07 19:21:18'),
(541, 619, 'bilal', '24258158', '0069476515', '2006-12-17', NULL, 'P', NULL, NULL, 10, 0, '2026-01-06 19:03:31', '2026-01-07 19:21:18'),
(542, 620, 'BINTANG PRABOWO SUMARSONO', '24258160', '0082756151', '2008-08-24', NULL, 'P', NULL, NULL, 10, 0, '2026-01-06 19:03:33', '2026-01-07 19:21:18'),
(543, 621, 'Desta Pramono', '24258183', '0073875953', '2008-12-30', NULL, 'P', NULL, NULL, 10, 0, '2026-01-06 19:03:33', '2026-01-07 19:21:18'),
(544, 622, 'DIVA SUCI SAPUTRI', '24258196', '0084729419', '2008-09-19', NULL, 'P', NULL, NULL, 10, 0, '2026-01-06 19:03:34', '2026-01-07 19:21:18'),
(545, 623, 'EVA SELVIANA', '24258204', '0092877057', '2009-03-03', NULL, 'P', NULL, NULL, 10, 0, '2026-01-06 19:03:35', '2026-01-07 19:21:18'),
(546, 624, 'FALAH RADITIYAL SAPUTRA', '24258215', '0079407079', '2007-09-23', NULL, 'P', NULL, NULL, 10, 0, '2026-01-06 19:03:36', '2026-01-07 19:21:18'),
(547, 625, 'FEBRIA AULIANTI', '24258225', '0093476607', '2009-02-25', NULL, 'P', NULL, NULL, 10, 0, '2026-01-06 19:03:37', '2026-01-07 19:21:18'),
(548, 626, 'GILANG RAMADHAN', '24258239', '0085897415', '2008-08-28', NULL, 'P', NULL, NULL, 10, 0, '2026-01-06 19:03:37', '2026-01-07 19:21:18'),
(549, 627, 'Hesti Kurniawati', '24258243', '0092019298', '2009-05-25', NULL, 'P', NULL, NULL, 10, 0, '2026-01-06 19:03:38', '2026-01-07 19:21:18'),
(550, 628, 'IBRAHIM WAHYU ILHAM', '24258247', '0095274712', '2009-12-12', NULL, 'P', NULL, NULL, 10, 0, '2026-01-06 19:03:39', '2026-01-07 19:21:18'),
(551, 629, 'JELITA AULIA', '24258261', '0087468388', '2008-11-09', NULL, 'P', NULL, NULL, 10, 0, '2026-01-06 19:03:39', '2026-01-07 19:21:18'),
(552, 630, 'JENI DWI KARTIKA SARI', '24258262', '0097537320', '2009-01-04', NULL, 'P', NULL, NULL, 10, 0, '2026-01-06 19:03:40', '2026-01-07 19:21:18'),
(553, 631, 'JIMMY KURNIAWAN PUTRA', '24258264', '0096590897', '2009-07-17', NULL, 'P', NULL, NULL, 10, 0, '2026-01-06 19:03:40', '2026-01-07 19:21:18'),
(554, 632, 'KARISSA NAYA SYIFA PUTRI', '24258269', '0087691607', '2008-11-27', NULL, 'P', NULL, NULL, 10, 0, '2026-01-06 19:03:42', '2026-01-07 19:21:18'),
(555, 633, 'KEYSA OKTAVIANI', '24258274', '0092875588', '2009-10-17', NULL, 'P', NULL, NULL, 10, 0, '2026-01-06 19:03:43', '2026-01-07 19:21:18'),
(556, 634, 'KUR CHELAWATI', '24258282', '3087366652', '2008-04-06', NULL, 'P', NULL, NULL, 10, 0, '2026-01-06 19:03:43', '2026-01-07 19:21:18'),
(557, 635, 'MELLVI NUR FAJRIANI', '24258302', '0097230586', '2009-06-22', NULL, 'P', NULL, NULL, 10, 0, '2026-01-06 19:03:44', '2026-01-07 19:21:18'),
(558, 636, 'MUHAMAD YUSUF ALFARIZI', '24258309', '0094037640', '2009-01-26', NULL, 'P', NULL, NULL, 10, 0, '2026-01-06 19:03:45', '2026-01-07 19:21:18'),
(559, 637, 'MUHAMMAD FARELL ADISTIAN', '24258310', '0093603356', '2009-08-03', NULL, 'P', NULL, NULL, 10, 0, '2026-01-06 19:03:46', '2026-01-07 19:21:18'),
(560, 638, 'MUKTY RAMADHAN', '24258314', '0097239198', '2009-08-30', NULL, 'P', NULL, NULL, 10, 0, '2026-01-06 19:03:46', '2026-01-07 19:21:18'),
(561, 639, 'Nazar Oki Mardiana', '24258324', '0095793129', '2009-01-12', NULL, 'P', NULL, NULL, 10, 0, '2026-01-06 19:03:47', '2026-01-07 19:21:18'),
(562, 640, 'RAIHAN ALIF BINTANG WICAKSONSO', '24258352', '0159946632', '2008-10-15', NULL, 'P', NULL, NULL, 10, 0, '2026-01-06 19:03:48', '2026-01-07 19:21:18'),
(563, 641, 'Rifal Andika Saputro', '24258375', '0087163333', '2008-03-12', NULL, 'P', NULL, NULL, 10, 0, '2026-01-06 19:03:49', '2026-01-07 19:21:18'),
(564, 642, 'ROSSA SETIAWATI', '24258397', '0073803459', '2007-08-05', NULL, 'P', NULL, NULL, 10, 0, '2026-01-06 19:03:50', '2026-01-07 19:21:18'),
(565, 643, 'TANGGUH ALFATTAH DZUL HADI', '24258444', '3083847431', '2008-12-16', NULL, 'P', NULL, NULL, 10, 0, '2026-01-06 19:03:51', '2026-01-07 19:21:18'),
(566, 644, 'VIDIANA NUR ANGGRAENI', '24258464', '0098604401', '2009-06-14', NULL, 'P', NULL, NULL, 10, 0, '2026-01-06 19:03:52', '2026-01-07 19:21:18'),
(567, 645, 'ADPI SALMAN ALFARIZKI', '24258090', '0095881616', '2009-10-01', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 18:05:01', '2026-01-07 18:05:01'),
(568, 646, 'ADZIKRA MIKEYL SAPUTRA', '24258091', '0152206244', '2008-12-05', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 18:05:02', '2026-01-07 18:05:02'),
(569, 647, 'AFRIZAL NURFADILAH', '24258094', '0084678274', '2008-11-08', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 18:05:02', '2026-01-07 18:05:02'),
(570, 648, 'ALIA SHAFFANI', '24258114', '0095061987', '2009-04-19', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 18:05:02', '2026-01-07 18:05:02'),
(571, 649, 'Anjani', '24258133', '0096948634', '2009-07-27', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 18:05:03', '2026-01-07 18:05:03'),
(572, 650, 'Anjar Artandi', '24258134', '0096055008', '2009-06-17', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 18:05:04', '2026-01-07 18:05:04'),
(573, 651, 'Apriyanto', '24258136', '0081382687', '2008-09-14', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 18:05:04', '2026-01-07 18:05:04'),
(574, 652, 'AZJRIL JONNATA IRSYAD', '24258151', '0083488292', '2008-12-11', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 18:05:05', '2026-01-07 18:05:05'),
(575, 653, 'AZKA IKBAL NABAWI', '24258153', '0099357407', '2009-09-11', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 18:05:05', '2026-01-07 18:05:05'),
(576, 654, 'BAEHAKI', '24258154', '0103643193', '2010-01-01', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 18:05:05', '2026-01-07 18:05:05'),
(577, 655, 'DEA APRILIA', '24258173', '0094209413', '2009-04-05', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 18:05:06', '2026-01-07 18:05:06'),
(578, 656, 'DELLA PUSPITA', '24258176', '0082951839', '2008-01-25', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 18:05:07', '2026-01-07 18:05:07'),
(579, 657, 'DIDI KURNIAWAN', '24258189', '0081837378', '2008-01-11', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 18:05:07', '2026-01-07 18:05:07'),
(580, 658, 'EGA FRADIKA', '24258199', '0094941119', '2009-06-26', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 18:05:08', '2026-01-07 18:05:08'),
(581, 659, 'EZA AGUSTIAR RAMADHAN', '24258205', '0097337614', '2009-08-24', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 18:05:08', '2026-01-07 18:05:08'),
(582, 660, 'FILA RAMADANI', '24258229', '0082034973', '2008-10-01', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 18:05:09', '2026-01-07 18:05:09'),
(583, 661, 'IIF NURHIDAYAT', '24258249', '0099302754', '2009-09-04', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 18:05:09', '2026-01-07 18:05:09'),
(584, 662, 'IMAM MUHAMMAD AL FARIZ', '24258251', '0093990547', '2009-07-08', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 18:05:10', '2026-01-07 18:05:10'),
(585, 663, 'Kemal Pebriyan', '24258271', '0096252307', '2009-02-26', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 18:05:10', '2026-01-07 18:05:10'),
(586, 664, 'MUHAMMAD FATHAN AL FATIH', '24258311', '0096654255', '2009-04-28', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 18:05:11', '2026-01-07 18:05:11'),
(587, 665, 'NADIA NURULIA SYAFIRA', '24258317', '0081392900', '2008-06-25', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 18:05:12', '2026-01-07 18:05:12'),
(588, 666, 'NANDA UTAMI', '24258320', '0082306454', '2008-11-24', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 18:05:12', '2026-01-07 18:05:12'),
(589, 667, 'NAUFAL ROFI', '24258322', '3093362352', '2009-07-09', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 18:05:12', '2026-01-07 18:05:12'),
(590, 668, 'NISAUL MUSYARROFAH', '24258327', '0099987653', '2009-01-29', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 18:05:13', '2026-01-07 18:05:13'),
(591, 669, 'Reno Septiawan Ramadan', '24258366', '0097739900', '2009-09-02', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 18:05:13', '2026-01-07 18:05:13'),
(592, 670, 'RIDHA SINTIA OKTAVIANTI', '24258373', '0082262247', '2008-10-20', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 18:05:14', '2026-01-07 18:05:14'),
(593, 671, 'RINA ALAMSYAH', '24258378', '0091045276', '2009-01-12', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 18:05:14', '2026-01-07 18:05:14'),
(594, 672, 'RISMA', '24258385', '0097486177', '2009-06-09', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 18:05:15', '2026-01-07 18:05:15'),
(595, 673, 'Sulistiana Wati', '24258432', '0095337539', '2009-01-15', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 18:05:15', '2026-01-07 18:05:15'),
(596, 674, 'SYAKILA MAWARDANI', '24258441', '0098057007', '2009-04-25', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 18:05:16', '2026-01-07 18:05:16'),
(597, 675, 'SYIVA AULIA', '24258442', '0091810723', '2009-01-19', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 18:05:17', '2026-01-07 18:05:17'),
(598, 676, 'URIFA YASIN', '24258458', '0088444073', '2008-12-19', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 18:05:17', '2026-01-07 18:05:17'),
(599, 677, 'USWATUN KHASANAH', '24258460', '0089026300', '2008-05-31', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 18:05:17', '2026-01-07 18:05:17'),
(600, 678, 'ADE AHMAD RIZKI', '24258084', '0093522404', '2009-06-24', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 18:08:46', '2026-01-07 18:08:46'),
(601, 679, 'ADHITYA PERDANA', '24258085', '0094668920', '2009-03-29', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 18:08:47', '2026-01-07 18:08:47'),
(602, 680, 'ADITYA HILDAN JAEVANI', '24258089', '0091895517', '2009-01-18', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 18:08:47', '2026-01-07 18:08:47'),
(603, 681, 'AGUS FIRMANSYAH', '24258099', '0083980189', '2008-08-05', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 18:08:47', '2026-01-07 18:08:47'),
(604, 682, 'AHMAD KHOERUL ANAM', '24258101', '0091988796', '2009-05-05', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 18:08:48', '2026-01-07 18:08:48'),
(605, 683, 'AMIN RACHMAT ROMADHON', '24258124', '3090256533', '2009-09-11', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 18:08:49', '2026-01-07 18:08:49'),
(606, 684, 'ANDREAN NUR IJLAL KUSWOYO', '24258129', '0099934711', '2009-02-01', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 18:08:49', '2026-01-07 18:08:49'),
(607, 685, 'AQCHMAL NOVA ARDIANSYAH', '24258137', '0077062193', '2007-11-08', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 18:08:50', '2026-01-07 18:08:50'),
(608, 686, 'AQIL AL FARROSI', '24258138', '3094930703', '2009-03-31', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 18:08:50', '2026-01-07 18:08:50'),
(609, 687, 'DAFA JULIANDRA PRATAMA', '24258167', '0081036375', '2008-07-01', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 18:08:51', '2026-01-07 18:08:51'),
(610, 688, 'FAJRI TRI FAHRUDIN', '24258213', '0099476778', '2009-03-04', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 18:08:51', '2026-01-07 18:08:51'),
(611, 689, 'Immam Maullana', '24258252', '0096248662', '2009-03-02', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 18:08:51', '2026-01-07 18:08:51'),
(612, 690, 'KEVIN WAHYUDI PRATAMA', '24258272', '0089492106', '2008-07-18', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 18:08:52', '2026-01-07 18:08:52'),
(613, 691, 'KHAERUL SALAM', '24258275', '0098944406', '2009-04-05', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 18:08:52', '2026-01-07 18:08:52'),
(614, 692, 'MUHAMMAD SYAHRIL MUBAROK', '24258312', '0081989852', '2008-09-19', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 18:08:53', '2026-01-07 18:08:53');
INSERT INTO `siswa` (`id`, `user_id`, `nama`, `nis`, `nisn`, `tgl_lahir`, `no_hp`, `jenis_kelamin`, `no_hp_ortu`, `alamat`, `kelas_id`, `is_lulus`, `created_at`, `updated_at`) VALUES
(615, 693, 'MUSTOFA ROMADHONI', '24258316', '0088335780', '2008-09-21', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 18:08:54', '2026-01-07 18:08:54'),
(616, 694, 'NOVAL DWI ANDIKA', '24258331', '0089256280', '2008-11-20', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 18:08:54', '2026-01-07 18:08:54'),
(617, 695, 'Raka Adindia Shadidan Althaf', '24258354', '0091149553', '2009-01-04', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 18:08:54', '2026-01-07 18:08:54'),
(618, 696, 'RAMA HESA JENAR', '24258355', '0086209573', '2008-09-24', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 18:08:55', '2026-01-07 18:08:55'),
(619, 697, 'RIZKY SAEFULLOH', '24258393', '3087591091', '2008-07-31', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 18:08:55', '2026-01-07 18:08:55'),
(620, 698, 'SHAKTI MEZZA MILANO', '24258417', '0096440293', '2009-12-14', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 18:08:56', '2026-01-07 18:08:56'),
(621, 699, 'TOVAL KHASAN NUR HIDAYAH', '24258452', '0097767520', '2009-05-19', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 18:08:56', '2026-01-07 18:08:56'),
(622, 700, 'Yosi Nanda Pratama', '24258476', '0087747687', '2008-05-19', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 18:08:57', '2026-01-07 18:08:57'),
(623, 701, 'Zacky Putra Aprilian', '24258479', '0093651692', '2009-04-12', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 18:08:57', '2026-01-07 18:08:57'),
(624, 702, 'ABAS GILANG SAPUTRA', '24258081', '0092488237', '2009-04-19', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 18:08:57', '2026-01-07 18:08:57'),
(625, 703, 'ABIB MUZAKI', '24258083', '0089077735', '2008-10-12', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 18:08:58', '2026-01-07 18:08:58'),
(626, 704, 'ADITYA FIRMANSYAH', '24258088', '0071244300', '2007-06-18', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 18:08:59', '2026-01-07 18:08:59'),
(627, 705, 'Agiardia', '24258095', '0072937859', '2007-10-21', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 18:08:59', '2026-01-07 18:08:59'),
(628, 706, 'ALFA REFANDRA', '24258110', '0089528073', '2008-09-19', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 18:08:59', '2026-01-07 18:08:59'),
(629, 707, 'ALVIN SYAHRIN', '24258119', '0084682641', '2008-10-29', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 18:09:00', '2026-01-07 18:09:00'),
(630, 708, 'ARIF NABIL RAMADHAN', '24258142', '0095500303', '2009-08-30', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 18:09:00', '2026-01-07 18:09:00'),
(631, 709, 'ARVEL FAIQ NUR HERMAWAN', '24258144', '0097488349', '2009-05-10', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 18:09:01', '2026-01-07 18:09:01'),
(632, 710, 'Bahrul Arifin Fauzan', '24258487', '0098740830', '2009-01-03', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 18:09:01', '2026-01-07 18:09:01'),
(633, 711, 'DAFFA AL FAREZI', '24258169', '0092035940', '2009-01-18', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 18:09:02', '2026-01-07 18:09:02'),
(634, 712, 'Dede Ardiansyah', '24258175', '0094540089', '2009-06-08', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 18:09:02', '2026-01-07 18:09:02'),
(635, 713, 'DENIS', '24258178', '0098859868', '2009-05-01', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 18:09:03', '2026-01-07 18:09:03'),
(636, 714, 'DENIS DWI SAPUTRA', '24258180', '0086318386', '2008-11-28', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 18:09:03', '2026-01-07 18:09:03'),
(637, 715, 'DIKI DWI SANTOSO', '24258190', '0085608108', '2008-06-20', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 18:09:04', '2026-01-07 18:09:04'),
(638, 716, 'FAHRI WIIBOWO', '24258209', '0092249944', '2008-11-11', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 18:09:04', '2026-01-07 18:09:04'),
(639, 717, 'FAHRUR ALI REJI', '24258210', '0091818787', '2009-12-18', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 18:09:05', '2026-01-07 18:09:05'),
(640, 718, 'FAISAL EGALIOSA', '24258211', '0075727075', '2007-12-06', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 18:09:05', '2026-01-07 18:09:05'),
(641, 719, 'GIFFAR ROZAQ PRATAMA', '24258236', '0098118704', '2009-05-23', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 18:09:06', '2026-01-07 18:09:06'),
(642, 720, 'JOHAN FIRDAUS', '24258265', '0097188669', '2009-01-21', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 18:09:06', '2026-01-07 18:09:06'),
(643, 721, 'JOKO SUTRISNO', '24258267', '0071323060', '2007-03-22', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 18:09:06', '2026-01-07 18:09:06'),
(644, 722, 'MOHAMAD RIZQI NUGROHO', '24258306', '0093108029', '2009-03-15', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 18:09:07', '2026-01-07 18:09:07'),
(645, 723, 'QORIBUL \'IBAD MUJAZIN', '24258344', '3094787486', '2009-09-29', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 18:09:08', '2026-01-07 18:09:08'),
(646, 724, 'REFALDY ARIE SADEWO', '24258362', '0071961761', '2007-10-12', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 18:09:08', '2026-01-07 18:09:08'),
(647, 725, 'RIDWAN HARDIANZYAH', '24258374', '0081633653', '2008-09-27', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 18:09:09', '2026-01-07 18:09:09'),
(648, 726, 'RIZKI NAZRIL IRHAM', '24258391', '0095467179', '2009-03-07', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 18:09:09', '2026-01-07 18:09:09'),
(649, 727, 'RIZQI BILAL ROMADHON', '24258395', '0086644568', '2008-09-07', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 18:09:09', '2026-01-07 18:09:09'),
(650, 728, 'RUSTRIANSYAH', '24258401', '0089074372', '2008-09-13', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 18:09:10', '2026-01-07 18:09:10'),
(651, 729, 'Surya Irfansah', '24258437', '0099148640', '2009-02-20', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 18:09:10', '2026-01-07 18:09:10'),
(652, 730, 'ANTONY', '24258135', '0073442092', '2007-09-08', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 18:10:53', '2026-01-07 18:10:53'),
(653, 731, 'Banyu Hasan Bahri', '24258156', '0078210129', '2007-05-22', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 18:10:53', '2026-01-07 18:10:53'),
(654, 732, 'BAYU BAEHAKI', '24258157', '0086178027', '2008-05-11', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 18:10:54', '2026-01-07 18:10:54'),
(655, 733, 'FHENO EKA SANDIYANA', '24258228', '0085252118', '2008-12-12', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 18:10:55', '2026-01-07 18:10:55'),
(656, 734, 'JOHAN PUTRA ARYANTO', '24258266', '0085521458', '2008-01-25', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 18:10:56', '2026-01-07 18:10:56'),
(657, 735, 'KURNIA RASYA ALDIANSYAH', '24258283', '0082955122', '2008-12-25', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 18:10:57', '2026-01-07 18:10:57'),
(658, 736, 'Lutfi Mubarok', '24258291', '0092244227', '2009-07-27', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 18:10:58', '2026-01-07 18:10:58'),
(659, 737, 'LUTFIANSYAH NOOR MAULIDA', '24258293', '0096013551', '2009-03-04', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 18:10:58', '2026-01-07 18:10:58'),
(660, 738, 'MAHESA LESMANA PUTRA', '24258294', '0086472341', '2008-11-27', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 18:10:59', '2026-01-07 18:10:59'),
(661, 739, 'MARSEL PUTRA PRATAMA', '24258298', '0097105754', '2009-03-20', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 18:11:00', '2026-01-07 18:11:00'),
(662, 740, 'Marvel Elni Putra', '24258299', '0086534372', '2008-02-04', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 18:11:00', '2026-01-07 18:11:00'),
(663, 741, 'MUKHAMMAD GIYAT SETIAWAN', '24258313', '0081969763', '2008-08-28', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 18:11:01', '2026-01-07 18:11:01'),
(664, 742, 'NUAF AL SYAMRI', '24258332', '0091459833', '2009-08-05', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 18:11:01', '2026-01-07 18:11:01'),
(665, 743, 'RAFFI NURROHMAN', '24258347', '0095123721', '2009-09-23', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 18:11:02', '2026-01-07 18:11:02'),
(666, 744, 'RAFKHA MAJID RAMADHAN', '24258485', '0093605211', '2009-08-30', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 18:11:02', '2026-01-07 18:11:02'),
(667, 745, 'RAMDAN APRILIANO KHOLIK', '24258357', '0101612564', '2010-04-01', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 18:11:04', '2026-01-07 18:11:04'),
(668, 746, 'REYHAN', '24258486', '0097918609', '2009-02-19', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 18:11:05', '2026-01-07 18:11:05'),
(669, 747, 'REZA SAPUTRA', '24258371', '0088528905', '2008-10-13', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 18:11:06', '2026-01-07 18:11:06'),
(670, 748, 'Rezkya Dhesta Permana', '24258372', '3085992932', '2008-12-29', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 18:11:06', '2026-01-07 18:11:06'),
(671, 749, 'RIFQI', '24258377', '0079166851', '2007-04-07', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 18:11:07', '2026-01-07 18:11:07'),
(672, 750, 'RISZIANTO', '24258386', '0085532515', '2008-12-08', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 18:11:08', '2026-01-07 18:11:08'),
(673, 751, 'Rizal Dwi Setiawan', '24258389', '0078542426', '2007-11-03', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 18:11:08', '2026-01-07 18:11:08'),
(674, 752, 'RYNDAN ALIEF HARFIANSYAH', '24258402', '0094508015', '2009-01-17', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 18:11:09', '2026-01-07 18:11:09'),
(675, 753, 'Sulistiono Pratama', '24258433', '0095212469', '2009-12-27', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 18:11:09', '2026-01-07 18:11:09'),
(676, 754, 'Sultan Surya Ardiyanto', '24258435', '0082546737', '2008-12-22', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 18:11:10', '2026-01-07 18:11:10'),
(677, 755, 'TEMY SAPUTRA', '24258446', '0099344778', '2009-07-01', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 18:11:11', '2026-01-07 18:11:11'),
(678, 756, 'TIVAN ANDREAN', '24258451', '0097922412', '2009-06-24', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 18:11:11', '2026-01-07 18:11:11'),
(679, 757, 'Yahya Al Fauzan', '24258473', '0094074900', '2009-06-24', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 18:11:12', '2026-01-07 18:11:12'),
(680, 758, 'ADIT MUHAMMAD FARIZ ABDULLAH', '24258086', '0084526438', '2008-05-03', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:04:25', '2026-01-07 19:04:25'),
(681, 759, 'AHMAD UBAYU ZIDAN', '24258102', '0093983721', '2009-04-20', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:04:26', '2026-01-07 19:04:26'),
(682, 760, 'AHMAD WILDAN RAMDANI', '24258103', '0097887334', '2009-09-20', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:04:27', '2026-01-07 19:04:27'),
(683, 761, 'Alfian Nur Rizky', '24258111', '0083641407', '2008-01-06', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:04:27', '2026-01-07 19:04:27'),
(684, 762, 'ALFINDO HARDIANSAH ADITAMA', '24258112', '0061537481', '2006-07-13', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:04:28', '2026-01-07 19:04:28'),
(685, 763, 'DENIS ANGGANA', '24258179', '0085257040', '2008-10-31', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:04:29', '2026-01-07 19:04:29'),
(686, 764, 'EGI ALFISHA FIANDIKA', '24258200', '0095642192', '2009-02-03', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:04:30', '2026-01-07 19:04:30'),
(687, 765, 'FAJAR PRASETIYO WIJAYANTO', '24258212', '0094578861', '2009-07-01', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:04:30', '2026-01-07 19:04:30'),
(688, 766, 'FAUZI NUR ROHMAN', '24258223', '0097736850', '2009-06-28', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:04:31', '2026-01-07 19:04:31'),
(689, 767, 'HILAL ISTANTO', '24258244', '0085059505', '2008-10-02', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:04:32', '2026-01-07 19:04:32'),
(690, 768, 'IRWAN SAPUTRA', '24258256', '0076470158', '2007-11-01', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:04:33', '2026-01-07 19:04:33'),
(691, 769, 'JUNIAR DWI SAPUTRA', '24258268', '0089663542', '2008-06-14', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:04:34', '2026-01-07 19:04:34'),
(692, 770, 'KHOERUL NGIZZUL ANAM', '24258277', '0091518635', '2009-09-24', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:04:34', '2026-01-07 19:04:34'),
(693, 771, 'MARSEL ADITYA', '24258297', '3082804569', '2008-03-22', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:04:35', '2026-01-07 19:04:35'),
(694, 772, 'Masaji Subekti', '24258300', '0098473985', '2009-10-04', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:04:35', '2026-01-07 19:04:35'),
(695, 773, 'MOHAMAD ARJUNA NARARYA KHALIVI', '24258305', '0074747319', '2007-10-24', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:04:36', '2026-01-07 19:04:36'),
(696, 774, 'MUHAMAD AKMALLUDIN', '24258307', '0096374039', '2009-07-07', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:04:37', '2026-01-07 19:04:37'),
(697, 775, 'Raditia Faiz Nur Ramadhan', '24258345', '0082628381', '2008-09-15', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:04:37', '2026-01-07 19:04:37'),
(698, 776, 'REFA PRIYONO', '24258360', '0099338804', '2009-05-01', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:04:38', '2026-01-07 19:04:38'),
(699, 777, 'Restu Yogi Pratama', '24258368', '0094278489', '2009-07-16', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:04:38', '2026-01-07 19:04:38'),
(700, 778, 'SYAIFUL DIMAS PRATAMA', '24258439', '0094372537', '2009-06-27', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:04:40', '2026-01-07 19:04:40'),
(701, 779, 'AGISTA BUDI PAMUNGKAS', '24258096', '0099190603', '2009-01-04', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:04:41', '2026-01-07 19:04:41'),
(702, 780, 'Agnin Nur Hidayah', '24258097', '0085179984', '2008-12-23', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:04:42', '2026-01-07 19:04:42'),
(703, 781, 'Alfiyan Dwiyanto', '24258113', '0081860838', '2008-03-01', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:04:42', '2026-01-07 19:04:42'),
(704, 782, 'ANGGA MAULANA', '24258130', '0095469712', '2009-12-03', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:04:43', '2026-01-07 19:04:43'),
(705, 783, 'Angga Nugroho', '24258131', '0097774371', '2009-10-11', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:04:44', '2026-01-07 19:04:44'),
(706, 784, 'Ari Dwi Priyanto', '24258141', '0087227454', '2008-10-26', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:04:44', '2026-01-07 19:04:44'),
(707, 785, 'ASHEL JUAN PRADISTA', '24258145', '0093799545', '2009-06-17', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:04:45', '2026-01-07 19:04:45'),
(708, 786, 'AZKA AL AZHAR', '24258152', '0099131361', '2009-07-06', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:04:45', '2026-01-07 19:04:45'),
(709, 787, 'Bagas Alifansah', '24258155', '0089037374', '2008-07-30', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:04:46', '2026-01-07 19:04:46'),
(710, 788, 'DAFA SAPUTRA', '24258484', '0086800626', '2008-11-07', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:04:47', '2026-01-07 19:04:47'),
(711, 789, 'DENI FEBRIAN', '24258177', '0105074974', '2010-08-01', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:04:48', '2026-01-07 19:04:48'),
(712, 790, 'DESTA MAULANA', '24258182', '0095047892', '2009-04-22', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:04:49', '2026-01-07 19:04:49'),
(713, 791, 'EKI ALIF APRILIANO', '24258201', '0098818223', '2009-04-04', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:04:49', '2026-01-07 19:04:49'),
(714, 792, 'ERI PRATAMA IBRAHIM', '24258202', '0084881435', '2008-08-28', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:04:50', '2026-01-07 19:04:50'),
(715, 793, 'FADIL RAMADHAN', '24258206', '0091728398', '2009-02-07', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:04:51', '2026-01-07 19:04:51'),
(716, 794, 'FAHRI SETIAWAN', '24258208', '0104050118', '2010-04-08', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:04:52', '2026-01-07 19:04:52'),
(717, 795, 'FAKHRI NUR FAYI', '24258214', '0109386548', '2010-02-18', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:04:53', '2026-01-07 19:04:53'),
(718, 796, 'Farel Adiansah', '24258217', '0077486786', '2007-09-25', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:04:53', '2026-01-07 19:04:53'),
(719, 797, 'Furqon Alam Syah', '24258232', '0093157703', '2009-06-12', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:04:55', '2026-01-07 19:04:55'),
(720, 798, 'GILANG OCTAVIANO', '24258238', '0092530198', '2009-10-04', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:04:57', '2026-01-07 19:04:57'),
(721, 799, 'HILDAN FAIZ FAHREZA', '24258489', '0099487105', '2010-04-11', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:04:58', '2026-01-07 19:04:58'),
(722, 800, 'IHWAN NURHIDAYAH', '24258248', '0088753248', '2008-08-24', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:04:59', '2026-01-07 19:04:59'),
(723, 801, 'LUTFI MAULANA', '24258290', '0091664682', '2009-04-01', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:05:00', '2026-01-07 19:05:00'),
(724, 802, 'MARFEL', '24258296', '0091346682', '2009-07-16', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:05:00', '2026-01-07 19:05:00'),
(725, 803, 'MILA PURWATI', '24258304', '0084507518', '2008-04-28', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:05:01', '2026-01-07 19:05:01'),
(726, 804, 'MULYO DWI HAFIDZ HIDAYAH', '24258315', '0095794488', '2009-03-18', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:05:02', '2026-01-07 19:05:02'),
(727, 805, 'NIZAR ABDALLAH', '24258328', '0099459440', '2009-04-20', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:05:03', '2026-01-07 19:05:03'),
(728, 806, 'OVAL AL MUALIF', '24258337', '0094472163', '2009-07-17', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:05:03', '2026-01-07 19:05:03'),
(729, 807, 'RAMANDA FAHRI', '24258356', '0088362287', '2008-09-01', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:05:04', '2026-01-07 19:05:04'),
(730, 808, 'REPAN HIDAYAT', '24258367', '0086691543', '2008-04-28', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:05:06', '2026-01-07 19:05:06'),
(731, 809, 'Riski Saputra', '24258384', '0093122049', '2009-05-01', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:05:07', '2026-01-07 19:05:07'),
(732, 810, 'RUDIYANTO', '24258400', '0079817455', '2007-05-03', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:05:08', '2026-01-07 19:05:08'),
(733, 811, 'SAUFIQ JUMANTORO', '24258411', '0096217587', '2009-05-15', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:05:09', '2026-01-07 19:05:09'),
(734, 812, 'SHEYLLA RISTIANA PUTRI', '24258418', '0096639596', '2009-04-21', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:05:10', '2026-01-07 19:05:10'),
(735, 813, 'SOFIYAN HERDIYANSYAH', '24258426', '0084239842', '2008-11-03', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:05:11', '2026-01-07 19:05:11'),
(736, 814, 'Surya Darmawan', '24258436', '0094192145', '2009-03-06', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:05:12', '2026-01-07 19:05:12'),
(737, 815, 'SYAFRI IKHFARUL AKBAR', '24258438', '0082660111', '2008-09-09', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:05:13', '2026-01-07 19:05:13'),
(738, 816, 'Wisnu Kurniawan', '24258472', '0097057159', '2009-11-18', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:05:14', '2026-01-07 19:05:14'),
(739, 817, 'ZIBRAN ABIYASO PUTRA PAMUNGKAS', '23248037', '0075571009', '2007-12-14', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:05:14', '2026-01-07 19:05:14'),
(740, 818, 'Zidane Purnomo', '24258481', '0075665825', '2007-09-18', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:05:16', '2026-01-07 19:05:16'),
(741, 819, 'ADITYA EGA NURGALIH', '24258087', '0087206374', '2008-03-25', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:05:17', '2026-01-07 19:05:17'),
(742, 820, 'AFRI TRIA SUGIHARTO', '24258093', '0097338697', '2009-03-15', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:05:17', '2026-01-07 19:05:17'),
(743, 821, 'AGUS SATRIO', '24258100', '0152951631', '2009-08-04', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:05:18', '2026-01-07 19:05:18'),
(744, 822, 'AL MUMIN AHMAD RAMADHAN', '24258107', '0088905718', '2008-09-23', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:05:19', '2026-01-07 19:05:19'),
(745, 823, 'ANDRA SEFRI SAPUTRA', '24258128', '0092504444', '2009-09-22', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:05:19', '2026-01-07 19:05:19'),
(746, 824, 'ARGA SUBACHTIAR', '24258140', '0089278364', '2008-07-03', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:05:20', '2026-01-07 19:05:20'),
(747, 825, 'BILAL SYAFARUDIN', '24258159', '0095518694', '2009-01-29', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:05:20', '2026-01-07 19:05:20'),
(748, 826, 'Candra Adi Pratama', '24258163', '0097372669', '2009-03-24', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:05:21', '2026-01-07 19:05:21'),
(749, 827, 'CHICO ZAKY RADHINKA', '24258166', '0105436608', '2010-03-07', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:05:21', '2026-01-07 19:05:21'),
(750, 828, 'Dafa Saputra', '24258168', '0082909904', '2008-09-05', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:05:22', '2026-01-07 19:05:22'),
(751, 829, 'DAFFA YUSUF AL FACHRI', '24258170', '0092541067', '2009-01-09', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:05:22', '2026-01-07 19:05:22'),
(752, 830, 'DERI SANJAYA', '24258181', '0072810753', '2007-08-21', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:05:23', '2026-01-07 19:05:23'),
(753, 831, 'DONI', '24258197', '0092904893', '2009-07-17', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:05:23', '2026-01-07 19:05:23'),
(754, 832, 'DWI ALDIKA NUGROHO', '24258198', '0093602232', '2009-03-14', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:05:24', '2026-01-07 19:05:24'),
(755, 833, 'FADZLI RABBANI', '24258207', '0075581127', '2007-12-12', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:05:24', '2026-01-07 19:05:24'),
(756, 834, 'FARIJ AKBAR', '24258219', '0096036882', '2009-01-21', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:05:25', '2026-01-07 19:05:25'),
(757, 835, 'FATTAN AMRIZAL SYA\'BANI', '24258222', '0099291785', '2009-07-29', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:05:25', '2026-01-07 19:05:25'),
(758, 836, 'FEBRIAN IMAM SANTOSO', '24258226', '0105738921', '2010-02-11', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:05:26', '2026-01-07 19:05:26'),
(759, 837, 'Gangga Aji Saputra', '24258234', '0084583437', '2008-10-13', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:05:26', '2026-01-07 19:05:26'),
(760, 838, 'GHANIF NUR FADILA', '24258235', '0093496442', '2009-09-12', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:05:27', '2026-01-07 19:05:27'),
(761, 839, 'GILANG ADI SABEKTI', '24258237', '0098784407', '2009-08-16', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:05:28', '2026-01-07 19:05:28'),
(762, 840, 'HOKY KRISDIYANTO', '24258246', '0099436178', '2009-01-24', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:05:28', '2026-01-07 19:05:28'),
(763, 841, 'KIKI FAREL', '24258279', '0099268317', '2009-10-04', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:05:28', '2026-01-07 19:05:28'),
(764, 842, 'MUHAMAD RIJAL RAHMATULLOH', '24258308', '0097639253', '2009-04-20', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:05:29', '2026-01-07 19:05:29'),
(765, 843, 'NURUL PAZRI', '24258335', '0093324204', '2009-03-11', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:05:29', '2026-01-07 19:05:29'),
(766, 844, 'PAMBAYUNING YUAN PRAMESTI', '24258338', '0097608144', '2009-04-13', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:05:30', '2026-01-07 19:05:30'),
(767, 845, 'REHAN ANURI', '24258364', '0092092084', '2009-01-02', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:05:30', '2026-01-07 19:05:30'),
(768, 846, 'RIZKI SAPUTRA', '24258392', '0086243506', '2008-02-13', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:05:31', '2026-01-07 19:05:31'),
(769, 847, 'RIZQI ADITYA SAPUTRA', '24258394', '0093970197', '2009-05-19', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:05:31', '2026-01-07 19:05:31'),
(770, 848, 'Soni Kurniawan', '24258428', '0089692884', '2008-10-28', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:05:32', '2026-01-07 19:05:32'),
(771, 849, 'SULTAN HASAN', '24258434', '0097358683', '2009-02-22', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:05:33', '2026-01-07 19:05:33'),
(772, 850, 'TRIONO JAKA SAPUTRA', '24258455', '0099172751', '2009-01-20', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:05:33', '2026-01-07 19:05:33'),
(773, 851, 'UJANG IRWANSAH', '24258456', '0087782042', '2008-08-25', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:05:33', '2026-01-07 19:05:33'),
(774, 852, 'Wahyu Saputra', '24258468', '0089757088', '2008-08-30', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:05:34', '2026-01-07 19:05:34'),
(775, 853, 'WISNU HANAFI', '24258471', '0092938020', '2009-01-17', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:05:34', '2026-01-07 19:05:34'),
(776, 854, 'YOGA PRATAMA', '24258474', '0081728884', '2008-07-26', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:05:35', '2026-01-07 19:05:35'),
(777, 855, 'ZAKI PRASTIO', '24258480', '0095530304', '2009-06-23', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:05:35', '2026-01-07 19:05:35'),
(778, 856, 'ANGGITA RIANY', '23247679', '0082931594', '2008-05-04', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:08:37', '2026-01-07 19:08:37'),
(779, 857, 'DIAS AYU LESTARI', '23247730', '0085987561', '2008-07-10', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:08:37', '2026-01-07 19:08:37'),
(780, 858, 'DIVA INDAH AGUSTINA', '23247740', '0082741843', '2008-08-22', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:08:38', '2026-01-07 19:08:38'),
(781, 859, 'FAIHA NADILA', '23247757', '0075510907', '2007-10-01', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:08:38', '2026-01-07 19:08:38'),
(782, 860, 'Firda Juwita Zul Faliana', '23247770', '0086903857', '2008-01-31', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:08:39', '2026-01-07 19:08:39'),
(783, 861, 'Indah Safarah Fitria', '23247800', '0083777881', '2008-10-01', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:08:40', '2026-01-07 19:08:40'),
(784, 862, 'INDIRA AYU ISMANDARI', '23247801', '0095723348', '2009-02-20', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:08:41', '2026-01-07 19:08:41'),
(785, 863, 'Inez Evan', '23247803', '0083158592', '2008-03-25', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:08:41', '2026-01-07 19:08:41'),
(786, 864, 'JESIKA', '23247811', '0077879496', '2007-06-09', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:08:42', '2026-01-07 19:08:42'),
(787, 865, 'JULIA PUTRI AYU DELVIRA', '23247814', '0082526857', '2008-07-06', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:08:42', '2026-01-07 19:08:42'),
(788, 866, 'MARSELA ELISTIYANA', '23247838', '0088866732', '2008-03-10', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:08:44', '2026-01-07 19:08:44'),
(789, 867, 'NADIYA ADI SAPUTRI', '23247862', '0079588311', '2007-10-29', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:08:44', '2026-01-07 19:08:44'),
(790, 868, 'Nazwa Salsabila', '23247869', '0097382514', '2009-03-28', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:08:45', '2026-01-07 19:08:45'),
(791, 869, 'NISA NURAINI', '23247873', '0088859357', '2008-04-03', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:08:45', '2026-01-07 19:08:45'),
(792, 870, 'NOVINA SRI RAHAYU', '23247875', '0078913985', '2007-11-16', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:08:46', '2026-01-07 19:08:46'),
(793, 871, 'REVA RIYANTI', '23247908', '0063077999', '2006-06-01', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:08:46', '2026-01-07 19:08:46'),
(794, 872, 'SARAH AGUSTIN', '23247948', '0088835587', '2008-08-07', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:08:47', '2026-01-07 19:08:47'),
(795, 873, 'Silviana Lintang Andriyani', '23247964', '0075785387', '2007-01-25', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:08:48', '2026-01-07 19:08:48'),
(796, 874, 'SYAHLA MEILIA', '23247985', '0091555890', '2009-05-12', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:08:48', '2026-01-07 19:08:48'),
(797, 875, 'TIARA DWI SAFITRI', '23247998', '0086414817', '2008-10-03', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:08:49', '2026-01-07 19:08:49'),
(798, 876, 'UNES AMANIA', '23248008', '0089917243', '2008-08-11', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:08:51', '2026-01-07 19:08:51'),
(799, 877, 'Vivin Hayati Hasanah', '23248013', '0075387588', '2007-11-19', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:08:51', '2026-01-07 19:08:51'),
(800, 878, 'Widia Aulia Assyifa', '23248019', '0083015276', '2008-03-08', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:08:52', '2026-01-07 19:08:52'),
(801, 879, 'WINA ROSMILA', '23248021', '0089367196', '2008-05-07', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:08:53', '2026-01-07 19:08:53'),
(802, 880, 'YETI WULAN SARI', '23248024', '0086351852', '2008-10-13', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:08:53', '2026-01-07 19:08:53'),
(803, 881, 'Zazkiatul Aulia', '23248035', '0089730103', '2008-07-21', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:08:54', '2026-01-07 19:08:54'),
(804, 882, 'AULIDIYA MUHAYATI', '23247692', '0082665379', '2008-03-21', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:08:55', '2026-01-07 19:08:55'),
(805, 883, 'Auliya Ramadhani', '23247693', '0073614841', '2007-10-04', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:08:55', '2026-01-07 19:08:55'),
(806, 884, 'Cantika Febriyanti', '23247708', '0081397121', '2008-02-08', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:08:56', '2026-01-07 19:08:56'),
(807, 885, 'CHINTYA SABRIANA', '23247712', '0089333130', '2008-02-19', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:08:57', '2026-01-07 19:08:57'),
(808, 886, 'DANITA NURCAHYANI', '23247720', '0085733334', '2008-01-11', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:08:59', '2026-01-07 19:08:59'),
(809, 887, 'Dwi Baitulrohmah', '23247741', '0074221461', '2007-05-15', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:08:59', '2026-01-07 19:08:59'),
(810, 888, 'EMILIA PUTRI MAHARANI', '23247745', '0087209658', '2008-06-23', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:09:00', '2026-01-07 19:09:00'),
(811, 889, 'FITRI NUR OKTAVIYANI', '23247775', '0078652245', '2007-10-13', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:09:01', '2026-01-07 19:09:01'),
(812, 890, 'Halimatu Saadiah', '23247780', '0083505341', '2008-11-30', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:09:01', '2026-01-07 19:09:01'),
(813, 891, 'ISNAINI NUR FAUZIYAH', '23247808', '0087025098', '2008-03-02', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:09:03', '2026-01-07 19:09:03'),
(814, 892, 'JELITA NUR OKTAVIANI', '23247810', '0089840366', '2008-07-11', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:09:03', '2026-01-07 19:09:03'),
(815, 893, 'KHALIMATUS SAADIYAH', '23247825', '0072356068', '2007-08-19', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:09:04', '2026-01-07 19:09:04'),
(816, 894, 'Luki Adi Wijaya', '23247834', '0075512625', '2007-07-17', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:09:05', '2026-01-07 19:09:05'),
(817, 895, 'Nadia Rahmawati', '23247861', '0083915643', '2008-03-26', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:09:06', '2026-01-07 19:09:06'),
(818, 896, 'Nuryeti Atmah', '23247879', '0073571238', '2007-11-15', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:09:08', '2026-01-07 19:09:08'),
(819, 897, 'Salsa Fadilla Turohmah', '23247939', '0082832621', '2008-07-09', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:09:09', '2026-01-07 19:09:09'),
(820, 898, 'SANTIKA', '23247946', '0087342128', '2008-07-15', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:09:09', '2026-01-07 19:09:09'),
(821, 899, 'SHINTIA DEWI ZHULIASARI', '23247959', '0087211329', '2008-07-30', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:09:10', '2026-01-07 19:09:10'),
(822, 900, 'SINTA DWI ARYANTI', '23247965', '0081439327', '2008-09-20', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:09:11', '2026-01-07 19:09:11'),
(823, 901, 'Siti Marwah Nurhayani', '23247969', '0082871967', '2008-08-23', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:09:11', '2026-01-07 19:09:11'),
(824, 902, 'Sukma Wijaya', '23247980', '0077454425', '2007-07-07', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:09:12', '2026-01-07 19:09:12'),
(825, 903, 'Tika Lestari', '23248000', '0088608577', '2008-12-02', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:09:13', '2026-01-07 19:09:13'),
(826, 904, 'TRI YULIANA', '23248006', '0073792507', '2007-12-23', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:09:13', '2026-01-07 19:09:13'),
(827, 905, 'ZAHRA', '23248028', '0087009582', '2008-08-08', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:09:14', '2026-01-07 19:09:14'),
(828, 906, 'ABIM RIANSYAH', '23247627', '0064614906', '2008-01-29', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:10:49', '2026-01-07 19:10:49'),
(829, 907, 'Ade Rizkita Fitri', '23247629', '0087289267', '2008-09-30', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:10:50', '2026-01-07 19:10:50'),
(830, 908, 'ADIRA AGUSTINA DEWI LESTARI', '23247633', '0089744123', '2009-08-03', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:10:50', '2026-01-07 19:10:50'),
(831, 909, 'AISAH DWI NINGRUM', '23247650', '0087025972', '2008-08-25', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:10:51', '2026-01-07 19:10:51'),
(832, 910, 'AULIA', '23247690', '0062808037', '2006-07-30', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:10:52', '2026-01-07 19:10:52'),
(833, 911, 'CINTA NUR FEBIYANI', '23247715', '0088235504', '2008-02-26', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:10:53', '2026-01-07 19:10:53'),
(834, 912, 'DIKI PRIYANTO', '23247736', '0085512957', '2008-01-11', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:10:54', '2026-01-07 19:10:54'),
(835, 913, 'ENI SURYANI', '23247747', '0084895388', '2008-05-05', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:10:54', '2026-01-07 19:10:54'),
(836, 914, 'FINFIN APRILIANINGSIH', '23247767', '0064646893', '2006-04-07', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:10:55', '2026-01-07 19:10:55'),
(837, 915, 'Holfiyatun Nasiroh', '23247787', '0079869429', '2007-08-12', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:10:56', '2026-01-07 19:10:56'),
(838, 916, 'INDRI YUNIARTI', '23247802', '0074367871', '2007-06-07', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:10:57', '2026-01-07 19:10:57'),
(839, 917, 'Kesya Nurhasanah', '23247822', '0082135106', '2008-06-30', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:10:58', '2026-01-07 19:10:58'),
(840, 918, 'LENA SARI', '23247832', '0083152033', '2008-08-11', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:10:59', '2026-01-07 19:10:59'),
(841, 919, 'Lutfiyatul Fatimah', '23247836', '0079742746', '2007-11-08', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:10:59', '2026-01-07 19:10:59'),
(842, 920, 'NAFA SUCIATI', '23247863', '0086447179', '2008-11-16', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:11:00', '2026-01-07 19:11:00'),
(843, 921, 'SELA PEBRIYANTI', '23247955', '0088208794', '2008-02-23', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:11:02', '2026-01-07 19:11:02'),
(844, 922, 'SEVIRA RAKHMADANI', '23247958', '0082342024', '2008-09-07', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:11:02', '2026-01-07 19:11:02'),
(845, 923, 'SITI ZULAEHA LESTARI', '23247972', '0089218102', '2008-05-02', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:11:03', '2026-01-07 19:11:03'),
(846, 924, 'SUCI NOVITA SARI', '23247979', '0087228046', '2008-07-15', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:11:04', '2026-01-07 19:11:04'),
(847, 925, 'SYARA DWI AJIJAH', '23247989', '0072226860', '2007-04-16', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:11:04', '2026-01-07 19:11:04'),
(848, 926, 'VIVIT PUTRIYANI', '23248014', '0085700635', '2008-05-16', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:11:05', '2026-01-07 19:11:05'),
(849, 927, 'ZAHRA NURUSSHIFA', '23248030', '0085825504', '2008-11-09', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:11:06', '2026-01-07 19:11:06'),
(850, 928, 'AIN DIASTUTI RAHAYU', '23247649', '0075601337', '2007-12-20', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:11:06', '2026-01-07 19:11:06'),
(851, 929, 'Alifa Chika Meivia', '23248046', '0076833379', '2007-05-08', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:11:07', '2026-01-07 19:11:07'),
(852, 930, 'ANA RAHAYU NINGSIH', '23247669', '0088892727', '2008-04-22', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:11:07', '2026-01-07 19:11:07'),
(853, 931, 'BUNGA HARMONI', '23247705', '0083670319', '2008-06-23', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:11:10', '2026-01-07 19:11:10'),
(854, 932, 'DARA TRI LATIFAH', '23247723', '0088043980', '2008-12-05', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:11:11', '2026-01-07 19:11:11'),
(855, 933, 'Dian Apriyani', '23247728', '0084941997', '2008-04-24', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:11:11', '2026-01-07 19:11:11'),
(856, 934, 'DILA APRILLIANA', '23247737', '0039782358', '2003-04-09', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:11:12', '2026-01-07 19:11:12'),
(857, 935, 'Fajri Mulya Fitri', '23247760', '0081302369', '2008-05-18', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:11:12', '2026-01-07 19:11:12'),
(858, 936, 'INDAH JAMI\'ATUN LESTARI', '23248047', '0089828122', '2008-02-15', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:11:14', '2026-01-07 19:11:14'),
(859, 937, 'Jingga Putri Lestari', '23247812', '0085504750', '2008-07-18', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:11:15', '2026-01-07 19:11:15'),
(860, 938, 'Junita Rahmawati', '23247815', '0088487969', '2008-06-05', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:11:15', '2026-01-07 19:11:15'),
(861, 939, 'JUWITA SUKMA RAHAYU', '23247816', '0081958398', '2008-06-06', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:11:16', '2026-01-07 19:11:16'),
(862, 940, 'KARINA KHOLIFAH', '23247819', '0083854753', '2008-02-03', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:11:17', '2026-01-07 19:11:17'),
(863, 941, 'KEYSA DYAH KUMALASARI', '23247824', '0089455327', '2008-06-22', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:11:18', '2026-01-07 19:11:18'),
(864, 942, 'LISNA FIGIYANI', '23247833', '0084907143', '2008-05-06', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:11:19', '2026-01-07 19:11:19'),
(865, 943, 'Lolyta Putriana Hilmantoro', '23248048', '0085428961', '2008-03-11', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:11:19', '2026-01-07 19:11:19'),
(866, 944, 'NABILA SAFITRI', '23247860', '0074343155', '2008-09-07', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:11:20', '2026-01-07 19:11:20'),
(867, 945, 'NESTI SUNDARI', '23247870', '0084947375', '2008-02-25', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:11:21', '2026-01-07 19:11:21'),
(868, 946, 'OCA YUANITA', '23247880', '0071539614', '2007-07-31', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:11:22', '2026-01-07 19:11:22'),
(869, 947, 'SELLY SESILIA AL FIANTI', '23248053', '0084132514', '2008-07-21', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:11:23', '2026-01-07 19:11:23'),
(870, 948, 'Sevina Tri Amalia', '23247957', '0084106159', '2008-02-04', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:11:24', '2026-01-07 19:11:24'),
(871, 949, 'SHINTIA INDAH LESTARI', '23247960', '0082087485', '2008-02-25', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:11:24', '2026-01-07 19:11:24'),
(872, 950, 'SITI KIRANI NURVIANA', '23247968', '0089851788', '2008-06-20', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:11:25', '2026-01-07 19:11:25'),
(873, 951, 'SRI RAHAYU', '23247976', '0085712773', '2008-05-29', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:11:26', '2026-01-07 19:11:26'),
(874, 952, 'SYAFKAH FALIYAH RATMONO', '23247984', '0085643301', '2008-05-25', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:11:26', '2026-01-07 19:11:26'),
(875, 953, 'TAAT PUJI RAHAYU', '23248045', '0076317010', '2007-12-16', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:11:27', '2026-01-07 19:11:27'),
(876, 954, 'Tiara Ramadhani', '23247999', '0081003354', '2008-09-26', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:11:27', '2026-01-07 19:11:27'),
(877, 955, 'WAHYUNINGSIH', '23248018', '0086463452', '2008-07-21', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:11:28', '2026-01-07 19:11:28'),
(878, 956, 'ABDUL PAKIH', '23247625', '0083413201', '2008-12-16', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:11:29', '2026-01-07 19:11:29'),
(879, 957, 'ABIGAIL VANIA', '23247626', '0082840669', '2008-05-07', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:11:30', '2026-01-07 19:11:30'),
(880, 958, 'Agus Saputra', '23247643', '0084969325', '2008-08-16', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:11:31', '2026-01-07 19:11:31'),
(881, 959, 'AISYAH NURFADHILAH', '23247651', '0079652341', '2007-03-10', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:11:31', '2026-01-07 19:11:31'),
(882, 960, 'AKHSAN SAEFANI MA\'RUF', '23247654', '0088250459', '2008-03-11', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:11:32', '2026-01-07 19:11:32'),
(883, 961, 'ANIATURROHMAH', '23247680', '0086532239', '2008-05-31', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:11:34', '2026-01-07 19:11:34'),
(884, 962, 'ASYAM ILHAM ALHAKIM', '23247688', '0071975303', '2007-08-09', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:11:34', '2026-01-07 19:11:34'),
(885, 963, 'DAVINA SIFA VELLISA', '23247724', '0079276977', '2007-11-05', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:11:35', '2026-01-07 19:11:35'),
(886, 964, 'DIAN RIZQY NUGROHO', '23247729', '0085471261', '2008-02-11', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:11:36', '2026-01-07 19:11:36'),
(887, 965, 'Fien Zahra Sawittri', '23247766', '0079820633', '2007-12-15', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:11:36', '2026-01-07 19:11:36'),
(888, 966, 'FISAL ADI KURNIAWAN', '23247774', '0071097354', '2007-08-01', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:11:37', '2026-01-07 19:11:37'),
(889, 967, 'GILANG AJI PRAYOGA', '23247777', '0077423487', '2007-12-22', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:11:38', '2026-01-07 19:11:38'),
(890, 968, 'HERLAN SANTOSA', '23247785', '0081696779', '2008-03-27', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:11:39', '2026-01-07 19:11:39'),
(891, 969, 'HIBATULLAH NAUFAL', '23247786', '0088084647', '2008-01-28', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:11:39', '2026-01-07 19:11:39'),
(892, 970, 'KHILYATUL QINAYAH', '23247827', '0083435753', '2008-06-24', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:11:40', '2026-01-07 19:11:40'),
(893, 971, 'MUHAMAD FARID ARISKI', '23247849', '0087805719', '2008-05-02', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:11:43', '2026-01-07 19:11:43'),
(894, 972, 'MUHAMMAD YUSUF SUPRIYATNA', '23248054', '0074902007', '2007-07-13', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:11:43', '2026-01-07 19:11:43'),
(895, 973, 'NAZWA FITRIYANI', '23247868', '0073770951', '2007-09-27', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:11:44', '2026-01-07 19:11:44'),
(896, 974, 'NIHAYAH BELLA ADINA', '23247872', '0088227696', '2008-12-04', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:11:44', '2026-01-07 19:11:44'),
(897, 975, 'NURHASIM', '23247878', '3079807472', '2007-06-18', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:11:45', '2026-01-07 19:11:45'),
(898, 976, 'PUTRI MARLINA RAHAYU', '23247884', '0081428050', '2009-03-15', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:11:46', '2026-01-07 19:11:46'),
(899, 977, 'RANI DIAH ASTUTI', '23247898', '0074391153', '2007-10-29', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:11:46', '2026-01-07 19:11:46'),
(900, 978, 'REZA AUXILLIA SEKAR ZIVANNA', '23247913', '0081443639', '2008-08-13', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:11:47', '2026-01-07 19:11:47'),
(901, 979, 'REZHA SULISTYA NINGSIH', '23247914', '0082562500', '2008-04-26', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:11:47', '2026-01-07 19:11:47'),
(902, 980, 'RIDHO RAMADANI', '23247917', '0088366884', '2008-08-06', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:11:47', '2026-01-07 19:11:47'),
(903, 981, 'RIFKI SEBASTIAR', '23247925', '0083319457', '2008-07-15', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:11:48', '2026-01-07 19:11:48'),
(904, 982, 'SISKA DWI LARASATI', '23247967', '0088053303', '2008-08-24', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:11:49', '2026-01-07 19:11:49'),
(905, 983, 'SITI NURUS SYIFA', '23247970', '0088703042', '2008-07-07', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:11:49', '2026-01-07 19:11:49'),
(906, 984, 'WINTA', '23248022', '0077099440', '2008-01-19', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:11:50', '2026-01-07 19:11:50'),
(907, 985, 'ZAGHWA OKTAVIA PRIANI', '23248027', '0088395714', '2008-10-26', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:11:50', '2026-01-07 19:11:50'),
(908, 986, 'ZAHRA ALYCIA', '23248029', '0072526475', '2007-11-30', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:11:51', '2026-01-07 19:11:51'),
(909, 987, 'ZULFAH RAUDATUL ZANNAH', '23248038', '0082326581', '2008-07-09', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:11:51', '2026-01-07 19:11:51'),
(910, 988, 'AHMAD REZA RAMADANI', '23247647', '0077426283', '2007-10-04', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:11:52', '2026-01-07 19:11:52'),
(911, 989, 'ALFIATUL', '23247662', '0084710512', '2008-08-19', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:11:52', '2026-01-07 19:11:52'),
(912, 990, 'ANDINA RAHMASARI', '23247674', '0086104123', '2008-07-06', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:11:52', '2026-01-07 19:11:52'),
(913, 991, 'ANDRIAN', '23247675', '0084922902', '2008-12-16', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:11:54', '2026-01-07 19:11:54'),
(914, 992, 'CHRISNA RANGGA PRATAMA', '23247714', '0084694356', '2009-09-27', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:11:54', '2026-01-07 19:11:54'),
(915, 993, 'DHIANY SILVIA CAHYA', '23247727', '0089674748', '2008-12-06', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:11:54', '2026-01-07 19:11:54'),
(916, 994, 'Dila Lutvia Meylani', '23247738', '0086093961', '2008-05-01', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:11:55', '2026-01-07 19:11:55'),
(917, 995, 'Fajar Gilar Saputra', '23247759', '0089817156', '2008-07-03', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:11:55', '2026-01-07 19:11:55'),
(918, 996, 'FARHAN KHOERUNNAS', '23247763', '0083459410', '2008-03-27', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:11:56', '2026-01-07 19:11:56'),
(919, 997, 'Gagas Kurniawan', '23248042', '0083101886', '2008-07-03', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:11:56', '2026-01-07 19:11:56'),
(920, 998, 'IFON FEBRIANI', '23247792', '0091142371', '2009-02-21', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:11:57', '2026-01-07 19:11:57'),
(921, 999, 'IHFA NUR INSANI', '23247793', '0076316397', '2007-09-14', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:11:57', '2026-01-07 19:11:57'),
(922, 1000, 'KASELINDA AGUSTIN', '23247820', '0088918519', '2008-08-21', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:11:58', '2026-01-07 19:11:58'),
(923, 1001, 'KEVIN ANDREAN PRATAMA', '23247823', '0084186367', '2008-10-28', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:11:59', '2026-01-07 19:11:59'),
(924, 1002, 'MUHAMAD FAJAR SATRIO', '23247848', '0074273802', '2007-06-06', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:11:59', '2026-01-07 19:11:59'),
(925, 1003, 'NANDA ANDRIYANI', '23247864', '0079765275', '2007-11-20', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:12:00', '2026-01-07 19:12:00'),
(926, 1004, 'Nur Rohmah Ramdani', '23247877', '0079551707', '2007-09-17', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:12:00', '2026-01-07 19:12:00'),
(927, 1005, 'RADIT SAPUTRA', '23247886', '0078640523', '2007-05-14', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:12:01', '2026-01-07 19:12:01'),
(928, 1006, 'Raka Aditya Pratama', '23247895', '0089310713', '2008-07-29', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:12:01', '2026-01-07 19:12:01'),
(929, 1007, 'Refan Aditiya Permana', '23247901', '0088736952', '2008-05-22', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:12:02', '2026-01-07 19:12:02'),
(930, 1008, 'Reza Apriliyanto', '23247912', '0085459166', '2008-04-23', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:12:02', '2026-01-07 19:12:02'),
(931, 1009, 'RIDWAN JAYA SAPUTRA', '23247920', '0086911286', '2008-01-13', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:12:03', '2026-01-07 19:12:03'),
(932, 1010, 'Rini Puspita Sari', '23247926', '0079933649', '2007-03-26', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:12:03', '2026-01-07 19:12:03'),
(933, 1011, 'riska ayu pangestu', '23247927', '0071619202', '2007-08-12', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:12:04', '2026-01-07 19:12:04'),
(934, 1012, 'Rizal Aji Nugroho', '23247929', '0061469129', '2006-01-07', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:12:05', '2026-01-07 19:12:05'),
(935, 1013, 'RIZKI MAULANA IBRAHIM', '23247931', '0098781914', '2009-01-08', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:12:05', '2026-01-07 19:12:05'),
(936, 1014, 'Sandi Saputra', '23247944', '0084873441', '2008-06-03', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:12:06', '2026-01-07 19:12:06'),
(937, 1015, 'Satria Pratama', '23247953', '0075509988', '2007-10-23', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:12:06', '2026-01-07 19:12:06'),
(938, 1016, 'SATRIO JANARA ARAFA', '23247954', '0086506822', '2008-01-09', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:12:07', '2026-01-07 19:12:07'),
(939, 1017, 'SOFA HASAN FALSAFI', '23247973', '0087099029', '2008-02-02', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:12:07', '2026-01-07 19:12:07'),
(940, 1018, 'TYAS SEVY NAZZAHRA', '23248007', '0078612757', '2007-09-12', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:12:07', '2026-01-07 19:12:07'),
(941, 1019, 'Vega Diantari', '23248009', '0087291144', '2008-06-20', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:12:08', '2026-01-07 19:12:08'),
(942, 1020, 'ADITYA WARMAN', '23247637', '0084297915', '2008-07-05', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:12:53', '2026-01-07 19:12:53'),
(943, 1021, 'ALYA PITRIYANI', '23247667', '0081623668', '2008-09-30', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:12:54', '2026-01-07 19:12:54'),
(944, 1022, 'AULIA NABILA SAFITRI', '23247691', '3078755441', '2007-08-24', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:12:54', '2026-01-07 19:12:54'),
(945, 1023, 'AZRA FADILAH ARISTIANA', '23247695', '0074620543', '2007-12-12', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:12:55', '2026-01-07 19:12:55'),
(946, 1024, 'BAGAS SAPUTRA', '23247698', '0075641171', '2007-10-14', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:12:55', '2026-01-07 19:12:55'),
(947, 1025, 'BANGKIT ADI PRAYUGA', '23247699', '0086578005', '2008-05-20', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:12:56', '2026-01-07 19:12:56'),
(948, 1026, 'CHIKA AMELIA', '23247711', '0082056461', '2008-05-20', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:12:56', '2026-01-07 19:12:56'),
(949, 1027, 'DAFA JULIAN PRABOWO', '23247717', '0071904010', '2007-07-01', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:12:57', '2026-01-07 19:12:57');
INSERT INTO `siswa` (`id`, `user_id`, `nama`, `nis`, `nisn`, `tgl_lahir`, `no_hp`, `jenis_kelamin`, `no_hp_ortu`, `alamat`, `kelas_id`, `is_lulus`, `created_at`, `updated_at`) VALUES
(950, 1028, 'DESWITA NAZWA AZAHRA', '23247726', '0083939162', '2008-06-12', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:12:57', '2026-01-07 19:12:57'),
(951, 1029, 'DIKA BAGUS RAHAYU', '23247734', '0089135433', '2008-01-18', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:12:58', '2026-01-07 19:12:58'),
(952, 1030, 'DWI TASYA OKTAVIANA', '23247742', '0081329737', '2008-10-24', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:12:58', '2026-01-07 19:12:58'),
(953, 1031, 'DWIKI ANDHIKA', '23247743', '0073797163', '2007-12-07', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:12:59', '2026-01-07 19:12:59'),
(954, 1032, 'HELIANA HERMAN', '23247784', '0075637666', '2007-10-28', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:12:59', '2026-01-07 19:12:59'),
(955, 1033, 'IDZAN ADIANTO', '23247791', '0089062036', '2008-07-08', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:13:00', '2026-01-07 19:13:00'),
(956, 1034, 'Kalvina Novela', '23247818', '0072292824', '2007-11-29', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:13:00', '2026-01-07 19:13:00'),
(957, 1035, 'LAURA BUNGA SARI', '23247829', '0087074427', '2008-02-09', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:13:01', '2026-01-07 19:13:01'),
(958, 1036, 'Leman Adi Prasetia', '23247831', '0079389617', '2007-10-23', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:13:01', '2026-01-07 19:13:01'),
(959, 1037, 'LITA FELINA', '23248043', '0082009365', '2008-04-15', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:13:02', '2026-01-07 19:13:02'),
(960, 1038, 'MUHAMMAD ILHAM NURKHOLIQ', '23247856', '0086258953', '2008-06-01', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:13:03', '2026-01-07 19:13:03'),
(961, 1039, 'MUTMAINAH MUTIARA LESTARI', '23248049', '0085528332', '2008-09-16', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:13:03', '2026-01-07 19:13:03'),
(962, 1040, 'RAHMA LUGINA', '23247892', '0081043408', '2008-01-26', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:13:04', '2026-01-07 19:13:04'),
(963, 1041, 'RAMADHANI SENDYANTORO', '23247896', '0082654832', '2008-09-17', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:13:04', '2026-01-07 19:13:04'),
(964, 1042, 'REVI DAMAYANTI', '23247911', '0072957633', '2007-12-18', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:13:04', '2026-01-07 19:13:04'),
(965, 1043, 'RIEFAN MAULANA', '23247921', '0071738210', '2007-06-20', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:13:05', '2026-01-07 19:13:05'),
(966, 1044, 'SALWA DWI ARYANTI', '23247940', '0089119913', '2008-01-08', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:13:05', '2026-01-07 19:13:05'),
(967, 1045, 'SANDRA OKTAVIA', '23247945', '0077406367', '2007-10-23', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:13:06', '2026-01-07 19:13:06'),
(968, 1046, 'Satria Aldiansyah', '23247950', '0088978073', '2008-06-15', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:13:07', '2026-01-07 19:13:07'),
(969, 1047, 'SIFA MUTIARA', '23247961', '0084734653', '2008-03-18', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:13:07', '2026-01-07 19:13:07'),
(970, 1048, 'TALIA STEVANI', '23247990', '0084890189', '2008-04-16', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:13:08', '2026-01-07 19:13:08'),
(971, 1049, 'THALITA ALYA PUTRI', '23247996', '0074040693', '2007-12-26', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:13:08', '2026-01-07 19:13:08'),
(972, 1050, 'Tri Bayu Nurohman', '23248004', '0066701918', '2006-06-26', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:13:08', '2026-01-07 19:13:08'),
(973, 1051, 'Tri Nuraeni', '23248005', '0089228823', '2008-02-03', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:13:09', '2026-01-07 19:13:09'),
(974, 1052, 'VIDO RIFKY DENIRO', '23248012', '0088511384', '2008-05-15', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:13:09', '2026-01-07 19:13:09'),
(975, 1053, 'AFINUR ISNAENI', '23247641', '0081848594', '2008-07-07', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:13:10', '2026-01-07 19:13:10'),
(976, 1054, 'Ahmad Mustakim', '23248052', '0066468552', '2006-08-19', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:13:10', '2026-01-07 19:13:10'),
(977, 1055, 'Ari Gusti Setiawan', '23247683', '0088255467', '2008-03-02', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:13:11', '2026-01-07 19:13:11'),
(978, 1056, 'ARINA HOLIMATUL FATIMAH', '23247685', '0089827390', '2008-08-17', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:13:12', '2026-01-07 19:13:12'),
(979, 1057, 'DIKA ABDY PRAMONO', '23247732', '0072762823', '2007-12-12', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:13:12', '2026-01-07 19:13:12'),
(980, 1058, 'FACHRY FAJAR DESTIAN', '23247750', '0074596681', '2007-12-22', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:13:13', '2026-01-07 19:13:13'),
(981, 1059, 'FIQI ALFRIANSYAH', '23247768', '0082978859', '2008-08-11', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:13:13', '2026-01-07 19:13:13'),
(982, 1060, 'FIRA', '23247769', '0079794025', '2007-01-17', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:13:14', '2026-01-07 19:13:14'),
(983, 1061, 'HAFIZ REIFANSYAH', '23247779', '0081600611', '2008-06-27', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:13:14', '2026-01-07 19:13:14'),
(984, 1062, 'Isfa Fahrizal', '23247806', '0085690544', '2008-11-02', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:13:15', '2026-01-07 19:13:15'),
(985, 1063, 'LELI NUR HIKMA WATI', '23247830', '0074636239', '2007-05-13', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:13:15', '2026-01-07 19:13:15'),
(986, 1064, 'MIKO REZI WIBOWO', '23247843', '0085715040', '2008-07-25', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:13:15', '2026-01-07 19:13:15'),
(987, 1065, 'Muhamad Erwin Juniantoro', '23247847', '0082472160', '2008-06-23', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:13:16', '2026-01-07 19:13:16'),
(988, 1066, 'MUHAMMAD HAFID', '23247855', '0087733840', '2008-05-22', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:13:17', '2026-01-07 19:13:17'),
(989, 1067, 'MUHAMMAD NAZAM NAFI\'AN', '23247857', '0073775927', '2007-05-31', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:13:17', '2026-01-07 19:13:17'),
(990, 1068, 'MUHAMMAD TEGAR PANGESTU', '23247858', '0076313502', '2007-07-21', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:13:17', '2026-01-07 19:13:17'),
(991, 1069, 'NASWA RAMADHANI', '23247866', '0086208947', '2008-09-06', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:13:18', '2026-01-07 19:13:18'),
(992, 1070, 'PUTRI WULANDARI', '23247885', '0084237771', '2008-05-02', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:13:19', '2026-01-07 19:13:19'),
(993, 1071, 'REGITA NURAHMAH', '23247903', '0074452527', '2007-12-03', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:13:19', '2026-01-07 19:13:19'),
(994, 1072, 'RETNO AYUNINGSIH', '23247907', '0083799068', '2008-03-19', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:13:20', '2026-01-07 19:13:20'),
(995, 1073, 'RIDHO WARIHSAN', '23247918', '0089753383', '2008-07-21', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:13:20', '2026-01-07 19:13:20'),
(996, 1074, 'ROHAMAH WANTI', '23247934', '0076908332', '2007-11-20', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:13:21', '2026-01-07 19:13:21'),
(997, 1075, 'ROSALINDA', '23247935', '0079468736', '2007-08-15', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:13:22', '2026-01-07 19:13:22'),
(998, 1076, 'SANDI', '23247943', '0076627515', '2007-02-24', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:13:22', '2026-01-07 19:13:22'),
(999, 1077, 'Santiyasari', '23247947', '0076197582', '2007-05-15', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:13:22', '2026-01-07 19:13:22'),
(1000, 1078, 'SITI NURYAH RAHAYU', '23247971', '0081547557', '2008-01-21', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:13:23', '2026-01-07 19:13:23'),
(1001, 1079, 'SUCI ANGGRAENI', '23247978', '0089279141', '2008-07-07', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:13:23', '2026-01-07 19:13:23'),
(1002, 1080, 'TAMESYA NENDA SAFIRA', '23247991', '0077658877', '2008-01-30', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:13:25', '2026-01-07 19:13:25'),
(1003, 1081, 'TAUFA AFRIANSAH', '23247993', '0078197952', '2007-04-19', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:13:25', '2026-01-07 19:13:25'),
(1004, 1082, 'Tio Saputra', '23248002', '0089993275', '2008-05-06', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:13:26', '2026-01-07 19:13:26'),
(1005, 1083, 'WAHYU ADHI ALGIFARY', '23248015', '0081576991', '2008-06-27', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:13:26', '2026-01-07 19:13:26'),
(1006, 1084, 'Adi Saputra', '23247631', '0075818587', '2007-11-10', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:13:27', '2026-01-07 19:13:27'),
(1007, 1085, 'ADITYA FAUZI ZAIN', '23247636', '0081907942', '2008-05-07', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:13:27', '2026-01-07 19:13:27'),
(1008, 1086, 'ADRIAN NUR ROHMAN', '23247638', '0083246381', '2008-04-16', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:13:28', '2026-01-07 19:13:28'),
(1009, 1087, 'AJI GALIH PRASETYO', '23247652', '0082759240', '2008-10-19', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:13:28', '2026-01-07 19:13:28'),
(1010, 1088, 'ALDI AYRIAN', '23247659', '0083273959', '2008-02-03', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:13:28', '2026-01-07 19:13:28'),
(1011, 1089, 'ALI MA\'RUF', '23247664', '0071780196', '2007-08-07', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:13:29', '2026-01-07 19:13:29'),
(1012, 1090, 'CHOIRUL ZAKI RAMDANI', '23247713', '0083519801', '2008-09-07', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:13:30', '2026-01-07 19:13:30'),
(1013, 1091, 'EKSA JULIO PANGESTU', '23247744', '0083330554', '2008-07-08', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:13:30', '2026-01-07 19:13:30'),
(1014, 1092, 'FAHRI MUHAMAD FAISAL', '23247755', '0082721657', '2008-04-24', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:13:30', '2026-01-07 19:13:30'),
(1015, 1093, 'FAHRI RAHMADAN', '23247756', '0084221393', '2008-09-01', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:13:31', '2026-01-07 19:13:31'),
(1016, 1094, 'IBNU NGAZIZATULNGUBAIDILLAH', '23247788', '0082660585', '2008-01-15', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:13:31', '2026-01-07 19:13:31'),
(1017, 1095, 'IKHSAN HARI PRIANDIKA', '23247796', '0077395259', '2007-10-07', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:13:32', '2026-01-07 19:13:32'),
(1018, 1096, 'KAKA NAJRIL', '23247817', '0087248129', '2008-06-16', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:13:32', '2026-01-07 19:13:32'),
(1019, 1097, 'MUHAMAD ALI AAS HUSAENI', '23247844', '0085233947', '2008-03-30', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:13:33', '2026-01-07 19:13:33'),
(1020, 1098, 'Prasta nizzar Nur Luf Ayyi Maad Adnan', '23247882', '0073550675', '2007-08-31', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:13:33', '2026-01-07 19:13:33'),
(1021, 1099, 'RAFAH RAHMADDANI', '23247887', '0076564640', '2007-10-16', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:13:34', '2026-01-07 19:13:34'),
(1022, 1100, 'RISKI ALAMSYAH', '23247928', '0079271161', '2007-09-11', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:13:35', '2026-01-07 19:13:35'),
(1023, 1101, 'SATRIA AJI NUGROHO', '23247949', '0067718204', '2006-11-24', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:13:35', '2026-01-07 19:13:35'),
(1024, 1102, 'SYAHRIL HASBI DWIJAYANTO', '23247986', '0086125067', '2008-08-05', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:13:36', '2026-01-07 19:13:36'),
(1025, 1103, 'WAHYU DWI PIRMANSYAH', '23248016', '0071179510', '2007-12-29', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:13:36', '2026-01-07 19:13:36'),
(1026, 1104, 'ADITYA DUTAMULYA', '23247635', '0083368206', '2008-03-25', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:13:37', '2026-01-07 19:13:37'),
(1027, 1105, 'AFFAN NUR EDI NUGROHO', '23247639', '0087169739', '2008-05-25', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:13:37', '2026-01-07 19:13:37'),
(1028, 1106, 'AGHSAL MAULANA', '23247642', '0081115366', '2008-01-10', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:13:38', '2026-01-07 19:13:38'),
(1029, 1107, 'AGIS MAULANA', '23248039', '0065913135', '2006-08-14', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:13:38', '2026-01-07 19:13:38'),
(1030, 1108, 'AHMAD DANU', '23247644', '0085591225', '2008-01-04', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:13:39', '2026-01-07 19:13:39'),
(1031, 1109, 'AHMAD FAIZAL', '23247645', '0071073524', '2007-06-28', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:13:39', '2026-01-07 19:13:39'),
(1032, 1110, 'AHMAD RIJAL MUTTAQIN', '23247648', '0081695266', '2008-05-08', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:13:40', '2026-01-07 19:13:40'),
(1033, 1111, 'AKBAR KHAFID HAKIM ALGHOZALI', '23247653', '0083433521', '2008-03-29', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:13:41', '2026-01-07 19:13:41'),
(1034, 1112, 'AKHMAD MAULANA BARIADI', '23248040', '0071804716', '2006-10-30', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:13:41', '2026-01-07 19:13:41'),
(1035, 1113, 'AKMAL ALFIAN', '23247655', '0077415244', '2007-09-20', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:13:41', '2026-01-07 19:13:41'),
(1036, 1114, 'ARDIYANTO', '23247681', '0087882778', '2008-03-02', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:13:42', '2026-01-07 19:13:42'),
(1037, 1115, 'Bayu Aulia Daniswara', '23247701', '0082264210', '2008-07-16', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:13:43', '2026-01-07 19:13:43'),
(1038, 1116, 'Bayu Laksana', '23247703', '0085733844', '2008-07-03', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:13:43', '2026-01-07 19:13:43'),
(1039, 1117, 'BOBY SAEFULMILLAH', '23247704', '0087504371', '2008-02-12', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:13:43', '2026-01-07 19:13:43'),
(1040, 1118, 'DANNY RAMADHAN', '23247721', '0076979778', '2007-10-09', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:13:44', '2026-01-07 19:13:44'),
(1041, 1119, 'DIKA AJI SAPUTRA', '23247733', '0079020333', '2007-03-02', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:13:44', '2026-01-07 19:13:44'),
(1042, 1120, 'Dika Bangun Prasetyo', '23247735', '0084872251', '2008-01-31', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:13:45', '2026-01-07 19:13:45'),
(1043, 1121, 'FAREL ADITYA RAMADHAN', '23247761', '0084550110', '2008-09-21', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:13:46', '2026-01-07 19:13:46'),
(1044, 1122, 'LATHIF MUBAROK', '23247828', '0085634344', '2008-05-07', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:13:46', '2026-01-07 19:13:46'),
(1045, 1123, 'MUHAMAD RAIHAN PRATAMA', '23247851', '0084686805', '2008-12-20', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:13:47', '2026-01-07 19:13:47'),
(1046, 1124, 'MUHRON HANAFI', '23247859', '0075774011', '2007-03-25', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:13:47', '2026-01-07 19:13:47'),
(1047, 1125, 'Rendi Budiyanto', '23247904', '0081819849', '2008-07-28', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:13:48', '2026-01-07 19:13:48'),
(1048, 1126, 'RIFANDI ADAM AHMADANI', '23247922', '0076966533', '2007-12-29', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:13:48', '2026-01-07 19:13:48'),
(1049, 1127, 'Rifki Adi Saputra', '23247923', '0084648555', '2008-12-16', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:13:48', '2026-01-07 19:13:48'),
(1050, 1128, 'RIZAL RIZKI MAULANA', '23247930', '0079409908', '2007-09-02', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:13:49', '2026-01-07 19:13:49'),
(1051, 1129, 'RIZKY ADITIYA', '23247932', '0079828430', '2007-09-03', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:13:49', '2026-01-07 19:13:49'),
(1052, 1130, 'Satria Cahya Gumilang', '23247951', '0073470780', '2007-11-27', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:13:50', '2026-01-07 19:13:50'),
(1053, 1131, 'SATRIA FEBRIAN', '23247952', '0083504780', '2008-02-11', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:13:51', '2026-01-07 19:13:51'),
(1054, 1132, 'TEGAR ALFIANO', '23247995', '0086681846', '2008-10-04', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:13:51', '2026-01-07 19:13:51'),
(1055, 1133, 'Tora Andre Wirawan', '23248003', '0085177817', '2008-10-15', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:13:52', '2026-01-07 19:13:52'),
(1056, 1134, 'WAHYU MUHAMAD NURHIDAYAT', '23248017', '0073596247', '2007-09-15', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:13:52', '2026-01-07 19:13:52'),
(1057, 1135, 'ALI HIDAYAH NURY', '23247663', '0079245392', '2007-10-01', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:14:53', '2026-01-07 19:14:53'),
(1058, 1136, 'ALVA ARIYANSAH', '23247666', '0084995025', '2008-01-13', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:14:53', '2026-01-07 19:14:53'),
(1059, 1137, 'ANANDA SAPUTRA', '23247671', '0077106546', '2007-11-25', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:14:54', '2026-01-07 19:14:54'),
(1060, 1138, 'ANDIKA PRATAMA', '23247672', '0081497788', '2008-03-31', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:14:54', '2026-01-07 19:14:54'),
(1061, 1139, 'Andika Rangga Pamungkas', '23247673', '0099146051', '2009-01-04', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:14:54', '2026-01-07 19:14:54'),
(1062, 1140, 'Arif Maulana', '23247684', '0071694531', '2007-03-25', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:14:55', '2026-01-07 19:14:55'),
(1063, 1141, 'CHANDRA ADI RAMZZANI', '23247709', '0074151005', '2007-09-18', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:14:56', '2026-01-07 19:14:56'),
(1064, 1142, 'Chandra Maulana', '23247710', '0079530649', '2007-09-29', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:14:56', '2026-01-07 19:14:56'),
(1065, 1143, 'FADHLAN AQILA LAJUARDHI', '23247751', '0062725702', '2006-04-11', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:14:57', '2026-01-07 19:14:57'),
(1066, 1144, 'FAHRI IRAWAN', '23247754', '0075385926', '2007-12-16', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:14:57', '2026-01-07 19:14:57'),
(1067, 1145, 'FASYA GALUH PAMUNGKAS', '23247764', '0083476791', '2008-04-24', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:14:57', '2026-01-07 19:14:57'),
(1068, 1146, 'Hariansyah', '23247783', '0074994700', '2007-10-16', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:14:58', '2026-01-07 19:14:58'),
(1069, 1147, 'Ihksan Aldy Irwansyah', '23247794', '0086172817', '2008-05-03', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:14:58', '2026-01-07 19:14:58'),
(1070, 1148, 'IMRON JULIANTO', '23247799', '0077286757', '2007-07-12', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:14:59', '2026-01-07 19:14:59'),
(1071, 1149, 'MADHAN SHABIRI AUFAR', '23247837', '0086909729', '2008-06-01', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:14:59', '2026-01-07 19:14:59'),
(1072, 1150, 'MAULANA VAEROUS AL FARABI', '23247841', '0081598654', '2008-03-16', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:15:00', '2026-01-07 19:15:00'),
(1073, 1151, 'MUHAMAD AMIN TOHAR', '23247845', '0086441827', '2008-04-21', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:15:00', '2026-01-07 19:15:00'),
(1074, 1152, 'MUHAMMAD BAYU ANWARI', '23247852', '0081301722', '2008-02-09', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:15:01', '2026-01-07 19:15:01'),
(1075, 1153, 'NOVAL IRMAN MUKTI', '23247874', '0081333439', '2007-11-12', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:15:01', '2026-01-07 19:15:01'),
(1076, 1154, 'RAFYYANSAH', '23247890', '0076439675', '2007-01-05', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:15:02', '2026-01-07 19:15:02'),
(1077, 1155, 'Rashultan Wicaksono Pamungkas', '23247899', '0073509905', '2007-09-11', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:15:02', '2026-01-07 19:15:02'),
(1078, 1156, 'REFANSYAH ALFANI', '23247902', '0088708701', '2008-07-10', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:15:03', '2026-01-07 19:15:03'),
(1079, 1157, 'RIZKY ZULFATIAN', '23247933', '0082350804', '2008-01-03', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:15:03', '2026-01-07 19:15:03'),
(1080, 1158, 'SAEFUL NUR AKBAR', '23247937', '0087600555', '2008-07-06', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:15:04', '2026-01-07 19:15:04'),
(1081, 1159, 'SEPRI ADI SAPUTRA', '23247956', '0099514485', '2009-05-28', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:15:04', '2026-01-07 19:15:04'),
(1082, 1160, 'SYAFIQ YADIKA NURFAKIH', '23247983', '0085869084', '2008-10-02', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:15:05', '2026-01-07 19:15:05'),
(1083, 1161, 'Syaiful Fitrian', '23247987', '0071292514', '2007-10-15', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:15:06', '2026-01-07 19:15:06'),
(1084, 1162, 'ZAHRAH APRILIANA PUTRI', '23248031', '0083140213', '2008-04-12', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:15:06', '2026-01-07 19:15:06'),
(1085, 1163, 'ZAKY HUMAEDI', '23248034', '0075932938', '2007-07-16', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:15:06', '2026-01-07 19:15:06'),
(1086, 1164, 'Zhidan Rizky Hartono', '23248036', '0084997071', '2008-07-02', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:15:07', '2026-01-07 19:15:07'),
(1087, 1165, 'ADAM ABI MULKHI FIRMAN HIDAYAT', '23247628', '0083247672', '2008-04-24', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:15:07', '2026-01-07 19:15:07'),
(1088, 1166, 'Ahmad Ikhsan Fauzi', '23247646', '0081311158', '2009-07-08', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:15:08', '2026-01-07 19:15:08'),
(1089, 1167, 'ALAN ERLANGGA', '23247657', '0081590552', '2008-06-05', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:15:08', '2026-01-07 19:15:08'),
(1090, 1168, 'ANA AMELIA', '23247668', '0081013386', '2008-01-20', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:15:09', '2026-01-07 19:15:09'),
(1091, 1169, 'ARIYA DANI SAPUTRA', '23247686', '0088164186', '2008-06-30', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:15:09', '2026-01-07 19:15:09'),
(1092, 1170, 'BAYU FIRMANSAH', '23247702', '0086018894', '2008-07-12', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:15:10', '2026-01-07 19:15:10'),
(1093, 1171, 'IBRAHIM MOVIC', '23247790', '0081933409', '2008-12-29', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:15:11', '2026-01-07 19:15:11'),
(1094, 1172, 'Irwanto', '23247805', '0067803043', '2006-07-28', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:15:11', '2026-01-07 19:15:11'),
(1095, 1173, 'khanafi', '23247826', '0064924612', '2006-05-10', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:15:11', '2026-01-07 19:15:11'),
(1096, 1174, 'Marvel Avrijal Mubarok', '23247839', '0086977610', '2008-04-26', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:15:12', '2026-01-07 19:15:12'),
(1097, 1175, 'NUR ANWAR', '23247876', '0071295735', '2007-09-08', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:15:13', '2026-01-07 19:15:13'),
(1098, 1176, 'RAIHAN AL FAUZI', '23247894', '0071588135', '2007-11-19', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:15:13', '2026-01-07 19:15:13'),
(1099, 1177, 'Rendi Windu Nugraha', '23247905', '0081172216', '2008-01-21', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:15:14', '2026-01-07 19:15:14'),
(1100, 1178, 'Revan Shavanda', '23247910', '0081054219', '2008-05-21', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:15:14', '2026-01-07 19:15:14'),
(1101, 1179, 'RIDHO PRASETYO', '23247916', '0066074616', '2006-08-14', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:15:14', '2026-01-07 19:15:14'),
(1102, 1180, 'Rifki Febrian', '23247924', '0089387010', '2008-04-28', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:15:15', '2026-01-07 19:15:15'),
(1103, 1181, 'RYAN ADRIANSYAH', '23247936', '0074223091', '2007-04-02', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:15:16', '2026-01-07 19:15:16'),
(1104, 1182, 'Samsul Ali Hidayat', '23247942', '0086440534', '2008-02-05', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:15:16', '2026-01-07 19:15:16'),
(1105, 1183, 'Yudistira Pamuji', '23248026', '0076265564', '2007-07-12', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:15:17', '2026-01-07 19:15:17'),
(1106, 1184, 'ZAHRAH FADILAH', '23248032', '0074254695', '2007-12-25', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:15:17', '2026-01-07 19:15:17'),
(1107, 1185, 'AFIK YAHYA UBAIDILAH', '23247640', '0069430869', '2007-05-18', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:15:18', '2026-01-07 19:15:18'),
(1108, 1186, 'ALDI ANGGORO', '23247658', '0097666138', '2009-05-05', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:15:18', '2026-01-07 19:15:18'),
(1109, 1187, 'ALIF ADI MAULANA SAPUTRA', '23247665', '0075423511', '2007-07-12', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:15:19', '2026-01-07 19:15:19'),
(1110, 1188, 'ANANDA PUTRA SYAHRUR RAYA', '23247670', '0088470243', '2008-10-02', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:15:19', '2026-01-07 19:15:19'),
(1111, 1189, 'ARZETI EGI APRILIANI', '23247687', '0086078885', '2008-04-28', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:15:19', '2026-01-07 19:15:19'),
(1112, 1190, 'ATTAHIA BILAL', '23247689', '0083719831', '2008-06-22', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:15:21', '2026-01-07 19:15:21'),
(1113, 1191, 'AZMI IHWANUL MAHFUD', '23247694', '0087218953', '2008-06-29', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:15:21', '2026-01-07 19:15:21'),
(1114, 1192, 'AZREL FIRMANSYAH', '23247696', '0082721845', '2008-06-18', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:15:21', '2026-01-07 19:15:21'),
(1115, 1193, 'CACA MUSTOPA', '23247706', '0077810671', '2007-05-22', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:15:22', '2026-01-07 19:15:22'),
(1116, 1194, 'CAHYO ARI SIGIT', '23247707', '0092091544', '2008-10-21', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:15:22', '2026-01-07 19:15:22'),
(1117, 1195, 'DANAR SETYO HASTORO', '23247718', '0085270724', '2008-08-31', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:15:23', '2026-01-07 19:15:23'),
(1118, 1196, 'Danu Adli Iyansyah', '23247722', '0087644456', '2008-09-16', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:15:23', '2026-01-07 19:15:23'),
(1119, 1197, 'DICKY RAMDANI', '23247731', '0073218867', '2007-09-14', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:15:24', '2026-01-07 19:15:24'),
(1120, 1198, 'EVAN SETIAWAN', '23247748', '0069037809', '2006-12-21', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:15:24', '2026-01-07 19:15:24'),
(1121, 1199, 'FA\'IQ ISNANDI', '23247758', '0084212743', '2008-02-24', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:15:25', '2026-01-07 19:15:25'),
(1122, 1200, 'FAAIZ RAMADHAN', '23247749', '0079863191', '2007-10-11', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:15:26', '2026-01-07 19:15:26'),
(1123, 1201, 'Fahkri Rizki Arsyah', '23247753', '0088020002', '2008-02-12', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:15:26', '2026-01-07 19:15:26'),
(1124, 1202, 'FAREL MUARIF', '23247762', '0075059808', '2007-11-27', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:15:27', '2026-01-07 19:15:27'),
(1125, 1203, 'Ihza Malzen', '23247795', '0078595231', '2007-06-04', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:15:27', '2026-01-07 19:15:27'),
(1126, 1204, 'IMAM ARIF NUGROHO', '23247797', '0086162885', '2008-02-29', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:15:27', '2026-01-07 19:15:27'),
(1127, 1205, 'IMAM WIDAYAH SAFUTRA', '23247798', '0071029443', '2007-12-22', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:15:28', '2026-01-07 19:15:28'),
(1128, 1206, 'IRGI AHMAD FAUZI', '23247804', '0082194765', '2008-05-30', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:15:28', '2026-01-07 19:15:28'),
(1129, 1207, 'ISMAIL SAPUTRA', '23247807', '0075729950', '2007-12-20', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:15:29', '2026-01-07 19:15:29'),
(1130, 1208, 'LUKMAN HAKIKI', '23247835', '0071769650', '2007-09-29', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:15:29', '2026-01-07 19:15:29'),
(1131, 1209, 'MAULANA ABDUL MALIK', '23247840', '0073766955', '2007-07-17', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:15:30', '2026-01-07 19:15:30'),
(1132, 1210, 'MIFTAHURRIZKI', '23247842', '0084337117', '2008-01-31', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:15:31', '2026-01-07 19:15:31'),
(1133, 1211, 'MUHAMAD JAMI', '23247850', '0068921076', '2006-11-15', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:15:31', '2026-01-07 19:15:31'),
(1134, 1212, 'NANDIKA FALEN MAULANA', '23247865', '0078750258', '2007-02-14', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:15:32', '2026-01-07 19:15:32'),
(1135, 1213, 'NAUFAL RA\'IF ROMANDANIS', '23247867', '0084946651', '2008-08-08', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:15:32', '2026-01-07 19:15:32'),
(1136, 1214, 'NIFTAH FARID', '23247871', '0074086777', '2007-12-22', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:15:32', '2026-01-07 19:15:32'),
(1137, 1215, 'REVAN ARDIYAN', '23247909', '0082751060', '2008-11-15', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:15:33', '2026-01-07 19:15:33'),
(1138, 1216, 'RIZKY SEPTIAN BAYU SAPUTRA', '23248044', '3085725731', '2008-09-04', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:15:33', '2026-01-07 19:15:33'),
(1139, 1217, 'TARI NOVITA SARI', '23247992', '0098751972', '2009-06-21', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:15:34', '2026-01-07 19:15:34'),
(1140, 1218, 'VICKY MAULANA', '23248011', '0081981503', '2008-08-13', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:15:34', '2026-01-07 19:15:34'),
(1141, 1219, 'WILI BREGAS RAHAYU', '23248020', '0078366486', '2007-10-17', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:15:35', '2026-01-07 19:15:35'),
(1142, 1220, 'YOGA PRAYOGA', '23248025', '0076442590', '2007-05-31', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:15:36', '2026-01-07 19:15:36'),
(1143, 1221, 'Adhnan Tridziianto', '23247630', '0085182706', '2008-03-11', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:16:21', '2026-01-07 19:16:21'),
(1144, 1222, 'Adi Tatmimul Husna', '23247632', '0084837713', '2008-10-06', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:16:22', '2026-01-07 19:16:22'),
(1145, 1223, 'ADITYA ARFI MAULANA', '23247634', '0084094797', '2008-07-13', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:16:22', '2026-01-07 19:16:22'),
(1146, 1224, 'AKMAL NURHAMID', '23247656', '0087997982', '2008-06-30', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:16:22', '2026-01-07 19:16:22'),
(1147, 1225, 'ANGGA DWI PRASETIO', '23247678', '0097961925', '2009-04-18', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:16:23', '2026-01-07 19:16:23'),
(1148, 1226, 'Arga Pratama', '23247682', '0087356238', '2008-06-22', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:16:24', '2026-01-07 19:16:24'),
(1149, 1227, 'DANUR ROHMAN', '23244052', '0076154203', '2007-08-21', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:16:24', '2026-01-07 19:16:24'),
(1150, 1228, 'EGI FIRMANSYAH', '23248041', '0085952299', '2008-02-01', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:16:25', '2026-01-07 19:16:25'),
(1151, 1229, 'Emiliah Rahmah', '23247746', '0086218535', '2008-02-20', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:16:25', '2026-01-07 19:16:25'),
(1152, 1230, 'FEBIYANSAH', '23247765', '0084464377', '2008-02-05', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:16:25', '2026-01-07 19:16:25'),
(1153, 1231, 'FIRMAN RIYADI', '23247772', '0074929159', '2007-11-06', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:16:26', '2026-01-07 19:16:26'),
(1154, 1232, 'FIRMANDA OKI ROMADHAN', '23247773', '0065703184', '2006-10-18', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:16:26', '2026-01-07 19:16:26'),
(1155, 1233, 'GANANG SAPUTRA', '23247776', '0081007561', '2007-07-28', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:16:27', '2026-01-07 19:16:27'),
(1156, 1234, 'Hadi Putra Firmansyah', '23247778', '0081349217', '2008-01-01', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:16:27', '2026-01-07 19:16:27'),
(1157, 1235, 'HANUM EKHA SAWITRI', '23247782', '0085949158', '2008-05-18', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:16:28', '2026-01-07 19:16:28'),
(1158, 1236, 'KELPIN', '23247821', '0088301819', '2008-05-08', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:16:29', '2026-01-07 19:16:29'),
(1159, 1237, 'Muhammad Farid Hidayat', '23247854', '0079655697', '2007-07-22', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:16:29', '2026-01-07 19:16:29'),
(1160, 1238, 'Parhan Afandi', '23247881', '0085323815', '2008-02-06', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:16:29', '2026-01-07 19:16:29'),
(1161, 1239, 'RAFLI HARDIANSYAH', '23247888', '0084339678', '2008-05-17', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:16:30', '2026-01-07 19:16:30'),
(1162, 1240, 'RAFLI WILDANU', '23247889', '0078486742', '2007-07-19', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:16:30', '2026-01-07 19:16:30'),
(1163, 1241, 'RAGIL PRIHATIN', '23247891', '0072246954', '2007-08-29', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:16:31', '2026-01-07 19:16:31'),
(1164, 1242, 'Raif Al Muhyi', '23247893', '0089438003', '2008-03-11', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:16:31', '2026-01-07 19:16:31'),
(1165, 1243, 'RANDI WAELAN GASELA', '23247897', '0076931493', '2007-06-01', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:16:32', '2026-01-07 19:16:32'),
(1166, 1244, 'REDIT JUWANTORO', '23247900', '0074843128', '2007-10-24', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:16:32', '2026-01-07 19:16:32'),
(1167, 1245, 'Restu Ilham Nurrizal', '23247906', '0085277424', '2008-06-16', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:16:33', '2026-01-07 19:16:33'),
(1168, 1246, 'RICO ROZAK', '23247915', '0079023382', '2007-04-03', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:16:34', '2026-01-07 19:16:34'),
(1169, 1247, 'RIDO AGUNG PANGESTU', '23247919', '0087228617', '2008-07-16', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:16:34', '2026-01-07 19:16:34'),
(1170, 1248, 'SAIFUL IKBAL PRADITA', '23247938', '0087516146', '2008-06-18', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:16:35', '2026-01-07 19:16:35'),
(1171, 1249, 'SAMSI AL GOZALI', '23247941', '0085913355', '2008-05-13', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:16:35', '2026-01-07 19:16:35'),
(1172, 1250, 'sigit triandaru', '23247962', '0074797932', '2007-02-08', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:16:35', '2026-01-07 19:16:35'),
(1173, 1251, 'SOFIA ARZETA', '23247974', '0076492586', '2007-08-02', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:16:36', '2026-01-07 19:16:36'),
(1174, 1252, 'Subarno Doni Seloso', '23247977', '0072993268', '2007-10-02', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:16:36', '2026-01-07 19:16:36'),
(1175, 1253, 'SURYA ANDIKA SAPUTRA', '23247981', '0075626851', '2007-09-26', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:16:37', '2026-01-07 19:16:37'),
(1176, 1254, 'SYAMSURI IKHSAN', '23247988', '0084731738', '2008-04-08', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:16:37', '2026-01-07 19:16:37'),
(1177, 1255, 'TEGAR AGUSTIAWAN', '23247994', '0073413607', '2007-05-06', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:16:38', '2026-01-07 19:16:38'),
(1178, 1256, 'TIO', '23248001', '0074405067', '2007-09-05', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:16:39', '2026-01-07 19:16:39'),
(1179, 1257, 'WIRANTO', '23248023', '0089350211', '2008-02-12', NULL, 'P', NULL, NULL, NULL, 0, '2026-01-07 19:16:39', '2026-01-07 19:16:39');

-- --------------------------------------------------------

--
-- Struktur dari tabel `staff`
--

CREATE TABLE `staff` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `jabatan` varchar(255) DEFAULT NULL,
  `jenis_kelamin` enum('L','P') DEFAULT NULL,
  `no_hp` varchar(255) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `bio` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `staff`
--

INSERT INTO `staff` (`id`, `user_id`, `nama`, `email`, `jabatan`, `jenis_kelamin`, `no_hp`, `tanggal_lahir`, `alamat`, `bio`, `created_at`, `updated_at`) VALUES
(1, 80, 'Tata Usaha Ojke', 'tatausaha@gmail.com', 'keuangan', 'P', '6281548769365', '1980-01-20', 'Desa Saja', 'Senantiasa berbahagia', NULL, '2026-01-02 23:46:31');

-- --------------------------------------------------------

--
-- Struktur dari tabel `status_notifikasi`
--

CREATE TABLE `status_notifikasi` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(255) NOT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tagihan`
--

CREATE TABLE `tagihan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `siswa_id` bigint(20) UNSIGNED NOT NULL,
  `nama_tagihan` varchar(255) NOT NULL,
  `jenis_tagihan_id` bigint(20) UNSIGNED NOT NULL,
  `jumlah` decimal(12,2) NOT NULL,
  `tgl_tagihan` date NOT NULL,
  `status` enum('belum lunas','lunas') NOT NULL DEFAULT 'belum lunas',
  `tahun_pelajaran_id` bigint(20) UNSIGNED NOT NULL,
  `semester_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tagihan`
--

INSERT INTO `tagihan` (`id`, `siswa_id`, `nama_tagihan`, `jenis_tagihan_id`, `jumlah`, `tgl_tagihan`, `status`, `tahun_pelajaran_id`, `semester_id`, `created_at`, `updated_at`) VALUES
(2, 24, 'Uang Gedung', 3, 900000.00, '2025-12-23', 'lunas', 6, 1, '2025-12-23 01:43:14', '2025-12-23 08:17:37'),
(3, 5, 'SPP Maret', 1, 175000.00, '2025-12-24', 'belum lunas', 6, 1, '2025-12-23 19:22:44', '2025-12-23 19:22:44'),
(5, 24, 'SPP Maret', 1, 175000.00, '2025-12-24', 'belum lunas', 6, 1, '2025-12-23 19:22:44', '2025-12-23 19:22:44'),
(6, 1, 'Ujian Sekolah', 3, 150000.00, '2025-12-24', 'belum lunas', 6, 1, '2025-12-23 19:38:15', '2025-12-23 19:38:15'),
(7, 8, 'Ujian Sekolah', 3, 150000.00, '2025-12-24', 'belum lunas', 6, 1, '2025-12-23 19:38:15', '2025-12-23 19:38:15'),
(8, 2, 'Ujian Sekolah', 3, 150000.00, '2025-12-24', 'belum lunas', 6, 1, '2025-12-23 19:38:15', '2025-12-23 19:38:15'),
(9, 4, 'Ujian Sekolah', 3, 150000.00, '2025-12-24', 'belum lunas', 6, 1, '2025-12-23 19:38:15', '2025-12-23 19:38:15'),
(11, 15, 'Ujian Sekolah', 3, 150000.00, '2025-12-24', 'belum lunas', 6, 1, '2025-12-23 19:38:15', '2025-12-23 19:38:15'),
(12, 17, 'Ujian Sekolah', 3, 150000.00, '2025-12-24', 'belum lunas', 6, 1, '2025-12-23 19:38:15', '2025-12-23 19:38:15'),
(13, 5, 'PKL', 3, 600000.00, '2025-12-24', 'belum lunas', 6, 1, '2025-12-23 19:39:06', '2025-12-23 19:39:06'),
(15, 24, 'PKL', 3, 600000.00, '2025-12-24', 'belum lunas', 6, 1, '2025-12-23 19:39:06', '2025-12-23 19:39:06'),
(16, 11, 'PKL', 3, 600000.00, '2025-12-24', 'belum lunas', 6, 1, '2025-12-23 19:39:06', '2025-12-23 19:39:06'),
(19, 16, 'PKL', 3, 600000.00, '2025-12-24', 'belum lunas', 6, 1, '2025-12-23 19:39:06', '2025-12-23 19:39:06'),
(20, 22, 'PKL', 3, 600000.00, '2025-12-24', 'belum lunas', 6, 1, '2025-12-23 19:39:06', '2025-12-23 19:39:06');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tahun_pelajaran`
--

CREATE TABLE `tahun_pelajaran` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tahun_pelajaran`
--

INSERT INTO `tahun_pelajaran` (`id`, `nama`, `is_active`, `created_at`, `updated_at`) VALUES
(6, '2026/2027', 1, '2025-11-29 23:56:24', '2025-12-25 00:03:46'),
(11, '2024/2025', 0, '2025-12-23 20:09:56', '2025-12-25 00:03:46');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tugas`
--

CREATE TABLE `tugas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `mengajar_id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(255) NOT NULL,
  `deskripsi` text DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `tipe` enum('individu','kelompok') NOT NULL DEFAULT 'individu',
  `deadline` datetime NOT NULL,
  `status` enum('draft','publish') NOT NULL DEFAULT 'draft',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `password_text` varchar(255) DEFAULT NULL,
  `role` varchar(255) NOT NULL DEFAULT 'siswa',
  `foto_profil` varchar(255) DEFAULT 'profile.png',
  `foto_unggulan` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `reset_password_token` varchar(255) DEFAULT NULL,
  `remember_token` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `username`, `nama`, `email`, `password`, `password_text`, `role`, `foto_profil`, `foto_unggulan`, `is_active`, `reset_password_token`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'newell.kirlin', 'Darwin Kuvalis', 'jlarson@example.org', '$2y$12$afY/dr5OaTUvgZWjFjnTVOfD/VA9ArVNhXM1L9uL/nfw.MyNzsT9m', '', 'admin', 'profile.png', '', 1, NULL, 'uOFH9nRnHvpkdjePezX0EJ3xln0Tvkqm0E2Kk8TR8zrRJZrb5bR4Ch5nQoGY', '2025-11-21 20:32:49', '2025-11-21 20:32:49'),
(2, 'afifsaja', 'Mr. Alek Kunze', 'afifsaja@gmail.com', '$2y$12$3C2v7WdtMS5EwuJpNe3OsezGNfg.VhLaPX6Bza/4b/QpDVEOG7lt6', 'akukeren', 'guru', 'foto-guru/w5DvIX1o5FxyuyINfJHxC9DWJ2g1JbBLLB7oSWxh.jpg', 'foto-unggulan/v4QtbPMQYvVy5Clyg26wK0sKH7qu5qQLsT3q4ScA.jpg', 1, NULL, '', '2025-11-21 20:32:50', '2026-01-06 06:35:22'),
(5, 'tbins', 'Coby Beahan', 'gvolkman@example.com', '$2y$12$4jy3JwleOVAog1fO/ynlYutWZxsuJ0XGs28oTPUTmyC/RrvVo7rxu', '', 'guru', 'profile.png', '', 1, NULL, '', '2025-11-21 20:32:51', '2026-01-06 06:35:22'),
(7, 'cornell38', 'Prof. Archibald Langosh DDS', 'mante.rodolfo@example.net', '$2y$12$FnP75t.7.UMqXzCBrv2N/uXhvkj8Q1U6.mv98T8Hjk9He6V5m64cu', '', 'siswa', 'profile.png', '', 1, NULL, '', '2025-11-21 20:32:52', '2026-01-06 02:50:17'),
(8, 'qkeeling', 'Prof. Mayra Heathcote PhD', 'retta98@example.com', '$2y$12$T9HkDiQblI9Nl.n5rR9X5eSuwvQpMXXUMFSyeeiVKwkaLk2.LN0Jm', '', 'siswa', 'profile.png', '', 1, NULL, '', '2025-11-21 20:32:52', '2026-01-06 02:50:17'),
(9, 'howard.reilly', 'Elmore Jones', 'homenick.catalina@example.com', '$2y$12$gDhoaxc2fdfY7.ad9x1UtOWuqAt2YdqXFohl3K4Pic/VKa1Xt.p52', '', 'siswa', 'profile.png', '', 1, NULL, '', '2025-11-21 20:32:52', '2026-01-06 02:50:17'),
(10, 'whayes', 'Mekhi Raynor', 'katherine54@example.org', '$2y$12$GPztPp45Yr1eIV0Cb1.2KOq2YkQkqfU12zAlHHvYaz4ZROmfqfAly', '', 'siswa', 'profile.png', '', 1, NULL, '', '2025-11-21 20:32:53', '2026-01-06 02:50:17'),
(11, 'hill.conrad', 'Kenneth Ward', 'baumbach.forrest@example.org', '$2y$12$COQus/vT3oBWcWTXXeqIX.0S7Y0X8sRDn8NU.fo6.kqdpSa7yow3y', '', 'siswa', 'profile.png', '', 1, NULL, '', '2025-11-21 20:32:53', '2026-01-06 02:50:17'),
(12, 'zgerhold', 'Candice Fay', 'vivien45@example.net', '$2y$12$IaKAk4j8/UhB4/L8OqjMK.yq8oDFUTdU5CfEEvMiQ7E3WMnoCN92C', '', 'siswa', 'profile.png', '', 1, NULL, '', '2025-11-21 20:32:54', '2026-01-06 02:50:17'),
(14, 'chester06', 'Rosalind Kertzmann Sr.', 'jamie.senger@example.net', '$2y$12$VVsPDyKRkISci2jCyFnOx.u6Co36XdDcbxUV8aTYj6nMVmIPIlVAa', '', 'siswa', 'profile.png', '', 1, NULL, '', '2025-11-21 20:32:54', '2026-01-06 02:50:17'),
(15, 'sven73', 'Kip Willms', 'renee.mcglynn@example.com', '$2y$12$rW72pzXNqRbQKlPSURzUaedhIt1.myWJBxgHcmZ1j/1JmD.nYYbse', '', 'siswa', 'profile.png', '', 1, NULL, '', '2025-11-21 20:32:55', '2026-01-06 02:50:17'),
(16, 'flakin', 'Adrien Beier', 'albert.mueller@example.net', '$2y$12$RbUIBa1LCP1Y6WN6Rkw9desBfDb0hIg8CmSDyE4PYTU9XD7C1TgOy', '', 'siswa', 'profile.png', '', 1, NULL, '', '2025-11-21 20:32:55', '2026-01-06 02:50:17'),
(17, 'mwill', 'Darien Emard I', 'micaela14@example.org', '$2y$12$uTOcVPvve1Srp/uxpdFY1.lBhuu9Z/2f3fZCO5.Y26W..mZhQF8Xm', '', 'siswa', 'profile.png', '', 1, NULL, '', '2025-11-21 20:32:56', '2026-01-06 02:50:17'),
(19, 'torphy.verda', 'Dr. Davin Bechtelar', 'drunte@example.org', '$2y$12$mQrM4LVhpghYTfZOQCbvL.EP8hS42/CxBqaIhs.gNHyhzXrYKWyIi', '', 'siswa', 'profile.png', '', 1, NULL, '', '2025-11-21 20:32:56', '2026-01-06 02:50:17'),
(21, 'collins.salma', 'Geovany Lehner', 'iwolff@example.net', '$2y$12$hWE2tdo.SfxPws4c7X/k1eO89/.NTjviw5RvaU6YYT1WzzMVr/QH.', '', 'siswa', 'profile.png', '', 1, NULL, '', '2025-11-21 20:32:57', '2026-01-06 02:50:17'),
(22, 'emery10', 'Jermaine Huels', 'monty78@example.net', '$2y$12$KEOPnlUq6hw0S1znbZr5p.4hhskZ7Jyom.lXn/XZhsLwEKM3qRASK', '', 'siswa', 'profile.png', '', 1, NULL, '', '2025-11-21 20:32:57', '2026-01-06 02:50:17'),
(23, 'schoen.brock', 'Dr. Sienna Jast', 'fay.dulce@example.com', '$2y$12$XGS/nZYMukFdfycnAzJfCudCOsriHamIURfQMika89FKY.gxn5ZUu', '', 'siswa', 'profile.png', '', 1, NULL, '', '2025-11-21 20:32:58', '2026-01-06 02:50:17'),
(24, 'klocko.laurence', 'Emiliano Blanda', 'fkuphal@example.com', '$2y$12$sfIEZNBcMXndymDG7tdfGOPg8PFDCtuZiLAwXHray.SHoEWJPFEiK', '', 'siswa', 'profile.png', '', 1, NULL, '', '2025-11-21 20:32:58', '2026-01-06 02:50:17'),
(25, 'lebsack.fiona', 'Mafalda Gulgowski', 'ernestina46@example.com', '$2y$12$0/SYoUEOJQRFrFODpPq4SendP22npP1bdsdyn486XmGpv1Ugk01wO', '', 'siswa', 'profile.png', '', 1, NULL, '', '2025-11-21 20:32:59', '2026-01-06 02:50:17'),
(26, 'payton73', 'Darion Ondricka', 'montana.jacobi@example.org', '$2y$12$xoIRowulJykW/I4rkvxFAeJu/j761zvl.G/wzBo8R8vnfFi98M5JK', '', 'siswa', 'profile.png', '', 1, NULL, '', '2025-11-21 20:32:59', '2026-01-06 02:50:17'),
(27, 'vmckenzie', 'Orville Larson Sr.', 'nolan.eunice@example.net', '$2y$12$EhpZ4gB3jXpRokJnlil8D.Y9xGR/6xK0JVAm6OcNru1uGRzD/lzZ2', '', 'admin', 'profile.png', '', 1, NULL, '', '2025-11-21 20:33:49', '2025-11-21 20:33:49'),
(30, 'dhoppe', 'Kayla Jacobs', 'akuhlman@example.org', '$2y$12$dNgbpyRPzAHqfjbF1iWxTeZbXiFZ5Um4zyhO/fZmgerozKJTP3w2C', '', 'guru', 'profile.png', '', 1, NULL, '', '2025-11-21 20:33:51', '2026-01-06 06:35:22'),
(31, 'lauer', 'Wanda Simonis I', 'sarai.walter@example.com', '$2y$12$CxKF4XdSS5zzKnT6/6R11O.ewVKYvg1w0okbYkZAOu3XTfQoPK6xq', '', 'guru', 'profile.png', '', 1, NULL, '', '2025-11-21 20:33:51', '2026-01-06 06:35:22'),
(32, 'albertha.kerluke', 'Dr. Ariane Bosco Jr.', 'xwintheiser@example.org', '$2y$12$lwPHBrWVTrFLz9h1dA911uC/oAeCP6sfYYY.4O3qJ4vJUCnPKvZIi', '', 'guru', 'profile.png', '', 1, NULL, '', '2025-11-21 20:33:51', '2026-01-06 06:35:22'),
(33, 'zdibbert', 'Dovie Lynch', 'plarkin@example.com', '$2y$12$HL1G06jWvQSzuyLuhK0ry.qkRRD8HHwUvd5CKakNxZzpE0uRsApTu', '', 'siswa', 'profile.png', '', 1, NULL, '', '2025-11-21 20:33:52', '2026-01-06 02:50:17'),
(34, 'delphia46', 'Elton Bayer Jr.', 'judy72@example.net', '$2y$12$r7B2imtYbVmx4XJkOdludOFjOyxEJ4ectiMUQJRHAGWFdkoENwwPK', '', 'siswa', 'profile.png', '', 1, NULL, '', '2025-11-21 20:33:52', '2026-01-06 02:50:17'),
(35, 'damore.lucile', 'Prof. Ollie Bartell', 'gottlieb.letha@example.net', '$2y$12$Cm.wAX9ycp/Fl.70DnsTF.//mof5SKS.qAEqof2Klb2KXtyTTyU96', '', 'siswa', 'profile.png', '', 1, NULL, '', '2025-11-21 20:33:53', '2026-01-06 02:50:17'),
(36, 'nlubowitz', 'Abdiel Daniel', 'terence.luettgen@example.net', '$2y$12$7KIlBLLuOxkNdVthaBI2WeSgqjOTGFUvStV1.vreq8OcMm4P/Bt6G', '', 'siswa', 'profile.png', '', 1, NULL, '', '2025-11-21 20:33:54', '2026-01-06 02:50:17'),
(37, 'dare.hugh', 'Dr. Amely Kuphal', 'jeanette.quitzon@example.net', '$2y$12$D8LyZ0GOKQkRhXcUK77c2.trk941X/tQiP7if2I4//WjjxA4GwUz6', '', 'siswa', 'profile.png', '', 1, NULL, '', '2025-11-21 20:33:54', '2026-01-06 02:50:17'),
(38, 'luna.becker', 'Tyra Purdy', 'buford.cummerata@example.net', '$2y$12$EqiEskHPelh7W8dncuOc/epzQKL/gUyX7yptGLpHH0ukPSggbUxjC', '', 'siswa', 'profile.png', '', 1, NULL, '', '2025-11-21 20:33:54', '2026-01-06 02:50:17'),
(40, 'qturcotte', 'Nyah Spencer III', 'frieda92@example.org', '$2y$12$Vh9jJzrHBchfKZ5RFljK7ecSwbXdhd0QtcMb3NEzm/uvYnfYvcxJC', '', 'siswa', 'profile.png', '', 1, NULL, '', '2025-11-21 20:33:55', '2026-01-06 02:50:17'),
(41, 'angie43', 'Dr. Werner Jones I', 'raven65@example.org', '$2y$12$feakZWb2n4AdX.sDspNfZO/lmPT7SBCigqOdIvDTg1ZxzlUJ5ze2i', '', 'siswa', 'profile.png', '', 1, NULL, '', '2025-11-21 20:33:55', '2026-01-06 02:50:17'),
(42, 'bcarroll', 'Dr. Reginald Parker', 'pat79@example.com', '$2y$12$AEZncPOg7QtvQzJUx02PsOGRO9MS6yaXJlXcIuKZrunVjkG/dwjdW', '', 'siswa', 'profile.png', '', 1, NULL, '', '2025-11-21 20:33:56', '2026-01-06 02:50:17'),
(43, 'lswaniawski', 'Elfrieda Reilly', 'wkreiger@example.org', '$2y$12$pqFmyNOZiuexnmadTLA0JeaVRY0hgi6zlUuJosD.ehC7YX.ZSod96', '', 'siswa', 'profile.png', '', 1, NULL, '', '2025-11-21 20:33:56', '2026-01-06 02:50:17'),
(44, 'amina.tromp', 'Kaley Bailey', 'zkassulke@example.net', '$2y$12$1j2cvPQUqqgLM8ACBIPw8emgGXFdezFIj9zVVluefjsHWoSEEuc7m', '', 'siswa', 'profile.png', '', 1, NULL, '', '2025-11-21 20:33:56', '2026-01-06 02:50:17'),
(45, 'trace08', 'Kiana Mertz', 'gottlieb.cecil@example.net', '$2y$12$ApmQVvLp12BB.evVwRQWqO8lroaIi8WP/jF44ZlBXKvpSSNnPSQ22', '', 'siswa', 'profile.png', '', 1, NULL, '', '2025-11-21 20:33:57', '2026-01-06 02:50:17'),
(46, 'nya68', 'Tierra Nicolas', 'gdooley@example.org', '$2y$12$xxkZJCphK0AT4VslYBh8sucrvZz9q5XCYEQwNWjal8VP3BZ7rNnxW', '', 'siswa', 'profile.png', '', 1, NULL, '', '2025-11-21 20:33:57', '2026-01-06 02:50:17'),
(47, 'xskiles', 'Janis Hermiston', 'christiansen.everett@example.com', '$2y$12$Lruzo99oM7CDOu.AXTIBTujUC41MGWUwKcDwKRV2x25TRRwT6cq0i', '', 'siswa', 'profile.png', '', 1, NULL, '', '2025-11-21 20:33:57', '2026-01-06 02:50:17'),
(48, 'hsanford', 'Ottilie Koch', 'jamison.mann@example.net', '$2y$12$NahZXz9.Op2Rauy3ytiMu.75ZQwsCOhbo0U2Qg6GhTMe8vsdl1lCq', '', 'siswa', 'profile.png', '', 1, NULL, '', '2025-11-21 20:33:58', '2026-01-06 02:50:17'),
(49, 'marley40', 'Mrs. Dayana Johnson', 'xhyatt@example.net', '$2y$12$/xtiiHbvQaKzN5khaYcwMeXr9sJLLz0IALwWI7ZPyNamhGTLCmV1i', '', 'siswa', 'profile.png', '', 1, NULL, '', '2025-11-21 20:33:58', '2026-01-06 02:50:17'),
(50, 'stark.marlen', 'Mallory Miller', 'arlene68@example.org', '$2y$12$ysRePbTXfsab2sIs3srkD.Yxnai2pWvjXFvKWIEp/7p52Lh.f6leq', '', 'siswa', 'profile.png', '', 1, NULL, '', '2025-11-21 20:33:58', '2026-01-06 02:50:17'),
(51, 'faustino36', 'Efren Hansen', 'koch.mathias@example.com', '$2y$12$F.BRW3JT2totzhC99A04guIQ1UTvJvNhtuwSlufH2FOZjQNwMWTN.', '', 'siswa', 'profile.png', '', 1, NULL, '', '2025-11-21 20:33:59', '2026-01-06 02:50:17'),
(52, 'sarai.corkery', 'Mr. Philip Gleichner Jr.', 'elisabeth85@example.org', '$2y$12$iWqWA0Q.XSYcjgT0sAHb4eHqkh.zCavbXec0V9tEwpt3luQ73av5m', '', 'siswa', 'profile.png', '', 1, NULL, '', '2025-11-21 20:33:59', '2026-01-06 02:50:17'),
(53, 'liam59', 'Dr. Eric Bradtke I', 'cjaskolski@example.org', '$2y$12$aJ/TL6Ot5Hy0Q/pIVc3gl.qXa2xoechOK/0wOvpHtOc8tND6D.1.6', '', 'admin', 'profile.png', '', 1, NULL, '', '2025-11-21 20:36:26', '2025-11-21 20:36:26'),
(55, 'eruecker', 'Lukas Douglas', 'pouros.santa@example.org', '$2y$12$O6HD5mymFzjrOaOrv7Y0p.d4q39Fljb60cvpKGNL.KkkczPxS/o3K', '', 'guru', 'profile.png', '', 1, NULL, '', '2025-11-21 20:36:27', '2026-01-06 06:35:22'),
(56, 'myrna.gislason', 'Landen Hegmann', 'reilly.wehner@example.org', '$2y$12$skWxdHMKdQZbQNettPI85O9jBvB.yvVJSVoM87db6F52VyoXNS2sC', '', 'guru', 'profile.png', '', 1, NULL, '', '2025-11-21 20:36:28', '2026-01-06 06:35:22'),
(57, 'schamberger.celestino', 'Greg Crist', 'annalise.stokes@example.net', '$2y$12$MKvDSJxvB/KnacVuxKeOruAfG8ehV8g1HivEkWD.NgEDWYb4iNdj.', '', 'guru', 'profile.png', '', 1, NULL, '', '2025-11-21 20:36:29', '2026-01-06 06:35:22'),
(58, 'jblanda', 'Prof. Elinor Hudson', 'ucarroll@example.org', '$2y$12$KAZEIQrJAhnhKF.M/GE.4eydZmkXMHGreOav5rYW/13IKRxrEFQYm', '', 'guru', 'profile.png', '', 1, NULL, '', '2025-11-21 20:36:29', '2026-01-06 06:35:22'),
(59, 'stanton02', 'Jeramie Koch II', 'jaydon22@example.org', '$2y$12$tVG8x66TNiW.u9GKKxV1vuXKacGZVkVaFIluE3VEb.xECXPlLuoKi', '', 'siswa', 'profile.png', '', 1, NULL, '', '2025-11-21 20:36:30', '2026-01-06 02:50:17'),
(60, 'eloy44', 'Ahmed Tromp', 'pgreenfelder@example.org', '$2y$12$8/hSgb3V472BX414/rHDzOZQCVCHC4zgBmfyVdHDEYAIxcyKujWCC', '', 'siswa', 'profile.png', '', 1, NULL, '', '2025-11-21 20:36:31', '2026-01-06 02:50:17'),
(61, 'ed62', 'Dr. Heather Pollich', 'gottlieb.elvis@example.com', '$2y$12$EBS89H9QugposHmZyZ4FauBoZdw2TaYQXh9yjHHcwMRO6Nhid51fq', '', 'siswa', 'profile.png', '', 1, NULL, '', '2025-11-21 20:36:32', '2026-01-06 02:50:17'),
(62, 'norris68', 'Prof. Richard Renner Sr.', 'koelpin.henriette@example.com', '$2y$12$kcbOpnNmuIgRBLygR9Wd1OKk9XgYXOzejpE/RxqX05CmO9Y6bmZ4W', '', 'siswa', 'profile.png', '', 1, NULL, '', '2025-11-21 20:36:32', '2026-01-06 02:50:17'),
(63, 'brekke.vida', 'Zena Leuschke', 'santos24@example.com', '$2y$12$jJWg6OIHr5ZskLxHMByQc.8Q15XwZDo6WmXg006oj7ot1YC4JcV2S', '', 'siswa', 'profile.png', '', 1, NULL, '', '2025-11-21 20:36:33', '2026-01-06 02:50:17'),
(64, 'glemke', 'Hermina Jakubowski DVM', 'nboyer@example.com', '$2y$12$mNWXAv5ZepjWZSdo7Ok56uDP4jCIEJYpNvwL2cr0htYMlxPeyW5cy', '', 'siswa', 'profile.png', '', 1, NULL, '', '2025-11-21 20:36:33', '2026-01-06 02:50:17'),
(65, 'bernier.timothy', 'Audra Abbott III', 'pearl50@example.org', '$2y$12$DTgfDIIziluwfoU3zT4dXORYTl9Fs8x7R7jefnJLq1VUVo8g2jtIe', '', 'siswa', 'profile.png', '', 1, NULL, '', '2025-11-21 20:36:34', '2026-01-06 02:50:17'),
(66, 'russel41', 'Orland Leuschke Jr.', 'shanahan.oma@example.org', '$2y$12$HehONZHX/fHllwuYdHCrVuJYvEo88IDCbSHVcSMT2OeI5QRng9FVG', '', 'siswa', 'profile.png', '', 1, NULL, '', '2025-11-21 20:36:35', '2026-01-06 02:50:17'),
(67, 'craig95', 'Kitty Schultz', 'davin.heathcote@example.com', '$2y$12$PeBJRWNS0rTdwhhoCZUgH..XoMnCreNTcavHqtBjlc0opCFUkEEhO', '', 'siswa', 'profile.png', '', 1, NULL, '', '2025-11-21 20:36:35', '2026-01-06 02:50:17'),
(68, 'schroeder.dock', 'Robert Dach', 'odessa55@example.org', '$2y$12$W2PcYnXBWk9.daFuV8Fnru/6tyuf7JyXBaLUabwW3/Gofqs8EJfzq', '', 'siswa', 'profile.png', '', 1, NULL, '', '2025-11-21 20:36:36', '2026-01-06 02:50:17'),
(69, 'ondricka.van', 'Tressie Wisoky', 'ijaskolski@example.com', '$2y$12$sJOAfKQ9WfYC2/jrT1.SF.tR7YS8Boz0yFw1oQDPOqLafJAUvurGO', '', 'siswa', 'profile.png', '', 1, NULL, '', '2025-11-21 20:36:37', '2026-01-06 02:50:17'),
(70, 'shawna05', 'Elmer Fadel', 'marquardt.rosalind@example.org', '$2y$12$yIW5/351tTkPlYdMPaVm2.d/TE8Xvrr4QUHbny5CAk5dDQ7xyO3yK', '', 'siswa', 'profile.png', '', 1, NULL, '', '2025-11-21 20:36:37', '2026-01-06 02:50:17'),
(71, 'pierre29', 'Stuart Parker', 'xshanahan@example.net', '$2y$12$VvYAFbfGUVCmAKKiR9DDIeAbx5QGSW.qF5WpWztzdPd9jjQ6jWq9G', '', 'siswa', 'profile.png', '', 1, NULL, '', '2025-11-21 20:36:38', '2026-01-06 02:50:17'),
(72, 'billy11', 'Mabelle Sauer', 'bo.spinka@example.org', '$2y$12$Ay7mTwG3.LpFIA2HISILxuihPKQw1XZ7NAfRlJTts2Ghx3brevf1S', '', 'siswa', 'profile.png', '', 1, NULL, '', '2025-11-21 20:36:38', '2026-01-06 02:50:17'),
(73, 'carson.brakus', 'Mario Marks V', 'kaya.harber@example.net', '$2y$12$JmyHAqWCXeugITaM3ChbG.jQVOa7e2o/2SA2ZFEUd/sTWZ130A4qe', '', 'siswa', 'profile.png', '', 1, NULL, '', '2025-11-21 20:36:39', '2026-01-06 02:50:17'),
(74, 'erica18', 'Rowland Schulist DDS', 'stehr.monica@example.net', '$2y$12$WewoV8urzYTrop25DCTFN.D8nf/KVTu16wKnSSF6pRioHLTFM409W', '', 'siswa', 'profile.png', '', 1, NULL, '', '2025-11-21 20:36:39', '2026-01-06 02:50:17'),
(76, 'reinger.gussie', 'Zora Russel', 'oconner.thomas@example.org', '$2y$12$/x00ko2mw8o/PxhofGr6Ku25cfa6NAIORzjiyCSm/Zt5VI2bqAC.y', '', 'siswa', 'profile.png', '', 1, NULL, '', '2025-11-21 20:36:40', '2026-01-06 02:50:17'),
(78, 'tillman.harvey', 'Prof. Alva Ryan', 'haley.marshall@example.com', '$2y$12$6qlZ5PGVseM/ZfXJYrhua.3XOPPu3PUnXG40ZRePw9TW4lvCeoL.G', '', 'siswa', 'profile.png', '', 1, NULL, '', '2025-11-21 20:36:42', '2026-01-06 02:50:17'),
(79, 'okesaja', 'kokokoko', 'okesaja@example.org', '$2y$12$afY/dr5OaTUvgZWjFjnTVOfD/VA9ArVNhXM1L9uL/nfw.MyNzsT9m', '', 'admin', 'profile.png', '', 1, NULL, '', '2025-11-21 20:32:49', '2025-11-21 20:32:49'),
(80, 'tatausaha', 'Tata Usaha', 'tatausaha@gmail.com', '$2y$12$r3n7UeCtEtdEQKnBfzoEh.nOV1.OFP9n8nfDXM7XaCuhBbZQ9yO7m', 'tatausaha1', 'staff', 'foto-staff/QfNLqJL5VOaYr9IvFJA4yAxGCPyglI6VnuxVft0k.jpg', 'foto-unggulan/d9P8XmbfEZeqkpJPpAjpFDbJY7i5eKc37x6tPhqE.jpg', 1, NULL, 'qcG9L1RiMYKV66ZXEryYXOBXL7kmcx4cONzjFv0xwiQL8jcdfqpTNiZBTwgd', '2025-12-22 12:52:25', '2026-01-06 06:42:15'),
(83, '25268501', 'AKQILAH PANGESTU', '25268501@sekolah.test', '$2y$12$Y0th1luPnocxNnnKceKUHOsI6KhxO//ch.rN9mzScd/D/4vRqYI5q', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 19:16:25', '2026-01-06 02:50:17'),
(84, '25268524', 'Alexa Gustiana Ramadhani', '25268524@sekolah.test', '$2y$12$2ZfjFUd4Bp.aeELxZEf61OYntHNvDke/v40XWXuRCJiPN51Ad.uSW', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 19:16:25', '2026-01-06 02:50:17'),
(85, '25268529', 'ALIVAH RIZQI BAROKAH', '25268529@sekolah.test', '$2y$12$D0RxTHFwB8R0tRHvPUQHUuxy9SosIOE7H8kXlsC162VaCOSZ.Is/S', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 19:16:26', '2026-01-06 02:50:17'),
(86, '25268559', 'AZ ZAHRA FAMELA ALKIRANA PUTRI', '25268559@sekolah.test', '$2y$12$pGymXSqiVVhsPh5YzWHaxOpVDgQcO8OcQOdhywhQexOr5MQGjdXQa', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 19:16:26', '2026-01-06 02:50:17'),
(87, '25268576', 'DELYNA RAMADHANI', '25268576@sekolah.test', '$2y$12$2d2I8amTM4S26crAdikgwuIP4jJmf1UflRJHj4vLD7MAhIY4AmxcS', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 19:16:26', '2026-01-06 02:50:17'),
(88, '25268617', 'FIORENZA AZALIA SHAHIA', '25268617@sekolah.test', '$2y$12$7DDKAXt8zx7Q65ryVI6XFerQ9wuSdXedP3yf9YqlLEkqu9gkl3xjq', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 19:16:27', '2026-01-06 02:50:17'),
(89, '25268639', 'IXZEL KHABILNA PUTRI', '25268639@sekolah.test', '$2y$12$mDF73yZ4SkwSlsvhzqzOvOrvYZownE36C1p4u8JjeC5MR9.18SBtG', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 19:16:27', '2026-01-06 02:50:17'),
(90, '25268640', 'Jenita Lidia Saputri', '25268640@sekolah.test', '$2y$12$44cbnkjbjjgME2sIiZeCB.nfdlzdeFkJgULJnPQ4IdSn4CZg3lALO', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 19:16:28', '2026-01-06 02:50:17'),
(91, '25268659', 'Liyal Aristiani', '25268659@sekolah.test', '$2y$12$3MWu2DzHvXGQQFzmDu1Fl.3WOTLE/rb07k/pJ20BWcBuo99/7Zd0G', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 19:16:28', '2026-01-06 02:50:17'),
(92, '25268849', 'Miftah Nurjanah', '25268849@sekolah.test', '$2y$12$aoxcFs8lwBsf.7oe7JwbG.PyKs3kZxf5FwAfQ0L3CmKiO4iaaJ7ii', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 19:16:29', '2026-01-06 02:50:17'),
(93, '25268703', 'Nadira Pangelista', '25268703@sekolah.test', '$2y$12$Rz8cqJ0szod0wuSvMnbbTe1TAokhf0fUTjbW8qUqykdMMCZ7NzNOG', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 19:16:29', '2026-01-06 02:50:17'),
(94, '25268704', 'NAGITA APRILIA', '25268704@sekolah.test', '$2y$12$96AQV0Fkyusrg8sT.QE7TeUUPKWvHZtM2BfjFsJ5STZUFSYtk3SZe', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 19:16:30', '2026-01-06 02:50:17'),
(95, '25268712', 'NAURA RAHMA DINA AL WAHDANI', '25268712@sekolah.test', '$2y$12$u923LiRijluzTb2Qpi7k8.kkQZj4rBb/GgeVfTlGguBBaLPagEN/u', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 19:16:30', '2026-01-06 02:50:17'),
(96, '25268716', 'NIA RAMADHANI', '25268716@sekolah.test', '$2y$12$EZZwR5auR4J0tM9K.m.Mk.9YdWVdn0kZESYMNgzyyOTc1OocmuqBO', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 19:16:31', '2026-01-06 02:50:17'),
(97, '25268782', 'ROSSY YULIA SARI', '25268782@sekolah.test', '$2y$12$SO6WBdHhjbbH86gFlwG/qu58vIPcELgchzPY5y.PHEwH8xE4zx3rS', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 19:16:31', '2026-01-06 02:50:17'),
(98, '25268786', 'SAHRINI', '25268786@sekolah.test', '$2y$12$OsyGjZHFT56demLeckHWSepDs2lm2NZnfeOfdgG/HbNslduQN1WKu', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 19:16:32', '2026-01-06 02:50:17'),
(99, '25268788', 'SALFA SINAR SAPUTRI', '25268788@sekolah.test', '$2y$12$sOp/wd3HZRaXytpg/q8YnufScuL23VOCNEQoM4Ncc0CO.ezDlQ3rS', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 19:16:32', '2026-01-06 02:50:17'),
(100, '25268795', 'SEVI VIDIANINGSIH', '25268795@sekolah.test', '$2y$12$FHGaK1hSmnzTghFHZBQUxetuYAIMhRJRI3EbcH4GBrWnt/kuLsMyS', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 19:16:32', '2026-01-06 02:50:17'),
(101, '25268796', 'SHANY AZIFFA FIRRELLI EQUILLA TAMI', '25268796@sekolah.test', '$2y$12$G4RtOSH1IkBfggALHNiAtOs5ITW7IiNiSWL9ytVnCm9o5o0Rzw582', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 19:16:32', '2026-01-06 02:50:17'),
(102, '25268797', 'Shieva Putri Lestari', '25268797@sekolah.test', '$2y$12$wqpWmwoC7I2Xk2xOIikG1.BqdjAFvkrbTA3oHh6TA5HJ9tuYXJ75y', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 19:16:33', '2026-01-06 02:50:17'),
(103, '25268798', 'Sifa Tri Lestari', '25268798@sekolah.test', '$2y$12$brMrxP1oudS7Cehis66LsObcpwZ5bS2pxEMj0oq34Kb.HDitiDg8S', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 19:16:34', '2026-01-06 02:50:17'),
(104, '25268801', 'SITA DWI MU\'RIFFAH', '25268801@sekolah.test', '$2y$12$r.6e1irpR.ojR0Y5AF/kNegPR/1ADRKMfbCH6BnmEQ2TIs5ONIBxe', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 19:16:34', '2026-01-06 02:50:17'),
(105, '25268815', 'TANSA DELISA', '25268815@sekolah.test', '$2y$12$.McZ5KJd855BfDieC1POzO3iIVs12ruD7Fb7Cem/uKJueKQl.lqjK', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 19:16:35', '2026-01-06 02:50:17'),
(106, '25268821', 'Tiara Nofiana', '25268821@sekolah.test', '$2y$12$Px2x.dtYG0rbPBUj35j.OeD6miYkcRbPQgNAfo8.Kj00D7iPA3kc6', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 19:16:35', '2026-01-06 02:50:17'),
(107, '25268824', 'Triyana Selfiani', '25268824@sekolah.test', '$2y$12$vXF0ixbZFRZwR8MJvMJc6.ObRNIeHvlQqg4yzXZVP4oYHpVnlnnZK', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 19:16:36', '2026-01-06 02:50:17'),
(108, '25268829', 'VITA NURAENI', '25268829@sekolah.test', '$2y$12$GUewKSUMAFu.Pk2VR2A1Ye510HSuDt6DZQXuScXpnl/hISAqvMA2O', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 19:16:36', '2026-01-06 02:50:17'),
(109, '25268845', 'ZASQIA RAHYANITA', '25268845@sekolah.test', '$2y$12$UjA4RM7CmzH92VvpH2xiHeA6.AOJNSoBwbDPDP40dbjyHTsxwndFC', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 19:16:36', '2026-01-06 02:50:17'),
(110, '25268530', 'ALLENA WIDAYANTI', '25268530@sekolah.test', '$2y$12$fqEw6lq51HNkKXT/oy/hleRoI5XJfX8Thx/NxUOU/qOTn.8V0iAzu', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 19:16:36', '2026-01-06 02:50:17'),
(111, '25268540', 'ANE AGUSTINA', '25268540@sekolah.test', '$2y$12$NQn/2B1xfcCcgB3y9btV2uZ6n8o6vTnNJmCt8s2wCYI3rRHfH6yvS', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 19:16:37', '2026-01-06 02:50:17'),
(112, '25268541', 'ANETA LIDYA INDAH WARDHANA', '25268541@sekolah.test', '$2y$12$NnyUPWhcy2qiLPR46g8M.uU.lCInxQguDRsxqEEjn9mmeVV7Dr6g6', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 19:16:37', '2026-01-06 02:50:17'),
(113, '25268557', 'AZLINA SANDRA', '25268557@sekolah.test', '$2y$12$b26OkaGbu30h9cwTTKEMVuSbFqTfUc/mDqStixnRSeKrh6dwnA5Ja', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 19:16:38', '2026-01-06 02:50:17'),
(114, '25268565', 'Bilqis Ghefira Shefa', '25268565@sekolah.test', '$2y$12$nP.9/Ngb2h.7sIINKL72heo9IF72qcjJaLHaLV8A6XETpp.eJa.Ce', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 19:16:38', '2026-01-06 02:50:17'),
(115, '25268570', 'Carolina Firgianti', '25268570@sekolah.test', '$2y$12$T.mY7EW2p6.sjGBj3VVNfej1R9jsa9O8m6zzQzjf5LWlhvZ400fRW', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 19:16:38', '2026-01-06 02:50:17'),
(116, '25268590', 'DWI SAPUTRI', '25268590@sekolah.test', '$2y$12$JwrDFkoMj8i6BFw6ZIei7uz87m.5G.X5N94o0v1dYJ5lBa4jVRElC', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 19:16:39', '2026-01-06 02:50:17'),
(117, '25268615', 'Feby Destiana Putri', '25268615@sekolah.test', '$2y$12$wPhTwudFGeL/grz05nfCguk.tWLq/ZBoPq67bGOn0ogdjT1SJR.C6', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 19:16:40', '2026-01-06 02:50:17'),
(118, '25268630', 'HESTI ZASKIA FITRIYAH', '25268630@sekolah.test', '$2y$12$uRiCfiFuJooWVNxhLBAp0OsNbGKYkoK41lOku6WpWU5sIU8gyL7cm', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 19:16:40', '2026-01-06 02:50:17'),
(119, '25268647', 'KEYLA ALMEDIVA AL HADID', '25268647@sekolah.test', '$2y$12$1yro4UPXRiLVHnHyK8N5N.anAICWzTCeeVW2qwjZJDpymvkh0MqcS', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 19:16:40', '2026-01-06 02:50:17'),
(120, '25268653', 'KHOIRU NISA RAMADHANI', '25268653@sekolah.test', '$2y$12$FqDRbTMofuhezW7Ul0TCw.nmjlo/xJhZDpJmOPHijmWWcMsT7LoA6', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 19:16:40', '2026-01-06 02:50:17'),
(121, '25268674', 'MIFTAHUL ALFIATU RAMADANI', '25268674@sekolah.test', '$2y$12$U6QmkFJbtq6TCqUGZlSNFedoAKYVDV8FbJ8T1sezy4Q1cLm34UlDq', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 19:16:41', '2026-01-06 02:50:17'),
(122, '25268678', 'MU\'ALIMATUL HAFIDZOH', '25268678@sekolah.test', '$2y$12$anelY8mmXaRu9UICxx12Z.s2R2kC4sXytr1KGHxXTABjpBHaakRdq', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 19:16:42', '2026-01-06 02:50:17'),
(123, '25268745', 'RAHMAH RAHAYU', '25268745@sekolah.test', '$2y$12$uR3nWV.loOcuiyodiHMSNeYLX2UMFkyMoCT2A2s4e9B4vdTqgFzdy', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 19:16:42', '2026-01-06 02:50:17'),
(124, '25268754', 'Reva Ayu Anjani', '25268754@sekolah.test', '$2y$12$pi/Hwt0FPyHXVqKONpSADuBEKzch7RbxGUYtqJq.u6IkZnOsJwPR.', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 19:16:43', '2026-01-06 02:50:17'),
(125, '25268784', 'ROSYDIANA SEKAR ARUM', '25268784@sekolah.test', '$2y$12$4/vRRM9eFKLvoj0EbDPQ/uTtNS0a6/cf7upU5DSRAzjVg33VIkGOu', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 19:16:43', '2026-01-06 02:50:17'),
(126, '25268799', 'SILVI TRI MARLINA', '25268799@sekolah.test', '$2y$12$W.2lLzYY2LwScFDvQnsCO.VUwUvvLDoIEMUwh3K2ut15uOeynyysK', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 19:16:43', '2026-01-06 02:50:17'),
(127, '25268802', 'SITI MEGA ROHANI', '25268802@sekolah.test', '$2y$12$i9.99cBnXBC8G7unr4wZvuvUFwk42In.yEYi8.p1yOsAQmG1zHUKW', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 19:16:44', '2026-01-06 02:50:17'),
(128, '25268804', 'Siti Nur Awaliyah', '25268804@sekolah.test', '$2y$12$/oOUwqHerr4fUocwYiXV.uz.w8ameca.EJj1.urG0.A2VRlLhRy.e', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 19:16:45', '2026-01-06 02:50:17'),
(129, '25268813', 'SYAKINA NUR ASYIFA', '25268813@sekolah.test', '$2y$12$XLlIYNS13jPqNXbHv5nu0.KDuVGPa3/rSFlV5z3Gq.SxAjRsa4qOO', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 19:16:45', '2026-01-06 02:50:17'),
(130, '25268817', 'TERA PISESA', '25268817@sekolah.test', '$2y$12$55zeXA7lnwdn7lbkQA3rp.F9BOKzh6ohGNiseZgEDozP..u0viBfO', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 19:16:46', '2026-01-06 02:50:17'),
(131, '25268818', 'TERI LESTARI', '25268818@sekolah.test', '$2y$12$YQwpkdBJ7.vExbpaW6Srs.zBiQeVUNyWPtFzXvU9BiCSi3DIg2vxS', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 19:16:46', '2026-01-06 02:50:17'),
(132, '25268507', 'Adelia Indrawati', '25268507@sekolah.test', '$2y$12$eotgxgE6VHVDbaJjF/YwZuN5VN6a38TTSaXU1eRPYJ6r1EcQkVJAW', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 19:16:47', '2026-01-06 02:50:17'),
(133, '25268533', 'AMELIYA RAHAYU', '25268533@sekolah.test', '$2y$12$toCxfE12kCQQJkEVZCQ.5eqKP0oEdDC8kQaSUjkqq5bfCTbxzQKBe', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 19:16:47', '2026-01-06 02:50:17'),
(134, '25268545', 'ANIFA AZIZAH RAHMAWATI', '25268545@sekolah.test', '$2y$12$..RDWGj8Th3x7CscECpk.udVVBJE9avuUdQA1uqU3YYh/I.rr4cNK', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 19:16:47', '2026-01-06 02:50:17'),
(135, '25268546', 'ANISA LATIFAH', '25268546@sekolah.test', '$2y$12$zvXRb.Mz4YEBkuDwUOf1XuX8vzDoRwOQMxSgWBew3/Vt/tbTGh7Ei', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 19:16:48', '2026-01-06 02:50:17'),
(136, '25268551', 'Arinta Jufika Putri', '25268551@sekolah.test', '$2y$12$ASDu1VSkp4F7knu3RXIPMuF2EVbB7SL2Gvln6ENTr8wk/vM2yswfa', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 19:16:49', '2026-01-06 02:50:17'),
(137, '25268555', 'AYU PUSPITASARI', '25268555@sekolah.test', '$2y$12$wmC5D0TYyeFMlIXqBWecnubfGHW4uC7.1WSrjMdhEHZMkUzg5lU02', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 19:16:49', '2026-01-06 02:50:17'),
(138, '25268566', 'BUNGA APRILLIA', '25268566@sekolah.test', '$2y$12$RiJ012LafqkuDF45EcvR2.33B6TrTVLLbpO.mfJ6CKo75K6WwAO3y', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 19:16:49', '2026-01-06 02:50:17'),
(139, '25268569', 'CANTIKA NOPITASARI', '25268569@sekolah.test', '$2y$12$eDvMwDAIM.FLm0wrkXw/0Okminj.bxVsJm86aonHyj6fwqJK5bnaS', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 19:16:49', '2026-01-06 02:50:17'),
(140, '25268571', 'CELSIANA', '25268571@sekolah.test', '$2y$12$HwaYlZf08k1Yl4RWBZ2ElOC7EuQ2yYnteS1STHUeffTrOhwzscDT.', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 19:16:50', '2026-01-06 02:50:17'),
(141, '25268595', 'ERMI SULISTIAWATI', '25268595@sekolah.test', '$2y$12$P9Xb/Xxr.1c9ZY3JHmd8C.08setDGr1PecOEml5AkutQcq0UkuNNm', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 19:16:50', '2026-01-06 02:50:17'),
(142, '25268601', 'FADILA WIJAYANTI', '25268601@sekolah.test', '$2y$12$3KvXGFdz0qDOf7kBpYReFOWyggurVmg5r31X9.8npisbZ/OQkpZca', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 19:16:51', '2026-01-06 02:50:17'),
(143, '25268614', 'FAUZIAH NUR SUKMA AULIA', '25268614@sekolah.test', '$2y$12$mfANcJSxBFS21dBTtWA1l.ZtUZX8iQCiTfoSeBO4fjl66nuA79hjW', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 19:16:51', '2026-01-06 02:50:17'),
(144, '25268632', 'Hilda Asfarinazul Fatie', '25268632@sekolah.test', '$2y$12$sE45dUFye1ndpkaWVyJsXOFQjhjjTnC.82tTH9VZefDq1tr2/j2dO', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 19:16:51', '2026-01-06 02:50:17'),
(145, '25268637', 'ISNAENI IYANATUNNISA', '25268637@sekolah.test', '$2y$12$UCkMsV97k645o9Lh7NBN1uHgHv6fotHACvutGHu.0BqCcS8fyYbIq', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 19:16:52', '2026-01-06 02:50:17'),
(146, '25268642', 'KANIA FADHILA', '25268642@sekolah.test', '$2y$12$66EXpwe69d2yxSsO2rWx1OR/tPKLr0BzP8u//oplHYBVkJgGbR0R.', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 19:16:52', '2026-01-06 02:50:17'),
(147, '25268648', 'KEYSA ALYA ROIKHATUSYYFA', '25268648@sekolah.test', '$2y$12$PyszyM/XHVux9nAsuTUQE.og8dTTTHrUMJribDktvei3XUjTCY1EO', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 19:16:53', '2026-01-06 02:50:17'),
(148, '25268649', 'Keysha Setianingrum', '25268649@sekolah.test', '$2y$12$PPJEpNtEZ.LrtpLeVNj1tuijWn9ypfpr6xQKifGTcXJ6taDNxVz1u', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 19:16:53', '2026-01-06 02:50:17'),
(149, '25268657', 'LASTRI AGNISA', '25268657@sekolah.test', '$2y$12$7fsohyV7iADPcgYeBANr3uLJSQcr96aS/0U6S7Gn1PLYijICfDs9u', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 19:16:54', '2026-01-06 02:50:17'),
(150, '25268665', 'MARISKA NUR FADILAH', '25268665@sekolah.test', '$2y$12$vzkdcl.l.uTvpgiQJ3SFU.CbttoBz/z2lIAu4khoOjBxr18eA4nsa', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 19:16:54', '2026-01-06 02:50:17'),
(151, '25268672', 'MELDA NUR ANGGRAENI', '25268672@sekolah.test', '$2y$12$1q.8qXwd0ohhEe.8DS/ut.2X35rkVCXuLr/PSfrzr6icxdnsOjAr2', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 19:16:54', '2026-01-06 02:50:17'),
(152, '25268673', 'MELDA PERTIWI', '25268673@sekolah.test', '$2y$12$sAtfNwWoUEt8ocJ.g8h9cO05yyeZtRYPfQIbXP0gGsa1wBq2oWsr6', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 19:16:55', '2026-01-06 02:50:17'),
(153, '25268713', 'NAYLA ROUDLOTUL JANNAH', '25268713@sekolah.test', '$2y$12$wnuDEMw7vCDz5Vdif.SpU.uiFeRVnpU60BsqwLwhAz6Lh2OhL4psW', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 19:16:56', '2026-01-06 02:50:17'),
(154, '25268715', 'NESYA APRILIA', '25268715@sekolah.test', '$2y$12$J0qI2UVloOd0j6oIqh5.N.w1wJtlY7S.nNe3M74idMldWAB8XI4jC', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 19:16:56', '2026-01-06 02:50:17'),
(155, '25268717', 'NIKEN DWI MUTIA', '25268717@sekolah.test', '$2y$12$AGsZTxLdPLXJVf/KLiM4weW45zOHoBVZWvI3I1iEQdhkzYIfLv/oK', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 19:16:57', '2026-01-06 02:50:17'),
(156, '25268719', 'Nonie Zaskia Mulan', '25268719@sekolah.test', '$2y$12$m2bLExjaao2U95k3TFdMf.EG8WgR4sTWbkhjeLdwUFXysGdpx7A3m', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 19:16:57', '2026-01-06 02:50:17'),
(157, '25268769', 'RISMA DWI YANTI', '25268769@sekolah.test', '$2y$12$DXV8xo4L7fZx7UNpEw6cJevTWEdkE1kg.Bv71Wqod.Chf3XI1vLUy', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 19:16:58', '2026-01-06 02:50:17'),
(158, '25268776', 'RIZKA ZAHRATUL JANAH', '25268776@sekolah.test', '$2y$12$FmPQZ081kYK4PjqBWvGl/.w8.dSMqNDGF55ntQJf/dMfO.eq/7ce6', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 19:16:58', '2026-01-06 02:50:17'),
(159, '25268785', 'SAFIRA', '25268785@sekolah.test', '$2y$12$2YDtNmLIO2HzBKMPLevzG.dR.v73aih7Xg1sBMFuFRkzTIiCa3X8m', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 19:16:58', '2026-01-06 02:50:17'),
(160, '25268791', 'SAUSAN LUKI NOVIANA', '25268791@sekolah.test', '$2y$12$522SB0ySBJKuPKCPT4fQ7.lL8ioWs/aEybby/aemc4D0Hk8vk0um2', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 19:16:59', '2026-01-06 02:50:17'),
(161, '25268792', 'SEFIRA AGUSTINA RAMADANI', '25268792@sekolah.test', '$2y$12$pYKbszmXcPSOhAdO/wFy/uZJFXiDUynFmLLOLG/bF7cdXdkGEYy8a', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 19:16:59', '2026-01-06 02:50:17'),
(162, '25268793', 'SEPTI NUR AENI', '25268793@sekolah.test', '$2y$12$t.WSDPE9hO5OAyH6Y.MKve2Ksb9QTT56VF.8zymRHbQ3MMfXJn3hW', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 19:17:00', '2026-01-06 02:50:17'),
(163, '25268803', 'SITI MUNINGSIH', '25268803@sekolah.test', '$2y$12$gVF7VevZx74FbMsqXBPRXuUubzgORQk51rkSgMURAfcfRqwHvQg7y', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 19:17:00', '2026-01-06 02:50:17'),
(164, '25268805', 'SITI NUR FADILAH', '25268805@sekolah.test', '$2y$12$y8gnwxtF/MvMr5QjTj34KuezR3y6Gq8xPvjwB7oO/BD8ZJ8ircvMC', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 19:17:01', '2026-01-06 02:50:17'),
(165, '25268811', 'SYAHFA DWI MULYA', '25268811@sekolah.test', '$2y$12$TYdBMqzZWYYPmEJJRbmc4OQQGLQ6c4QYi0dU3HdaF2ml8gEonICb6', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 19:17:02', '2026-01-06 02:50:17'),
(166, '25268814', 'SYFA DWI DUTA', '25268814@sekolah.test', '$2y$12$qEeaJz9T6LCcyLzuYs8PLeORQt8mhNP4iKiXtLGL1RR2Hw4wjvNx2', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 19:17:02', '2026-01-06 02:50:17'),
(167, '25268819', 'TESA APRILIYANA', '25268819@sekolah.test', '$2y$12$afcXc.4e0Kks7a.EMLxhv.M7daq86uH6ODq.T9iDYYLQqWJPyceKS', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 19:17:02', '2026-01-06 02:50:17'),
(168, '25268820', 'TIA DININGSIH', '25268820@sekolah.test', '$2y$12$MVABm3.oMTgHTWSupKdr6.ErJt2SSazzpw4Snresci5CfSTFMtUU.', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 19:17:03', '2026-01-06 02:50:17'),
(169, '25268825', 'Valen Anjani', '25268825@sekolah.test', '$2y$12$M0VQBykpGHvEe.34014MMel48zZMK5IuXaZygbA0HwLQA6WTDABN6', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 19:17:03', '2026-01-06 02:50:17'),
(170, '25268828', 'VIRA TRI RAHMADANI', '25268828@sekolah.test', '$2y$12$hsce5zA/RptPCAQoS5u2wOcvQcnYxr/.m7krzBU9dJ41ssbBiE5hq', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 19:17:04', '2026-01-06 02:50:17'),
(171, '25268838', 'WULAN AMALLIA', '25268838@sekolah.test', '$2y$12$WznZPCBL94AvA5CnkkuizeXAD1pdixkwbUj4nKkZXgdrdekWJ4XNe', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 19:17:05', '2026-01-06 02:50:17'),
(172, '25268842', 'YUAN NITA', '25268842@sekolah.test', '$2y$12$hqtTybZrfCnd6MhfGJJ4xuBi0QOhixgjv0e6SqcDKDX35qKmOu83a', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 19:17:05', '2026-01-06 02:50:17'),
(173, '25268532', 'AMELIA DWI RAMADANI', '25268532@sekolah.test', '$2y$12$0PgAMGWjpfmC4NJgBbk6Y.mDBNBC06Pt10jMJ9qok6fXXuDD.Arhm', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 19:17:06', '2026-01-06 02:50:17'),
(174, '25268543', 'ANGGA FIRMANSYAH', '25268543@sekolah.test', '$2y$12$YUxn9Rb2wa15o.j03hR98uf61FXhUsqkFMCnBw72Bs27nF3eP6Bwu', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 19:17:06', '2026-01-06 02:50:17'),
(175, '25268544', 'ANGGER KUKUH LANGGENG RADITYA', '25268544@sekolah.test', '$2y$12$d3Lv4ge6Uejprsq8fb628.8e658gPIOXPYIzoPQpI5qV3XoClJyl6', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 19:17:07', '2026-01-06 02:50:17'),
(176, '25268547', 'ANJAR ZAJMIRANTO', '25268547@sekolah.test', '$2y$12$S0oDiU9.lfD.y4PbelnrkeJp0Yx7xBZf.TKZOwYPkQNTy8yDJmzTC', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 19:17:07', '2026-01-06 02:50:17'),
(177, '25268558', 'AZRIL SYAFI\'IL KHUSNA', '25268558@sekolah.test', '$2y$12$vj9XmDD2sGVrWGHMXx5FRe3BM11M43BbJQ7QvWK/MZuR3v2o5fIj.', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 19:17:08', '2026-01-06 02:50:17'),
(178, '25268564', 'BAYU SAPUTRA', '25268564@sekolah.test', '$2y$12$bCvzfwwcZthmklgt0bF..uLgkLXggGIP8hWiT4nb2JNtRrlaD5P7O', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 19:17:09', '2026-01-06 02:50:17'),
(179, '25268572', 'DAFFA RIZQI RAMADHANI', '25268572@sekolah.test', '$2y$12$8RMtr1fVLmBA0sJerm4.DOUAkQMW1RJ.Ltezatufb33cOwp0MUohi', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 19:17:09', '2026-01-06 02:50:17'),
(180, '25268573', 'Damar Zachary Sheehan', '25268573@sekolah.test', '$2y$12$xaznKte5N2lJKakVoFmDx.LHJYhCKFhDeH8X3F8rwvAlP9Yw28Igm', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 19:17:09', '2026-01-06 02:50:17'),
(181, '25268583', 'DIAR RAMADANI', '25268583@sekolah.test', '$2y$12$hIT/vRYjF76Yb4CUcsI7Cey.lP1PD4XW2dTSim/odZrZHsJRe5Q5W', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 19:17:10', '2026-01-06 02:50:17'),
(182, '25268612', 'Fathan Rizqi Mahardika', '25268612@sekolah.test', '$2y$12$LgoJHIH2UABl7aJDQ711au3x3xnJQJpCQRgFFJFlNNuWVUfTItlQe', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 19:17:10', '2026-01-06 02:50:17'),
(183, '25268616', 'FINZA DWI ATTRISNO', '25268616@sekolah.test', '$2y$12$RLj5cqWO4ZiqImcxbCE18uqc1qADxmjeTa1p/2ysOCNlIItoWoijG', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 19:17:11', '2026-01-06 02:50:17'),
(184, '25268633', 'IKBAL HIDAYATUROHMAN', '25268633@sekolah.test', '$2y$12$2ycxtBrbXshbAIOmZkywB.X2zdL3zN0YhKo8MB23pPRaFgthuxYbS', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 19:17:11', '2026-01-06 02:50:17'),
(185, '25268852', 'LINTAN SASI ADELIA', '25268852@sekolah.test', '$2y$12$aYI/tZe.bu2CrKmEodX6hOt9iFmfl4arlus9gK5QPT8iySh2LOo4q', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 19:54:14', '2026-01-06 02:50:17'),
(186, '25268658', 'Livia Lestari Putri', '25268658@sekolah.test', '$2y$12$SS1gDUS94auz11wLbKGPL.Zg34A.JwKdhnZuuOzP6LC3qKdwTGuLG', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 19:54:15', '2026-01-06 02:50:17'),
(187, '25268667', 'Ma\'ruf Alif Hidayat', '25268667@sekolah.test', '$2y$12$536ROjrAT99PEfMj7EFV.ewu39k5og9DSGN1D0yDvx1TMCzPqIjjK', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 19:54:15', '2026-01-06 02:50:17'),
(188, '25268666', 'MARSYA AURELIA', '25268666@sekolah.test', '$2y$12$mL8xl60Cdh/2m97HizwkvOFfrZ6rW4iMoSeCQKwVsDw16bQFb9JGa', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 19:54:15', '2026-01-06 02:50:17'),
(189, '25268686', 'Muhamad Rapa Ardiansah', '25268686@sekolah.test', '$2y$12$DIlvLSvIzY.NoK6JZYZCNOk9/OwJyQkDVNGsiIS7UlfoWhrYf9Oui', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 19:54:16', '2026-01-06 02:50:17'),
(190, '25268694', 'MUHAMMAD FAATHIR', '25268694@sekolah.test', '$2y$12$mrKyf1cFpinT3.M.xbB8E.tl0IPWVN3VzDsHpqBrapAxHni3dLCCO', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 19:54:16', '2026-01-06 02:50:17'),
(191, '25268701', 'Munifatun Azka Juniah', '25268701@sekolah.test', '$2y$12$gFgmmuPGCQyzC4Go7Qo2OOOSZLsCVIKyh9xahMFTh9/PkbDxVPOay', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 19:54:16', '2026-01-06 02:50:17'),
(192, '25268705', 'Najwa Amalia', '25268705@sekolah.test', '$2y$12$oWKAfFHK1IfsyMdSSa0pZen06f2.312dEfA0YiwaNUBUfzqFQ5XXK', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 19:54:16', '2026-01-06 02:50:17'),
(193, '25268720', 'NOVITA CLARA ANGELIKA BEBY PUTRI', '25268720@sekolah.test', '$2y$12$u9usbtqe1VbCmamuA6WDSu.Yr50llGmeamXE0jq7eB2TOYigeJZ8i', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 19:54:17', '2026-01-06 02:50:17'),
(194, '25268721', 'NUGI PRIA NARA', '25268721@sekolah.test', '$2y$12$zvl7E8qdFAYjAhrodBW6peVYQXB8BWCJ8K7UIGDkeddcTzD2iiQ9G', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 19:54:17', '2026-01-06 02:50:17'),
(195, '25268722', 'NURUL AURA DEWI', '25268722@sekolah.test', '$2y$12$iKdr6VpAivHW8geqIRiz4.PVNuu0.iOzVovtgwuRP3ktLIAvfpqbG', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 19:54:18', '2026-01-06 02:50:17'),
(196, '25268723', 'NURUL FARADILA', '25268723@sekolah.test', '$2y$12$JAo.l9oKCBKVsgaxNQbwye4ykpI4Wwat3f7w9VD2yjgy38KdkX8Ru', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 19:54:18', '2026-01-06 02:50:17'),
(197, '25268741', 'RAFI MUZHAFFAR', '25268741@sekolah.test', '$2y$12$5f6DEIuqkuzLzzC9jQjHOePA3Btk/h9o9V9P2GmXM2BIRz7qLqu.m', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 19:54:18', '2026-01-06 02:50:17'),
(198, '25268744', 'Rafikul Fadilah', '25268744@sekolah.test', '$2y$12$Ls6Bt82ed0RdbCPoQ72YYegbs02UvYopM3f3GEzvZxgwjkTAQj8s.', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 19:54:19', '2026-01-06 02:50:17'),
(199, '25268749', 'RAKA RAFIRQA', '25268749@sekolah.test', '$2y$12$oCuGQbMkRg5DrZxnC74oX.1.jxhfXSW3BY/lCYUuYdyLDxIlNX85m', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 19:54:19', '2026-01-06 02:50:17'),
(200, '25268774', 'Rizal Triyanto', '25268774@sekolah.test', '$2y$12$8PG9iNi9GK.l/Qnx9mOL3ery9KTKRT9/xN9TVT7e/jnWBO50fcibe', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 19:54:19', '2026-01-06 02:50:17'),
(201, '25268794', 'SEPTIANA RAMADINA', '25268794@sekolah.test', '$2y$12$AtAmoRNxyaf/wbAt9IznY.G6bRDhpHKVUW1VT7lcl2zVxIJlYLA.S', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 19:54:19', '2026-01-06 02:50:17'),
(202, '25268800', 'SILVIA INDRIANI', '25268800@sekolah.test', '$2y$12$CAQFpW.yadlihRwUUodgQuFtZrsMBx.CsjDz0x1GC7TpZfK447bY6', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 19:54:20', '2026-01-06 02:50:17'),
(203, '25268823', 'Tria Apriani', '25268823@sekolah.test', '$2y$12$8fNlyotP9btcR.9MBj7luOP9cElC7FRv8LXUwARaDpuKxCX7lRJme', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 19:54:20', '2026-01-06 02:50:17'),
(204, '25268831', 'WAFII PRATAMA', '25268831@sekolah.test', '$2y$12$IBTNW78H20NH162FC1RWsu.b1PhXoydzBSSo4MF2kxE9u/n6kqOla', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 19:54:20', '2026-01-06 02:50:17'),
(205, '25268835', 'WENDY PRATAMA', '25268835@sekolah.test', '$2y$12$QbnEf8xMYL8ey6QTJ/Sgd.gzL35IMPx/z7K4yfh9jYMegY9UZQAba', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 19:54:20', '2026-01-06 02:50:17'),
(206, '25268508', 'ADINDA JULIANTI', '25268508@sekolah.test', '$2y$12$6BxWcmymvyDuc5Nkx3cWceEGhiJ9CwazZj5kYTAsXQTrXyCambcdS', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 20:05:30', '2026-01-06 02:50:17'),
(207, '25268522', 'AL RAHEZA FERIZQO MAULANA', '25268522@sekolah.test', '$2y$12$0QxQp5rXuaqcqkMaxY5nIePiuoUXbIvNOVwW6a8t6RHO1DWrPztt.', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 20:05:30', '2026-01-06 02:50:17'),
(208, '25268531', 'Almira Nurindar Febriani', '25268531@sekolah.test', '$2y$12$pdoUZmQtkEVcr/TLe4dMyuQUDVPxK5EDk1ERE7g1RaoyfTSnZ6EN6', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 20:05:30', '2026-01-06 02:50:17'),
(209, '25268535', 'ANAS SAHRUL MUBAROK', '25268535@sekolah.test', '$2y$12$X/TmFZ275wjYDcUiCK9ZuOvjA6HU6qIesykpsblQI/Tvim9jjQyYC', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 20:05:31', '2026-01-06 02:50:17'),
(210, '25268542', 'ANGEL SILA ALIFA', '25268542@sekolah.test', '$2y$12$.jOeqG/kfak7rScPtv1iaONOtRk9WxGwniAulMOx/6.9Wd4eX.ltG', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 20:05:31', '2026-01-06 02:50:17'),
(211, '25268550', 'ARDAN MAULID', '25268550@sekolah.test', '$2y$12$xXCmGN2HwvobZ1L.WDfg2ukDBmqlQN/rSFO5tWY9l05ayFG84miEG', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 20:05:31', '2026-01-06 02:50:17'),
(212, '25268567', 'Bunga Fadillah', '25268567@sekolah.test', '$2y$12$9MQSFLNXRDAf7rG9BKRoAOIBZqccQ5Gl.5bDZFcO1C11.rnqxtpIa', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 20:05:32', '2026-01-06 02:50:17'),
(213, '25268568', 'CAHYA RAMDANI', '25268568@sekolah.test', '$2y$12$paYXNfZvRhy6FxANIce1VuQ3WzF3ZHx5CWYEl2TMX.SysUAK7xu8q', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 20:05:32', '2026-01-06 02:50:17'),
(214, '25268585', 'DIMAS NOVIANTO RUSLAN', '25268585@sekolah.test', '$2y$12$JyvjAOV2S.5bl1M9c4KZzebn6cPqfUVMlr7RBvpsX4e14Xa/imXCm', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 20:05:33', '2026-01-06 02:50:17'),
(215, '25268594', 'Erik Setiawan', '25268594@sekolah.test', '$2y$12$EBAIQUiUasX2FHtKKf82M.rzyzcEPr49IBZLfJjfIXBD995o9gMma', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 20:05:33', '2026-01-06 02:50:17'),
(216, '25268603', 'FAHRI ASYAQIF', '25268603@sekolah.test', '$2y$12$8PvCnXW1Hy01sk9IcH5I3Og24sPhkA/JxAWMoLlMJLy8gevpn0oNi', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 20:05:34', '2026-01-06 02:50:17'),
(217, '25268624', 'Hafiza Safa', '25268624@sekolah.test', '$2y$12$tS5.ZwNQN6FWXSc1aIQKguWzXGvjxL6mTcdd7k4d2ERRnBvtGoPpO', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 20:05:34', '2026-01-06 02:50:17'),
(218, '25268626', 'Haikal Duta Mulya', '25268626@sekolah.test', '$2y$12$bBpHoZlbur8wMBQkQRJ6Z.x9o7J3eBq8sl8QeXtwGKPJcVJ1/VHlK', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 20:05:35', '2026-01-06 02:50:17'),
(219, '25268661', 'MAFTUH LABIB KAUTSAR', '25268661@sekolah.test', '$2y$12$yQmX3R6Xu/ZEokdfudlyiu71K5H2GGdq4ZJayNrvphMknRtg4BoC2', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 20:05:35', '2026-01-06 02:50:17'),
(220, '25268677', 'MU ANWARUDIN', '25268677@sekolah.test', '$2y$12$MScmEt4d5QI8aZd7PBgvv.odXrwE9NI3AEMXy.IxobvPOO/lxlfEC', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 20:05:36', '2026-01-06 02:50:17'),
(221, '25268690', 'MUHAMAD ALFIANSYAH', '25268690@sekolah.test', '$2y$12$YXeWchiL1XqXXJb8SgVHmu8frtLkSlHL5MlcPheshh.pQR8PH/NUG', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 20:05:36', '2026-01-06 02:50:17'),
(222, '25268699', 'MUHAMMAD SYARIF HIDAYATULLOH', '25268699@sekolah.test', '$2y$12$I4K7oYKXfA1fN4zvmUo8meW67fGJAW.jzgY2AqbFVMmx6EqvJSVyS', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 20:05:36', '2026-01-06 02:50:17'),
(223, '25268702', 'NADIA FAJRI FAUZIATI', '25268702@sekolah.test', '$2y$12$cQCL.0eUYbaKC..sP5tsk.fC2kH.SfA6NMGWow76Zc3cRkJKjlfA.', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 20:05:37', '2026-01-06 02:50:17'),
(224, '25268706', 'NAJWA NURINATULLAILA', '25268706@sekolah.test', '$2y$12$HK6V2y/WwBjC01O4FPH4tu6LpZ7GQWMdlcp40YjfbKK0Xx3lASTe6', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 20:05:38', '2026-01-06 02:50:17'),
(225, '25268710', 'Natasha Agnes Marcia', '25268710@sekolah.test', '$2y$12$On9HTk92Ln.lXTuGuGUs8.shRrDf81abYIO3D6IoAEHLJxVoCjVrO', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 20:05:38', '2026-01-06 02:50:17'),
(226, '25268725', 'Olivia Larastika', '25268725@sekolah.test', '$2y$12$/6VQZCgzO9sosS8hCNdQQu4TQb7iDSem15ggXM3R.SuUxrO/UJJdS', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 20:05:38', '2026-01-06 02:50:17'),
(227, '25268748', 'RAIF AMANULOH ZAIN', '25268748@sekolah.test', '$2y$12$XRJmnupR8U5WURrRAnNNzu8axR9dq4C6YplKlDSb1CcYG/9W8F2cK', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 20:05:39', '2026-01-06 02:50:17'),
(228, '25268757', 'REVFAL SUGIYANTO', '25268757@sekolah.test', '$2y$12$DgCm5UD5FLcuACTMsklb7Ov5hQn3QJiXJBzzRfC4ebI5vjmCXvzfO', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 20:05:39', '2026-01-06 02:50:17'),
(229, '25268764', 'RIFI ALFIAN FAUZI', '25268764@sekolah.test', '$2y$12$D1IVGYt.F3JufCPfiVW8UOJ4ZiBQ9TJmJb9ai77aXWJBnbDkTnVci', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 20:05:40', '2026-01-06 02:50:17'),
(230, '25268770', 'RIVAN NANDA MARDIKA', '25268770@sekolah.test', '$2y$12$SOxF/nIC75aMUsCLH5RV/eGXeXCeMOH49orPgLKFHvJ9h0ee1c7g.', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 20:05:40', '2026-01-06 02:50:17'),
(231, '25268775', 'RIZKA NUR UTAMI', '25268775@sekolah.test', '$2y$12$2qy4Z0YMoTV8ICGOKcTMtunOvKGX9scysGyTB68NJfb.SRX/DKhg6', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 20:05:40', '2026-01-06 02:50:17');
INSERT INTO `users` (`id`, `username`, `nama`, `email`, `password`, `password_text`, `role`, `foto_profil`, `foto_unggulan`, `is_active`, `reset_password_token`, `remember_token`, `created_at`, `updated_at`) VALUES
(232, '25268778', 'RIZKI TEGAR PRASETYO', '25268778@sekolah.test', '$2y$12$4l0QhRYgelHsDKwvNDy/JeHzRElh7WR56JIhXrlGmrJXO2/8KK6mC', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 20:05:41', '2026-01-06 02:50:17'),
(233, '25268783', 'ROSTIANA SARI INTEN DEWATA', '25268783@sekolah.test', '$2y$12$USwD3jLaw3iZwNjIBNy/zuJ9VZ/luyJU42.QQMRdcqr21VZ3xIPLe', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 20:05:41', '2026-01-06 02:50:17'),
(234, '25268809', 'Surya hansyah', '25268809@sekolah.test', '$2y$12$afwv4kJWS.pfzKeyDzJnz.aw1uhIxepSKEE7H3uQX9KWIwUzYTD9W', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 20:05:42', '2026-01-06 02:50:17'),
(235, '25268826', 'VANI ALVIANA SARI', '25268826@sekolah.test', '$2y$12$VTvCXfYmI2Z05act3OlyF.yJNV9CnrtOFAKv5XZp2H.HOOoAD5.S6', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 20:05:42', '2026-01-06 02:50:17'),
(236, '25268834', 'WAHYU RIZKI PRATAMA', '25268834@sekolah.test', '$2y$12$BLLZ4ymuWbaEpe17ZvD/O.ZK3FZCJIpChURuJxfA2Hb/TuJVrZHxC', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 20:05:43', '2026-01-06 02:50:17'),
(237, '25268837', 'WINA WIDIANINGSIH', '25268837@sekolah.test', '$2y$12$OFgIgBlwbz9d/IuKUpckoOzSw.PUT8ezI2l3iVSOLw4Bx1FMcSSpa', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 20:05:43', '2026-01-06 02:50:17'),
(238, '25268839', 'YASMIN NUR AFIFAH', '25268839@sekolah.test', '$2y$12$PQ3/yWdZ1MdUA9JFdMdXQuqqlWw6jJre5l2/YTzYwF9FAtiLkHu1G', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 20:05:43', '2026-01-06 02:50:17'),
(239, '25268840', 'YODI SETIAWAN', '25268840@sekolah.test', '$2y$12$moqqCYdTN8YIXVjMHSOwVerOA1kTHzpDxsDtb3h7L3m.Qtg1OBvQy', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 20:05:44', '2026-01-06 02:50:17'),
(240, '25268519', 'AHMAD KHOIRURRIJAL', '25268519@sekolah.test', '$2y$12$c6EVbNU7VZs9aSmxPs1DY.FZoKX/NQ3myInT6ir3osHDYeHdNBZdW', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 20:05:44', '2026-01-06 02:50:17'),
(241, '25268578', 'DENIS NUR AIMAN', '25268578@sekolah.test', '$2y$12$HNrhoB2WJgRVrOmikd843O7HhNDI3r6rZVhzn4IUrqWHGqQ3.yry6', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 20:05:44', '2026-01-06 02:50:17'),
(242, '25268584', 'DIMAS ARGA RIDHO SAPUTRA', '25268584@sekolah.test', '$2y$12$RHbK0VaJ5463/ZrqKxMQpuL91jjaV7ZjcmVs5RQHlsdSgUlxvHldO', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 20:05:45', '2026-01-06 02:50:17'),
(243, '25268589', 'DWI NAUFAL HIDAYAT', '25268589@sekolah.test', '$2y$12$sHCnuWGXjN9gTOs77DXJoeXkQgRgK5dESNDBt/LZHgPYMetZm32B.', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 20:05:46', '2026-01-06 02:50:17'),
(244, '25268591', 'DYTRA NEZTHA GHAFIKY', '25268591@sekolah.test', '$2y$12$dMDJdCtSQPnvjPdkmAUcl.61b2Vp3zd6zrW9fUPAye1x4aBnpkhy6', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 20:05:46', '2026-01-06 02:50:17'),
(245, '25268611', 'FARRAS ALFIAN', '25268611@sekolah.test', '$2y$12$H5OxUtVOE7NzvveYil9CLO9ffTsVdy3LEVjUeFJFmrFSwV1qHUK2y', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 20:05:46', '2026-01-06 02:50:17'),
(246, '25268618', 'GALANG AGNESAR RAMADAN', '25268618@sekolah.test', '$2y$12$LBhF.jNK0ZWO.B/2I.Da2.Fy7qDRiOCEG6VG4rnhP5Ud/FqtZzvgu', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 20:05:47', '2026-01-06 02:50:17'),
(247, '25268623', 'HADI FAHMI PERMANA', '25268623@sekolah.test', '$2y$12$tG1SqNdKR3Hg6.N/mmj9uuJCMr4C6miPsWa6VbaH.HcbX2.seef2.', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 20:05:47', '2026-01-06 02:50:17'),
(248, '25268638', 'Isnan Bahrul Ulum', '25268638@sekolah.test', '$2y$12$xUQqCFWYTcKSEeTwUSDccOq6i.cr2UFk7IRJyUmmKwDIAdVBkNMcq', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 20:05:48', '2026-01-06 02:50:17'),
(249, '25268660', 'LUTHFI ALIF AMMANULLOH', '25268660@sekolah.test', '$2y$12$6LYq6dtdgl0zzu8gDonV..liMLGOG7Hl9kG3GQILFn3A06ZanLlym', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 20:05:48', '2026-01-06 02:50:17'),
(250, '25268663', 'MAHESA SAPUTRA', '25268663@sekolah.test', '$2y$12$j5FCF/XJuY8p8kLrKIF79.9k3rF5jhP5b3tuAO9h4oIYPKIj7evUO', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 20:05:49', '2026-01-06 02:50:17'),
(251, '25268668', 'Masruri Ramadhani', '25268668@sekolah.test', '$2y$12$URC3vz6CLFt.J/8cJ7UgLecIQ3DI9hR6I6plJ7isu2OHmVz5xZYmK', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 20:05:49', '2026-01-06 02:50:17'),
(252, '25268692', 'MUHAMMAD AZFA HAKAMI', '25268692@sekolah.test', '$2y$12$f0d/i.5TxqXblwm/sgEmq.HBAwQBlGkQFwi5bCf72WJfv1ag3CTZy', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 20:05:50', '2026-01-06 02:50:17'),
(253, '25268693', 'MUHAMMAD BAGUS MIFTA FAUZI', '25268693@sekolah.test', '$2y$12$KMcvwlwb2MHbFet6KTl4DOth1bnojn1w5i/hjrrMVlYngEcyczHra', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 20:05:50', '2026-01-06 02:50:17'),
(254, '25268711', 'Naufal Adi Nugroho', '25268711@sekolah.test', '$2y$12$pWjfAs0w.cBvB/6vS8erSOTD7fkWgxC6KGjdKXGusKFMvn/gaybzy', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 20:05:50', '2026-01-06 02:50:17'),
(255, '25268727', 'PAZHAR IBRAHIM', '25268727@sekolah.test', '$2y$12$pa/tjee1EsPptknzfvN5dOB4Zrm/pMY1CQVZwRXyLuJ8WG3yBpP8C', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 20:05:51', '2026-01-06 02:50:17'),
(256, '25268728', 'QINAN PERLIYANSAH', '25268728@sekolah.test', '$2y$12$HaaKAEpyUwtM9.G9ySvp.emkVKquUBNsPcjIvSc9ltwQev86b1zpK', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 20:05:51', '2026-01-06 02:50:17'),
(257, '25268729', 'QODRI HANDAYANA', '25268729@sekolah.test', '$2y$12$BCT2FggSoF3/auqUZUbZw.GxVh/Nhb3cI8ca7vJaafruGal4zSTFa', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 20:05:52', '2026-01-06 02:50:17'),
(258, '25268732', 'RADITYA ALDIYANSAH', '25268732@sekolah.test', '$2y$12$N7o8upI5TxmPSjLTMparYuJq7B6mg0VWh7ezkrTjbujCWLnTwI74y', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 20:05:52', '2026-01-06 02:50:17'),
(259, '25268736', 'RAFA PUTRA RAMADHAN', '25268736@sekolah.test', '$2y$12$eu79u9X.H7/hamiwPeOyQ.zXYxVeZsqnmJA5rcfPjbFHb1ISpf1EW', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 20:05:52', '2026-01-06 02:50:17'),
(260, '25268742', 'RAFI ZAIDAN LUBAWI', '25268742@sekolah.test', '$2y$12$iyNjqGRAm1uVb1kPOIItnu5.XM1lSAm7nqUk3pWyZLxZs3Hrt3Jda', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 20:05:53', '2026-01-06 02:50:17'),
(261, '25268756', 'REVAN FAUZAN', '25268756@sekolah.test', '$2y$12$quszHr1KcdSeB9RG7.7Y3utyiA9ptJoFne3O2CD4naUWW36QmVg12', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 20:05:53', '2026-01-06 02:50:17'),
(262, '25268765', 'RIFKI AUNUR ARI RAHMAN', '25268765@sekolah.test', '$2y$12$Y6liXslVFz8juHAqeDkXHOb88vPMVQPqm/.G9BDGV621ecuum43lu', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 20:05:54', '2026-01-06 02:50:17'),
(263, '25268768', 'RIKI PEBRIYAN', '25268768@sekolah.test', '$2y$12$pkEM.HJbnV.OZsjhCm4Ht.j61AvuY.nWvJ.PIdbVvgvceXR6vT9wi', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 20:05:55', '2026-01-06 02:50:17'),
(264, '25268777', 'RIZKI FARHAN ADITIANA', '25268777@sekolah.test', '$2y$12$qRJ5qMjQLBYrLX8bcol4gOdvAIj0MoGc.iz7M92NIEhmeIiuv8UYm', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 20:05:55', '2026-01-06 02:50:17'),
(265, '25268806', 'Slamet', '25268806@sekolah.test', '$2y$12$5suLGT7ll8HU06QWlFqCM.mhXBXULPA4TGYEFUHjMIN1BaebPxHz.', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 20:05:56', '2026-01-06 02:50:17'),
(266, '25268827', 'Viken Arif Wicaksono', '25268827@sekolah.test', '$2y$12$RYgaYQlBL.A/sgiNyAr3SO3G7pCFq.QDtusf2j/MYWvguFGjS6hsS', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 20:05:56', '2026-01-06 02:50:17'),
(267, '25268843', 'ZAENAL ABIDIN', '25268843@sekolah.test', '$2y$12$D7l8lxB/8pnkupCB1yBhNOzTy1CCW/FK890kWzfLYkd460wYLFaaK', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 20:05:57', '2026-01-06 02:50:17'),
(268, '25268502', 'ABDHI PRATAMA PRIMA ANGGARA', '25268502@sekolah.test', '$2y$12$gv3mUFPJSOsFUKoSK0UBX.zpYsk0bj02YPMCO85MR6nb7slpm.Nru', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 20:34:22', '2026-01-06 02:50:17'),
(269, '25268504', 'ABIAN MAULANA', '25268504@sekolah.test', '$2y$12$.pqZuen3mTUF5mTo6DoMEu46.C5f4l.8mY6/kDLR/TVcR/WTbIUNS', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 20:34:23', '2026-01-06 02:50:17'),
(270, '25268510', 'ADITYA ZAKI ALFARIZI', '25268510@sekolah.test', '$2y$12$jpnq2kLi8/fiLqCTfLZnp.6wI9q.Zc4tQqhh4OpHY3hO4ry5Kdyv.', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 20:34:23', '2026-01-06 02:50:17'),
(271, '25268514', 'AGIS SALMAN DHAIFULLAH', '25268514@sekolah.test', '$2y$12$i6QrivFTglK.A6SOZboj9OAP49rTruP5PaIbsNUSgqIyd9YbYDJQW', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 20:34:24', '2026-01-06 02:50:17'),
(272, '25268523', 'ALDO HERLINO', '25268523@sekolah.test', '$2y$12$f4P88MSxbdgwgK8LJklM..exCFE0J8JrLwgqXgIEQpjEEk/vYWMTm', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 20:34:24', '2026-01-06 02:50:17'),
(273, '25268525', 'ALFIAN JAMALUDIN', '25268525@sekolah.test', '$2y$12$U.iO9aKLbLv37t/Pyw16zePamWexyp59jwFQhDGe1Jx1ON0G0WzsS', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 20:34:25', '2026-01-06 02:50:17'),
(274, '25268528', 'ALIF MULYANA', '25268528@sekolah.test', '$2y$12$542D9YtNT11IoHhAYV/iJu7pqz6TUnUmYy.TGMxR3q3AVj6.Z/iI2', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 20:34:25', '2026-01-06 02:50:17'),
(275, '25268538', 'ANDRE NUR RAMADITYA', '25268538@sekolah.test', '$2y$12$oMVJ21PsrCr/6n3PVuQAz.6b1xBsKSLKWCEPS0lSDRxqQqYNkcu7K', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 20:34:25', '2026-01-06 02:50:17'),
(276, '25268553', 'ARJUN NAJAY', '25268553@sekolah.test', '$2y$12$vNqlby9ICqtYCJ57J4.r5OHerrPgigSRL0J2ZEi/FtIIDsLgICH7y', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 20:34:26', '2026-01-06 02:50:17'),
(277, '25268561', 'BAGUS KHOERUL AZAM', '25268561@sekolah.test', '$2y$12$rKAHnJipUQ3plS86eI2I/uRTbsg7dNveUydFqAin.sfvbwa.Gf4hG', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 20:34:26', '2026-01-06 02:50:17'),
(278, '25268563', 'BAMBANG PRASETIO', '25268563@sekolah.test', '$2y$12$xTRXQ7.G/HD8azVuyfgzy.XPjbMUv/m3VK1rq684Cx7gCYO5NkejW', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 20:34:26', '2026-01-06 02:50:17'),
(279, '25268579', 'DENY TRIAWAN', '25268579@sekolah.test', '$2y$12$92PAM4cqckGzrEcxGr1OveYG4P863Xa.qah69b1RNk1kiU0W2wWRi', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 20:34:27', '2026-01-06 02:50:17'),
(280, '25268581', 'DEVIN ZORA ALTHAFAH', '25268581@sekolah.test', '$2y$12$zPcxGG1q39RqVotFlrPC8uTwRcpSsEtQtXVZ3eq.gQ4RuLgYGPbAa', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 20:34:27', '2026-01-06 02:50:17'),
(281, '25268586', 'Dimas Setyo Nugroho', '25268586@sekolah.test', '$2y$12$REVbj7amUF5sy4VTfQ2lsuTbNlGJO7iU1Lhnkq3qwYdDOfFPvspPq', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 20:34:28', '2026-01-06 02:50:17'),
(282, '25268592', 'DZIHNI LUTHFI SHAFIQ', '25268592@sekolah.test', '$2y$12$5g5aQiyfO725nuiOvsJZH.twN.8xX5tcCG6SWEBQoPJeJKWNU4ZWC', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 20:34:28', '2026-01-06 02:50:17'),
(283, '25268597', 'EVAN HENDRI YANTO', '25268597@sekolah.test', '$2y$12$mdVgFOYCzBKLJBg/uImU..MronPtXKemL9s5tVIL/I/YIXwMtH/Xq', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 20:34:29', '2026-01-06 02:50:17'),
(284, '25268598', 'Evan Prasetio', '25268598@sekolah.test', '$2y$12$kFuVmc0e7RU0Vpz4dUS/9eayuG3cn4cPtvxaNVgQRUgIJCYNsW3.O', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 20:34:29', '2026-01-06 02:50:17'),
(285, '25268610', 'Fajar Sidiq', '25268610@sekolah.test', '$2y$12$iBBGIrYeT0/8Q9U9227QJua4s.hSt42SXHSAFPwX/T3tI5s2U9wY6', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 20:34:30', '2026-01-06 02:50:17'),
(286, '25268620', 'Gilang Aji Pamungkas', '25268620@sekolah.test', '$2y$12$.2PPUKzl8YEzYHa8q306Ouxxjc3IsfjH59xECcFDTPZ1n8fSNAIK2', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 20:34:30', '2026-01-06 02:50:17'),
(287, '25268635', 'INDRA PRASETIA', '25268635@sekolah.test', '$2y$12$0pcRaMadKA7PdDalVTL7bOjBYVY40eKC3DOAcIyQcPnSz1m8yftqG', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 20:34:30', '2026-01-06 02:50:17'),
(288, '25268850', 'Irfan Bagaskoro', '25268850@sekolah.test', '$2y$12$BWTmnuJU3L.m6Y7J3pJFsesbMkuvkuqX4Y4OB0y/kI2V8MHrELL9m', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 20:34:31', '2026-01-06 02:50:17'),
(289, '25268645', 'KEVAN JUN CHAIRIL', '25268645@sekolah.test', '$2y$12$4NRtKU62nzPN0rmrbEEIv.HlVpNX7Jkif7gtuzoT.VGWy.nzjYuYm', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 20:34:32', '2026-01-06 02:50:17'),
(290, '25268646', 'Kevin Dwi Saputra', '25268646@sekolah.test', '$2y$12$Ko2mWAAokh/MQenqoVFm5usfPuw/ifIu9nvM4pgNIY0kAcO315Bve', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 20:34:33', '2026-01-06 02:50:17'),
(291, '25268654', 'KIRAN ARDIANSYAH', '25268654@sekolah.test', '$2y$12$4Us3iLSh6Disqn0gw3gA3.ZwYhC6Mqt6MkOsVOb4U56Nxq61xMev.', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 20:34:33', '2026-01-06 02:50:17'),
(292, '25268664', 'MANGGALA YUDHA KELANA', '25268664@sekolah.test', '$2y$12$esj3aBcQnaDC6mqck8UgJ./gmfZq7CJE4ZRnOcqAEl6Px6GK112m2', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 20:34:34', '2026-01-06 02:50:17'),
(293, '25268670', 'MAULANA MALIK IBRAHIM', '25268670@sekolah.test', '$2y$12$rvQqMWKXZND4Oq.PIQOHFOTsPchnNekcPJoUBHCDYN1D8mI992bGe', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 20:34:34', '2026-01-06 02:50:17'),
(294, '25268681', 'Muhamad Fadil', '25268681@sekolah.test', '$2y$12$SrWB4d5g4xKoygnpfAA33eId4OTwaaaNRPRwReMJgqP4rPUdmxYSW', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 20:34:35', '2026-01-06 02:50:17'),
(295, '25268688', 'MUHAMAD REZA', '25268688@sekolah.test', '$2y$12$zgJnnSciCcbFfY/vh7Cr6.eL0aJ3HTrN2ZS7v0QGcOgiNGQfL.uRK', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 20:34:35', '2026-01-06 02:50:17'),
(296, '25268689', 'MUHAMAD YUNUS ALFARIZI', '25268689@sekolah.test', '$2y$12$NFZ79IDOGPRbnP0IQ.Mnaus6g77aMuou1zmNyo/MfJkFZvvJeX.wW', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 20:34:36', '2026-01-06 02:50:17'),
(297, '25268696', 'Muhammad Julian Rivano', '25268696@sekolah.test', '$2y$12$DbGHR61MqfF.qkU1YyOXmOWnxCVgLUm1gcuRZGgNjucDda8HGTJ2e', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 20:34:37', '2026-01-06 02:50:17'),
(298, '25268708', 'NANDA PRADIPTYA TAMA', '25268708@sekolah.test', '$2y$12$fpbqGqWdG0jF989Wx0y8MOREh/rCurnDZqXmxEW0Vdwv53Df0ejLa', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 20:34:37', '2026-01-06 02:50:17'),
(299, '25268718', 'NIZAR RAMADHAN', '25268718@sekolah.test', '$2y$12$n6SHgAGpTZ4oVwzEEVkSnejsz9rl4eHgoYswQe1igDTI05QKa2tHW', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 20:34:37', '2026-01-06 02:50:17'),
(300, '25268733', 'RAFA ADE MEILA PUTRA', '25268733@sekolah.test', '$2y$12$25yTr9jmi5pXpXxesgCb2uH86e0BHNpO8vuXM4W4o6xaQNuUCTyKu', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 20:34:37', '2026-01-06 02:50:17'),
(301, '25268746', 'Rahman Dani', '25268746@sekolah.test', '$2y$12$cUAKeBnhrOn.5FEcee7EPOiT4hDmiNnUPvFxrL8zPyZjjLpFxQvMC', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 20:34:38', '2026-01-06 02:50:17'),
(302, '25268752', 'REHAN MAULIDIN', '25268752@sekolah.test', '$2y$12$EAh4b4sjB1XBAfBoeMOxHuNHh1sVRSII4Wduqa8b4M/i9jShjlUQS', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 20:34:39', '2026-01-06 02:50:17'),
(303, '25268762', 'RIDO SETIAWAN', '25268762@sekolah.test', '$2y$12$QuTD7oegI6ilFKmMCcuf7.vD3fB6wwJTE1bavhA4OAMxzwGqh9fqy', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 20:34:39', '2026-01-06 02:50:17'),
(304, '25268506', 'ACHMAD NUR SAEFI', '25268506@sekolah.test', '$2y$12$SXamdEMlRMyGszvNntdgROg3vO22O.bLadtGqH45u9rJjO3HGu8si', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 20:41:55', '2026-01-06 02:50:17'),
(305, '25268511', 'Adliyansah Ramadan', '25268511@sekolah.test', '$2y$12$pSNNN8LOW7sXYJMlhSP9aOK/ctgplgixJg531NkMVHdnxuC6RZrkS', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 20:41:55', '2026-01-06 02:50:17'),
(306, '25268512', 'AFIF NUR SAPUTRA', '25268512@sekolah.test', '$2y$12$yDbrkLhdRImfxecHNltmOOghpEiDzS0g7ZdgPOjbcE2CjGZRwESAm', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 20:41:55', '2026-01-06 02:50:17'),
(307, '25268520', 'AIRLANGGA ADITIYA SAPUTRA', '25268520@sekolah.test', '$2y$12$UgYehTzQlSXha0YE8wJRuuu3jzGIO9G2OB2rHsfAEl99ETbc2ohyS', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 20:41:55', '2026-01-06 02:50:17'),
(308, '25268549', 'AR RAYYAN TIZAR FIRDAUS', '25268549@sekolah.test', '$2y$12$E/UuEqrVqSxST.XNm06WD.OO3w73bdeI7zRMCaYkgL4XEFq2Gxq/C', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 20:41:56', '2026-01-06 02:50:17'),
(309, '25268556', 'AZIS SYAKUR HAFIDZI', '25268556@sekolah.test', '$2y$12$J3.LHv2FzKdYG6zdmuHmC.7D1w83a6C24QmSrFllKpxyjAhBWUwMC', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 20:41:56', '2026-01-06 02:50:17'),
(310, '25268577', 'DENDRA SAPUTRA', '25268577@sekolah.test', '$2y$12$Js/.4ZKdLHwCXfjqsLS/bOLwgDozQ9tYC6djTBhWoI3XryZyaAMG2', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 20:41:57', '2026-01-06 02:50:17'),
(311, '25268613', 'FATIMAH SEKAR KINASIH', '25268613@sekolah.test', '$2y$12$1lVDO4nXYHXEMlLnG/IzTOdHMsgqY6GKSxWwU5hm6DEzLisXLq.Am', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 20:41:58', '2026-01-06 02:50:17'),
(312, '25268629', 'HENK QI RACHMAT BACHTIAR', '25268629@sekolah.test', '$2y$12$uFk.ytx5ho8rNAw9g6hDu.4AA6tIpiAwZrJD3lJUBJ02Mp/s9RYk2', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 20:41:58', '2026-01-06 02:50:17'),
(313, '25268631', 'Hexa Bona Raditya', '25268631@sekolah.test', '$2y$12$ON0IYDsb.krp5RdUCr39fOtMb/dTYLJh342RfuBEGlR.FK4bAX4Vy', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 20:41:59', '2026-01-06 02:50:17'),
(314, '25268641', 'JONI PRAYOGA', '25268641@sekolah.test', '$2y$12$67G.N/veT77d0SQz3hJkReOHUDiHznfZIxt1k00/ST8DL1/VxfDey', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 20:41:59', '2026-01-06 02:50:17'),
(315, '25268652', 'Kharis Saktia Pebriawan', '25268652@sekolah.test', '$2y$12$XxrmKi625qxtiGkJZ.RZhOyZ5uGSITZCsbfWD.8Xiy0RVy41b1056', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 20:42:00', '2026-01-06 02:50:17'),
(316, '25268655', 'KIRANA NURMALA PUTRI', '25268655@sekolah.test', '$2y$12$okdIH0yLHPk1ShwhCl6.j.dDBPxfQhyT7dC1ld1ay.uIVZZ9uJZC2', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 20:42:00', '2026-01-06 02:50:17'),
(317, '25268662', 'MAHESA AFGANI', '25268662@sekolah.test', '$2y$12$Rx8O3GMyijsQfb08ddcljea5t5CznhBZq4abkivaa6BDKFAiT8dY6', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 20:42:01', '2026-01-06 02:50:17'),
(318, '25268671', 'MEIKEL KELVIN ROLINZO', '25268671@sekolah.test', '$2y$12$e/FcDS.5jUL.WtVcKBYEreF7zjZIRN0cs8DrD0vV5Ll6hlZauiT.2', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 20:42:01', '2026-01-06 02:50:17'),
(319, '25268680', 'MOHAMAD ALDI FIRMANSAH', '25268680@sekolah.test', '$2y$12$i2hM4qRA9d8FW6Wrk98IyeEiUiXKqERzJdLZ64FeJOihscHvrW6Di', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 20:42:02', '2026-01-06 02:50:17'),
(320, '25268691', 'MUHAMMAD AQIL MUZZAKI', '25268691@sekolah.test', '$2y$12$9WcqeuSqwKKdjXSUxqXHfuBKoNqcOKFAgyBeTlseHACXDkm7GitaG', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 20:42:02', '2026-01-06 02:50:17'),
(321, '25268695', 'MUHAMMAD FARHAN', '25268695@sekolah.test', '$2y$12$GjWbcY4LCpnET2q8w4kiReVGA1kxRiRBDjMrEOTrYGxmgrIXqqGyK', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 20:42:03', '2026-01-06 02:50:17'),
(322, '25268734', 'RAFA ADIRA PUTRA', '25268734@sekolah.test', '$2y$12$57b3Io2/EcGcmDRkmF7yTOB.kr/4lj27MWjQceuhqhC0Bu.KSClVi', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 20:42:03', '2026-01-06 02:50:17'),
(323, '25268737', 'RAFA SEPTIAN PRATAMA', '25268737@sekolah.test', '$2y$12$LzS4gsQywwDeRQYGjnCgve817bCkmXLECp/BP4N7aGMV.V5B27Iq6', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 20:42:04', '2026-01-06 02:50:17'),
(324, '25268738', 'RAFAEL KAZAN AL KAIRI', '25268738@sekolah.test', '$2y$12$2VHjbGAPD26IdGRzwpg4qOVNcYqPmQQRB0p/Y5sNPT.bfzlrN6HM2', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 20:42:05', '2026-01-06 02:50:17'),
(325, '25268740', 'RAFFA ADE KURNIAWAN', '25268740@sekolah.test', '$2y$12$X26eFGYPQlwxwf0ZpHivuOLOzQpft0AbfniB1c84BrAE9ZiRwxhuy', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 20:42:05', '2026-01-06 02:50:17'),
(326, '25268743', 'RAFIF ARDANA SAKHI', '25268743@sekolah.test', '$2y$12$EwpiikFJruoyCjSokC/gC./c1SG6sErYBKFMnZVcxpcXZ2hq7ZRqu', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 20:42:05', '2026-01-06 02:50:17'),
(327, '25268750', 'Rama Fikri Ardiansah', '25268750@sekolah.test', '$2y$12$lma0TConXO1qRq1GaePubugtZ9fdP6w2UuSeWZLife7SKgyKNSoyi', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 20:42:06', '2026-01-06 02:50:17'),
(328, '25268759', 'REZA HARIS PRATAMA', '25268759@sekolah.test', '$2y$12$RcTXKt8qD95i1PH/scuS5eFarmeZ02jDNGX0AB/7K4YadHhYsWaWq', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 20:42:06', '2026-01-06 02:50:17'),
(329, '25268760', 'RIDHO FAHRUL AMANAH', '25268760@sekolah.test', '$2y$12$UguRmpRRga8dPvZ4hlajUOLRD5SadDssdDOPVs.S1mn/HYuwGC3lC', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 20:42:06', '2026-01-06 02:50:17'),
(330, '25268761', 'RIDHO MULYANA', '25268761@sekolah.test', '$2y$12$h7Mt4HD30z20brpB0z6pjeO1/dMeMjEJB0oen/I6eAHyg/.rSEw1y', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 20:42:07', '2026-01-06 02:50:17'),
(331, '25268766', 'RIFKI TAUFIQ MUBAROK', '25268766@sekolah.test', '$2y$12$b24zjuGCCWCfIJmHaEgicOda92a2MnZ5LGD76AaXTQXOPI.V6dG7m', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 20:42:07', '2026-01-06 02:50:17'),
(332, '25268772', 'RIZAL FAHMA', '25268772@sekolah.test', '$2y$12$sxeuk3x0xIFLMWJh7fMER.brlBfH8FHo8hjrXt4UJiSA7BP.kTYWe', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 20:42:08', '2026-01-06 02:50:17'),
(333, '25268779', 'Rizky Ammar Said', '25268779@sekolah.test', '$2y$12$G71fXs4Efag84INyIqgGX.fkXMVqY3sYFYwGRQ7Elfu7h1UFiEBSC', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 20:42:08', '2026-01-06 02:50:17'),
(334, '25268830', 'Voza Syafiq Mu\'ammar', '25268830@sekolah.test', '$2y$12$AOhly62TDISDyy6xjOQd5exWcOtXtwKYsm9BLoGiN3Ex.y8kCNvoy', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 20:42:08', '2026-01-06 02:50:17'),
(335, '25268833', 'Wahyu Hanif Saefulloh', '25268833@sekolah.test', '$2y$12$bagtZ2AXlEQ0cVa4eDtiO.Wx.hckn4GC9i2CXNxCv.Nc5.8UWWkXK', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 20:42:09', '2026-01-06 02:50:17'),
(336, '25268841', 'YONKI ARI WIBOWO', '25268841@sekolah.test', '$2y$12$E/lzhO.PCeDfKHvEEbEYhumpOUEJ4BTzC0VpAdxubMQtdlxSTCs.u', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 20:42:09', '2026-01-06 02:50:17'),
(337, '25268513', 'AFIN KURNIAWAN', '25268513@sekolah.test', '$2y$12$pHSfz6WJl1z22OCGifRcUOYIVfziA6lAdmGA5SIE.58.iUL/ZSaBS', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 21:03:42', '2026-01-06 02:53:16'),
(338, '25268534', 'ANALIA PASARANI', '25268534@sekolah.test', '$2y$12$sGvR3VZkq26QivyPGzRhcepvqXH/ttBqoBhEND3M/dhZeb37FuofW', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 21:03:43', '2026-01-06 02:52:26'),
(339, 'acengnsw@gmail.com', 'Aceng Rahayu', 'acengnsw@gmail.com', '$2y$12$1dtUd8hg7xBiAYIB4JG/DuC/WNwPWfiur4ODsH8CgGcyNZthpovTC', 'sakti123*', 'guru', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 21:17:25', '2026-01-06 06:35:22'),
(340, 'faoziachmad15@gmail.com', 'ACHMAD FAOZI', 'faoziachmad15@gmail.com', '$2y$12$AU.gl3yNw8XtILabPGtDP.joTJNWIyZdH2i57z6Zac8nsSi0io72W', 'sakti123*', 'guru', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 21:17:26', '2026-01-06 06:35:22'),
(341, 'adeapriyana331@gmail.com', 'ADE APRIYANA', 'adeapriyana331@gmail.com', '$2y$12$N.lnKrP0CMlKQUO1kkPNouHWPxaSwR7vyCaMFseeJWN21UosA2F/O', 'sakti123*', 'guru', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 21:17:26', '2026-01-06 06:35:22'),
(342, 'afifrider507@gmail.com', 'AFIF WALIYUDIN', 'afifrider507@gmail.com', '$2y$12$AVMEXrkWObeTVTHMhvhiK.iN5ko.TWRim7mr2HPDxTlfi56j8zun6', 'sakti123*', 'guru', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 21:17:27', '2026-01-06 06:35:22'),
(343, 'ajis.eriyanto06@gmail.com', 'AJIS ERIYANTO', 'ajis.eriyanto06@gmail.com', '$2y$12$QPFAn.bGVbPKWNwqy0/zSeZNnXnQfzy1I19iJjpRhF8cGx2SDr7KC', 'sakti123*', 'guru', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 21:17:27', '2026-01-06 06:35:22'),
(344, 'alfitriwidias@gmail.com', 'AL FITRI WIDIA SUMARSONO', 'alfitriwidias@gmail.com', '$2y$12$zen9cbTgbeXIR4Uq/WgO4OuDprm7acrC7QZMMzKuJ9Wo3aZoCR/Q.', 'sakti123*', 'guru', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 21:17:28', '2026-01-06 06:35:22'),
(345, 'aesaputra62@gmail.com', 'ALVIN EKA SAPUTRA', 'aesaputra62@gmail.com', '$2y$12$Uw5wMAErc6MfUK78Wxics..D8/u1gfp1hsq3ReJFDQawDKwg2tN3e', 'sakti123*', 'guru', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 21:17:28', '2026-01-06 06:35:22'),
(346, 'ana12001223@webmail.uad.ac.id', 'Ana Hawa Sholihah', 'ana12001223@webmail.uad.ac.id', '$2y$12$/Aa8/Y9pfQociE/U3KGFI.Ldz8Vqu/GEU334uW6T5YwTfN.2ThXbi', 'sakti123*', 'guru', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 21:17:29', '2026-01-06 06:35:22'),
(347, 'angandiagustrianto@gmail.com', 'ANDI AGUS TRIANTO', 'angandiagustrianto@gmail.com', '$2y$12$cV1wRuLr5gf0SnBL3VM4zO/M.zheDwkXaIuNWy1fia1K1GeMW9p4q', 'sakti123*', 'guru', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 21:17:29', '2026-01-06 06:35:22'),
(348, 'anwar.safii7@gmail.com', 'Anwar Safii', 'anwar.safii7@gmail.com', '$2y$12$l2WFW4l2QbA7raJ84SPi3ephSihqElW5Fegi/zGG36i8nro7GkIvm', 'sakti123*', 'guru', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 21:17:29', '2026-01-06 06:35:22'),
(349, 'atrieusmayshobafaaz@gmail.com', 'Atrieus May Shobafaaz', 'atrieusmayshobafaaz@gmail.com', '$2y$12$.pUCLyxVqOgAvawDNhoCQu0Tkv.jzdwHGHiviRYKhrhLZs4S1OpUi', 'sakti123*', 'guru', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 21:17:29', '2026-01-06 06:35:22'),
(350, 'kurniaaditama07@gmail.com', 'BANGKIT ADI KURNIA UTAMA', 'kurniaaditama07@gmail.com', '$2y$12$IM3zA9VfAhQdKnRm3efQP.Q0n4YYBC7o9W57fWCT25.xAmiUG6QPK', 'sakti123*', 'guru', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 21:17:30', '2026-01-06 06:35:22'),
(351, 'budihartonosmkds@gmail.com', 'Budi Hartono', 'budihartonosmkds@gmail.com', '$2y$12$icDTogO9/Ao2czUhljaRZOyrXH53efmFQN7NIbFxe8/OGSi5rEbOu', 'sakti123*', 'guru', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 21:17:30', '2026-01-06 06:35:22'),
(352, 'usercahyani@gmail.com', 'CAHYANI UMI IMAROH', 'usercahyani@gmail.com', '$2y$12$ebOZ1ax17xMWzjf5/Hnqj.P0lPHnT576cWq4cRc9TjHLNSaaOi8x6', 'sakti123*', 'guru', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 21:17:30', '2026-01-06 06:35:22'),
(353, 'dedenibrahim310@gmail.com', 'DEDEN KHOLIK IBRAHIM', 'dedenibrahim310@gmail.com', '$2y$12$6OMaVh81sleQbJYelIxvyuUVbdkNb4QjC8qrbIoTWRFH8a848P8KC', 'sakti123*', 'guru', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 21:17:30', '2026-01-06 06:35:22'),
(354, 'dekarohmana@students.unnes.sc.id', 'DEKA ROHMANA', 'dekarohmana@students.unnes.sc.id', '$2y$12$GBLzGrvMpfWK7/sPc55qIOD7I6kJ91G2MijAomSzH9tqS6sG3th.e', 'sakti123*', 'guru', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 21:17:31', '2026-01-06 06:35:22'),
(355, 'dewilarasati1985@gmail.com', 'Dewi Larasatiningsih', 'dewilarasati1985@gmail.com', '$2y$12$jc0GUwcofL/b3rpx214a4eAYKvh6SHI9k98X04hoOaufPcdYizxZG', 'sakti123*', 'guru', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 21:17:31', '2026-01-06 06:35:22'),
(356, 'diyahwulandari1234@gmail.com', 'Diyah Wulandari', 'diyahwulandari1234@gmail.com', '$2y$12$r6AuAx2oM24cMuWws4FXWeh7sYQDindVOnZUJA9i36xshQBCoUyPK', 'sakti123*', 'guru', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 21:17:31', '2026-01-06 06:35:22'),
(357, 'ekaoktianaa@gmail.com', 'Eko Oktiana', 'ekaoktianaa@gmail.com', '$2y$12$uTguTL9U8TAzsvAtaZImZ.UGsvnfp/3cXutxPbELg2g/83MCQFsii', 'sakti123*', 'guru', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 21:17:32', '2026-01-06 06:35:22'),
(358, 'farhannurazis23@gmail.com', 'FARHAN NUR AZIS', 'farhannurazis23@gmail.com', '$2y$12$WL91B2rGNtYcnmWcYb9OcuKPBNv48Xy/161WhwAydpylHicXN3w3q', 'sakti123*', 'guru', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 21:17:32', '2026-01-06 06:35:22'),
(359, 'ikhsanmahar@gmail.com', 'IKHSAN MAHARDHIKA ABDILLAH', 'ikhsanmahar@gmail.com', '$2y$12$b31Yhp1EAgj5YgbgIstRtufCnIv8HJAYMixVwELI9d2utAm8SAXsy', 'sakti123*', 'guru', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 21:17:32', '2026-01-06 06:35:22'),
(360, 'tobelherbie53@gmail.com', 'Imam Mujiono', 'tobelherbie53@gmail.com', '$2y$12$.HpphPWx5inCF8gJMO3L9eGyfvB1Ix9Jqgv1.6wCkzmfkQJFd3Koi', 'sakti123*', 'guru', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 21:17:32', '2026-01-06 06:35:22'),
(361, 'ria.irma92@gmail.com', 'Irma Riyani', 'ria.irma92@gmail.com', '$2y$12$8bmt32z9QkhAqRXTtMu6zuMW54TXuFApcu00PyR9CEVQd0LVClXq6', 'sakti123*', 'guru', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 21:17:33', '2026-01-06 06:35:22'),
(362, 'ismasundari27@gmail.com', 'ISMA DWI SUNDARI', 'ismasundari27@gmail.com', '$2y$12$QYRbn3w5KcgdmPJFg7K6LuCcTg8wP1ZgsrZ6qqa4T092nM2TV8wRi', 'sakti123*', 'guru', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 21:17:33', '2026-01-06 06:35:22'),
(363, 'khoirulanwar1994@gmail.com', 'KHOIRUL ANWAR', 'khoirulanwar1994@gmail.com', '$2y$12$cQcTZr3n40v47hpg70THhO61uScjLjRQA6Pzth74SOP5DeoHw3.Jm', 'sakti123*', 'guru', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 21:17:33', '2026-01-06 06:35:22'),
(364, 'lilisafifah1112@gmail.com', 'LILIS AFIFATUL MAR\'AH', 'lilisafifah1112@gmail.com', '$2y$12$MmEsbXO0OOBaJE4x8U1NIeYdyvyWvJo8XjIZMwLyCqr6pp6WpHYzS', 'sakti123*', 'guru', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 21:17:33', '2026-01-06 06:35:22'),
(365, 'listiananuraeni224@gmail.com', 'LISTIANA NURAENI', 'listiananuraeni224@gmail.com', '$2y$12$GYkPf20Dhgv/nee2indOQeaYHA.zgwO6bbfEZmrQu5/axMWvqbKfC', 'sakti123*', 'guru', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 21:17:34', '2026-01-06 06:35:22'),
(366, 'listiyawidiasari23@gmail.com', 'Listiya Widiasari', 'listiyawidiasari23@gmail.com', '$2y$12$NVaWIZjHrMLefM1tab6mC.t5fQI5D/GB7pn1pzizVzKq6aSnu5Mje', 'sakti123*', 'guru', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 21:17:34', '2026-01-06 06:35:22'),
(367, 'mita.puspitasari9201@gmail.com', 'Mita Puspitasari', 'mita.puspitasari9201@gmail.com', '$2y$12$sB9TS1/aZvcSnrJxURBRAOPKCykCzNsOIVbjpEUwGiS.7Z1CchLFq', 'sakti123*', 'guru', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 21:17:34', '2026-01-06 06:35:22'),
(368, 'furiabd2@gmail.com', 'MOCHAMMAD MAGHFURI ABDULOH', 'furiabd2@gmail.com', '$2y$12$o7raFYcSLe5B7f4wdPXghevO3eJcm7/iOX9PnN2LH07k7UWVuWhJu', 'sakti123*', 'guru', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 21:17:35', '2026-01-06 06:35:22'),
(369, 'edogawa.lukman@gmail.com', 'MUHAMMAD LUKMANUL KHAKIM', 'edogawa.lukman@gmail.com', '$2y$12$EfIF.SNPHzLu8qDsepTxqe02776s24a.00x5e2b5uwHgl7s5mYq9S', 'sakti123*', 'guru', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 21:17:35', '2026-01-06 06:35:22'),
(370, 'nikenyunita45@gmail.com', 'NIKEN YUNITA', 'nikenyunita45@gmail.com', '$2y$12$EQq9SiFSU6YL1DJtAa0mRunUrJsX7C6W5zYQCiZ5XqYKehkwSpp/6', 'sakti123*', 'guru', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 21:17:35', '2026-01-06 06:35:22'),
(371, 'nickyrior@gmail.com', 'NIKY TRIYANGGA SETYAWAN', 'nickyrior@gmail.com', '$2y$12$DYR2QlvfdU56bAzLMGmDIOF2l8w1ZiZgKU3P3SwX5.oFWmOOoYsmi', 'sakti123*', 'guru', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 21:17:36', '2026-01-06 06:35:22'),
(372, 'nitaokta151001@gmail.com', 'NITA OKTAVIANI', 'nitaokta151001@gmail.com', '$2y$12$/4peCUB/Eihu7oyFMt1msu1B3uy/594ZVWUtPvLqord2Mkssn8o7q', 'sakti123*', 'guru', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 21:17:36', '2026-01-06 06:35:22'),
(373, 'nugrohopangestuadi17@gmail.com', 'NUGROHO PANGESTU ADI', 'nugrohopangestuadi17@gmail.com', '$2y$12$a82Lidpav0emDjZ5WPAAC.q.hY1zM0ijxvaKOXxK0klHaCW8.Dvy.', 'sakti123*', 'guru', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 21:17:36', '2026-01-06 06:35:22'),
(374, 'agestianinunik@gmail.com', 'NUNIK AGESTIANI', 'agestianinunik@gmail.com', '$2y$12$bMvkpxpNudi5oUNrpT1jqun0vbf.gnf3E3qtS9mGrYADJ3NRqd9xS', 'sakti123*', 'guru', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 21:17:36', '2026-01-06 06:35:22'),
(375, 'nuswantoro04@gmail.com', 'Nuswantoro', 'nuswantoro04@gmail.com', '$2y$12$cThuYY0a5pGhOQJxVYBTs.LFFo2/OtOU0hYMpHHsyD2gObAfH6me.', 'sakti123*', 'guru', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 21:17:37', '2026-01-06 06:35:22'),
(376, 'ppertiwi53@gmail.com', 'PUTRI PERTIWI', 'ppertiwi53@gmail.com', '$2y$12$7LYGTABOPBjqEZNwEhOBh.Ya/9FKWYnSkGHWBgs6hPU.7AHk0jD7e', 'sakti123*', 'guru', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 21:17:37', '2026-01-06 06:35:22'),
(377, 'rahardikaputra96@gmail.com', 'RAHARDIKA FAISAL PUTRA', 'rahardikaputra96@gmail.com', '$2y$12$Px0m8fVmDetDvQGSH2fnN..19QbVukpbd3tlbT/qgTIGpEFPcSEq2', 'sakti123*', 'guru', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 21:17:37', '2026-01-06 06:35:22'),
(378, 'rahmawati17januari90@gmail.com', 'Rahmawati', 'rahmawati17januari90@gmail.com', '$2y$12$cXG6HNor8F8wVuFcN9Zdw.nxRwOuzZEPB.pt.t3HsOR8iLOTpSXPC', 'sakti123*', 'guru', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 21:17:38', '2026-01-06 06:35:22'),
(379, 'rahmirahmiii@gmail.com', 'RAHMI NUR FITRIA UTAMI', 'rahmirahmiii@gmail.com', '$2y$12$gGeF1fQWhm7GrRWSYwJ6EeiXTBATgT5WhEA34iwgv9619Z8xqmFzW', 'sakti123*', 'guru', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 21:17:38', '2026-01-06 06:35:22'),
(380, 'rendypamungkas65@gmail.com', 'RENDY PAMUNGKAS', 'rendypamungkas65@gmail.com', '$2y$12$Kfv91nOFkPIdkKoapR.d9uvAkJa7Du/6CZILBYmNdQ7kxi8vr/N1e', 'sakti123*', 'guru', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 21:17:38', '2026-01-06 06:35:22'),
(381, 'rizqiasfianudin26@gmail.com', 'RIZQI ASFIANUDIN', 'rizqiasfianudin26@gmail.com', '$2y$12$2QskUK0i4VOnjnS6/bCldOVQq.sUrufmxMQmLO3KiV0ONRTJnPql2', 'sakti123*', 'guru', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 21:17:39', '2026-01-06 06:35:22'),
(382, 'tkrsepri@gmail.com', 'Sepri', 'tkrsepri@gmail.com', '$2y$12$uygi/VIoScK9YIJg7BmrUO4KOvZTrKKBCWM5PiTruTLffCBGkfh0K', 'sakti123*', 'guru', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 21:17:39', '2026-01-06 06:35:22'),
(383, 'sitimaesaroh62780@gmail.com', 'Siti Maesaroh', 'sitimaesaroh62780@gmail.com', '$2y$12$oC60bZabH7HgCizqMKsuZepPdaIYuu.3uJmI2buq4xQTYONH5g2F2', 'sakti123*', 'guru', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 21:17:39', '2026-01-06 06:35:22'),
(384, 'meyrachma48@gmail.com', 'SITI MEI RAHMAWATI', 'meyrachma48@gmail.com', '$2y$12$CoIxnC/vJUBQgzi4ZD4kDe.42Glngp/4cASzCcxHdHZ9qAFJ3GvdC', 'sakti123*', 'guru', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 21:17:39', '2026-01-06 06:35:22'),
(385, 'sucisholehaning08@gmail.com', 'SUCI SHOLEHANINGTIAS', 'sucisholehaning08@gmail.com', '$2y$12$Tx.nvs1B7A1s.7x6neIY9.ewOtQgckyBpwveh0q/D.p4ApahQjhB2', 'sakti123*', 'guru', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 21:17:40', '2026-01-06 06:35:22'),
(386, 'sofieladia@gmail.com', 'Sudarti', 'sofieladia@gmail.com', '$2y$12$p.u2E6lfHBK55GavIhaYw.oD4flPcdzSqzkgXxbczBC45cbMucOcu', 'sakti123*', 'guru', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 21:17:40', '2026-01-06 06:35:22'),
(387, 'gits_mjn@yahoo.com', 'Sugito', 'gits_mjn@yahoo.com', '$2y$12$nHQRUoWgqfsvMUzFUWQZmuUlT8GnxylPsw3D1H/5Q3MEmt2mIQ7QK', 'sakti123*', 'guru', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 21:17:40', '2026-01-06 06:35:22'),
(388, 'Suswatispd967@gmail.com', 'Suswati', 'Suswatispd967@gmail.com', '$2y$12$DhA3NlaaQbIrrC74yZkAXeImhbJqOTlb.1/4tFseeWSioKsW0E9wm', 'sakti123*', 'guru', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 21:17:41', '2026-01-06 06:35:22'),
(389, 'wahyuni.arum2019@gmail.com', 'Wahyuni', 'wahyuni.arum2019@gmail.com', '$2y$12$.Us9Imy20uxfOD7sgXfndOKmPEE0fmw2/87sUBPnNYZkyBZknBah.', 'sakti123*', 'guru', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 21:17:41', '2026-01-06 06:35:22'),
(390, 'warmansyah1212@gmail.com', 'Warmansyah', 'warmansyah1212@gmail.com', '$2y$12$xkoHfNcJFMReEIoh2YH41.cGSy2GxcH.InkiUL/Ksf7hsfgxloZNG', 'sakti123*', 'guru', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 21:17:41', '2026-01-06 06:35:22'),
(391, 'carsun007@gmail.com', 'Waryanto', 'carsun007@gmail.com', '$2y$12$O6qbWcBoVrTpkOmRkGmUfOwtiErM9EuYOCr4lVdpojHWOn256h6ZG', 'sakti123*', 'guru', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 21:17:42', '2026-01-06 06:35:22'),
(392, 'arruzfaithfully@gmail.com', 'Wiwi Waryanti', 'arruzfaithfully@gmail.com', '$2y$12$QxThJ2kYltHNjxeEzRRhEOdONgFfnfmXRQkmNgpuj5UnU7je2h3aS', 'sakti123*', 'guru', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 21:17:42', '2026-01-06 06:35:22'),
(393, 'yenirahmawati123@gmail.com', 'YENI RAHMAWATI', 'yenirahmawati123@gmail.com', '$2y$12$tQ6Lp/zmQRAkv0iqjhImmeOgCH4bpFXWB2Yu6GVNQr75q.K5a3g2a', 'sakti123*', 'guru', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 21:17:42', '2026-01-06 06:35:22'),
(394, 'yuniandari771@gmail.com', 'YUNI ANDARI', 'yuniandari771@gmail.com', '$2y$12$f6C/u3pgpC/oG5ES7idfyOQ83tj2w08bKnSGV31AdEha0wwllal2y', 'sakti123*', 'guru', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 21:17:42', '2026-01-06 06:35:22'),
(396, '25268503', 'ABDUL RAHMAN FADILAH', '25268503@sekolah.test', '$2y$12$V30LvVOBzgqCvlcQe/APNeohDaha4I.PdzlTjGh7vC2Gxv71vLkZS', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:12:39', '2026-01-06 18:12:39'),
(397, '25268515', 'AGUNG PRASETYO', '25268515@sekolah.test', '$2y$12$g2gNl30MaFKcEJvdI4r0ROpsZomjJO0s5MqK3TbZ4EdCMwuNIrWbW', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:12:40', '2026-01-06 18:12:40'),
(398, '25268527', 'Alfisyah Gusta', '25268527@sekolah.test', '$2y$12$KnqXG7K07QUxNo076eV7XO9bqJnl769PTs1OfTRt.NHJaW4IZ54SC', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:12:40', '2026-01-06 18:12:40'),
(399, '25268537', 'ANDIKA FIRMANSYAH', '25268537@sekolah.test', '$2y$12$IBqy5HgMsm7XR/C98lyd3.7T4bMEHDDFYVjHKD/HieAyFjD6Hxu5K', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:12:41', '2026-01-06 18:12:41'),
(400, '25268554', 'ASYRAF KHOLIQ ARDANI', '25268554@sekolah.test', '$2y$12$z7y7TSh8J8GQtyUSdERALutazlWPcU2QrPhX72PhyC0AYSbfOBAAG', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:12:41', '2026-01-06 18:12:41'),
(401, '25268562', 'BAMBANG FEBRIANSYAH', '25268562@sekolah.test', '$2y$12$4SVJdgRkkK1NypBKujMoSezeqbs55D8pClXJA8MuIaaza4YAYYxgG', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:12:42', '2026-01-06 18:12:42'),
(402, '25268582', 'DHAFA AL AMIEN', '25268582@sekolah.test', '$2y$12$Amr3NvN4xY/XbMlifpaI7ev3xksf7bCxtfdqLBQ.msEPZpBHZ0llK', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:12:42', '2026-01-06 18:12:42'),
(403, '25268596', 'EVAN DARMA PUTRA', '25268596@sekolah.test', '$2y$12$v/DLYUes9kGbd4gLpNS0XePKsvUZKgla/v5cjZYCPwlICHdLd8sLi', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:12:43', '2026-01-06 18:12:43'),
(404, '25268607', 'Faizal Tusrono', '25268607@sekolah.test', '$2y$12$xyDlTElhc9xrfzUu5RRht.RSoZheGRkYf7DM9VT/YUZNi8TEYLnHa', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:12:43', '2026-01-06 18:12:43'),
(405, '25268608', 'FAJAR HARIYANTO', '25268608@sekolah.test', '$2y$12$AVFYrSFEeoZl8bUJMdVcP.BR54ds1PxrQvgsSzFxcxn.b7867/ACW', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:12:44', '2026-01-06 18:12:44'),
(406, '25268625', 'Hafizd Eri Saputra', '25268625@sekolah.test', '$2y$12$Img2RWqxi8fKprwmqxXJKuTxE5vo8SWfE8siX4vavb6G9uPf7T34W', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:12:45', '2026-01-06 18:12:45'),
(407, '25268627', 'Haikal Syahrul Hidayat', '25268627@sekolah.test', '$2y$12$dgsSZ0IH.rIuzmBJ3GIaf.Y8dcVlIXSW1hhtxQz.P4AJzyRISA8Fm', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:12:45', '2026-01-06 18:12:45'),
(408, '25268636', 'IRKHAMMAFIF ELSA MAHENDRA', '25268636@sekolah.test', '$2y$12$CJ6DMn1oYo8wMdtX4X3P.O8oaoznm3cGXBcq70YQneDPZHuMhXhkC', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:12:46', '2026-01-06 18:12:46'),
(409, '25268644', 'KELVIN ALIF SAPUTRA', '25268644@sekolah.test', '$2y$12$sfrbfLs9y/nNPnHU5XvxX.Ct9u2E2JPU8MxsSLsgbzKWrENTiv2i.', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:12:46', '2026-01-06 18:12:46'),
(410, '25268650', 'KHABIB ANANDA ACHMAD NOFEBRI', '25268650@sekolah.test', '$2y$12$YyyIhItaydxyK44hko9GPuOaZXeQQPfoVfgzDk7y77ulS6.vMmUgC', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:12:47', '2026-01-06 18:12:47'),
(411, '25268679', 'MUFLIH NUR RAMADAN', '25268679@sekolah.test', '$2y$12$iYFNP4Aj4USuA6xJ4kyU7OBgDvIV2XetrLNS/zo2dn4cFsDrh.05m', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:12:47', '2026-01-06 18:12:47'),
(412, '25268683', 'MUHAMAD FALLIH LUTHFI', '25268683@sekolah.test', '$2y$12$bKu4f/ZnNG6rsoSDZlbmKOapJbGTVCuzhAA2OkiuZXfI2GYJTlAwm', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:12:48', '2026-01-06 18:12:48'),
(413, '25268697', 'MUHAMMAD RAAFID SUBEKTI', '25268697@sekolah.test', '$2y$12$1y0.YSfKiLjqvun8Xh7HVu1pg./iUFay5hNWUSMz7MSSNzws7GjGi', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:12:49', '2026-01-06 18:12:49'),
(414, '25268700', 'MUHAMMAD TANAYA JUNIOR', '25268700@sekolah.test', '$2y$12$wCDMuTkmrO3QjUw26plSP.7zd2T1eiXwFwybg9yiQjISqRtRxR2am', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:12:49', '2026-01-06 18:12:49'),
(415, '25268724', 'OKTA RIYAN MUHAMMAD AZHAR', '25268724@sekolah.test', '$2y$12$NEVsO/HKSfGWr.zubC.n.ew7ihKRxbpX0FKh9azsgk9CjECBlcXFS', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:12:50', '2026-01-06 18:12:50'),
(416, '25268726', 'PANGGIH PANGESTU', '25268726@sekolah.test', '$2y$12$RorYZHLwV..dtM0LKsGHgO0oMSTifNRZgO8BRgIlroUzhcQ6RWJ/a', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:12:51', '2026-01-06 18:12:51'),
(417, '25268735', 'RAFA IKHWAN ATTALANI', '25268735@sekolah.test', '$2y$12$FZVhkTOIiqqulgliMGitgu9uoaES07zK7xo2GJn3n01yCnT96VYsS', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:12:52', '2026-01-06 18:12:52'),
(418, '25268763', 'Rifay Bingut Riyadi', '25268763@sekolah.test', '$2y$12$WQx1XLWzTuTsmx3C7KQtS.tfY8meRnlmWhGuCSigRZrTY9L0mNDqu', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:12:52', '2026-01-06 18:12:52'),
(419, '25268771', 'Rivano Mustofa', '25268771@sekolah.test', '$2y$12$h48BqOIUtpBl4ngKZvVpbOe6fspqxQCe6nAIHC/WHYZpGLLzlBetK', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:12:53', '2026-01-06 18:12:53'),
(420, '25268787', 'SAHRUL GANIMA', '25268787@sekolah.test', '$2y$12$oF/Kif2r.l7eiErCQI7qw.RlfcHVlhbgR5UmBioKXg49eOz9zaA06', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:12:53', '2026-01-06 18:12:53'),
(421, '25268789', 'Sandy Bagus Ramadhan', '25268789@sekolah.test', '$2y$12$x4rUsn5TZkALpjYgPPQioefmJDlp13BwcJoLneRVIl/1VMIGBGVfO', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:12:54', '2026-01-06 18:12:54'),
(422, '25268808', 'SULTAN YAHYA', '25268808@sekolah.test', '$2y$12$ZC8FTrZSj8wthVLvMU61Q.VSzKDNA1ewqZu.WGsWCdRsLtI1025TW', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:12:54', '2026-01-06 18:12:54'),
(423, '25268812', 'SYAHMINAN ABIB KHOLISON RAMADAN', '25268812@sekolah.test', '$2y$12$vQ9syrGwMbQOn4l4fHHvgORolX4nBJFCfq2.VLWSpFs5j99q7Usay', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:12:55', '2026-01-06 18:12:55'),
(424, '25268505', 'ABID RAMDANI', '25268505@sekolah.test', '$2y$12$mytuG8giRBugy7CGAvb8hOhL0Nt7Q0tqDZ.Quz./WAu4miCUDIOk2', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:12:56', '2026-01-06 18:12:56'),
(425, '25268509', 'ADIT PRASTIAN', '25268509@sekolah.test', '$2y$12$Uyn6j9GD349ZJW06L/ry/.7D2l9wJH7Cba3cc7HF9l6VJ83dQQnau', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:12:58', '2026-01-06 18:12:58'),
(426, '25268516', 'AGUS ANUGRAH', '25268516@sekolah.test', '$2y$12$.ZTo.Jj0cgzTT31e2j1ifOVyi47fi.BKssU6xwtnCOEWfiLJvzwoG', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:12:59', '2026-01-06 18:12:59'),
(427, '25268521', 'AL HILAL HAMDI', '25268521@sekolah.test', '$2y$12$UZyV6rsuDK5RKhSE6LgXju2drGi3ZJS6KFOIpNrANq6UKqEyikbOy', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:13:00', '2026-01-06 18:13:00'),
(428, '25268526', 'ALFIN RAMDANI PUTRA', '25268526@sekolah.test', '$2y$12$Uwm1lihOnv1nOU0Gftw3ZOtxTPnvOd/rjnGzU6RZ3u6Vgdp6V1NEm', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:13:00', '2026-01-06 18:13:00'),
(429, '25268539', 'ANDREAS SAPUTRA', '25268539@sekolah.test', '$2y$12$hbLgbYYNYEuGjmfIAoDHE.cgAkIJTPP3KkJ69MjbLkIekU86ZoGfG', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:13:01', '2026-01-06 18:13:01'),
(430, '25268548', 'ANTON BUDI MULYONO', '25268548@sekolah.test', '$2y$12$ikIauGJmZFKUHHPKYbTVde6U7QLkrr0q2hyZAvTwU.QC0Sitg91Pi', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:13:02', '2026-01-06 18:13:02'),
(431, '25268575', 'DAVA ANINDRA SETIA PRATAMA', '25268575@sekolah.test', '$2y$12$WDCW2vDfVCiZopfvouUJFO12v3bASiPCb/.Ipm297nV.hjZhjIz.C', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:13:02', '2026-01-06 18:13:02'),
(432, '25268587', 'DIQTA ANDIKA', '25268587@sekolah.test', '$2y$12$Z4G2Mfpc22I.6tw8V2VYrusTAVLzOJH/Ll8OJMiJ7RazuQC/cqEQC', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:13:03', '2026-01-06 18:13:03'),
(433, '25268588', 'DONI IBNU SAPUTRA', '25268588@sekolah.test', '$2y$12$psC19X7mw4ZiyZEGt29mP.E.Jw8h4Yxs27ykOJKP1vJ9AXKvic3Uu', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:13:03', '2026-01-06 18:13:03'),
(434, '25268593', 'EKA MARDIAN', '25268593@sekolah.test', '$2y$12$1QYdQkLm4DyFqp.8qivn8eDBVXGso4U5dnuU6yb7g0vU3/Of6SkGC', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:13:04', '2026-01-06 18:13:04'),
(435, '25268599', 'FABIANO AL FATHIR', '25268599@sekolah.test', '$2y$12$s3UndiT8ERRWRZTgKGXa/.P4slqK4ObHmFmPHAO.5rJHfO7b5Owme', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:13:05', '2026-01-06 18:13:05'),
(436, '25268605', 'FAHRI SAHENDRA', '25268605@sekolah.test', '$2y$12$s8eTPIVAWKZct8Ru5lqEPuov9PI8nY194qF7fuNvSsD8dpX6w2/2i', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:13:05', '2026-01-06 18:13:05'),
(437, '25268606', 'FAISAL NUR HIDAYAT', '25268606@sekolah.test', '$2y$12$sf/uS85N3mFUCyrO.v28g.6i5QD1aQz.i5Yndc3SST5snKEnVb8ae', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:13:06', '2026-01-06 18:13:06'),
(438, '25268609', 'FAJAR PRATAMA KAMIL', '25268609@sekolah.test', '$2y$12$dNMeRpr.s4Q2kLvURFxyX.D0G8aQhu/wkycTIZG26fYJIrYdX0I/O', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:13:06', '2026-01-06 18:13:06'),
(439, '25268619', 'GALANG MENTARI PUTRA', '25268619@sekolah.test', '$2y$12$N9j2Sew7mIeO2MArd575Lu5yiGJ3OCNQDOzihiKumxLpJr1QcjaF6', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:13:07', '2026-01-06 18:13:07'),
(440, '25268628', 'HANIF KURNIAWAN SAPUTRA', '25268628@sekolah.test', '$2y$12$NIZV4i2TcTEQKCghPlk4XOAV5xRdH1Phe.21/FetQHt05/tLytK5.', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:13:08', '2026-01-06 18:13:08'),
(441, '25268634', 'IKO CITRA TRI SATRIO', '25268634@sekolah.test', '$2y$12$Q86FTN2zKvSViU.uPcSEUeOc4sFAybWWScC9wOiqraoYSFo3sftve', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:13:08', '2026-01-06 18:13:08'),
(442, '25268651', 'KHAIRUL MU\'IZZ', '25268651@sekolah.test', '$2y$12$FmT77CAnvekuTakuOAZizO5j6V4KNO4V06ghzOmCpgC8eZ6WLtrT6', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:13:09', '2026-01-06 18:13:09'),
(443, '25268676', 'MOCHAMAD RIVALDY', '25268676@sekolah.test', '$2y$12$msNc7N23DOIudJWd2obhveqmooaEGVgO53.oEm863.gca0WHKrhVG', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:13:09', '2026-01-06 18:13:09');
INSERT INTO `users` (`id`, `username`, `nama`, `email`, `password`, `password_text`, `role`, `foto_profil`, `foto_unggulan`, `is_active`, `reset_password_token`, `remember_token`, `created_at`, `updated_at`) VALUES
(444, '25268682', 'Muhamad Fadil Aldiyansah', '25268682@sekolah.test', '$2y$12$ilqbG7vdC2QHtANib.KQPuuB5G2zcR4cPl3Nn82.bPowJ506P4RCW', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:13:10', '2026-01-06 18:13:10'),
(445, '25268684', 'Muhamad Fathurrohman', '25268684@sekolah.test', '$2y$12$eLnMqZifBkrwRspfpPIn2u3/V8g74AFHdLCCdBPICxx0d1sipGrYa', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:13:10', '2026-01-06 18:13:10'),
(446, '25268851', 'MUHAMMAD RIZKY PRATAMA SAEFUDIN', '25268851@sekolah.test', '$2y$12$5ZN8iSzBauR7lOGULbjF6.JXQvHXnFE.UllB.gIxeCyHaGzSl2Dti', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:13:12', '2026-01-06 18:13:12'),
(447, '25268707', 'NANDA HAFIZ FAUZIAN', '25268707@sekolah.test', '$2y$12$bsFS64QdJ9wE78PPzuPF.OWd2K7W3f1fkMoyCRdlA28iUiyjEmIJS', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:13:13', '2026-01-06 18:13:13'),
(448, '25268714', 'NAZRIL WAHDA AL KHUSNA', '25268714@sekolah.test', '$2y$12$JAoAWrcBfafSCk4ttXt7oedrE6k51RvgIdxjPk6slVv6CHTjhn7Xy', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:13:14', '2026-01-06 18:13:14'),
(449, '25268753', 'Rendika Pratama', '25268753@sekolah.test', '$2y$12$hgSUXZPb4AyRWeayfaZOa.tDasHosUFON1QJ6/tTsDJGIYqVWC20a', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:13:15', '2026-01-06 18:13:15'),
(450, '25268755', 'REVAN ARDYANSYAH', '25268755@sekolah.test', '$2y$12$hHZy3nn4R9VbHbed.2p/f.sDHJNrOAOmBqrSh/EgBUJiihxNlJuOS', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:13:16', '2026-01-06 18:13:16'),
(451, '25268767', 'RIFKY RAHMAT SHOLEHAN', '25268767@sekolah.test', '$2y$12$H10rnyF2iMBN2bltLHHgWOKGA7DXJX8b5uyzBNsHGfFrUa.ZuJw8G', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:13:16', '2026-01-06 18:13:16'),
(452, '25268773', 'RIZAL NU\'MAN SYARIF', '25268773@sekolah.test', '$2y$12$jOtBqBg5QXzojjy.cpHjwudkC3iEy9Wt9IaAnrZdx1GCXnnzm7CN.', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:13:17', '2026-01-06 18:13:17'),
(453, '25268781', 'RIZQI FIRMANSYAH', '25268781@sekolah.test', '$2y$12$2Ecxlb3MfjoEoxNS2mIoEOJIDFt9oDhsmALCYZb3AlXaNdEbGi7.e', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:13:18', '2026-01-06 18:13:18'),
(454, '25268790', 'SATRIA WAHYU PRATAMA', '25268790@sekolah.test', '$2y$12$zyofMPbatoZHRcgUNPEUAuW4o.NuAjecPj9BLzhMNiuBrGFvMyg6i', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:13:18', '2026-01-06 18:13:18'),
(455, '25268807', 'SUBUR ABADI', '25268807@sekolah.test', '$2y$12$N4h2uu2x8EygtB4ZEOeYUuJzSrToOVkgyw.sFEn2Pdg.ELucNBvYe', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:13:19', '2026-01-06 18:13:19'),
(456, '25268816', 'TEDI PEBRIYANTO', '25268816@sekolah.test', '$2y$12$YEGgYl7.w8kLRTZPhBLJh.WvkG54WRXAnp2Ybs4Mgf5rSkX7ZaiwC', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:13:20', '2026-01-06 18:13:20'),
(457, '25268832', 'WAHYU ADI SAPUTRO', '25268832@sekolah.test', '$2y$12$1j843JI.ePwS/sC5y3J1wOe3pQt.rseJjRjLxdWyrUdXaNB0Z8LC2', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:13:20', '2026-01-06 18:13:20'),
(458, '25268836', 'WILY SAPUTRA', '25268836@sekolah.test', '$2y$12$Ppc37mMyBWFHtuwAIV367OceaUh8r1ddd8QfuuorY/gYo7xCdp4Bm', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:13:21', '2026-01-06 18:13:21'),
(459, '25268846', 'ZHARIF KHOERULLOH', '25268846@sekolah.test', '$2y$12$89AlHzp/cg5EWheAjsb1zO6br68JWKSgksEli2ne33PG9E.Ltfiau', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:13:21', '2026-01-06 18:13:21'),
(460, '25268847', 'ZIDAN AMUKTI RAZENDRA', '25268847@sekolah.test', '$2y$12$24ddRH2hnBB/NhbazMvFg.YnbLL5z8JbyQAd24fuYhmL4ORzNqC/C', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:13:22', '2026-01-06 18:13:22'),
(461, '24258082', 'ABHISTA ENDAH PRAMESTI', '24258082@sekolah.test', '$2y$12$avTVuiDpLrPp6xEcLz9uZ.GDwJpcTTC0k2BL5LYmWgAydR/vBBjOe', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:27:38', '2026-01-06 18:27:38'),
(462, '24258092', 'Afifah', '24258092@sekolah.test', '$2y$12$NWLuNmj9aBroiIbp2Z8Rt.9rOCvIjs/62bBGuQx5nOej.HGyWyxTq', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:27:39', '2026-01-06 18:27:39'),
(463, '24258109', 'AL ZAETUN NURIN DESIDIN', '24258109@sekolah.test', '$2y$12$ZKl6VWcYBI7NhdakkloijuC5ZhTWqMDkkffqgFM/IJaarZURTn9Ve', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:27:40', '2026-01-06 18:27:40'),
(464, '24258115', 'ALIFA ALFIYATURROHIMAH', '24258115@sekolah.test', '$2y$12$AXodF5Ouq4TLRcFOQM.3rObekhlkRp./glxgAPU3mPilxjJ4s3V22', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:27:40', '2026-01-06 18:27:40'),
(465, '24258117', 'ALIYA HUSNIYA ALTHAF', '24258117@sekolah.test', '$2y$12$CEdqLgbwBIfCzjKTgro0Vu7wSQ4PeP7.BVaoSRl.Dup3h4bbXzVlO', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:27:41', '2026-01-06 18:27:41'),
(466, '24258121', 'AMANDA LESTARI', '24258121@sekolah.test', '$2y$12$nhU9VgFSPQ2zL5kJlPTidOxsYsq0nlyUQJ/zGjT5XUC.NpWpHIswy', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:27:42', '2026-01-06 18:27:42'),
(467, '24258132', 'ANISA HAWA AZIZZAH', '24258132@sekolah.test', '$2y$12$.yDBpVid7w85VBhWhf08S.LkE2w4CsDK77G.skUWG2OLPoICKRm22', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:27:43', '2026-01-06 18:27:43'),
(468, '24258186', 'DEVITA CANDRA ANGGRAENI', '24258186@sekolah.test', '$2y$12$kQJb6rbFrpEeSERtzkJvn.bO7SRbXRI3d4OV.Kw0CpX4DwQjytCbO', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:27:44', '2026-01-06 18:27:44'),
(469, '24258188', 'Dian Lolita Ningrum', '24258188@sekolah.test', '$2y$12$MNu1DCTMvv8VJxnQmHpmseloEMg5UGdzOwgpcdYj9RcQFzYY0OvLO', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:27:44', '2026-01-06 18:27:44'),
(470, '24258194', 'Dinda Olia', '24258194@sekolah.test', '$2y$12$LYX2pKpPan0ygorgoIEUhecpJHLdnYTKJFLJbxLL4.PXX7rGeeSA6', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:27:45', '2026-01-06 18:27:45'),
(471, '24258195', 'DIVA PURYANI', '24258195@sekolah.test', '$2y$12$T/qOahkWA1U4ykPLbIznLOrjXdmb1mhPYi8ZgBkcVasM8IXC0rwNa', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:27:45', '2026-01-06 18:27:45'),
(472, '24258203', 'ERISA ARYANTI', '24258203@sekolah.test', '$2y$12$QHU1pwgx9ljrXcAnaTrhE.qx9wltbiIcv7AJcg57U.QinL/2fz1jG', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:27:46', '2026-01-06 18:27:46'),
(473, '24258258', 'ISNA FITRI FAJARINA', '24258258@sekolah.test', '$2y$12$C7u.UkbUKE1KNlBjYOahAOuIfBPM35WBY4u0X063OS79ToKyab3SG', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:27:46', '2026-01-06 18:27:46'),
(474, '24258278', 'KHUMAIROH', '24258278@sekolah.test', '$2y$12$5sV5aXEMtxzgtk4TYhqq3ORymWSuYuhAhdMR9YviluU43QHLvHSwm', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:27:47', '2026-01-06 18:27:47'),
(475, '24258280', 'KIRANA LARAS SATY', '24258280@sekolah.test', '$2y$12$uNvFDNvQqxqlzbpJu4Y1qu63lkzUElSQOYTlLgXIHiMYs6EDZWboa', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:27:48', '2026-01-06 18:27:48'),
(476, '24258329', 'NONIK TRIUTAMI', '24258329@sekolah.test', '$2y$12$ucvgdrRlxsTnsvPw3QqoFuRINclAVUA36accu62ZT.fg0KPYbok7m', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:27:48', '2026-01-06 18:27:48'),
(477, '24258330', 'NOVA DIANTI', '24258330@sekolah.test', '$2y$12$vDf8MjSxBAXv7.0pb5dnkue89HXozlDy0ChhMaSJ0AReEdPv4BVTG', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:27:49', '2026-01-06 18:27:49'),
(478, '24258333', 'Nur Fitri Oktavia', '24258333@sekolah.test', '$2y$12$QBvH0iMsAZCItfUGXPP6/uNreysL0IqDI8XnJgzZZKC18O7.hVtIO', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:27:49', '2026-01-06 18:27:49'),
(479, '24258363', 'REGINA APRILIA PUTRI', '24258363@sekolah.test', '$2y$12$QUkk5d/L1h1rhbqnfyVxyua689IcfrQYLojg1mISFUqr1h36o4V52', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:27:50', '2026-01-06 18:27:50'),
(480, '24258382', 'RISKA RAHMAWATI', '24258382@sekolah.test', '$2y$12$zdyKUifF4AdH9QiqKlzMR./lsSD5jpk45rlX6Q0wSr3FxerXWW.fK', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:27:50', '2026-01-06 18:27:50'),
(481, '24258390', 'Rizka Oktavia', '24258390@sekolah.test', '$2y$12$gADYT1qw7KR.sBCUIne5g.RvLmm8.St4Mgx/Vje.C1UwS0cfczhGe', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:27:51', '2026-01-06 18:27:51'),
(482, '24258396', 'RIZQYA AFIFAH RAMADHANI', '24258396@sekolah.test', '$2y$12$U/pSEownYPMoFsAwp07//OJ/QkFxq5ost823eJjrCDuykb.YnedSq', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:27:51', '2026-01-06 18:27:51'),
(483, '24258410', 'SARAH ATHA GHUMAISHA', '24258410@sekolah.test', '$2y$12$rRNpvUpI8nAcCarkFHEy/.Bmiv9naT064f0AGixG4APekmV.fBMHG', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:27:52', '2026-01-06 18:27:52'),
(484, '24258415', 'SEPTI BODI RAHAYU', '24258415@sekolah.test', '$2y$12$//NldYtxVxC0azf56RLdkemys0X0xEBYOf12BbduJyHzpgKM7.ADS', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:27:53', '2026-01-06 18:27:53'),
(485, '24258449', 'TITAN FIRLIYANSYAH', '24258449@sekolah.test', '$2y$12$f0qFJDXwy9T9JYWiqKhMzuDh/EQdH5jN7ADmCW48WJa5Jbqt.unry', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:27:53', '2026-01-06 18:27:53'),
(486, '24258453', 'Tri Yuniarti Sholehah', '24258453@sekolah.test', '$2y$12$mN6xe4hTVkdRkYGcDNZgMecDhC646pJzRr96xJ4nTRQ1tJQKwPHpq', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:27:54', '2026-01-06 18:27:54'),
(487, '24258457', 'UNDATUL AWALIYAH', '24258457@sekolah.test', '$2y$12$G3Zzccv0YKtRpBbbciEIKeOT/POJaiMlNow0HuyM0.qnJK.ICt.SW', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:27:55', '2026-01-06 18:27:55'),
(488, '24258469', 'WENING DWI CAHYANINGTYAS', '24258469@sekolah.test', '$2y$12$3GyeKQXl/O46KCJyrWRW5em90Uj2T78kdxUomkckFRdSsT6CT/N1q', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:27:55', '2026-01-06 18:27:55'),
(489, '24258126', 'ANDARA NURAINI AGUSTIN', '24258126@sekolah.test', '$2y$12$fyAkdPCBgt9igcKiJnGKs.70f6RXJYqCGKglxK/WR863.zxWn8PjK', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:27:56', '2026-01-06 18:27:56'),
(490, '24258127', 'ANDINA FIRASHA ZAHRA', '24258127@sekolah.test', '$2y$12$omDyUFu2oCpl7E0dI85o.urtzlvgrKskOmhB9sl0wYQcAJ0IPBTLm', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:27:56', '2026-01-06 18:27:56'),
(491, '24258139', 'Ardyta Maya Styani', '24258139@sekolah.test', '$2y$12$UDLzUHpJodi3Pfm.3L3Nhe3pERarWj6kvNyv4Y5n0KzIAo8JxRn.C', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:27:57', '2026-01-06 18:27:57'),
(492, '24258146', 'ASIFA SALWA RAHMADANI', '24258146@sekolah.test', '$2y$12$xEZif0.kKi3HVygxj3mTbujCY4zo5Lz5qu3mTxHSk2Z98XKWh5vG2', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:27:58', '2026-01-06 18:27:58'),
(493, '24258185', 'Devika Chelsea Agustina', '24258185@sekolah.test', '$2y$12$uFXyoMnBvqUoMf3AhBwQPOh/V91qdNoQgDxSYjcOj7HkQ7oFBUlee', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:27:59', '2026-01-06 18:27:59'),
(494, '24258187', 'DEWI ALTHAFUNNISA', '24258187@sekolah.test', '$2y$12$VMV/H3a9OEcJlxHkRsVZWeQ9ugEBTu1I5Epmrra8AvYMHKO55m9z2', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:28:00', '2026-01-06 18:28:00'),
(495, '24258193', 'DINA NURMILAH', '24258193@sekolah.test', '$2y$12$iolkdB0m22qMe.hr8.Sq0OQQAV3VpNdC8j0Xkfv6pJEZokvs5WFPq', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:28:00', '2026-01-06 18:28:00'),
(496, '24258218', 'Faridha Shafa Rania', '24258218@sekolah.test', '$2y$12$WYhVS85//bA65ef8C2kNP.A.2cX99A6ej/veHuLd101rRyksvTVtW', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:28:02', '2026-01-06 18:28:02'),
(497, '24258221', 'FATIKA YULI WIJAYANTI', '24258221@sekolah.test', '$2y$12$SI7lCZrQl3AwJ7VHZXLKKuVncGpnNdRlxwzKen3uM6GFNioSRL6j6', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:28:02', '2026-01-06 18:28:02'),
(498, '24258224', 'Febi Dwi Lutvitha', '24258224@sekolah.test', '$2y$12$6VYFfhHaiJscgn100oMQOesdNAigU9xwjMpY3iqyL.Kfez2GFvtn6', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:28:03', '2026-01-06 18:28:03'),
(499, '24258227', 'FEBY ELISA', '24258227@sekolah.test', '$2y$12$2JIMOwODCKjRuX/rfFp1AeBBj9.d/70mjJaSweMfiCBTfX79up/O2', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:28:04', '2026-01-06 18:28:04'),
(500, '24258259', 'Isna Wati Nurhafifah', '24258259@sekolah.test', '$2y$12$fld./XqXgzdljRU78Oau8OQwT0gdRID6cfX35v5avueY8HHowqDs.', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:28:04', '2026-01-06 18:28:04'),
(501, '24258263', 'JESIKA AULIA PUTRI', '24258263@sekolah.test', '$2y$12$QJn8.KXLRphNVb79ML0KWO6PuvWoOK8s3zMpuyVMjewKmawvRAVtG', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:28:05', '2026-01-06 18:28:05'),
(502, '24258276', 'KHARISMA ANNISA PUTRI', '24258276@sekolah.test', '$2y$12$HaXB1BMWYle4LZjhfem13unBnk5DAvK131IyAWddb.33B4oLvtB9.', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:28:06', '2026-01-06 18:28:06'),
(503, '24258284', 'LAILI ISNI RAHMAWATI', '24258284@sekolah.test', '$2y$12$BQyIpCgKrXvS7jO/PhrLvOoEZOI1RMVxASbr.60XXeHYo/c.FYwve', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:28:07', '2026-01-06 18:28:07'),
(504, '24258287', 'LILY SAOMI AGESTINA', '24258287@sekolah.test', '$2y$12$GtnX65h0XIoFrCe9iK.njOYT8rsMlqgNNIXfpO7j1UPAet9yug1Nm', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:28:08', '2026-01-06 18:28:08'),
(505, '24258289', 'LUSIANA NURAENI', '24258289@sekolah.test', '$2y$12$4T.oFKS3wN9dQPYpfNVE6.eyqC42JpW8FIO.MmQA8Km/Quna1bPWC', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:28:09', '2026-01-06 18:28:09'),
(506, '24258323', 'NAYLA FAZA AL ANSOR', '24258323@sekolah.test', '$2y$12$UmT48Zu.sKdYzvbSGKfRiukgktd7UbHqbtutZOBbPc0Mdb/N0o21y', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:28:09', '2026-01-06 18:28:09'),
(507, '24258343', 'Putri Yulianti', '24258343@sekolah.test', '$2y$12$D/X3w36bd5wo3GnI21qyzO1s48nKNgyONLjBG/5LcDYFMOrzGPOgK', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:28:10', '2026-01-06 18:28:10'),
(508, '24258348', 'RAFIKA MIFTAH NURJANAH', '24258348@sekolah.test', '$2y$12$qMAO0BINVmbcZkJ26mtel.DCDHgYTcYrkfsFP6YL1vJ498xVDhJzG', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:28:11', '2026-01-06 18:28:11'),
(509, '24258359', 'Rani Riama Ulya', '24258359@sekolah.test', '$2y$12$PSMm4cwTF9AnYeJqKAnR0uCaeZPLik6U7p83Cs6PAhAYJwRR/mVl6', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:28:11', '2026-01-06 18:28:11'),
(510, '24258399', 'Rozana Humayroh', '24258399@sekolah.test', '$2y$12$05NxkrB1Iwq16vxZO2NAjuIfO0xuNMbmVnZe7/tzm6nJoo4MFBF6m', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:28:12', '2026-01-06 18:28:12'),
(511, '24258408', 'SANTI NUR MALASARI', '24258408@sekolah.test', '$2y$12$z0Cwha/mzK/vEiH8gs.H1eEicOedAYPj8wqmCxBeduf9mJzOwHQZ2', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:28:13', '2026-01-06 18:28:13'),
(512, '24258424', 'SITI NUR AENI', '24258424@sekolah.test', '$2y$12$MXMQFOkOcmSflXW2ZchSAOV.phw.kO14pze6xitlFtjBIxhSlFHGC', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:28:13', '2026-01-06 18:28:13'),
(513, '24258425', 'Siva Rahmania', '24258425@sekolah.test', '$2y$12$vnk3BvWmhXSO9O4SiCFLtOXpN9nzZOqnFw9tqW1V60vP8i.rk9Y0q', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:28:14', '2026-01-06 18:28:14'),
(514, '24258431', 'SUCI NAELA', '24258431@sekolah.test', '$2y$12$fRgFCjFTl.hu/mV8/XKV/eQFuD9Nai9BPDcePFUCzH16uGyo4hNkW', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:28:15', '2026-01-06 18:28:15'),
(515, '24258440', 'SYAILA SALSA NUR HIDAYAH', '24258440@sekolah.test', '$2y$12$wX6JB8VyMlrZZwZQR1wLw.7CRv.UgXrtWWd2wODrF.nftpvNzLyri', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:28:15', '2026-01-06 18:28:15'),
(516, '24258462', 'VELIAN AULIA', '24258462@sekolah.test', '$2y$12$CujKpGxZt3NaV7N2FHyUpOw7rOaBp3U7764i.INW6jfywytzO1XK2', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:28:16', '2026-01-06 18:28:16'),
(517, '24258475', 'YOLANDA JATI LUTNA FATIN', '24258475@sekolah.test', '$2y$12$zBZPKLS0oEaETOV4dGYke.A60Hc1Oy5785x5P2qfti7XecGzIjuqi', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:28:17', '2026-01-06 18:28:17'),
(518, '24258477', 'YULI NUR AINI', '24258477@sekolah.test', '$2y$12$nbvT260VfOHTJby/6Qh2qO6hRi.kcFIn2AKC8kFgUV2htwBXIQz8m', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:28:17', '2026-01-06 18:28:17'),
(519, '24258116', 'Alifnatun Nawal Hikmah', '24258116@sekolah.test', '$2y$12$kFuXOXp25TaG4zTExYQQye0F2F9sbN0LdCTx0z3Y0U0IKAzFEu1rS', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:28:18', '2026-01-06 18:28:18'),
(520, '24258120', 'Alvina Anggraeni', '24258120@sekolah.test', '$2y$12$QRrzg5auFvXY8aHsc8Zx1O/8KPjDNQzhdmjyEEbJPzEJFGjJbsbay', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:28:18', '2026-01-06 18:28:18'),
(521, '24258123', 'AMIMI VIVIAN', '24258123@sekolah.test', '$2y$12$VRMvEsAOItOKcleyv5rHcu0k/.EWcSBHgMGEIzFMloVjLYFrDAaIS', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:28:19', '2026-01-06 18:28:19'),
(522, '24258150', 'Ayu Septiana', '24258150@sekolah.test', '$2y$12$3u4tv1Qmqiw51BdPea2pouLszWd6hAmcEOOm51gapA3UYQSRHAMXG', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:28:20', '2026-01-06 18:28:20'),
(523, '24258162', 'Bunga Dwi Lestari', '24258162@sekolah.test', '$2y$12$ROPh0OjalwQjfF5pvu5dW.dx3gk/Y5ta6FGb8tk34X7.ja7JH585i', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:28:21', '2026-01-06 18:28:21'),
(524, '24258174', 'DECHA NUR FAUZIAH', '24258174@sekolah.test', '$2y$12$g0hh6jrq9D3jWgXlF1JO3efuWOY1GReqL3zDMGgsplXWFlbfTp/fu', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:28:21', '2026-01-06 18:28:21'),
(525, '24258230', 'FINA PUJI RAHAYU', '24258230@sekolah.test', '$2y$12$y6q8cRIT0/ALfbYMLkk.duNeDHzEYoojjVREy1M86gpeP.46tJali', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:28:22', '2026-01-06 18:28:22'),
(526, '24258245', 'Hilma Jakiah', '24258245@sekolah.test', '$2y$12$B6eEHpO60L3mkxmqUCS2AuUVl3clMaDhlOm9GRmLjos41GjqXH54W', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:28:22', '2026-01-06 18:28:22'),
(527, '24258257', 'ISCHA APRILYSTIA', '24258257@sekolah.test', '$2y$12$HDjjC4ouL9C4EkcZ19l5Zu6YZDvrOKPmYt/w3661lHRB6MDf.vPs6', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:28:23', '2026-01-06 18:28:23'),
(528, '24258288', 'LINDA APRIYANI', '24258288@sekolah.test', '$2y$12$iudJBxjQnw5xKMH2bApGmOXdXxrLKCjrAVCfhEKcWS4G69QOrOVS2', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:28:23', '2026-01-06 18:28:23'),
(529, '24258303', 'MELQISSYA', '24258303@sekolah.test', '$2y$12$xcbNkIxgCE3eN9PfQOf7fu0l0BQoRhLxKV3HuKD4h9GCj.y.uIP5q', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:28:24', '2026-01-06 18:28:24'),
(530, '24258318', 'Nadlirotul Ruwaidah', '24258318@sekolah.test', '$2y$12$b4K8k.zj9kwKwwOXvlM6MOjtm5Dsf15ZTtLCrnFESBxtwzfR7UMmC', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:28:24', '2026-01-06 18:28:24'),
(531, '24258319', 'NAJID WAROHMAN', '24258319@sekolah.test', '$2y$12$k2YZS04DBDNT76CKK.71q.6KcRNdvKG9pgARP8rjd4rN3TzUgf6we', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:28:25', '2026-01-06 18:28:25'),
(532, '24258321', 'NANI APRIYANTI', '24258321@sekolah.test', '$2y$12$NpdD4I2saTRiL52KgVXnD.FMtX9krXbdsmsnXN2nh74TyYxyocKXi', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:28:25', '2026-01-06 18:28:25'),
(533, '24258325', 'NAZWA OKTAVIA AZAHRA', '24258325@sekolah.test', '$2y$12$DKoGlvRTPtu8pb8nUx8aaeYHpyLgBgs/HfiVf6dLgxKxhSC1Fozye', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:28:26', '2026-01-06 18:28:26'),
(534, '24258349', 'RAHMA OKTA FITRIYANTI', '24258349@sekolah.test', '$2y$12$Hi9WzkgSfwMFUkkDu5bMWO7c3NApBj6zjQlmY.1O4rEWDtb0gYnYe', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:28:27', '2026-01-06 18:28:27'),
(535, '24258361', 'REFA TANIA', '24258361@sekolah.test', '$2y$12$1Q2ZAPykBRiNjJ/PobaWJeqitSq9SZsFXHQ1hhg2vTLDw8BkgYjh.', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:28:28', '2026-01-06 18:28:28'),
(536, '24258379', 'RINDI PUJI ARFIKAH', '24258379@sekolah.test', '$2y$12$UfIDF.QZl9ZcFBYGUdlsD.7e2qQlALC4OJ2YIr0I47DmQ7bCF17qu', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:28:29', '2026-01-06 18:28:29'),
(537, '24258387', 'Rivka Olivia Anggita', '24258387@sekolah.test', '$2y$12$1Y3OEKsLK5kEgakFZciYnuEX6PYa8rauV/J5X7hwB35AmVlS.UYJu', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:28:29', '2026-01-06 18:28:29'),
(538, '24258409', 'SARAH AMELIA', '24258409@sekolah.test', '$2y$12$E6kDnUWOWB7jiOlZBb/DAOiqi7srXlrxtbHg.XLAYUypdUk9KmfY.', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:28:30', '2026-01-06 18:28:30'),
(539, '24258416', 'Serina Septiana Putri', '24258416@sekolah.test', '$2y$12$Gf5fRzE7z5FOvDm1IhdeBueDDzQM.R9M8X5NFWac7Bd9NBJumegfW', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:28:30', '2026-01-06 18:28:30'),
(540, '24258421', 'SIPA MAULIDA', '24258421@sekolah.test', '$2y$12$KQeisXMNfN0cewPt0D4d7u3ZhKaMuEc7BOUbmplBVeYEGqrkvu/q6', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:28:31', '2026-01-06 18:28:31'),
(541, '24258422', 'SISKA APRIANI SUNDARI', '24258422@sekolah.test', '$2y$12$QBe.R/7wTLTufgqsYlfXuevFtvQj3l/AXR3kMG9BCwSJRPpV0O9ga', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:28:32', '2026-01-06 18:28:32'),
(542, '24258423', 'SISKA RAHMAWATI', '24258423@sekolah.test', '$2y$12$o0y1p0G.UBSoXEhdcSit5uSKxN4FKUtPh1pGlyGeMrVaysZoVcw..', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:28:33', '2026-01-06 18:28:33'),
(543, '24258429', 'SOPINA DULHIJAH JAHRA', '24258429@sekolah.test', '$2y$12$EB2yGwC2Spp1aXJL.QaGv.f6dYJEjO20mHBNcYZ7673sP1yRHbJXi', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:28:33', '2026-01-06 18:28:33'),
(544, '24258430', 'SUCI NABILA RAHMADANI', '24258430@sekolah.test', '$2y$12$jBCWRhznS1Y62tm6gbBDSOfzAI2hRInXUc7XjNfKlkqc5KYGd77Hq', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:28:34', '2026-01-06 18:28:34'),
(545, '24258448', 'Tita Efiana', '24258448@sekolah.test', '$2y$12$bo9etKX5/JtANYW53h3FbukWsI6fqhDVf4hKfsPtVOgyIJ7h12Mxi', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:28:34', '2026-01-06 18:28:34'),
(546, '24258450', 'TITI WIDIYA NINGSIH', '24258450@sekolah.test', '$2y$12$aIIztIuXE7XbmS.eN6POx.AY4VT4u/iSZkkJXZ/u4WAFp7AvPxWh.', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:28:35', '2026-01-06 18:28:35'),
(547, '24258463', 'VERLIN OKTARINA', '24258463@sekolah.test', '$2y$12$8FWvUh7LsXULC1mohQec9O5kvIHvbIzTpiPkp.hnNwxiH/1snti2S', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:28:35', '2026-01-06 18:28:35'),
(548, '24258466', 'WAFADIYA AERLA', '24258466@sekolah.test', '$2y$12$wLAu7B5sGR3c9wrTs9inWOz/dx2jLjR1Dv851ZgaIKIfZwekVm2eq', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:28:36', '2026-01-06 18:28:36'),
(549, '24258470', 'WILDA NUROHMAH', '24258470@sekolah.test', '$2y$12$ebiEVlNBljGdie3.aFm5F.K/L1hKlWTmlek/XdE7/G3fR0HLueel6', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:28:36', '2026-01-06 18:28:36'),
(550, '24258098', 'AGUNG SUKRADI', '24258098@sekolah.test', '$2y$12$7UGObQcxBJgIMuoDuqQPR.2aWEOGxlT45EglS/EwD6nJawdwMPr7C', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:50:04', '2026-01-06 18:50:04'),
(551, '24258104', 'AISYAH NURUL AZKIYA', '24258104@sekolah.test', '$2y$12$ZzAEeTVmzfgu8Fgwx/ZL9uuqHdi1bWFZKC6b7VTiiuqPHBsMV/dsK', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:50:05', '2026-01-06 18:50:05'),
(552, '24258488', 'CAHYA ADI PAMUNGKAS', '24258488@sekolah.test', '$2y$12$X4s7ScQfoKC5Vy.lnF/ZAeFUuO5CYAoPrUDiuZ06/rTTz6pQxOOTy', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:50:06', '2026-01-06 18:50:06'),
(553, '24258165', 'Chesya Dheana Moudzah', '24258165@sekolah.test', '$2y$12$eEHTxEOZDjjO8Wt.rHmxlOF28iN5lk9QWQb0D0HsKVhJy2ipIuosK', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:50:07', '2026-01-06 18:50:07'),
(554, '24258171', 'DAPINA NURPADILA', '24258171@sekolah.test', '$2y$12$7e96uCrtIx6GRBMsWOtdFOIuyjwWcwyFqb8wgYqeQO5ocKx6TgXEq', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:50:07', '2026-01-06 18:50:07'),
(555, '24258172', 'Davit Firmansyah', '24258172@sekolah.test', '$2y$12$ILcWQwLFIt2joWUyBTlhYeBDd0v5v2eh/G5rN4kT9vodA3FmWUFYS', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:50:09', '2026-01-06 18:50:09'),
(556, '24258231', 'FINA SYNDI AULIA', '24258231@sekolah.test', '$2y$12$nf.os4PoYzzDUp1T2tek5uCXzXzSdWNKa2i4yiRDValB68IDsmPMC', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:50:09', '2026-01-06 18:50:09'),
(557, '24258240', 'HAJRI MAULANA ADRIANSYAH', '24258240@sekolah.test', '$2y$12$c5ZpgHfotbBy9sMaYRIZlu5.tC97gBFdNlhCkaJjExM8grnfr8pW.', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:50:10', '2026-01-06 18:50:10'),
(558, '24258241', 'HANDIKA ADI FIRMANSYAH', '24258241@sekolah.test', '$2y$12$R2Yly725.ExzvavtOc20ZeVqUpvpTMO1uetlJT6bgWUUWrfHC7ULK', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:50:10', '2026-01-06 18:50:10'),
(559, '24258253', 'INDRA DERMAWAN', '24258253@sekolah.test', '$2y$12$/7sn7Zndnq5iMipStsAAhu0BaRn0cx4H8qHE24udaebKRBLsuIwUy', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:50:11', '2026-01-06 18:50:11'),
(560, '24258255', 'IRPAN SETIANA', '24258255@sekolah.test', '$2y$12$X/Et3a9IvrK/o0/UfwZT0OGqF05VFA3MUm8h.0U6xIQCcQ6bN0UEm', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:50:12', '2026-01-06 18:50:12'),
(561, '24258270', 'KELVIN ADRIFIANO', '24258270@sekolah.test', '$2y$12$W7qxQRXb2dDJ0Gd25VSNZOVlUnwjrAIDMECZZamPpLkzBf7trK4ru', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:50:13', '2026-01-06 18:50:13'),
(562, '24258285', 'LEPI JAKARIA', '24258285@sekolah.test', '$2y$12$sNExZH7q6F24zqUqcc3YHu2Vv/vaZCb4ipNAA6/5DlES905QRnzTS', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:50:13', '2026-01-06 18:50:13'),
(563, '24258286', 'LESTARI DEWI PRIHATIN', '24258286@sekolah.test', '$2y$12$EmfTVqsGBqbswOepBYrNKO7f0liyTDLNplxUztfmGQ1tmQp8ElNjC', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:50:14', '2026-01-06 18:50:14'),
(564, '24258295', 'MAHIR ISMA RAFI RABBANI', '24258295@sekolah.test', '$2y$12$6qvRWw6FK4XRMPcvXxBFCOeptOB7oTdqs2EvMHjdK1s1ncEPk3bnW', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:50:15', '2026-01-06 18:50:15'),
(565, '24258334', 'NURDIANA PRATIWI', '24258334@sekolah.test', '$2y$12$7fYzR/Z7JFHcvZ5Yivii4OKi3dc0Yt4pwrhFPPIpeeBFCG6Z/8Dni', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:50:16', '2026-01-06 18:50:16'),
(566, '24258350', 'RAHMAN ALFARIZI', '24258350@sekolah.test', '$2y$12$KDJK3T7jYRqAut/YnQRpOeT44gzxDpUN.mGefl5Ik83jKxi1u9.SO', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:50:18', '2026-01-06 18:50:18'),
(567, '24258353', 'RAIHAN GILAR PRASETYO', '24258353@sekolah.test', '$2y$12$2wkx8H4.JLx3oo6lX0Le1eN7ZUEHWRN7.Hi9RUN.3GhZ4z4YQvQLO', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:50:18', '2026-01-06 18:50:18'),
(568, '24258358', 'RAMZI ACHYAR', '24258358@sekolah.test', '$2y$12$agIZmyu8WFjywV5iYVWuw.ipwv.LR2C95TFAugeJk.oCu0omwHXqq', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:50:19', '2026-01-06 18:50:19'),
(569, '24258369', 'Revan Habib Pratama', '24258369@sekolah.test', '$2y$12$nfuuqpRbplITyLpocbucteIXrmVEGFwQzTMuLpq9yyiFEApSxxNPa', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:50:20', '2026-01-06 18:50:20'),
(570, '24258370', 'REYHAN GANESSA', '24258370@sekolah.test', '$2y$12$HXRmH5rdlfdFuM1/jHArg.R5Kg3xTh26JvUI.f8RB7VeA/7XcI5l2', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:50:21', '2026-01-06 18:50:21'),
(571, '24258376', 'Rifka Septya Putri', '24258376@sekolah.test', '$2y$12$OLDzLE50rU4doqpMufolH.B/1hbA9p9PgYtmys9Az5j48X7Hl/H8y', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:50:21', '2026-01-06 18:50:21'),
(572, '24258380', 'RINI FAJARINA', '24258380@sekolah.test', '$2y$12$7gydud3a3ujY4Ttt97gdgOnfA0yNxFAxhHNEUajjvWeT9VR1BKOOK', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:50:23', '2026-01-06 18:50:23'),
(573, '24258405', 'Saeful Rohman', '24258405@sekolah.test', '$2y$12$PF78BUIaukX7BwBOCdmYjuWlUu1sdkfl/4XXuH5El5TyiygE7Jnxi', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:50:23', '2026-01-06 18:50:23'),
(574, '24258414', 'SEMMY RADITYA', '24258414@sekolah.test', '$2y$12$Hklz.vgEjdfqfat1mXJBbeXlzciIJApodeZTVGvEfF5CQXwNr.ii2', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:50:24', '2026-01-06 18:50:24'),
(575, '24258419', 'SILFANI ISNA RAMADAN', '24258419@sekolah.test', '$2y$12$caUf.c2eeMl82YfELjbNdem8OG3p6P/NVAp5IE6kV0PVTbSmqZSxu', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:50:25', '2026-01-06 18:50:25'),
(576, '24258420', 'SINTA PUSPITA', '24258420@sekolah.test', '$2y$12$3y..QGcvtptKdhj3JEm9Y.ncjqmiS0MRlNSgKZKtWxSTTLbixGAVu', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:50:26', '2026-01-06 18:50:26'),
(577, '24258454', 'TRIO SAPUTRA', '24258454@sekolah.test', '$2y$12$k1WXG8TlSn1YZUX6pyNbb.9uRxyY5PeDCDj/76DeH1saxfaFCsYlW', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:50:26', '2026-01-06 18:50:26'),
(578, '24258459', 'USMAN SAPUTRA', '24258459@sekolah.test', '$2y$12$05mt5SixonwmDSeEPWwWteTXomATkO8IYsVzIEAiZdmv7qU.jWpCW', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:50:27', '2026-01-06 18:50:27'),
(579, '24258461', 'Vanny Putri Anggraeni', '24258461@sekolah.test', '$2y$12$BwxJfCyQ.YFcEr4goCu17e5ZJKAa.K85K7wXJYLHiYGBD845.X/mW', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:50:27', '2026-01-06 18:50:27'),
(580, '24258467', 'WAFI AMRU BAIHAQI', '24258467@sekolah.test', '$2y$12$QFE7bVCsDia4KyscwRJZt.id6zxzJUOnel4NDM8TxB79urumOngQG', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:50:28', '2026-01-06 18:50:28'),
(581, '24258482', 'ZIKRI ILHAM FIRMANSAH', '24258482@sekolah.test', '$2y$12$wc1jUPFAAFo5LrPV0OxKsOWRb0YtsK7YO4Bwky6Pvyj1xKtw2GQfC', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 18:50:29', '2026-01-06 18:50:29'),
(582, '24258108', 'AL NURHASANAH', '24258108@sekolah.test', '$2y$12$Uex6yFAgDX8iKNTbzFAvr.pXWKBFskqugNWtbv6L9fktPS7FdBTse', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 19:03:06', '2026-01-06 19:03:06'),
(583, '24258125', 'Ananda Dwi Saputra', '24258125@sekolah.test', '$2y$12$Ig/HHyx/Q.4elXRZt6a.MuCo6wW9esGgngm6B0YVMmDhLUkkxIG3a', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 19:03:07', '2026-01-06 19:03:07'),
(584, '24258147', 'ATHIN HIJDAROH DUROTUROFIKOH', '24258147@sekolah.test', '$2y$12$72tahy5nJCNpJ5JVZ3YNdui/DotP/xAnwa3ZUPeAeg/ZjGwVIpNT2', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 19:03:07', '2026-01-06 19:03:07'),
(585, '24258149', 'ATIFAH NAYLA', '24258149@sekolah.test', '$2y$12$GmVPQnLuN0PN0QwMEvM3EONSAl787m/AhONpqlJetgKcSUXUxjeKu', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 19:03:08', '2026-01-06 19:03:08'),
(586, '24258161', 'Budi Ramadani', '24258161@sekolah.test', '$2y$12$CR19e10Y2z6K7pWpJAN5iek3h69fDUPdvuJGW/bVAStd7drifZftm', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 19:03:08', '2026-01-06 19:03:08'),
(587, '24258164', 'CELSI APRIYANI', '24258164@sekolah.test', '$2y$12$nOGT/O3mJBIWatZGbv6m.OSnWk5Ayb6zI5FXChkX2pmif8U97EpU6', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 19:03:09', '2026-01-06 19:03:09'),
(588, '24258184', 'DESTIA APRILLIA PUTRI', '24258184@sekolah.test', '$2y$12$f/ec9fprQyMh3pzdriQJGebUwSmHv91rFYTZnRl2ZsG92kZ3f8kY2', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 19:03:10', '2026-01-06 19:03:10'),
(589, '24258192', 'DIMAS PRASETIO', '24258192@sekolah.test', '$2y$12$u8l0hR7MmrSXCdM8NKmOFu40qi//tEl7P.WFBhj7Lof8oXtQjpmTe', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 19:03:10', '2026-01-06 19:03:10'),
(590, '24258220', 'FARIS ZAIDAAN', '24258220@sekolah.test', '$2y$12$k6CHYntQCyyuXIsJjNQFZOCaKLAZWTny3nYJIshiysyfPeFEValBK', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 19:03:11', '2026-01-06 19:03:11'),
(591, '24258233', 'GALIH PRATAMA PUTRA', '24258233@sekolah.test', '$2y$12$TLtJoo30sriRdg9BsU6hhuZWe76nrWZzJJbJYfF/5pDPVEPTJ4nJW', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 19:03:11', '2026-01-06 19:03:11'),
(592, '24258242', 'HANUM SETYA NINGSIH', '24258242@sekolah.test', '$2y$12$12XygLWMc7KogUJEJt49POx.8qk8vDlYg4Xc9TznXV/49bdOMaMoe', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 19:03:12', '2026-01-06 19:03:12'),
(593, '24258490', 'IDA NURAENI', '24258490@sekolah.test', '$2y$12$ENAkMl9SEnfJLlX7Fw4U/umFW.d9S0zwHZXGhvUzj9WhIkW6a5DjG', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 19:03:13', '2026-01-06 19:03:13'),
(594, '24258250', 'ILHAM', '24258250@sekolah.test', '$2y$12$Ha793LzJuhk4FXCZndnmLeIgruLw5NYb/7Sw7OcuzP8OZxesLXE4m', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 19:03:13', '2026-01-06 19:03:13'),
(595, '24258254', 'IQBAL AKDARI', '24258254@sekolah.test', '$2y$12$u0QyRafipLoy1PcjIbyYteZ4tzQyYsGSgzyFO/67UQw5wNAJUF1xi', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 19:03:14', '2026-01-06 19:03:14'),
(596, '24258273', 'KEYILA ANASTASYA', '24258273@sekolah.test', '$2y$12$0s.N097h65NbyP77HLMYk.VOB07W4outb8HLIY4VglFO56yOcZDFi', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 19:03:14', '2026-01-06 19:03:14'),
(597, '24258292', 'LUTFI RAMADHAN', '24258292@sekolah.test', '$2y$12$A35xfCl95spPwNnJ1q4jD.AYHJwtU3/DbebcqNoe7br0XHX7qhOLm', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 19:03:15', '2026-01-06 19:03:15'),
(598, '24258336', 'OCCA SUBANDI', '24258336@sekolah.test', '$2y$12$4Q4H4QkPCIQC05s.G3BBNeNBFr0SnxCTiPtWH4uoGTurXhbJ8/xbG', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 19:03:15', '2026-01-06 19:03:15'),
(599, '24258340', 'PASHA DZIKRI RAMADHAN', '24258340@sekolah.test', '$2y$12$L1VRPmmiTxcquvSs6CU4peDQkFYOGCB1R8DVROAWtdcdkop22diDy', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 19:03:16', '2026-01-06 19:03:16'),
(600, '24258341', 'PERI GUNAWAN', '24258341@sekolah.test', '$2y$12$P88PUB4uEDDRCxAk.FcFm.YUMAi6Fu3dDUex5vaaQYGwON/u69Hqu', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 19:03:17', '2026-01-06 19:03:17'),
(601, '24258342', 'PUTRI RAHMADANI', '24258342@sekolah.test', '$2y$12$U0RAytZwqtizVK9XBXkc..axHHnubl0LS77qktBqHRqd//0Q1jGHG', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 19:03:17', '2026-01-06 19:03:17'),
(602, '24258346', 'RAFA MAULANA', '24258346@sekolah.test', '$2y$12$MztWaBvAILub0EvvUXNZVuEezmZghqf9pqA5cFE/UwI.LjaKNOlZe', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 19:03:18', '2026-01-06 19:03:18'),
(603, '24258351', 'RAHMAT DANI', '24258351@sekolah.test', '$2y$12$dz7Acy9BQL6NDfNNwytuFuDLS.WUHZQq9/ZSUUG3w2YvcZQr0ubKW', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 19:03:21', '2026-01-06 19:03:21'),
(604, '24258365', 'REHANS FREBIAN', '24258365@sekolah.test', '$2y$12$wJKWssOI4BwkJ7xxW2/J3eTK7q1W3wT3b/awnaR8k1.jxO8DFEN1K', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 19:03:21', '2026-01-06 19:03:21'),
(605, '24258381', 'RIRIN ARYANTI', '24258381@sekolah.test', '$2y$12$EToPkTtzoIfDO0UDE.sVVupoNx31wS3DwlY97VNl8Xlsc5guHCwUa', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 19:03:22', '2026-01-06 19:03:22'),
(606, '24258388', 'RIYANTI MEI LATIFAH', '24258388@sekolah.test', '$2y$12$vZ/f./uV2Lf0/KV.P0./jOWk0K/Mq3DLKfvg2jM.AjHkP6c0A84Fi', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 19:03:22', '2026-01-06 19:03:22'),
(607, '24258403', 'SABILAL MU\'ARIF', '24258403@sekolah.test', '$2y$12$EIuIlZsU46g.l6wLJ32K0uGeB75JKwbfkJSWn8X2hc..vEZcPta/K', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 19:03:23', '2026-01-06 19:03:23'),
(608, '24258404', 'SABRINA SALSABILA', '24258404@sekolah.test', '$2y$12$ijF6uqDccuOho5iPcrj4gOo9WnVBkCT/w0/sZyc9lBtRogmpYdcsW', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 19:03:24', '2026-01-06 19:03:24'),
(609, '24258406', 'SAHARA INDRIYANI', '24258406@sekolah.test', '$2y$12$QvoZNQmSBJgsxINGrpUka.83Sy.gEJ.WWs.vctVpUjPjbRXztmVl6', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 19:03:24', '2026-01-06 19:03:24'),
(610, '24258445', 'TEGAR PUTRA PAMUNGKAS', '24258445@sekolah.test', '$2y$12$UZ81k.xs1CpdAR2LBdi5Xu7UE1KA6HHkanY8PlvgRCd/dwM/bYmvy', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 19:03:25', '2026-01-06 19:03:25'),
(611, '24258447', 'TIARA KASIH', '24258447@sekolah.test', '$2y$12$lZROSwcwMtNYYLd8l4ULHu934w4qxVeME8Duw4ACUUAm2sNBtAUJy', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 19:03:26', '2026-01-06 19:03:26'),
(612, '24258478', 'YUSUF ALFARISY', '24258478@sekolah.test', '$2y$12$0L9yYr3o/60uM/9tqq70UuzzLWal.bhsuhBl9a1RHYIzSy/AP.bDO', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 19:03:27', '2026-01-06 19:03:27'),
(613, '24258106', 'AKENZO SALVARO', '24258106@sekolah.test', '$2y$12$WHXtZcFXv3CoHltt5uQn7.owpqklS0JYxquvPBedOse.K428bdR1m', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 19:03:27', '2026-01-06 19:03:27'),
(614, '24258118', 'ALNISA NUR UTAMI', '24258118@sekolah.test', '$2y$12$ITSCauzHM3bvQ7k0PraYrOxeN0GOLP8t6nKSG.qp5peoKGR4LuP2e', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 19:03:28', '2026-01-06 19:03:28'),
(615, '24258122', 'AMANDA PUTRIYANI', '24258122@sekolah.test', '$2y$12$kLUDTZas3C5kP/fkchHw6OYRWcpc00F6DNtUJ1Q17EtM5PFQaPu9y', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 19:03:28', '2026-01-06 19:03:28'),
(616, '24258143', 'ARKA PUTRA KRISTIAN', '24258143@sekolah.test', '$2y$12$Pv455wIswTPRjGhpn8u6yOlf2urVPSxElv/HO7uGLAi1DMtwFpBZy', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 19:03:29', '2026-01-06 19:03:29'),
(617, '24258148', 'ATIF ALMAS RIFQI', '24258148@sekolah.test', '$2y$12$NLOp8pv6eBaki3bY2PhRFO1ClanFWbXVpnjoJt2nPATnB8VLubyQm', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 19:03:30', '2026-01-06 19:03:30'),
(618, '24258483', 'AZZAHRA TRI ARDA RAMADHANI', '24258483@sekolah.test', '$2y$12$RWxVAUaI2TvdJRlmVa2SfOzpHshTAY4g18Sx/sAudfk1vl7MS2Dw6', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 19:03:30', '2026-01-06 19:03:30'),
(619, '24258158', 'bilal', '24258158@sekolah.test', '$2y$12$Iv9t2j5u1V85UEhBZgRs6.v16A..exCf.yXvQo1U.7DwWSpXn4.ia', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 19:03:31', '2026-01-06 19:03:31'),
(620, '24258160', 'BINTANG PRABOWO SUMARSONO', '24258160@sekolah.test', '$2y$12$BGkKSQnassP.AiJUk94jN.zNurZFFEnv834yxOlmC0tJzrc3wkPT.', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 19:03:31', '2026-01-06 19:03:31'),
(621, '24258183', 'Desta Pramono', '24258183@sekolah.test', '$2y$12$u.UqPK7hEQlIf7iA7y36o.CAFINI.bnmeuHV388PZosqOdnDpU/qy', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 19:03:33', '2026-01-06 19:03:33'),
(622, '24258196', 'DIVA SUCI SAPUTRI', '24258196@sekolah.test', '$2y$12$Bf06t0UfPrAEGv8A0mR3aO6A0yrR2cxjucrfwWORA6bxrPJ2SjLbC', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 19:03:34', '2026-01-06 19:03:34'),
(623, '24258204', 'EVA SELVIANA', '24258204@sekolah.test', '$2y$12$t6AfSJbiw3N4tgUanXkPhOFwauSBwTJ880AmwqfP.0tWxhLU00N8m', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 19:03:35', '2026-01-06 19:03:35'),
(624, '24258215', 'FALAH RADITIYAL SAPUTRA', '24258215@sekolah.test', '$2y$12$HkkZ8KhxlD.qBXQvcs2z/O/El.XZnG/K/rkzqRxAHlqm8vqNp8LFK', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 19:03:35', '2026-01-06 19:03:35'),
(625, '24258225', 'FEBRIA AULIANTI', '24258225@sekolah.test', '$2y$12$GIkO0h0BlWy1trPWktDUNeWC2Qfcm0Lce2hTqMZEP2B2/9uKrzpRS', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 19:03:36', '2026-01-06 19:03:36'),
(626, '24258239', 'GILANG RAMADHAN', '24258239@sekolah.test', '$2y$12$KGtcgyWldItW9L8s5EEX0uXDoBlhxwz8ggbgTs3c1T9RJwone4hAm', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 19:03:37', '2026-01-06 19:03:37'),
(627, '24258243', 'Hesti Kurniawati', '24258243@sekolah.test', '$2y$12$rsaB7qnnLtOGXUkqabT.XOvDSM46R3I8XrwykF4rH7cCNu6TAjzXC', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 19:03:38', '2026-01-06 19:03:38'),
(628, '24258247', 'IBRAHIM WAHYU ILHAM', '24258247@sekolah.test', '$2y$12$9NWrGNTDY1YSVXHf9.gtb.D1NiZFH3MjrE5/sOTTjvC7eBc9OiHum', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 19:03:39', '2026-01-06 19:03:39'),
(629, '24258261', 'JELITA AULIA', '24258261@sekolah.test', '$2y$12$Yy2u5hnrSAc4Sb5lJCTdeu0wc8g564TEBGPxn6c5wuUWYjvzOK.Ym', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 19:03:39', '2026-01-06 19:03:39'),
(630, '24258262', 'JENI DWI KARTIKA SARI', '24258262@sekolah.test', '$2y$12$hce6q6KAYbz3N6rA2M5MSuChsmxbulJC1462gZBa1yp6TxBpYi0Fy', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 19:03:40', '2026-01-06 19:03:40'),
(631, '24258264', 'JIMMY KURNIAWAN PUTRA', '24258264@sekolah.test', '$2y$12$0DnCmC0utpNA7pPLYFIuwu6OUouZN4L2Herm85JoUpm5lrmzcYqsO', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 19:03:40', '2026-01-06 19:03:40'),
(632, '24258269', 'KARISSA NAYA SYIFA PUTRI', '24258269@sekolah.test', '$2y$12$QRIAIFYClQpX21lB7D6O7.hClg9tkZxqFuGNkS.ZOhkJ7uv72H9Zi', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 19:03:41', '2026-01-06 19:03:41'),
(633, '24258274', 'KEYSA OKTAVIANI', '24258274@sekolah.test', '$2y$12$9r4GtuoaXd6Vo4MhULuQ..pVDDc/agqswy4D7Vv.8D2H8UI/8inci', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 19:03:43', '2026-01-06 19:03:43'),
(634, '24258282', 'KUR CHELAWATI', '24258282@sekolah.test', '$2y$12$4RYekhI1AaHNH4GugDgOe.m0LTFB2CWgDcek26mS1YoHBh77dAh4i', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 19:03:43', '2026-01-06 19:03:43'),
(635, '24258302', 'MELLVI NUR FAJRIANI', '24258302@sekolah.test', '$2y$12$8PXbowLy5fQvDBuQa5jnyek6ZmsrAyFCPQKc77gdsut8Ge9uKlo62', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 19:03:44', '2026-01-06 19:03:44'),
(636, '24258309', 'MUHAMAD YUSUF ALFARIZI', '24258309@sekolah.test', '$2y$12$8RvO7MbMqeN0PUdyn6/du.WLBtOmzmKW7AvNFOkG4LCWLk2Ad/rc6', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 19:03:44', '2026-01-06 19:03:44'),
(637, '24258310', 'MUHAMMAD FARELL ADISTIAN', '24258310@sekolah.test', '$2y$12$e/V7..os.9h4eev0OZ0oQuwbn5GVEGtMipFxEhgx9kZbSMya7B.pe', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 19:03:45', '2026-01-06 19:03:45'),
(638, '24258314', 'MUKTY RAMADHAN', '24258314@sekolah.test', '$2y$12$0/sJ3jp8x3xHqhAcKUeEEubBdWZexq24k/ioFG4NDxAuf4bqxQj8e', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 19:03:46', '2026-01-06 19:03:46'),
(639, '24258324', 'Nazar Oki Mardiana', '24258324@sekolah.test', '$2y$12$.OL4cfBD72pf.MxMvgHr7.QdmBfbeNil2obOCuBbw7wVb4rRtvdyC', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 19:03:47', '2026-01-06 19:03:47'),
(640, '24258352', 'RAIHAN ALIF BINTANG WICAKSONSO', '24258352@sekolah.test', '$2y$12$d3GE3NPTBf9o2xDDarPnOe/kUTtS7ZTHBmUuXwx2fLUQcgxklB2Qy', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 19:03:48', '2026-01-06 19:03:48'),
(641, '24258375', 'Rifal Andika Saputro', '24258375@sekolah.test', '$2y$12$zSctZO/m1CBb4LZblRSTWe4YCDU458GpCirUYQsGNW5Wz3uLHMB8q', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 19:03:48', '2026-01-06 19:03:48'),
(642, '24258397', 'ROSSA SETIAWATI', '24258397@sekolah.test', '$2y$12$v7oo.SV6ZaHA3MvXegfxPu/3vfg8Scr.JbahYv5LWejTeA3gpJutC', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 19:03:49', '2026-01-06 19:03:49'),
(643, '24258444', 'TANGGUH ALFATTAH DZUL HADI', '24258444@sekolah.test', '$2y$12$235rCfavOy8RtVdKVeXSReYLprFhHqY9PpwKs0Fry9hGZ6hLwkVGu', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 19:03:51', '2026-01-06 19:03:51'),
(644, '24258464', 'VIDIANA NUR ANGGRAENI', '24258464@sekolah.test', '$2y$12$CvEk0ljDS1SKSknVUTRFseavzyO7XkQh2VEmfRqlB06gdaCj2utWi', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-06 19:03:51', '2026-01-06 19:03:51'),
(645, '24258090', 'ADPI SALMAN ALFARIZKI', '24258090@sekolah.test', '$2y$12$E6UsuC6n1g.TeqOVbwPrIOlPaGgidJL1ezlnccHkW/mI1geNZ8oh6', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 18:05:01', '2026-01-07 18:05:01'),
(646, '24258091', 'ADZIKRA MIKEYL SAPUTRA', '24258091@sekolah.test', '$2y$12$ZwnHPP7v87xjmZL8F2zbAOq1cd/ACllxN/X1jegTw/jIvy9RaqlFG', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 18:05:02', '2026-01-07 18:05:02'),
(647, '24258094', 'AFRIZAL NURFADILAH', '24258094@sekolah.test', '$2y$12$muszuxtMLbfJiO7iCjmKD.jxawlc1fUZhi1uvTGFjWVNvCziROj.G', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 18:05:02', '2026-01-07 18:05:02'),
(648, '24258114', 'ALIA SHAFFANI', '24258114@sekolah.test', '$2y$12$wXusMM1t79yHm0aslEE71erQgr6IZ5j6cuzCz3CLaZb..4Vj0TGci', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 18:05:02', '2026-01-07 18:05:02'),
(649, '24258133', 'Anjani', '24258133@sekolah.test', '$2y$12$6BmJfHkaZ7DtDWdoSq42ae6l.qqlUZ3S.BxUy74AleqsWR0NW1dJa', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 18:05:03', '2026-01-07 18:05:03'),
(650, '24258134', 'Anjar Artandi', '24258134@sekolah.test', '$2y$12$Ihah/cuKRllyUMtP3.h3Ce/coEN4D4BfeMCXebMae.WvIqK6RE7RC', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 18:05:03', '2026-01-07 18:05:03'),
(651, '24258136', 'Apriyanto', '24258136@sekolah.test', '$2y$12$Vq2DhdKRiRLjSNeTLKloL.M5Afif3qziBryFrWWha/yy0zpgYH2zW', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 18:05:04', '2026-01-07 18:05:04'),
(652, '24258151', 'AZJRIL JONNATA IRSYAD', '24258151@sekolah.test', '$2y$12$/75L8.0oLRkKrrVaeW1utOzn0SrflQcFXpg/ALNAhAdz5uOIY1WZ6', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 18:05:05', '2026-01-07 18:05:05'),
(653, '24258153', 'AZKA IKBAL NABAWI', '24258153@sekolah.test', '$2y$12$dDfbPiKmQ6lb0a5gr1h5K.B6rqdHZnL3qGRtChdaE4dI3I1.aG98.', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 18:05:05', '2026-01-07 18:05:05'),
(654, '24258154', 'BAEHAKI', '24258154@sekolah.test', '$2y$12$nxa3X/7BiT1xRhn4lLgcHeb5NcsK1OmmFntnwt7jysbLn98JHaQLK', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 18:05:05', '2026-01-07 18:05:05'),
(655, '24258173', 'DEA APRILIA', '24258173@sekolah.test', '$2y$12$Ie9p7pDXvbXVutMnCJNqdOh0Pgq3NYNsH/QVzkUebUSNGazyprMbK', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 18:05:06', '2026-01-07 18:05:06'),
(656, '24258176', 'DELLA PUSPITA', '24258176@sekolah.test', '$2y$12$1ITVzycXGlxofVRA9kXdf.cwzD47Oh6ZMsbzK4VMkKejLHVjmZaUu', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 18:05:07', '2026-01-07 18:05:07'),
(657, '24258189', 'DIDI KURNIAWAN', '24258189@sekolah.test', '$2y$12$pFOHSbircAY37bijTUYe9uUWJQKjQPBG/qWcJrdhgzpq56fets9xG', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 18:05:07', '2026-01-07 18:05:07'),
(658, '24258199', 'EGA FRADIKA', '24258199@sekolah.test', '$2y$12$e2BGlqcEE1ai6YZW96jrPublblEhpIvGbtSOUQeVRv3vU3mE.k4f2', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 18:05:08', '2026-01-07 18:05:08');
INSERT INTO `users` (`id`, `username`, `nama`, `email`, `password`, `password_text`, `role`, `foto_profil`, `foto_unggulan`, `is_active`, `reset_password_token`, `remember_token`, `created_at`, `updated_at`) VALUES
(659, '24258205', 'EZA AGUSTIAR RAMADHAN', '24258205@sekolah.test', '$2y$12$m7XJIQ8ZxbdPgaIDC1gKXe7msjC3AVwd.fkeSM7l5QjJMZz4vooZ.', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 18:05:08', '2026-01-07 18:05:08'),
(660, '24258229', 'FILA RAMADANI', '24258229@sekolah.test', '$2y$12$DS0YxKSyTb7G6C./Pqp76./VuxhEtoDdd9fXn/qFuozAvqL8FRncu', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 18:05:09', '2026-01-07 18:05:09'),
(661, '24258249', 'IIF NURHIDAYAT', '24258249@sekolah.test', '$2y$12$7AOm8mOYSlEjkTHLHlyKg.pOWyYizfSpcEmOtfy4pmEy/.VjnBEsq', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 18:05:09', '2026-01-07 18:05:09'),
(662, '24258251', 'IMAM MUHAMMAD AL FARIZ', '24258251@sekolah.test', '$2y$12$CMshcxPqYhBl4.Qal39KquDBa.yU90RqWsE8s9MTchlQOgNH2KTsi', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 18:05:10', '2026-01-07 18:05:10'),
(663, '24258271', 'Kemal Pebriyan', '24258271@sekolah.test', '$2y$12$L5IZ6vN34Tx9yLwoyE2g5OmJTxSOrQcGuBy8KQig.bXgJPLFLURg2', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 18:05:10', '2026-01-07 18:05:10'),
(664, '24258311', 'MUHAMMAD FATHAN AL FATIH', '24258311@sekolah.test', '$2y$12$ZU5YXNMUjDcyWK.ILaju0udPWuiEkumL5JPdDgmrVI5n6DWTY7ExK', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 18:05:11', '2026-01-07 18:05:11'),
(665, '24258317', 'NADIA NURULIA SYAFIRA', '24258317@sekolah.test', '$2y$12$W/FRUp0bnQHo6Gu2AFaOGOjJX18ImFoSUkt.u7ntd6n18VPOyJw56', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 18:05:12', '2026-01-07 18:05:12'),
(666, '24258320', 'NANDA UTAMI', '24258320@sekolah.test', '$2y$12$vM9G5r.aMUk2TVRNoBztLOyA/H8xgKBpAFa38Drb/SerSNy2SOcly', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 18:05:12', '2026-01-07 18:05:12'),
(667, '24258322', 'NAUFAL ROFI', '24258322@sekolah.test', '$2y$12$8T9xbdMz2VFdsMW250MIzuWe.SZ9T/UpoLDkWUtxKgLE7bEePLJsO', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 18:05:12', '2026-01-07 18:05:12'),
(668, '24258327', 'NISAUL MUSYARROFAH', '24258327@sekolah.test', '$2y$12$rq9X5us14WNDn1vtV1X/I.uBlsO/PAgwQBt7P1InPlhOZ0OzIcDeS', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 18:05:13', '2026-01-07 18:05:13'),
(669, '24258366', 'Reno Septiawan Ramadan', '24258366@sekolah.test', '$2y$12$Ml.EEfRNQ68fa1tkPCV4tuGhpSf.vdija7Coa2k9kRwmpp8YGOVvu', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 18:05:13', '2026-01-07 18:05:13'),
(670, '24258373', 'RIDHA SINTIA OKTAVIANTI', '24258373@sekolah.test', '$2y$12$Qrua0m1oTDRYk9xLqskzFOxenQfoHtpgQ3WGYu5u4c6IDHTPK0YJG', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 18:05:14', '2026-01-07 18:05:14'),
(671, '24258378', 'RINA ALAMSYAH', '24258378@sekolah.test', '$2y$12$GlcmXUux9auKVh8ued4hROCA7SboCl9m2ptxYu53JyCq6kXe3EpW.', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 18:05:14', '2026-01-07 18:05:14'),
(672, '24258385', 'RISMA', '24258385@sekolah.test', '$2y$12$d2pPFvWB6wfTB/1Ymf0AOO6bxSSKHCFMG2h0Ww583K0iEFCjl5xVC', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 18:05:15', '2026-01-07 18:05:15'),
(673, '24258432', 'Sulistiana Wati', '24258432@sekolah.test', '$2y$12$vzNszcCSXzWCwHt2ut1XyOr0KCP8dtZST78rKGDGN7rSCaI7iiBv.', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 18:05:15', '2026-01-07 18:05:15'),
(674, '24258441', 'SYAKILA MAWARDANI', '24258441@sekolah.test', '$2y$12$9i7fFEhkk.kOdNpm0tndGeMKCTvSr9u5Tuc1q28pVlmuVBp3/nTMK', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 18:05:16', '2026-01-07 18:05:16'),
(675, '24258442', 'SYIVA AULIA', '24258442@sekolah.test', '$2y$12$SIfvcLDdasuFHCuCnIM1pelal7CMTnShBfphanD9VNj1jZoz3SSR2', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 18:05:17', '2026-01-07 18:05:17'),
(676, '24258458', 'URIFA YASIN', '24258458@sekolah.test', '$2y$12$iMZAM/1KVvQ6yzo9gAXIp.zRHv9bBnaUWAIRMZYVdnJjEMA0m47yi', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 18:05:17', '2026-01-07 18:05:17'),
(677, '24258460', 'USWATUN KHASANAH', '24258460@sekolah.test', '$2y$12$mRuMwH7ww45ebfXKG3oAdusb9iBUcwX1XJnuUygUqN2GuQr0NIPoq', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 18:05:17', '2026-01-07 18:05:17'),
(678, '24258084', 'ADE AHMAD RIZKI', '24258084@sekolah.test', '$2y$12$K33rnrNqifSYvSsreJeFH.jP2Ht8hF2omyYs2I.NSmmySf0dGxw3W', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 18:08:46', '2026-01-07 18:08:46'),
(679, '24258085', 'ADHITYA PERDANA', '24258085@sekolah.test', '$2y$12$WdzwhOyIzD4NzV6EZTxIoOHTMmncc/mzTbM06hzLHUV9rZswSzfQ2', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 18:08:46', '2026-01-07 18:08:46'),
(680, '24258089', 'ADITYA HILDAN JAEVANI', '24258089@sekolah.test', '$2y$12$flRZY1GVqqgWVmqL.xnsnuoTPNvsjYagGmaEWv8WVxRMzADi/E5ke', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 18:08:47', '2026-01-07 18:08:47'),
(681, '24258099', 'AGUS FIRMANSYAH', '24258099@sekolah.test', '$2y$12$XS07m7..DNbdj/aJswkTI.4OD0UoWhhz8vgtJoV.Zd5EX5LseuslO', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 18:08:47', '2026-01-07 18:08:47'),
(682, '24258101', 'AHMAD KHOERUL ANAM', '24258101@sekolah.test', '$2y$12$v88fxvPrdxiwEODXthr2aeqCzA3Z8Qq1NoaKBdK3WTh3QqygXt7oa', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 18:08:48', '2026-01-07 18:08:48'),
(683, '24258124', 'AMIN RACHMAT ROMADHON', '24258124@sekolah.test', '$2y$12$485NAAaRJP46AhyUVwskEOwgMzoTzTGlukiqo6S6e.jJgp4vwFR6W', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 18:08:49', '2026-01-07 18:08:49'),
(684, '24258129', 'ANDREAN NUR IJLAL KUSWOYO', '24258129@sekolah.test', '$2y$12$7N9f7QfSzCvQwapYdQkdyuCnJ64Z4bKC5ezNIc8ybvW71MPx6L3G2', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 18:08:49', '2026-01-07 18:08:49'),
(685, '24258137', 'AQCHMAL NOVA ARDIANSYAH', '24258137@sekolah.test', '$2y$12$t1aJtcB6xtvhmbHdt/chq.JF4RVA09S9WRfQwcXtfTdoRapZtu5wW', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 18:08:50', '2026-01-07 18:08:50'),
(686, '24258138', 'AQIL AL FARROSI', '24258138@sekolah.test', '$2y$12$fmgbcE9yYPqGNtpWG2rR4u7UMoOgvCiFjj/Y6YrzSh2Ii05ea95v2', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 18:08:50', '2026-01-07 18:08:50'),
(687, '24258167', 'DAFA JULIANDRA PRATAMA', '24258167@sekolah.test', '$2y$12$XrCowqlTCuYXh/nedEfgLeEwLkj2z0BeXUuu50EJnsC6DrKs7p8J.', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 18:08:51', '2026-01-07 18:08:51'),
(688, '24258213', 'FAJRI TRI FAHRUDIN', '24258213@sekolah.test', '$2y$12$IAIIvH1aQW4alZtzviHfm.0OT0trJwJhAgWJeZ5a2gdmRLcld07YO', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 18:08:51', '2026-01-07 18:08:51'),
(689, '24258252', 'Immam Maullana', '24258252@sekolah.test', '$2y$12$Ze1zKbWScA98rSkwI8PRhuR6VHXvWtwbazmkinHiDFTZVkhUZ0DVi', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 18:08:51', '2026-01-07 18:08:51'),
(690, '24258272', 'KEVIN WAHYUDI PRATAMA', '24258272@sekolah.test', '$2y$12$hw570LYOBKJ1V26NxbjwD.O8oJGaDRaG7KZi.gAUHKyTN2OT9/Zsu', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 18:08:52', '2026-01-07 18:08:52'),
(691, '24258275', 'KHAERUL SALAM', '24258275@sekolah.test', '$2y$12$bF7hV12PI1ptNEkts8ALyO8714lgp0uy//ZqQ93GhjD.mKs5Uy2Uy', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 18:08:52', '2026-01-07 18:08:52'),
(692, '24258312', 'MUHAMMAD SYAHRIL MUBAROK', '24258312@sekolah.test', '$2y$12$p22CEPK51FNxfkM4UTNls.mU9xkgZ25390WevhT.Z5cmsXVCTuWVG', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 18:08:53', '2026-01-07 18:08:53'),
(693, '24258316', 'MUSTOFA ROMADHONI', '24258316@sekolah.test', '$2y$12$f3Vhl8oXd6oEP8rd3sKCq.dKWMDfHzoRYliXEMoxehkDTayTJbDMy', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 18:08:54', '2026-01-07 18:08:54'),
(694, '24258331', 'NOVAL DWI ANDIKA', '24258331@sekolah.test', '$2y$12$GGSwJSZQN8/Wju2B72g6KerYloi4wQAmxBmKrDvU.MpPzVND/vx2W', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 18:08:54', '2026-01-07 18:08:54'),
(695, '24258354', 'Raka Adindia Shadidan Althaf', '24258354@sekolah.test', '$2y$12$ByIUoKEZ9i6qwsFowF6tDet4UbTQ11ep3NOagoOmGJsQyn3navU2.', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 18:08:54', '2026-01-07 18:08:54'),
(696, '24258355', 'RAMA HESA JENAR', '24258355@sekolah.test', '$2y$12$k7QV1cz5EvG3bVtQ9KPirewfjdXn28pU9U6r0rTZg5hiFW74hSSqa', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 18:08:55', '2026-01-07 18:08:55'),
(697, '24258393', 'RIZKY SAEFULLOH', '24258393@sekolah.test', '$2y$12$EkEFq01BxHNH76YuyZASeOCLfR9DHQ8l2YWmE7w791u96wGxuSCpy', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 18:08:55', '2026-01-07 18:08:55'),
(698, '24258417', 'SHAKTI MEZZA MILANO', '24258417@sekolah.test', '$2y$12$HdXVkq1A1/yfu.1IW83crewcQZvxuIRIrXVSzK4u/SNy9XHEKKzQS', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 18:08:56', '2026-01-07 18:08:56'),
(699, '24258452', 'TOVAL KHASAN NUR HIDAYAH', '24258452@sekolah.test', '$2y$12$mq/0WHUW/arK1axcm09NBeT8crUFGJQSiZ2i95KcSbgoAjJPeS1ce', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 18:08:56', '2026-01-07 18:08:56'),
(700, '24258476', 'Yosi Nanda Pratama', '24258476@sekolah.test', '$2y$12$EKxo/IFtJEQdiEvLiQ.zeeoLvrC8bHCdQxfhYENikmv9Eb2pdCcTe', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 18:08:57', '2026-01-07 18:08:57'),
(701, '24258479', 'Zacky Putra Aprilian', '24258479@sekolah.test', '$2y$12$pGL3fOVROfzXqE24VboTD.4vc2.YvpCJc9Y2RF.uvSo3vYc96th3q', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 18:08:57', '2026-01-07 18:08:57'),
(702, '24258081', 'ABAS GILANG SAPUTRA', '24258081@sekolah.test', '$2y$12$FKsT159YEgpurtMVB4AsVuXmYHh0f6QBZL5lLBEVTTaN8JPfsa57G', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 18:08:57', '2026-01-07 18:08:57'),
(703, '24258083', 'ABIB MUZAKI', '24258083@sekolah.test', '$2y$12$.x9wWL9Bmpeptd9GINz2AuVe41XqlCXQhIAg0OZf9YxcG3O6L5fZC', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 18:08:58', '2026-01-07 18:08:58'),
(704, '24258088', 'ADITYA FIRMANSYAH', '24258088@sekolah.test', '$2y$12$MWSuum3n6FEiRZqcAqhwW.0ifBEsxOA7O.kwPBSzzv6KkS8hJQBfW', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 18:08:59', '2026-01-07 18:08:59'),
(705, '24258095', 'Agiardia', '24258095@sekolah.test', '$2y$12$mB/pNL/WHw1H5dORz55ESuTR3tr58ZB63ssonZezd0YfV9z.uAfM.', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 18:08:59', '2026-01-07 18:08:59'),
(706, '24258110', 'ALFA REFANDRA', '24258110@sekolah.test', '$2y$12$xv/fFxIxcHEAblWU8KACvujXqudZa5xkFpYc0Fmnkiw9fhHRE9VES', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 18:08:59', '2026-01-07 18:08:59'),
(707, '24258119', 'ALVIN SYAHRIN', '24258119@sekolah.test', '$2y$12$T9bryF21Egvlie/NA4tTBOp8EJ9wyRIssUKm41IjPpwE/eSDyueqy', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 18:09:00', '2026-01-07 18:09:00'),
(708, '24258142', 'ARIF NABIL RAMADHAN', '24258142@sekolah.test', '$2y$12$gNsMhTB.uyKnvvdSdh4oOOiYeJPRRwhNvYg2qThFC6IrKsYCRFE.m', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 18:09:00', '2026-01-07 18:09:00'),
(709, '24258144', 'ARVEL FAIQ NUR HERMAWAN', '24258144@sekolah.test', '$2y$12$pXp6hnvHUVOXBgvZzygybOFZ/gWeVbHqGeQCFuXkxmUvIYbvdD/Ca', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 18:09:01', '2026-01-07 18:09:01'),
(710, '24258487', 'Bahrul Arifin Fauzan', '24258487@sekolah.test', '$2y$12$sINL4WvfPVd.T/9WSgt/CeJ7JV1cXp6P4aw4DlGQy5tvF8MS33yoO', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 18:09:01', '2026-01-07 18:09:01'),
(711, '24258169', 'DAFFA AL FAREZI', '24258169@sekolah.test', '$2y$12$9FGUcm/2qbAvx8ZQonMSPOw2o6wds6Cqhb2ux/vnBRZ3q8Gh1MQ2S', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 18:09:02', '2026-01-07 18:09:02'),
(712, '24258175', 'Dede Ardiansyah', '24258175@sekolah.test', '$2y$12$gmVcRg34A1bA6/9gAqAZ6..G/bpouN5Hku0mC6nBoVaLJHf3vPm3W', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 18:09:02', '2026-01-07 18:09:02'),
(713, '24258178', 'DENIS', '24258178@sekolah.test', '$2y$12$lkdfouBmhyGD4NssVonOc.EEidUw2lK3bPzVaYUvWpNJshbOT8Lua', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 18:09:03', '2026-01-07 18:09:03'),
(714, '24258180', 'DENIS DWI SAPUTRA', '24258180@sekolah.test', '$2y$12$x0yO3Wsnhvmt9LleT6qcmeZpE8M5BgPU29Dgz9JG9B28NLbbHN7kC', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 18:09:03', '2026-01-07 18:09:03'),
(715, '24258190', 'DIKI DWI SANTOSO', '24258190@sekolah.test', '$2y$12$tFmdH8sqLmk60S5yzDCz1emX8eMx5XplP8iuPxvl5wWC38kC/SNO.', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 18:09:04', '2026-01-07 18:09:04'),
(716, '24258209', 'FAHRI WIIBOWO', '24258209@sekolah.test', '$2y$12$eF/oqfejBdpxyDLbZx7j4e0L/jgW6wcka43CROUo.HYx/3eahrktW', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 18:09:04', '2026-01-07 18:09:04'),
(717, '24258210', 'FAHRUR ALI REJI', '24258210@sekolah.test', '$2y$12$i9Qrw4JQRQ2pscjjjsAY0.Go4sIKXrZM7y75OEUcOv2xaITin/oUq', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 18:09:05', '2026-01-07 18:09:05'),
(718, '24258211', 'FAISAL EGALIOSA', '24258211@sekolah.test', '$2y$12$uLd3VM/u9CQMCHYJJ3hySuvm0JSKEUV5fOcIc4toT/X2NDxwVYn3q', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 18:09:05', '2026-01-07 18:09:05'),
(719, '24258236', 'GIFFAR ROZAQ PRATAMA', '24258236@sekolah.test', '$2y$12$6fIrjH3x8lOQ0btP28GyB.YuxLjEp0IyxUCdV9mMfP.qExqjuBcCi', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 18:09:05', '2026-01-07 18:09:05'),
(720, '24258265', 'JOHAN FIRDAUS', '24258265@sekolah.test', '$2y$12$LeDxe/LrpgIVkc7tnghRc.J8MFGWoZGjaTtyFdRq56YWxyQzwMUKm', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 18:09:06', '2026-01-07 18:09:06'),
(721, '24258267', 'JOKO SUTRISNO', '24258267@sekolah.test', '$2y$12$f8z/Kwu5E.esLJLyqOVk2eSd6IVQWRhJ74.Nxdi.WvL/lc4.b7jMa', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 18:09:06', '2026-01-07 18:09:06'),
(722, '24258306', 'MOHAMAD RIZQI NUGROHO', '24258306@sekolah.test', '$2y$12$uc8Uv6VZB09vmBaa9qSLrO0q5sYlVfegeGxuHulkYxHpBgwj.xnZS', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 18:09:07', '2026-01-07 18:09:07'),
(723, '24258344', 'QORIBUL \'IBAD MUJAZIN', '24258344@sekolah.test', '$2y$12$HEJf7BcTAX1zo7ym4iUJtuTWFaPhtOL8XpwqWtax1AW4xj59cdrqq', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 18:09:07', '2026-01-07 18:09:07'),
(724, '24258362', 'REFALDY ARIE SADEWO', '24258362@sekolah.test', '$2y$12$uNA5P782bscpDNOzkHFYdup6L29K9LVC76snSqiHKNj8uCXLUrf9e', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 18:09:08', '2026-01-07 18:09:08'),
(725, '24258374', 'RIDWAN HARDIANZYAH', '24258374@sekolah.test', '$2y$12$Ap3myIWi/tK59QSnydz16uYXggeCCvJcg00k.ZYkO.RdaHcZxIyKi', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 18:09:09', '2026-01-07 18:09:09'),
(726, '24258391', 'RIZKI NAZRIL IRHAM', '24258391@sekolah.test', '$2y$12$SUMBLCnxpQSQvu5lFJf/VOWu3bayjZyjk05CT/FnVXhfOi7.6.MXy', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 18:09:09', '2026-01-07 18:09:09'),
(727, '24258395', 'RIZQI BILAL ROMADHON', '24258395@sekolah.test', '$2y$12$1RhEIv7ch/Oqdajxi//x/el1hTPgn9JQmPSfAIrF2z.HU3opPTe5e', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 18:09:09', '2026-01-07 18:09:09'),
(728, '24258401', 'RUSTRIANSYAH', '24258401@sekolah.test', '$2y$12$bbFYUwyS5g08a4xO2JMKSeUJvdsjagY5tbueX.yIbaByb34oj/ebe', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 18:09:10', '2026-01-07 18:09:10'),
(729, '24258437', 'Surya Irfansah', '24258437@sekolah.test', '$2y$12$LC7iVo9iOCDjJsEg529eduvdr1FJGjatt4OO1A4WOHcLzxCqrrXRq', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 18:09:10', '2026-01-07 18:09:10'),
(730, '24258135', 'ANTONY', '24258135@sekolah.test', '$2y$12$c24qjmYMwN1C9lYsjPWU1uSDjgTMpS66sBGAvjEPTFlTL1TEgPYYS', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 18:10:52', '2026-01-07 18:10:52'),
(731, '24258156', 'Banyu Hasan Bahri', '24258156@sekolah.test', '$2y$12$SdvRLW08.7kpW6cGGwUV1OZH62dC2/wsESYF6AjofZdiQh.6h8NSa', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 18:10:53', '2026-01-07 18:10:53'),
(732, '24258157', 'BAYU BAEHAKI', '24258157@sekolah.test', '$2y$12$w5UjpHFR/SRb8whXRVItvOqFTl58KLKDfKjEfTerPus9kA1OwLWy6', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 18:10:54', '2026-01-07 18:10:54'),
(733, '24258228', 'FHENO EKA SANDIYANA', '24258228@sekolah.test', '$2y$12$nQ1szgLlFwh19ujNC7zEiOeAdNz8WVuSaGElHDfbjHt8xm5XPkQ9a', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 18:10:55', '2026-01-07 18:10:55'),
(734, '24258266', 'JOHAN PUTRA ARYANTO', '24258266@sekolah.test', '$2y$12$kSDgJsJZ85bjbeoDiEC0l.8gCCaygfb2UCsrii5rlLc7JVCqnSFn6', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 18:10:56', '2026-01-07 18:10:56'),
(735, '24258283', 'KURNIA RASYA ALDIANSYAH', '24258283@sekolah.test', '$2y$12$Iqj/C0.9Vj/TDJlrvojhDeheT1k/WXttOs4GA803rQweDkoK3mqxq', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 18:10:57', '2026-01-07 18:10:57'),
(736, '24258291', 'Lutfi Mubarok', '24258291@sekolah.test', '$2y$12$b9vdxDKz124DLqjEfN6b/.K4N..gC4tOQobQvSYp0.qSjBcLcojKW', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 18:10:58', '2026-01-07 18:10:58'),
(737, '24258293', 'LUTFIANSYAH NOOR MAULIDA', '24258293@sekolah.test', '$2y$12$OsbOJp.4LeNLlM78/y4LSuaHh4v6.m5hyCZWYzlHJradVD73DZQ2.', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 18:10:58', '2026-01-07 18:10:58'),
(738, '24258294', 'MAHESA LESMANA PUTRA', '24258294@sekolah.test', '$2y$12$Ss3HZE2Vem6IEh1OT2UjveaDSrVn4c6b8FC4P9Uy.MNtf8X4cMBFa', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 18:10:59', '2026-01-07 18:10:59'),
(739, '24258298', 'MARSEL PUTRA PRATAMA', '24258298@sekolah.test', '$2y$12$c/.IUtZyzwErfFAn2IcafuP1AH7BFZsmxS22dH0SSL4X73dhylr1i', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 18:10:59', '2026-01-07 18:10:59'),
(740, '24258299', 'Marvel Elni Putra', '24258299@sekolah.test', '$2y$12$03OjZPSzishhBWUlG1VJPeB4Zy1yBLSeMiCb89q5apvwxbisA4OCm', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 18:11:00', '2026-01-07 18:11:00'),
(741, '24258313', 'MUKHAMMAD GIYAT SETIAWAN', '24258313@sekolah.test', '$2y$12$9gVl9Sk4XZqgT1Sd3ciOE.qiNip9rZukZh40NGZMgk4Db.qIT.JTq', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 18:11:01', '2026-01-07 18:11:01'),
(742, '24258332', 'NUAF AL SYAMRI', '24258332@sekolah.test', '$2y$12$PMM8FrEkBaYZ7ItSjE9GNOAgsxgGPhJcXTvQ5sMitaqjkN3JZ7a0q', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 18:11:01', '2026-01-07 18:11:01'),
(743, '24258347', 'RAFFI NURROHMAN', '24258347@sekolah.test', '$2y$12$GtZAm5WDxM.BBbI2UmO6ou8qmdEJfyKpm6CVGi0wxj.YdwG8SrCem', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 18:11:02', '2026-01-07 18:11:02'),
(744, '24258485', 'RAFKHA MAJID RAMADHAN', '24258485@sekolah.test', '$2y$12$lWPC/bbBHvpvTpNlVnmRPeQNzH1vGDVkCCcP9rdHI54AUyfvN/.76', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 18:11:02', '2026-01-07 18:11:02'),
(745, '24258357', 'RAMDAN APRILIANO KHOLIK', '24258357@sekolah.test', '$2y$12$KIRuic8LdW/2hIrabmfNsOeuwSBBRarbWDnpIm6Y0jD1wYjNn7TIW', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 18:11:03', '2026-01-07 18:11:03'),
(746, '24258486', 'REYHAN', '24258486@sekolah.test', '$2y$12$/CwoAZdXmRt/fPJtKk5vVef6arFRS2FwqxF3rHyYywXciZJXISjSu', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 18:11:04', '2026-01-07 18:11:04'),
(747, '24258371', 'REZA SAPUTRA', '24258371@sekolah.test', '$2y$12$z4t.sprvUn6h.F3ToK4ek.FG4N0yJ4eqEqyR8PeHhhGVYfeC5ZL6a', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 18:11:05', '2026-01-07 18:11:05'),
(748, '24258372', 'Rezkya Dhesta Permana', '24258372@sekolah.test', '$2y$12$AAXUsjABbhYkpoFwqnnbPexgo3ZAxYKT2dyLIU3EiGhgLkGaUd8ia', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 18:11:06', '2026-01-07 18:11:06'),
(749, '24258377', 'RIFQI', '24258377@sekolah.test', '$2y$12$NUibIkLL6q.w5Ed/SmkDee.SjlKoQBRyhnsp1WzrPYVGXOjJLT.HG', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 18:11:06', '2026-01-07 18:11:06'),
(750, '24258386', 'RISZIANTO', '24258386@sekolah.test', '$2y$12$owxrRuby1MBxbhNNcdkp7O9mq7r1Qwrxr3LtcJFUbMwO/Pg2cZXSe', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 18:11:07', '2026-01-07 18:11:07'),
(751, '24258389', 'Rizal Dwi Setiawan', '24258389@sekolah.test', '$2y$12$E5ubj.MNf7V8O7ym9c/lSedpDZWc9XviNUYSyjaxEi8u7tKXHQjO2', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 18:11:08', '2026-01-07 18:11:08'),
(752, '24258402', 'RYNDAN ALIEF HARFIANSYAH', '24258402@sekolah.test', '$2y$12$mJ9YJYiDLLKYUrIpo0.pKukLog4jdB8V9/kcOKWEVYi1ddZEIgt1W', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 18:11:09', '2026-01-07 18:11:09'),
(753, '24258433', 'Sulistiono Pratama', '24258433@sekolah.test', '$2y$12$U8a3iUbhOQprC3VNaYn4buCGHJzuUNJbQUVlo74wdVjI7vSqcB98S', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 18:11:09', '2026-01-07 18:11:09'),
(754, '24258435', 'Sultan Surya Ardiyanto', '24258435@sekolah.test', '$2y$12$jcQrrkRbdM2kDEqiXsJHbe41Ttrja2FDNuB.okHA8ObbmnbyJTQDO', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 18:11:10', '2026-01-07 18:11:10'),
(755, '24258446', 'TEMY SAPUTRA', '24258446@sekolah.test', '$2y$12$CxSgdEB8b6xtqYpesqndVORCOxj0APGdbhgKOxGkSi8YBTqp3rZ.e', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 18:11:11', '2026-01-07 18:11:11'),
(756, '24258451', 'TIVAN ANDREAN', '24258451@sekolah.test', '$2y$12$MTnn52/gldSiZGaN79nVHuSY6Nf5oqDCj0ffN0yvwcoriFQxcnvX6', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 18:11:11', '2026-01-07 18:11:11'),
(757, '24258473', 'Yahya Al Fauzan', '24258473@sekolah.test', '$2y$12$FHl3oWdOVqq8OxFjurKwH./7bKdOld8gQbqOR9m9Yh.bxrA0d1G.2', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 18:11:12', '2026-01-07 18:11:12'),
(758, '24258086', 'ADIT MUHAMMAD FARIZ ABDULLAH', '24258086@sekolah.test', '$2y$12$2yTHq/PexBc9WftXJYMMwOTZQ1FEVwBuaF8fHm2m79ETcEBxpT7rO', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:04:25', '2026-01-07 19:04:25'),
(759, '24258102', 'AHMAD UBAYU ZIDAN', '24258102@sekolah.test', '$2y$12$Iy4USnQBt7C598PU9z5Afu/foBmJXn6xxWm4PgEp6tas5/i6RH4gu', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:04:26', '2026-01-07 19:04:26'),
(760, '24258103', 'AHMAD WILDAN RAMDANI', '24258103@sekolah.test', '$2y$12$rAr.pJ.WEXPSbK0ls/xja.I2kLWzFDpUC8TmG7uVdMeFBlNcdPe/W', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:04:26', '2026-01-07 19:04:26'),
(761, '24258111', 'Alfian Nur Rizky', '24258111@sekolah.test', '$2y$12$DZXAAUMqPELfGxiV0FJp/uuAd73z1eOxN7oFcehCGARpZnk0SiUw6', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:04:27', '2026-01-07 19:04:27'),
(762, '24258112', 'ALFINDO HARDIANSAH ADITAMA', '24258112@sekolah.test', '$2y$12$wP0E/yQ70b8oxiqSybvLfuBd8bFoHBVVAZS5SVBDvser3c/CnJN6C', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:04:28', '2026-01-07 19:04:28'),
(763, '24258179', 'DENIS ANGGANA', '24258179@sekolah.test', '$2y$12$O5IATIKSXz1thtT7kkZEweqBeB9auAZ5uBE3V5NI40WZP7lqKlNsy', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:04:28', '2026-01-07 19:04:28'),
(764, '24258200', 'EGI ALFISHA FIANDIKA', '24258200@sekolah.test', '$2y$12$0EFEOdz13lmR5HXct/u7t.JRS3vXVvJWMylJHgPP.ConlHZ4sb6jq', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:04:30', '2026-01-07 19:04:30'),
(765, '24258212', 'FAJAR PRASETIYO WIJAYANTO', '24258212@sekolah.test', '$2y$12$11Or3wTO5WJrGBpBXQOKy.JjY5IvxsmKLePk8o.kTbdjGZgGHeZyy', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:04:30', '2026-01-07 19:04:30'),
(766, '24258223', 'FAUZI NUR ROHMAN', '24258223@sekolah.test', '$2y$12$a/oRjDhNmJ/OPs6LQO.S3ePDZdGOevayvYnZzH6IClb2tfqeRyKcq', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:04:31', '2026-01-07 19:04:31'),
(767, '24258244', 'HILAL ISTANTO', '24258244@sekolah.test', '$2y$12$VMS5ZvrkWesPsAJmfm1IhevCXb67zw2tWcTz/mrPQQsm.WxgwJ3NG', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:04:32', '2026-01-07 19:04:32'),
(768, '24258256', 'IRWAN SAPUTRA', '24258256@sekolah.test', '$2y$12$BNktMTAVcL8VPM..2y4JbOZSBSQHrR4fs//JhPBlt5sieCcqxyrR2', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:04:33', '2026-01-07 19:04:33'),
(769, '24258268', 'JUNIAR DWI SAPUTRA', '24258268@sekolah.test', '$2y$12$qnlR1NrL/OIOaHkz8BpYs.xOMYT2FStNwSvaI0dmEakzqvMhMi.B.', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:04:34', '2026-01-07 19:04:34'),
(770, '24258277', 'KHOERUL NGIZZUL ANAM', '24258277@sekolah.test', '$2y$12$26n4d/EcZ.dDnabcjYVKy.tjsAloYGTot9.5n2g86kDiRSj0u5LtK', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:04:34', '2026-01-07 19:04:34'),
(771, '24258297', 'MARSEL ADITYA', '24258297@sekolah.test', '$2y$12$TVBKOjn9d0Tlifd0AXjEL.mszqOOSmkwWBeXOHax7n1qPYWs9ltmW', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:04:35', '2026-01-07 19:04:35'),
(772, '24258300', 'Masaji Subekti', '24258300@sekolah.test', '$2y$12$wiLDBS2JSR3FyshtuVdjFuSYsd.4n3oF3Pd9vtSEvDnKhfh33UzNe', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:04:35', '2026-01-07 19:04:35'),
(773, '24258305', 'MOHAMAD ARJUNA NARARYA KHALIVI', '24258305@sekolah.test', '$2y$12$qN1urPpBs/TMnZ5LmWDa8.U4nKFdhTMf/fL.zmCnWvVrf8Q7ni52G', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:04:36', '2026-01-07 19:04:36'),
(774, '24258307', 'MUHAMAD AKMALLUDIN', '24258307@sekolah.test', '$2y$12$SroCu9T2hFyAYZMQBoqsbutCPTSQoNtWC5IeUOmwDQv27CgTxEiLa', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:04:36', '2026-01-07 19:04:36'),
(775, '24258345', 'Raditia Faiz Nur Ramadhan', '24258345@sekolah.test', '$2y$12$ozNKWRKjM01NZ5IOEMzNG.bTf6zOUIyMOMI6IH5tCHz.sIdlerhOm', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:04:37', '2026-01-07 19:04:37'),
(776, '24258360', 'REFA PRIYONO', '24258360@sekolah.test', '$2y$12$Dm6X26dR40C3ZvtT9ygtBeDto2ay9Ds68ZXCKo89AW.9UdEnXQowq', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:04:37', '2026-01-07 19:04:37'),
(777, '24258368', 'Restu Yogi Pratama', '24258368@sekolah.test', '$2y$12$aXfTamPBZtEcX4Qoq.YB7O4c2LY7lz2agA5Yesr5ybFCXu4omB3K.', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:04:38', '2026-01-07 19:04:38'),
(778, '24258439', 'SYAIFUL DIMAS PRATAMA', '24258439@sekolah.test', '$2y$12$sWJN9o0t6XtMRhGPGKhGbuSajz1.Cl3/4rX703dvROBdBC1YWA2He', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:04:39', '2026-01-07 19:04:39'),
(779, '24258096', 'AGISTA BUDI PAMUNGKAS', '24258096@sekolah.test', '$2y$12$l.MPvshUZTQl.HB18Up4u.qFFgcQ/qqR5xqSF8WkXaWBX0/7998QG', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:04:41', '2026-01-07 19:04:41'),
(780, '24258097', 'Agnin Nur Hidayah', '24258097@sekolah.test', '$2y$12$XK1po.7NvkxHtJnCng3TwOwVSFBTVDWcub0tu8C9rjIHsq1XF0Bx6', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:04:41', '2026-01-07 19:04:41'),
(781, '24258113', 'Alfiyan Dwiyanto', '24258113@sekolah.test', '$2y$12$NXFQk0MQvbbomwg.DZVWR.EoWWAG0R1HsETfJVW0HEGxyEkvzfCvK', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:04:42', '2026-01-07 19:04:42'),
(782, '24258130', 'ANGGA MAULANA', '24258130@sekolah.test', '$2y$12$HRidaKOthDyV6sejZjpKuO2OifKlOucBgjX0A.uyCXTKlBRWwvZGG', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:04:43', '2026-01-07 19:04:43'),
(783, '24258131', 'Angga Nugroho', '24258131@sekolah.test', '$2y$12$mOLpf2/3/pUq7OoG1JFJjeNjo1NUx.1sUDBWKbIUBSHqGZu3bZrUm', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:04:43', '2026-01-07 19:04:43'),
(784, '24258141', 'Ari Dwi Priyanto', '24258141@sekolah.test', '$2y$12$e50/dZQIzHo1doBrA1xIzOTOgpooTxzulBfQnBHWgFJyOq/rAahaS', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:04:44', '2026-01-07 19:04:44'),
(785, '24258145', 'ASHEL JUAN PRADISTA', '24258145@sekolah.test', '$2y$12$zIMW8Xy.ucmEWUsqYv16jOdmJK.CoRcruUoI2FpnrGdDVKp4znOqa', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:04:44', '2026-01-07 19:04:44'),
(786, '24258152', 'AZKA AL AZHAR', '24258152@sekolah.test', '$2y$12$TqN4wWO//yzO/3Z6S/c37.HyiMjXw7kokV6PGqXADuNiwwa5BAs8K', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:04:45', '2026-01-07 19:04:45'),
(787, '24258155', 'Bagas Alifansah', '24258155@sekolah.test', '$2y$12$/zhC6ciGLWRW.lwJbaHJrOGNYky/ms/Rrp1xfh/a4P6loEn7PQrJe', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:04:45', '2026-01-07 19:04:45'),
(788, '24258484', 'DAFA SAPUTRA', '24258484@sekolah.test', '$2y$12$oTE5e2GhoXUZDxRU4GRJWer8iFqitKYSKq5SOXs.9lmUykYtnudEi', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:04:46', '2026-01-07 19:04:46'),
(789, '24258177', 'DENI FEBRIAN', '24258177@sekolah.test', '$2y$12$K/Xsb5FrhVPoNeap6JMQzOaLN6QrCVnTalhTDAOESkmv2.xi.liWy', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:04:48', '2026-01-07 19:04:48'),
(790, '24258182', 'DESTA MAULANA', '24258182@sekolah.test', '$2y$12$1vtVln7gocZXMJMv.eYD/OEQ.7AnBoTpwhI5i.hM2/bzBItWbUTfG', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:04:48', '2026-01-07 19:04:48'),
(791, '24258201', 'EKI ALIF APRILIANO', '24258201@sekolah.test', '$2y$12$PRYsjn1HZ.8vqsQIJHB1L.IB5/6WUtNQrdn1C3/IEXW3gAQufihDm', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:04:49', '2026-01-07 19:04:49'),
(792, '24258202', 'ERI PRATAMA IBRAHIM', '24258202@sekolah.test', '$2y$12$WOKB5U1qFd643sOGHuWQ3uGjphfEkJ8NgoAsTa95Mo54KIvEOCGa2', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:04:50', '2026-01-07 19:04:50'),
(793, '24258206', 'FADIL RAMADHAN', '24258206@sekolah.test', '$2y$12$i5wpFz90q380.1YBoKckcOz9fo6VQlVaeXfdjvLCGDqiF2nTIV0qK', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:04:51', '2026-01-07 19:04:51'),
(794, '24258208', 'FAHRI SETIAWAN', '24258208@sekolah.test', '$2y$12$e.QJJGFSDM0/e4xsLVWt4.K8NCCWH9zf8/dtSNcggoPCx/R0IUPey', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:04:52', '2026-01-07 19:04:52'),
(795, '24258214', 'FAKHRI NUR FAYI', '24258214@sekolah.test', '$2y$12$gvYKneuuvkZMjauvwtweCuW36O46n//vPt966apDn1otYTjSY0C1C', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:04:52', '2026-01-07 19:04:52'),
(796, '24258217', 'Farel Adiansah', '24258217@sekolah.test', '$2y$12$t45zZx2EYdHVrMYqYm4NE.Ya2jehQkd43fTAOAP/koZKE5mejPw5O', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:04:53', '2026-01-07 19:04:53'),
(797, '24258232', 'Furqon Alam Syah', '24258232@sekolah.test', '$2y$12$59Hp2N8gfoJcUVGn2xphFuFcbzBQ4rfQ4FTDKxqEiRafXPoCZfdUK', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:04:54', '2026-01-07 19:04:54'),
(798, '24258238', 'GILANG OCTAVIANO', '24258238@sekolah.test', '$2y$12$dsa1W/1GjaG7bmvGF7lVmOJsr9nhq2sJyuG3vRz5r1YDmLN97Bvte', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:04:56', '2026-01-07 19:04:56'),
(799, '24258489', 'HILDAN FAIZ FAHREZA', '24258489@sekolah.test', '$2y$12$jv3Ekvfvb3LCxyJRVXbWnulaj.6RcjG7u7h9lVmfK3o7KOOmykP8q', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:04:57', '2026-01-07 19:04:57'),
(800, '24258248', 'IHWAN NURHIDAYAH', '24258248@sekolah.test', '$2y$12$K4QQHvvIv5Z6I5JnzJ1T9.RF2hsvTccTE3r69C0DrEMByCWOv/2Ta', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:04:58', '2026-01-07 19:04:58'),
(801, '24258290', 'LUTFI MAULANA', '24258290@sekolah.test', '$2y$12$gZ1RcpHvPmfwJdILuDJhyOz2tmWbQykh92IGNN4XR.b8VpbSQEnsW', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:05:00', '2026-01-07 19:05:00'),
(802, '24258296', 'MARFEL', '24258296@sekolah.test', '$2y$12$FIWxw/i9O1hMgt0mMEAjvOzpNxkyBwGnQ7LNpWz5eGVwsv/oaBQ8G', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:05:00', '2026-01-07 19:05:00'),
(803, '24258304', 'MILA PURWATI', '24258304@sekolah.test', '$2y$12$BGRx.qxYUuqRhboE40YALeUbSVMX9XpBudULnes5Z0V/JjV5VodL6', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:05:01', '2026-01-07 19:05:01'),
(804, '24258315', 'MULYO DWI HAFIDZ HIDAYAH', '24258315@sekolah.test', '$2y$12$iv1n/Enm7KREtFDxtnFsouUSy8N3ZQgIHP7rD3v3BZCRBtHHWOOJS', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:05:01', '2026-01-07 19:05:01'),
(805, '24258328', 'NIZAR ABDALLAH', '24258328@sekolah.test', '$2y$12$YmOYOKoU5fvLo1q1KVICR.7cmfgRYeYVidm19jmekLzkBidVSwRD6', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:05:03', '2026-01-07 19:05:03'),
(806, '24258337', 'OVAL AL MUALIF', '24258337@sekolah.test', '$2y$12$xCv2aHLgfeUcZeNQnu6EN.abZfUOJWAt6DTKON3N2R5XQm0qHCSEm', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:05:03', '2026-01-07 19:05:03'),
(807, '24258356', 'RAMANDA FAHRI', '24258356@sekolah.test', '$2y$12$xN6uLWsUDeJPcKfFzTbleeSZVSgfspkL4X.wrlLWGj47JXrNYSuDC', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:05:04', '2026-01-07 19:05:04'),
(808, '24258367', 'REPAN HIDAYAT', '24258367@sekolah.test', '$2y$12$/gnecBj5cOAeDh4L4/Z//e0WdiD1VxruZ9V.1OwJn8x6.syZgJg0.', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:05:05', '2026-01-07 19:05:05'),
(809, '24258384', 'Riski Saputra', '24258384@sekolah.test', '$2y$12$hnyPBANOPxNXsqW3iAXt6O.BnHXEJ4GC/0kHiC0bCb7x83umUZRo2', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:05:07', '2026-01-07 19:05:07'),
(810, '24258400', 'RUDIYANTO', '24258400@sekolah.test', '$2y$12$4HRhWuZa4QyxXteeT02AQOjnITg4lrh95yQ63Rpxowt7pmDfDq0Li', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:05:07', '2026-01-07 19:05:07'),
(811, '24258411', 'SAUFIQ JUMANTORO', '24258411@sekolah.test', '$2y$12$HgcdNq2.AhkWHhw3GjUy3OaY8/uA9Fhh4HqlW/H/hFdgHKIwSztT2', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:05:09', '2026-01-07 19:05:09'),
(812, '24258418', 'SHEYLLA RISTIANA PUTRI', '24258418@sekolah.test', '$2y$12$4jmB2ejAvwmXwfBIxIJ6tOpuOqVHJnamCES5o7QtbkCWD7SZDuwei', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:05:10', '2026-01-07 19:05:10'),
(813, '24258426', 'SOFIYAN HERDIYANSYAH', '24258426@sekolah.test', '$2y$12$dRGZ8f87RilkHLqDBk6uhedTLvKXEFkeP7cfhwdq2OtFoskTZtkaG', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:05:10', '2026-01-07 19:05:10'),
(814, '24258436', 'Surya Darmawan', '24258436@sekolah.test', '$2y$12$z1cuXWw/o.dI.rBonwLwTucsZZ/13KT.KEulTAcxXC8/tcoCrHMFm', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:05:11', '2026-01-07 19:05:11'),
(815, '24258438', 'SYAFRI IKHFARUL AKBAR', '24258438@sekolah.test', '$2y$12$G5QoeY127JzbJigCoQfTb.H6SGo1TcG7/B63mD6MqdSqQoT6hQ/ya', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:05:12', '2026-01-07 19:05:12'),
(816, '24258472', 'Wisnu Kurniawan', '24258472@sekolah.test', '$2y$12$gvfGClcb2HgtUM6yV2wiMeaZff1bWvh7woDWOfOpau7zUYJiwU.BS', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:05:13', '2026-01-07 19:05:13'),
(817, '23248037', 'ZIBRAN ABIYASO PUTRA PAMUNGKAS', '23248037@sekolah.test', '$2y$12$BtZ2SEnDs70.t.ggmV1Y2OTY1Pz/MxWqZwBMtLH5gPs9ktVGQdB2a', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:05:14', '2026-01-07 19:05:14'),
(818, '24258481', 'Zidane Purnomo', '24258481@sekolah.test', '$2y$12$LdI.spiUwdbfP2TWekRxwOBokrZWDfJdSyw5m1M0164bywUykn4Gy', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:05:15', '2026-01-07 19:05:15'),
(819, '24258087', 'ADITYA EGA NURGALIH', '24258087@sekolah.test', '$2y$12$MQyjL5DJj.U9BzgOuph/eeQQfFnEO0Z4AT1uWzio449CfgrYWaNvK', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:05:16', '2026-01-07 19:05:16'),
(820, '24258093', 'AFRI TRIA SUGIHARTO', '24258093@sekolah.test', '$2y$12$IasJygVf9is3bRa/MurWDugfcTVfv44lqA1t7Ld2UZdb7vrTPTjzK', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:05:17', '2026-01-07 19:05:17'),
(821, '24258100', 'AGUS SATRIO', '24258100@sekolah.test', '$2y$12$Q2LSFwDG8vvjXibry.w0t.RaacEQk.VEpXDxtnvz1cOX9alqGgvuK', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:05:18', '2026-01-07 19:05:18'),
(822, '24258107', 'AL MUMIN AHMAD RAMADHAN', '24258107@sekolah.test', '$2y$12$BQc67AjxU1Qp.JwVJRrk/.TqveIctrHpTP4FSLLZ3.jBgMaASimWC', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:05:19', '2026-01-07 19:05:19'),
(823, '24258128', 'ANDRA SEFRI SAPUTRA', '24258128@sekolah.test', '$2y$12$w2CSU10jNBXy3Na.asVpX.fK27IdhMmnw548tGgRRogHcEStVdYbS', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:05:19', '2026-01-07 19:05:19'),
(824, '24258140', 'ARGA SUBACHTIAR', '24258140@sekolah.test', '$2y$12$zW1TzDs2u20ZhY4jBKQo0.h51/iNB86V94MuJGoIaa5gONnuDjTE2', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:05:20', '2026-01-07 19:05:20'),
(825, '24258159', 'BILAL SYAFARUDIN', '24258159@sekolah.test', '$2y$12$PoknVzqjRJEwuhd4pIeSouZe1dWupkARpiG1vfm9DZson.7NZ0Ml2', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:05:20', '2026-01-07 19:05:20'),
(826, '24258163', 'Candra Adi Pratama', '24258163@sekolah.test', '$2y$12$ip4T40qyDXF28DMJ4JBzuuBxShMqcEqR94vRVwjZEnP07yK/SLC4K', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:05:21', '2026-01-07 19:05:21'),
(827, '24258166', 'CHICO ZAKY RADHINKA', '24258166@sekolah.test', '$2y$12$diaj5kMW0qrd9Exc8lanLOBPragArxOM2rxJmGyOcOh/9Y5yRMcvG', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:05:21', '2026-01-07 19:05:21'),
(828, '24258168', 'Dafa Saputra', '24258168@sekolah.test', '$2y$12$v4SRrjxb6d1e6BFjMsQ7GuXofJjSYdL2LEZ5ZuxQhmn2h.sSfVxiG', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:05:22', '2026-01-07 19:05:22'),
(829, '24258170', 'DAFFA YUSUF AL FACHRI', '24258170@sekolah.test', '$2y$12$6WN25wBqJPgXFj001pamzeMUcFBOSG3ydLm6sLl5AsdbQcpgyRY1S', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:05:22', '2026-01-07 19:05:22'),
(830, '24258181', 'DERI SANJAYA', '24258181@sekolah.test', '$2y$12$leAQ8.uEjkHLadL3JNu0rOT7n7/7GRbs11UQ6gGhCJe.aisJ1pEw6', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:05:23', '2026-01-07 19:05:23'),
(831, '24258197', 'DONI', '24258197@sekolah.test', '$2y$12$RnUPlAz9wBakHNWdHOrdz.8dzRzqHqyeAX8saOWNesgQT.1o.vqIm', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:05:23', '2026-01-07 19:05:23'),
(832, '24258198', 'DWI ALDIKA NUGROHO', '24258198@sekolah.test', '$2y$12$CpwQa4B3o/9s/A9Io5A0I.sWL3GBXcagq1rB39VXLiqOYIb9gC7j6', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:05:24', '2026-01-07 19:05:24'),
(833, '24258207', 'FADZLI RABBANI', '24258207@sekolah.test', '$2y$12$J2brnWvFYMVxt.s8vY5Q3uYeY37BjvC3HO6QjimU3JAP1FqgU8lu6', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:05:24', '2026-01-07 19:05:24'),
(834, '24258219', 'FARIJ AKBAR', '24258219@sekolah.test', '$2y$12$uN6VCD4IfPtQBanYBFLv6O6fTYSz5pRiHBF4Ht0HrIz/8GmNQ3WqS', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:05:25', '2026-01-07 19:05:25'),
(835, '24258222', 'FATTAN AMRIZAL SYA\'BANI', '24258222@sekolah.test', '$2y$12$uRRbGnlUns8zA9VdVEoXxOtWQEY/S2IaYAXSX58iw/F3zwHjt5826', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:05:25', '2026-01-07 19:05:25'),
(836, '24258226', 'FEBRIAN IMAM SANTOSO', '24258226@sekolah.test', '$2y$12$XstlMOpbcUBmC4RA1iF9nONSkmmkiZAvq97.Weiqsql3Nval8oSni', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:05:26', '2026-01-07 19:05:26'),
(837, '24258234', 'Gangga Aji Saputra', '24258234@sekolah.test', '$2y$12$JrVNlFPMMt/DkubTfMmhzOGm4YyiuufAc.wDHRJAJUHaM2ePT7uEi', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:05:26', '2026-01-07 19:05:26'),
(838, '24258235', 'GHANIF NUR FADILA', '24258235@sekolah.test', '$2y$12$ScFO5Eqmdx465UgM8Oo1n.552Ptc4PULCgXOPnK1RZ7MH.Ev7n8te', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:05:27', '2026-01-07 19:05:27'),
(839, '24258237', 'GILANG ADI SABEKTI', '24258237@sekolah.test', '$2y$12$jDAWE.dN6cNhr0O1RclJyudr/tMLNekdrmbxj6bZbSZ259oupKdC.', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:05:27', '2026-01-07 19:05:27'),
(840, '24258246', 'HOKY KRISDIYANTO', '24258246@sekolah.test', '$2y$12$jw4gMNlWs7VCnSKiFwwhDeBhSK03fXShDREWsCRRKGGlHFsrciu02', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:05:28', '2026-01-07 19:05:28'),
(841, '24258279', 'KIKI FAREL', '24258279@sekolah.test', '$2y$12$WP9aEF67GDp.8J0mu8pQQemEI/rlsQJLhqoMx3FY0TLQYCDbKijC.', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:05:28', '2026-01-07 19:05:28'),
(842, '24258308', 'MUHAMAD RIJAL RAHMATULLOH', '24258308@sekolah.test', '$2y$12$X7.bFeZwhm9QlL685XTS8OmtUHfdZoprd/DmVIo8UHIMVlHNecxjm', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:05:29', '2026-01-07 19:05:29'),
(843, '24258335', 'NURUL PAZRI', '24258335@sekolah.test', '$2y$12$pt383xqankYrIYBEkISGX.qsryp7wv9ZtNfIcTi1sigRx8o7ReqZ6', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:05:29', '2026-01-07 19:05:29'),
(844, '24258338', 'PAMBAYUNING YUAN PRAMESTI', '24258338@sekolah.test', '$2y$12$LqDTORKp7Aae1C5xYj8dP.uVKI2A1f5k6tD6TrGciLxs1kc/E2QMa', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:05:30', '2026-01-07 19:05:30'),
(845, '24258364', 'REHAN ANURI', '24258364@sekolah.test', '$2y$12$9IkSs8atzGblZUe6GUU49eONbpbPoOuXBXZhdPj1xlLDvUfAsx8zG', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:05:30', '2026-01-07 19:05:30'),
(846, '24258392', 'RIZKI SAPUTRA', '24258392@sekolah.test', '$2y$12$ZxPjfxnOgdk4o2uGDOm3h.DGMZc9NnrjVuZzVzi3nXuIBYksqVfRq', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:05:31', '2026-01-07 19:05:31'),
(847, '24258394', 'RIZQI ADITYA SAPUTRA', '24258394@sekolah.test', '$2y$12$1./tth7vMQjkoo6nKpFTsu.0BllcGQMqrhw/PCtwuDWOBnCsfBC/2', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:05:31', '2026-01-07 19:05:31'),
(848, '24258428', 'Soni Kurniawan', '24258428@sekolah.test', '$2y$12$DTrBr9T46AUNGQixYN.73.f/kK.pyld.cnpmbTw/4fIgzZlUjToaO', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:05:32', '2026-01-07 19:05:32'),
(849, '24258434', 'SULTAN HASAN', '24258434@sekolah.test', '$2y$12$TDDNiJzjw/HlHLB8jJJhfuQ2AG5ZL8o59o16loli.JOWIhDGXMBqK', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:05:33', '2026-01-07 19:05:33'),
(850, '24258455', 'TRIONO JAKA SAPUTRA', '24258455@sekolah.test', '$2y$12$lPa.9K12XDuHTL4HoR7inOFdGS1EYduCOSGYG2GqTxRw51WDyk1ne', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:05:33', '2026-01-07 19:05:33'),
(851, '24258456', 'UJANG IRWANSAH', '24258456@sekolah.test', '$2y$12$7Vu4426bc8CbWRKbOzdqTO7daWFx3YHTcl7wt.yDnEsKfzYlrW/7.', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:05:33', '2026-01-07 19:05:33'),
(852, '24258468', 'Wahyu Saputra', '24258468@sekolah.test', '$2y$12$G5w4UGcNNyKxFRCXKekVk.9Za0weuSGcBM/TlaDNbPyRlagdf2jsa', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:05:34', '2026-01-07 19:05:34'),
(853, '24258471', 'WISNU HANAFI', '24258471@sekolah.test', '$2y$12$.CBIvYv8pK.cAIb2o01vie.EBeyErShVd2jHuCm5ZeLfu93ng9ZFW', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:05:34', '2026-01-07 19:05:34'),
(854, '24258474', 'YOGA PRATAMA', '24258474@sekolah.test', '$2y$12$uuBR.MI.8pAxEtcIUZSaUeKzROGg3MflOKFgkJcG/K6ykf/Hfx3/S', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:05:35', '2026-01-07 19:05:35'),
(855, '24258480', 'ZAKI PRASTIO', '24258480@sekolah.test', '$2y$12$3EtNbmv2svucLeGw8eI3W.JEGk5M0A3amAtkag8rna.oRO/36yar2', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:05:35', '2026-01-07 19:05:35'),
(856, '23247679', 'ANGGITA RIANY', '23247679@sekolah.test', '$2y$12$32vY70VzZ91p2AO0yJ3id..BsrmqB.ir2bYWt1re5f881e.fva8fa', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:08:36', '2026-01-07 19:08:36'),
(857, '23247730', 'DIAS AYU LESTARI', '23247730@sekolah.test', '$2y$12$UEDadiccaZvlVnEvAzj3N.W7ufIUOZqi9XKXJR.Xf890TwF8Yl2O2', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:08:37', '2026-01-07 19:08:37'),
(858, '23247740', 'DIVA INDAH AGUSTINA', '23247740@sekolah.test', '$2y$12$2VpQJNPKMBsmfIoy8d9UIOhJL.9/W8zyV0rjXhvjJsmI1V5Vnict2', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:08:37', '2026-01-07 19:08:37'),
(859, '23247757', 'FAIHA NADILA', '23247757@sekolah.test', '$2y$12$rB0s8C7ZfiEZy.30JbdaR.3wmP7pr7E1oCWca58j05FNDGJjGYUuq', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:08:38', '2026-01-07 19:08:38'),
(860, '23247770', 'Firda Juwita Zul Faliana', '23247770@sekolah.test', '$2y$12$lI53lC.8u9w6j.1E0JQInurS9AccwIZiCGGzqyOc9TMjVQzqWnAIq', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:08:39', '2026-01-07 19:08:39'),
(861, '23247800', 'Indah Safarah Fitria', '23247800@sekolah.test', '$2y$12$k.8tNpU/G0s8ilT3CIU5huDwr3mcLSmqUF8wZ42yBwJ3ajXbE8HLm', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:08:40', '2026-01-07 19:08:40'),
(862, '23247801', 'INDIRA AYU ISMANDARI', '23247801@sekolah.test', '$2y$12$6Tn987o6n16pRCqROGRlYuI4DEi60RmdYkxbyxnq87qxs.p9nc.h2', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:08:40', '2026-01-07 19:08:40'),
(863, '23247803', 'Inez Evan', '23247803@sekolah.test', '$2y$12$P4kgqtZ45xgjg59gU1tW0uRUbR2/Ys2dy4aKhojOj24UCfYrlnk8S', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:08:41', '2026-01-07 19:08:41'),
(864, '23247811', 'JESIKA', '23247811@sekolah.test', '$2y$12$SIVbunrhr4gS52UIdPOWPeiUBFI7n555yXXMOLzUx1YHCqYrxf4vO', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:08:42', '2026-01-07 19:08:42'),
(865, '23247814', 'JULIA PUTRI AYU DELVIRA', '23247814@sekolah.test', '$2y$12$tWcv/GjfBfH/EgXXnMz/COWkXUVCMQootIwQRJwIlOmx/A7bRHDzy', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:08:42', '2026-01-07 19:08:42'),
(866, '23247838', 'MARSELA ELISTIYANA', '23247838@sekolah.test', '$2y$12$VCQwTmuXfRbsEIwljX3B9uE96Jd2DEHSSQxfy/OgZ48TqtS1SZkNu', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:08:43', '2026-01-07 19:08:43'),
(867, '23247862', 'NADIYA ADI SAPUTRI', '23247862@sekolah.test', '$2y$12$U5wxt3EXaydpuUEwKut1CeIBfyGerNpibQESDb8AWY2NSQpPMPNYm', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:08:44', '2026-01-07 19:08:44'),
(868, '23247869', 'Nazwa Salsabila', '23247869@sekolah.test', '$2y$12$TvhdaQEEjfb7JI3Yq/9F1eZwX1bkHsFt0gX75n3GrvBeMIbWyBJt.', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:08:44', '2026-01-07 19:08:44'),
(869, '23247873', 'NISA NURAINI', '23247873@sekolah.test', '$2y$12$PsdMVKE3I.P5Y.4xkLq5F.eZ4CnLmWppAgWNkGm93GIQwysZXE0c.', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:08:45', '2026-01-07 19:08:45'),
(870, '23247875', 'NOVINA SRI RAHAYU', '23247875@sekolah.test', '$2y$12$GcKIs7UmRba.EBzwcpw/suIeWx0St9utu9SpI6.OqhIZqFoXo1SuW', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:08:45', '2026-01-07 19:08:45'),
(871, '23247908', 'REVA RIYANTI', '23247908@sekolah.test', '$2y$12$iYjvlJ7wuaitiePP68AYIOK2m07Syk1aw94/QOVBDQTdAotR6lILC', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:08:46', '2026-01-07 19:08:46'),
(872, '23247948', 'SARAH AGUSTIN', '23247948@sekolah.test', '$2y$12$q.PArqTmeBN1G0uu/NjXF.XkC9LAhAH21q0ZAKmoBqSIBAtiJEY3e', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:08:47', '2026-01-07 19:08:47'),
(873, '23247964', 'Silviana Lintang Andriyani', '23247964@sekolah.test', '$2y$12$3UFuRlmg9GL6Na/e2RZEIuo3jp7Pv1wK3t2J6bBBAUocyb14WpNim', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:08:47', '2026-01-07 19:08:47');
INSERT INTO `users` (`id`, `username`, `nama`, `email`, `password`, `password_text`, `role`, `foto_profil`, `foto_unggulan`, `is_active`, `reset_password_token`, `remember_token`, `created_at`, `updated_at`) VALUES
(874, '23247985', 'SYAHLA MEILIA', '23247985@sekolah.test', '$2y$12$SCDFOnsEscYUlbgwcLzgMuWxoTh9Zi62zQk9hFPSVVyRlphmGBSk2', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:08:48', '2026-01-07 19:08:48'),
(875, '23247998', 'TIARA DWI SAFITRI', '23247998@sekolah.test', '$2y$12$nvZo1tPlWPspmlwgRATyO.40oVLApKEsxUY9WdFi9/F1TrV/jcixS', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:08:49', '2026-01-07 19:08:49'),
(876, '23248008', 'UNES AMANIA', '23248008@sekolah.test', '$2y$12$WZ1iypVGCWH.wkGcXzJ/ROYF.9ieywduCq7ga2rNvas449hZ6KBc.', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:08:50', '2026-01-07 19:08:50'),
(877, '23248013', 'Vivin Hayati Hasanah', '23248013@sekolah.test', '$2y$12$Swpq31s4VS6zIkgTm9zwX.iOzkqRh5oLX/X7OW.dR8XJA4RyAKdzu', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:08:51', '2026-01-07 19:08:51'),
(878, '23248019', 'Widia Aulia Assyifa', '23248019@sekolah.test', '$2y$12$jJLoavqffALT3fu/xSOEgusW0D8ohoJBVFJi/k1Mzw.uMnbCnyR32', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:08:52', '2026-01-07 19:08:52'),
(879, '23248021', 'WINA ROSMILA', '23248021@sekolah.test', '$2y$12$ZsEHj1KOVZ.Ir4rSM0dx1upQ36ri/SNovtm/veBhT44IMghXPXare', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:08:53', '2026-01-07 19:08:53'),
(880, '23248024', 'YETI WULAN SARI', '23248024@sekolah.test', '$2y$12$ga.ZTRnJUsNOVgbhnVBbaeRvLyG/gm1OP9MR5Nl7vdYuMqZmSdioS', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:08:53', '2026-01-07 19:08:53'),
(881, '23248035', 'Zazkiatul Aulia', '23248035@sekolah.test', '$2y$12$iZId2IiDOtfEN16EnCOsRu83KRMjl4MESpCn013XdPmvfj2szIT2K', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:08:54', '2026-01-07 19:08:54'),
(882, '23247692', 'AULIDIYA MUHAYATI', '23247692@sekolah.test', '$2y$12$4iVH7ZaEKkjsYIT9XwoDmuOR.sC9zF3Eh4X5PXsNCJuISv5xJ64xu', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:08:55', '2026-01-07 19:08:55'),
(883, '23247693', 'Auliya Ramadhani', '23247693@sekolah.test', '$2y$12$7SjqOAt7PHLK6Ei5ftBpM.t9bNEw2001mZdiJdyjQfoVbd./s/teW', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:08:55', '2026-01-07 19:08:55'),
(884, '23247708', 'Cantika Febriyanti', '23247708@sekolah.test', '$2y$12$QTPJufZY0Adre.q9ZPwQ3eWfVfrtTjO9JSZWwZJoChsN1phK1EPf6', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:08:56', '2026-01-07 19:08:56'),
(885, '23247712', 'CHINTYA SABRIANA', '23247712@sekolah.test', '$2y$12$qpQRtFebRzPXIh7cgwB8GenGgPmOQW//4z1EJg26N156aZdILVl0a', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:08:56', '2026-01-07 19:08:56'),
(886, '23247720', 'DANITA NURCAHYANI', '23247720@sekolah.test', '$2y$12$LfD8zZInMBjZvcks/qAPPOsOvaAm2OGyvf1X3Q9qJNQX3qv/lt6k2', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:08:57', '2026-01-07 19:08:57'),
(887, '23247741', 'Dwi Baitulrohmah', '23247741@sekolah.test', '$2y$12$uJKbTxbaD1jjnkSFMxIuiOdSKjcyGrIOIIrj1CoWCAoLP7bs1TsVy', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:08:59', '2026-01-07 19:08:59'),
(888, '23247745', 'EMILIA PUTRI MAHARANI', '23247745@sekolah.test', '$2y$12$0UxjM/wgE.o3Z83w9AsxiOEUeSM8XAm7Yi68XP5RkxysqebLCBDhG', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:09:00', '2026-01-07 19:09:00'),
(889, '23247775', 'FITRI NUR OKTAVIYANI', '23247775@sekolah.test', '$2y$12$RQKhRqzBh64pwUJv2m4hsOUL/JsdnXRuO9JdQBBbJDN1VqY854E1m', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:09:00', '2026-01-07 19:09:00'),
(890, '23247780', 'Halimatu Saadiah', '23247780@sekolah.test', '$2y$12$emjpk7Vm2I6GBoNR339Kc.bQe0vYz1c37wWE.7fyEht5s6J0mhRni', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:09:01', '2026-01-07 19:09:01'),
(891, '23247808', 'ISNAINI NUR FAUZIYAH', '23247808@sekolah.test', '$2y$12$Umv9SLYVEUYQThhd4c7jCe8NLHVlO8hbLLcGg1oXomKmJR4vv2Wmi', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:09:02', '2026-01-07 19:09:02'),
(892, '23247810', 'JELITA NUR OKTAVIANI', '23247810@sekolah.test', '$2y$12$yTGSBm2mGZTKzoEy8ANGoeUeU9JE9XLbt/EhDKfdYVd7xuNynQ.v.', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:09:03', '2026-01-07 19:09:03'),
(893, '23247825', 'KHALIMATUS SAADIYAH', '23247825@sekolah.test', '$2y$12$VuEp4CsSN7FhroBCUBUN0uMuUlzpmDDyHBormO5mPMgYmrePqp0pW', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:09:04', '2026-01-07 19:09:04'),
(894, '23247834', 'Luki Adi Wijaya', '23247834@sekolah.test', '$2y$12$bUXQSwO1jBTBfGRu7Eo90uV1OCxK0jxpTRz2gE5dxO4Dcr8O25K1e', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:09:04', '2026-01-07 19:09:04'),
(895, '23247861', 'Nadia Rahmawati', '23247861@sekolah.test', '$2y$12$GyIM/6A26nt4Zq62891.MOcPR/xY21maZs8IUMWfGv2PnUXSx.tc2', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:09:06', '2026-01-07 19:09:06'),
(896, '23247879', 'Nuryeti Atmah', '23247879@sekolah.test', '$2y$12$.HnDVPysVQ7pjm/kxDJcoOI65YnCBwUpwIBMHwbY.VuZsulYnAHua', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:09:07', '2026-01-07 19:09:07'),
(897, '23247939', 'Salsa Fadilla Turohmah', '23247939@sekolah.test', '$2y$12$4AJ/4WuKj4qCfXMYNKioB.d2P5t5ggX7va1zpeDRNobeQKp2lHwyC', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:09:08', '2026-01-07 19:09:08'),
(898, '23247946', 'SANTIKA', '23247946@sekolah.test', '$2y$12$f49PE/Js0xRBvbEyFIc59u077DU6E9WNKIgePX.kqFlaGsEJqwKIO', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:09:09', '2026-01-07 19:09:09'),
(899, '23247959', 'SHINTIA DEWI ZHULIASARI', '23247959@sekolah.test', '$2y$12$nfUPRBCmV5DIfNvxi5ccK.Bl0RuRwcMFnzOPfoEgkEIGXW4Ok/LD2', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:09:10', '2026-01-07 19:09:10'),
(900, '23247965', 'SINTA DWI ARYANTI', '23247965@sekolah.test', '$2y$12$RPKlzoPU5TM32t0/d.GmzeZY0QSvud4GQGlkV35BCWiHLWe.K/oEq', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:09:10', '2026-01-07 19:09:10'),
(901, '23247969', 'Siti Marwah Nurhayani', '23247969@sekolah.test', '$2y$12$cQQigyvdtXAww2FeruC.wu9u.rm6PogmgVzw69Im4KtY.5FToAiB.', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:09:11', '2026-01-07 19:09:11'),
(902, '23247980', 'Sukma Wijaya', '23247980@sekolah.test', '$2y$12$vox5tluRk5wVv4HkqiXxN.Cd2envpDTyhYgNpmbpMo8c2peoklZUG', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:09:12', '2026-01-07 19:09:12'),
(903, '23248000', 'Tika Lestari', '23248000@sekolah.test', '$2y$12$h3/bZMQMfoMryYEvx7z.9.SEmoALEnvBNoiVhQ1UVbka/A0oji4E6', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:09:12', '2026-01-07 19:09:12'),
(904, '23248006', 'TRI YULIANA', '23248006@sekolah.test', '$2y$12$Py/NEm1lYObR/tiGbeqBR.V08IT28HPvWMI2.8AUUzmMGXFl7GrKm', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:09:13', '2026-01-07 19:09:13'),
(905, '23248028', 'ZAHRA', '23248028@sekolah.test', '$2y$12$IRsVVifiSbZ3wuShgwmL.Onn5oMPnKBr29xFhIn8lsFhvZgzdUDiG', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:09:14', '2026-01-07 19:09:14'),
(906, '23247627', 'ABIM RIANSYAH', '23247627@sekolah.test', '$2y$12$fHC3zkxtwhQtgiY7xh0t.etQUtsXa.szRNiHtmq1z5groXzTNx.D.', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:10:49', '2026-01-07 19:10:49'),
(907, '23247629', 'Ade Rizkita Fitri', '23247629@sekolah.test', '$2y$12$KYXs0ZTSjalYJo.okixgiOLsPqntsnl7VUajKSjhgVmZ/hDYyB.X6', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:10:49', '2026-01-07 19:10:49'),
(908, '23247633', 'ADIRA AGUSTINA DEWI LESTARI', '23247633@sekolah.test', '$2y$12$ocMLlC.RMwLb4NNAAZo.2uPsUycTaZEBBbKmXH5AfjFe9bGm7K.z2', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:10:50', '2026-01-07 19:10:50'),
(909, '23247650', 'AISAH DWI NINGRUM', '23247650@sekolah.test', '$2y$12$AZ7eZUsyJh4NIVUD45mAxOGeVCmpdS8BAGALV5GZWA2hs0OyCLjIq', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:10:51', '2026-01-07 19:10:51'),
(910, '23247690', 'AULIA', '23247690@sekolah.test', '$2y$12$ZyVEA8OS7EuVP.dDnmc72OhOcQ.maEiqMT5hGFeqk5ftKmPYp.WX2', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:10:51', '2026-01-07 19:10:51'),
(911, '23247715', 'CINTA NUR FEBIYANI', '23247715@sekolah.test', '$2y$12$0Vypa70VG42fCg2b4s3p6usq8NIaJuv8GQyH4YLd2Jc/OFLwwumdO', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:10:53', '2026-01-07 19:10:53'),
(912, '23247736', 'DIKI PRIYANTO', '23247736@sekolah.test', '$2y$12$rgHL2yNOT1hPcRiWrCSyY.ySP2mWTEji1vbCjRaXnCVTsNwUvyHz6', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:10:53', '2026-01-07 19:10:53'),
(913, '23247747', 'ENI SURYANI', '23247747@sekolah.test', '$2y$12$NRnHk77nsiza0KuoPAKJVOC2Jq.uPoZbX/..NOXOkf5qMkh.hi5Uy', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:10:54', '2026-01-07 19:10:54'),
(914, '23247767', 'FINFIN APRILIANINGSIH', '23247767@sekolah.test', '$2y$12$K8TivCPZJEKapYo5NWUU2.uUy2EjYxDGyKtVNkvuJiLNrRIp61c5q', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:10:54', '2026-01-07 19:10:54'),
(915, '23247787', 'Holfiyatun Nasiroh', '23247787@sekolah.test', '$2y$12$pW1S7lVzHCi7aCYaCgnwvuuyGATlR93JIXKXL.U5iK1i4kI389Pi.', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:10:56', '2026-01-07 19:10:56'),
(916, '23247802', 'INDRI YUNIARTI', '23247802@sekolah.test', '$2y$12$stwMLlcHqGW/Aa3t5RSr6uzKQwIjxXlGqDKme.EMVwncohPuq4XvC', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:10:56', '2026-01-07 19:10:56'),
(917, '23247822', 'Kesya Nurhasanah', '23247822@sekolah.test', '$2y$12$8.sYN90GM4uSUEhSWwKacuUHX/pbXa2XU6qqmYOoS6AOooL4PVh6e', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:10:58', '2026-01-07 19:10:58'),
(918, '23247832', 'LENA SARI', '23247832@sekolah.test', '$2y$12$yiwcJBtu0W0MRZZ20HY2HOD150zDzF03TqegC4qEYdj9/9RcPw15C', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:10:58', '2026-01-07 19:10:58'),
(919, '23247836', 'Lutfiyatul Fatimah', '23247836@sekolah.test', '$2y$12$vw08VqxM85jpkzHND6i6EuWHt05z2g1CUxnYE40Zo.ZXe6oshcVg2', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:10:59', '2026-01-07 19:10:59'),
(920, '23247863', 'NAFA SUCIATI', '23247863@sekolah.test', '$2y$12$VgaNQ9q5qRk3ATKj9/GISuNmYcTS/cHpcwd9qMmNOO.4vJnH1xsMy', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:11:00', '2026-01-07 19:11:00'),
(921, '23247955', 'SELA PEBRIYANTI', '23247955@sekolah.test', '$2y$12$xdv.temwRmKXxzUKrjEXuutIrbrUuVPsjZlh8IVMZzMxxhuGpMkx6', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:11:01', '2026-01-07 19:11:01'),
(922, '23247958', 'SEVIRA RAKHMADANI', '23247958@sekolah.test', '$2y$12$Ihhqa2sxX57.wqI.WpWYGeeAU4iUg9eQq.JnX.z8HnMZxJ99DBoiq', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:11:02', '2026-01-07 19:11:02'),
(923, '23247972', 'SITI ZULAEHA LESTARI', '23247972@sekolah.test', '$2y$12$DFYZjcM6bCDAPJH3oR.weeI43AqoWI7864LBvN5Jb6JrIcm0JT7gC', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:11:02', '2026-01-07 19:11:02'),
(924, '23247979', 'SUCI NOVITA SARI', '23247979@sekolah.test', '$2y$12$uw/EWVadZXSyjI44WXnebetXUS5kd30vEH8CF/R5NP7N39QE.4i0S', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:11:03', '2026-01-07 19:11:03'),
(925, '23247989', 'SYARA DWI AJIJAH', '23247989@sekolah.test', '$2y$12$7JbVS71EB.byOFRkNGqCK.EN1nIOZXXrJlbi1b/cG10ZsIzAzQUMK', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:11:04', '2026-01-07 19:11:04'),
(926, '23248014', 'VIVIT PUTRIYANI', '23248014@sekolah.test', '$2y$12$cthw4t8QnbMl4Zx.ECyV0./faj99MTokEfQ4NsqcyrT3rm3vBBzyu', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:11:05', '2026-01-07 19:11:05'),
(927, '23248030', 'ZAHRA NURUSSHIFA', '23248030@sekolah.test', '$2y$12$y6hVOKeqVTCEZCAuKXNinuXAqty21GaxuPvAHhhpmj8QlGneVD7TK', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:11:05', '2026-01-07 19:11:05'),
(928, '23247649', 'AIN DIASTUTI RAHAYU', '23247649@sekolah.test', '$2y$12$A2SD/ERqmpJnzuR57NEhV.G.EGduXrXqAwqO6IJmDtPpf9SCUYz2.', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:11:06', '2026-01-07 19:11:06'),
(929, '23248046', 'Alifa Chika Meivia', '23248046@sekolah.test', '$2y$12$5vuBgHIP3nzqmJVAyrf2OeQipXudskgm6FauHh3Ym2ZKrYKmwXGBi', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:11:07', '2026-01-07 19:11:07'),
(930, '23247669', 'ANA RAHAYU NINGSIH', '23247669@sekolah.test', '$2y$12$C/eaDt6EKpMc3jaKD9HykOvs/qYXNobrqddIMrQbceSMBL2ewZsZS', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:11:07', '2026-01-07 19:11:07'),
(931, '23247705', 'BUNGA HARMONI', '23247705@sekolah.test', '$2y$12$HxFTXqJVeLGtBw/RTd.jbOYrNFx2H6Dwxr1OXAHE3/Sdu1G05RhLC', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:11:08', '2026-01-07 19:11:08'),
(932, '23247723', 'DARA TRI LATIFAH', '23247723@sekolah.test', '$2y$12$7hZIblRe9TYXECsOdlOriubN0xIHZJbYGVjaejT6vYKonlQtPt77.', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:11:10', '2026-01-07 19:11:10'),
(933, '23247728', 'Dian Apriyani', '23247728@sekolah.test', '$2y$12$k5ast.R/quWc9xJKZ6AGKO1/.HyA3ug9qxArnjk.nnLN6OrFN0.i2', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:11:11', '2026-01-07 19:11:11'),
(934, '23247737', 'DILA APRILLIANA', '23247737@sekolah.test', '$2y$12$/32mTJe/Pdj1GAXfXYlgLuiZis5X4S0AGxmPc8gWhTrotx0wPTnN.', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:11:12', '2026-01-07 19:11:12'),
(935, '23247760', 'Fajri Mulya Fitri', '23247760@sekolah.test', '$2y$12$/9gzj96Tz2hjOkUd5PpVbelVa6KYpJrxnBNdEVfEs5wpKv0AFMsuS', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:11:12', '2026-01-07 19:11:12'),
(936, '23248047', 'INDAH JAMI\'ATUN LESTARI', '23248047@sekolah.test', '$2y$12$wgLv5C99J.e1dDewOuZ1ruujpCLT5MrzxOpSluM.0ZvHd8gM.XhXy', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:11:13', '2026-01-07 19:11:13'),
(937, '23247812', 'Jingga Putri Lestari', '23247812@sekolah.test', '$2y$12$nFUPOmK7DtHjFx7grzWAV.o4nZPbiD929x.Q4zOeDtHXpS3I.BXYy', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:11:15', '2026-01-07 19:11:15'),
(938, '23247815', 'Junita Rahmawati', '23247815@sekolah.test', '$2y$12$bYIdCSazKXIujjIFok9oSeCYgoMRNuGcvMG/shNUKvFVGSYP7kyXm', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:11:15', '2026-01-07 19:11:15'),
(939, '23247816', 'JUWITA SUKMA RAHAYU', '23247816@sekolah.test', '$2y$12$Db9jTEBX2NX5lpb1AKeJmuT7LUOE7n0WBYr.l/cWFemdXf5ln7QCS', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:11:16', '2026-01-07 19:11:16'),
(940, '23247819', 'KARINA KHOLIFAH', '23247819@sekolah.test', '$2y$12$YvmHyJT6RkluaqqY4flQzOalSKIY11zJa3QLEXG1KV7O3rqReajGO', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:11:16', '2026-01-07 19:11:16'),
(941, '23247824', 'KEYSA DYAH KUMALASARI', '23247824@sekolah.test', '$2y$12$pRoEFQstyhSOd76pIiLsVO8AU/.Rdj3pAJgkSuaiDa7OF3NfzPrSq', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:11:17', '2026-01-07 19:11:17'),
(942, '23247833', 'LISNA FIGIYANI', '23247833@sekolah.test', '$2y$12$2ReR936hojxdxY7RAtZn..KE9QzWy3pO2Jww8s3./OlUg33t7lweO', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:11:19', '2026-01-07 19:11:19'),
(943, '23248048', 'Lolyta Putriana Hilmantoro', '23248048@sekolah.test', '$2y$12$oV5aZKELooWmbd0qFNpf1eWoSVVF4RGBX29UsRmvAm7elhz3fLIGq', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:11:19', '2026-01-07 19:11:19'),
(944, '23247860', 'NABILA SAFITRI', '23247860@sekolah.test', '$2y$12$U7CGypMWR3cNzT.ynxJTq.IA4eHDBRRYj2XyGCXTPV8rHzlmN8c..', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:11:20', '2026-01-07 19:11:20'),
(945, '23247870', 'NESTI SUNDARI', '23247870@sekolah.test', '$2y$12$WMrTTMhmCgXgKzwnkXh8YOJTgxgHqHofVvpOWjlu9.hTTOK247jxy', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:11:20', '2026-01-07 19:11:20'),
(946, '23247880', 'OCA YUANITA', '23247880@sekolah.test', '$2y$12$BLsD4wP5sTj6noCgCQvt1OW7uDeuwBKyj3QhcM9hIU9rt/OjFKCxK', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:11:21', '2026-01-07 19:11:21'),
(947, '23248053', 'SELLY SESILIA AL FIANTI', '23248053@sekolah.test', '$2y$12$SXUERnKgYTYxw4v9WBJBhu1xexbnttii7Cz.rWfqqNivKTCAJ09D2', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:11:23', '2026-01-07 19:11:23'),
(948, '23247957', 'Sevina Tri Amalia', '23247957@sekolah.test', '$2y$12$ck4jCeQFIn9MNWT7ViaJzuFBdUDQE0XXQze2bHM4NPH9HKCzFvPVS', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:11:23', '2026-01-07 19:11:23'),
(949, '23247960', 'SHINTIA INDAH LESTARI', '23247960@sekolah.test', '$2y$12$6rbbnFMZtkQi6T5bJQnkiOIgUaIG1.YN3KsV2gwRBHoXj.EqQz.dy', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:11:24', '2026-01-07 19:11:24'),
(950, '23247968', 'SITI KIRANI NURVIANA', '23247968@sekolah.test', '$2y$12$OheKL2Ekz9DyNMtkl5S.NeLLz6m0PjaXu2OfWHBMP0umxbEPixPTC', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:11:24', '2026-01-07 19:11:24'),
(951, '23247976', 'SRI RAHAYU', '23247976@sekolah.test', '$2y$12$q4rotqP40ZCMTmBHo.HLfux5hAnEpntkZq4wlXCBVzqVeQZQl9Eka', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:11:26', '2026-01-07 19:11:26'),
(952, '23247984', 'SYAFKAH FALIYAH RATMONO', '23247984@sekolah.test', '$2y$12$pnuScJMUqYIoN6AB2vbXfOQIA8RkkDtX6ZYVRTx3KGJicS8SZ4dpO', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:11:26', '2026-01-07 19:11:26'),
(953, '23248045', 'TAAT PUJI RAHAYU', '23248045@sekolah.test', '$2y$12$/.8Lc3n78KpCsyaZMhhlQO.gP.3XPbqhhncSNjt/oSL0ZMPf4XA0K', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:11:27', '2026-01-07 19:11:27'),
(954, '23247999', 'Tiara Ramadhani', '23247999@sekolah.test', '$2y$12$bGxaqJcQscIYyTOKgkNEDe.Pk4eZwqUZKKPj1W9WfD1fA9rUWGawG', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:11:27', '2026-01-07 19:11:27'),
(955, '23248018', 'WAHYUNINGSIH', '23248018@sekolah.test', '$2y$12$oTqOmrQhy32TlAKze5cC0uUI7is.KBcOemEnDAoCalL6eSLGatcqm', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:11:28', '2026-01-07 19:11:28'),
(956, '23247625', 'ABDUL PAKIH', '23247625@sekolah.test', '$2y$12$mVLemnwKml8u9jc7G.P82.Zw6qr6ex4atSJUuqTxYrXRuCekL1bMe', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:11:29', '2026-01-07 19:11:29'),
(957, '23247626', 'ABIGAIL VANIA', '23247626@sekolah.test', '$2y$12$kEOMW6c0hpQz0Ie.sowV3eolAvHf3oA4DunsqkFyqQn2sOvudKYba', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:11:30', '2026-01-07 19:11:30'),
(958, '23247643', 'Agus Saputra', '23247643@sekolah.test', '$2y$12$H3e.hSUdk3kYfj4SxHb6ie67qdFDS/pIWR0rZ6MivD2G/nadGzb9.', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:11:30', '2026-01-07 19:11:30'),
(959, '23247651', 'AISYAH NURFADHILAH', '23247651@sekolah.test', '$2y$12$ejaUt5ZbrkxtGcpBch7XVu5GGwQPbTClQCrJTvwjy.cd1Q/UJEOLa', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:11:31', '2026-01-07 19:11:31'),
(960, '23247654', 'AKHSAN SAEFANI MA\'RUF', '23247654@sekolah.test', '$2y$12$SEm2ceauWP6LBe1YkKgvnuI/ZBKI08QTJ.ZuewyEFgJd.txVnb.PK', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:11:32', '2026-01-07 19:11:32'),
(961, '23247680', 'ANIATURROHMAH', '23247680@sekolah.test', '$2y$12$VeI5x5uSluOw2OIeGdue7uNaHxDd/U7FGF4DK9t8KLwE8LADz9ELS', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:11:33', '2026-01-07 19:11:33'),
(962, '23247688', 'ASYAM ILHAM ALHAKIM', '23247688@sekolah.test', '$2y$12$FHyMW9ahLMI606KN5lOxwOFXjzuLHkEJqIwf0rrM3AUfVgzdNHoJC', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:11:34', '2026-01-07 19:11:34'),
(963, '23247724', 'DAVINA SIFA VELLISA', '23247724@sekolah.test', '$2y$12$VYAAbs.sTaxoKRiuWupNd.h/eMBDNh5szmUDPYXxhwA4e.loBm3xW', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:11:35', '2026-01-07 19:11:35'),
(964, '23247729', 'DIAN RIZQY NUGROHO', '23247729@sekolah.test', '$2y$12$ptiprEr2pYr/BOT36Mjw0uOPG9iYL0lndUlE7cRaju9Neu2u3z56u', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:11:36', '2026-01-07 19:11:36'),
(965, '23247766', 'Fien Zahra Sawittri', '23247766@sekolah.test', '$2y$12$0UI9Gl.YUx1ipzyi.1iYg.qOBwSIGFDgfGs.uTGa1wXxSZse.B8fC', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:11:36', '2026-01-07 19:11:36'),
(966, '23247774', 'FISAL ADI KURNIAWAN', '23247774@sekolah.test', '$2y$12$x.EimnenkXMaTZ4OdQgKpeD7SSsp/gRaskX68LiMKYhxj48x3RA.i', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:11:37', '2026-01-07 19:11:37'),
(967, '23247777', 'GILANG AJI PRAYOGA', '23247777@sekolah.test', '$2y$12$wZFqFY677wXkQ/c/bQ2/OuCB4gHkc/y5JaP180o8UnLWZxyAp5bO6', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:11:38', '2026-01-07 19:11:38'),
(968, '23247785', 'HERLAN SANTOSA', '23247785@sekolah.test', '$2y$12$UrQjwm5ztlwUyeW04hzlOeWAuvUpzpRgO.VeSus.KGymAMZ80IFVe', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:11:38', '2026-01-07 19:11:38'),
(969, '23247786', 'HIBATULLAH NAUFAL', '23247786@sekolah.test', '$2y$12$Zfti4/6UaKv9McSl6qQw0eNoTsqSTJZRQNpeyvYyeL3yW5ooDV5zO', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:11:39', '2026-01-07 19:11:39'),
(970, '23247827', 'KHILYATUL QINAYAH', '23247827@sekolah.test', '$2y$12$2jbT/N9jt/IKW5lzpA4sqeJQw4k9bP22eo2.YdL7hLxQLkv5aBiM6', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:11:40', '2026-01-07 19:11:40'),
(971, '23247849', 'MUHAMAD FARID ARISKI', '23247849@sekolah.test', '$2y$12$U8ZMC.4pMlilM6/GkEsl..LkwJhLHEk0uQIvpnbU3QT6xoDsOtLGe', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:11:42', '2026-01-07 19:11:42'),
(972, '23248054', 'MUHAMMAD YUSUF SUPRIYATNA', '23248054@sekolah.test', '$2y$12$XE4s8gn2Q9649B0MOV82d.q4sKZKowzWLQ3hyrkNDdx.ZoufnQVqu', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:11:43', '2026-01-07 19:11:43'),
(973, '23247868', 'NAZWA FITRIYANI', '23247868@sekolah.test', '$2y$12$ruvKU1Ky.GQ2jCizbxr4G.A.rAHknOS5HdGEusmusJGy.aygaYop6', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:11:44', '2026-01-07 19:11:44'),
(974, '23247872', 'NIHAYAH BELLA ADINA', '23247872@sekolah.test', '$2y$12$rd8J9RlFWktgcO6eIuy26O8mUKVC3PEZrkbGBBl8XDJVhPwdNpQHK', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:11:44', '2026-01-07 19:11:44'),
(975, '23247878', 'NURHASIM', '23247878@sekolah.test', '$2y$12$Y7Vd7MP53TRFGssK69VuiubdCCkgg4k6Jy3dYnRJvlCAdT0SuQlQ.', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:11:45', '2026-01-07 19:11:45'),
(976, '23247884', 'PUTRI MARLINA RAHAYU', '23247884@sekolah.test', '$2y$12$E/Rd79Wv0UG7Mt22OHD3/.PU8F2hycS8R3mv4SKpo669Qd6zVqoSi', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:11:46', '2026-01-07 19:11:46'),
(977, '23247898', 'RANI DIAH ASTUTI', '23247898@sekolah.test', '$2y$12$ufNuB0ymiXhdu99o3v2Ps.ubt3ViVAHexWCVEx8a/x5EsspGXUtQa', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:11:46', '2026-01-07 19:11:46'),
(978, '23247913', 'REZA AUXILLIA SEKAR ZIVANNA', '23247913@sekolah.test', '$2y$12$pVEvUI3bqGHm9Uog2aAu3.RC1IPzq7QXn0jfxqmRoHhRP7gXrzA9W', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:11:46', '2026-01-07 19:11:46'),
(979, '23247914', 'REZHA SULISTYA NINGSIH', '23247914@sekolah.test', '$2y$12$Rcfk.87TpT3EPe22wewhOeEvCtfJVZpLJKODs461X77MojnorvcAG', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:11:47', '2026-01-07 19:11:47'),
(980, '23247917', 'RIDHO RAMADANI', '23247917@sekolah.test', '$2y$12$aPZXu4gpH9RptFtidhIE8ec/GNx8GItV.3t0Qbldc8AmjgvqELAPS', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:11:47', '2026-01-07 19:11:47'),
(981, '23247925', 'RIFKI SEBASTIAR', '23247925@sekolah.test', '$2y$12$taEogoc1Lbz0UZ66nL.YHO47ApLdcOYwSi3lSJwQLvVb7RRGjRLya', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:11:48', '2026-01-07 19:11:48'),
(982, '23247967', 'SISKA DWI LARASATI', '23247967@sekolah.test', '$2y$12$tbJBR.mkWWiVnrdFPgIPN.wb6Z2VP8obdfklY.RE.DulINqWjD1X.', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:11:49', '2026-01-07 19:11:49'),
(983, '23247970', 'SITI NURUS SYIFA', '23247970@sekolah.test', '$2y$12$7kKGtR/0dxEn.HMRR.gusedPS5NAo4DWX0PYqwVAxP06l.R/DcmcG', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:11:49', '2026-01-07 19:11:49'),
(984, '23248022', 'WINTA', '23248022@sekolah.test', '$2y$12$rpOmt81nN83eowMBRmrFs.R1HiveNtRKp0EsSo2O918GYexdcXAtm', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:11:50', '2026-01-07 19:11:50'),
(985, '23248027', 'ZAGHWA OKTAVIA PRIANI', '23248027@sekolah.test', '$2y$12$BsRue9XwEgnnv6rSNHIDCeWFnNd3HPclZ/L9/I1.H5iHNQsvWH.kS', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:11:50', '2026-01-07 19:11:50'),
(986, '23248029', 'ZAHRA ALYCIA', '23248029@sekolah.test', '$2y$12$khaPDRmsWitpLgXVxar6MuA.ji5JaIfAODdoVC78fDGT4zHKZVBGu', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:11:51', '2026-01-07 19:11:51'),
(987, '23248038', 'ZULFAH RAUDATUL ZANNAH', '23248038@sekolah.test', '$2y$12$CJg8LQM3gNSaHofDJvTPAOec2/Ae6hBPWEn40tuZ7sMEFh3E30a/W', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:11:51', '2026-01-07 19:11:51'),
(988, '23247647', 'AHMAD REZA RAMADANI', '23247647@sekolah.test', '$2y$12$CgcshjRH.dpgE85wVCaiIunB409jwSNKAsfxutNv26d3Xotav.1cm', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:11:52', '2026-01-07 19:11:52'),
(989, '23247662', 'ALFIATUL', '23247662@sekolah.test', '$2y$12$/udTKZBUdUjaaOPlPUBOkuxtlvQq722H0Y9xHOlsWxqb5Kz2U778W', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:11:52', '2026-01-07 19:11:52'),
(990, '23247674', 'ANDINA RAHMASARI', '23247674@sekolah.test', '$2y$12$kCFjrO8kofatVO2WF5n/eecGWecZuUthN0UFPP4ef9eGORZtGP3tO', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:11:52', '2026-01-07 19:11:52'),
(991, '23247675', 'ANDRIAN', '23247675@sekolah.test', '$2y$12$wPxMMAwHmJdmNN/G/.gxQuc4nk/3/J06cu.0f43dA0/Vw7OP3vH5u', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:11:53', '2026-01-07 19:11:53'),
(992, '23247714', 'CHRISNA RANGGA PRATAMA', '23247714@sekolah.test', '$2y$12$vC.gAudRg8uTd9wzhT3czejEG1DZLxB40I2cwnkkn7SssJxWeKWuS', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:11:54', '2026-01-07 19:11:54'),
(993, '23247727', 'DHIANY SILVIA CAHYA', '23247727@sekolah.test', '$2y$12$xkGGASFR7k16nGdLaN9JOekHjJAB8X2t/m9FAlWsFhBGekiuOsi..', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:11:54', '2026-01-07 19:11:54'),
(994, '23247738', 'Dila Lutvia Meylani', '23247738@sekolah.test', '$2y$12$vSqkt4tkRyRi0rk0kbmpvOc.L/qAihD/Xxv0Mn1hrpfXp4nR0mcES', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:11:55', '2026-01-07 19:11:55'),
(995, '23247759', 'Fajar Gilar Saputra', '23247759@sekolah.test', '$2y$12$X50I7QNSjsZjJn.pVQ60dOFvvYPn1corHGSNbXrEBdc7Qa1O.U5e2', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:11:55', '2026-01-07 19:11:55'),
(996, '23247763', 'FARHAN KHOERUNNAS', '23247763@sekolah.test', '$2y$12$AfSTIl69IM0L8IPXjv.iu.DMOqVX7DYdDCFK0Ys3yRd2Xna2whDly', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:11:56', '2026-01-07 19:11:56'),
(997, '23248042', 'Gagas Kurniawan', '23248042@sekolah.test', '$2y$12$e9HEu2NbLZtz8DDYD5Fy7egxCXRxiGXMYJVgV9elnHAaDKVuxvzvq', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:11:56', '2026-01-07 19:11:56'),
(998, '23247792', 'IFON FEBRIANI', '23247792@sekolah.test', '$2y$12$T0w/71lEDLBxBab1I.NMAOOwHieJQP/tO2JiGWM79A5T6G2elVn56', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:11:57', '2026-01-07 19:11:57'),
(999, '23247793', 'IHFA NUR INSANI', '23247793@sekolah.test', '$2y$12$YuLBcQkrFefQ1/W3/vf48u4W.uUpXRPnDHx5WaCO54Nqvqb3BmziK', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:11:57', '2026-01-07 19:11:57'),
(1000, '23247820', 'KASELINDA AGUSTIN', '23247820@sekolah.test', '$2y$12$2XuV1gY7rYWe2vlP8v.SAOYj22m2ov5WgJ6Q1x7SGjLfAIHMvotD.', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:11:58', '2026-01-07 19:11:58'),
(1001, '23247823', 'KEVIN ANDREAN PRATAMA', '23247823@sekolah.test', '$2y$12$g0CBohT.hLOQ36QL6szy4OsIxPZFDGIymAC4GcfDe0Dm/ciyPWi3m', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:11:58', '2026-01-07 19:11:58'),
(1002, '23247848', 'MUHAMAD FAJAR SATRIO', '23247848@sekolah.test', '$2y$12$THXMvfysiKF6sUd19mfa7.qzCLWkq7Se.Z4zWovg9/skYeOx6X7tC', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:11:59', '2026-01-07 19:11:59'),
(1003, '23247864', 'NANDA ANDRIYANI', '23247864@sekolah.test', '$2y$12$pozoY1xTA3agVrSDLfuQYeCZifokl5dkLf2pp24HapsGrpSlIEhmS', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:12:00', '2026-01-07 19:12:00'),
(1004, '23247877', 'Nur Rohmah Ramdani', '23247877@sekolah.test', '$2y$12$sXD3i72MKKHJSQQwHGDgjeLjk9Z6HE8Px2FV5ircjUHBs1/SZS0G6', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:12:00', '2026-01-07 19:12:00'),
(1005, '23247886', 'RADIT SAPUTRA', '23247886@sekolah.test', '$2y$12$NjUINOIOrm.E5WXYVs5QH.4XsTphLv1bBcAESgItQPgQ1nWcdpj5y', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:12:01', '2026-01-07 19:12:01'),
(1006, '23247895', 'Raka Aditya Pratama', '23247895@sekolah.test', '$2y$12$g1XfAUPIK1t563hxUDMg8OkmTvRllD9ICr5jpcWYn5q/vTNVY8nPG', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:12:01', '2026-01-07 19:12:01'),
(1007, '23247901', 'Refan Aditiya Permana', '23247901@sekolah.test', '$2y$12$mjoze0VKGk13cu.zgBJYCeICgvflP36t5du2ObHstFVxaiN5Tx8qa', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:12:02', '2026-01-07 19:12:02'),
(1008, '23247912', 'Reza Apriliyanto', '23247912@sekolah.test', '$2y$12$3Ne9MQ7pykHLsqQtO2DtYuwLeWtxYerqvbHkxxaFa39PVgp39XZYW', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:12:02', '2026-01-07 19:12:02'),
(1009, '23247920', 'RIDWAN JAYA SAPUTRA', '23247920@sekolah.test', '$2y$12$wWuNee/CjqTflmNz9PYraON6DLkf6OXlEWrvrTC1lMdtVtGTmkGH.', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:12:03', '2026-01-07 19:12:03'),
(1010, '23247926', 'Rini Puspita Sari', '23247926@sekolah.test', '$2y$12$U82BToYUsZHXT5azkxFg6ej0/YIUSuShfz65NavehQW/fGLx6Azv2', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:12:03', '2026-01-07 19:12:03'),
(1011, '23247927', 'riska ayu pangestu', '23247927@sekolah.test', '$2y$12$XbIBOS/799BBIy8DF6QAGOxDLn/oZfn0xsf907XUhy2TAIUfyQpLu', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:12:04', '2026-01-07 19:12:04'),
(1012, '23247929', 'Rizal Aji Nugroho', '23247929@sekolah.test', '$2y$12$rYHhMb48uQxBpExJC0Y.NOTsvFclCQ77MfMw0DfYUl49NPY9AnaVW', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:12:05', '2026-01-07 19:12:05'),
(1013, '23247931', 'RIZKI MAULANA IBRAHIM', '23247931@sekolah.test', '$2y$12$4KW2goSa6HM2lur3WBTOZuh8TMAuW8OJzx0NfMo0Ul9iRnKspEqGW', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:12:05', '2026-01-07 19:12:05'),
(1014, '23247944', 'Sandi Saputra', '23247944@sekolah.test', '$2y$12$ElD9lk/P0t7s3opxHVTcMORx8J./Dfqx1c9u30LH6m0QkQZx.7qNW', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:12:06', '2026-01-07 19:12:06'),
(1015, '23247953', 'Satria Pratama', '23247953@sekolah.test', '$2y$12$mT7cgQGJZSmVtXCb9PbEE.VEc2S1DIrnvkuYQ5LmS9vDYPboeWY22', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:12:06', '2026-01-07 19:12:06'),
(1016, '23247954', 'SATRIO JANARA ARAFA', '23247954@sekolah.test', '$2y$12$j17MzjhgaScXbAAlbbCeBeF7EWfSxAohsM6YX1N4vNwYQH8cCU/HG', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:12:07', '2026-01-07 19:12:07'),
(1017, '23247973', 'SOFA HASAN FALSAFI', '23247973@sekolah.test', '$2y$12$4F5woSFtDs8DqKHUBMvoAu93vAZZAmtCIqfAb5g2K9YTD9/uKZY.e', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:12:07', '2026-01-07 19:12:07'),
(1018, '23248007', 'TYAS SEVY NAZZAHRA', '23248007@sekolah.test', '$2y$12$Iar81mMzsXpO2EQ6dEZWOuSoxu.mgBK3MtPtTlKdbo7esUI5FyY3y', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:12:07', '2026-01-07 19:12:07'),
(1019, '23248009', 'Vega Diantari', '23248009@sekolah.test', '$2y$12$ZZt0IqwbetOtWCB2q.dpCORTJv/AFnLHnJYJn5gnuP.Z4TfjBESqK', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:12:08', '2026-01-07 19:12:08'),
(1020, '23247637', 'ADITYA WARMAN', '23247637@sekolah.test', '$2y$12$oYQ04QiAYy6vYSHcqysqFefadHMrgW5x2EhxnfT/Zvbgz1QDpQr1C', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:12:53', '2026-01-07 19:12:53'),
(1021, '23247667', 'ALYA PITRIYANI', '23247667@sekolah.test', '$2y$12$TFOhamPzF/nPvmVV1bXfRuhCzpAT1tOTz2vCxQIYVI4pI6PfSMy1m', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:12:54', '2026-01-07 19:12:54'),
(1022, '23247691', 'AULIA NABILA SAFITRI', '23247691@sekolah.test', '$2y$12$uxBnONDuHzhM.FPbTZ/Lg.iygdGNmn4POH8YMRm4LvMYhRPEAGxGS', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:12:54', '2026-01-07 19:12:54'),
(1023, '23247695', 'AZRA FADILAH ARISTIANA', '23247695@sekolah.test', '$2y$12$2F39u0UEbBB/jaP5aZ0n/OvQiPOqQ2fGT/kbHZxwOlr79rFzHl5Fq', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:12:55', '2026-01-07 19:12:55'),
(1024, '23247698', 'BAGAS SAPUTRA', '23247698@sekolah.test', '$2y$12$FTAON/3wBbzYI.QbFPuYQuIf906nHGE69rSopZX69Zei0ZzShbFHW', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:12:55', '2026-01-07 19:12:55'),
(1025, '23247699', 'BANGKIT ADI PRAYUGA', '23247699@sekolah.test', '$2y$12$WKwAvKNg7h7vd6r9X1iyhOBHHbwp4yFZgTvLo7xNB.7Ploejvx6HK', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:12:56', '2026-01-07 19:12:56'),
(1026, '23247711', 'CHIKA AMELIA', '23247711@sekolah.test', '$2y$12$hG/sIOwVgYiKopYpB/aYBeCRL.xA2uKHon/Og6wyLILZbLqV7rj/6', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:12:56', '2026-01-07 19:12:56'),
(1027, '23247717', 'DAFA JULIAN PRABOWO', '23247717@sekolah.test', '$2y$12$aJL7mCe8zfAnY3UI0bY5i.0QqZzoDC2g/no.s8eEIGCjw.EDfCgOu', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:12:57', '2026-01-07 19:12:57'),
(1028, '23247726', 'DESWITA NAZWA AZAHRA', '23247726@sekolah.test', '$2y$12$/vRMOaLxGiL72Uzmc2R2WO60/U3DuQaXUtHj5vcjeGbJd0oyRbpfS', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:12:57', '2026-01-07 19:12:57'),
(1029, '23247734', 'DIKA BAGUS RAHAYU', '23247734@sekolah.test', '$2y$12$NRMVCfuj6OjF2UqPW0zr6.ePzKGA33GMbZN/9UJyq4h55FDIc0xFS', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:12:58', '2026-01-07 19:12:58'),
(1030, '23247742', 'DWI TASYA OKTAVIANA', '23247742@sekolah.test', '$2y$12$I3THiLakFl7e.CQFNE/2t.R8xKLEGisYmJrwCG406GxfPyNbdmvja', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:12:58', '2026-01-07 19:12:58'),
(1031, '23247743', 'DWIKI ANDHIKA', '23247743@sekolah.test', '$2y$12$yks70l4DtbxO7wXJ/tXZxuewj6WVIS9YpoeMWlDOxZD5vphRfbhuu', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:12:59', '2026-01-07 19:12:59'),
(1032, '23247784', 'HELIANA HERMAN', '23247784@sekolah.test', '$2y$12$o7eQUcRj/cCAYo8ZKRpJ/uXa4VKnq7qf3oPfZc1Tj/dzTjcBTpUNi', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:12:59', '2026-01-07 19:12:59'),
(1033, '23247791', 'IDZAN ADIANTO', '23247791@sekolah.test', '$2y$12$H0uVcb0dkEptPFy1OJCxTuXkppdbJnhPpz477IRtt2VkF3koRFc8W', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:13:00', '2026-01-07 19:13:00'),
(1034, '23247818', 'Kalvina Novela', '23247818@sekolah.test', '$2y$12$k2uT4PiKKb1oRFI9Y9JURO5rcKwOPc83edzZMSG4BTJ/C61hbSyO.', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:13:00', '2026-01-07 19:13:00'),
(1035, '23247829', 'LAURA BUNGA SARI', '23247829@sekolah.test', '$2y$12$rt1sm2wB.M8JngFqbc8bQeHhbPt/9awSdqmnOaX9MU0zVO7phDMBW', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:13:01', '2026-01-07 19:13:01'),
(1036, '23247831', 'Leman Adi Prasetia', '23247831@sekolah.test', '$2y$12$bnpXkOqWrF0TxKmdtUQ7fezSknXfFjMZfxSRuqHENbebSlb5R3r3y', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:13:01', '2026-01-07 19:13:01'),
(1037, '23248043', 'LITA FELINA', '23248043@sekolah.test', '$2y$12$hc.INFrG2i3aBZF6a2TQeuSiae8sKRF72oGm06OfLEhrbNqCH708O', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:13:02', '2026-01-07 19:13:02'),
(1038, '23247856', 'MUHAMMAD ILHAM NURKHOLIQ', '23247856@sekolah.test', '$2y$12$2ZU/mpq6cOtaa6Yg7FITMuZaDsH//pPmQa.cxtr0goN6zyrHPHUpu', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:13:02', '2026-01-07 19:13:02'),
(1039, '23248049', 'MUTMAINAH MUTIARA LESTARI', '23248049@sekolah.test', '$2y$12$78aQWzexKyxLD8RZ3V7GReNxzyqTCgA.DBtfUsjx5kJWBAxrYyqVG', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:13:03', '2026-01-07 19:13:03'),
(1040, '23247892', 'RAHMA LUGINA', '23247892@sekolah.test', '$2y$12$SynSKOVlQ26gyJ.xemK/4.txFwm61Ldf4D0rIXZP4YfHVMlhyYEGG', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:13:04', '2026-01-07 19:13:04'),
(1041, '23247896', 'RAMADHANI SENDYANTORO', '23247896@sekolah.test', '$2y$12$Y0lZQApONBwKyv8zR5YTkuaAGfp4tD325WZlkooGnaxJe2ax3r1Hq', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:13:04', '2026-01-07 19:13:04'),
(1042, '23247911', 'REVI DAMAYANTI', '23247911@sekolah.test', '$2y$12$baM4Bg0FX3sZZWAdPGXGSuZyVBcCrckvj0GqVSEmXSgTCDvbinYBi', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:13:04', '2026-01-07 19:13:04'),
(1043, '23247921', 'RIEFAN MAULANA', '23247921@sekolah.test', '$2y$12$0QY3mBF/97a7xGG34GD9puWtRMl7ifex/uBVqwV5mhATuJSr.m63e', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:13:05', '2026-01-07 19:13:05'),
(1044, '23247940', 'SALWA DWI ARYANTI', '23247940@sekolah.test', '$2y$12$ZB9TwBBwiYcmTigTTcDmeOSOXsbhHQKC4xmc6KAUFBgnTFL9z.Xmy', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:13:05', '2026-01-07 19:13:05'),
(1045, '23247945', 'SANDRA OKTAVIA', '23247945@sekolah.test', '$2y$12$VMXNP0tJmX/KU/rFqEeT3eWs/M5TB.w4c0Pd0nUCT3An3qBj2XXnq', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:13:06', '2026-01-07 19:13:06'),
(1046, '23247950', 'Satria Aldiansyah', '23247950@sekolah.test', '$2y$12$QcIHO0UXcGOtAqE80cPbeef0Vnw6n6Z/85DjUGBnEWFOLilc0K.tG', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:13:07', '2026-01-07 19:13:07'),
(1047, '23247961', 'SIFA MUTIARA', '23247961@sekolah.test', '$2y$12$CfzQNdnMwaYhA.gBiSAf7OrHgXhM.mwSxsSXK8tnd2UsRKOIzfZ3C', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:13:07', '2026-01-07 19:13:07'),
(1048, '23247990', 'TALIA STEVANI', '23247990@sekolah.test', '$2y$12$RHnmQBv23vTHB9agwlmIHu9vcTfWfCO1is1HY2X7tku2ZL9dxaap6', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:13:07', '2026-01-07 19:13:07'),
(1049, '23247996', 'THALITA ALYA PUTRI', '23247996@sekolah.test', '$2y$12$onkTFQOuevXYFV7P.cQeX.QMGl2PtgJi3YcRMJcEHrZeOyYsVw0eu', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:13:08', '2026-01-07 19:13:08'),
(1050, '23248004', 'Tri Bayu Nurohman', '23248004@sekolah.test', '$2y$12$zUed.RUYlSuM8CaNWDXXyOd9dCtLZklRH0KLwiT7n7MHaolwOjtCq', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:13:08', '2026-01-07 19:13:08'),
(1051, '23248005', 'Tri Nuraeni', '23248005@sekolah.test', '$2y$12$0DViezZVBqKz6CvfhDUBeuJrW/q8YZ.P2YOaAFrBg5uyessdJdwhS', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:13:09', '2026-01-07 19:13:09'),
(1052, '23248012', 'VIDO RIFKY DENIRO', '23248012@sekolah.test', '$2y$12$zPBTLAeRJ4t..THjUwcbvOr42k0hTVdlSMSiTHUv6mjpkZe5xijeS', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:13:09', '2026-01-07 19:13:09'),
(1053, '23247641', 'AFINUR ISNAENI', '23247641@sekolah.test', '$2y$12$/i0CMxRYSEgvzkweST6prelTSjzh0biPQ9OMoEZmDGkpgOpL64x6K', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:13:10', '2026-01-07 19:13:10'),
(1054, '23248052', 'Ahmad Mustakim', '23248052@sekolah.test', '$2y$12$lsJjpyTuaxXZMqw6aVfWPeGDZGtfCw0t0McVI1QWC810Gora/hvNK', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:13:10', '2026-01-07 19:13:10'),
(1055, '23247683', 'Ari Gusti Setiawan', '23247683@sekolah.test', '$2y$12$HDZDy8TI0O6u4BHQNHdevuwUE8N33r/65m1tsvohuwZxNAFgWDCVi', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:13:11', '2026-01-07 19:13:11'),
(1056, '23247685', 'ARINA HOLIMATUL FATIMAH', '23247685@sekolah.test', '$2y$12$lAcPUztuZXLn.fxvpQ0JOOXZR1/KByzxoo6krulOws3S1EM4x7qLC', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:13:12', '2026-01-07 19:13:12'),
(1057, '23247732', 'DIKA ABDY PRAMONO', '23247732@sekolah.test', '$2y$12$IBG1VBOhOkKEeMF7PfSpDukq6vbKVEAGtKOZSvKkyF.QuBp0zNu2K', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:13:12', '2026-01-07 19:13:12'),
(1058, '23247750', 'FACHRY FAJAR DESTIAN', '23247750@sekolah.test', '$2y$12$O4gLwkHVBIRB.0GN1OKjkeA/8V.GFSP5hEGm4UWwOTxPql3HfZdQm', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:13:13', '2026-01-07 19:13:13'),
(1059, '23247768', 'FIQI ALFRIANSYAH', '23247768@sekolah.test', '$2y$12$6EBRzv0augUQkecxM1nmgeofHVmaaqOzm0/2yuVC7PWG/4qUSK7ji', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:13:13', '2026-01-07 19:13:13'),
(1060, '23247769', 'FIRA', '23247769@sekolah.test', '$2y$12$RU99Q9/ly9/BlgiYEyHXduPWgLCzKF2YG0XZAA2qlEX/ckVGMomni', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:13:14', '2026-01-07 19:13:14'),
(1061, '23247779', 'HAFIZ REIFANSYAH', '23247779@sekolah.test', '$2y$12$IiUc.bKVLMlsAbvkmtOJseKWigo.B/5I5ZKMGrolt38lsMvhzmmNC', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:13:14', '2026-01-07 19:13:14'),
(1062, '23247806', 'Isfa Fahrizal', '23247806@sekolah.test', '$2y$12$A8xiGDy0LOuYVkkQcZA5MeSRQgGaJ1ldOvWdzoXi6S19.wJuHjk3i', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:13:14', '2026-01-07 19:13:14'),
(1063, '23247830', 'LELI NUR HIKMA WATI', '23247830@sekolah.test', '$2y$12$hgeolSygcvFUT6LkzqJ51eP2L./5sHd4wDTCYt1gjp/hGjMMxzl0u', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:13:15', '2026-01-07 19:13:15'),
(1064, '23247843', 'MIKO REZI WIBOWO', '23247843@sekolah.test', '$2y$12$QqWIJCdaRb5KRmDAW/GmBOWf.KbE7avaFCQbSldVV3H10.fAfLBQa', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:13:15', '2026-01-07 19:13:15'),
(1065, '23247847', 'Muhamad Erwin Juniantoro', '23247847@sekolah.test', '$2y$12$M.NHMAiCgekNmSxuaNg2rOaJpKV7R4pWQpKTv4I0Ggwu4wgrfdobO', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:13:16', '2026-01-07 19:13:16'),
(1066, '23247855', 'MUHAMMAD HAFID', '23247855@sekolah.test', '$2y$12$h2YJblzeOvXdxvcRn9DksOD6xIzLl0hQcRxOIS5L1EB/RdWeojIly', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:13:17', '2026-01-07 19:13:17'),
(1067, '23247857', 'MUHAMMAD NAZAM NAFI\'AN', '23247857@sekolah.test', '$2y$12$NMX07lSxzBRwJUJ.GTX58OaDrjxY6GYtMAtHyiFx0kDWH9xWmr1zG', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:13:17', '2026-01-07 19:13:17'),
(1068, '23247858', 'MUHAMMAD TEGAR PANGESTU', '23247858@sekolah.test', '$2y$12$2D6nm2DcUsAhAym/JlJ4b.7ATncbdo1mnuimZdhy5B2sh.RnjZJ1i', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:13:17', '2026-01-07 19:13:17'),
(1069, '23247866', 'NASWA RAMADHANI', '23247866@sekolah.test', '$2y$12$9eK5sfSSbTqPYF0KRDgWXeIP0lRZJPKszxkD8pAR.s2immQBMIoRy', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:13:18', '2026-01-07 19:13:18'),
(1070, '23247885', 'PUTRI WULANDARI', '23247885@sekolah.test', '$2y$12$chSS8NMq9I6luXIKUoAwde0n2PRzwCj0a1Xh/B3A81lD6f8VeJ1Qm', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:13:19', '2026-01-07 19:13:19'),
(1071, '23247903', 'REGITA NURAHMAH', '23247903@sekolah.test', '$2y$12$i8kxF/tplFnbmaz4NuebkOnV.GlcDpGkW4ilf7iRI91ABkkWm9xZy', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:13:19', '2026-01-07 19:13:19'),
(1072, '23247907', 'RETNO AYUNINGSIH', '23247907@sekolah.test', '$2y$12$EotTD/807HMSX4i7e7bxrOwADW54APkZrQpHqbRUY80naE69GEeZG', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:13:20', '2026-01-07 19:13:20'),
(1073, '23247918', 'RIDHO WARIHSAN', '23247918@sekolah.test', '$2y$12$fGHzDc7FKnEPaPYgOYsKsOqwq.t.l8SZWqo58.x8YROr58/fSu4MC', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:13:20', '2026-01-07 19:13:20'),
(1074, '23247934', 'ROHAMAH WANTI', '23247934@sekolah.test', '$2y$12$PiqNyut5xUVadYlm3ONz7O0HhoJyKe.HZx35ZJcCd.KIg3MG9.rLe', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:13:21', '2026-01-07 19:13:21'),
(1075, '23247935', 'ROSALINDA', '23247935@sekolah.test', '$2y$12$dbAdinZkCZq.uKOPG21Vp.IlYf7Jc7HlIaUb.K5e6Uejk5snBto.W', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:13:21', '2026-01-07 19:13:21'),
(1076, '23247943', 'SANDI', '23247943@sekolah.test', '$2y$12$5HFLFH2/Hnv72K6aJ55j8e8u73zMraVvuXnExFtzZWsmVmJb.Cgpy', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:13:22', '2026-01-07 19:13:22'),
(1077, '23247947', 'Santiyasari', '23247947@sekolah.test', '$2y$12$.XyGgY6a4xbyXpKrxqRQD.NmoVpZeS2YuvTP4uE4GkystZkB2w0VS', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:13:22', '2026-01-07 19:13:22'),
(1078, '23247971', 'SITI NURYAH RAHAYU', '23247971@sekolah.test', '$2y$12$T.xFiqQwhZ/M5Zz0NhEkme6u0NbqJXtRtOCOqy01nS78T9bPjLdFC', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:13:23', '2026-01-07 19:13:23'),
(1079, '23247978', 'SUCI ANGGRAENI', '23247978@sekolah.test', '$2y$12$XJFchwMGbQ/GTod1rqYxZ.05skKCqAN3BkyGnDsr/EJoJROQAt3aC', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:13:23', '2026-01-07 19:13:23'),
(1080, '23247991', 'TAMESYA NENDA SAFIRA', '23247991@sekolah.test', '$2y$12$ObnlhoQpmn2oUksOUCwFJ.hp3w6/D0zqdGIVtCDbLc9ZDTRyMMLlm', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:13:24', '2026-01-07 19:13:24'),
(1081, '23247993', 'TAUFA AFRIANSAH', '23247993@sekolah.test', '$2y$12$uEVgFFy9iOxiQETbGOHmZeAiJvWKyPRN3/Wxr5l/6f/Z3Bs9mK6m6', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:13:25', '2026-01-07 19:13:25'),
(1082, '23248002', 'Tio Saputra', '23248002@sekolah.test', '$2y$12$poyS64oxPcxbgSC5C6537OU4W/iltmsi5oEFobn3S828lRv/.YBMa', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:13:25', '2026-01-07 19:13:25'),
(1083, '23248015', 'WAHYU ADHI ALGIFARY', '23248015@sekolah.test', '$2y$12$5HZJDoWqDtfmFnFGOrh5OeXBgpmOnJgsO3WyRaVFZ/ONpCl7SlxRa', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:13:26', '2026-01-07 19:13:26'),
(1084, '23247631', 'Adi Saputra', '23247631@sekolah.test', '$2y$12$YqPpPiLjfYVTTZGrrIGJNuIwuVD7mYy4n2yBXoBhH/MC78FCqwlAi', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:13:26', '2026-01-07 19:13:26'),
(1085, '23247636', 'ADITYA FAUZI ZAIN', '23247636@sekolah.test', '$2y$12$dEtFgZefZO4519XUWWkknOH0NIy7CXXk6IQILB36811AHapHP.Tc.', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:13:27', '2026-01-07 19:13:27'),
(1086, '23247638', 'ADRIAN NUR ROHMAN', '23247638@sekolah.test', '$2y$12$Su9qqUVNTZY6W0W7/Gi47uk8Z3zKVLgVTB/rIV2mQw1by1P7GrKPa', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:13:27', '2026-01-07 19:13:27'),
(1087, '23247652', 'AJI GALIH PRASETYO', '23247652@sekolah.test', '$2y$12$j6RufpYfqNileb1ruJQmsuussHcjembL3ukEQJZIFPErBQEAcW.qG', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:13:28', '2026-01-07 19:13:28'),
(1088, '23247659', 'ALDI AYRIAN', '23247659@sekolah.test', '$2y$12$oJ2BmJOmwKLrK/nDgOlYTeIv/18lYGNgwOWbUvJPOxykuTxRzmPWK', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:13:28', '2026-01-07 19:13:28');
INSERT INTO `users` (`id`, `username`, `nama`, `email`, `password`, `password_text`, `role`, `foto_profil`, `foto_unggulan`, `is_active`, `reset_password_token`, `remember_token`, `created_at`, `updated_at`) VALUES
(1089, '23247664', 'ALI MA\'RUF', '23247664@sekolah.test', '$2y$12$UjsAwkYlRrIk47DZ.p54wuDnPi1mQma7VvlniefaeI.lYz8sGjRDa', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:13:29', '2026-01-07 19:13:29'),
(1090, '23247713', 'CHOIRUL ZAKI RAMDANI', '23247713@sekolah.test', '$2y$12$yD/n5gWAmoPQPBe7yf14k.ANWCmBvcYuSRy8i/m7na2lv24jTZgEm', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:13:30', '2026-01-07 19:13:30'),
(1091, '23247744', 'EKSA JULIO PANGESTU', '23247744@sekolah.test', '$2y$12$mU9Y0DpQ4wFllbKZnVo1WeOpibC3wVvBrjc4Z/a36gqXRP3WqCNni', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:13:30', '2026-01-07 19:13:30'),
(1092, '23247755', 'FAHRI MUHAMAD FAISAL', '23247755@sekolah.test', '$2y$12$UiWAJXr3eVWmkO2FjRMiT./5I1v2jDNRSG6Fv1W3WkD32LVEHISXm', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:13:30', '2026-01-07 19:13:30'),
(1093, '23247756', 'FAHRI RAHMADAN', '23247756@sekolah.test', '$2y$12$e.fzqBg0Zd78VbKsd8WPP.TNMuZmheK9acURtnTwJgGj/xXrjW0Oa', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:13:31', '2026-01-07 19:13:31'),
(1094, '23247788', 'IBNU NGAZIZATULNGUBAIDILLAH', '23247788@sekolah.test', '$2y$12$1n.XAu4GpmiBbqf7Ig/k2uPUOeNGR2sE81H4eKOnnWXYZziYoAmBS', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:13:31', '2026-01-07 19:13:31'),
(1095, '23247796', 'IKHSAN HARI PRIANDIKA', '23247796@sekolah.test', '$2y$12$l5Q9vU3gbwZagQkGr2izD.ycEIHzzdBaHUWrx7Aj2epuQPDgq1kGq', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:13:32', '2026-01-07 19:13:32'),
(1096, '23247817', 'KAKA NAJRIL', '23247817@sekolah.test', '$2y$12$uGLFpIjxiJfeT/mQSLtgY.PEskOjznnPeG99e36K3EAGO8J7dO4eC', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:13:32', '2026-01-07 19:13:32'),
(1097, '23247844', 'MUHAMAD ALI AAS HUSAENI', '23247844@sekolah.test', '$2y$12$axyIJlX0LYVryHoXKOeiBuf8z/AR9FspdobVvexcizreTNzL09G4W', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:13:33', '2026-01-07 19:13:33'),
(1098, '23247882', 'Prasta nizzar Nur Luf Ayyi Maad Adnan', '23247882@sekolah.test', '$2y$12$Tj.W40sLn60IcFt3/RkZWuvqrjEIrVKEGx6gjyUXzi3Sa66VCh1O2', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:13:33', '2026-01-07 19:13:33'),
(1099, '23247887', 'RAFAH RAHMADDANI', '23247887@sekolah.test', '$2y$12$sPhLE/.eNqSrYLXFLPo2EO0TNxrCMQkCwpfzUyx6/63MX59E81wke', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:13:34', '2026-01-07 19:13:34'),
(1100, '23247928', 'RISKI ALAMSYAH', '23247928@sekolah.test', '$2y$12$yC2R2ZfhbXqLGBNoktv9vegzfvAYvoKUnC2k26iRjPKHA/F0svozG', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:13:35', '2026-01-07 19:13:35'),
(1101, '23247949', 'SATRIA AJI NUGROHO', '23247949@sekolah.test', '$2y$12$1.zYuDB7V3AYDVyNuQCCoOzEE5r1Oa.6sxgISJBbcGYb3I/ViFL5C', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:13:35', '2026-01-07 19:13:35'),
(1102, '23247986', 'SYAHRIL HASBI DWIJAYANTO', '23247986@sekolah.test', '$2y$12$52/x7BdR1LZZW62TvrxaVuo87jrjR/SbQjjOd14ew0CzokkWFBr1i', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:13:36', '2026-01-07 19:13:36'),
(1103, '23248016', 'WAHYU DWI PIRMANSYAH', '23248016@sekolah.test', '$2y$12$Onfv1mXsY2tkZGjLQCA94.G4573hyt8PqdLy.yUdG3ZQPkXm5/lAq', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:13:36', '2026-01-07 19:13:36'),
(1104, '23247635', 'ADITYA DUTAMULYA', '23247635@sekolah.test', '$2y$12$V/ek7ng0XrzOOXoHbDinxOOkb4eZJDFIiSJyAIWz3uyHQO5s7w65m', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:13:37', '2026-01-07 19:13:37'),
(1105, '23247639', 'AFFAN NUR EDI NUGROHO', '23247639@sekolah.test', '$2y$12$LRHADvBNukUc1UonKdqef.eEScntwM9Z5VguOOeBh8VVe0H3nYqNq', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:13:37', '2026-01-07 19:13:37'),
(1106, '23247642', 'AGHSAL MAULANA', '23247642@sekolah.test', '$2y$12$N0fsU83MxT9N89qnTX28tuLkHmGlrqpEoG3/lAyLB6mnrpw7W1746', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:13:37', '2026-01-07 19:13:37'),
(1107, '23248039', 'AGIS MAULANA', '23248039@sekolah.test', '$2y$12$GidGnJAQXd6DpG1vk0jDneNeUpeciGNPfnFva5aWTEnz0sSbTNaN.', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:13:38', '2026-01-07 19:13:38'),
(1108, '23247644', 'AHMAD DANU', '23247644@sekolah.test', '$2y$12$H6v6mOHig47shQy2PheS8u061iv/QlEWQ.ZzRSfKEy8O.9cgG1IP2', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:13:38', '2026-01-07 19:13:38'),
(1109, '23247645', 'AHMAD FAIZAL', '23247645@sekolah.test', '$2y$12$oSrJ9BhFGa3eyn5PLJnmwu9H7v8x1mB7LCdn6jjO0l4TusPSMQof2', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:13:39', '2026-01-07 19:13:39'),
(1110, '23247648', 'AHMAD RIJAL MUTTAQIN', '23247648@sekolah.test', '$2y$12$N8lnTio/JJaerZV5gRY1HONdtULV0X2yxYTuDQ1v3mgqNzsy0LlCy', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:13:40', '2026-01-07 19:13:40'),
(1111, '23247653', 'AKBAR KHAFID HAKIM ALGHOZALI', '23247653@sekolah.test', '$2y$12$mm220tArLIjsJs22dvlLs.bMH1MrKZh9b.crehliccQThDKMGPzyG', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:13:40', '2026-01-07 19:13:40'),
(1112, '23248040', 'AKHMAD MAULANA BARIADI', '23248040@sekolah.test', '$2y$12$VUfwn4rwpBYXswG2wKgJcu0x18KjuZLsEZtF2Q4bf2.qSs2cN5Az.', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:13:41', '2026-01-07 19:13:41'),
(1113, '23247655', 'AKMAL ALFIAN', '23247655@sekolah.test', '$2y$12$L64bvOh18Y.OgeyIodWcaelTlwN3evrn3VkOB.TSDfbS58omD77KS', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:13:41', '2026-01-07 19:13:41'),
(1114, '23247681', 'ARDIYANTO', '23247681@sekolah.test', '$2y$12$uPUzmBF12YPuBs2T/Q0Gleaqnmg23sC4/hxTVILt4PvzcKsqfxz5C', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:13:42', '2026-01-07 19:13:42'),
(1115, '23247701', 'Bayu Aulia Daniswara', '23247701@sekolah.test', '$2y$12$BcRdM7sdDqkV.IIEr00vRO868gQsMRrtkhEpWVkLhCH9bYQ68JgCK', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:13:42', '2026-01-07 19:13:42'),
(1116, '23247703', 'Bayu Laksana', '23247703@sekolah.test', '$2y$12$S70W.jnl1gghIOYONE/69OZxt3JB00eAswTDFqja614t59IZen73a', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:13:43', '2026-01-07 19:13:43'),
(1117, '23247704', 'BOBY SAEFULMILLAH', '23247704@sekolah.test', '$2y$12$Uz.CUN.LUKylGXmCHKLQAu/B0Un1N.PBSaTuL3vn90boOw9R7FrPW', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:13:43', '2026-01-07 19:13:43'),
(1118, '23247721', 'DANNY RAMADHAN', '23247721@sekolah.test', '$2y$12$X4VtROBeaQnSkSJQPJGF3OlnaSn/UKuOEt/9mBBsaZsok0bey4vla', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:13:44', '2026-01-07 19:13:44'),
(1119, '23247733', 'DIKA AJI SAPUTRA', '23247733@sekolah.test', '$2y$12$cj.I2ADqpIJEMQDYgjNwUOW9U99yTPgcl/sgEk3ll.iUGs8KQwU4u', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:13:44', '2026-01-07 19:13:44'),
(1120, '23247735', 'Dika Bangun Prasetyo', '23247735@sekolah.test', '$2y$12$UU/JQ6Zg.eGPjp5rmYPo3O5lZO6mVLlQo/CUiCZ0czH4tjswDK5SG', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:13:45', '2026-01-07 19:13:45'),
(1121, '23247761', 'FAREL ADITYA RAMADHAN', '23247761@sekolah.test', '$2y$12$jZGs7Kx/dtD3C9SG8OWNZ.pI9k6qGJLmjQS8uxBr72dvxBQdFJapa', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:13:46', '2026-01-07 19:13:46'),
(1122, '23247828', 'LATHIF MUBAROK', '23247828@sekolah.test', '$2y$12$O/3uZHIRkrflK/iN7o9e2eZcKYmDY8z245wGPl7TtksHV.8ptDYNu', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:13:46', '2026-01-07 19:13:46'),
(1123, '23247851', 'MUHAMAD RAIHAN PRATAMA', '23247851@sekolah.test', '$2y$12$kcbeE3VyRnTsGXW0bwAkI.JFA1QcdSNZwEojivCpJanf7Y0WZ.D/u', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:13:47', '2026-01-07 19:13:47'),
(1124, '23247859', 'MUHRON HANAFI', '23247859@sekolah.test', '$2y$12$uqCU3yoNFdUnbkEvI1XYL.jVrtmQBXU/4/3uXJvCfzuu5Kw9w5hbS', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:13:47', '2026-01-07 19:13:47'),
(1125, '23247904', 'Rendi Budiyanto', '23247904@sekolah.test', '$2y$12$5211pTHxwp3hcW7cPLh5UO7ownZTjD.nU7.a2t170ABsCj2U5GMC2', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:13:48', '2026-01-07 19:13:48'),
(1126, '23247922', 'RIFANDI ADAM AHMADANI', '23247922@sekolah.test', '$2y$12$67c0sSGuvBj4hPtQlaCjg.SWB4u5GbQMX7jT7hwu11mwG6tFXXdSm', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:13:48', '2026-01-07 19:13:48'),
(1127, '23247923', 'Rifki Adi Saputra', '23247923@sekolah.test', '$2y$12$XJoXutNQdPhahpF8kvW/U.rEWEdH5U8Tfq5Vd.kd2N.ZQj/pVaVba', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:13:48', '2026-01-07 19:13:48'),
(1128, '23247930', 'RIZAL RIZKI MAULANA', '23247930@sekolah.test', '$2y$12$5Jgj40ppSb6lTyknRb8OE.iHkMzMnVskk2E2mVxtTeYzfUjhEdUVO', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:13:49', '2026-01-07 19:13:49'),
(1129, '23247932', 'RIZKY ADITIYA', '23247932@sekolah.test', '$2y$12$o4h6/.PxrAZ/0cv/wMT81uuUtTu/SB2uDlP0M7YkQh7rdEi9SkzUm', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:13:49', '2026-01-07 19:13:49'),
(1130, '23247951', 'Satria Cahya Gumilang', '23247951@sekolah.test', '$2y$12$8SlWNFe3.iSQka.189.v9OJU6H1pvAwIy8PEoI5RX89oa8tYFDYGe', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:13:50', '2026-01-07 19:13:50'),
(1131, '23247952', 'SATRIA FEBRIAN', '23247952@sekolah.test', '$2y$12$rNmu2pFlf9VJL2IkDpwG6.2WRN3lCFfUi1VKMcncc9C1BDlg.xnDy', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:13:51', '2026-01-07 19:13:51'),
(1132, '23247995', 'TEGAR ALFIANO', '23247995@sekolah.test', '$2y$12$Iwx3/KXJN9XH6OJHru49u.wImpduZBJUZ6entsEpsAfjgFlVKyOci', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:13:51', '2026-01-07 19:13:51'),
(1133, '23248003', 'Tora Andre Wirawan', '23248003@sekolah.test', '$2y$12$MI.2Sbkp19MuOKK81Tw2FelInS63ocqrh9oFI3Yx4AyEezMWeS4Yq', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:13:52', '2026-01-07 19:13:52'),
(1134, '23248017', 'WAHYU MUHAMAD NURHIDAYAT', '23248017@sekolah.test', '$2y$12$qhH6PCGxEcrQL4/mWFdT7eFHQ4OFv8IIK4qehgscxmkHH3BcLjPK2', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:13:52', '2026-01-07 19:13:52'),
(1135, '23247663', 'ALI HIDAYAH NURY', '23247663@sekolah.test', '$2y$12$d8f3SjXpV24/9u/X/7t2C.c.Ou7RPpkfqnF4gvlJ02nv9Nnyv3yB2', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:14:53', '2026-01-07 19:14:53'),
(1136, '23247666', 'ALVA ARIYANSAH', '23247666@sekolah.test', '$2y$12$HTa2bXWED8tx5FL7HkiplOAzx9C46kCeXb6WcsH1Pqg./KpFEJnae', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:14:53', '2026-01-07 19:14:53'),
(1137, '23247671', 'ANANDA SAPUTRA', '23247671@sekolah.test', '$2y$12$MpLZFTDErZYb7ALC.01qjOTX0NAxEB2FFsz3wM9r1MipgfTJUAxEG', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:14:54', '2026-01-07 19:14:54'),
(1138, '23247672', 'ANDIKA PRATAMA', '23247672@sekolah.test', '$2y$12$.Ak/yJmPdXeVkHHTm1nEDOfx9ElfzwhKbk42Lbi1Qzb8lZ1Bargyq', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:14:54', '2026-01-07 19:14:54'),
(1139, '23247673', 'Andika Rangga Pamungkas', '23247673@sekolah.test', '$2y$12$xRGNdeHc2aoGJOb3VUuuoOVC2aHb6tNgHNlSY6r7R34nT9fhIA8hW', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:14:54', '2026-01-07 19:14:54'),
(1140, '23247684', 'Arif Maulana', '23247684@sekolah.test', '$2y$12$FdgZjV.TJ8ZM5GVBgbpD3ue6MEYf2c999Za2q9Wuf0ElV27Qbq9Lm', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:14:55', '2026-01-07 19:14:55'),
(1141, '23247709', 'CHANDRA ADI RAMZZANI', '23247709@sekolah.test', '$2y$12$PuQTUYDP9YizgCfj7lkBNOWBcRchB8.1eZqbxGwOcB5fHwSP6WXeu', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:14:56', '2026-01-07 19:14:56'),
(1142, '23247710', 'Chandra Maulana', '23247710@sekolah.test', '$2y$12$zKOEMh5deprre3uI9eZo1OPlMH2xdKNi6ssb/5FCOzL4yPoig1G.i', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:14:56', '2026-01-07 19:14:56'),
(1143, '23247751', 'FADHLAN AQILA LAJUARDHI', '23247751@sekolah.test', '$2y$12$kbgBIx5X6TmqbEPoyigxu.i/MCPtIhm1wJ/u3OVNZcAkkumXSDn02', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:14:56', '2026-01-07 19:14:56'),
(1144, '23247754', 'FAHRI IRAWAN', '23247754@sekolah.test', '$2y$12$/MLG81vxcYzi/WS0uar/IupAnylzZrYNspEvAWR4pX/RjfHhM3rqu', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:14:57', '2026-01-07 19:14:57'),
(1145, '23247764', 'FASYA GALUH PAMUNGKAS', '23247764@sekolah.test', '$2y$12$IEdrroY9vO797PDrFxOkjuHuchst/rKepXCAOaNQLeYCKUc403M02', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:14:57', '2026-01-07 19:14:57'),
(1146, '23247783', 'Hariansyah', '23247783@sekolah.test', '$2y$12$Eoo7KdIyvlehXV/Wj.XqU.4dA0pUAKoe4.Wji7pqx0dn8wwiHJph2', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:14:58', '2026-01-07 19:14:58'),
(1147, '23247794', 'Ihksan Aldy Irwansyah', '23247794@sekolah.test', '$2y$12$J6SXWbueQL9oQnbwMHd3KuDigRGb3ddcRBkMLlQV9QzH.MFvPAhwm', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:14:58', '2026-01-07 19:14:58'),
(1148, '23247799', 'IMRON JULIANTO', '23247799@sekolah.test', '$2y$12$ybWEJmT5FEEU2CS6lKdrEu/wxiRpXiJAlSqlz4W9TIEo3iNBSJNqO', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:14:59', '2026-01-07 19:14:59'),
(1149, '23247837', 'MADHAN SHABIRI AUFAR', '23247837@sekolah.test', '$2y$12$L8RUh2w8iByExo328YU.tOSq8R9ufwaAhe0IDDxvKdQTmvNj0qznC', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:14:59', '2026-01-07 19:14:59'),
(1150, '23247841', 'MAULANA VAEROUS AL FARABI', '23247841@sekolah.test', '$2y$12$L7XzXYnuNpjNR6Rbz7waX.q5UPBHdyFw.74uXPY3dE6Rotduem6Qy', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:15:00', '2026-01-07 19:15:00'),
(1151, '23247845', 'MUHAMAD AMIN TOHAR', '23247845@sekolah.test', '$2y$12$PfMosXnEULTdBbu.I8L5vuFkjPOU65oGb6h6pc4w4Wg0LIU6l7Lcm', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:15:00', '2026-01-07 19:15:00'),
(1152, '23247852', 'MUHAMMAD BAYU ANWARI', '23247852@sekolah.test', '$2y$12$1kSJhuJ69HCZNnKIp7AfDucR5KzBANKSGyU9Rh1i/y9o7hbS..43e', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:15:01', '2026-01-07 19:15:01'),
(1153, '23247874', 'NOVAL IRMAN MUKTI', '23247874@sekolah.test', '$2y$12$Uq6XcIDtPkTqS8zUFfeq8e/nd4kdwMzo33QMtyqB/Q8MF88uOGU7i', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:15:01', '2026-01-07 19:15:01'),
(1154, '23247890', 'RAFYYANSAH', '23247890@sekolah.test', '$2y$12$8VcPTGVFcgJXfhH4Mo8YGOEM4rkKVYc185eBIO7Rd3JF25aDfb0l2', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:15:02', '2026-01-07 19:15:02'),
(1155, '23247899', 'Rashultan Wicaksono Pamungkas', '23247899@sekolah.test', '$2y$12$/HvNXYkL7eMOJ9DDzVEr4OKLLbKWNA542kA4AwAvqYfAc13y.QWxW', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:15:02', '2026-01-07 19:15:02'),
(1156, '23247902', 'REFANSYAH ALFANI', '23247902@sekolah.test', '$2y$12$JEqcvQyqQy4U1rVu70Vlte3MYTn4bd3.JGxc6XQSL3IlZU7LxLD3m', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:15:03', '2026-01-07 19:15:03'),
(1157, '23247933', 'RIZKY ZULFATIAN', '23247933@sekolah.test', '$2y$12$OuuWw5YKh7ZtOSUQlM.dIu0rFCezzW3O5ehu3iHg1oDb7DzzREKE.', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:15:03', '2026-01-07 19:15:03'),
(1158, '23247937', 'SAEFUL NUR AKBAR', '23247937@sekolah.test', '$2y$12$vqPiZ1NXF25HdOsi.5OTn.EjjrW3fSGX7GYEcdqeUWmgMi22KE6P2', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:15:03', '2026-01-07 19:15:03'),
(1159, '23247956', 'SEPRI ADI SAPUTRA', '23247956@sekolah.test', '$2y$12$QUF2v8v8Edho5CAW5Y4VVuPwHZOVhs7ZQLRJwudav2tDMitC0jUeu', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:15:04', '2026-01-07 19:15:04'),
(1160, '23247983', 'SYAFIQ YADIKA NURFAKIH', '23247983@sekolah.test', '$2y$12$cvCTrGYM4hhD85hDDIfUSuW5pcQ3qH85tgta1wCIHsWg6apQdHJCO', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:15:05', '2026-01-07 19:15:05'),
(1161, '23247987', 'Syaiful Fitrian', '23247987@sekolah.test', '$2y$12$6XaME.KG2EiA8dmeQVt7i.LmNSldniSSQz0GiTGOFw6KC00p0YMzq', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:15:06', '2026-01-07 19:15:06'),
(1162, '23248031', 'ZAHRAH APRILIANA PUTRI', '23248031@sekolah.test', '$2y$12$vZKiHtfuTYluBpFD1vVU2OCtkvtTTS9HwrHRtssPMqQPXFQ1ymUIO', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:15:06', '2026-01-07 19:15:06'),
(1163, '23248034', 'ZAKY HUMAEDI', '23248034@sekolah.test', '$2y$12$oN3a55O40kZ4.2kO0XDS9ukBTGjIjbLU2LwasriziR3fI3ndb4g86', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:15:06', '2026-01-07 19:15:06'),
(1164, '23248036', 'Zhidan Rizky Hartono', '23248036@sekolah.test', '$2y$12$3NVzAA10S2dHh/ZpL3otHe00aDTN2iWHpPIG5UM5frb/oDaprVGnS', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:15:07', '2026-01-07 19:15:07'),
(1165, '23247628', 'ADAM ABI MULKHI FIRMAN HIDAYAT', '23247628@sekolah.test', '$2y$12$9.5oUAyLybCIkV1QqlUae.gNJ1eH/f8suVfaq6ZmZMbWZRmBBvS5u', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:15:07', '2026-01-07 19:15:07'),
(1166, '23247646', 'Ahmad Ikhsan Fauzi', '23247646@sekolah.test', '$2y$12$QfMpziTncgjkDPgHKeW/zOJe/yMJGARjauRhNDYpI1r//N9g7LS9W', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:15:08', '2026-01-07 19:15:08'),
(1167, '23247657', 'ALAN ERLANGGA', '23247657@sekolah.test', '$2y$12$WOXWyKu.kvNqU4SYIl25VuCoJD8iGx4c0YYZfLvN4/Uj7ecThu24G', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:15:08', '2026-01-07 19:15:08'),
(1168, '23247668', 'ANA AMELIA', '23247668@sekolah.test', '$2y$12$V1er0v0zY9KXaBaxhdDVFOiAGC7.UWROrmnsuUa4uEOtO2wHEpAf6', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:15:09', '2026-01-07 19:15:09'),
(1169, '23247686', 'ARIYA DANI SAPUTRA', '23247686@sekolah.test', '$2y$12$/E7ht35AkGvRLGAvWxz/hOsHRMsi/h4H/AJiEKY1YyogLiV2kxNqa', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:15:09', '2026-01-07 19:15:09'),
(1170, '23247702', 'BAYU FIRMANSAH', '23247702@sekolah.test', '$2y$12$jWpgfTOSdhYl4OBodiAxhuwspv7kWgBCHkHOxzlButQ.2bw4EgsDG', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:15:10', '2026-01-07 19:15:10'),
(1171, '23247790', 'IBRAHIM MOVIC', '23247790@sekolah.test', '$2y$12$TXW3Ki7qy5Uxb0v6s/KLDOBv9dhxeJzjqwVLZs4B6BTX6T0UFdVuq', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:15:11', '2026-01-07 19:15:11'),
(1172, '23247805', 'Irwanto', '23247805@sekolah.test', '$2y$12$sty4ZetdbhGyjJyWd1bh5.fFDcylV54NdUy8aZKzpmQzjMGph1QAi', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:15:11', '2026-01-07 19:15:11'),
(1173, '23247826', 'khanafi', '23247826@sekolah.test', '$2y$12$NRK0GNj3fD0onFUNC0vrmeCtHsrJ0WWjkv.SW8wWf4huRHVMJTWha', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:15:11', '2026-01-07 19:15:11'),
(1174, '23247839', 'Marvel Avrijal Mubarok', '23247839@sekolah.test', '$2y$12$mSW6WBSurvbKbDzD3pH1Bu5.LzodMlSraqmSd08ZdWTUl3VjPORAS', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:15:12', '2026-01-07 19:15:12'),
(1175, '23247876', 'NUR ANWAR', '23247876@sekolah.test', '$2y$12$2Y9w9JNOavzJADZsRMN3huF32YP.ZiKakIqmBTAPSURoSLK1M99OC', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:15:12', '2026-01-07 19:15:12'),
(1176, '23247894', 'RAIHAN AL FAUZI', '23247894@sekolah.test', '$2y$12$74S8p8asKAWRquYJQ6vnQeCA5usN3tQLSvUH4XW9CkbS0bjkIffg.', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:15:13', '2026-01-07 19:15:13'),
(1177, '23247905', 'Rendi Windu Nugraha', '23247905@sekolah.test', '$2y$12$7EPm0krrDe.NG4bvHZ.xOexyNxR4N4aWvJB7UaZGlTGM4H8O7CU2W', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:15:13', '2026-01-07 19:15:13'),
(1178, '23247910', 'Revan Shavanda', '23247910@sekolah.test', '$2y$12$5br8h19ccZzKqAzJIXVyquAd7auJWWw1CL5EGhavv7.4NXD8Cd4Qm', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:15:14', '2026-01-07 19:15:14'),
(1179, '23247916', 'RIDHO PRASETYO', '23247916@sekolah.test', '$2y$12$ST.BHEy03YHwnUZXEZA5sO1cTdZUPqyx7rlyKhWTavVDtTj8iYibC', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:15:14', '2026-01-07 19:15:14'),
(1180, '23247924', 'Rifki Febrian', '23247924@sekolah.test', '$2y$12$Sp1/mfZKUsMixYHTas4rG.mCcaWK8Q91pFl6kKx6nZg3tfJGcweRm', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:15:15', '2026-01-07 19:15:15'),
(1181, '23247936', 'RYAN ADRIANSYAH', '23247936@sekolah.test', '$2y$12$wMWP39z4YgPbL9pEgPXiKeeSS9Yr6xm8JcRKNhZGOB6D9shviOnR.', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:15:16', '2026-01-07 19:15:16'),
(1182, '23247942', 'Samsul Ali Hidayat', '23247942@sekolah.test', '$2y$12$lpJeZk1kfWGKvj0jWGoYc.xQhqRmQz2fEUg1WDwiT4CknQY5jgMJK', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:15:16', '2026-01-07 19:15:16'),
(1183, '23248026', 'Yudistira Pamuji', '23248026@sekolah.test', '$2y$12$w5z/74h7ChYl3Vx7lTv7buwDflMozAmH3epH/ZaqhdEEiHKDEDx9q', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:15:17', '2026-01-07 19:15:17'),
(1184, '23248032', 'ZAHRAH FADILAH', '23248032@sekolah.test', '$2y$12$4Qi1Z0G4A.LecfkNir7RHukKsVxk1pw.1t7nMmxarjdBqYZKde07m', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:15:17', '2026-01-07 19:15:17'),
(1185, '23247640', 'AFIK YAHYA UBAIDILAH', '23247640@sekolah.test', '$2y$12$qsVQ8sR0Edtc/YnMoKeSe.GaccpXjpceeTaFmXqM832NN4Av6uvNu', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:15:18', '2026-01-07 19:15:18'),
(1186, '23247658', 'ALDI ANGGORO', '23247658@sekolah.test', '$2y$12$JidzDuKP9yUxCaKSo.RKo.cmDtjNllbOfd0FG74B2Q4/EVxI9V/pm', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:15:18', '2026-01-07 19:15:18'),
(1187, '23247665', 'ALIF ADI MAULANA SAPUTRA', '23247665@sekolah.test', '$2y$12$Gkkhqimic2VejdKDENDjAeuW8bTYZ7dif3/a9XPMqZ9BKtgmkljTO', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:15:19', '2026-01-07 19:15:19'),
(1188, '23247670', 'ANANDA PUTRA SYAHRUR RAYA', '23247670@sekolah.test', '$2y$12$S9wOpT4LKgjzg1ymDYFMNOFm7fA91KMdbwThSb/HX3FalYfS29ofS', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:15:19', '2026-01-07 19:15:19'),
(1189, '23247687', 'ARZETI EGI APRILIANI', '23247687@sekolah.test', '$2y$12$zBMzZrU3wVnqicymlPZcxuE/dIxt3UG2t4smUIuSvWILXPRR7qK8O', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:15:19', '2026-01-07 19:15:19'),
(1190, '23247689', 'ATTAHIA BILAL', '23247689@sekolah.test', '$2y$12$v5AtHyISufBSZfZkEcfRyOjuvyp7ZVbB0h2n5k2L7mfxBqAoSP68O', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:15:20', '2026-01-07 19:15:20'),
(1191, '23247694', 'AZMI IHWANUL MAHFUD', '23247694@sekolah.test', '$2y$12$2pn5ghJI6kta45pyxMscJ.s2JuDNHntK6BA9ifihIZ/mTtNPDzuD.', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:15:21', '2026-01-07 19:15:21'),
(1192, '23247696', 'AZREL FIRMANSYAH', '23247696@sekolah.test', '$2y$12$goXchLZUIRjDEi6E5TzVfejtmSNmtxBRko0VpPGmjmFRYTdRoar1O', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:15:21', '2026-01-07 19:15:21'),
(1193, '23247706', 'CACA MUSTOPA', '23247706@sekolah.test', '$2y$12$pBokWS5qpfi/95IknTCTx.dw0rvWW4/fhpfakWquiC5xTS1NqwDOK', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:15:22', '2026-01-07 19:15:22'),
(1194, '23247707', 'CAHYO ARI SIGIT', '23247707@sekolah.test', '$2y$12$oux.1P0w.dqM4oWKGwbHPeZgzgIihVX3.CCq3gFyK7VqqheqDw77G', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:15:22', '2026-01-07 19:15:22'),
(1195, '23247718', 'DANAR SETYO HASTORO', '23247718@sekolah.test', '$2y$12$BzyrpnSh0DKXdbYjDNrZ5OyQFk08Il6n7mz2EMI/sVT0/TR5e09BO', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:15:23', '2026-01-07 19:15:23'),
(1196, '23247722', 'Danu Adli Iyansyah', '23247722@sekolah.test', '$2y$12$z.1XekblGqZ2pdAU4obCHet4yirGke8ORmQZ2DSYonGqY8KSKwePu', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:15:23', '2026-01-07 19:15:23'),
(1197, '23247731', 'DICKY RAMDANI', '23247731@sekolah.test', '$2y$12$uvQmYpe9mjjvqKguZAj6zO9tIWFun8yn6SNydmgxg9pMtYBBlXU3u', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:15:24', '2026-01-07 19:15:24'),
(1198, '23247748', 'EVAN SETIAWAN', '23247748@sekolah.test', '$2y$12$NLPO1pGbCx993iXU1V6.3eEOWE8fPzSa0Np9Of0GhMxUlqpZBRaNi', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:15:24', '2026-01-07 19:15:24'),
(1199, '23247758', 'FA\'IQ ISNANDI', '23247758@sekolah.test', '$2y$12$uTjloNjksz3KlBLQPU5nv.1VelR8Bj/KlCQPkvaHlNmYESN9V.qlq', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:15:24', '2026-01-07 19:15:24'),
(1200, '23247749', 'FAAIZ RAMADHAN', '23247749@sekolah.test', '$2y$12$ljLcpnj93w3vA1D1GFKM5OsiDHQ4kPnkYylLDyVuqLJN2U6oT5.oy', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:15:25', '2026-01-07 19:15:25'),
(1201, '23247753', 'Fahkri Rizki Arsyah', '23247753@sekolah.test', '$2y$12$QoDjVgFtDT4pWzGEaN1HfONWLdGW0HlDbwrFeKc7HofeWpx0sikLK', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:15:26', '2026-01-07 19:15:26'),
(1202, '23247762', 'FAREL MUARIF', '23247762@sekolah.test', '$2y$12$PYiwANSCPWXNMrE2l8tJluNaX/jJdldYL1QDi/65Ei9eic9XifI8K', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:15:26', '2026-01-07 19:15:26'),
(1203, '23247795', 'Ihza Malzen', '23247795@sekolah.test', '$2y$12$tPW.YCWL5O4blALChVoOqu/7j1jdGj7RfZzr0V326znWSAiLf34pu', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:15:27', '2026-01-07 19:15:27'),
(1204, '23247797', 'IMAM ARIF NUGROHO', '23247797@sekolah.test', '$2y$12$9qIqIaX5c9dShIEEZcpfU.P4.7mGFuOm35vSiDh3W.SL6R2HHjjaG', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:15:27', '2026-01-07 19:15:27'),
(1205, '23247798', 'IMAM WIDAYAH SAFUTRA', '23247798@sekolah.test', '$2y$12$Rca5R4EeXP24Pr1eKRDOLexsUB/wptTtuGjsO8EmlvQUkrRYl5Hlu', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:15:28', '2026-01-07 19:15:28'),
(1206, '23247804', 'IRGI AHMAD FAUZI', '23247804@sekolah.test', '$2y$12$lETQl3ebYAOC77mxlJj54uY1zv6bZ8Z3v064WGthLofwmE9ITZ3ji', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:15:28', '2026-01-07 19:15:28'),
(1207, '23247807', 'ISMAIL SAPUTRA', '23247807@sekolah.test', '$2y$12$.9tPA0vFhlj9B7/kHE0N5u5jf0hBnJVL08oWLrQUgQROYYGEckRSK', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:15:29', '2026-01-07 19:15:29'),
(1208, '23247835', 'LUKMAN HAKIKI', '23247835@sekolah.test', '$2y$12$4IxlabnRF9uvqaTTFFPM5.8B6SMfeLN0E2CiaC83zywf5sIF7WkMG', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:15:29', '2026-01-07 19:15:29'),
(1209, '23247840', 'MAULANA ABDUL MALIK', '23247840@sekolah.test', '$2y$12$Mg0b6ITrl0UysGLnt.9WxOHMSt6dkU/N3Ep9CpPlQI9aztcgzByQC', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:15:30', '2026-01-07 19:15:30'),
(1210, '23247842', 'MIFTAHURRIZKI', '23247842@sekolah.test', '$2y$12$HOMmAPC2xuDQBVleH8ObFOczS/dANxrj4h6K0M8lLXIPFhYp4F6bu', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:15:31', '2026-01-07 19:15:31'),
(1211, '23247850', 'MUHAMAD JAMI', '23247850@sekolah.test', '$2y$12$BQALgcL90P.U2OlLkxVlG.FlR9An6AaXgL/LxujfOdS7sbH4Q.JIa', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:15:31', '2026-01-07 19:15:31'),
(1212, '23247865', 'NANDIKA FALEN MAULANA', '23247865@sekolah.test', '$2y$12$pUEpWuDwxQUxuIT/UwKkuuHBYgzXjUa0SJPUHUfRhVQGT3uez3X76', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:15:31', '2026-01-07 19:15:31'),
(1213, '23247867', 'NAUFAL RA\'IF ROMANDANIS', '23247867@sekolah.test', '$2y$12$tuGErAsd09N5B2fNpyWcqOAxJwy4g2PzsIbLZnKtvtbLgV9hPDdDe', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:15:32', '2026-01-07 19:15:32'),
(1214, '23247871', 'NIFTAH FARID', '23247871@sekolah.test', '$2y$12$TV.BvHHD6JM7Q9e.koFtj.mCbXHIutTEXj/dyYmpURDqZTZO2CxK6', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:15:32', '2026-01-07 19:15:32'),
(1215, '23247909', 'REVAN ARDIYAN', '23247909@sekolah.test', '$2y$12$F4IhD.8WomG1UjiTygyge.ABMoEXQVYQ9WQY3Zq4qsVY3/nN8vNNa', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:15:33', '2026-01-07 19:15:33'),
(1216, '23248044', 'RIZKY SEPTIAN BAYU SAPUTRA', '23248044@sekolah.test', '$2y$12$pCE.aq/vd9UClwxYRiMgNupwIYpAOjbQGNcjckuMxxANK43ZWVXeS', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:15:33', '2026-01-07 19:15:33'),
(1217, '23247992', 'TARI NOVITA SARI', '23247992@sekolah.test', '$2y$12$LKSr8E9N5eT3i.AzfFmDbeBUzrwZhPdEF9bFDUJRV7m5vXg9zoPoy', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:15:34', '2026-01-07 19:15:34'),
(1218, '23248011', 'VICKY MAULANA', '23248011@sekolah.test', '$2y$12$GBe4AwNhjLiks6z.aYxwDuJNdv32S0d12BXXXFkWV3Uk7/fAyAgke', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:15:34', '2026-01-07 19:15:34'),
(1219, '23248020', 'WILI BREGAS RAHAYU', '23248020@sekolah.test', '$2y$12$gUoXvTevYJuEu0PdXQ9XJOr/5Jzw3tuITaWgkdK1ZyYzKag1SqWeS', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:15:35', '2026-01-07 19:15:35'),
(1220, '23248025', 'YOGA PRAYOGA', '23248025@sekolah.test', '$2y$12$ICjpu6P3gxcDAO/5RESks.ruaqkLz8ygNGrI7EWvcheHH7LT4qo3S', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:15:36', '2026-01-07 19:15:36'),
(1221, '23247630', 'Adhnan Tridziianto', '23247630@sekolah.test', '$2y$12$khjTsdyF5yr3QaHfDZjT7.jEotR.MjDOyDNyVHVzrUtATb0vjFmZC', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:16:21', '2026-01-07 19:16:21'),
(1222, '23247632', 'Adi Tatmimul Husna', '23247632@sekolah.test', '$2y$12$ey//SJbj1PIUvPoRMpMC2OfZaN51zYnDNFp1GF2Y8T0eohI35R9Bi', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:16:22', '2026-01-07 19:16:22'),
(1223, '23247634', 'ADITYA ARFI MAULANA', '23247634@sekolah.test', '$2y$12$QkewutRJHWH1JWZyJTJbQus/.i6klqkmmQ8KgbfO7hd2Vyb08M.K6', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:16:22', '2026-01-07 19:16:22'),
(1224, '23247656', 'AKMAL NURHAMID', '23247656@sekolah.test', '$2y$12$OpPkPoFWtXJSJof4eCjzNecfWJPEdxx8PWFLDu7QS0qc1e.fm0ESa', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:16:22', '2026-01-07 19:16:22'),
(1225, '23247678', 'ANGGA DWI PRASETIO', '23247678@sekolah.test', '$2y$12$LiSaJunZMryPZZgLRnV8ZuuTUTqvOouy4sL3neWuNFpu4QXbqDZl.', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:16:23', '2026-01-07 19:16:23'),
(1226, '23247682', 'Arga Pratama', '23247682@sekolah.test', '$2y$12$bcnKwFDSFUEge37nSlWX2.JmqeBBB734eHlYyH8fhEJXtSHtDJ.tC', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:16:24', '2026-01-07 19:16:24'),
(1227, '23244052', 'DANUR ROHMAN', '23244052@sekolah.test', '$2y$12$9otoM8KzFPd/G83wPUsqz.y.Z5GsSb6LQDX/DLUcpfwALIYuJUnMa', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:16:24', '2026-01-07 19:16:24'),
(1228, '23248041', 'EGI FIRMANSYAH', '23248041@sekolah.test', '$2y$12$BXAmiUBU0Tiq2Xn5DDCwSOiSRC30pqCyExbeTOOLcyFPrdRvOuXie', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:16:25', '2026-01-07 19:16:25'),
(1229, '23247746', 'Emiliah Rahmah', '23247746@sekolah.test', '$2y$12$tc1vMHgvcJPjvp4SwFMdZ.aPcaAw1OsI9iRknYifoJacdEg5ZSNwG', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:16:25', '2026-01-07 19:16:25'),
(1230, '23247765', 'FEBIYANSAH', '23247765@sekolah.test', '$2y$12$d6amv9OOiymFjwjRrg.S7ejsiX8YZPPIJZDLqlB8EYCOzjQgvnm7y', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:16:25', '2026-01-07 19:16:25'),
(1231, '23247772', 'FIRMAN RIYADI', '23247772@sekolah.test', '$2y$12$QKOu9xn512QUy5nFlXYVMugGCtRJjUGVhIp5BhP1FhF4Nb0s5WXcy', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:16:26', '2026-01-07 19:16:26'),
(1232, '23247773', 'FIRMANDA OKI ROMADHAN', '23247773@sekolah.test', '$2y$12$kx77tbJxEIPRUNYtO9xv3.5VfBIRaeWYzUsX5VJzopoRt8gPQItbq', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:16:26', '2026-01-07 19:16:26'),
(1233, '23247776', 'GANANG SAPUTRA', '23247776@sekolah.test', '$2y$12$2VjFuIXFWBnfEss53jjfIeFNqI9gC..PHxKvwZ5CzVwfusC04Ikry', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:16:27', '2026-01-07 19:16:27'),
(1234, '23247778', 'Hadi Putra Firmansyah', '23247778@sekolah.test', '$2y$12$hIKnfDho9paWES6y9LQJT.CGVNXhOm3vQqOWIZslIK6tezGfJmJb2', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:16:27', '2026-01-07 19:16:27'),
(1235, '23247782', 'HANUM EKHA SAWITRI', '23247782@sekolah.test', '$2y$12$588qbzIMTsHCwYi1SUmfS.S8vWhLf3h8csOY624lhr7qvH9yq73TC', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:16:28', '2026-01-07 19:16:28'),
(1236, '23247821', 'KELPIN', '23247821@sekolah.test', '$2y$12$kXYpI6BazvFF.mCRiItWBeytk/ZsWIVolr8HcPJXjpNC23m18TGOK', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:16:29', '2026-01-07 19:16:29'),
(1237, '23247854', 'Muhammad Farid Hidayat', '23247854@sekolah.test', '$2y$12$gt9gqicG4FavfAM110RTNOMXJ0IXRaLYo16qBQuVhTwY0zKcFfPI2', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:16:29', '2026-01-07 19:16:29'),
(1238, '23247881', 'Parhan Afandi', '23247881@sekolah.test', '$2y$12$KWTQmQK8LbAT3XKJB4uBPuY46vf910j027cnvjQTauepy2flNsSzy', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:16:29', '2026-01-07 19:16:29'),
(1239, '23247888', 'RAFLI HARDIANSYAH', '23247888@sekolah.test', '$2y$12$lT8bJyikymM6rYoXMCssvuWwx7yXT/3dKVB5vWTlt3HKYluq8Xpce', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:16:30', '2026-01-07 19:16:30'),
(1240, '23247889', 'RAFLI WILDANU', '23247889@sekolah.test', '$2y$12$SAhd7HKREhtNkh.TaowORudjK.CCOQNQzzMZ.EMt60vbRt929qaz.', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:16:30', '2026-01-07 19:16:30'),
(1241, '23247891', 'RAGIL PRIHATIN', '23247891@sekolah.test', '$2y$12$njOUwzGyiVhrEro6yi3A1.ly2DOWo0SDuU7TEzqqcGHWWlfN/M0XC', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:16:31', '2026-01-07 19:16:31'),
(1242, '23247893', 'Raif Al Muhyi', '23247893@sekolah.test', '$2y$12$MnBtnpVFzg4ufQHH3DXg4OfK/D1Ti7BvyqPNjBDb9nWb9yEI6u6hS', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:16:31', '2026-01-07 19:16:31'),
(1243, '23247897', 'RANDI WAELAN GASELA', '23247897@sekolah.test', '$2y$12$ZR3X8kf.DorB7c/PHtQPceaafSkS3cXxB/ce.YVryhBGlRV79DJhm', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:16:32', '2026-01-07 19:16:32'),
(1244, '23247900', 'REDIT JUWANTORO', '23247900@sekolah.test', '$2y$12$RAYgOWGuO259jsFOuht/o.0IX9Rq/gaPByX46TiNQOYGLctHbg7Xm', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:16:32', '2026-01-07 19:16:32'),
(1245, '23247906', 'Restu Ilham Nurrizal', '23247906@sekolah.test', '$2y$12$Bo0BK26ftjIpqhlnwPkWVeMNPW7jgebCHkQtC/m2ci1jt34T8Clvq', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:16:33', '2026-01-07 19:16:33'),
(1246, '23247915', 'RICO ROZAK', '23247915@sekolah.test', '$2y$12$WjL2eu.LyKQBD3sKaF1EY.mxMk3b41f3qdTkamtRTBxN7JXdzM5NW', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:16:34', '2026-01-07 19:16:34'),
(1247, '23247919', 'RIDO AGUNG PANGESTU', '23247919@sekolah.test', '$2y$12$8qQdFtL6s/3zGWwfa2dxbeN8mcasShfdrkXdBEa2k.YomqDMJlIcu', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:16:34', '2026-01-07 19:16:34'),
(1248, '23247938', 'SAIFUL IKBAL PRADITA', '23247938@sekolah.test', '$2y$12$t1g59SnR/k.r8dJEHMFafexHNozOJnGh99RQh6tLMdVy9jZQx6VQG', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:16:34', '2026-01-07 19:16:34'),
(1249, '23247941', 'SAMSI AL GOZALI', '23247941@sekolah.test', '$2y$12$5MmYvaUH6iDhL2E7qYD/GOTPdrxrdSHOlhCvaGRLZQckR7urmKWqi', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:16:35', '2026-01-07 19:16:35'),
(1250, '23247962', 'sigit triandaru', '23247962@sekolah.test', '$2y$12$R/jbfNiaKm.sVA2uWf2OzeQH4EXGQspd1HjMaMXREFsvHSX5cFa2q', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:16:35', '2026-01-07 19:16:35'),
(1251, '23247974', 'SOFIA ARZETA', '23247974@sekolah.test', '$2y$12$wiyVtK/22t9PKH/qZsOb7ujM5pFo2Uwa19JxkPx8sRZ.4f1bZuxFW', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:16:36', '2026-01-07 19:16:36'),
(1252, '23247977', 'Subarno Doni Seloso', '23247977@sekolah.test', '$2y$12$jiePcc1/fVdzX23tK8ehzuoHm3j7h4UvsDx6uM2ugcT99tnRHgbKO', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:16:36', '2026-01-07 19:16:36'),
(1253, '23247981', 'SURYA ANDIKA SAPUTRA', '23247981@sekolah.test', '$2y$12$LmEXPIr6w9Bo.36bhf7oeuFxkQBKSGe/XHbVSpb5UY7dVi3Yt1ryW', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:16:37', '2026-01-07 19:16:37'),
(1254, '23247988', 'SYAMSURI IKHSAN', '23247988@sekolah.test', '$2y$12$d4GECSRORihFjQCaiza4Y.CG7pQ4ged/yYKWiAXZID64PUrpuh5tO', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:16:37', '2026-01-07 19:16:37'),
(1255, '23247994', 'TEGAR AGUSTIAWAN', '23247994@sekolah.test', '$2y$12$IMTxUEij5WU6dv33enMJluw36THoPU20hYTCTPmfRz7dCba0kO97W', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:16:38', '2026-01-07 19:16:38'),
(1256, '23248001', 'TIO', '23248001@sekolah.test', '$2y$12$kZAneC5yZDr7dSau1gJUUuLZ0wL4RZHRL4Seyy9HTbvD6VEeKnHS.', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:16:39', '2026-01-07 19:16:39'),
(1257, '23248023', 'WIRANTO', '23248023@sekolah.test', '$2y$12$NzR8Eaask.sf7e.WmgMYPOxbwi7bg8E.cNh6YOV.z4QuT0WyrXnlK', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-07 19:16:39', '2026-01-07 19:16:39');

-- --------------------------------------------------------

--
-- Struktur dari tabel `waka_kesiswaan`
--

CREATE TABLE `waka_kesiswaan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `guru_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `waka_kurikulum`
--

CREATE TABLE `waka_kurikulum` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `guru_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `walikelas`
--

CREATE TABLE `walikelas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `guru_id` bigint(20) UNSIGNED NOT NULL,
  `kelas_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `walikelas`
--

INSERT INTO `walikelas` (`id`, `guru_id`, `kelas_id`, `created_at`, `updated_at`) VALUES
(6, 56, 8, '2025-12-06 21:37:03', '2026-01-04 21:26:03'),
(7, 34, 9, '2025-12-08 01:58:48', '2026-01-04 21:25:10'),
(8, 17, 10, '2025-12-23 19:33:15', '2026-01-04 21:24:55'),
(9, 44, 11, '2025-12-23 19:33:43', '2026-01-04 21:25:24'),
(10, 19, 13, '2026-01-04 21:24:39', '2026-01-04 21:24:39'),
(11, 63, 14, '2026-01-04 21:25:43', '2026-01-04 21:25:43'),
(12, 24, 15, '2026-01-04 21:26:28', '2026-01-04 21:26:28'),
(13, 61, 24, '2026-01-07 02:04:05', '2026-01-07 02:04:05'),
(14, 67, 26, '2026-01-07 02:05:31', '2026-01-07 02:05:31'),
(15, 33, 21, '2026-01-07 02:07:53', '2026-01-07 02:07:53'),
(16, 38, 30, '2026-01-07 02:25:50', '2026-01-07 02:25:50'),
(17, 32, 22, '2026-01-07 02:26:16', '2026-01-07 02:26:16'),
(18, 21, 23, '2026-01-07 02:26:38', '2026-01-07 02:26:38'),
(19, 62, 16, '2026-01-07 02:27:00', '2026-01-07 02:27:00'),
(20, 49, 17, '2026-01-07 02:27:59', '2026-01-07 02:27:59'),
(21, 69, 18, '2026-01-07 02:32:18', '2026-01-07 02:32:18'),
(22, 50, 19, '2026-01-07 02:32:34', '2026-01-07 02:32:34'),
(23, 60, 25, '2026-01-07 02:35:40', '2026-01-07 02:35:40'),
(24, 53, 20, '2026-01-07 02:36:07', '2026-01-07 02:36:07'),
(25, 31, 28, '2026-01-07 02:50:19', '2026-01-07 02:50:19'),
(26, 26, 29, '2026-01-07 19:17:23', '2026-01-07 19:17:23'),
(27, 70, 27, '2026-01-07 19:17:38', '2026-01-07 19:17:38');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_email_unique` (`email`),
  ADD KEY `admin_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `agenda`
--
ALTER TABLE `agenda`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `data_mengajar`
--
ALTER TABLE `data_mengajar`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_mengajar_guru_id_foreign` (`guru_id`),
  ADD KEY `data_mengajar_mapel_id_foreign` (`mapel_id`),
  ADD KEY `kelas_id` (`kelas_id`);

--
-- Indeks untuk tabel `data_sekolah`
--
ALTER TABLE `data_sekolah`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_sekolah_npsn_unique` (`npsn`);

--
-- Indeks untuk tabel `ejurnal`
--
ALTER TABLE `ejurnal`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ejurnal_mengajar_id_foreign` (`mengajar_id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `guru_email_unique` (`email`),
  ADD UNIQUE KEY `guru_nip_unique` (`nip`),
  ADD UNIQUE KEY `guru_nuptk_unique` (`nuptk`),
  ADD KEY `guru_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `hari_aktif`
--
ALTER TABLE `hari_aktif`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `jadwal_mengajar`
--
ALTER TABLE `jadwal_mengajar`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jadwal_mengajar_data_mengajar_id_foreign` (`data_mengajar_id`),
  ADD KEY `jadwal_mengajar_jam_mulai_id_foreign` (`jam_mulai_id`),
  ADD KEY `jadwal_mengajar_jam_selesai_id_foreign` (`jam_selesai_id`);

--
-- Indeks untuk tabel `jam_mengajar`
--
ALTER TABLE `jam_mengajar`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `jam_pelajaran`
--
ALTER TABLE `jam_pelajaran`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `jenis_tagihan`
--
ALTER TABLE `jenis_tagihan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `jurusan`
--
ALTER TABLE `jurusan`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `jurusan_kode_jurusan_unique` (`kode_jurusan`);

--
-- Indeks untuk tabel `kaskeluar`
--
ALTER TABLE `kaskeluar`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kode_pengeluaran` (`kode_pengeluaran`),
  ADD KEY `kaskeluar_petugas_id_foreign` (`petugas_id`),
  ADD KEY `kaskeluar_semester_id_foreign` (`semester_id`),
  ADD KEY `kaskeluar_tahun_pelajaran_id_foreign` (`tahun_pelajaran_id`);

--
-- Indeks untuk tabel `kategori_mapel`
--
ALTER TABLE `kategori_mapel`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kelas_jurusan_id_foreign` (`jurusan_id`);

--
-- Indeks untuk tabel `ketua_kelas`
--
ALTER TABLE `ketua_kelas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `adminkelas_siswa_id_foreign` (`siswa_id`),
  ADD KEY `ketua_kelas_ibfk_1` (`kelas_id`);

--
-- Indeks untuk tabel `laporan_keuangan`
--
ALTER TABLE `laporan_keuangan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_laporan_semester` (`semester_id`),
  ADD KEY `fk_laporan_tahun_pelajaran` (`tahun_pelajaran_id`);

--
-- Indeks untuk tabel `laporan_keuangan_detail`
--
ALTER TABLE `laporan_keuangan_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_laporan_detail_laporan` (`laporan_id`);

--
-- Indeks untuk tabel `log_kehadiran`
--
ALTER TABLE `log_kehadiran`
  ADD PRIMARY KEY (`id`),
  ADD KEY `log_kehadiran_mengajar_id_foreign` (`mengajar_id`),
  ADD KEY `log_kehadiran_siswa_id_foreign` (`siswa_id`);

--
-- Indeks untuk tabel `log_kehadiran_kelas`
--
ALTER TABLE `log_kehadiran_kelas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `log_kehadiran_kelas_kelas_id_foreign` (`kelas_id`),
  ADD KEY `log_kehadiran_kelas_siswa_id_foreign` (`siswa_id`);

--
-- Indeks untuk tabel `log_user`
--
ALTER TABLE `log_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `log_user_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `mapel`
--
ALTER TABLE `mapel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mapel_kategori_mapel_id_foreign` (`kategori_mapel_id`);

--
-- Indeks untuk tabel `materi`
--
ALTER TABLE `materi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `materi_mengajar_id_foreign` (`mengajar_id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `notifikasi`
--
ALTER TABLE `notifikasi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifikasi_user_id_foreign` (`user_id`),
  ADD KEY `notifikasi_status_notifikasi_id_foreign` (`status_notifikasi_id`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pembayaran_tagihan_id_foreign` (`tagihan_id`),
  ADD KEY `tahun_pelajaran_id` (`tahun_pelajaran_id`),
  ADD KEY `semester_id` (`semester_id`);

--
-- Indeks untuk tabel `pengumpulan_tugas`
--
ALTER TABLE `pengumpulan_tugas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pengumpulan_tugas_tugas_id_foreign` (`tugas_id`),
  ADD KEY `pengumpulan_tugas_siswa_id_foreign` (`siswa_id`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `semesters`
--
ALTER TABLE `semesters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `semesters_tahun_pelajaran_id_foreign` (`tahun_pelajaran_id`);

--
-- Indeks untuk tabel `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `siswa_nis_unique` (`nis`),
  ADD UNIQUE KEY `siswa_nisn_unique` (`nisn`),
  ADD KEY `siswa_user_id_foreign` (`user_id`),
  ADD KEY `siswa_kelas_id_foreign` (`kelas_id`);

--
-- Indeks untuk tabel `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `staff_email_unique` (`email`),
  ADD KEY `staff_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `status_notifikasi`
--
ALTER TABLE `status_notifikasi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tagihan`
--
ALTER TABLE `tagihan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tagihan_siswa_id_foreign` (`siswa_id`),
  ADD KEY `jenis_tagihan_id` (`jenis_tagihan_id`),
  ADD KEY `tahun_pelajaran_id` (`tahun_pelajaran_id`),
  ADD KEY `semester_id` (`semester_id`);

--
-- Indeks untuk tabel `tahun_pelajaran`
--
ALTER TABLE `tahun_pelajaran`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tahun_pelajaran_nama_unique` (`nama`);

--
-- Indeks untuk tabel `tugas`
--
ALTER TABLE `tugas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tugas_mengajar_id_foreign` (`mengajar_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indeks untuk tabel `waka_kesiswaan`
--
ALTER TABLE `waka_kesiswaan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `waka_kesiswaan_guru_id_foreign` (`guru_id`);

--
-- Indeks untuk tabel `waka_kurikulum`
--
ALTER TABLE `waka_kurikulum`
  ADD PRIMARY KEY (`id`),
  ADD KEY `waka_kurikulum_guru_id_foreign` (`guru_id`);

--
-- Indeks untuk tabel `walikelas`
--
ALTER TABLE `walikelas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `walikelas_guru_id_foreign` (`guru_id`),
  ADD KEY `walikelas_kelas_id_foreign` (`kelas_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `agenda`
--
ALTER TABLE `agenda`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT untuk tabel `data_mengajar`
--
ALTER TABLE `data_mengajar`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `data_sekolah`
--
ALTER TABLE `data_sekolah`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `ejurnal`
--
ALTER TABLE `ejurnal`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `guru`
--
ALTER TABLE `guru`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT untuk tabel `hari_aktif`
--
ALTER TABLE `hari_aktif`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `jadwal_mengajar`
--
ALTER TABLE `jadwal_mengajar`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `jam_mengajar`
--
ALTER TABLE `jam_mengajar`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `jam_pelajaran`
--
ALTER TABLE `jam_pelajaran`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `jenis_tagihan`
--
ALTER TABLE `jenis_tagihan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `jurusan`
--
ALTER TABLE `jurusan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `kaskeluar`
--
ALTER TABLE `kaskeluar`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `kategori_mapel`
--
ALTER TABLE `kategori_mapel`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT untuk tabel `ketua_kelas`
--
ALTER TABLE `ketua_kelas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `laporan_keuangan`
--
ALTER TABLE `laporan_keuangan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `laporan_keuangan_detail`
--
ALTER TABLE `laporan_keuangan_detail`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `log_kehadiran`
--
ALTER TABLE `log_kehadiran`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `log_kehadiran_kelas`
--
ALTER TABLE `log_kehadiran_kelas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `log_user`
--
ALTER TABLE `log_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1403;

--
-- AUTO_INCREMENT untuk tabel `mapel`
--
ALTER TABLE `mapel`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `materi`
--
ALTER TABLE `materi`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT untuk tabel `notifikasi`
--
ALTER TABLE `notifikasi`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `pengumpulan_tugas`
--
ALTER TABLE `pengumpulan_tugas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `semesters`
--
ALTER TABLE `semesters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1180;

--
-- AUTO_INCREMENT untuk tabel `staff`
--
ALTER TABLE `staff`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `status_notifikasi`
--
ALTER TABLE `status_notifikasi`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tagihan`
--
ALTER TABLE `tagihan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `tahun_pelajaran`
--
ALTER TABLE `tahun_pelajaran`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `tugas`
--
ALTER TABLE `tugas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1258;

--
-- AUTO_INCREMENT untuk tabel `waka_kesiswaan`
--
ALTER TABLE `waka_kesiswaan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `waka_kurikulum`
--
ALTER TABLE `waka_kurikulum`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `walikelas`
--
ALTER TABLE `walikelas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `admin_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `data_mengajar`
--
ALTER TABLE `data_mengajar`
  ADD CONSTRAINT `data_mengajar_guru_id_foreign` FOREIGN KEY (`guru_id`) REFERENCES `guru` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `data_mengajar_ibfk_1` FOREIGN KEY (`kelas_id`) REFERENCES `kelas` (`id`),
  ADD CONSTRAINT `data_mengajar_mapel_id_foreign` FOREIGN KEY (`mapel_id`) REFERENCES `mapel` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `ejurnal`
--
ALTER TABLE `ejurnal`
  ADD CONSTRAINT `ejurnal_mengajar_id_foreign` FOREIGN KEY (`mengajar_id`) REFERENCES `data_mengajar` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `guru`
--
ALTER TABLE `guru`
  ADD CONSTRAINT `guru_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `jadwal_mengajar`
--
ALTER TABLE `jadwal_mengajar`
  ADD CONSTRAINT `jadwal_mengajar_data_mengajar_id_foreign` FOREIGN KEY (`data_mengajar_id`) REFERENCES `data_mengajar` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `jadwal_mengajar_jam_mulai_id_foreign` FOREIGN KEY (`jam_mulai_id`) REFERENCES `jam_mengajar` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `jadwal_mengajar_jam_selesai_id_foreign` FOREIGN KEY (`jam_selesai_id`) REFERENCES `jam_mengajar` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `kaskeluar`
--
ALTER TABLE `kaskeluar`
  ADD CONSTRAINT `kaskeluar_petugas_id_foreign` FOREIGN KEY (`petugas_id`) REFERENCES `staff` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `kaskeluar_semester_id_foreign` FOREIGN KEY (`semester_id`) REFERENCES `semesters` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `kaskeluar_tahun_pelajaran_id_foreign` FOREIGN KEY (`tahun_pelajaran_id`) REFERENCES `tahun_pelajaran` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `kelas`
--
ALTER TABLE `kelas`
  ADD CONSTRAINT `kelas_jurusan_id_foreign` FOREIGN KEY (`jurusan_id`) REFERENCES `jurusan` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `ketua_kelas`
--
ALTER TABLE `ketua_kelas`
  ADD CONSTRAINT `adminkelas_siswa_id_foreign` FOREIGN KEY (`siswa_id`) REFERENCES `siswa` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ketua_kelas_ibfk_1` FOREIGN KEY (`kelas_id`) REFERENCES `kelas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `laporan_keuangan`
--
ALTER TABLE `laporan_keuangan`
  ADD CONSTRAINT `fk_laporan_semester` FOREIGN KEY (`semester_id`) REFERENCES `semesters` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_laporan_tahun_pelajaran` FOREIGN KEY (`tahun_pelajaran_id`) REFERENCES `tahun_pelajaran` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `laporan_keuangan_detail`
--
ALTER TABLE `laporan_keuangan_detail`
  ADD CONSTRAINT `fk_laporan_detail_laporan` FOREIGN KEY (`laporan_id`) REFERENCES `laporan_keuangan` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `log_kehadiran`
--
ALTER TABLE `log_kehadiran`
  ADD CONSTRAINT `log_kehadiran_mengajar_id_foreign` FOREIGN KEY (`mengajar_id`) REFERENCES `data_mengajar` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `log_kehadiran_siswa_id_foreign` FOREIGN KEY (`siswa_id`) REFERENCES `siswa` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `log_kehadiran_kelas`
--
ALTER TABLE `log_kehadiran_kelas`
  ADD CONSTRAINT `log_kehadiran_kelas_kelas_id_foreign` FOREIGN KEY (`kelas_id`) REFERENCES `kelas` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `log_kehadiran_kelas_siswa_id_foreign` FOREIGN KEY (`siswa_id`) REFERENCES `siswa` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `log_user`
--
ALTER TABLE `log_user`
  ADD CONSTRAINT `log_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `mapel`
--
ALTER TABLE `mapel`
  ADD CONSTRAINT `mapel_kategori_mapel_id_foreign` FOREIGN KEY (`kategori_mapel_id`) REFERENCES `kategori_mapel` (`id`) ON DELETE SET NULL;

--
-- Ketidakleluasaan untuk tabel `materi`
--
ALTER TABLE `materi`
  ADD CONSTRAINT `materi_mengajar_id_foreign` FOREIGN KEY (`mengajar_id`) REFERENCES `data_mengajar` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `notifikasi`
--
ALTER TABLE `notifikasi`
  ADD CONSTRAINT `notifikasi_status_notifikasi_id_foreign` FOREIGN KEY (`status_notifikasi_id`) REFERENCES `status_notifikasi` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `notifikasi_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD CONSTRAINT `pembayaran_ibfk_1` FOREIGN KEY (`tahun_pelajaran_id`) REFERENCES `tahun_pelajaran` (`id`),
  ADD CONSTRAINT `pembayaran_ibfk_2` FOREIGN KEY (`semester_id`) REFERENCES `semesters` (`id`),
  ADD CONSTRAINT `pembayaran_tagihan_id_foreign` FOREIGN KEY (`tagihan_id`) REFERENCES `tagihan` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `pengumpulan_tugas`
--
ALTER TABLE `pengumpulan_tugas`
  ADD CONSTRAINT `pengumpulan_tugas_siswa_id_foreign` FOREIGN KEY (`siswa_id`) REFERENCES `siswa` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `pengumpulan_tugas_tugas_id_foreign` FOREIGN KEY (`tugas_id`) REFERENCES `tugas` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `semesters`
--
ALTER TABLE `semesters`
  ADD CONSTRAINT `semesters_tahun_pelajaran_id_foreign` FOREIGN KEY (`tahun_pelajaran_id`) REFERENCES `tahun_pelajaran` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `siswa`
--
ALTER TABLE `siswa`
  ADD CONSTRAINT `siswa_kelas_id_foreign` FOREIGN KEY (`kelas_id`) REFERENCES `kelas` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `siswa_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `staff`
--
ALTER TABLE `staff`
  ADD CONSTRAINT `staff_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tagihan`
--
ALTER TABLE `tagihan`
  ADD CONSTRAINT `tagihan_ibfk_1` FOREIGN KEY (`jenis_tagihan_id`) REFERENCES `jenis_tagihan` (`id`),
  ADD CONSTRAINT `tagihan_ibfk_2` FOREIGN KEY (`tahun_pelajaran_id`) REFERENCES `tahun_pelajaran` (`id`),
  ADD CONSTRAINT `tagihan_ibfk_3` FOREIGN KEY (`semester_id`) REFERENCES `semesters` (`id`),
  ADD CONSTRAINT `tagihan_siswa_id_foreign` FOREIGN KEY (`siswa_id`) REFERENCES `siswa` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tugas`
--
ALTER TABLE `tugas`
  ADD CONSTRAINT `tugas_mengajar_id_foreign` FOREIGN KEY (`mengajar_id`) REFERENCES `data_mengajar` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `waka_kesiswaan`
--
ALTER TABLE `waka_kesiswaan`
  ADD CONSTRAINT `waka_kesiswaan_guru_id_foreign` FOREIGN KEY (`guru_id`) REFERENCES `guru` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `waka_kurikulum`
--
ALTER TABLE `waka_kurikulum`
  ADD CONSTRAINT `waka_kurikulum_guru_id_foreign` FOREIGN KEY (`guru_id`) REFERENCES `guru` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `walikelas`
--
ALTER TABLE `walikelas`
  ADD CONSTRAINT `walikelas_guru_id_foreign` FOREIGN KEY (`guru_id`) REFERENCES `guru` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `walikelas_kelas_id_foreign` FOREIGN KEY (`kelas_id`) REFERENCES `kelas` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
