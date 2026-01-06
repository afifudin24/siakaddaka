-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 06 Jan 2026 pada 16.22
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
(7, 18, 9, 8, 0, 0, '2026-01-06 08:21:39', '2026-01-06 08:21:39');

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
(3, 4, 'Yao Poci', 'Et modi doloribus cupiditate voluptatibus consequatur non facere.', '4881167998', '9721376793', 'yaopoci@gmail.com', '772.336.5162', '1971-04-25', 'P', '3327 Stephen Coves\r\nLake Camilleshire, KY 09335-0684', '2025-11-21 20:32:51', '2025-12-20 06:12:47'),
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
(5, 'Bisnis Digital', 'BD', '2026-01-04 19:15:37', '2026-01-04 19:15:37');

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
(17, '10', '10 TJKT 2', '10 TJKT 2', 2, '2026-01-04 19:13:02', '2026-01-04 19:13:02');

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
(4, 4, 'created', 'User baru dibuat: Kimberly Reichel (guru)', '127.0.0.1', 'Symfony', '2025-11-21 20:32:50', '2025-11-21 20:32:50'),
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
(258, 1, 'created', 'User baru dibuat: SYAHFA DWI MULYA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-04 19:17:02', '2026-01-04 19:17:02');
INSERT INTO `log_user` (`id`, `user_id`, `action`, `description`, `ip_address`, `user_agent`, `created_at`, `updated_at`) VALUES
(259, 1, 'created', 'User baru dibuat: SYFA DWI DUTA (siswa)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-04 19:17:02', '2026-01-04 19:17:02'),
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
(455, 1, 'created', 'User baru dibuat: Irma Riyani (guru)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 21:17:33', '2026-01-04 21:17:33');
INSERT INTO `log_user` (`id`, `user_id`, `action`, `description`, `ip_address`, `user_agent`, `created_at`, `updated_at`) VALUES
(456, 1, 'created', 'User baru dibuat: ISMA DWI SUNDARI (guru)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-04 21:17:33', '2026-01-04 21:17:33'),
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
(521, 1, 'created', 'Data mengajar dibuat: Guru ADE APRIYANA, Mapel Bahasa Inggris, Jam 0, Pertemuan per minggu 0', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-06 08:21:39', '2026-01-06 08:21:39');

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
(8, 'Bahasa Inggris', 'BING', 4, '2026-01-06 08:21:06', '2026-01-06 08:21:06');

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
(11, 17, 'Darien Emard I', 'SIS022016', 'NISN844416', '1995-09-15', '+1-630-964-9188', 'P', '+1-240-990-2828', '7875 Pierce Crossroad\nVirgiefurt, MD 77399', 10, 0, '2025-11-21 20:32:59', '2026-01-04 21:24:55'),
(13, 19, 'Dr. Davin Bechtelar', 'SIS663960', 'NISN531580', '2009-12-02', '+12342580382', 'P', '540-272-8647', '3699 Stamm Lake\nEast Malvina, VA 95193-2136', NULL, 0, '2025-11-21 20:32:59', '2025-11-21 20:32:59'),
(15, 21, 'Geovany Lehner', 'SIS414664', 'NISN298115', '1974-11-01', '+1.304.809.0038', 'P', '564-726-8542', '851 Elaina Islands\nCandidochester, NJ 95788-3105', 11, 0, '2025-11-21 20:33:00', '2026-01-04 21:25:24'),
(16, 22, 'Jermaine Huels', 'SIS753778', 'NISN808136', '1987-12-13', '+1 (240) 429-2855', 'P', '904.713.6749', '311 Stephania Rue\nBernicemouth, NJ 98427', 10, 0, '2025-11-21 20:33:00', '2026-01-04 21:24:55'),
(17, 23, 'Dr. Sienna Jast', 'SIS347187', 'NISN731015', '1996-11-05', '1-571-402-8156', 'P', '+1.319.878.7221', '21468 Gutkowski Centers\nEast Cindyfurt, AL 94734-6527', 11, 0, '2025-11-21 20:33:00', '2026-01-04 21:25:24'),
(18, 24, 'Emiliano Blanda', 'SIS193376', 'NISN315237', '2005-04-07', '620-663-4088', 'P', '+1-970-773-3208', '71638 Nadia Via\nNew Hertha, TN 51244-7593', NULL, 0, '2025-11-21 20:33:00', '2025-11-21 20:33:00'),
(19, 25, 'Mafalda Gulgowski', 'SIS049677', 'NISN400197', '2014-08-02', '+19498370245', 'P', '(979) 600-2808', '6441 Carmen Branch\nPort Jasen, UT 80774', NULL, 0, '2025-11-21 20:33:00', '2025-11-21 20:33:00'),
(20, 26, 'Darion Ondricka', 'SIS039197', 'NISN291067', '2018-11-04', '(360) 644-0557', 'P', '347-599-3686', '2831 Bette Neck\nPort Dianna, OR 50943-5359', NULL, 0, '2025-11-21 20:33:00', '2025-11-21 20:33:00'),
(21, 33, 'Dovie Lynch', 'SIS769732', 'NISN778267', '2001-10-03', '+1 (478) 396-2932', 'P', '541-477-4658', '707 Jakubowski Roads\nNorth Lou, IN 55398-2832', NULL, 0, '2025-11-21 20:33:59', '2025-11-21 20:33:59'),
(22, 34, 'Elton Bayer Jr.', 'SIS272448', 'NISN938901', '1988-02-19', '570-310-5430', 'P', '(575) 595-8074', '300 McCullough Wells\nKreigerton, NE 46646-3826', 10, 0, '2025-11-21 20:33:59', '2026-01-04 21:24:55'),
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
(316, 338, 'ANALIA PASARANI', '25268534', '0091691499', NULL, NULL, 'P', NULL, NULL, NULL, 0, '2026-01-04 21:03:43', '2026-01-04 21:03:43');

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
(1, 'newell.kirlin', 'Darwin Kuvalis', 'jlarson@example.org', '$2y$12$afY/dr5OaTUvgZWjFjnTVOfD/VA9ArVNhXM1L9uL/nfw.MyNzsT9m', '', 'admin', 'profile.png', '', 1, NULL, 'nlyE59IW9JVHn75Tppx3iz9sTxRacCVOET4PHd5HbZGThzet4RE23eGjjgW2', '2025-11-21 20:32:49', '2025-11-21 20:32:49'),
(2, 'afifsaja', 'Mr. Alek Kunze', 'afifsaja@gmail.com', '$2y$12$3C2v7WdtMS5EwuJpNe3OsezGNfg.VhLaPX6Bza/4b/QpDVEOG7lt6', 'akukeren', 'guru', 'foto-guru/w5DvIX1o5FxyuyINfJHxC9DWJ2g1JbBLLB7oSWxh.jpg', 'foto-unggulan/v4QtbPMQYvVy5Clyg26wK0sKH7qu5qQLsT3q4ScA.jpg', 1, NULL, '', '2025-11-21 20:32:50', '2026-01-06 06:35:22'),
(4, 'yaopoci', 'Kimberly Reichel', 'yaopoci@gmail.com', '$2y$12$1YoNGozGkJJoVhmw2CscR.M.yiDzYT89zI8v1MeiKGBMZUcqBkBZG', '', 'guru', 'foto-guru/muIhj2sO6uJedUQv05950CzxEqeBIMAtQJNhkBlN.jpg', '', 1, NULL, '', '2025-11-21 20:32:50', '2026-01-06 06:35:22'),
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
(230, '25268770', 'RIVAN NANDA MARDIKA', '25268770@sekolah.test', '$2y$12$SOxF/nIC75aMUsCLH5RV/eGXeXCeMOH49orPgLKFHvJ9h0ee1c7g.', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 20:05:40', '2026-01-06 02:50:17');
INSERT INTO `users` (`id`, `username`, `nama`, `email`, `password`, `password_text`, `role`, `foto_profil`, `foto_unggulan`, `is_active`, `reset_password_token`, `remember_token`, `created_at`, `updated_at`) VALUES
(231, '25268775', 'RIZKA NUR UTAMI', '25268775@sekolah.test', '$2y$12$2qy4Z0YMoTV8ICGOKcTMtunOvKGX9scysGyTB68NJfb.SRX/DKhg6', 'sakti321*', 'siswa', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 20:05:40', '2026-01-06 02:50:17'),
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
(394, 'yuniandari771@gmail.com', 'YUNI ANDARI', 'yuniandari771@gmail.com', '$2y$12$f6C/u3pgpC/oG5ES7idfyOQ83tj2w08bKnSGV31AdEha0wwllal2y', 'sakti123*', 'guru', 'profile.png', NULL, 1, NULL, NULL, '2026-01-04 21:17:42', '2026-01-06 06:35:22');

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
(12, 24, 15, '2026-01-04 21:26:28', '2026-01-04 21:26:28');

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=522;

--
-- AUTO_INCREMENT untuk tabel `mapel`
--
ALTER TABLE `mapel`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=317;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=395;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

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
