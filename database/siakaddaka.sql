-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Waktu pembuatan: 09 Des 2025 pada 10.22
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
(1, 1, 9, 6, 8, 2, NULL, NULL),
(2, 1, 8, 6, 8, 2, NULL, NULL);

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
  `email_sekolah` varchar(255) DEFAULT NULL,
  `telepon` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `ikon` varchar(255) DEFAULT NULL,
  `gambar_unggulan` varchar(255) DEFAULT NULL,
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

INSERT INTO `data_sekolah` (`id`, `nama_sekolah`, `nama_singkatan`, `npsn`, `status`, `jenjang`, `alamat`, `email_sekolah`, `telepon`, `logo`, `ikon`, `gambar_unggulan`, `website`, `banner`, `kepala_sekolah`, `nip_kepala_sekolah`, `deskripsi_singkat`, `visi`, `misi`, `created_at`, `updated_at`) VALUES
(1, 'SMK Contoh Nusantara', 'SMK DAKA', NULL, NULL, NULL, 'Jl. Pendidikan No. 123, Purwokerto', 'info@smkcontoh.sch.id', '0281-123456', 'logo.png', NULL, NULL, 'https://www.smkcontoh.sch.id', NULL, 'Drs. Andi Wijaya', NULL, NULL, 'Menjadi sekolah unggul yang berkarakter dan berprestasi.', 'Mencetak lulusan yang kompeten, berakhlak mulia, dan siap kerja.', '2025-11-21 20:36:44', '2025-11-21 20:36:44');

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
(1, 2, 'Mr. Alek Kunze', 'Nam in sint atque ex qui enim a deserunt.', '7205564583', '2749431145', 'bins.thad@example.com', '(351) 262-1976', '2010-08-13', 'P', '729 Myrna Place Suite 577\nAleenville, CA 32225', '2025-11-21 20:32:51', '2025-11-21 20:32:51'),
(2, 3, 'Achmad Faozi', 'Qui optio sunt libero nobis.', '7719806920', '8775296709', 'collier.raquel@example.org', '(212) 390-1435', '1982-07-23', 'L', '623 Stark Track\nKleinfort, RI 47459-5955', '2025-11-21 20:32:51', '2025-11-21 20:32:51'),
(3, 4, 'Kimberly Reichel', 'Et modi doloribus cupiditate voluptatibus consequatur non facere.', '4881167998', '9721376793', 'hoppe.george@example.org', '772.336.5162', '1971-04-25', 'P', '3327 Stephen Coves\nLake Camilleshire, KY 09335-0684', '2025-11-21 20:32:51', '2025-11-21 20:32:51'),
(4, 5, 'Coby Beahan', 'Sequi impedit qui mollitia fugit doloribus.', '7841974130', '7901528296', 'gvolkman@example.com', '409.715.9141', '1987-03-17', '', '3202 Bartell Knolls Apt. 408\nSouth Melbahaven, FL 25084', '2025-11-21 20:32:51', '2025-11-21 20:32:51'),
(5, 6, 'Fae Prosacco', 'Similique architecto soluta dignissimos laborum suscipit fuga et.', '5899409039', '4870226365', 'price00@example.net', '+1 (936) 254-2763', '1993-12-24', '', '802 Boehm Via\nGreenholtstad, WI 69882', '2025-11-21 20:32:51', '2025-11-21 20:32:51'),
(6, 28, 'Ryann Heller PhD', 'Sed harum iste dolorem totam ullam.', '1688961728', '6240731225', 'njacobi@example.com', '930.873.5699', '1985-03-31', '', '697 Keon Haven\nJeromechester, SD 17745-5660', '2025-11-21 20:33:51', '2025-11-21 20:33:51'),
(7, 29, 'Cristobal Kling', 'Qui assumenda fugit pariatur ex.', '1180070116', '8852470181', 'schultz.carolyne@example.org', '1-803-413-5366', '2005-10-17', '', '146 Jed Keys Suite 848\nAlbinaton, WA 82982', '2025-11-21 20:33:52', '2025-11-21 20:33:52'),
(8, 30, 'Kayla Jacobs', 'Veniam omnis voluptas repudiandae dolorum aliquid.', '4962156306', '8968984254', 'akuhlman@example.org', '(534) 976-9686', '2025-05-01', '', '263 Tromp Cape\nDooleyfurt, NJ 12415-2578', '2025-11-21 20:33:52', '2025-11-21 20:33:52'),
(9, 31, 'Wanda Simonis I', 'Laudantium distinctio fugiat accusantium reiciendis sapiente ut.', '4371981429', '5497741093', 'sarai.walter@example.com', '+1 (925) 807-7968', '1998-12-31', '', '604 Schultz Meadow\nNew Orlo, MA 26967', '2025-11-21 20:33:52', '2025-11-21 20:33:52'),
(10, 32, 'Dr. Ariane Bosco Jr.', 'Vitae possimus facilis dignissimos temporibus vel ea.', '7200947223', '8855350180', 'xwintheiser@example.org', '(816) 444-2392', '2012-09-01', '', '58594 Auer Trafficway Suite 915\nWolfmouth, NE 97638-9621', '2025-11-21 20:33:52', '2025-11-21 20:33:52'),
(11, 54, 'Aniya Swift', 'Nemo et ut qui corrupti.', '8355274213', '8892781934', 'ibernier@example.net', '1-757-371-6151', '2009-02-15', '', '9368 Dicki Wells Suite 041\nNew Teresabury, KY 15632', '2025-11-21 20:36:29', '2025-11-21 20:36:29'),
(12, 55, 'Lukas Douglas', 'Nulla est est ex accusamus.', '5020137654', '0764997175', 'pouros.santa@example.org', '251.903.8594', '1991-05-18', '', '4320 King Center\nPort Jasenside, NJ 98536-5099', '2025-11-21 20:36:30', '2025-11-21 20:36:30'),
(13, 56, 'Landen Hegmann', 'Ut non temporibus dignissimos est fugiat commodi.', '7862062173', '6513709001', 'reilly.wehner@example.org', '+1-252-699-9147', '2014-07-30', '', '1515 Maximilian Points\nEmardshire, WV 25895', '2025-11-21 20:36:30', '2025-11-21 20:36:30'),
(14, 57, 'Greg Crist', 'Distinctio quia mollitia modi eveniet.', '1147338264', '3893018613', 'annalise.stokes@example.net', '(678) 540-1260', '2024-11-12', '', '370 Nathaniel Way Suite 672\nBergeland, OK 09518', '2025-11-21 20:36:30', '2025-11-21 20:36:30'),
(15, 58, 'Prof. Elinor Hudson', 'Nostrum rerum nobis et quia.', '5880948654', '9481109539', 'ucarroll@example.org', '1-351-867-7771', '1988-04-02', '', '14951 Prohaska Summit Apt. 049\nWest Kattieview, PA 22398-0044', '2025-11-21 20:36:30', '2025-11-21 20:36:30');

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
(2, 'Teknik Komputer dan Jaringan', 'TKJ', '2025-12-06 20:01:18', '2025-12-06 20:01:18');

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
(1, 'Kejuruan', '2025-12-07 23:46:47', '2025-12-08 00:02:25');

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
(8, 'XI', '11 TKJ 2', '11TKJ2', 2, '2025-12-06 21:37:03', '2025-12-06 21:37:03'),
(9, 'XII', '12 TKJ 2', '12TKJ2', 2, '2025-12-08 01:58:48', '2025-12-08 01:58:48');

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

--
-- Dumping data untuk tabel `ketua_kelas`
--

INSERT INTO `ketua_kelas` (`id`, `kelas_id`, `siswa_id`, `created_at`, `updated_at`) VALUES
(3, 8, 2, '2025-12-06 21:37:03', '2025-12-06 21:37:03'),
(6, 9, 4, '2025-12-08 01:58:48', '2025-12-08 01:58:48');

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
(3, 3, 'created', 'User baru dibuat: Khalil Gerlach (guru)', '127.0.0.1', 'Symfony', '2025-11-21 20:32:50', '2025-11-21 20:32:50'),
(4, 4, 'created', 'User baru dibuat: Kimberly Reichel (guru)', '127.0.0.1', 'Symfony', '2025-11-21 20:32:50', '2025-11-21 20:32:50'),
(5, 5, 'created', 'User baru dibuat: Coby Beahan (guru)', '127.0.0.1', 'Symfony', '2025-11-21 20:32:51', '2025-11-21 20:32:51'),
(6, 6, 'created', 'User baru dibuat: Fae Prosacco (guru)', '127.0.0.1', 'Symfony', '2025-11-21 20:32:51', '2025-11-21 20:32:51'),
(7, 7, 'created', 'User baru dibuat: Prof. Archibald Langosh DDS (siswa)', '127.0.0.1', 'Symfony', '2025-11-21 20:32:52', '2025-11-21 20:32:52'),
(8, 8, 'created', 'User baru dibuat: Prof. Mayra Heathcote PhD (siswa)', '127.0.0.1', 'Symfony', '2025-11-21 20:32:52', '2025-11-21 20:32:52'),
(9, 9, 'created', 'User baru dibuat: Elmore Jones (siswa)', '127.0.0.1', 'Symfony', '2025-11-21 20:32:53', '2025-11-21 20:32:53'),
(10, 10, 'created', 'User baru dibuat: Mekhi Raynor (siswa)', '127.0.0.1', 'Symfony', '2025-11-21 20:32:53', '2025-11-21 20:32:53'),
(11, 11, 'created', 'User baru dibuat: Kenneth Ward (siswa)', '127.0.0.1', 'Symfony', '2025-11-21 20:32:53', '2025-11-21 20:32:53'),
(12, 12, 'created', 'User baru dibuat: Candice Fay (siswa)', '127.0.0.1', 'Symfony', '2025-11-21 20:32:54', '2025-11-21 20:32:54'),
(13, 13, 'created', 'User baru dibuat: Annamarie Ernser I (siswa)', '127.0.0.1', 'Symfony', '2025-11-21 20:32:54', '2025-11-21 20:32:54'),
(14, 14, 'created', 'User baru dibuat: Rosalind Kertzmann Sr. (siswa)', '127.0.0.1', 'Symfony', '2025-11-21 20:32:54', '2025-11-21 20:32:54'),
(15, 15, 'created', 'User baru dibuat: Kip Willms (siswa)', '127.0.0.1', 'Symfony', '2025-11-21 20:32:55', '2025-11-21 20:32:55'),
(16, 16, 'created', 'User baru dibuat: Adrien Beier (siswa)', '127.0.0.1', 'Symfony', '2025-11-21 20:32:55', '2025-11-21 20:32:55'),
(17, 17, 'created', 'User baru dibuat: Darien Emard I (siswa)', '127.0.0.1', 'Symfony', '2025-11-21 20:32:56', '2025-11-21 20:32:56'),
(18, 18, 'created', 'User baru dibuat: Arnulfo Rolfson (siswa)', '127.0.0.1', 'Symfony', '2025-11-21 20:32:56', '2025-11-21 20:32:56'),
(19, 19, 'created', 'User baru dibuat: Dr. Davin Bechtelar (siswa)', '127.0.0.1', 'Symfony', '2025-11-21 20:32:56', '2025-11-21 20:32:56'),
(20, 20, 'created', 'User baru dibuat: Antwan Heathcote DDS (siswa)', '127.0.0.1', 'Symfony', '2025-11-21 20:32:57', '2025-11-21 20:32:57'),
(21, 21, 'created', 'User baru dibuat: Geovany Lehner (siswa)', '127.0.0.1', 'Symfony', '2025-11-21 20:32:57', '2025-11-21 20:32:57'),
(22, 22, 'created', 'User baru dibuat: Jermaine Huels (siswa)', '127.0.0.1', 'Symfony', '2025-11-21 20:32:57', '2025-11-21 20:32:57'),
(23, 23, 'created', 'User baru dibuat: Dr. Sienna Jast (siswa)', '127.0.0.1', 'Symfony', '2025-11-21 20:32:58', '2025-11-21 20:32:58'),
(24, 24, 'created', 'User baru dibuat: Emiliano Blanda (siswa)', '127.0.0.1', 'Symfony', '2025-11-21 20:32:58', '2025-11-21 20:32:58'),
(25, 25, 'created', 'User baru dibuat: Mafalda Gulgowski (siswa)', '127.0.0.1', 'Symfony', '2025-11-21 20:32:59', '2025-11-21 20:32:59'),
(26, 26, 'created', 'User baru dibuat: Darion Ondricka (siswa)', '127.0.0.1', 'Symfony', '2025-11-21 20:32:59', '2025-11-21 20:32:59'),
(27, 27, 'created', 'User baru dibuat: Orville Larson Sr. (admin)', '127.0.0.1', 'Symfony', '2025-11-21 20:33:50', '2025-11-21 20:33:50'),
(28, 28, 'created', 'User baru dibuat: Ryann Heller PhD (guru)', '127.0.0.1', 'Symfony', '2025-11-21 20:33:50', '2025-11-21 20:33:50'),
(29, 29, 'created', 'User baru dibuat: Cristobal Kling (guru)', '127.0.0.1', 'Symfony', '2025-11-21 20:33:50', '2025-11-21 20:33:50'),
(30, 30, 'created', 'User baru dibuat: Kayla Jacobs (guru)', '127.0.0.1', 'Symfony', '2025-11-21 20:33:51', '2025-11-21 20:33:51'),
(31, 31, 'created', 'User baru dibuat: Wanda Simonis I (guru)', '127.0.0.1', 'Symfony', '2025-11-21 20:33:51', '2025-11-21 20:33:51'),
(32, 32, 'created', 'User baru dibuat: Dr. Ariane Bosco Jr. (guru)', '127.0.0.1', 'Symfony', '2025-11-21 20:33:51', '2025-11-21 20:33:51'),
(33, 33, 'created', 'User baru dibuat: Dovie Lynch (siswa)', '127.0.0.1', 'Symfony', '2025-11-21 20:33:52', '2025-11-21 20:33:52'),
(34, 34, 'created', 'User baru dibuat: Elton Bayer Jr. (siswa)', '127.0.0.1', 'Symfony', '2025-11-21 20:33:52', '2025-11-21 20:33:52'),
(35, 35, 'created', 'User baru dibuat: Prof. Ollie Bartell (siswa)', '127.0.0.1', 'Symfony', '2025-11-21 20:33:53', '2025-11-21 20:33:53'),
(36, 36, 'created', 'User baru dibuat: Abdiel Daniel (siswa)', '127.0.0.1', 'Symfony', '2025-11-21 20:33:54', '2025-11-21 20:33:54'),
(37, 37, 'created', 'User baru dibuat: Dr. Amely Kuphal (siswa)', '127.0.0.1', 'Symfony', '2025-11-21 20:33:54', '2025-11-21 20:33:54'),
(38, 38, 'created', 'User baru dibuat: Tyra Purdy (siswa)', '127.0.0.1', 'Symfony', '2025-11-21 20:33:54', '2025-11-21 20:33:54'),
(39, 39, 'created', 'User baru dibuat: Aron Leannon (siswa)', '127.0.0.1', 'Symfony', '2025-11-21 20:33:55', '2025-11-21 20:33:55'),
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
(54, 54, 'created', 'User baru dibuat: Aniya Swift (guru)', '127.0.0.1', 'Symfony', '2025-11-21 20:36:27', '2025-11-21 20:36:27'),
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
(75, 75, 'created', 'User baru dibuat: Myron Mohr (siswa)', '127.0.0.1', 'Symfony', '2025-11-21 20:36:40', '2025-11-21 20:36:40'),
(76, 76, 'created', 'User baru dibuat: Zora Russel (siswa)', '127.0.0.1', 'Symfony', '2025-11-21 20:36:40', '2025-11-21 20:36:40'),
(77, 77, 'created', 'User baru dibuat: Blanche Schoen (siswa)', '127.0.0.1', 'Symfony', '2025-11-21 20:36:41', '2025-11-21 20:36:41'),
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
(105, 1, 'login', 'User login ke sistem', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-12-08 21:24:31', '2025-12-08 21:24:31');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mapel`
--

CREATE TABLE `mapel` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_mapel` varchar(255) NOT NULL,
  `kategori_mapel_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `mapel`
--

INSERT INTO `mapel` (`id`, `nama_mapel`, `kategori_mapel_id`, `created_at`, `updated_at`) VALUES
(6, 'Kompetensi Kejuruan TKJ', 1, '2025-12-08 02:05:41', '2025-12-08 02:05:41');

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
  `jumlah_bayar` decimal(12,2) NOT NULL,
  `tgl_bayar` date NOT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, 6, 'Gasal', '2025-11-07', '2025-11-29', 1, '2025-11-30 00:55:31', '2025-11-30 00:55:31');

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `siswa`
--

INSERT INTO `siswa` (`id`, `user_id`, `nama`, `nis`, `nisn`, `tgl_lahir`, `no_hp`, `jenis_kelamin`, `no_hp_ortu`, `alamat`, `kelas_id`, `created_at`, `updated_at`) VALUES
(1, 7, 'Prof. Archibald Langosh DDS', 'SIS596127', 'NISN940160', '2016-01-09', '1-630-409-4242', 'P', '682-218-5763', '7320 Mathias Unions Apt. 966\nLittelville, PA 81555-4696', 9, '2025-11-21 20:32:59', '2025-12-08 01:58:48'),
(2, 8, 'Prof. Mayra Heathcote PhD', 'SIS962960', 'NISN598168', '2025-01-13', '+1-212-315-7308', 'P', '1-432-520-8058', '50127 Veum Manor\nRueckerton, VT 38251', NULL, '2025-11-21 20:32:59', '2025-12-09 01:51:24'),
(4, 10, 'Mekhi Raynor', 'SIS287979', 'NISN052471', '2023-11-14', '769.455.0679', 'P', '(847) 660-5830', '840 Senger Oval\nElwynhaven, SD 39403', NULL, '2025-11-21 20:32:59', '2025-12-09 01:50:33'),
(5, 11, 'Kenneth Ward', 'SIS575141', 'NISN967540', '2013-04-18', '847.630.4813', 'P', '423.320.4828', '84995 Schumm Street Suite 118\nJuliusburgh, VA 73107', 8, '2025-11-21 20:32:59', '2025-12-06 21:37:03'),
(6, 12, 'Candice Fay', 'SIS655550', 'NISN546551', '1970-09-19', '561.749.2136', 'P', '+1 (407) 561-5686', '8029 Senger Land\nBodeland, WV 57774', 8, '2025-11-21 20:32:59', '2025-12-06 21:37:03'),
(7, 13, 'Annamarie Ernser I', 'SIS780854', 'NISN616408', '2008-07-31', '919.239.0967', 'P', '+1-407-829-3854', '39487 Hodkiewicz Mews\nReillyview, VT 19285', NULL, '2025-11-21 20:32:59', '2025-12-07 02:41:11'),
(8, 14, 'Rosalind Kertzmann Sr.', 'SIS359559', 'NISN112949', '2008-05-25', '1-478-331-8220', 'P', '1-708-783-4326', '743 Elenor Corners\nEast Jennyfer, VT 83097-6807', 9, '2025-11-21 20:32:59', '2025-12-08 01:58:48'),
(11, 17, 'Darien Emard I', 'SIS022016', 'NISN844416', '1995-09-15', '+1-630-964-9188', 'P', '+1-240-990-2828', '7875 Pierce Crossroad\nVirgiefurt, MD 77399', NULL, '2025-11-21 20:32:59', '2025-11-21 20:32:59'),
(12, 18, 'Arnulfo Rolfson', 'SIS605487', 'NISN220211', '1970-01-06', '769-595-5637', 'P', '440.496.1571', '73967 Hartmann Lodge Apt. 111\nNew Lloydbury, NH 94004', NULL, '2025-11-21 20:32:59', '2025-11-21 20:32:59'),
(13, 19, 'Dr. Davin Bechtelar', 'SIS663960', 'NISN531580', '2009-12-02', '+12342580382', 'P', '540-272-8647', '3699 Stamm Lake\nEast Malvina, VA 95193-2136', NULL, '2025-11-21 20:32:59', '2025-11-21 20:32:59'),
(14, 20, 'Antwan Heathcote DDS', 'SIS695732', 'NISN825636', '1993-10-14', '774-882-1320', 'P', '727-228-4889', '6798 Kreiger Isle Suite 298\nEast Ianmouth, AZ 99862-4765', NULL, '2025-11-21 20:33:00', '2025-11-21 20:33:00'),
(15, 21, 'Geovany Lehner', 'SIS414664', 'NISN298115', '1974-11-01', '+1.304.809.0038', 'P', '564-726-8542', '851 Elaina Islands\nCandidochester, NJ 95788-3105', NULL, '2025-11-21 20:33:00', '2025-11-21 20:33:00'),
(16, 22, 'Jermaine Huels', 'SIS753778', 'NISN808136', '1987-12-13', '+1 (240) 429-2855', 'P', '904.713.6749', '311 Stephania Rue\nBernicemouth, NJ 98427', NULL, '2025-11-21 20:33:00', '2025-11-21 20:33:00'),
(17, 23, 'Dr. Sienna Jast', 'SIS347187', 'NISN731015', '1996-11-05', '1-571-402-8156', 'P', '+1.319.878.7221', '21468 Gutkowski Centers\nEast Cindyfurt, AL 94734-6527', NULL, '2025-11-21 20:33:00', '2025-11-21 20:33:00'),
(18, 24, 'Emiliano Blanda', 'SIS193376', 'NISN315237', '2005-04-07', '620-663-4088', 'P', '+1-970-773-3208', '71638 Nadia Via\nNew Hertha, TN 51244-7593', NULL, '2025-11-21 20:33:00', '2025-11-21 20:33:00'),
(19, 25, 'Mafalda Gulgowski', 'SIS049677', 'NISN400197', '2014-08-02', '+19498370245', 'P', '(979) 600-2808', '6441 Carmen Branch\nPort Jasen, UT 80774', NULL, '2025-11-21 20:33:00', '2025-11-21 20:33:00'),
(20, 26, 'Darion Ondricka', 'SIS039197', 'NISN291067', '2018-11-04', '(360) 644-0557', 'P', '347-599-3686', '2831 Bette Neck\nPort Dianna, OR 50943-5359', NULL, '2025-11-21 20:33:00', '2025-11-21 20:33:00'),
(21, 33, 'Dovie Lynch', 'SIS769732', 'NISN778267', '2001-10-03', '+1 (478) 396-2932', 'P', '541-477-4658', '707 Jakubowski Roads\nNorth Lou, IN 55398-2832', NULL, '2025-11-21 20:33:59', '2025-11-21 20:33:59'),
(22, 34, 'Elton Bayer Jr.', 'SIS272448', 'NISN938901', '1988-02-19', '570-310-5430', 'P', '(575) 595-8074', '300 McCullough Wells\nKreigerton, NE 46646-3826', NULL, '2025-11-21 20:33:59', '2025-11-21 20:33:59'),
(23, 35, 'Prof. Ollie Bartell', 'SIS059729', 'NISN436708', '2013-04-06', '517.564.6345', 'P', '1-650-968-5159', '879 Stroman Fall\nCarmellafort, RI 95066', NULL, '2025-11-21 20:33:59', '2025-11-21 20:33:59'),
(24, 36, 'Abdiel Daniel', 'SIS286533', 'NISN901822', '1999-07-01', '+1.320.956.3912', 'P', '325.232.7379', '641 Enoch Ferry Apt. 279\nLeanneborough, MA 00597-1802', NULL, '2025-11-21 20:33:59', '2025-11-21 20:33:59'),
(25, 37, 'Dr. Amely Kuphal', 'SIS355756', 'NISN374337', '1979-10-27', '+1.917.961.8202', 'P', '1-364-257-7601', '6817 Bayer Landing Suite 175\nNorth Rodrickborough, ME 29278', NULL, '2025-11-21 20:33:59', '2025-11-21 20:33:59'),
(26, 38, 'Tyra Purdy', 'SIS700464', 'NISN795645', '1980-01-05', '+1-743-580-8411', 'P', '(919) 655-0852', '538 Trace Extensions\nEast Norwood, DE 41503', NULL, '2025-11-21 20:33:59', '2025-11-21 20:33:59'),
(27, 39, 'Aron Leannon', 'SIS585723', 'NISN732543', '1993-04-22', '1-901-831-9843', 'P', '+16039560245', '61124 Imogene Crossing\nElbertmouth, MA 26321-5557', NULL, '2025-11-21 20:33:59', '2025-11-21 20:33:59'),
(28, 40, 'Nyah Spencer III', 'SIS141855', 'NISN021513', '1975-12-24', '+1 (952) 537-3666', 'P', '+1 (815) 838-2345', '559 Kozey Trafficway Apt. 481\nLake Margieton, GA 38372', NULL, '2025-11-21 20:33:59', '2025-11-21 20:33:59'),
(29, 41, 'Dr. Werner Jones I', 'SIS558461', 'NISN908344', '2006-09-05', '+1-205-520-8083', 'P', '(425) 440-9939', '98258 Mayert Burg Apt. 323\nLake Kamronmouth, PA 21213', NULL, '2025-11-21 20:33:59', '2025-11-21 20:33:59'),
(30, 42, 'Dr. Reginald Parker', 'SIS868534', 'NISN592756', '1974-09-20', '601.400.1479', 'P', '952.931.4613', '10850 Wilber Hollow\nTorpland, FL 67590-3871', NULL, '2025-11-21 20:33:59', '2025-11-21 20:33:59'),
(31, 43, 'Elfrieda Reilly', 'SIS280286', 'NISN497777', '1985-09-22', '408-451-3744', 'P', '1-458-310-2333', '579 Quincy Expressway Apt. 691\nEmmystad, NE 96386-3760', NULL, '2025-11-21 20:33:59', '2025-11-21 20:33:59'),
(32, 44, 'Kaley Bailey', 'SIS640448', 'NISN804873', '2020-11-25', '1-786-758-6907', 'P', '504-919-6094', '154 Conn Passage Apt. 378\nPort Diego, NY 61226', NULL, '2025-11-21 20:34:00', '2025-11-21 20:34:00'),
(33, 45, 'Kiana Mertz', 'SIS126875', 'NISN864747', '1984-09-13', '+1.360.350.9863', 'P', '+1-407-589-9410', '84862 Letitia Flat Suite 557\nSummerberg, WY 91676', NULL, '2025-11-21 20:34:00', '2025-11-21 20:34:00'),
(34, 46, 'Tierra Nicolas', 'SIS506439', 'NISN377647', '1997-04-12', '+17169848961', 'P', '302.230.4659', '746 Klocko Mill\nPaucekbury, AZ 23179', NULL, '2025-11-21 20:34:00', '2025-11-21 20:34:00'),
(35, 47, 'Janis Hermiston', 'SIS258115', 'NISN837348', '1985-12-27', '1-920-874-1781', 'P', '(540) 719-6948', '3286 Elna Prairie\nLehnermouth, FL 12262', NULL, '2025-11-21 20:34:00', '2025-11-21 20:34:00'),
(36, 48, 'Ottilie Koch', 'SIS584277', 'NISN192383', '1975-10-17', '1-458-768-1387', 'P', '928.269.7229', '525 Lehner Field\nSouth Camillafort, MD 95899', NULL, '2025-11-21 20:34:00', '2025-11-21 20:34:00'),
(37, 49, 'Mrs. Dayana Johnson', 'SIS647100', 'NISN170712', '1982-05-27', '(979) 354-5021', 'P', '+14584756080', '4118 Robin Route\nWest Mollyberg, SD 10271-3637', NULL, '2025-11-21 20:34:00', '2025-11-21 20:34:00'),
(38, 50, 'Mallory Miller', 'SIS273556', 'NISN701131', '1974-12-15', '574.241.8018', 'P', '845-318-8233', '133 Quentin Ferry Apt. 681\nEinoville, MT 05456', NULL, '2025-11-21 20:34:00', '2025-11-21 20:34:00'),
(39, 51, 'Efren Hansen', 'SIS377278', 'NISN600428', '1994-07-10', '830.547.4675', 'P', '769.801.3070', '49658 Tressie Shores Apt. 736\nSpencerfurt, VT 58939', NULL, '2025-11-21 20:34:00', '2025-11-21 20:34:00'),
(40, 52, 'Mr. Philip Gleichner Jr.', 'SIS584596', 'NISN637985', '2024-10-06', '386.826.7838', 'P', '+1-534-745-7342', '31796 Chester Ports\nPort Liza, IA 25350', NULL, '2025-11-21 20:34:00', '2025-11-21 20:34:00'),
(41, 59, 'Jeramie Koch II', 'SIS891772', 'NISN172647', '1994-02-22', '1-351-719-4443', 'P', '1-737-989-2626', '2655 Wunsch Branch Apt. 897\nNorth Whitneystad, SD 36668', NULL, '2025-11-21 20:36:42', '2025-11-21 20:36:42'),
(42, 60, 'Ahmed Tromp', 'SIS199152', 'NISN888384', '2000-03-03', '+1-606-244-7440', 'P', '786.527.2717', '163 Buck Gateway Apt. 897\nMadisenfort, OK 19665-6673', NULL, '2025-11-21 20:36:42', '2025-11-21 20:36:42'),
(43, 61, 'Dr. Heather Pollich', 'SIS674109', 'NISN172941', '2009-09-18', '769-535-4674', 'P', '+1.574.347.0810', '238 Williamson Estates\nEast Marysefurt, AL 66100-4127', NULL, '2025-11-21 20:36:42', '2025-11-21 20:36:42'),
(44, 62, 'Prof. Richard Renner Sr.', 'SIS280486', 'NISN681587', '1977-08-06', '1-531-701-6987', 'P', '+16622928236', '991 Baumbach Groves\nSengerstad, SC 82275-5431', NULL, '2025-11-21 20:36:42', '2025-11-21 20:36:42'),
(45, 63, 'Zena Leuschke', 'SIS950858', 'NISN887055', '1977-07-05', '+1 (740) 759-9263', 'P', '+1-838-284-1300', '711 Nitzsche Islands Apt. 317\nLurlineview, DC 55769', NULL, '2025-11-21 20:36:42', '2025-11-21 20:36:42'),
(46, 64, 'Hermina Jakubowski DVM', 'SIS888423', 'NISN123087', '1975-04-22', '1-954-440-8050', 'P', '+1 (551) 292-0842', '5207 Sonia Drive\nBergestad, MD 53215', NULL, '2025-11-21 20:36:42', '2025-11-21 20:36:42'),
(47, 65, 'Audra Abbott III', 'SIS902531', 'NISN456590', '2012-05-19', '1-409-229-1922', 'P', '+13416988709', '5718 Duane Islands\nCamillafort, MD 79254', NULL, '2025-11-21 20:36:42', '2025-11-21 20:36:42'),
(48, 66, 'Orland Leuschke Jr.', 'SIS346048', 'NISN534486', '2022-06-18', '+1 (832) 417-8961', 'P', '845-217-2472', '433 Frederic Orchard Apt. 667\nMelynaport, KY 44944-4452', NULL, '2025-11-21 20:36:43', '2025-11-21 20:36:43'),
(49, 67, 'Kitty Schultz', 'SIS131214', 'NISN066824', '2024-12-23', '+17725641548', 'P', '+1-762-914-2872', '73695 Lesch Fort\nPort Reta, TN 36215-4966', NULL, '2025-11-21 20:36:43', '2025-11-21 20:36:43'),
(50, 68, 'Robert Dach', 'SIS417007', 'NISN725337', '1985-01-18', '928-908-8485', 'P', '(929) 443-9274', '788 Garfield Walks\nLake Mercedesville, MI 45610-3917', NULL, '2025-11-21 20:36:43', '2025-11-21 20:36:43'),
(51, 69, 'Tressie Wisoky', 'SIS585293', 'NISN166051', '1996-11-08', '+13127606375', 'P', '1-458-238-3986', '405 Ferry Ridge\nReichertton, UT 60662', NULL, '2025-11-21 20:36:43', '2025-11-21 20:36:43'),
(52, 70, 'Elmer Fadel', 'SIS140071', 'NISN873015', '2011-12-29', '662.383.5959', 'P', '1-386-645-1666', '2573 Boyle Summit Suite 524\nEast Bennie, MA 13849', NULL, '2025-11-21 20:36:43', '2025-11-21 20:36:43'),
(53, 71, 'Stuart Parker', 'SIS894833', 'NISN223642', '1979-03-24', '+1 (435) 612-5278', 'P', '1-929-810-6946', '11168 Hammes Mall\nPort Barrettton, MS 21984-4338', NULL, '2025-11-21 20:36:43', '2025-11-21 20:36:43'),
(54, 72, 'Mabelle Sauer', 'SIS147867', 'NISN221105', '1971-02-02', '+1-534-678-9368', 'P', '(302) 649-7690', '8993 Noel Shoals\nHarrismouth, DE 28803', NULL, '2025-11-21 20:36:43', '2025-11-21 20:36:43'),
(55, 73, 'Mario Marks V', 'SIS651422', 'NISN922796', '2019-03-17', '+1.989.210.2341', 'P', '667.364.4320', '33769 Quinn Forge\nLake Lilian, CT 07574-4115', NULL, '2025-11-21 20:36:43', '2025-11-21 20:36:43'),
(56, 74, 'Rowland Schulist DDS', 'SIS437355', 'NISN055654', '2014-10-22', '346.706.5630', 'P', '+1-667-998-3397', '594 Lance Place\nDeshaunmouth, NY 62084-1494', NULL, '2025-11-21 20:36:43', '2025-11-21 20:36:43'),
(57, 75, 'Myron Mohr', 'SIS426779', 'NISN191281', '1985-08-01', '786.910.7177', 'P', '1-616-252-2120', '3709 O\'Keefe Lodge Suite 295\nPort Kyler, CA 06268-0303', NULL, '2025-11-21 20:36:44', '2025-11-21 20:36:44'),
(58, 76, 'Zora Russel', 'SIS532673', 'NISN745155', '1986-03-02', '+1.862.567.9889', 'P', '520.602.3838', '47811 Ismael Lock Apt. 314\nHansenfort, DC 92720', NULL, '2025-11-21 20:36:44', '2025-11-21 20:36:44'),
(59, 77, 'Blanche Schoen', 'SIS257946', 'NISN727952', '1975-05-02', '551-377-2250', 'P', '609-560-8185', '980 Wintheiser Light\nCasandraland, CA 80637', NULL, '2025-11-21 20:36:44', '2025-11-21 20:36:44'),
(60, 78, 'Prof. Alva Ryan', 'SIS778774', 'NISN089965', '1999-03-04', '407-303-6145', 'P', '+15599145720', '2820 Jonathon Forge\nPort Tess, MS 92525-8309', NULL, '2025-11-21 20:36:44', '2025-11-21 20:36:44');

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
  `no_hp` varchar(255) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `jenis` varchar(255) NOT NULL,
  `jumlah` decimal(12,2) NOT NULL,
  `tgl_tagihan` date NOT NULL,
  `status` enum('belum_lunas','lunas') NOT NULL DEFAULT 'belum_lunas',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(6, '2026/2027', 1, '2025-11-29 23:56:24', '2025-12-08 21:25:43');

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
  `role` varchar(255) NOT NULL DEFAULT 'siswa',
  `foto_profil` varchar(255) DEFAULT 'profile.png',
  `foto_unggulan` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `reset_password_token` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `username`, `nama`, `email`, `password`, `role`, `foto_profil`, `foto_unggulan`, `is_active`, `reset_password_token`, `created_at`, `updated_at`) VALUES
(1, 'newell.kirlin', 'Darwin Kuvalis', 'jlarson@example.org', '$2y$12$afY/dr5OaTUvgZWjFjnTVOfD/VA9ArVNhXM1L9uL/nfw.MyNzsT9m', 'admin', 'profile.png', '', 1, NULL, '2025-11-21 20:32:49', '2025-11-21 20:32:49'),
(2, 'lstehr', 'Mr. Alek Kunze', 'bins.thad@example.com', '$2y$12$qGpXr1RTYIzfLhLUvMXvtuaS7L0kyHwnEzmQr0fmNegrvNWISR6l.', 'guru', 'profile.png', '', 1, NULL, '2025-11-21 20:32:50', '2025-11-21 20:32:50'),
(3, 'hauck.elouise', 'Khalil Gerlach', 'collier.raquel@example.org', '$2y$12$6v29/DD9FgFupmUudJaqUeKLcB1IpH2FKYfDOn6XH5mrqdK.v5rmG', 'guru', 'profile.png', '', 1, NULL, '2025-11-21 20:32:50', '2025-11-21 20:32:50'),
(4, 'jessy10', 'Kimberly Reichel', 'hoppe.george@example.org', '$2y$12$1YoNGozGkJJoVhmw2CscR.M.yiDzYT89zI8v1MeiKGBMZUcqBkBZG', 'guru', 'profile.png', '', 1, NULL, '2025-11-21 20:32:50', '2025-11-21 20:32:50'),
(5, 'tbins', 'Coby Beahan', 'gvolkman@example.com', '$2y$12$4jy3JwleOVAog1fO/ynlYutWZxsuJ0XGs28oTPUTmyC/RrvVo7rxu', 'guru', 'profile.png', '', 1, NULL, '2025-11-21 20:32:51', '2025-11-21 20:32:51'),
(6, 'horace67', 'Fae Prosacco', 'price00@example.net', '$2y$12$YjVX0X3cGgjFRGVlCZtlIe6.4F/NqaHvh5cg7/jD7YBoHmsUPJYJa', 'guru', 'profile.png', '', 1, NULL, '2025-11-21 20:32:51', '2025-11-21 20:32:51'),
(7, 'cornell38', 'Prof. Archibald Langosh DDS', 'mante.rodolfo@example.net', '$2y$12$FnP75t.7.UMqXzCBrv2N/uXhvkj8Q1U6.mv98T8Hjk9He6V5m64cu', 'siswa', 'profile.png', '', 1, NULL, '2025-11-21 20:32:52', '2025-11-21 20:32:52'),
(8, 'qkeeling', 'Prof. Mayra Heathcote PhD', 'retta98@example.com', '$2y$12$T9HkDiQblI9Nl.n5rR9X5eSuwvQpMXXUMFSyeeiVKwkaLk2.LN0Jm', 'siswa', 'profile.png', '', 1, NULL, '2025-11-21 20:32:52', '2025-11-21 20:32:52'),
(9, 'howard.reilly', 'Elmore Jones', 'homenick.catalina@example.com', '$2y$12$gDhoaxc2fdfY7.ad9x1UtOWuqAt2YdqXFohl3K4Pic/VKa1Xt.p52', 'siswa', 'profile.png', '', 1, NULL, '2025-11-21 20:32:52', '2025-11-21 20:32:52'),
(10, 'whayes', 'Mekhi Raynor', 'katherine54@example.org', '$2y$12$GPztPp45Yr1eIV0Cb1.2KOq2YkQkqfU12zAlHHvYaz4ZROmfqfAly', 'siswa', 'profile.png', '', 1, NULL, '2025-11-21 20:32:53', '2025-11-21 20:32:53'),
(11, 'hill.conrad', 'Kenneth Ward', 'baumbach.forrest@example.org', '$2y$12$COQus/vT3oBWcWTXXeqIX.0S7Y0X8sRDn8NU.fo6.kqdpSa7yow3y', 'siswa', 'profile.png', '', 1, NULL, '2025-11-21 20:32:53', '2025-11-21 20:32:53'),
(12, 'zgerhold', 'Candice Fay', 'vivien45@example.net', '$2y$12$IaKAk4j8/UhB4/L8OqjMK.yq8oDFUTdU5CfEEvMiQ7E3WMnoCN92C', 'siswa', 'profile.png', '', 1, NULL, '2025-11-21 20:32:54', '2025-11-21 20:32:54'),
(13, 'ukassulke', 'Annamarie Ernser I', 'kessler.tyrique@example.net', '$2y$12$IgQVqDrLQL65rKJ9YeBA4ucLaftwuwqegYekaDkPMOuYsmAi1zt4u', 'siswa', 'profile.png', '', 1, NULL, '2025-11-21 20:32:54', '2025-11-21 20:32:54'),
(14, 'chester06', 'Rosalind Kertzmann Sr.', 'jamie.senger@example.net', '$2y$12$VVsPDyKRkISci2jCyFnOx.u6Co36XdDcbxUV8aTYj6nMVmIPIlVAa', 'siswa', 'profile.png', '', 1, NULL, '2025-11-21 20:32:54', '2025-11-21 20:32:54'),
(15, 'sven73', 'Kip Willms', 'renee.mcglynn@example.com', '$2y$12$rW72pzXNqRbQKlPSURzUaedhIt1.myWJBxgHcmZ1j/1JmD.nYYbse', 'siswa', 'profile.png', '', 1, NULL, '2025-11-21 20:32:55', '2025-11-21 20:32:55'),
(16, 'flakin', 'Adrien Beier', 'albert.mueller@example.net', '$2y$12$RbUIBa1LCP1Y6WN6Rkw9desBfDb0hIg8CmSDyE4PYTU9XD7C1TgOy', 'siswa', 'profile.png', '', 1, NULL, '2025-11-21 20:32:55', '2025-11-21 20:32:55'),
(17, 'mwill', 'Darien Emard I', 'micaela14@example.org', '$2y$12$uTOcVPvve1Srp/uxpdFY1.lBhuu9Z/2f3fZCO5.Y26W..mZhQF8Xm', 'siswa', 'profile.png', '', 1, NULL, '2025-11-21 20:32:56', '2025-11-21 20:32:56'),
(18, 'oturcotte', 'Arnulfo Rolfson', 'allison51@example.com', '$2y$12$fW4ThPMTlGpctetXYwjJwe0xHSJ3BYyFJWV8X/YIxzo4RE5swigCK', 'siswa', 'profile.png', '', 1, NULL, '2025-11-21 20:32:56', '2025-11-21 20:32:56'),
(19, 'torphy.verda', 'Dr. Davin Bechtelar', 'drunte@example.org', '$2y$12$mQrM4LVhpghYTfZOQCbvL.EP8hS42/CxBqaIhs.gNHyhzXrYKWyIi', 'siswa', 'profile.png', '', 1, NULL, '2025-11-21 20:32:56', '2025-11-21 20:32:56'),
(20, 'tia.will', 'Antwan Heathcote DDS', 'general45@example.org', '$2y$12$p6fsx29qdugBD9bH0D.DF.SUHwKndd92XTJWV26K.X1VS/z66UzXy', 'siswa', 'profile.png', '', 1, NULL, '2025-11-21 20:32:57', '2025-11-21 20:32:57'),
(21, 'collins.salma', 'Geovany Lehner', 'iwolff@example.net', '$2y$12$hWE2tdo.SfxPws4c7X/k1eO89/.NTjviw5RvaU6YYT1WzzMVr/QH.', 'siswa', 'profile.png', '', 1, NULL, '2025-11-21 20:32:57', '2025-11-21 20:32:57'),
(22, 'emery10', 'Jermaine Huels', 'monty78@example.net', '$2y$12$KEOPnlUq6hw0S1znbZr5p.4hhskZ7Jyom.lXn/XZhsLwEKM3qRASK', 'siswa', 'profile.png', '', 1, NULL, '2025-11-21 20:32:57', '2025-11-21 20:32:57'),
(23, 'schoen.brock', 'Dr. Sienna Jast', 'fay.dulce@example.com', '$2y$12$XGS/nZYMukFdfycnAzJfCudCOsriHamIURfQMika89FKY.gxn5ZUu', 'siswa', 'profile.png', '', 1, NULL, '2025-11-21 20:32:58', '2025-11-21 20:32:58'),
(24, 'klocko.laurence', 'Emiliano Blanda', 'fkuphal@example.com', '$2y$12$sfIEZNBcMXndymDG7tdfGOPg8PFDCtuZiLAwXHray.SHoEWJPFEiK', 'siswa', 'profile.png', '', 1, NULL, '2025-11-21 20:32:58', '2025-11-21 20:32:58'),
(25, 'lebsack.fiona', 'Mafalda Gulgowski', 'ernestina46@example.com', '$2y$12$0/SYoUEOJQRFrFODpPq4SendP22npP1bdsdyn486XmGpv1Ugk01wO', 'siswa', 'profile.png', '', 1, NULL, '2025-11-21 20:32:59', '2025-11-21 20:32:59'),
(26, 'payton73', 'Darion Ondricka', 'montana.jacobi@example.org', '$2y$12$xoIRowulJykW/I4rkvxFAeJu/j761zvl.G/wzBo8R8vnfFi98M5JK', 'siswa', 'profile.png', '', 1, NULL, '2025-11-21 20:32:59', '2025-11-21 20:32:59'),
(27, 'vmckenzie', 'Orville Larson Sr.', 'nolan.eunice@example.net', '$2y$12$EhpZ4gB3jXpRokJnlil8D.Y9xGR/6xK0JVAm6OcNru1uGRzD/lzZ2', 'admin', 'profile.png', '', 1, NULL, '2025-11-21 20:33:49', '2025-11-21 20:33:49'),
(28, 'camilla82', 'Ryann Heller PhD', 'njacobi@example.com', '$2y$12$dKq4IjyMizcjQc44QCHB1uCB5VSl6yYHaPGnGWw5564KKlIdivY3.', 'guru', 'profile.png', '', 1, NULL, '2025-11-21 20:33:50', '2025-11-21 20:33:50'),
(29, 'gorczany.darrel', 'Cristobal Kling', 'schultz.carolyne@example.org', '$2y$12$PF0MBAi3/PxPTNlwNh2k.ea9fKeov8aB7GZ9SaTJrIy9DMeW76z9.', 'guru', 'profile.png', '', 1, NULL, '2025-11-21 20:33:50', '2025-11-21 20:33:50'),
(30, 'dhoppe', 'Kayla Jacobs', 'akuhlman@example.org', '$2y$12$dNgbpyRPzAHqfjbF1iWxTeZbXiFZ5Um4zyhO/fZmgerozKJTP3w2C', 'guru', 'profile.png', '', 1, NULL, '2025-11-21 20:33:51', '2025-11-21 20:33:51'),
(31, 'lauer', 'Wanda Simonis I', 'sarai.walter@example.com', '$2y$12$CxKF4XdSS5zzKnT6/6R11O.ewVKYvg1w0okbYkZAOu3XTfQoPK6xq', 'guru', 'profile.png', '', 1, NULL, '2025-11-21 20:33:51', '2025-11-21 20:33:51'),
(32, 'albertha.kerluke', 'Dr. Ariane Bosco Jr.', 'xwintheiser@example.org', '$2y$12$lwPHBrWVTrFLz9h1dA911uC/oAeCP6sfYYY.4O3qJ4vJUCnPKvZIi', 'guru', 'profile.png', '', 1, NULL, '2025-11-21 20:33:51', '2025-11-21 20:33:51'),
(33, 'zdibbert', 'Dovie Lynch', 'plarkin@example.com', '$2y$12$HL1G06jWvQSzuyLuhK0ry.qkRRD8HHwUvd5CKakNxZzpE0uRsApTu', 'siswa', 'profile.png', '', 1, NULL, '2025-11-21 20:33:52', '2025-11-21 20:33:52'),
(34, 'delphia46', 'Elton Bayer Jr.', 'judy72@example.net', '$2y$12$r7B2imtYbVmx4XJkOdludOFjOyxEJ4ectiMUQJRHAGWFdkoENwwPK', 'siswa', 'profile.png', '', 1, NULL, '2025-11-21 20:33:52', '2025-11-21 20:33:52'),
(35, 'damore.lucile', 'Prof. Ollie Bartell', 'gottlieb.letha@example.net', '$2y$12$Cm.wAX9ycp/Fl.70DnsTF.//mof5SKS.qAEqof2Klb2KXtyTTyU96', 'siswa', 'profile.png', '', 1, NULL, '2025-11-21 20:33:53', '2025-11-21 20:33:53'),
(36, 'nlubowitz', 'Abdiel Daniel', 'terence.luettgen@example.net', '$2y$12$7KIlBLLuOxkNdVthaBI2WeSgqjOTGFUvStV1.vreq8OcMm4P/Bt6G', 'siswa', 'profile.png', '', 1, NULL, '2025-11-21 20:33:54', '2025-11-21 20:33:54'),
(37, 'dare.hugh', 'Dr. Amely Kuphal', 'jeanette.quitzon@example.net', '$2y$12$D8LyZ0GOKQkRhXcUK77c2.trk941X/tQiP7if2I4//WjjxA4GwUz6', 'siswa', 'profile.png', '', 1, NULL, '2025-11-21 20:33:54', '2025-11-21 20:33:54'),
(38, 'luna.becker', 'Tyra Purdy', 'buford.cummerata@example.net', '$2y$12$EqiEskHPelh7W8dncuOc/epzQKL/gUyX7yptGLpHH0ukPSggbUxjC', 'siswa', 'profile.png', '', 1, NULL, '2025-11-21 20:33:54', '2025-11-21 20:33:54'),
(39, 'willard.lind', 'Aron Leannon', 'nya.jaskolski@example.org', '$2y$12$AnplD276osXDZaoQ4FVRHOpgPUe3gfbv.mGPFQMJaKw.v4tR3k3bS', 'siswa', 'profile.png', '', 1, NULL, '2025-11-21 20:33:55', '2025-11-21 20:33:55'),
(40, 'qturcotte', 'Nyah Spencer III', 'frieda92@example.org', '$2y$12$Vh9jJzrHBchfKZ5RFljK7ecSwbXdhd0QtcMb3NEzm/uvYnfYvcxJC', 'siswa', 'profile.png', '', 1, NULL, '2025-11-21 20:33:55', '2025-11-21 20:33:55'),
(41, 'angie43', 'Dr. Werner Jones I', 'raven65@example.org', '$2y$12$feakZWb2n4AdX.sDspNfZO/lmPT7SBCigqOdIvDTg1ZxzlUJ5ze2i', 'siswa', 'profile.png', '', 1, NULL, '2025-11-21 20:33:55', '2025-11-21 20:33:55'),
(42, 'bcarroll', 'Dr. Reginald Parker', 'pat79@example.com', '$2y$12$AEZncPOg7QtvQzJUx02PsOGRO9MS6yaXJlXcIuKZrunVjkG/dwjdW', 'siswa', 'profile.png', '', 1, NULL, '2025-11-21 20:33:56', '2025-11-21 20:33:56'),
(43, 'lswaniawski', 'Elfrieda Reilly', 'wkreiger@example.org', '$2y$12$pqFmyNOZiuexnmadTLA0JeaVRY0hgi6zlUuJosD.ehC7YX.ZSod96', 'siswa', 'profile.png', '', 1, NULL, '2025-11-21 20:33:56', '2025-11-21 20:33:56'),
(44, 'amina.tromp', 'Kaley Bailey', 'zkassulke@example.net', '$2y$12$1j2cvPQUqqgLM8ACBIPw8emgGXFdezFIj9zVVluefjsHWoSEEuc7m', 'siswa', 'profile.png', '', 1, NULL, '2025-11-21 20:33:56', '2025-11-21 20:33:56'),
(45, 'trace08', 'Kiana Mertz', 'gottlieb.cecil@example.net', '$2y$12$ApmQVvLp12BB.evVwRQWqO8lroaIi8WP/jF44ZlBXKvpSSNnPSQ22', 'siswa', 'profile.png', '', 1, NULL, '2025-11-21 20:33:57', '2025-11-21 20:33:57'),
(46, 'nya68', 'Tierra Nicolas', 'gdooley@example.org', '$2y$12$xxkZJCphK0AT4VslYBh8sucrvZz9q5XCYEQwNWjal8VP3BZ7rNnxW', 'siswa', 'profile.png', '', 1, NULL, '2025-11-21 20:33:57', '2025-11-21 20:33:57'),
(47, 'xskiles', 'Janis Hermiston', 'christiansen.everett@example.com', '$2y$12$Lruzo99oM7CDOu.AXTIBTujUC41MGWUwKcDwKRV2x25TRRwT6cq0i', 'siswa', 'profile.png', '', 1, NULL, '2025-11-21 20:33:57', '2025-11-21 20:33:57'),
(48, 'hsanford', 'Ottilie Koch', 'jamison.mann@example.net', '$2y$12$NahZXz9.Op2Rauy3ytiMu.75ZQwsCOhbo0U2Qg6GhTMe8vsdl1lCq', 'siswa', 'profile.png', '', 1, NULL, '2025-11-21 20:33:58', '2025-11-21 20:33:58'),
(49, 'marley40', 'Mrs. Dayana Johnson', 'xhyatt@example.net', '$2y$12$/xtiiHbvQaKzN5khaYcwMeXr9sJLLz0IALwWI7ZPyNamhGTLCmV1i', 'siswa', 'profile.png', '', 1, NULL, '2025-11-21 20:33:58', '2025-11-21 20:33:58'),
(50, 'stark.marlen', 'Mallory Miller', 'arlene68@example.org', '$2y$12$ysRePbTXfsab2sIs3srkD.Yxnai2pWvjXFvKWIEp/7p52Lh.f6leq', 'siswa', 'profile.png', '', 1, NULL, '2025-11-21 20:33:58', '2025-11-21 20:33:58'),
(51, 'faustino36', 'Efren Hansen', 'koch.mathias@example.com', '$2y$12$F.BRW3JT2totzhC99A04guIQ1UTvJvNhtuwSlufH2FOZjQNwMWTN.', 'siswa', 'profile.png', '', 1, NULL, '2025-11-21 20:33:59', '2025-11-21 20:33:59'),
(52, 'sarai.corkery', 'Mr. Philip Gleichner Jr.', 'elisabeth85@example.org', '$2y$12$iWqWA0Q.XSYcjgT0sAHb4eHqkh.zCavbXec0V9tEwpt3luQ73av5m', 'siswa', 'profile.png', '', 1, NULL, '2025-11-21 20:33:59', '2025-11-21 20:33:59'),
(53, 'liam59', 'Dr. Eric Bradtke I', 'cjaskolski@example.org', '$2y$12$aJ/TL6Ot5Hy0Q/pIVc3gl.qXa2xoechOK/0wOvpHtOc8tND6D.1.6', 'admin', 'profile.png', '', 1, NULL, '2025-11-21 20:36:26', '2025-11-21 20:36:26'),
(54, 'yost.jerod', 'Aniya Swift', 'ibernier@example.net', '$2y$12$68jERsuJXhe8FDYDQjlL4.ZFvBppLlJ5paN9IWIz0xM/f4NY3kieO', 'guru', 'profile.png', '', 1, NULL, '2025-11-21 20:36:26', '2025-11-21 20:36:26'),
(55, 'eruecker', 'Lukas Douglas', 'pouros.santa@example.org', '$2y$12$O6HD5mymFzjrOaOrv7Y0p.d4q39Fljb60cvpKGNL.KkkczPxS/o3K', 'guru', 'profile.png', '', 1, NULL, '2025-11-21 20:36:27', '2025-11-21 20:36:27'),
(56, 'myrna.gislason', 'Landen Hegmann', 'reilly.wehner@example.org', '$2y$12$skWxdHMKdQZbQNettPI85O9jBvB.yvVJSVoM87db6F52VyoXNS2sC', 'guru', 'profile.png', '', 1, NULL, '2025-11-21 20:36:28', '2025-11-21 20:36:28'),
(57, 'schamberger.celestino', 'Greg Crist', 'annalise.stokes@example.net', '$2y$12$MKvDSJxvB/KnacVuxKeOruAfG8ehV8g1HivEkWD.NgEDWYb4iNdj.', 'guru', 'profile.png', '', 1, NULL, '2025-11-21 20:36:29', '2025-11-21 20:36:29'),
(58, 'jblanda', 'Prof. Elinor Hudson', 'ucarroll@example.org', '$2y$12$KAZEIQrJAhnhKF.M/GE.4eydZmkXMHGreOav5rYW/13IKRxrEFQYm', 'guru', 'profile.png', '', 1, NULL, '2025-11-21 20:36:29', '2025-11-21 20:36:29'),
(59, 'stanton02', 'Jeramie Koch II', 'jaydon22@example.org', '$2y$12$tVG8x66TNiW.u9GKKxV1vuXKacGZVkVaFIluE3VEb.xECXPlLuoKi', 'siswa', 'profile.png', '', 1, NULL, '2025-11-21 20:36:30', '2025-11-21 20:36:30'),
(60, 'eloy44', 'Ahmed Tromp', 'pgreenfelder@example.org', '$2y$12$8/hSgb3V472BX414/rHDzOZQCVCHC4zgBmfyVdHDEYAIxcyKujWCC', 'siswa', 'profile.png', '', 1, NULL, '2025-11-21 20:36:31', '2025-11-21 20:36:31'),
(61, 'ed62', 'Dr. Heather Pollich', 'gottlieb.elvis@example.com', '$2y$12$EBS89H9QugposHmZyZ4FauBoZdw2TaYQXh9yjHHcwMRO6Nhid51fq', 'siswa', 'profile.png', '', 1, NULL, '2025-11-21 20:36:32', '2025-11-21 20:36:32'),
(62, 'norris68', 'Prof. Richard Renner Sr.', 'koelpin.henriette@example.com', '$2y$12$kcbOpnNmuIgRBLygR9Wd1OKk9XgYXOzejpE/RxqX05CmO9Y6bmZ4W', 'siswa', 'profile.png', '', 1, NULL, '2025-11-21 20:36:32', '2025-11-21 20:36:32'),
(63, 'brekke.vida', 'Zena Leuschke', 'santos24@example.com', '$2y$12$jJWg6OIHr5ZskLxHMByQc.8Q15XwZDo6WmXg006oj7ot1YC4JcV2S', 'siswa', 'profile.png', '', 1, NULL, '2025-11-21 20:36:33', '2025-11-21 20:36:33'),
(64, 'glemke', 'Hermina Jakubowski DVM', 'nboyer@example.com', '$2y$12$mNWXAv5ZepjWZSdo7Ok56uDP4jCIEJYpNvwL2cr0htYMlxPeyW5cy', 'siswa', 'profile.png', '', 1, NULL, '2025-11-21 20:36:33', '2025-11-21 20:36:33'),
(65, 'bernier.timothy', 'Audra Abbott III', 'pearl50@example.org', '$2y$12$DTgfDIIziluwfoU3zT4dXORYTl9Fs8x7R7jefnJLq1VUVo8g2jtIe', 'siswa', 'profile.png', '', 1, NULL, '2025-11-21 20:36:34', '2025-11-21 20:36:34'),
(66, 'russel41', 'Orland Leuschke Jr.', 'shanahan.oma@example.org', '$2y$12$HehONZHX/fHllwuYdHCrVuJYvEo88IDCbSHVcSMT2OeI5QRng9FVG', 'siswa', 'profile.png', '', 1, NULL, '2025-11-21 20:36:35', '2025-11-21 20:36:35'),
(67, 'craig95', 'Kitty Schultz', 'davin.heathcote@example.com', '$2y$12$PeBJRWNS0rTdwhhoCZUgH..XoMnCreNTcavHqtBjlc0opCFUkEEhO', 'siswa', 'profile.png', '', 1, NULL, '2025-11-21 20:36:35', '2025-11-21 20:36:35'),
(68, 'schroeder.dock', 'Robert Dach', 'odessa55@example.org', '$2y$12$W2PcYnXBWk9.daFuV8Fnru/6tyuf7JyXBaLUabwW3/Gofqs8EJfzq', 'siswa', 'profile.png', '', 1, NULL, '2025-11-21 20:36:36', '2025-11-21 20:36:36'),
(69, 'ondricka.van', 'Tressie Wisoky', 'ijaskolski@example.com', '$2y$12$sJOAfKQ9WfYC2/jrT1.SF.tR7YS8Boz0yFw1oQDPOqLafJAUvurGO', 'siswa', 'profile.png', '', 1, NULL, '2025-11-21 20:36:37', '2025-11-21 20:36:37'),
(70, 'shawna05', 'Elmer Fadel', 'marquardt.rosalind@example.org', '$2y$12$yIW5/351tTkPlYdMPaVm2.d/TE8Xvrr4QUHbny5CAk5dDQ7xyO3yK', 'siswa', 'profile.png', '', 1, NULL, '2025-11-21 20:36:37', '2025-11-21 20:36:37'),
(71, 'pierre29', 'Stuart Parker', 'xshanahan@example.net', '$2y$12$VvYAFbfGUVCmAKKiR9DDIeAbx5QGSW.qF5WpWztzdPd9jjQ6jWq9G', 'siswa', 'profile.png', '', 1, NULL, '2025-11-21 20:36:38', '2025-11-21 20:36:38'),
(72, 'billy11', 'Mabelle Sauer', 'bo.spinka@example.org', '$2y$12$Ay7mTwG3.LpFIA2HISILxuihPKQw1XZ7NAfRlJTts2Ghx3brevf1S', 'siswa', 'profile.png', '', 1, NULL, '2025-11-21 20:36:38', '2025-11-21 20:36:38'),
(73, 'carson.brakus', 'Mario Marks V', 'kaya.harber@example.net', '$2y$12$JmyHAqWCXeugITaM3ChbG.jQVOa7e2o/2SA2ZFEUd/sTWZ130A4qe', 'siswa', 'profile.png', '', 1, NULL, '2025-11-21 20:36:39', '2025-11-21 20:36:39'),
(74, 'erica18', 'Rowland Schulist DDS', 'stehr.monica@example.net', '$2y$12$WewoV8urzYTrop25DCTFN.D8nf/KVTu16wKnSSF6pRioHLTFM409W', 'siswa', 'profile.png', '', 1, NULL, '2025-11-21 20:36:39', '2025-11-21 20:36:39'),
(75, 'erenner', 'Myron Mohr', 'dschroeder@example.com', '$2y$12$9dDTLUDKEahTluNZ8OS3YOOgtlxp2Bz.P/8lQFamBtThUCfcMV4TG', 'siswa', 'profile.png', '', 1, NULL, '2025-11-21 20:36:40', '2025-11-21 20:36:40'),
(76, 'reinger.gussie', 'Zora Russel', 'oconner.thomas@example.org', '$2y$12$/x00ko2mw8o/PxhofGr6Ku25cfa6NAIORzjiyCSm/Zt5VI2bqAC.y', 'siswa', 'profile.png', '', 1, NULL, '2025-11-21 20:36:40', '2025-11-21 20:36:40'),
(77, 'art.dubuque', 'Blanche Schoen', 'kovacek.brandyn@example.org', '$2y$12$YiwcsRT9ILlof5oALreI3OKw2GUQ8wsU6qhtwPvo0EIXjyGWlU40q', 'siswa', 'profile.png', '', 1, NULL, '2025-11-21 20:36:41', '2025-11-21 20:36:41'),
(78, 'tillman.harvey', 'Prof. Alva Ryan', 'haley.marshall@example.com', '$2y$12$6qlZ5PGVseM/ZfXJYrhua.3XOPPu3PUnXG40ZRePw9TW4lvCeoL.G', 'siswa', 'profile.png', '', 1, NULL, '2025-11-21 20:36:42', '2025-11-21 20:36:42'),
(79, 'okesaja', 'kokokoko', 'okesaja@example.org', '$2y$12$afY/dr5OaTUvgZWjFjnTVOfD/VA9ArVNhXM1L9uL/nfw.MyNzsT9m', 'admin', 'profile.png', '', 1, NULL, '2025-11-21 20:32:49', '2025-11-21 20:32:49');

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
(6, 11, 8, '2025-12-06 21:37:03', '2025-12-06 21:37:03'),
(7, 3, 9, '2025-12-08 01:58:48', '2025-12-08 01:58:48');

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
-- Indeks untuk tabel `jurusan`
--
ALTER TABLE `jurusan`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `jurusan_kode_jurusan_unique` (`kode_jurusan`);

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
  ADD KEY `pembayaran_tagihan_id_foreign` (`tagihan_id`);

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
  ADD KEY `tagihan_siswa_id_foreign` (`siswa_id`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

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
-- AUTO_INCREMENT untuk tabel `jurusan`
--
ALTER TABLE `jurusan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `kategori_mapel`
--
ALTER TABLE `kategori_mapel`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `ketua_kelas`
--
ALTER TABLE `ketua_kelas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT untuk tabel `mapel`
--
ALTER TABLE `mapel`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT untuk tabel `staff`
--
ALTER TABLE `staff`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `status_notifikasi`
--
ALTER TABLE `status_notifikasi`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tagihan`
--
ALTER TABLE `tagihan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tahun_pelajaran`
--
ALTER TABLE `tahun_pelajaran`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `tugas`
--
ALTER TABLE `tugas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

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
