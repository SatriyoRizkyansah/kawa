-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 08, 2025 at 02:37 PM
-- Server version: 8.0.30
-- PHP Version: 8.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cctv_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `academic_programs`
--

CREATE TABLE `academic_programs` (
  `id` bigint UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `program_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faculty_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `academic_programs`
--

INSERT INTO `academic_programs` (`id`, `slug`, `program_name`, `faculty_id`, `created_at`, `updated_at`) VALUES
(1, 'program-studi-manajemen-s-1', 'Program Studi Manajemen S-1', 1, '2025-02-04 01:49:33', '2025-02-04 01:49:33'),
(2, 'program-studi-akuntansi-s-1', 'Program Studi Akuntansi S-1', 1, '2025-02-04 01:49:33', '2025-02-04 01:49:33'),
(3, 'program-studi-administrasi-perkantoran-d-3', 'Program Studi Administrasi Perkantoran D-3', 1, '2025-02-04 01:49:33', '2025-02-04 01:49:33'),
(4, 'program-studi-akuntansi-perpajakan-d-4', 'Program Studi Akuntansi Perpajakan D-4', 1, '2025-02-04 01:49:33', '2025-02-04 01:49:33'),
(5, 'program-studi-manajemen-s-1-psdku-serang', 'Program Studi Manajemen S-1 (PSDKU, Serang)', 1, '2025-02-04 01:49:33', '2025-02-04 01:49:33'),
(6, 'program-studi-akuntansi-s-1-psdku-serang', 'Program Studi Akuntansi S-1 (PSDKU, Serang)', 1, '2025-02-04 01:49:33', '2025-02-04 01:49:33'),
(7, 'program-studi-ilmu-hukum-s-1', 'Program Studi Ilmu Hukum S-1', 2, '2025-02-04 01:49:33', '2025-02-04 01:49:33'),
(8, 'program-studi-ilmu-hukum-s-1-psdku-serang', 'Program Studi Ilmu Hukum S-1 (PSDKU, Serang)', 2, '2025-02-04 01:49:33', '2025-02-04 01:49:33'),
(9, 'program-studi-sastra-inggris-s-1', 'Program Studi Sastra Inggris S-1', 3, '2025-02-04 01:49:33', '2025-02-04 01:49:33'),
(10, 'program-studi-sastra-indonesia-s-1', 'Program Studi Sastra Indonesia S-1', 3, '2025-02-04 01:49:33', '2025-02-04 01:49:33'),
(11, 'program-studi-teknik-mesin-s-1', 'Program Studi Teknik Mesin S-1', 4, '2025-02-04 01:49:33', '2025-02-04 01:49:33'),
(12, 'program-studi-teknik-industri-s-1', 'Program Studi Teknik Industri S-1', 4, '2025-02-04 01:49:33', '2025-02-04 01:49:33'),
(13, 'program-studi-teknik-elektro-s-1', 'Program Studi Teknik Elektro S-1', 4, '2025-02-04 01:49:33', '2025-02-04 01:49:33'),
(14, 'program-studi-teknik-kimia-s-1', 'Program Studi Teknik Kimia S-1', 4, '2025-02-04 01:49:33', '2025-02-04 01:49:33'),
(15, 'program-studi-teknik-mesin-s-1-psdku-serang', 'Program Studi Teknik Mesin S-1 (PSDKU, Serang)', 4, '2025-02-04 01:49:33', '2025-02-04 01:49:33'),
(16, 'program-studi-teknik-elektro-s-1-psdku-serang', 'Program Studi Teknik Elektro S-1 (PSDKU, Serang)', 4, '2025-02-04 01:49:33', '2025-02-04 01:49:33'),
(17, 'program-studi-teknik-informatika-s-1', 'Program Studi Teknik Informatika S-1', 5, '2025-02-04 01:49:33', '2025-02-04 01:49:33'),
(18, 'program-studi-sistem-informasi-s-1', 'Program Studi Sistem Informasi S-1', 5, '2025-02-04 01:49:33', '2025-02-04 01:49:33'),
(19, 'program-studi-sistem-komputer-s-1-psdku-serang', 'Program Studi Sistem Komputer S-1 (PSDKU, Serang)', 5, '2025-02-04 01:49:33', '2025-02-04 01:49:33'),
(20, 'program-studi-sistem-informasi-s-1-psdku-serang', 'Program Studi Sistem Informasi S-1 (PSDKU, Serang)', 5, '2025-02-04 01:49:33', '2025-02-04 01:49:33'),
(21, 'program-studi-pendidikan-pancasila-dan-kewarganegaraan-s-1', 'Program Studi Pendidikan Pancasila dan Kewarganegaraan S-1', 6, '2025-02-04 01:49:33', '2025-02-04 01:49:33'),
(22, 'program-studi-pendidikan-ekonomi-s-1', 'Program Studi Pendidikan Ekonomi S-1', 6, '2025-02-04 01:49:33', '2025-02-04 01:49:33'),
(23, 'pendidikan-guru-sekolah-dasar-s-1', 'Pendidikan Guru Sekolah Dasar S-1', 6, '2025-02-04 01:49:33', '2025-02-04 01:49:33'),
(24, 'pendidikan-jasmani-s-1', 'Pendidikan Jasmani S-1', 6, '2025-02-04 01:49:33', '2025-02-04 01:49:33'),
(25, 'pendidikan-profesi-guru', 'Pendidikan Profesi Guru', 6, '2025-02-04 01:49:33', '2025-02-04 01:49:33'),
(26, 'program-studi-matematika-s-1', 'Program Studi Matematika S-1', 7, '2025-02-04 01:49:33', '2025-02-04 01:49:33'),
(27, 'program-studi-matematika-s-1-psdku-serang', 'Program Studi Matematika S-1 (PSDKU, Serang)', 7, '2025-02-04 01:49:33', '2025-02-04 01:49:33'),
(28, 'program-studi-biologi-s-1-psdku-serang', 'Program Studi Biologi S-1 (PSDKU, Serang)', 7, '2025-02-04 01:49:33', '2025-02-04 01:49:33'),
(29, 'program-studi-kimia-s-1-psdku-serang', 'Program Studi Kimia S-1 (PSDKU, Serang)', 7, '2025-02-04 01:49:33', '2025-02-04 01:49:33'),
(30, 'program-studi-manajemen-pendidikan-islam-s-1', 'Program Studi Manajemen Pendidikan Islam S-1', 8, '2025-02-04 01:49:33', '2025-02-04 01:49:33'),
(31, 'program-studi-ekonomi-syariah-s-1', 'Program Studi Ekonomi Syariah S-1', 8, '2025-02-04 01:49:33', '2025-02-04 01:49:33'),
(32, 'program-studi-ilmu-komunikasi-s-1', 'Program Studi Ilmu Komunikasi S-1', 9, '2025-02-04 01:49:33', '2025-02-04 01:49:33'),
(33, 'program-studi-administrasi-negara-s-1-psdku-serang', 'Program Studi Administrasi Negara S-1 (PSDKU, Serang)', 10, '2025-02-04 01:49:33', '2025-02-04 01:49:33'),
(34, 'program-studi-ilmu-pemerintahan-s-1-psdku-serang', 'Program Studi Ilmu Pemerintahan S-1 (PSDKU, Serang)', 10, '2025-02-04 01:49:33', '2025-02-04 01:49:33'),
(35, 'program-studi-ilmu-hukum-s-2', 'Program Studi Ilmu Hukum S-2', 11, '2025-02-04 01:49:33', '2025-02-04 01:49:33'),
(36, 'program-studi-manajemen-s-2', 'Program Studi Manajemen S-2', 11, '2025-02-04 01:49:33', '2025-02-04 01:49:33'),
(37, 'program-studi-teknik-informatika-s-2', 'Program Studi Teknik Informatika S-2', 11, '2025-02-04 01:49:33', '2025-02-04 01:49:33'),
(38, 'program-studi-akuntansi-s-2', 'Program Studi Akuntansi S-2', 11, '2025-02-04 01:49:33', '2025-02-04 01:49:33'),
(39, 'program-studi-manajemen-pendidikan-s-2', 'Program Studi Manajemen Pendidikan S-2', 11, '2025-02-04 01:49:33', '2025-02-04 01:49:33');

-- --------------------------------------------------------

--
-- Table structure for table `buildings`
--

CREATE TABLE `buildings` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `building_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `university_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `buildings`
--

INSERT INTO `buildings` (`id`, `building_name`, `slug`, `university_id`, `created_at`, `updated_at`) VALUES
('7888d77337d4f08387be5b4a6e98f984', 'Gedung A', 'gedung-a', 'f74c7495b5c1058911cacf665b2efa3f', '2025-01-15 05:41:07', '2025-01-15 05:41:07');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cameras`
--

CREATE TABLE `cameras` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_kamera` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rtsp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hls` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `device_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brand` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `version_model` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `installation_date` date DEFAULT NULL,
  `university_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `building_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `floor_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cameras`
--

INSERT INTO `cameras` (`id`, `ip`, `nama_kamera`, `rtsp`, `hls`, `description`, `device_color`, `type`, `brand`, `version_model`, `installation_date`, `university_id`, `building_id`, `floor_id`, `created_at`, `updated_at`) VALUES
('25eb05864393cbc47e9345dee8e0b7a4', '192.168.10.10', 'CAM - 1', 'https://www.example.com/', 'https://www.example.com/', 'Dekat pintu masuk', 'Hitam', 'HLS', 'Axio', 'V5.82', '2025-01-15', 'f74c7495b5c1058911cacf665b2efa3f', '7888d77337d4f08387be5b4a6e98f984', '79cc905a9753383a78bcf6b9f5ac13b7', '2025-01-15 06:00:01', '2025-01-17 05:17:30'),
('37ff2d3c22255d721fa18c4976a46d86', '192.168.10.10', 'CAM - 2', 'https://www.example.com/', 'https://www.example.com/', 'Deket lorong kantin', 'Black', 'HLS', 'Samsung', 'V5.82', '2025-01-15', 'f74c7495b5c1058911cacf665b2efa3f', '7888d77337d4f08387be5b4a6e98f984', '79cc905a9753383a78bcf6b9f5ac13b7', '2025-01-15 06:54:25', '2025-01-15 06:55:03'),
('e8911772a8d89c9520f4c39cb1addc2d', '192.168.10.10', 'CAM - 3', 'https://www.example.com/', 'https://www.example.com/', 'Depan kelas 292', 'Hitam', 'RTSP', 'Brio', 'V5.82', '2025-01-15', 'f74c7495b5c1058911cacf665b2efa3f', '7888d77337d4f08387be5b4a6e98f984', '79cc905a9753383a78bcf6b9f5ac13b7', '2025-01-15 06:55:55', '2025-01-15 06:55:55');

-- --------------------------------------------------------

--
-- Table structure for table `evidences`
--

CREATE TABLE `evidences` (
  `id` bigint UNSIGNED NOT NULL,
  `violation_id` bigint UNSIGNED NOT NULL,
  `file_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_type` enum('image','video') COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `evidences`
--

INSERT INTO `evidences` (`id`, `violation_id`, `file_path`, `file_type`, `description`, `created_at`, `updated_at`) VALUES
(1, 1, '6436dbfad18caa427b41c9a30528f4f53.jpg', 'image', NULL, '2025-02-07 10:36:51', '2025-02-07 10:36:51'),
(2, 1, '6436dbfad18caa427b41c9a30528f4f53.jpg', 'image', NULL, '2025-02-07 10:36:51', '2025-02-07 10:36:51'),
(3, 1, 'a3bbc18109f04f2ee4d447f231a205ad.jpg', 'image', NULL, '2025-02-07 10:36:51', '2025-02-07 10:36:51'),
(4, 1, 'c0cd001998a09110b74c347071b96377.jpg', 'image', NULL, '2025-02-07 10:36:51', '2025-02-07 10:36:51');

-- --------------------------------------------------------

--
-- Table structure for table `faculties`
--

CREATE TABLE `faculties` (
  `id` bigint UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faculty_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faculties`
--

INSERT INTO `faculties` (`id`, `slug`, `faculty_name`, `created_at`, `updated_at`) VALUES
(1, 'fakultas-ekonomi-dan-bisnis', 'Fakultas Ekonomi dan Bisnis', '2025-02-04 01:49:33', '2025-02-04 01:49:33'),
(2, 'fakultas-hukum', 'Fakultas Hukum', '2025-02-04 01:49:33', '2025-02-04 01:49:33'),
(3, 'fakultas-sastra', 'Fakultas Sastra', '2025-02-04 01:49:33', '2025-02-04 01:49:33'),
(4, 'fakultas-teknik', 'Fakultas Teknik', '2025-02-04 01:49:33', '2025-02-04 01:49:33'),
(5, 'fakultas-ilmu-komputer', 'Fakultas Ilmu Komputer', '2025-02-04 01:49:33', '2025-02-04 01:49:33'),
(6, 'fakultas-keguruan-dan-ilmu-pendidikan', 'Fakultas Keguruan dan Ilmu Pendidikan', '2025-02-04 01:49:33', '2025-02-04 01:49:33'),
(7, 'fakultas-matematika-dan-ilmu-pengetahuan-alam', 'Fakultas Matematika dan Ilmu Pengetahuan Alam', '2025-02-04 01:49:33', '2025-02-04 01:49:33'),
(8, 'fakultas-agama-islam', 'Fakultas Agama Islam', '2025-02-04 01:49:33', '2025-02-04 01:49:33'),
(9, 'fakultas-ilmu-komunikasi', 'Fakultas Ilmu Komunikasi', '2025-02-04 01:49:33', '2025-02-04 01:49:33'),
(10, 'fakultas-ilmu-sosial-dan-ilmu-politik', 'Fakultas Ilmu Sosial dan Ilmu Politik', '2025-02-04 01:49:33', '2025-02-04 01:49:33'),
(11, 'program-pascasarjana', 'Program Pascasarjana', '2025-02-04 01:49:33', '2025-02-04 01:49:33');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `floors`
--

CREATE TABLE `floors` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `floor_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `university_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `building_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `floors`
--

INSERT INTO `floors` (`id`, `floor_name`, `slug`, `university_id`, `building_id`, `created_at`, `updated_at`) VALUES
('79cc905a9753383a78bcf6b9f5ac13b7', 'Lantai 1', 'lantai-1', 'f74c7495b5c1058911cacf665b2efa3f', '7888d77337d4f08387be5b4a6e98f984', '2025-01-15 05:41:18', '2025-01-15 05:41:18');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_12_14_014221_create_universities_table', 1),
(5, '2024_12_14_014222_create_buildings_table', 1),
(6, '2024_12_14_014254_create_floors_table', 1),
(8, '2025_01_12_888888_create_cameras_table', 1),
(11, '2025_01_15_142615_create_personal_access_tokens_table', 2),
(12, '2025_02_04_035339_create_faculty_table', 3),
(13, '2025_02_04_035800_create_academic_programs_table', 3),
(14, '2025_01_12_093247_create_students_table', 4),
(15, '2025_01_12_999999_create_violations_table', 5),
(16, '2025_01_15_095146_create_evidences_table', 5),
(17, '2025_02_05_050145_create_student_media_table', 6);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('3z0HKKBGAiyUaUDhNlxqipOH4fC25e3O3qFo7uSQ', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiM2NRdXlnNUdvTEpUTkJQVUJ1ZVlSRzFVMkhDdGNKRmJYNkhSTmtYVSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9rYXdhLnRlc3QvYWRtaW4vZGFzaGJvYXJkIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTt9', 1739016175),
('xFNy9d7OPaGlCDWkRj6h5pk6TnFAYiaVmRAx0Qfi', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWnkxcXlLOFQzbUtRNEE5S1Q2VEtrSTZCQXFVNFBTMDI5dUI5b0VrdSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTY6Imh0dHA6Ly9rYXdhLnRlc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1739025408);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint UNSIGNED NOT NULL,
  `nim` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birth_date` date NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `academic_program_id` bigint UNSIGNED NOT NULL,
  `reg` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `class` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `semester` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `nim`, `name`, `img`, `birth_date`, `gender`, `academic_program_id`, `reg`, `class`, `semester`, `status`, `created_at`, `updated_at`) VALUES
(1, '221011700050', 'Satriyo Rizkyansah', NULL, '2004-06-22', 'Male', 18, 'A', '06SIFP002', '6', 'Aktif', '2025-02-05 04:12:12', '2025-02-05 04:12:12'),
(2, '221011700054', 'Muhammad Tri Putro', NULL, '2025-02-08', 'Male', 19, 'A', '03SIFP003', '3', 'Aktif', '2025-02-08 11:59:04', '2025-02-08 11:59:04');

-- --------------------------------------------------------

--
-- Table structure for table `student_media`
--

CREATE TABLE `student_media` (
  `id` bigint UNSIGNED NOT NULL,
  `student_id` bigint UNSIGNED NOT NULL,
  `file_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('pending','approved','rejected') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_media`
--

INSERT INTO `student_media` (`id`, `student_id`, `file_name`, `status`, `created_at`, `updated_at`) VALUES
(12, 1, '7617eeb25a0080cb69b1de1770dd32e92.jpg', 'approved', '2025-02-08 08:22:43', '2025-02-08 04:58:45'),
(13, 1, '7617eeb25a0080cb69b1de1770dd32e93.jpg', 'approved', '2025-02-08 08:22:43', '2025-02-08 04:58:45'),
(14, 1, '7617eeb25a0080cb69b1de1770dd32e91.jpg', 'approved', '2025-02-08 08:22:43', '2025-02-08 04:58:45'),
(15, 1, '7617eeb25a0080cb69b1de1770dd32e9.jpg', 'approved', '2025-02-08 08:22:43', '2025-02-08 04:58:45'),
(16, 2, '7617eeb25a0080cb69b1de1770dd32e92.jpg', 'pending', '2025-02-08 12:00:05', '2025-02-08 05:02:29');

-- --------------------------------------------------------

--
-- Table structure for table `universities`
--

CREATE TABLE `universities` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `university_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `universities`
--

INSERT INTO `universities` (`id`, `university_name`, `slug`, `img`, `description`, `created_at`, `updated_at`) VALUES
('211b9cca860ff4f32f80d287057cd07e', 'Kampus Pusat', 'kampus-pusat', '1738638076.jpg', 'Universitas Pamulang kampus pusat', '2025-02-03 20:01:16', '2025-02-03 20:01:16'),
('efdd27ce346515d54bdd81a9ccbe56ff', 'Kampus Witana', 'kampus-witana', '1738638105.jpg', 'Universitas Pamulang kampus witana', '2025-02-03 20:01:45', '2025-02-03 20:01:45'),
('f74c7495b5c1058911cacf665b2efa3f', 'Kampus Viktor', 'kampus-viktor', '1736944627.png', 'Kampus unpam viktor', '2025-01-15 05:37:07', '2025-01-15 05:37:07'),
('f83bdbb8a29ad5eb18b895005afaec11', 'Kampus Serang', 'kampus-serang', '1738638086.jpg', 'Universitas Pamulang kampus serang', '2025-02-03 20:01:26', '2025-02-03 20:01:31');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Test User', 'test@example.com', '2025-01-15 03:00:39', '$2y$12$TfMKSg9stKOt9EMf/JMlYehm991er4G6QYxXv4cAFU1w0opWOmWFi', 'FOdZ33F94u13It7j8eDcWeUwP7PHCA3bAK3RiGwg9tmABHvA6e6nQ0qUpkSX', '2025-01-15 03:00:39', '2025-01-15 03:00:39');

-- --------------------------------------------------------

--
-- Table structure for table `violations`
--

CREATE TABLE `violations` (
  `id` bigint UNSIGNED NOT NULL,
  `camera_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `violation_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `student_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `violations`
--

INSERT INTO `violations` (`id`, `camera_id`, `date`, `time`, `violation_type`, `description`, `student_id`, `created_at`, `updated_at`) VALUES
(1, '25eb05864393cbc47e9345dee8e0b7a4', '2025-02-06', '11:18:24', 'Merokok', 'Merokok di area kampus', 1, '2025-02-06 04:18:24', '2025-02-06 04:18:24');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `academic_programs`
--
ALTER TABLE `academic_programs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `academic_programs_faculty_id_foreign` (`faculty_id`);

--
-- Indexes for table `buildings`
--
ALTER TABLE `buildings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `buildings_university_id_foreign` (`university_id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cameras`
--
ALTER TABLE `cameras`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cameras_university_id_foreign` (`university_id`),
  ADD KEY `cameras_building_id_foreign` (`building_id`),
  ADD KEY `cameras_floor_id_foreign` (`floor_id`);

--
-- Indexes for table `evidences`
--
ALTER TABLE `evidences`
  ADD PRIMARY KEY (`id`),
  ADD KEY `evidences_violation_id_foreign` (`violation_id`);

--
-- Indexes for table `faculties`
--
ALTER TABLE `faculties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `floors`
--
ALTER TABLE `floors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `floors_university_id_foreign` (`university_id`),
  ADD KEY `floors_building_id_foreign` (`building_id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD KEY `students_academic_program_id_foreign` (`academic_program_id`);

--
-- Indexes for table `student_media`
--
ALTER TABLE `student_media`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_media_student_id_foreign` (`student_id`);

--
-- Indexes for table `universities`
--
ALTER TABLE `universities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `violations`
--
ALTER TABLE `violations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `violations_camera_id_foreign` (`camera_id`),
  ADD KEY `violations_student_id_foreign` (`student_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `academic_programs`
--
ALTER TABLE `academic_programs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `evidences`
--
ALTER TABLE `evidences`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `faculties`
--
ALTER TABLE `faculties`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `student_media`
--
ALTER TABLE `student_media`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `violations`
--
ALTER TABLE `violations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `academic_programs`
--
ALTER TABLE `academic_programs`
  ADD CONSTRAINT `academic_programs_faculty_id_foreign` FOREIGN KEY (`faculty_id`) REFERENCES `faculties` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `buildings`
--
ALTER TABLE `buildings`
  ADD CONSTRAINT `buildings_university_id_foreign` FOREIGN KEY (`university_id`) REFERENCES `universities` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `cameras`
--
ALTER TABLE `cameras`
  ADD CONSTRAINT `cameras_building_id_foreign` FOREIGN KEY (`building_id`) REFERENCES `buildings` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cameras_floor_id_foreign` FOREIGN KEY (`floor_id`) REFERENCES `floors` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cameras_university_id_foreign` FOREIGN KEY (`university_id`) REFERENCES `universities` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `evidences`
--
ALTER TABLE `evidences`
  ADD CONSTRAINT `evidences_violation_id_foreign` FOREIGN KEY (`violation_id`) REFERENCES `violations` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `floors`
--
ALTER TABLE `floors`
  ADD CONSTRAINT `floors_building_id_foreign` FOREIGN KEY (`building_id`) REFERENCES `buildings` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `floors_university_id_foreign` FOREIGN KEY (`university_id`) REFERENCES `universities` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `students_academic_program_id_foreign` FOREIGN KEY (`academic_program_id`) REFERENCES `academic_programs` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `student_media`
--
ALTER TABLE `student_media`
  ADD CONSTRAINT `student_media_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `violations`
--
ALTER TABLE `violations`
  ADD CONSTRAINT `violations_camera_id_foreign` FOREIGN KEY (`camera_id`) REFERENCES `cameras` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `violations_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
