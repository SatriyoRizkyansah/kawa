-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 06, 2025 at 02:26 PM
-- Server version: 8.0.30
-- PHP Version: 8.2.26

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
-- Table structure for table `buildings`
--

CREATE TABLE `buildings` (
  `id` bigint UNSIGNED NOT NULL,
  `building_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `university_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `buildings`
--

INSERT INTO `buildings` (`id`, `building_name`, `slug`, `university_id`, `created_at`, `updated_at`) VALUES
(1, 'Gedung A', 'gedung-a-u1', 1, '2025-01-06 06:58:47', '2025-01-06 06:58:47'),
(2, 'Gedung B', 'gedung-b-u1', 1, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(3, 'Gedung C', 'gedung-c-u1', 1, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(4, 'Gedung A', 'gedung-a-u2', 2, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(5, 'Gedung B', 'gedung-b-u2', 2, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(6, 'Gedung C', 'gedung-c-u2', 2, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(7, 'Gedung A', 'gedung-a-u3', 3, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(8, 'Gedung B', 'gedung-b-u3', 3, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(9, 'Gedung C', 'gedung-c-u3', 3, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(10, 'Gedung A', 'gedung-a-u4', 4, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(11, 'Gedung B', 'gedung-b-u4', 4, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(12, 'Gedung C', 'gedung-c-u4', 4, '2025-01-06 06:58:48', '2025-01-06 06:58:48');

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
  `id` bigint UNSIGNED NOT NULL,
  `nama_kamera` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rtsp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `device_color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version_model` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `installation_date` date NOT NULL,
  `university_id` bigint UNSIGNED NOT NULL,
  `building_id` bigint UNSIGNED NOT NULL,
  `floor_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cameras`
--

INSERT INTO `cameras` (`id`, `nama_kamera`, `rtsp`, `description`, `device_color`, `ip`, `type`, `brand`, `version_model`, `installation_date`, `university_id`, `building_id`, `floor_id`, `created_at`, `updated_at`) VALUES
(1, 'CAM 1-L1-G1', 'http://example.com/stream1', 'Deskripsi Kamera 1', 'Gray', '192.168.76.39', 'Surveillance', 'Brand B', 'V5.82', '2024-04-13', 1, 1, 1, '2025-01-06 06:58:47', '2025-01-06 07:22:08'),
(2, 'CAM 2-L1-G1', 'http://example.com/stream2', 'Deskripsi Kamera 2', 'White', '192.168.79.114', 'CCTV', 'Brand C', 'V2.0', '2024-09-10', 1, 1, 1, '2025-01-06 06:58:47', '2025-01-06 06:58:47'),
(3, 'CAM 3-L1-G1', 'http://example.com/stream3', 'Deskripsi Kamera 3', 'White', '192.168.92.241', 'CCTV', 'Brand D', 'V5.7', '2024-04-09', 1, 1, 1, '2025-01-06 06:58:47', '2025-01-06 06:58:47'),
(4, 'CAM 4-L1-G1', 'http://example.com/stream4', 'Deskripsi Kamera 4', 'White', '192.168.165.29', 'CCTV', 'Brand E', 'V5.4', '2024-11-01', 1, 1, 1, '2025-01-06 06:58:47', '2025-01-06 06:58:47'),
(5, 'CAM 5-L1-G1', 'http://example.com/stream5', 'Deskripsi Kamera 5', 'White', '192.168.42.70', 'CCTV', 'Brand F', 'V2.4', '2024-01-12', 1, 1, 1, '2025-01-06 06:58:47', '2025-01-06 06:58:47'),
(6, 'CAM 1-L2-G1', 'http://example.com/stream1', 'Deskripsi Kamera 1', 'White', '192.168.234.186', 'Surveillance', 'Brand B', 'V4.1', '2024-01-09', 1, 1, 2, '2025-01-06 06:58:47', '2025-01-06 06:58:47'),
(7, 'CAM 2-L2-G1', 'http://example.com/stream2', 'Deskripsi Kamera 2', 'Gray', '192.168.45.3', 'CCTV', 'Brand C', 'V3.8', '2024-09-25', 1, 1, 2, '2025-01-06 06:58:47', '2025-01-06 06:58:47'),
(8, 'CAM 3-L2-G1', 'http://example.com/stream3', 'Deskripsi Kamera 3', 'Gray', '192.168.124.237', 'CCTV', 'Brand D', 'V1.5', '2024-04-13', 1, 1, 2, '2025-01-06 06:58:47', '2025-01-06 06:58:47'),
(9, 'CAM 4-L2-G1', 'http://example.com/stream4', 'Deskripsi Kamera 4', 'Black', '192.168.131.254', 'CCTV', 'Brand E', 'V5.5', '2024-11-29', 1, 1, 2, '2025-01-06 06:58:47', '2025-01-06 06:58:47'),
(10, 'CAM 5-L2-G1', 'http://example.com/stream5', 'Deskripsi Kamera 5', 'White', '192.168.7.128', 'CCTV', 'Brand F', 'V3.9', '2024-11-03', 1, 1, 2, '2025-01-06 06:58:47', '2025-01-06 06:58:47'),
(11, 'CAM 1-L3-G1', 'http://example.com/stream1', 'Deskripsi Kamera 1', 'Gray', '192.168.209.133', 'Surveillance', 'Brand B', 'V2.3', '2024-05-08', 1, 1, 3, '2025-01-06 06:58:47', '2025-01-06 06:58:47'),
(12, 'CAM 2-L3-G1', 'http://example.com/stream2', 'Deskripsi Kamera 2', 'Gray', '192.168.174.150', 'CCTV', 'Brand C', 'V5.5', '2024-12-16', 1, 1, 3, '2025-01-06 06:58:47', '2025-01-06 06:58:47'),
(13, 'CAM 3-L3-G1', 'http://example.com/stream3', 'Deskripsi Kamera 3', 'White', '192.168.120.175', 'CCTV', 'Brand D', 'V4.3', '2024-12-13', 1, 1, 3, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(14, 'CAM 4-L3-G1', 'http://example.com/stream4', 'Deskripsi Kamera 4', 'Black', '192.168.39.163', 'CCTV', 'Brand E', 'V2.5', '2024-05-23', 1, 1, 3, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(15, 'CAM 5-L3-G1', 'http://example.com/stream5', 'Deskripsi Kamera 5', 'White', '192.168.40.213', 'CCTV', 'Brand F', 'V2.7', '2024-10-06', 1, 1, 3, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(16, 'CAM 1-L4-G1', 'http://example.com/stream1', 'Deskripsi Kamera 1', 'White', '192.168.252.58', 'CCTV', 'Brand B', 'V3.3', '2024-12-27', 1, 1, 4, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(17, 'CAM 2-L4-G1', 'http://example.com/stream2', 'Deskripsi Kamera 2', 'Gray', '192.168.223.165', 'Surveillance', 'Brand C', 'V2.3', '2024-01-12', 1, 1, 4, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(18, 'CAM 3-L4-G1', 'http://example.com/stream3', 'Deskripsi Kamera 3', 'Black', '192.168.242.36', 'CCTV', 'Brand D', 'V3.7', '2024-09-21', 1, 1, 4, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(19, 'CAM 4-L4-G1', 'http://example.com/stream4', 'Deskripsi Kamera 4', 'Gray', '192.168.85.233', 'CCTV', 'Brand E', 'V1.8', '2024-06-24', 1, 1, 4, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(20, 'CAM 5-L4-G1', 'http://example.com/stream5', 'Deskripsi Kamera 5', 'Black', '192.168.77.84', 'CCTV', 'Brand F', 'V1.0', '2024-12-08', 1, 1, 4, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(21, 'CAM 1-L5-G1', 'http://example.com/stream1', 'Deskripsi Kamera 1', 'Gray', '192.168.181.2', 'CCTV', 'Brand B', 'V5.8', '2024-12-16', 1, 1, 5, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(22, 'CAM 2-L5-G1', 'http://example.com/stream2', 'Deskripsi Kamera 2', 'White', '192.168.79.211', 'Surveillance', 'Brand C', 'V3.4', '2024-02-05', 1, 1, 5, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(23, 'CAM 3-L5-G1', 'http://example.com/stream3', 'Deskripsi Kamera 3', 'Black', '192.168.52.249', 'Surveillance', 'Brand D', 'V1.7', '2024-07-16', 1, 1, 5, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(24, 'CAM 4-L5-G1', 'http://example.com/stream4', 'Deskripsi Kamera 4', 'Gray', '192.168.173.247', 'Surveillance', 'Brand E', 'V1.5', '2024-12-23', 1, 1, 5, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(25, 'CAM 5-L5-G1', 'http://example.com/stream5', 'Deskripsi Kamera 5', 'White', '192.168.94.119', 'Surveillance', 'Brand F', 'V4.0', '2025-01-02', 1, 1, 5, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(26, 'CAM 1-L6-G1', 'http://example.com/stream1', 'Deskripsi Kamera 1', 'White', '192.168.49.117', 'CCTV', 'Brand B', 'V2.8', '2024-01-16', 1, 1, 6, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(27, 'CAM 2-L6-G1', 'http://example.com/stream2', 'Deskripsi Kamera 2', 'Gray', '192.168.178.118', 'CCTV', 'Brand C', 'V2.9', '2024-04-09', 1, 1, 6, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(28, 'CAM 3-L6-G1', 'http://example.com/stream3', 'Deskripsi Kamera 3', 'Gray', '192.168.86.31', 'Surveillance', 'Brand D', 'V4.4', '2024-03-02', 1, 1, 6, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(29, 'CAM 4-L6-G1', 'http://example.com/stream4', 'Deskripsi Kamera 4', 'White', '192.168.28.126', 'CCTV', 'Brand E', 'V4.1', '2024-01-29', 1, 1, 6, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(30, 'CAM 5-L6-G1', 'http://example.com/stream5', 'Deskripsi Kamera 5', 'Gray', '192.168.109.209', 'Surveillance', 'Brand F', 'V2.7', '2024-11-12', 1, 1, 6, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(31, 'CAM 1-L7-G1', 'http://example.com/stream1', 'Deskripsi Kamera 1', 'Gray', '192.168.13.239', 'Surveillance', 'Brand B', 'V3.9', '2024-05-05', 1, 1, 7, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(32, 'CAM 2-L7-G1', 'http://example.com/stream2', 'Deskripsi Kamera 2', 'Gray', '192.168.15.53', 'CCTV', 'Brand C', 'V5.5', '2024-01-15', 1, 1, 7, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(33, 'CAM 3-L7-G1', 'http://example.com/stream3', 'Deskripsi Kamera 3', 'Gray', '192.168.30.234', 'CCTV', 'Brand D', 'V4.5', '2024-09-04', 1, 1, 7, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(34, 'CAM 4-L7-G1', 'http://example.com/stream4', 'Deskripsi Kamera 4', 'White', '192.168.22.114', 'CCTV', 'Brand E', 'V1.2', '2024-11-17', 1, 1, 7, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(35, 'CAM 5-L7-G1', 'http://example.com/stream5', 'Deskripsi Kamera 5', 'Black', '192.168.28.244', 'CCTV', 'Brand F', 'V2.6', '2024-06-22', 1, 1, 7, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(36, 'CAM 1-L8-G1', 'http://example.com/stream1', 'Deskripsi Kamera 1', 'Gray', '192.168.142.246', 'CCTV', 'Brand B', 'V3.0', '2024-01-18', 1, 1, 8, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(37, 'CAM 2-L8-G1', 'http://example.com/stream2', 'Deskripsi Kamera 2', 'Gray', '192.168.251.211', 'Surveillance', 'Brand C', 'V3.9', '2024-02-07', 1, 1, 8, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(38, 'CAM 3-L8-G1', 'http://example.com/stream3', 'Deskripsi Kamera 3', 'White', '192.168.28.149', 'CCTV', 'Brand D', 'V1.4', '2024-11-28', 1, 1, 8, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(39, 'CAM 4-L8-G1', 'http://example.com/stream4', 'Deskripsi Kamera 4', 'White', '192.168.41.202', 'Surveillance', 'Brand E', 'V5.5', '2024-08-14', 1, 1, 8, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(40, 'CAM 5-L8-G1', 'http://example.com/stream5', 'Deskripsi Kamera 5', 'Gray', '192.168.39.83', 'Surveillance', 'Brand F', 'V4.4', '2024-12-03', 1, 1, 8, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(41, 'CAM 1-L9-G1', 'http://example.com/stream1', 'Deskripsi Kamera 1', 'Gray', '192.168.199.214', 'CCTV', 'Brand B', 'V4.3', '2025-01-04', 1, 1, 9, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(42, 'CAM 2-L9-G1', 'http://example.com/stream2', 'Deskripsi Kamera 2', 'White', '192.168.26.92', 'Surveillance', 'Brand C', 'V2.3', '2024-11-09', 1, 1, 9, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(43, 'CAM 3-L9-G1', 'http://example.com/stream3', 'Deskripsi Kamera 3', 'Black', '192.168.56.121', 'CCTV', 'Brand D', 'V5.7', '2024-04-23', 1, 1, 9, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(44, 'CAM 4-L9-G1', 'http://example.com/stream4', 'Deskripsi Kamera 4', 'White', '192.168.162.149', 'CCTV', 'Brand E', 'V4.1', '2024-12-25', 1, 1, 9, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(45, 'CAM 5-L9-G1', 'http://example.com/stream5', 'Deskripsi Kamera 5', 'White', '192.168.112.168', 'CCTV', 'Brand F', 'V3.5', '2024-04-27', 1, 1, 9, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(46, 'CAM 1-L10-G1', 'http://example.com/stream1', 'Deskripsi Kamera 1', 'White', '192.168.45.89', 'Surveillance', 'Brand B', 'V2.8', '2024-04-22', 1, 1, 10, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(47, 'CAM 2-L10-G1', 'http://example.com/stream2', 'Deskripsi Kamera 2', 'White', '192.168.51.79', 'CCTV', 'Brand C', 'V4.2', '2024-06-05', 1, 1, 10, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(48, 'CAM 3-L10-G1', 'http://example.com/stream3', 'Deskripsi Kamera 3', 'Gray', '192.168.214.184', 'Surveillance', 'Brand D', 'V2.2', '2024-02-29', 1, 1, 10, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(49, 'CAM 4-L10-G1', 'http://example.com/stream4', 'Deskripsi Kamera 4', 'White', '192.168.83.133', 'CCTV', 'Brand E', 'V5.8', '2024-02-05', 1, 1, 10, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(50, 'CAM 5-L10-G1', 'http://example.com/stream5', 'Deskripsi Kamera 5', 'White', '192.168.212.202', 'Surveillance', 'Brand F', 'V2.6', '2024-05-11', 1, 1, 10, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(51, 'CAM 1-L1-G2', 'http://example.com/stream1', 'Deskripsi Kamera 1', 'Gray', '192.168.148.220', 'Surveillance', 'Brand B', 'V3.9', '2024-08-20', 1, 2, 11, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(52, 'CAM 2-L1-G2', 'http://example.com/stream2', 'Deskripsi Kamera 2', 'Black', '192.168.185.61', 'CCTV', 'Brand C', 'V4.3', '2024-09-16', 1, 2, 11, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(53, 'CAM 3-L1-G2', 'http://example.com/stream3', 'Deskripsi Kamera 3', 'Gray', '192.168.190.188', 'CCTV', 'Brand D', 'V3.5', '2024-03-25', 1, 2, 11, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(54, 'CAM 4-L1-G2', 'http://example.com/stream4', 'Deskripsi Kamera 4', 'Gray', '192.168.196.53', 'CCTV', 'Brand E', 'V1.9', '2024-11-19', 1, 2, 11, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(55, 'CAM 5-L1-G2', 'http://example.com/stream5', 'Deskripsi Kamera 5', 'White', '192.168.85.159', 'CCTV', 'Brand F', 'V1.6', '2024-11-11', 1, 2, 11, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(56, 'CAM 1-L2-G2', 'http://example.com/stream1', 'Deskripsi Kamera 1', 'White', '192.168.84.60', 'CCTV', 'Brand B', 'V4.1', '2024-07-01', 1, 2, 12, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(57, 'CAM 2-L2-G2', 'http://example.com/stream2', 'Deskripsi Kamera 2', 'White', '192.168.165.226', 'Surveillance', 'Brand C', 'V5.2', '2024-12-18', 1, 2, 12, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(58, 'CAM 3-L2-G2', 'http://example.com/stream3', 'Deskripsi Kamera 3', 'Gray', '192.168.144.197', 'CCTV', 'Brand D', 'V1.8', '2024-03-31', 1, 2, 12, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(59, 'CAM 4-L2-G2', 'http://example.com/stream4', 'Deskripsi Kamera 4', 'Gray', '192.168.90.214', 'Surveillance', 'Brand E', 'V2.9', '2024-10-25', 1, 2, 12, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(60, 'CAM 5-L2-G2', 'http://example.com/stream5', 'Deskripsi Kamera 5', 'Gray', '192.168.26.232', 'Surveillance', 'Brand F', 'V2.2', '2024-07-09', 1, 2, 12, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(61, 'CAM 1-L3-G2', 'http://example.com/stream1', 'Deskripsi Kamera 1', 'White', '192.168.119.66', 'CCTV', 'Brand B', 'V2.4', '2024-05-03', 1, 2, 13, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(62, 'CAM 2-L3-G2', 'http://example.com/stream2', 'Deskripsi Kamera 2', 'Black', '192.168.147.224', 'CCTV', 'Brand C', 'V1.0', '2024-07-19', 1, 2, 13, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(63, 'CAM 3-L3-G2', 'http://example.com/stream3', 'Deskripsi Kamera 3', 'Black', '192.168.21.75', 'CCTV', 'Brand D', 'V1.4', '2024-06-03', 1, 2, 13, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(64, 'CAM 4-L3-G2', 'http://example.com/stream4', 'Deskripsi Kamera 4', 'Black', '192.168.173.8', 'Surveillance', 'Brand E', 'V5.2', '2024-07-29', 1, 2, 13, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(65, 'CAM 5-L3-G2', 'http://example.com/stream5', 'Deskripsi Kamera 5', 'Gray', '192.168.9.16', 'CCTV', 'Brand F', 'V3.8', '2024-06-26', 1, 2, 13, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(66, 'CAM 1-L4-G2', 'http://example.com/stream1', 'Deskripsi Kamera 1', 'White', '192.168.108.53', 'Surveillance', 'Brand B', 'V3.0', '2024-02-17', 1, 2, 14, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(67, 'CAM 2-L4-G2', 'http://example.com/stream2', 'Deskripsi Kamera 2', 'Black', '192.168.184.37', 'Surveillance', 'Brand C', 'V3.0', '2024-02-10', 1, 2, 14, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(68, 'CAM 3-L4-G2', 'http://example.com/stream3', 'Deskripsi Kamera 3', 'White', '192.168.106.227', 'Surveillance', 'Brand D', 'V5.8', '2024-08-12', 1, 2, 14, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(69, 'CAM 4-L4-G2', 'http://example.com/stream4', 'Deskripsi Kamera 4', 'Black', '192.168.85.143', 'CCTV', 'Brand E', 'V5.7', '2024-12-17', 1, 2, 14, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(70, 'CAM 5-L4-G2', 'http://example.com/stream5', 'Deskripsi Kamera 5', 'Black', '192.168.245.157', 'CCTV', 'Brand F', 'V5.7', '2024-03-18', 1, 2, 14, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(71, 'CAM 1-L5-G2', 'http://example.com/stream1', 'Deskripsi Kamera 1', 'Gray', '192.168.43.208', 'Surveillance', 'Brand B', 'V5.3', '2024-01-25', 1, 2, 15, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(72, 'CAM 2-L5-G2', 'http://example.com/stream2', 'Deskripsi Kamera 2', 'Black', '192.168.170.174', 'CCTV', 'Brand C', 'V5.3', '2024-05-09', 1, 2, 15, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(73, 'CAM 3-L5-G2', 'http://example.com/stream3', 'Deskripsi Kamera 3', 'Black', '192.168.102.207', 'Surveillance', 'Brand D', 'V3.5', '2024-05-29', 1, 2, 15, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(74, 'CAM 4-L5-G2', 'http://example.com/stream4', 'Deskripsi Kamera 4', 'White', '192.168.25.145', 'CCTV', 'Brand E', 'V1.8', '2024-07-30', 1, 2, 15, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(75, 'CAM 5-L5-G2', 'http://example.com/stream5', 'Deskripsi Kamera 5', 'Gray', '192.168.208.130', 'Surveillance', 'Brand F', 'V4.5', '2024-04-29', 1, 2, 15, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(76, 'CAM 1-L6-G2', 'http://example.com/stream1', 'Deskripsi Kamera 1', 'Black', '192.168.117.139', 'Surveillance', 'Brand B', 'V2.5', '2024-06-18', 1, 2, 16, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(77, 'CAM 2-L6-G2', 'http://example.com/stream2', 'Deskripsi Kamera 2', 'White', '192.168.90.169', 'Surveillance', 'Brand C', 'V1.1', '2024-03-22', 1, 2, 16, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(78, 'CAM 3-L6-G2', 'http://example.com/stream3', 'Deskripsi Kamera 3', 'White', '192.168.57.90', 'CCTV', 'Brand D', 'V5.2', '2024-07-27', 1, 2, 16, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(79, 'CAM 4-L6-G2', 'http://example.com/stream4', 'Deskripsi Kamera 4', 'Black', '192.168.156.205', 'CCTV', 'Brand E', 'V2.4', '2024-05-01', 1, 2, 16, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(80, 'CAM 5-L6-G2', 'http://example.com/stream5', 'Deskripsi Kamera 5', 'Gray', '192.168.210.186', 'CCTV', 'Brand F', 'V2.4', '2024-01-11', 1, 2, 16, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(81, 'CAM 1-L7-G2', 'http://example.com/stream1', 'Deskripsi Kamera 1', 'Gray', '192.168.53.136', 'CCTV', 'Brand B', 'V4.3', '2024-01-31', 1, 2, 17, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(82, 'CAM 2-L7-G2', 'http://example.com/stream2', 'Deskripsi Kamera 2', 'White', '192.168.146.27', 'Surveillance', 'Brand C', 'V5.7', '2024-08-18', 1, 2, 17, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(83, 'CAM 3-L7-G2', 'http://example.com/stream3', 'Deskripsi Kamera 3', 'Black', '192.168.217.122', 'CCTV', 'Brand D', 'V5.1', '2024-07-30', 1, 2, 17, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(84, 'CAM 4-L7-G2', 'http://example.com/stream4', 'Deskripsi Kamera 4', 'Gray', '192.168.150.180', 'CCTV', 'Brand E', 'V2.8', '2024-04-04', 1, 2, 17, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(85, 'CAM 5-L7-G2', 'http://example.com/stream5', 'Deskripsi Kamera 5', 'Black', '192.168.97.115', 'CCTV', 'Brand F', 'V3.5', '2024-05-19', 1, 2, 17, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(86, 'CAM 1-L8-G2', 'http://example.com/stream1', 'Deskripsi Kamera 1', 'Black', '192.168.255.181', 'Surveillance', 'Brand B', 'V3.2', '2024-05-05', 1, 2, 18, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(87, 'CAM 2-L8-G2', 'http://example.com/stream2', 'Deskripsi Kamera 2', 'Black', '192.168.53.168', 'Surveillance', 'Brand C', 'V1.2', '2024-08-25', 1, 2, 18, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(88, 'CAM 3-L8-G2', 'http://example.com/stream3', 'Deskripsi Kamera 3', 'Gray', '192.168.203.144', 'Surveillance', 'Brand D', 'V1.7', '2024-12-17', 1, 2, 18, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(89, 'CAM 4-L8-G2', 'http://example.com/stream4', 'Deskripsi Kamera 4', 'White', '192.168.251.20', 'Surveillance', 'Brand E', 'V1.7', '2024-01-20', 1, 2, 18, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(90, 'CAM 5-L8-G2', 'http://example.com/stream5', 'Deskripsi Kamera 5', 'White', '192.168.23.29', 'Surveillance', 'Brand F', 'V4.1', '2024-03-16', 1, 2, 18, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(91, 'CAM 1-L9-G2', 'http://example.com/stream1', 'Deskripsi Kamera 1', 'Black', '192.168.171.254', 'CCTV', 'Brand B', 'V5.9', '2024-12-14', 1, 2, 19, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(92, 'CAM 2-L9-G2', 'http://example.com/stream2', 'Deskripsi Kamera 2', 'Gray', '192.168.81.146', 'Surveillance', 'Brand C', 'V2.3', '2024-04-29', 1, 2, 19, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(93, 'CAM 3-L9-G2', 'http://example.com/stream3', 'Deskripsi Kamera 3', 'Black', '192.168.10.174', 'CCTV', 'Brand D', 'V5.4', '2024-12-06', 1, 2, 19, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(94, 'CAM 4-L9-G2', 'http://example.com/stream4', 'Deskripsi Kamera 4', 'White', '192.168.132.236', 'Surveillance', 'Brand E', 'V4.8', '2024-02-08', 1, 2, 19, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(95, 'CAM 5-L9-G2', 'http://example.com/stream5', 'Deskripsi Kamera 5', 'Black', '192.168.101.206', 'Surveillance', 'Brand F', 'V3.3', '2025-01-04', 1, 2, 19, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(96, 'CAM 1-L10-G2', 'http://example.com/stream1', 'Deskripsi Kamera 1', 'Gray', '192.168.152.214', 'CCTV', 'Brand B', 'V5.3', '2024-04-14', 1, 2, 20, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(97, 'CAM 2-L10-G2', 'http://example.com/stream2', 'Deskripsi Kamera 2', 'White', '192.168.196.215', 'CCTV', 'Brand C', 'V1.6', '2024-04-12', 1, 2, 20, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(98, 'CAM 3-L10-G2', 'http://example.com/stream3', 'Deskripsi Kamera 3', 'Black', '192.168.178.133', 'Surveillance', 'Brand D', 'V1.7', '2024-10-24', 1, 2, 20, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(99, 'CAM 4-L10-G2', 'http://example.com/stream4', 'Deskripsi Kamera 4', 'Black', '192.168.212.132', 'CCTV', 'Brand E', 'V2.8', '2024-03-08', 1, 2, 20, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(100, 'CAM 5-L10-G2', 'http://example.com/stream5', 'Deskripsi Kamera 5', 'Black', '192.168.27.230', 'Surveillance', 'Brand F', 'V4.4', '2024-10-25', 1, 2, 20, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(101, 'CAM 1-L1-G3', 'http://example.com/stream1', 'Deskripsi Kamera 1', 'Black', '192.168.251.208', 'CCTV', 'Brand B', 'V1.7', '2024-06-28', 1, 3, 21, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(102, 'CAM 2-L1-G3', 'http://example.com/stream2', 'Deskripsi Kamera 2', 'Black', '192.168.95.9', 'CCTV', 'Brand C', 'V3.7', '2024-12-01', 1, 3, 21, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(103, 'CAM 3-L1-G3', 'http://example.com/stream3', 'Deskripsi Kamera 3', 'Black', '192.168.126.161', 'CCTV', 'Brand D', 'V5.4', '2024-04-28', 1, 3, 21, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(104, 'CAM 4-L1-G3', 'http://example.com/stream4', 'Deskripsi Kamera 4', 'Black', '192.168.220.70', 'CCTV', 'Brand E', 'V1.3', '2024-08-01', 1, 3, 21, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(105, 'CAM 5-L1-G3', 'http://example.com/stream5', 'Deskripsi Kamera 5', 'Black', '192.168.5.195', 'Surveillance', 'Brand F', 'V1.4', '2024-03-17', 1, 3, 21, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(106, 'CAM 1-L2-G3', 'http://example.com/stream1', 'Deskripsi Kamera 1', 'Black', '192.168.91.234', 'CCTV', 'Brand B', 'V2.1', '2024-01-18', 1, 3, 22, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(107, 'CAM 2-L2-G3', 'http://example.com/stream2', 'Deskripsi Kamera 2', 'Gray', '192.168.86.242', 'Surveillance', 'Brand C', 'V2.2', '2024-09-08', 1, 3, 22, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(108, 'CAM 3-L2-G3', 'http://example.com/stream3', 'Deskripsi Kamera 3', 'White', '192.168.213.203', 'CCTV', 'Brand D', 'V1.7', '2024-04-15', 1, 3, 22, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(109, 'CAM 4-L2-G3', 'http://example.com/stream4', 'Deskripsi Kamera 4', 'White', '192.168.184.19', 'CCTV', 'Brand E', 'V2.3', '2024-10-15', 1, 3, 22, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(110, 'CAM 5-L2-G3', 'http://example.com/stream5', 'Deskripsi Kamera 5', 'Gray', '192.168.123.66', 'Surveillance', 'Brand F', 'V1.8', '2024-04-24', 1, 3, 22, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(111, 'CAM 1-L3-G3', 'http://example.com/stream1', 'Deskripsi Kamera 1', 'White', '192.168.103.132', 'Surveillance', 'Brand B', 'V1.8', '2024-12-23', 1, 3, 23, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(112, 'CAM 2-L3-G3', 'http://example.com/stream2', 'Deskripsi Kamera 2', 'Black', '192.168.94.15', 'Surveillance', 'Brand C', 'V3.4', '2024-11-19', 1, 3, 23, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(113, 'CAM 3-L3-G3', 'http://example.com/stream3', 'Deskripsi Kamera 3', 'White', '192.168.120.206', 'Surveillance', 'Brand D', 'V5.3', '2024-11-30', 1, 3, 23, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(114, 'CAM 4-L3-G3', 'http://example.com/stream4', 'Deskripsi Kamera 4', 'White', '192.168.251.228', 'Surveillance', 'Brand E', 'V1.4', '2024-09-27', 1, 3, 23, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(115, 'CAM 5-L3-G3', 'http://example.com/stream5', 'Deskripsi Kamera 5', 'Black', '192.168.105.223', 'Surveillance', 'Brand F', 'V1.5', '2024-05-18', 1, 3, 23, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(116, 'CAM 1-L4-G3', 'http://example.com/stream1', 'Deskripsi Kamera 1', 'Black', '192.168.222.156', 'CCTV', 'Brand B', 'V3.0', '2024-12-24', 1, 3, 24, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(117, 'CAM 2-L4-G3', 'http://example.com/stream2', 'Deskripsi Kamera 2', 'Gray', '192.168.93.72', 'Surveillance', 'Brand C', 'V1.7', '2024-09-06', 1, 3, 24, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(118, 'CAM 3-L4-G3', 'http://example.com/stream3', 'Deskripsi Kamera 3', 'Gray', '192.168.215.167', 'CCTV', 'Brand D', 'V1.4', '2024-03-10', 1, 3, 24, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(119, 'CAM 4-L4-G3', 'http://example.com/stream4', 'Deskripsi Kamera 4', 'Gray', '192.168.184.54', 'CCTV', 'Brand E', 'V4.5', '2024-12-05', 1, 3, 24, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(120, 'CAM 5-L4-G3', 'http://example.com/stream5', 'Deskripsi Kamera 5', 'Gray', '192.168.87.165', 'Surveillance', 'Brand F', 'V1.4', '2024-10-16', 1, 3, 24, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(121, 'CAM 1-L5-G3', 'http://example.com/stream1', 'Deskripsi Kamera 1', 'Black', '192.168.61.252', 'Surveillance', 'Brand B', 'V5.4', '2024-01-22', 1, 3, 25, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(122, 'CAM 2-L5-G3', 'http://example.com/stream2', 'Deskripsi Kamera 2', 'White', '192.168.145.134', 'CCTV', 'Brand C', 'V1.7', '2024-06-08', 1, 3, 25, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(123, 'CAM 3-L5-G3', 'http://example.com/stream3', 'Deskripsi Kamera 3', 'Black', '192.168.94.218', 'CCTV', 'Brand D', 'V3.8', '2024-04-06', 1, 3, 25, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(124, 'CAM 4-L5-G3', 'http://example.com/stream4', 'Deskripsi Kamera 4', 'Gray', '192.168.115.150', 'CCTV', 'Brand E', 'V4.3', '2024-09-06', 1, 3, 25, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(125, 'CAM 5-L5-G3', 'http://example.com/stream5', 'Deskripsi Kamera 5', 'Gray', '192.168.31.156', 'CCTV', 'Brand F', 'V4.2', '2024-10-26', 1, 3, 25, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(126, 'CAM 1-L6-G3', 'http://example.com/stream1', 'Deskripsi Kamera 1', 'White', '192.168.148.60', 'CCTV', 'Brand B', 'V5.1', '2024-04-17', 1, 3, 26, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(127, 'CAM 2-L6-G3', 'http://example.com/stream2', 'Deskripsi Kamera 2', 'White', '192.168.185.168', 'Surveillance', 'Brand C', 'V4.0', '2024-07-11', 1, 3, 26, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(128, 'CAM 3-L6-G3', 'http://example.com/stream3', 'Deskripsi Kamera 3', 'Gray', '192.168.153.164', 'CCTV', 'Brand D', 'V3.6', '2024-05-14', 1, 3, 26, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(129, 'CAM 4-L6-G3', 'http://example.com/stream4', 'Deskripsi Kamera 4', 'Gray', '192.168.210.97', 'CCTV', 'Brand E', 'V1.7', '2024-05-23', 1, 3, 26, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(130, 'CAM 5-L6-G3', 'http://example.com/stream5', 'Deskripsi Kamera 5', 'White', '192.168.129.25', 'CCTV', 'Brand F', 'V5.3', '2024-02-27', 1, 3, 26, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(131, 'CAM 1-L7-G3', 'http://example.com/stream1', 'Deskripsi Kamera 1', 'Gray', '192.168.244.118', 'Surveillance', 'Brand B', 'V2.2', '2024-06-08', 1, 3, 27, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(132, 'CAM 2-L7-G3', 'http://example.com/stream2', 'Deskripsi Kamera 2', 'Black', '192.168.253.117', 'CCTV', 'Brand C', 'V5.0', '2024-06-27', 1, 3, 27, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(133, 'CAM 3-L7-G3', 'http://example.com/stream3', 'Deskripsi Kamera 3', 'White', '192.168.103.217', 'CCTV', 'Brand D', 'V1.7', '2024-11-13', 1, 3, 27, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(134, 'CAM 4-L7-G3', 'http://example.com/stream4', 'Deskripsi Kamera 4', 'White', '192.168.106.48', 'Surveillance', 'Brand E', 'V5.0', '2024-07-14', 1, 3, 27, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(135, 'CAM 5-L7-G3', 'http://example.com/stream5', 'Deskripsi Kamera 5', 'Black', '192.168.222.253', 'CCTV', 'Brand F', 'V5.0', '2024-07-20', 1, 3, 27, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(136, 'CAM 1-L8-G3', 'http://example.com/stream1', 'Deskripsi Kamera 1', 'Black', '192.168.73.159', 'CCTV', 'Brand B', 'V2.1', '2024-01-25', 1, 3, 28, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(137, 'CAM 2-L8-G3', 'http://example.com/stream2', 'Deskripsi Kamera 2', 'White', '192.168.23.138', 'Surveillance', 'Brand C', 'V3.8', '2024-04-03', 1, 3, 28, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(138, 'CAM 3-L8-G3', 'http://example.com/stream3', 'Deskripsi Kamera 3', 'White', '192.168.125.21', 'CCTV', 'Brand D', 'V2.5', '2024-10-31', 1, 3, 28, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(139, 'CAM 4-L8-G3', 'http://example.com/stream4', 'Deskripsi Kamera 4', 'White', '192.168.23.69', 'CCTV', 'Brand E', 'V3.3', '2024-11-09', 1, 3, 28, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(140, 'CAM 5-L8-G3', 'http://example.com/stream5', 'Deskripsi Kamera 5', 'Gray', '192.168.53.141', 'Surveillance', 'Brand F', 'V1.6', '2024-11-29', 1, 3, 28, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(141, 'CAM 1-L9-G3', 'http://example.com/stream1', 'Deskripsi Kamera 1', 'White', '192.168.152.68', 'CCTV', 'Brand B', 'V5.6', '2024-10-01', 1, 3, 29, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(142, 'CAM 2-L9-G3', 'http://example.com/stream2', 'Deskripsi Kamera 2', 'Black', '192.168.5.31', 'Surveillance', 'Brand C', 'V5.4', '2024-08-24', 1, 3, 29, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(143, 'CAM 3-L9-G3', 'http://example.com/stream3', 'Deskripsi Kamera 3', 'White', '192.168.200.75', 'CCTV', 'Brand D', 'V2.2', '2024-04-05', 1, 3, 29, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(144, 'CAM 4-L9-G3', 'http://example.com/stream4', 'Deskripsi Kamera 4', 'White', '192.168.242.21', 'CCTV', 'Brand E', 'V1.2', '2024-08-23', 1, 3, 29, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(145, 'CAM 5-L9-G3', 'http://example.com/stream5', 'Deskripsi Kamera 5', 'Gray', '192.168.227.100', 'Surveillance', 'Brand F', 'V1.3', '2024-01-14', 1, 3, 29, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(146, 'CAM 1-L10-G3', 'http://example.com/stream1', 'Deskripsi Kamera 1', 'White', '192.168.101.92', 'Surveillance', 'Brand B', 'V2.5', '2024-08-24', 1, 3, 30, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(147, 'CAM 2-L10-G3', 'http://example.com/stream2', 'Deskripsi Kamera 2', 'Gray', '192.168.70.196', 'Surveillance', 'Brand C', 'V2.8', '2024-02-11', 1, 3, 30, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(148, 'CAM 3-L10-G3', 'http://example.com/stream3', 'Deskripsi Kamera 3', 'Gray', '192.168.147.31', 'Surveillance', 'Brand D', 'V1.3', '2024-06-02', 1, 3, 30, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(149, 'CAM 4-L10-G3', 'http://example.com/stream4', 'Deskripsi Kamera 4', 'White', '192.168.52.24', 'Surveillance', 'Brand E', 'V4.5', '2024-08-13', 1, 3, 30, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(150, 'CAM 5-L10-G3', 'http://example.com/stream5', 'Deskripsi Kamera 5', 'White', '192.168.74.205', 'CCTV', 'Brand F', 'V5.2', '2024-02-20', 1, 3, 30, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(151, 'CAM 1-L1-G4', 'http://example.com/stream1', 'Deskripsi Kamera 1', 'Black', '192.168.19.45', 'Surveillance', 'Brand B', 'V2.3', '2024-03-22', 2, 4, 31, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(152, 'CAM 2-L1-G4', 'http://example.com/stream2', 'Deskripsi Kamera 2', 'White', '192.168.55.176', 'CCTV', 'Brand C', 'V1.1', '2024-06-07', 2, 4, 31, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(153, 'CAM 3-L1-G4', 'http://example.com/stream3', 'Deskripsi Kamera 3', 'Gray', '192.168.159.51', 'Surveillance', 'Brand D', 'V2.6', '2024-02-15', 2, 4, 31, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(154, 'CAM 4-L1-G4', 'http://example.com/stream4', 'Deskripsi Kamera 4', 'White', '192.168.109.234', 'Surveillance', 'Brand E', 'V3.6', '2024-04-24', 2, 4, 31, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(155, 'CAM 5-L1-G4', 'http://example.com/stream5', 'Deskripsi Kamera 5', 'White', '192.168.201.160', 'Surveillance', 'Brand F', 'V1.4', '2024-06-01', 2, 4, 31, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(156, 'CAM 1-L2-G4', 'http://example.com/stream1', 'Deskripsi Kamera 1', 'Black', '192.168.235.210', 'CCTV', 'Brand B', 'V1.6', '2024-03-02', 2, 4, 32, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(157, 'CAM 2-L2-G4', 'http://example.com/stream2', 'Deskripsi Kamera 2', 'Gray', '192.168.218.81', 'Surveillance', 'Brand C', 'V1.9', '2025-01-03', 2, 4, 32, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(158, 'CAM 3-L2-G4', 'http://example.com/stream3', 'Deskripsi Kamera 3', 'Gray', '192.168.59.251', 'CCTV', 'Brand D', 'V3.2', '2024-05-08', 2, 4, 32, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(159, 'CAM 4-L2-G4', 'http://example.com/stream4', 'Deskripsi Kamera 4', 'Black', '192.168.126.206', 'CCTV', 'Brand E', 'V1.8', '2024-06-15', 2, 4, 32, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(160, 'CAM 5-L2-G4', 'http://example.com/stream5', 'Deskripsi Kamera 5', 'Black', '192.168.17.228', 'Surveillance', 'Brand F', 'V3.8', '2024-01-12', 2, 4, 32, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(161, 'CAM 1-L3-G4', 'http://example.com/stream1', 'Deskripsi Kamera 1', 'Gray', '192.168.128.15', 'Surveillance', 'Brand B', 'V5.3', '2024-05-20', 2, 4, 33, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(162, 'CAM 2-L3-G4', 'http://example.com/stream2', 'Deskripsi Kamera 2', 'Gray', '192.168.242.151', 'CCTV', 'Brand C', 'V3.6', '2024-04-06', 2, 4, 33, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(163, 'CAM 3-L3-G4', 'http://example.com/stream3', 'Deskripsi Kamera 3', 'White', '192.168.216.141', 'CCTV', 'Brand D', 'V4.6', '2024-02-27', 2, 4, 33, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(164, 'CAM 4-L3-G4', 'http://example.com/stream4', 'Deskripsi Kamera 4', 'Gray', '192.168.52.118', 'CCTV', 'Brand E', 'V1.0', '2024-06-20', 2, 4, 33, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(165, 'CAM 5-L3-G4', 'http://example.com/stream5', 'Deskripsi Kamera 5', 'White', '192.168.151.66', 'Surveillance', 'Brand F', 'V4.8', '2024-09-09', 2, 4, 33, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(166, 'CAM 1-L4-G4', 'http://example.com/stream1', 'Deskripsi Kamera 1', 'White', '192.168.102.82', 'CCTV', 'Brand B', 'V2.9', '2024-05-24', 2, 4, 34, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(167, 'CAM 2-L4-G4', 'http://example.com/stream2', 'Deskripsi Kamera 2', 'Gray', '192.168.158.8', 'Surveillance', 'Brand C', 'V2.7', '2024-12-11', 2, 4, 34, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(168, 'CAM 3-L4-G4', 'http://example.com/stream3', 'Deskripsi Kamera 3', 'Gray', '192.168.14.244', 'CCTV', 'Brand D', 'V1.4', '2024-07-03', 2, 4, 34, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(169, 'CAM 4-L4-G4', 'http://example.com/stream4', 'Deskripsi Kamera 4', 'White', '192.168.5.124', 'CCTV', 'Brand E', 'V4.5', '2024-03-12', 2, 4, 34, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(170, 'CAM 5-L4-G4', 'http://example.com/stream5', 'Deskripsi Kamera 5', 'Black', '192.168.30.57', 'Surveillance', 'Brand F', 'V3.8', '2024-08-05', 2, 4, 34, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(171, 'CAM 1-L5-G4', 'http://example.com/stream1', 'Deskripsi Kamera 1', 'White', '192.168.38.8', 'Surveillance', 'Brand B', 'V1.1', '2024-06-07', 2, 4, 35, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(172, 'CAM 2-L5-G4', 'http://example.com/stream2', 'Deskripsi Kamera 2', 'Black', '192.168.72.162', 'Surveillance', 'Brand C', 'V5.0', '2024-10-13', 2, 4, 35, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(173, 'CAM 3-L5-G4', 'http://example.com/stream3', 'Deskripsi Kamera 3', 'Gray', '192.168.44.231', 'Surveillance', 'Brand D', 'V3.7', '2024-06-23', 2, 4, 35, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(174, 'CAM 4-L5-G4', 'http://example.com/stream4', 'Deskripsi Kamera 4', 'Gray', '192.168.210.208', 'Surveillance', 'Brand E', 'V3.7', '2024-12-05', 2, 4, 35, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(175, 'CAM 5-L5-G4', 'http://example.com/stream5', 'Deskripsi Kamera 5', 'Black', '192.168.139.241', 'Surveillance', 'Brand F', 'V3.8', '2024-10-24', 2, 4, 35, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(176, 'CAM 1-L6-G4', 'http://example.com/stream1', 'Deskripsi Kamera 1', 'White', '192.168.216.251', 'CCTV', 'Brand B', 'V2.2', '2024-03-24', 2, 4, 36, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(177, 'CAM 2-L6-G4', 'http://example.com/stream2', 'Deskripsi Kamera 2', 'Gray', '192.168.13.126', 'CCTV', 'Brand C', 'V3.4', '2024-03-31', 2, 4, 36, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(178, 'CAM 3-L6-G4', 'http://example.com/stream3', 'Deskripsi Kamera 3', 'White', '192.168.171.110', 'Surveillance', 'Brand D', 'V3.9', '2025-01-05', 2, 4, 36, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(179, 'CAM 4-L6-G4', 'http://example.com/stream4', 'Deskripsi Kamera 4', 'Gray', '192.168.138.4', 'Surveillance', 'Brand E', 'V3.7', '2024-02-22', 2, 4, 36, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(180, 'CAM 5-L6-G4', 'http://example.com/stream5', 'Deskripsi Kamera 5', 'Gray', '192.168.165.61', 'Surveillance', 'Brand F', 'V3.9', '2024-12-08', 2, 4, 36, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(181, 'CAM 1-L7-G4', 'http://example.com/stream1', 'Deskripsi Kamera 1', 'White', '192.168.179.228', 'CCTV', 'Brand B', 'V3.2', '2024-10-06', 2, 4, 37, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(182, 'CAM 2-L7-G4', 'http://example.com/stream2', 'Deskripsi Kamera 2', 'Black', '192.168.59.233', 'CCTV', 'Brand C', 'V3.3', '2024-10-02', 2, 4, 37, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(183, 'CAM 3-L7-G4', 'http://example.com/stream3', 'Deskripsi Kamera 3', 'Black', '192.168.125.10', 'CCTV', 'Brand D', 'V2.3', '2024-11-13', 2, 4, 37, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(184, 'CAM 4-L7-G4', 'http://example.com/stream4', 'Deskripsi Kamera 4', 'White', '192.168.147.128', 'Surveillance', 'Brand E', 'V2.4', '2024-12-13', 2, 4, 37, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(185, 'CAM 5-L7-G4', 'http://example.com/stream5', 'Deskripsi Kamera 5', 'White', '192.168.204.159', 'CCTV', 'Brand F', 'V1.7', '2024-05-13', 2, 4, 37, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(186, 'CAM 1-L8-G4', 'http://example.com/stream1', 'Deskripsi Kamera 1', 'White', '192.168.97.216', 'Surveillance', 'Brand B', 'V3.5', '2024-09-04', 2, 4, 38, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(187, 'CAM 2-L8-G4', 'http://example.com/stream2', 'Deskripsi Kamera 2', 'White', '192.168.71.205', 'CCTV', 'Brand C', 'V4.3', '2024-03-28', 2, 4, 38, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(188, 'CAM 3-L8-G4', 'http://example.com/stream3', 'Deskripsi Kamera 3', 'Black', '192.168.240.120', 'Surveillance', 'Brand D', 'V1.3', '2024-12-21', 2, 4, 38, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(189, 'CAM 4-L8-G4', 'http://example.com/stream4', 'Deskripsi Kamera 4', 'White', '192.168.225.248', 'Surveillance', 'Brand E', 'V5.4', '2024-09-29', 2, 4, 38, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(190, 'CAM 5-L8-G4', 'http://example.com/stream5', 'Deskripsi Kamera 5', 'Black', '192.168.103.70', 'Surveillance', 'Brand F', 'V3.4', '2024-06-09', 2, 4, 38, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(191, 'CAM 1-L9-G4', 'http://example.com/stream1', 'Deskripsi Kamera 1', 'Gray', '192.168.7.211', 'CCTV', 'Brand B', 'V2.2', '2024-04-23', 2, 4, 39, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(192, 'CAM 2-L9-G4', 'http://example.com/stream2', 'Deskripsi Kamera 2', 'Black', '192.168.141.111', 'CCTV', 'Brand C', 'V4.4', '2024-07-29', 2, 4, 39, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(193, 'CAM 3-L9-G4', 'http://example.com/stream3', 'Deskripsi Kamera 3', 'Gray', '192.168.89.226', 'Surveillance', 'Brand D', 'V4.4', '2024-11-06', 2, 4, 39, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(194, 'CAM 4-L9-G4', 'http://example.com/stream4', 'Deskripsi Kamera 4', 'Gray', '192.168.231.64', 'CCTV', 'Brand E', 'V5.3', '2024-07-10', 2, 4, 39, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(195, 'CAM 5-L9-G4', 'http://example.com/stream5', 'Deskripsi Kamera 5', 'Gray', '192.168.166.190', 'CCTV', 'Brand F', 'V2.5', '2024-03-25', 2, 4, 39, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(196, 'CAM 1-L10-G4', 'http://example.com/stream1', 'Deskripsi Kamera 1', 'Black', '192.168.126.32', 'CCTV', 'Brand B', 'V5.1', '2024-11-02', 2, 4, 40, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(197, 'CAM 2-L10-G4', 'http://example.com/stream2', 'Deskripsi Kamera 2', 'Black', '192.168.20.190', 'CCTV', 'Brand C', 'V5.5', '2024-07-12', 2, 4, 40, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(198, 'CAM 3-L10-G4', 'http://example.com/stream3', 'Deskripsi Kamera 3', 'Black', '192.168.53.223', 'Surveillance', 'Brand D', 'V5.9', '2024-05-18', 2, 4, 40, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(199, 'CAM 4-L10-G4', 'http://example.com/stream4', 'Deskripsi Kamera 4', 'White', '192.168.90.107', 'Surveillance', 'Brand E', 'V5.6', '2024-09-09', 2, 4, 40, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(200, 'CAM 5-L10-G4', 'http://example.com/stream5', 'Deskripsi Kamera 5', 'Black', '192.168.247.50', 'CCTV', 'Brand F', 'V2.9', '2024-06-17', 2, 4, 40, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(201, 'CAM 1-L1-G5', 'http://example.com/stream1', 'Deskripsi Kamera 1', 'Black', '192.168.42.26', 'CCTV', 'Brand B', 'V2.9', '2024-03-21', 2, 5, 41, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(202, 'CAM 2-L1-G5', 'http://example.com/stream2', 'Deskripsi Kamera 2', 'White', '192.168.189.25', 'Surveillance', 'Brand C', 'V5.2', '2024-07-12', 2, 5, 41, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(203, 'CAM 3-L1-G5', 'http://example.com/stream3', 'Deskripsi Kamera 3', 'Gray', '192.168.168.10', 'CCTV', 'Brand D', 'V4.9', '2024-05-09', 2, 5, 41, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(204, 'CAM 4-L1-G5', 'http://example.com/stream4', 'Deskripsi Kamera 4', 'White', '192.168.172.131', 'CCTV', 'Brand E', 'V1.2', '2024-06-30', 2, 5, 41, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(205, 'CAM 5-L1-G5', 'http://example.com/stream5', 'Deskripsi Kamera 5', 'Gray', '192.168.165.98', 'Surveillance', 'Brand F', 'V3.9', '2024-01-17', 2, 5, 41, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(206, 'CAM 1-L2-G5', 'http://example.com/stream1', 'Deskripsi Kamera 1', 'Gray', '192.168.116.28', 'CCTV', 'Brand B', 'V3.6', '2024-03-26', 2, 5, 42, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(207, 'CAM 2-L2-G5', 'http://example.com/stream2', 'Deskripsi Kamera 2', 'White', '192.168.148.246', 'Surveillance', 'Brand C', 'V3.3', '2024-02-04', 2, 5, 42, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(208, 'CAM 3-L2-G5', 'http://example.com/stream3', 'Deskripsi Kamera 3', 'Black', '192.168.147.87', 'CCTV', 'Brand D', 'V4.5', '2024-04-22', 2, 5, 42, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(209, 'CAM 4-L2-G5', 'http://example.com/stream4', 'Deskripsi Kamera 4', 'Black', '192.168.202.209', 'CCTV', 'Brand E', 'V4.8', '2024-04-08', 2, 5, 42, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(210, 'CAM 5-L2-G5', 'http://example.com/stream5', 'Deskripsi Kamera 5', 'Gray', '192.168.26.240', 'CCTV', 'Brand F', 'V1.4', '2024-06-28', 2, 5, 42, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(211, 'CAM 1-L3-G5', 'http://example.com/stream1', 'Deskripsi Kamera 1', 'Black', '192.168.171.165', 'CCTV', 'Brand B', 'V5.6', '2024-09-26', 2, 5, 43, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(212, 'CAM 2-L3-G5', 'http://example.com/stream2', 'Deskripsi Kamera 2', 'Black', '192.168.22.187', 'Surveillance', 'Brand C', 'V5.9', '2025-01-02', 2, 5, 43, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(213, 'CAM 3-L3-G5', 'http://example.com/stream3', 'Deskripsi Kamera 3', 'Gray', '192.168.96.213', 'Surveillance', 'Brand D', 'V1.6', '2024-02-01', 2, 5, 43, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(214, 'CAM 4-L3-G5', 'http://example.com/stream4', 'Deskripsi Kamera 4', 'Black', '192.168.61.51', 'CCTV', 'Brand E', 'V5.4', '2024-06-19', 2, 5, 43, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(215, 'CAM 5-L3-G5', 'http://example.com/stream5', 'Deskripsi Kamera 5', 'White', '192.168.215.39', 'Surveillance', 'Brand F', 'V1.1', '2025-01-03', 2, 5, 43, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(216, 'CAM 1-L4-G5', 'http://example.com/stream1', 'Deskripsi Kamera 1', 'Black', '192.168.108.170', 'Surveillance', 'Brand B', 'V2.4', '2024-07-13', 2, 5, 44, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(217, 'CAM 2-L4-G5', 'http://example.com/stream2', 'Deskripsi Kamera 2', 'White', '192.168.220.49', 'CCTV', 'Brand C', 'V4.6', '2024-06-13', 2, 5, 44, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(218, 'CAM 3-L4-G5', 'http://example.com/stream3', 'Deskripsi Kamera 3', 'White', '192.168.112.228', 'CCTV', 'Brand D', 'V4.5', '2024-12-08', 2, 5, 44, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(219, 'CAM 4-L4-G5', 'http://example.com/stream4', 'Deskripsi Kamera 4', 'White', '192.168.217.60', 'Surveillance', 'Brand E', 'V3.8', '2024-01-30', 2, 5, 44, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(220, 'CAM 5-L4-G5', 'http://example.com/stream5', 'Deskripsi Kamera 5', 'Black', '192.168.114.99', 'Surveillance', 'Brand F', 'V3.2', '2024-02-12', 2, 5, 44, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(221, 'CAM 1-L5-G5', 'http://example.com/stream1', 'Deskripsi Kamera 1', 'White', '192.168.38.184', 'CCTV', 'Brand B', 'V4.7', '2024-03-12', 2, 5, 45, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(222, 'CAM 2-L5-G5', 'http://example.com/stream2', 'Deskripsi Kamera 2', 'Black', '192.168.167.104', 'CCTV', 'Brand C', 'V4.6', '2024-07-02', 2, 5, 45, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(223, 'CAM 3-L5-G5', 'http://example.com/stream3', 'Deskripsi Kamera 3', 'Black', '192.168.175.252', 'Surveillance', 'Brand D', 'V3.5', '2024-05-21', 2, 5, 45, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(224, 'CAM 4-L5-G5', 'http://example.com/stream4', 'Deskripsi Kamera 4', 'White', '192.168.29.121', 'CCTV', 'Brand E', 'V5.9', '2024-05-26', 2, 5, 45, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(225, 'CAM 5-L5-G5', 'http://example.com/stream5', 'Deskripsi Kamera 5', 'Gray', '192.168.139.84', 'CCTV', 'Brand F', 'V4.8', '2024-02-09', 2, 5, 45, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(226, 'CAM 1-L6-G5', 'http://example.com/stream1', 'Deskripsi Kamera 1', 'Black', '192.168.194.188', 'CCTV', 'Brand B', 'V5.5', '2024-06-14', 2, 5, 46, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(227, 'CAM 2-L6-G5', 'http://example.com/stream2', 'Deskripsi Kamera 2', 'Gray', '192.168.209.149', 'Surveillance', 'Brand C', 'V1.4', '2024-10-07', 2, 5, 46, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(228, 'CAM 3-L6-G5', 'http://example.com/stream3', 'Deskripsi Kamera 3', 'Black', '192.168.111.78', 'Surveillance', 'Brand D', 'V1.8', '2024-11-27', 2, 5, 46, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(229, 'CAM 4-L6-G5', 'http://example.com/stream4', 'Deskripsi Kamera 4', 'Gray', '192.168.201.7', 'Surveillance', 'Brand E', 'V5.5', '2024-01-10', 2, 5, 46, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(230, 'CAM 5-L6-G5', 'http://example.com/stream5', 'Deskripsi Kamera 5', 'White', '192.168.122.166', 'CCTV', 'Brand F', 'V2.7', '2024-08-28', 2, 5, 46, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(231, 'CAM 1-L7-G5', 'http://example.com/stream1', 'Deskripsi Kamera 1', 'Black', '192.168.201.214', 'Surveillance', 'Brand B', 'V3.8', '2024-07-21', 2, 5, 47, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(232, 'CAM 2-L7-G5', 'http://example.com/stream2', 'Deskripsi Kamera 2', 'White', '192.168.254.211', 'Surveillance', 'Brand C', 'V3.0', '2024-06-29', 2, 5, 47, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(233, 'CAM 3-L7-G5', 'http://example.com/stream3', 'Deskripsi Kamera 3', 'Black', '192.168.236.184', 'CCTV', 'Brand D', 'V3.1', '2024-03-13', 2, 5, 47, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(234, 'CAM 4-L7-G5', 'http://example.com/stream4', 'Deskripsi Kamera 4', 'White', '192.168.23.180', 'CCTV', 'Brand E', 'V1.6', '2024-02-17', 2, 5, 47, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(235, 'CAM 5-L7-G5', 'http://example.com/stream5', 'Deskripsi Kamera 5', 'Gray', '192.168.116.164', 'Surveillance', 'Brand F', 'V2.7', '2024-04-17', 2, 5, 47, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(236, 'CAM 1-L8-G5', 'http://example.com/stream1', 'Deskripsi Kamera 1', 'Gray', '192.168.215.156', 'CCTV', 'Brand B', 'V5.4', '2024-10-29', 2, 5, 48, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(237, 'CAM 2-L8-G5', 'http://example.com/stream2', 'Deskripsi Kamera 2', 'Black', '192.168.168.251', 'Surveillance', 'Brand C', 'V4.7', '2024-11-02', 2, 5, 48, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(238, 'CAM 3-L8-G5', 'http://example.com/stream3', 'Deskripsi Kamera 3', 'Black', '192.168.203.234', 'CCTV', 'Brand D', 'V1.9', '2024-02-17', 2, 5, 48, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(239, 'CAM 4-L8-G5', 'http://example.com/stream4', 'Deskripsi Kamera 4', 'Gray', '192.168.106.207', 'CCTV', 'Brand E', 'V3.8', '2024-11-21', 2, 5, 48, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(240, 'CAM 5-L8-G5', 'http://example.com/stream5', 'Deskripsi Kamera 5', 'White', '192.168.183.74', 'CCTV', 'Brand F', 'V4.8', '2024-02-27', 2, 5, 48, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(241, 'CAM 1-L9-G5', 'http://example.com/stream1', 'Deskripsi Kamera 1', 'Gray', '192.168.19.221', 'CCTV', 'Brand B', 'V5.9', '2024-03-02', 2, 5, 49, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(242, 'CAM 2-L9-G5', 'http://example.com/stream2', 'Deskripsi Kamera 2', 'Black', '192.168.158.248', 'CCTV', 'Brand C', 'V1.7', '2024-11-28', 2, 5, 49, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(243, 'CAM 3-L9-G5', 'http://example.com/stream3', 'Deskripsi Kamera 3', 'Gray', '192.168.137.243', 'CCTV', 'Brand D', 'V1.5', '2024-05-26', 2, 5, 49, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(244, 'CAM 4-L9-G5', 'http://example.com/stream4', 'Deskripsi Kamera 4', 'Gray', '192.168.204.111', 'Surveillance', 'Brand E', 'V2.9', '2024-11-29', 2, 5, 49, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(245, 'CAM 5-L9-G5', 'http://example.com/stream5', 'Deskripsi Kamera 5', 'Gray', '192.168.50.93', 'CCTV', 'Brand F', 'V1.6', '2024-10-23', 2, 5, 49, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(246, 'CAM 1-L10-G5', 'http://example.com/stream1', 'Deskripsi Kamera 1', 'White', '192.168.210.87', 'Surveillance', 'Brand B', 'V2.6', '2024-09-15', 2, 5, 50, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(247, 'CAM 2-L10-G5', 'http://example.com/stream2', 'Deskripsi Kamera 2', 'Gray', '192.168.28.252', 'CCTV', 'Brand C', 'V5.2', '2024-02-23', 2, 5, 50, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(248, 'CAM 3-L10-G5', 'http://example.com/stream3', 'Deskripsi Kamera 3', 'Black', '192.168.73.154', 'Surveillance', 'Brand D', 'V5.2', '2024-10-08', 2, 5, 50, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(249, 'CAM 4-L10-G5', 'http://example.com/stream4', 'Deskripsi Kamera 4', 'Black', '192.168.82.122', 'CCTV', 'Brand E', 'V4.3', '2024-10-02', 2, 5, 50, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(250, 'CAM 5-L10-G5', 'http://example.com/stream5', 'Deskripsi Kamera 5', 'Black', '192.168.34.117', 'CCTV', 'Brand F', 'V3.4', '2024-06-14', 2, 5, 50, '2025-01-06 06:58:48', '2025-01-06 06:58:48');
INSERT INTO `cameras` (`id`, `nama_kamera`, `rtsp`, `description`, `device_color`, `ip`, `type`, `brand`, `version_model`, `installation_date`, `university_id`, `building_id`, `floor_id`, `created_at`, `updated_at`) VALUES
(251, 'CAM 1-L1-G6', 'http://example.com/stream1', 'Deskripsi Kamera 1', 'White', '192.168.171.50', 'CCTV', 'Brand B', 'V3.3', '2024-09-14', 2, 6, 51, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(252, 'CAM 2-L1-G6', 'http://example.com/stream2', 'Deskripsi Kamera 2', 'Gray', '192.168.162.200', 'Surveillance', 'Brand C', 'V5.4', '2024-02-01', 2, 6, 51, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(253, 'CAM 3-L1-G6', 'http://example.com/stream3', 'Deskripsi Kamera 3', 'Gray', '192.168.183.90', 'CCTV', 'Brand D', 'V5.9', '2024-07-26', 2, 6, 51, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(254, 'CAM 4-L1-G6', 'http://example.com/stream4', 'Deskripsi Kamera 4', 'White', '192.168.28.125', 'Surveillance', 'Brand E', 'V2.1', '2024-04-06', 2, 6, 51, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(255, 'CAM 5-L1-G6', 'http://example.com/stream5', 'Deskripsi Kamera 5', 'White', '192.168.230.75', 'Surveillance', 'Brand F', 'V2.1', '2024-07-27', 2, 6, 51, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(256, 'CAM 1-L2-G6', 'http://example.com/stream1', 'Deskripsi Kamera 1', 'Gray', '192.168.101.46', 'CCTV', 'Brand B', 'V2.3', '2024-02-16', 2, 6, 52, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(257, 'CAM 2-L2-G6', 'http://example.com/stream2', 'Deskripsi Kamera 2', 'Gray', '192.168.31.218', 'Surveillance', 'Brand C', 'V2.4', '2024-05-03', 2, 6, 52, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(258, 'CAM 3-L2-G6', 'http://example.com/stream3', 'Deskripsi Kamera 3', 'Black', '192.168.143.136', 'CCTV', 'Brand D', 'V3.3', '2024-06-02', 2, 6, 52, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(259, 'CAM 4-L2-G6', 'http://example.com/stream4', 'Deskripsi Kamera 4', 'Gray', '192.168.247.29', 'Surveillance', 'Brand E', 'V2.5', '2024-06-06', 2, 6, 52, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(260, 'CAM 5-L2-G6', 'http://example.com/stream5', 'Deskripsi Kamera 5', 'Black', '192.168.12.165', 'Surveillance', 'Brand F', 'V5.0', '2024-04-06', 2, 6, 52, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(261, 'CAM 1-L3-G6', 'http://example.com/stream1', 'Deskripsi Kamera 1', 'Gray', '192.168.43.154', 'Surveillance', 'Brand B', 'V1.5', '2024-02-23', 2, 6, 53, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(262, 'CAM 2-L3-G6', 'http://example.com/stream2', 'Deskripsi Kamera 2', 'Gray', '192.168.204.193', 'Surveillance', 'Brand C', 'V5.7', '2024-05-29', 2, 6, 53, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(263, 'CAM 3-L3-G6', 'http://example.com/stream3', 'Deskripsi Kamera 3', 'White', '192.168.175.235', 'CCTV', 'Brand D', 'V3.2', '2024-04-30', 2, 6, 53, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(264, 'CAM 4-L3-G6', 'http://example.com/stream4', 'Deskripsi Kamera 4', 'Black', '192.168.140.239', 'CCTV', 'Brand E', 'V1.2', '2024-01-16', 2, 6, 53, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(265, 'CAM 5-L3-G6', 'http://example.com/stream5', 'Deskripsi Kamera 5', 'Black', '192.168.140.40', 'Surveillance', 'Brand F', 'V4.4', '2024-09-15', 2, 6, 53, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(266, 'CAM 1-L4-G6', 'http://example.com/stream1', 'Deskripsi Kamera 1', 'White', '192.168.230.49', 'Surveillance', 'Brand B', 'V4.6', '2024-03-11', 2, 6, 54, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(267, 'CAM 2-L4-G6', 'http://example.com/stream2', 'Deskripsi Kamera 2', 'Black', '192.168.38.255', 'Surveillance', 'Brand C', 'V2.6', '2024-01-30', 2, 6, 54, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(268, 'CAM 3-L4-G6', 'http://example.com/stream3', 'Deskripsi Kamera 3', 'Black', '192.168.243.12', 'Surveillance', 'Brand D', 'V5.2', '2024-09-07', 2, 6, 54, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(269, 'CAM 4-L4-G6', 'http://example.com/stream4', 'Deskripsi Kamera 4', 'Black', '192.168.56.178', 'Surveillance', 'Brand E', 'V3.1', '2024-02-19', 2, 6, 54, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(270, 'CAM 5-L4-G6', 'http://example.com/stream5', 'Deskripsi Kamera 5', 'White', '192.168.74.226', 'CCTV', 'Brand F', 'V2.8', '2024-06-13', 2, 6, 54, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(271, 'CAM 1-L5-G6', 'http://example.com/stream1', 'Deskripsi Kamera 1', 'Gray', '192.168.59.249', 'CCTV', 'Brand B', 'V4.5', '2024-10-07', 2, 6, 55, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(272, 'CAM 2-L5-G6', 'http://example.com/stream2', 'Deskripsi Kamera 2', 'Gray', '192.168.234.182', 'CCTV', 'Brand C', 'V5.2', '2024-09-07', 2, 6, 55, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(273, 'CAM 3-L5-G6', 'http://example.com/stream3', 'Deskripsi Kamera 3', 'White', '192.168.51.213', 'Surveillance', 'Brand D', 'V3.6', '2024-02-21', 2, 6, 55, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(274, 'CAM 4-L5-G6', 'http://example.com/stream4', 'Deskripsi Kamera 4', 'Black', '192.168.181.125', 'CCTV', 'Brand E', 'V5.2', '2024-10-29', 2, 6, 55, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(275, 'CAM 5-L5-G6', 'http://example.com/stream5', 'Deskripsi Kamera 5', 'White', '192.168.175.223', 'CCTV', 'Brand F', 'V4.2', '2024-10-26', 2, 6, 55, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(276, 'CAM 1-L6-G6', 'http://example.com/stream1', 'Deskripsi Kamera 1', 'White', '192.168.173.86', 'CCTV', 'Brand B', 'V1.8', '2024-07-06', 2, 6, 56, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(277, 'CAM 2-L6-G6', 'http://example.com/stream2', 'Deskripsi Kamera 2', 'White', '192.168.135.180', 'CCTV', 'Brand C', 'V1.8', '2024-03-26', 2, 6, 56, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(278, 'CAM 3-L6-G6', 'http://example.com/stream3', 'Deskripsi Kamera 3', 'Gray', '192.168.150.180', 'CCTV', 'Brand D', 'V5.7', '2024-01-11', 2, 6, 56, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(279, 'CAM 4-L6-G6', 'http://example.com/stream4', 'Deskripsi Kamera 4', 'White', '192.168.105.26', 'Surveillance', 'Brand E', 'V5.5', '2024-05-16', 2, 6, 56, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(280, 'CAM 5-L6-G6', 'http://example.com/stream5', 'Deskripsi Kamera 5', 'Gray', '192.168.1.248', 'Surveillance', 'Brand F', 'V3.4', '2024-06-17', 2, 6, 56, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(281, 'CAM 1-L7-G6', 'http://example.com/stream1', 'Deskripsi Kamera 1', 'Gray', '192.168.92.226', 'Surveillance', 'Brand B', 'V4.4', '2024-01-29', 2, 6, 57, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(282, 'CAM 2-L7-G6', 'http://example.com/stream2', 'Deskripsi Kamera 2', 'Gray', '192.168.57.241', 'Surveillance', 'Brand C', 'V1.2', '2024-04-28', 2, 6, 57, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(283, 'CAM 3-L7-G6', 'http://example.com/stream3', 'Deskripsi Kamera 3', 'Gray', '192.168.31.61', 'CCTV', 'Brand D', 'V4.2', '2024-07-29', 2, 6, 57, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(284, 'CAM 4-L7-G6', 'http://example.com/stream4', 'Deskripsi Kamera 4', 'Gray', '192.168.17.107', 'Surveillance', 'Brand E', 'V5.7', '2024-08-20', 2, 6, 57, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(285, 'CAM 5-L7-G6', 'http://example.com/stream5', 'Deskripsi Kamera 5', 'Black', '192.168.5.130', 'Surveillance', 'Brand F', 'V5.9', '2024-01-17', 2, 6, 57, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(286, 'CAM 1-L8-G6', 'http://example.com/stream1', 'Deskripsi Kamera 1', 'Black', '192.168.164.202', 'Surveillance', 'Brand B', 'V3.9', '2024-02-20', 2, 6, 58, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(287, 'CAM 2-L8-G6', 'http://example.com/stream2', 'Deskripsi Kamera 2', 'Black', '192.168.211.100', 'Surveillance', 'Brand C', 'V4.4', '2024-08-11', 2, 6, 58, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(288, 'CAM 3-L8-G6', 'http://example.com/stream3', 'Deskripsi Kamera 3', 'White', '192.168.102.51', 'CCTV', 'Brand D', 'V5.1', '2024-09-06', 2, 6, 58, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(289, 'CAM 4-L8-G6', 'http://example.com/stream4', 'Deskripsi Kamera 4', 'Black', '192.168.58.212', 'CCTV', 'Brand E', 'V4.7', '2024-11-16', 2, 6, 58, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(290, 'CAM 5-L8-G6', 'http://example.com/stream5', 'Deskripsi Kamera 5', 'White', '192.168.35.123', 'CCTV', 'Brand F', 'V1.0', '2024-12-14', 2, 6, 58, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(291, 'CAM 1-L9-G6', 'http://example.com/stream1', 'Deskripsi Kamera 1', 'White', '192.168.215.72', 'Surveillance', 'Brand B', 'V5.5', '2024-08-03', 2, 6, 59, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(292, 'CAM 2-L9-G6', 'http://example.com/stream2', 'Deskripsi Kamera 2', 'White', '192.168.223.77', 'CCTV', 'Brand C', 'V1.2', '2024-05-30', 2, 6, 59, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(293, 'CAM 3-L9-G6', 'http://example.com/stream3', 'Deskripsi Kamera 3', 'Black', '192.168.139.238', 'Surveillance', 'Brand D', 'V5.4', '2024-11-16', 2, 6, 59, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(294, 'CAM 4-L9-G6', 'http://example.com/stream4', 'Deskripsi Kamera 4', 'Gray', '192.168.169.22', 'Surveillance', 'Brand E', 'V2.6', '2024-09-10', 2, 6, 59, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(295, 'CAM 5-L9-G6', 'http://example.com/stream5', 'Deskripsi Kamera 5', 'White', '192.168.236.136', 'CCTV', 'Brand F', 'V2.0', '2024-03-31', 2, 6, 59, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(296, 'CAM 1-L10-G6', 'http://example.com/stream1', 'Deskripsi Kamera 1', 'Black', '192.168.215.158', 'CCTV', 'Brand B', 'V1.9', '2024-11-06', 2, 6, 60, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(297, 'CAM 2-L10-G6', 'http://example.com/stream2', 'Deskripsi Kamera 2', 'Black', '192.168.212.243', 'Surveillance', 'Brand C', 'V3.6', '2024-12-13', 2, 6, 60, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(298, 'CAM 3-L10-G6', 'http://example.com/stream3', 'Deskripsi Kamera 3', 'White', '192.168.66.164', 'CCTV', 'Brand D', 'V2.8', '2024-05-18', 2, 6, 60, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(299, 'CAM 4-L10-G6', 'http://example.com/stream4', 'Deskripsi Kamera 4', 'White', '192.168.31.157', 'CCTV', 'Brand E', 'V5.0', '2024-06-08', 2, 6, 60, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(300, 'CAM 5-L10-G6', 'http://example.com/stream5', 'Deskripsi Kamera 5', 'White', '192.168.24.42', 'CCTV', 'Brand F', 'V4.5', '2024-11-22', 2, 6, 60, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(301, 'CAM 1-L1-G7', 'http://example.com/stream1', 'Deskripsi Kamera 1', 'Black', '192.168.28.167', 'CCTV', 'Brand B', 'V2.6', '2024-04-14', 3, 7, 61, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(302, 'CAM 2-L1-G7', 'http://example.com/stream2', 'Deskripsi Kamera 2', 'White', '192.168.86.59', 'CCTV', 'Brand C', 'V4.4', '2024-05-31', 3, 7, 61, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(303, 'CAM 3-L1-G7', 'http://example.com/stream3', 'Deskripsi Kamera 3', 'Gray', '192.168.84.89', 'CCTV', 'Brand D', 'V2.7', '2024-02-23', 3, 7, 61, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(304, 'CAM 4-L1-G7', 'http://example.com/stream4', 'Deskripsi Kamera 4', 'Gray', '192.168.40.85', 'Surveillance', 'Brand E', 'V1.4', '2024-12-29', 3, 7, 61, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(305, 'CAM 5-L1-G7', 'http://example.com/stream5', 'Deskripsi Kamera 5', 'White', '192.168.157.252', 'CCTV', 'Brand F', 'V1.8', '2024-07-18', 3, 7, 61, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(306, 'CAM 1-L2-G7', 'http://example.com/stream1', 'Deskripsi Kamera 1', 'White', '192.168.248.124', 'Surveillance', 'Brand B', 'V5.8', '2024-11-22', 3, 7, 62, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(307, 'CAM 2-L2-G7', 'http://example.com/stream2', 'Deskripsi Kamera 2', 'Black', '192.168.21.175', 'CCTV', 'Brand C', 'V4.1', '2024-07-29', 3, 7, 62, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(308, 'CAM 3-L2-G7', 'http://example.com/stream3', 'Deskripsi Kamera 3', 'White', '192.168.139.183', 'CCTV', 'Brand D', 'V4.7', '2024-03-19', 3, 7, 62, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(309, 'CAM 4-L2-G7', 'http://example.com/stream4', 'Deskripsi Kamera 4', 'White', '192.168.235.80', 'CCTV', 'Brand E', 'V1.3', '2024-08-05', 3, 7, 62, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(310, 'CAM 5-L2-G7', 'http://example.com/stream5', 'Deskripsi Kamera 5', 'White', '192.168.100.102', 'CCTV', 'Brand F', 'V5.7', '2024-08-11', 3, 7, 62, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(311, 'CAM 1-L3-G7', 'http://example.com/stream1', 'Deskripsi Kamera 1', 'Black', '192.168.92.22', 'Surveillance', 'Brand B', 'V4.4', '2024-01-16', 3, 7, 63, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(312, 'CAM 2-L3-G7', 'http://example.com/stream2', 'Deskripsi Kamera 2', 'Black', '192.168.201.70', 'CCTV', 'Brand C', 'V3.2', '2024-08-19', 3, 7, 63, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(313, 'CAM 3-L3-G7', 'http://example.com/stream3', 'Deskripsi Kamera 3', 'Gray', '192.168.120.252', 'CCTV', 'Brand D', 'V1.6', '2024-08-10', 3, 7, 63, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(314, 'CAM 4-L3-G7', 'http://example.com/stream4', 'Deskripsi Kamera 4', 'Gray', '192.168.77.19', 'CCTV', 'Brand E', 'V5.8', '2024-12-13', 3, 7, 63, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(315, 'CAM 5-L3-G7', 'http://example.com/stream5', 'Deskripsi Kamera 5', 'Black', '192.168.86.208', 'CCTV', 'Brand F', 'V2.5', '2024-12-21', 3, 7, 63, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(316, 'CAM 1-L4-G7', 'http://example.com/stream1', 'Deskripsi Kamera 1', 'Gray', '192.168.216.228', 'Surveillance', 'Brand B', 'V2.3', '2024-01-18', 3, 7, 64, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(317, 'CAM 2-L4-G7', 'http://example.com/stream2', 'Deskripsi Kamera 2', 'White', '192.168.93.223', 'CCTV', 'Brand C', 'V3.3', '2024-10-25', 3, 7, 64, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(318, 'CAM 3-L4-G7', 'http://example.com/stream3', 'Deskripsi Kamera 3', 'Gray', '192.168.186.50', 'CCTV', 'Brand D', 'V4.4', '2024-12-03', 3, 7, 64, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(319, 'CAM 4-L4-G7', 'http://example.com/stream4', 'Deskripsi Kamera 4', 'Gray', '192.168.91.92', 'CCTV', 'Brand E', 'V1.7', '2024-11-05', 3, 7, 64, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(320, 'CAM 5-L4-G7', 'http://example.com/stream5', 'Deskripsi Kamera 5', 'Black', '192.168.194.45', 'Surveillance', 'Brand F', 'V1.2', '2024-08-17', 3, 7, 64, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(321, 'CAM 1-L5-G7', 'http://example.com/stream1', 'Deskripsi Kamera 1', 'Black', '192.168.200.43', 'Surveillance', 'Brand B', 'V2.5', '2024-04-28', 3, 7, 65, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(322, 'CAM 2-L5-G7', 'http://example.com/stream2', 'Deskripsi Kamera 2', 'White', '192.168.225.49', 'Surveillance', 'Brand C', 'V5.8', '2024-11-11', 3, 7, 65, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(323, 'CAM 3-L5-G7', 'http://example.com/stream3', 'Deskripsi Kamera 3', 'Black', '192.168.40.55', 'CCTV', 'Brand D', 'V1.8', '2024-10-21', 3, 7, 65, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(324, 'CAM 4-L5-G7', 'http://example.com/stream4', 'Deskripsi Kamera 4', 'White', '192.168.38.173', 'Surveillance', 'Brand E', 'V3.4', '2024-07-05', 3, 7, 65, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(325, 'CAM 5-L5-G7', 'http://example.com/stream5', 'Deskripsi Kamera 5', 'Gray', '192.168.131.243', 'CCTV', 'Brand F', 'V1.3', '2024-06-07', 3, 7, 65, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(326, 'CAM 1-L6-G7', 'http://example.com/stream1', 'Deskripsi Kamera 1', 'White', '192.168.255.53', 'Surveillance', 'Brand B', 'V2.5', '2024-10-24', 3, 7, 66, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(327, 'CAM 2-L6-G7', 'http://example.com/stream2', 'Deskripsi Kamera 2', 'White', '192.168.211.16', 'CCTV', 'Brand C', 'V5.7', '2024-06-10', 3, 7, 66, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(328, 'CAM 3-L6-G7', 'http://example.com/stream3', 'Deskripsi Kamera 3', 'Gray', '192.168.62.153', 'Surveillance', 'Brand D', 'V4.5', '2024-05-30', 3, 7, 66, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(329, 'CAM 4-L6-G7', 'http://example.com/stream4', 'Deskripsi Kamera 4', 'White', '192.168.167.106', 'Surveillance', 'Brand E', 'V2.6', '2024-05-31', 3, 7, 66, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(330, 'CAM 5-L6-G7', 'http://example.com/stream5', 'Deskripsi Kamera 5', 'White', '192.168.118.176', 'Surveillance', 'Brand F', 'V1.9', '2024-03-10', 3, 7, 66, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(331, 'CAM 1-L7-G7', 'http://example.com/stream1', 'Deskripsi Kamera 1', 'Gray', '192.168.118.71', 'Surveillance', 'Brand B', 'V2.6', '2024-05-19', 3, 7, 67, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(332, 'CAM 2-L7-G7', 'http://example.com/stream2', 'Deskripsi Kamera 2', 'Black', '192.168.222.220', 'CCTV', 'Brand C', 'V3.4', '2024-05-05', 3, 7, 67, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(333, 'CAM 3-L7-G7', 'http://example.com/stream3', 'Deskripsi Kamera 3', 'Gray', '192.168.10.243', 'Surveillance', 'Brand D', 'V1.4', '2024-11-04', 3, 7, 67, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(334, 'CAM 4-L7-G7', 'http://example.com/stream4', 'Deskripsi Kamera 4', 'Gray', '192.168.198.21', 'Surveillance', 'Brand E', 'V4.6', '2024-01-30', 3, 7, 67, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(335, 'CAM 5-L7-G7', 'http://example.com/stream5', 'Deskripsi Kamera 5', 'Black', '192.168.250.29', 'CCTV', 'Brand F', 'V3.0', '2024-05-26', 3, 7, 67, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(336, 'CAM 1-L8-G7', 'http://example.com/stream1', 'Deskripsi Kamera 1', 'White', '192.168.19.191', 'Surveillance', 'Brand B', 'V2.1', '2024-12-12', 3, 7, 68, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(337, 'CAM 2-L8-G7', 'http://example.com/stream2', 'Deskripsi Kamera 2', 'Black', '192.168.49.255', 'CCTV', 'Brand C', 'V4.9', '2024-09-28', 3, 7, 68, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(338, 'CAM 3-L8-G7', 'http://example.com/stream3', 'Deskripsi Kamera 3', 'Black', '192.168.86.226', 'CCTV', 'Brand D', 'V2.8', '2024-01-07', 3, 7, 68, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(339, 'CAM 4-L8-G7', 'http://example.com/stream4', 'Deskripsi Kamera 4', 'Gray', '192.168.47.232', 'Surveillance', 'Brand E', 'V4.6', '2024-06-12', 3, 7, 68, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(340, 'CAM 5-L8-G7', 'http://example.com/stream5', 'Deskripsi Kamera 5', 'Gray', '192.168.96.102', 'CCTV', 'Brand F', 'V1.0', '2024-09-30', 3, 7, 68, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(341, 'CAM 1-L9-G7', 'http://example.com/stream1', 'Deskripsi Kamera 1', 'Gray', '192.168.84.250', 'CCTV', 'Brand B', 'V4.6', '2024-05-14', 3, 7, 69, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(342, 'CAM 2-L9-G7', 'http://example.com/stream2', 'Deskripsi Kamera 2', 'White', '192.168.81.193', 'Surveillance', 'Brand C', 'V4.5', '2024-07-09', 3, 7, 69, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(343, 'CAM 3-L9-G7', 'http://example.com/stream3', 'Deskripsi Kamera 3', 'Black', '192.168.174.43', 'Surveillance', 'Brand D', 'V2.8', '2024-01-10', 3, 7, 69, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(344, 'CAM 4-L9-G7', 'http://example.com/stream4', 'Deskripsi Kamera 4', 'Gray', '192.168.158.93', 'CCTV', 'Brand E', 'V5.6', '2024-09-18', 3, 7, 69, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(345, 'CAM 5-L9-G7', 'http://example.com/stream5', 'Deskripsi Kamera 5', 'Black', '192.168.6.15', 'Surveillance', 'Brand F', 'V3.0', '2024-02-12', 3, 7, 69, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(346, 'CAM 1-L10-G7', 'http://example.com/stream1', 'Deskripsi Kamera 1', 'Black', '192.168.88.33', 'Surveillance', 'Brand B', 'V4.9', '2024-07-24', 3, 7, 70, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(347, 'CAM 2-L10-G7', 'http://example.com/stream2', 'Deskripsi Kamera 2', 'Black', '192.168.232.7', 'Surveillance', 'Brand C', 'V4.0', '2024-08-27', 3, 7, 70, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(348, 'CAM 3-L10-G7', 'http://example.com/stream3', 'Deskripsi Kamera 3', 'White', '192.168.239.233', 'Surveillance', 'Brand D', 'V2.6', '2024-05-23', 3, 7, 70, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(349, 'CAM 4-L10-G7', 'http://example.com/stream4', 'Deskripsi Kamera 4', 'Black', '192.168.26.222', 'Surveillance', 'Brand E', 'V3.2', '2024-08-27', 3, 7, 70, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(350, 'CAM 5-L10-G7', 'http://example.com/stream5', 'Deskripsi Kamera 5', 'White', '192.168.186.94', 'Surveillance', 'Brand F', 'V5.5', '2024-01-26', 3, 7, 70, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(351, 'CAM 1-L1-G8', 'http://example.com/stream1', 'Deskripsi Kamera 1', 'White', '192.168.189.102', 'Surveillance', 'Brand B', 'V1.0', '2024-03-04', 3, 8, 71, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(352, 'CAM 2-L1-G8', 'http://example.com/stream2', 'Deskripsi Kamera 2', 'Gray', '192.168.112.8', 'CCTV', 'Brand C', 'V3.1', '2024-06-29', 3, 8, 71, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(353, 'CAM 3-L1-G8', 'http://example.com/stream3', 'Deskripsi Kamera 3', 'Black', '192.168.212.106', 'Surveillance', 'Brand D', 'V4.9', '2024-01-16', 3, 8, 71, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(354, 'CAM 4-L1-G8', 'http://example.com/stream4', 'Deskripsi Kamera 4', 'White', '192.168.36.8', 'Surveillance', 'Brand E', 'V4.0', '2024-04-13', 3, 8, 71, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(355, 'CAM 5-L1-G8', 'http://example.com/stream5', 'Deskripsi Kamera 5', 'Black', '192.168.190.59', 'CCTV', 'Brand F', 'V1.5', '2024-09-03', 3, 8, 71, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(356, 'CAM 1-L2-G8', 'http://example.com/stream1', 'Deskripsi Kamera 1', 'Black', '192.168.251.85', 'Surveillance', 'Brand B', 'V3.9', '2024-04-11', 3, 8, 72, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(357, 'CAM 2-L2-G8', 'http://example.com/stream2', 'Deskripsi Kamera 2', 'Black', '192.168.29.6', 'CCTV', 'Brand C', 'V2.0', '2024-12-14', 3, 8, 72, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(358, 'CAM 3-L2-G8', 'http://example.com/stream3', 'Deskripsi Kamera 3', 'Gray', '192.168.72.18', 'CCTV', 'Brand D', 'V4.1', '2024-07-07', 3, 8, 72, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(359, 'CAM 4-L2-G8', 'http://example.com/stream4', 'Deskripsi Kamera 4', 'White', '192.168.248.105', 'CCTV', 'Brand E', 'V4.7', '2024-05-30', 3, 8, 72, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(360, 'CAM 5-L2-G8', 'http://example.com/stream5', 'Deskripsi Kamera 5', 'Black', '192.168.183.221', 'CCTV', 'Brand F', 'V3.6', '2024-11-15', 3, 8, 72, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(361, 'CAM 1-L3-G8', 'http://example.com/stream1', 'Deskripsi Kamera 1', 'White', '192.168.153.174', 'Surveillance', 'Brand B', 'V3.3', '2024-12-21', 3, 8, 73, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(362, 'CAM 2-L3-G8', 'http://example.com/stream2', 'Deskripsi Kamera 2', 'Black', '192.168.9.104', 'CCTV', 'Brand C', 'V5.5', '2024-04-16', 3, 8, 73, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(363, 'CAM 3-L3-G8', 'http://example.com/stream3', 'Deskripsi Kamera 3', 'Gray', '192.168.137.174', 'Surveillance', 'Brand D', 'V2.4', '2024-05-09', 3, 8, 73, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(364, 'CAM 4-L3-G8', 'http://example.com/stream4', 'Deskripsi Kamera 4', 'White', '192.168.187.79', 'Surveillance', 'Brand E', 'V2.2', '2024-08-05', 3, 8, 73, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(365, 'CAM 5-L3-G8', 'http://example.com/stream5', 'Deskripsi Kamera 5', 'Gray', '192.168.251.95', 'Surveillance', 'Brand F', 'V2.9', '2024-04-03', 3, 8, 73, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(366, 'CAM 1-L4-G8', 'http://example.com/stream1', 'Deskripsi Kamera 1', 'Gray', '192.168.125.14', 'CCTV', 'Brand B', 'V2.1', '2024-08-25', 3, 8, 74, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(367, 'CAM 2-L4-G8', 'http://example.com/stream2', 'Deskripsi Kamera 2', 'Gray', '192.168.52.32', 'CCTV', 'Brand C', 'V3.2', '2024-03-25', 3, 8, 74, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(368, 'CAM 3-L4-G8', 'http://example.com/stream3', 'Deskripsi Kamera 3', 'White', '192.168.111.141', 'Surveillance', 'Brand D', 'V5.2', '2024-03-28', 3, 8, 74, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(369, 'CAM 4-L4-G8', 'http://example.com/stream4', 'Deskripsi Kamera 4', 'White', '192.168.185.206', 'Surveillance', 'Brand E', 'V1.6', '2024-09-22', 3, 8, 74, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(370, 'CAM 5-L4-G8', 'http://example.com/stream5', 'Deskripsi Kamera 5', 'Gray', '192.168.253.8', 'Surveillance', 'Brand F', 'V3.2', '2024-11-27', 3, 8, 74, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(371, 'CAM 1-L5-G8', 'http://example.com/stream1', 'Deskripsi Kamera 1', 'White', '192.168.99.142', 'CCTV', 'Brand B', 'V2.9', '2024-07-15', 3, 8, 75, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(372, 'CAM 2-L5-G8', 'http://example.com/stream2', 'Deskripsi Kamera 2', 'Gray', '192.168.206.183', 'Surveillance', 'Brand C', 'V4.8', '2024-11-17', 3, 8, 75, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(373, 'CAM 3-L5-G8', 'http://example.com/stream3', 'Deskripsi Kamera 3', 'Gray', '192.168.78.162', 'CCTV', 'Brand D', 'V2.1', '2024-04-03', 3, 8, 75, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(374, 'CAM 4-L5-G8', 'http://example.com/stream4', 'Deskripsi Kamera 4', 'Gray', '192.168.27.209', 'CCTV', 'Brand E', 'V1.6', '2024-02-27', 3, 8, 75, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(375, 'CAM 5-L5-G8', 'http://example.com/stream5', 'Deskripsi Kamera 5', 'Black', '192.168.44.212', 'Surveillance', 'Brand F', 'V1.4', '2024-12-05', 3, 8, 75, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(376, 'CAM 1-L6-G8', 'http://example.com/stream1', 'Deskripsi Kamera 1', 'White', '192.168.112.68', 'Surveillance', 'Brand B', 'V5.0', '2024-07-04', 3, 8, 76, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(377, 'CAM 2-L6-G8', 'http://example.com/stream2', 'Deskripsi Kamera 2', 'Black', '192.168.68.230', 'Surveillance', 'Brand C', 'V5.8', '2024-07-21', 3, 8, 76, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(378, 'CAM 3-L6-G8', 'http://example.com/stream3', 'Deskripsi Kamera 3', 'Black', '192.168.224.163', 'Surveillance', 'Brand D', 'V3.3', '2024-08-06', 3, 8, 76, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(379, 'CAM 4-L6-G8', 'http://example.com/stream4', 'Deskripsi Kamera 4', 'White', '192.168.145.194', 'Surveillance', 'Brand E', 'V3.3', '2024-11-08', 3, 8, 76, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(380, 'CAM 5-L6-G8', 'http://example.com/stream5', 'Deskripsi Kamera 5', 'Gray', '192.168.239.217', 'Surveillance', 'Brand F', 'V5.2', '2024-01-20', 3, 8, 76, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(381, 'CAM 1-L7-G8', 'http://example.com/stream1', 'Deskripsi Kamera 1', 'White', '192.168.70.231', 'Surveillance', 'Brand B', 'V3.4', '2024-09-19', 3, 8, 77, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(382, 'CAM 2-L7-G8', 'http://example.com/stream2', 'Deskripsi Kamera 2', 'Black', '192.168.155.137', 'Surveillance', 'Brand C', 'V1.3', '2024-01-07', 3, 8, 77, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(383, 'CAM 3-L7-G8', 'http://example.com/stream3', 'Deskripsi Kamera 3', 'White', '192.168.217.10', 'Surveillance', 'Brand D', 'V2.1', '2024-04-01', 3, 8, 77, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(384, 'CAM 4-L7-G8', 'http://example.com/stream4', 'Deskripsi Kamera 4', 'Gray', '192.168.212.45', 'CCTV', 'Brand E', 'V4.8', '2024-02-20', 3, 8, 77, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(385, 'CAM 5-L7-G8', 'http://example.com/stream5', 'Deskripsi Kamera 5', 'Gray', '192.168.30.219', 'Surveillance', 'Brand F', 'V3.3', '2024-11-16', 3, 8, 77, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(386, 'CAM 1-L8-G8', 'http://example.com/stream1', 'Deskripsi Kamera 1', 'Black', '192.168.119.226', 'Surveillance', 'Brand B', 'V3.2', '2024-04-22', 3, 8, 78, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(387, 'CAM 2-L8-G8', 'http://example.com/stream2', 'Deskripsi Kamera 2', 'White', '192.168.253.74', 'CCTV', 'Brand C', 'V5.0', '2024-11-15', 3, 8, 78, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(388, 'CAM 3-L8-G8', 'http://example.com/stream3', 'Deskripsi Kamera 3', 'Gray', '192.168.124.110', 'CCTV', 'Brand D', 'V4.9', '2024-03-12', 3, 8, 78, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(389, 'CAM 4-L8-G8', 'http://example.com/stream4', 'Deskripsi Kamera 4', 'White', '192.168.170.82', 'Surveillance', 'Brand E', 'V4.3', '2024-06-01', 3, 8, 78, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(390, 'CAM 5-L8-G8', 'http://example.com/stream5', 'Deskripsi Kamera 5', 'Black', '192.168.250.155', 'CCTV', 'Brand F', 'V1.5', '2024-02-06', 3, 8, 78, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(391, 'CAM 1-L9-G8', 'http://example.com/stream1', 'Deskripsi Kamera 1', 'White', '192.168.182.6', 'Surveillance', 'Brand B', 'V4.5', '2024-04-26', 3, 8, 79, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(392, 'CAM 2-L9-G8', 'http://example.com/stream2', 'Deskripsi Kamera 2', 'White', '192.168.186.214', 'Surveillance', 'Brand C', 'V1.4', '2024-04-04', 3, 8, 79, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(393, 'CAM 3-L9-G8', 'http://example.com/stream3', 'Deskripsi Kamera 3', 'Black', '192.168.162.47', 'CCTV', 'Brand D', 'V2.8', '2024-08-04', 3, 8, 79, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(394, 'CAM 4-L9-G8', 'http://example.com/stream4', 'Deskripsi Kamera 4', 'Black', '192.168.199.3', 'Surveillance', 'Brand E', 'V4.1', '2024-05-24', 3, 8, 79, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(395, 'CAM 5-L9-G8', 'http://example.com/stream5', 'Deskripsi Kamera 5', 'Gray', '192.168.91.23', 'Surveillance', 'Brand F', 'V5.4', '2024-06-02', 3, 8, 79, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(396, 'CAM 1-L10-G8', 'http://example.com/stream1', 'Deskripsi Kamera 1', 'Black', '192.168.132.210', 'CCTV', 'Brand B', 'V4.1', '2024-07-04', 3, 8, 80, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(397, 'CAM 2-L10-G8', 'http://example.com/stream2', 'Deskripsi Kamera 2', 'Gray', '192.168.124.112', 'Surveillance', 'Brand C', 'V5.7', '2024-06-02', 3, 8, 80, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(398, 'CAM 3-L10-G8', 'http://example.com/stream3', 'Deskripsi Kamera 3', 'Gray', '192.168.157.20', 'Surveillance', 'Brand D', 'V3.8', '2024-08-13', 3, 8, 80, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(399, 'CAM 4-L10-G8', 'http://example.com/stream4', 'Deskripsi Kamera 4', 'White', '192.168.196.57', 'Surveillance', 'Brand E', 'V3.0', '2024-09-24', 3, 8, 80, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(400, 'CAM 5-L10-G8', 'http://example.com/stream5', 'Deskripsi Kamera 5', 'Gray', '192.168.9.34', 'CCTV', 'Brand F', 'V5.1', '2024-04-06', 3, 8, 80, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(401, 'CAM 1-L1-G9', 'http://example.com/stream1', 'Deskripsi Kamera 1', 'Black', '192.168.219.236', 'CCTV', 'Brand B', 'V4.8', '2024-05-19', 3, 9, 81, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(402, 'CAM 2-L1-G9', 'http://example.com/stream2', 'Deskripsi Kamera 2', 'Gray', '192.168.87.251', 'Surveillance', 'Brand C', 'V3.2', '2024-04-25', 3, 9, 81, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(403, 'CAM 3-L1-G9', 'http://example.com/stream3', 'Deskripsi Kamera 3', 'Black', '192.168.184.62', 'CCTV', 'Brand D', 'V2.9', '2024-04-28', 3, 9, 81, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(404, 'CAM 4-L1-G9', 'http://example.com/stream4', 'Deskripsi Kamera 4', 'Black', '192.168.110.234', 'Surveillance', 'Brand E', 'V3.4', '2024-07-09', 3, 9, 81, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(405, 'CAM 5-L1-G9', 'http://example.com/stream5', 'Deskripsi Kamera 5', 'Gray', '192.168.237.162', 'CCTV', 'Brand F', 'V2.5', '2024-06-02', 3, 9, 81, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(406, 'CAM 1-L2-G9', 'http://example.com/stream1', 'Deskripsi Kamera 1', 'White', '192.168.188.210', 'CCTV', 'Brand B', 'V2.6', '2024-10-22', 3, 9, 82, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(407, 'CAM 2-L2-G9', 'http://example.com/stream2', 'Deskripsi Kamera 2', 'Black', '192.168.151.184', 'Surveillance', 'Brand C', 'V1.6', '2024-10-18', 3, 9, 82, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(408, 'CAM 3-L2-G9', 'http://example.com/stream3', 'Deskripsi Kamera 3', 'White', '192.168.199.234', 'CCTV', 'Brand D', 'V3.2', '2025-01-05', 3, 9, 82, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(409, 'CAM 4-L2-G9', 'http://example.com/stream4', 'Deskripsi Kamera 4', 'Black', '192.168.173.186', 'CCTV', 'Brand E', 'V1.7', '2024-03-12', 3, 9, 82, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(410, 'CAM 5-L2-G9', 'http://example.com/stream5', 'Deskripsi Kamera 5', 'White', '192.168.241.220', 'Surveillance', 'Brand F', 'V5.6', '2024-05-19', 3, 9, 82, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(411, 'CAM 1-L3-G9', 'http://example.com/stream1', 'Deskripsi Kamera 1', 'Gray', '192.168.113.36', 'CCTV', 'Brand B', 'V2.2', '2024-12-01', 3, 9, 83, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(412, 'CAM 2-L3-G9', 'http://example.com/stream2', 'Deskripsi Kamera 2', 'White', '192.168.87.62', 'CCTV', 'Brand C', 'V5.1', '2024-12-28', 3, 9, 83, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(413, 'CAM 3-L3-G9', 'http://example.com/stream3', 'Deskripsi Kamera 3', 'Black', '192.168.175.26', 'CCTV', 'Brand D', 'V1.9', '2024-08-31', 3, 9, 83, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(414, 'CAM 4-L3-G9', 'http://example.com/stream4', 'Deskripsi Kamera 4', 'White', '192.168.129.131', 'CCTV', 'Brand E', 'V3.1', '2024-09-26', 3, 9, 83, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(415, 'CAM 5-L3-G9', 'http://example.com/stream5', 'Deskripsi Kamera 5', 'Black', '192.168.153.30', 'CCTV', 'Brand F', 'V4.4', '2024-07-06', 3, 9, 83, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(416, 'CAM 1-L4-G9', 'http://example.com/stream1', 'Deskripsi Kamera 1', 'White', '192.168.226.16', 'Surveillance', 'Brand B', 'V1.5', '2024-03-01', 3, 9, 84, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(417, 'CAM 2-L4-G9', 'http://example.com/stream2', 'Deskripsi Kamera 2', 'Gray', '192.168.140.229', 'Surveillance', 'Brand C', 'V3.1', '2024-06-18', 3, 9, 84, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(418, 'CAM 3-L4-G9', 'http://example.com/stream3', 'Deskripsi Kamera 3', 'White', '192.168.221.143', 'CCTV', 'Brand D', 'V1.7', '2024-09-07', 3, 9, 84, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(419, 'CAM 4-L4-G9', 'http://example.com/stream4', 'Deskripsi Kamera 4', 'Gray', '192.168.182.144', 'Surveillance', 'Brand E', 'V3.8', '2024-06-15', 3, 9, 84, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(420, 'CAM 5-L4-G9', 'http://example.com/stream5', 'Deskripsi Kamera 5', 'Gray', '192.168.42.95', 'Surveillance', 'Brand F', 'V2.5', '2024-06-21', 3, 9, 84, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(421, 'CAM 1-L5-G9', 'http://example.com/stream1', 'Deskripsi Kamera 1', 'White', '192.168.204.217', 'CCTV', 'Brand B', 'V4.7', '2024-05-15', 3, 9, 85, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(422, 'CAM 2-L5-G9', 'http://example.com/stream2', 'Deskripsi Kamera 2', 'White', '192.168.75.80', 'CCTV', 'Brand C', 'V5.0', '2024-10-13', 3, 9, 85, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(423, 'CAM 3-L5-G9', 'http://example.com/stream3', 'Deskripsi Kamera 3', 'Black', '192.168.40.11', 'Surveillance', 'Brand D', 'V1.7', '2024-06-12', 3, 9, 85, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(424, 'CAM 4-L5-G9', 'http://example.com/stream4', 'Deskripsi Kamera 4', 'Gray', '192.168.249.50', 'CCTV', 'Brand E', 'V1.9', '2024-08-10', 3, 9, 85, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(425, 'CAM 5-L5-G9', 'http://example.com/stream5', 'Deskripsi Kamera 5', 'Gray', '192.168.249.137', 'CCTV', 'Brand F', 'V3.0', '2024-01-14', 3, 9, 85, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(426, 'CAM 1-L6-G9', 'http://example.com/stream1', 'Deskripsi Kamera 1', 'Gray', '192.168.141.126', 'Surveillance', 'Brand B', 'V5.6', '2024-01-21', 3, 9, 86, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(427, 'CAM 2-L6-G9', 'http://example.com/stream2', 'Deskripsi Kamera 2', 'White', '192.168.28.203', 'CCTV', 'Brand C', 'V3.5', '2024-10-13', 3, 9, 86, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(428, 'CAM 3-L6-G9', 'http://example.com/stream3', 'Deskripsi Kamera 3', 'Gray', '192.168.18.27', 'CCTV', 'Brand D', 'V1.5', '2024-06-19', 3, 9, 86, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(429, 'CAM 4-L6-G9', 'http://example.com/stream4', 'Deskripsi Kamera 4', 'Black', '192.168.22.230', 'CCTV', 'Brand E', 'V2.4', '2024-09-07', 3, 9, 86, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(430, 'CAM 5-L6-G9', 'http://example.com/stream5', 'Deskripsi Kamera 5', 'Black', '192.168.164.18', 'CCTV', 'Brand F', 'V1.3', '2024-12-15', 3, 9, 86, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(431, 'CAM 1-L7-G9', 'http://example.com/stream1', 'Deskripsi Kamera 1', 'Black', '192.168.127.33', 'CCTV', 'Brand B', 'V3.6', '2024-11-23', 3, 9, 87, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(432, 'CAM 2-L7-G9', 'http://example.com/stream2', 'Deskripsi Kamera 2', 'Black', '192.168.185.80', 'CCTV', 'Brand C', 'V5.7', '2024-10-03', 3, 9, 87, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(433, 'CAM 3-L7-G9', 'http://example.com/stream3', 'Deskripsi Kamera 3', 'Gray', '192.168.156.215', 'CCTV', 'Brand D', 'V2.7', '2024-09-27', 3, 9, 87, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(434, 'CAM 4-L7-G9', 'http://example.com/stream4', 'Deskripsi Kamera 4', 'White', '192.168.34.37', 'Surveillance', 'Brand E', 'V2.3', '2024-06-12', 3, 9, 87, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(435, 'CAM 5-L7-G9', 'http://example.com/stream5', 'Deskripsi Kamera 5', 'White', '192.168.118.254', 'Surveillance', 'Brand F', 'V2.0', '2024-11-17', 3, 9, 87, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(436, 'CAM 1-L8-G9', 'http://example.com/stream1', 'Deskripsi Kamera 1', 'White', '192.168.171.26', 'CCTV', 'Brand B', 'V4.8', '2024-12-09', 3, 9, 88, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(437, 'CAM 2-L8-G9', 'http://example.com/stream2', 'Deskripsi Kamera 2', 'White', '192.168.119.125', 'Surveillance', 'Brand C', 'V5.1', '2024-11-26', 3, 9, 88, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(438, 'CAM 3-L8-G9', 'http://example.com/stream3', 'Deskripsi Kamera 3', 'White', '192.168.192.62', 'Surveillance', 'Brand D', 'V5.0', '2024-05-15', 3, 9, 88, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(439, 'CAM 4-L8-G9', 'http://example.com/stream4', 'Deskripsi Kamera 4', 'White', '192.168.168.208', 'Surveillance', 'Brand E', 'V1.9', '2024-10-06', 3, 9, 88, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(440, 'CAM 5-L8-G9', 'http://example.com/stream5', 'Deskripsi Kamera 5', 'White', '192.168.200.29', 'CCTV', 'Brand F', 'V5.6', '2024-03-25', 3, 9, 88, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(441, 'CAM 1-L9-G9', 'http://example.com/stream1', 'Deskripsi Kamera 1', 'White', '192.168.242.5', 'CCTV', 'Brand B', 'V3.1', '2024-11-06', 3, 9, 89, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(442, 'CAM 2-L9-G9', 'http://example.com/stream2', 'Deskripsi Kamera 2', 'Black', '192.168.112.144', 'CCTV', 'Brand C', 'V5.9', '2024-04-08', 3, 9, 89, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(443, 'CAM 3-L9-G9', 'http://example.com/stream3', 'Deskripsi Kamera 3', 'Gray', '192.168.165.31', 'Surveillance', 'Brand D', 'V2.3', '2024-05-16', 3, 9, 89, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(444, 'CAM 4-L9-G9', 'http://example.com/stream4', 'Deskripsi Kamera 4', 'White', '192.168.46.148', 'CCTV', 'Brand E', 'V1.9', '2024-02-21', 3, 9, 89, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(445, 'CAM 5-L9-G9', 'http://example.com/stream5', 'Deskripsi Kamera 5', 'White', '192.168.233.252', 'CCTV', 'Brand F', 'V2.7', '2024-01-19', 3, 9, 89, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(446, 'CAM 1-L10-G9', 'http://example.com/stream1', 'Deskripsi Kamera 1', 'Black', '192.168.115.125', 'Surveillance', 'Brand B', 'V5.3', '2024-06-27', 3, 9, 90, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(447, 'CAM 2-L10-G9', 'http://example.com/stream2', 'Deskripsi Kamera 2', 'White', '192.168.69.80', 'CCTV', 'Brand C', 'V4.2', '2024-10-08', 3, 9, 90, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(448, 'CAM 3-L10-G9', 'http://example.com/stream3', 'Deskripsi Kamera 3', 'White', '192.168.19.250', 'CCTV', 'Brand D', 'V5.0', '2024-04-02', 3, 9, 90, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(449, 'CAM 4-L10-G9', 'http://example.com/stream4', 'Deskripsi Kamera 4', 'Gray', '192.168.75.15', 'CCTV', 'Brand E', 'V1.0', '2024-03-17', 3, 9, 90, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(450, 'CAM 5-L10-G9', 'http://example.com/stream5', 'Deskripsi Kamera 5', 'White', '192.168.162.182', 'CCTV', 'Brand F', 'V1.2', '2024-09-20', 3, 9, 90, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(451, 'CAM 1-L1-G10', 'http://example.com/stream1', 'Deskripsi Kamera 1', 'White', '192.168.47.86', 'CCTV', 'Brand B', 'V4.8', '2024-02-16', 4, 10, 91, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(452, 'CAM 2-L1-G10', 'http://example.com/stream2', 'Deskripsi Kamera 2', 'White', '192.168.168.169', 'Surveillance', 'Brand C', 'V2.1', '2024-07-11', 4, 10, 91, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(453, 'CAM 3-L1-G10', 'http://example.com/stream3', 'Deskripsi Kamera 3', 'White', '192.168.151.144', 'Surveillance', 'Brand D', 'V1.9', '2024-07-21', 4, 10, 91, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(454, 'CAM 4-L1-G10', 'http://example.com/stream4', 'Deskripsi Kamera 4', 'White', '192.168.113.24', 'Surveillance', 'Brand E', 'V5.2', '2024-01-08', 4, 10, 91, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(455, 'CAM 5-L1-G10', 'http://example.com/stream5', 'Deskripsi Kamera 5', 'Black', '192.168.55.232', 'Surveillance', 'Brand F', 'V4.2', '2024-12-04', 4, 10, 91, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(456, 'CAM 1-L2-G10', 'http://example.com/stream1', 'Deskripsi Kamera 1', 'White', '192.168.55.65', 'Surveillance', 'Brand B', 'V2.3', '2024-01-24', 4, 10, 92, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(457, 'CAM 2-L2-G10', 'http://example.com/stream2', 'Deskripsi Kamera 2', 'White', '192.168.141.153', 'CCTV', 'Brand C', 'V4.0', '2024-08-10', 4, 10, 92, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(458, 'CAM 3-L2-G10', 'http://example.com/stream3', 'Deskripsi Kamera 3', 'Black', '192.168.99.35', 'CCTV', 'Brand D', 'V1.6', '2024-05-31', 4, 10, 92, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(459, 'CAM 4-L2-G10', 'http://example.com/stream4', 'Deskripsi Kamera 4', 'White', '192.168.228.194', 'CCTV', 'Brand E', 'V5.1', '2024-03-28', 4, 10, 92, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(460, 'CAM 5-L2-G10', 'http://example.com/stream5', 'Deskripsi Kamera 5', 'Gray', '192.168.163.86', 'CCTV', 'Brand F', 'V5.5', '2024-02-01', 4, 10, 92, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(461, 'CAM 1-L3-G10', 'http://example.com/stream1', 'Deskripsi Kamera 1', 'Gray', '192.168.4.116', 'CCTV', 'Brand B', 'V5.1', '2024-12-26', 4, 10, 93, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(462, 'CAM 2-L3-G10', 'http://example.com/stream2', 'Deskripsi Kamera 2', 'White', '192.168.158.102', 'Surveillance', 'Brand C', 'V5.9', '2024-09-27', 4, 10, 93, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(463, 'CAM 3-L3-G10', 'http://example.com/stream3', 'Deskripsi Kamera 3', 'Gray', '192.168.144.184', 'Surveillance', 'Brand D', 'V5.4', '2024-09-16', 4, 10, 93, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(464, 'CAM 4-L3-G10', 'http://example.com/stream4', 'Deskripsi Kamera 4', 'White', '192.168.59.108', 'Surveillance', 'Brand E', 'V2.1', '2024-08-17', 4, 10, 93, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(465, 'CAM 5-L3-G10', 'http://example.com/stream5', 'Deskripsi Kamera 5', 'Black', '192.168.163.236', 'Surveillance', 'Brand F', 'V4.6', '2024-02-25', 4, 10, 93, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(466, 'CAM 1-L4-G10', 'http://example.com/stream1', 'Deskripsi Kamera 1', 'Gray', '192.168.143.1', 'CCTV', 'Brand B', 'V1.2', '2024-03-19', 4, 10, 94, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(467, 'CAM 2-L4-G10', 'http://example.com/stream2', 'Deskripsi Kamera 2', 'Gray', '192.168.251.113', 'CCTV', 'Brand C', 'V5.4', '2024-08-28', 4, 10, 94, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(468, 'CAM 3-L4-G10', 'http://example.com/stream3', 'Deskripsi Kamera 3', 'Black', '192.168.100.91', 'Surveillance', 'Brand D', 'V5.7', '2024-10-24', 4, 10, 94, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(469, 'CAM 4-L4-G10', 'http://example.com/stream4', 'Deskripsi Kamera 4', 'Gray', '192.168.81.21', 'Surveillance', 'Brand E', 'V2.5', '2024-11-01', 4, 10, 94, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(470, 'CAM 5-L4-G10', 'http://example.com/stream5', 'Deskripsi Kamera 5', 'White', '192.168.166.221', 'Surveillance', 'Brand F', 'V4.1', '2024-11-11', 4, 10, 94, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(471, 'CAM 1-L5-G10', 'http://example.com/stream1', 'Deskripsi Kamera 1', 'Black', '192.168.229.230', 'CCTV', 'Brand B', 'V5.5', '2024-11-07', 4, 10, 95, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(472, 'CAM 2-L5-G10', 'http://example.com/stream2', 'Deskripsi Kamera 2', 'Gray', '192.168.29.150', 'Surveillance', 'Brand C', 'V2.6', '2024-05-08', 4, 10, 95, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(473, 'CAM 3-L5-G10', 'http://example.com/stream3', 'Deskripsi Kamera 3', 'Black', '192.168.107.122', 'Surveillance', 'Brand D', 'V3.3', '2024-09-09', 4, 10, 95, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(474, 'CAM 4-L5-G10', 'http://example.com/stream4', 'Deskripsi Kamera 4', 'Black', '192.168.175.98', 'CCTV', 'Brand E', 'V5.5', '2024-03-01', 4, 10, 95, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(475, 'CAM 5-L5-G10', 'http://example.com/stream5', 'Deskripsi Kamera 5', 'Black', '192.168.246.137', 'CCTV', 'Brand F', 'V3.2', '2024-06-01', 4, 10, 95, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(476, 'CAM 1-L6-G10', 'http://example.com/stream1', 'Deskripsi Kamera 1', 'Gray', '192.168.44.7', 'Surveillance', 'Brand B', 'V3.3', '2024-04-16', 4, 10, 96, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(477, 'CAM 2-L6-G10', 'http://example.com/stream2', 'Deskripsi Kamera 2', 'White', '192.168.86.250', 'Surveillance', 'Brand C', 'V3.0', '2024-03-29', 4, 10, 96, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(478, 'CAM 3-L6-G10', 'http://example.com/stream3', 'Deskripsi Kamera 3', 'Gray', '192.168.230.45', 'Surveillance', 'Brand D', 'V1.8', '2024-11-12', 4, 10, 96, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(479, 'CAM 4-L6-G10', 'http://example.com/stream4', 'Deskripsi Kamera 4', 'Gray', '192.168.54.201', 'Surveillance', 'Brand E', 'V2.7', '2024-09-01', 4, 10, 96, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(480, 'CAM 5-L6-G10', 'http://example.com/stream5', 'Deskripsi Kamera 5', 'White', '192.168.77.1', 'Surveillance', 'Brand F', 'V3.1', '2024-04-16', 4, 10, 96, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(481, 'CAM 1-L7-G10', 'http://example.com/stream1', 'Deskripsi Kamera 1', 'Gray', '192.168.233.227', 'CCTV', 'Brand B', 'V3.2', '2024-05-20', 4, 10, 97, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(482, 'CAM 2-L7-G10', 'http://example.com/stream2', 'Deskripsi Kamera 2', 'Black', '192.168.234.255', 'Surveillance', 'Brand C', 'V5.4', '2024-03-16', 4, 10, 97, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(483, 'CAM 3-L7-G10', 'http://example.com/stream3', 'Deskripsi Kamera 3', 'White', '192.168.216.225', 'CCTV', 'Brand D', 'V4.8', '2024-06-06', 4, 10, 97, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(484, 'CAM 4-L7-G10', 'http://example.com/stream4', 'Deskripsi Kamera 4', 'Gray', '192.168.47.87', 'Surveillance', 'Brand E', 'V1.7', '2024-06-30', 4, 10, 97, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(485, 'CAM 5-L7-G10', 'http://example.com/stream5', 'Deskripsi Kamera 5', 'Black', '192.168.34.34', 'Surveillance', 'Brand F', 'V4.0', '2024-09-27', 4, 10, 97, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(486, 'CAM 1-L8-G10', 'http://example.com/stream1', 'Deskripsi Kamera 1', 'Black', '192.168.87.173', 'CCTV', 'Brand B', 'V4.0', '2024-07-06', 4, 10, 98, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(487, 'CAM 2-L8-G10', 'http://example.com/stream2', 'Deskripsi Kamera 2', 'White', '192.168.246.218', 'Surveillance', 'Brand C', 'V4.9', '2024-10-09', 4, 10, 98, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(488, 'CAM 3-L8-G10', 'http://example.com/stream3', 'Deskripsi Kamera 3', 'Gray', '192.168.140.188', 'Surveillance', 'Brand D', 'V4.8', '2024-02-03', 4, 10, 98, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(489, 'CAM 4-L8-G10', 'http://example.com/stream4', 'Deskripsi Kamera 4', 'Gray', '192.168.115.27', 'Surveillance', 'Brand E', 'V2.9', '2024-04-25', 4, 10, 98, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(490, 'CAM 5-L8-G10', 'http://example.com/stream5', 'Deskripsi Kamera 5', 'Gray', '192.168.107.152', 'Surveillance', 'Brand F', 'V4.8', '2024-01-30', 4, 10, 98, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(491, 'CAM 1-L9-G10', 'http://example.com/stream1', 'Deskripsi Kamera 1', 'White', '192.168.215.116', 'CCTV', 'Brand B', 'V5.4', '2024-06-16', 4, 10, 99, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(492, 'CAM 2-L9-G10', 'http://example.com/stream2', 'Deskripsi Kamera 2', 'White', '192.168.245.211', 'Surveillance', 'Brand C', 'V2.6', '2024-08-18', 4, 10, 99, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(493, 'CAM 3-L9-G10', 'http://example.com/stream3', 'Deskripsi Kamera 3', 'Gray', '192.168.222.181', 'CCTV', 'Brand D', 'V2.6', '2024-01-31', 4, 10, 99, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(494, 'CAM 4-L9-G10', 'http://example.com/stream4', 'Deskripsi Kamera 4', 'Gray', '192.168.115.41', 'Surveillance', 'Brand E', 'V4.0', '2024-11-10', 4, 10, 99, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(495, 'CAM 5-L9-G10', 'http://example.com/stream5', 'Deskripsi Kamera 5', 'White', '192.168.108.48', 'CCTV', 'Brand F', 'V5.9', '2024-08-28', 4, 10, 99, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(496, 'CAM 1-L10-G10', 'http://example.com/stream1', 'Deskripsi Kamera 1', 'White', '192.168.116.131', 'Surveillance', 'Brand B', 'V1.7', '2024-05-19', 4, 10, 100, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(497, 'CAM 2-L10-G10', 'http://example.com/stream2', 'Deskripsi Kamera 2', 'White', '192.168.255.239', 'Surveillance', 'Brand C', 'V3.1', '2024-03-10', 4, 10, 100, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(498, 'CAM 3-L10-G10', 'http://example.com/stream3', 'Deskripsi Kamera 3', 'White', '192.168.154.143', 'Surveillance', 'Brand D', 'V1.9', '2024-04-30', 4, 10, 100, '2025-01-06 06:58:48', '2025-01-06 06:58:48');
INSERT INTO `cameras` (`id`, `nama_kamera`, `rtsp`, `description`, `device_color`, `ip`, `type`, `brand`, `version_model`, `installation_date`, `university_id`, `building_id`, `floor_id`, `created_at`, `updated_at`) VALUES
(499, 'CAM 4-L10-G10', 'http://example.com/stream4', 'Deskripsi Kamera 4', 'Black', '192.168.40.237', 'Surveillance', 'Brand E', 'V2.7', '2024-11-24', 4, 10, 100, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(500, 'CAM 5-L10-G10', 'http://example.com/stream5', 'Deskripsi Kamera 5', 'Black', '192.168.26.154', 'CCTV', 'Brand F', 'V2.2', '2024-07-02', 4, 10, 100, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(501, 'CAM 1-L1-G11', 'http://example.com/stream1', 'Deskripsi Kamera 1', 'White', '192.168.134.218', 'Surveillance', 'Brand B', 'V4.9', '2024-01-11', 4, 11, 101, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(502, 'CAM 2-L1-G11', 'http://example.com/stream2', 'Deskripsi Kamera 2', 'White', '192.168.176.15', 'Surveillance', 'Brand C', 'V1.4', '2024-05-15', 4, 11, 101, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(503, 'CAM 3-L1-G11', 'http://example.com/stream3', 'Deskripsi Kamera 3', 'White', '192.168.69.45', 'Surveillance', 'Brand D', 'V3.2', '2024-10-05', 4, 11, 101, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(504, 'CAM 4-L1-G11', 'http://example.com/stream4', 'Deskripsi Kamera 4', 'Gray', '192.168.27.19', 'CCTV', 'Brand E', 'V1.6', '2024-12-12', 4, 11, 101, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(505, 'CAM 5-L1-G11', 'http://example.com/stream5', 'Deskripsi Kamera 5', 'White', '192.168.126.197', 'CCTV', 'Brand F', 'V2.0', '2024-01-17', 4, 11, 101, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(506, 'CAM 1-L2-G11', 'http://example.com/stream1', 'Deskripsi Kamera 1', 'Gray', '192.168.201.231', 'CCTV', 'Brand B', 'V3.1', '2024-01-12', 4, 11, 102, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(507, 'CAM 2-L2-G11', 'http://example.com/stream2', 'Deskripsi Kamera 2', 'White', '192.168.248.208', 'CCTV', 'Brand C', 'V1.3', '2024-09-12', 4, 11, 102, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(508, 'CAM 3-L2-G11', 'http://example.com/stream3', 'Deskripsi Kamera 3', 'Black', '192.168.205.32', 'Surveillance', 'Brand D', 'V4.8', '2024-12-15', 4, 11, 102, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(509, 'CAM 4-L2-G11', 'http://example.com/stream4', 'Deskripsi Kamera 4', 'Black', '192.168.123.95', 'Surveillance', 'Brand E', 'V3.8', '2024-09-23', 4, 11, 102, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(510, 'CAM 5-L2-G11', 'http://example.com/stream5', 'Deskripsi Kamera 5', 'Black', '192.168.120.206', 'CCTV', 'Brand F', 'V5.8', '2024-02-12', 4, 11, 102, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(511, 'CAM 1-L3-G11', 'http://example.com/stream1', 'Deskripsi Kamera 1', 'White', '192.168.226.148', 'CCTV', 'Brand B', 'V2.1', '2024-09-19', 4, 11, 103, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(512, 'CAM 2-L3-G11', 'http://example.com/stream2', 'Deskripsi Kamera 2', 'Gray', '192.168.205.213', 'Surveillance', 'Brand C', 'V3.8', '2025-01-02', 4, 11, 103, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(513, 'CAM 3-L3-G11', 'http://example.com/stream3', 'Deskripsi Kamera 3', 'Black', '192.168.158.157', 'Surveillance', 'Brand D', 'V1.1', '2024-05-14', 4, 11, 103, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(514, 'CAM 4-L3-G11', 'http://example.com/stream4', 'Deskripsi Kamera 4', 'Black', '192.168.111.36', 'Surveillance', 'Brand E', 'V3.3', '2024-07-03', 4, 11, 103, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(515, 'CAM 5-L3-G11', 'http://example.com/stream5', 'Deskripsi Kamera 5', 'White', '192.168.141.247', 'CCTV', 'Brand F', 'V1.1', '2024-12-14', 4, 11, 103, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(516, 'CAM 1-L4-G11', 'http://example.com/stream1', 'Deskripsi Kamera 1', 'Black', '192.168.114.64', 'Surveillance', 'Brand B', 'V2.5', '2024-04-15', 4, 11, 104, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(517, 'CAM 2-L4-G11', 'http://example.com/stream2', 'Deskripsi Kamera 2', 'White', '192.168.209.52', 'CCTV', 'Brand C', 'V4.2', '2024-07-19', 4, 11, 104, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(518, 'CAM 3-L4-G11', 'http://example.com/stream3', 'Deskripsi Kamera 3', 'Gray', '192.168.102.243', 'Surveillance', 'Brand D', 'V5.0', '2024-08-24', 4, 11, 104, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(519, 'CAM 4-L4-G11', 'http://example.com/stream4', 'Deskripsi Kamera 4', 'White', '192.168.66.59', 'Surveillance', 'Brand E', 'V2.5', '2024-02-19', 4, 11, 104, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(520, 'CAM 5-L4-G11', 'http://example.com/stream5', 'Deskripsi Kamera 5', 'Gray', '192.168.233.44', 'Surveillance', 'Brand F', 'V1.9', '2024-11-24', 4, 11, 104, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(521, 'CAM 1-L5-G11', 'http://example.com/stream1', 'Deskripsi Kamera 1', 'Black', '192.168.219.187', 'Surveillance', 'Brand B', 'V4.2', '2024-08-28', 4, 11, 105, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(522, 'CAM 2-L5-G11', 'http://example.com/stream2', 'Deskripsi Kamera 2', 'Black', '192.168.87.77', 'CCTV', 'Brand C', 'V2.3', '2024-06-03', 4, 11, 105, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(523, 'CAM 3-L5-G11', 'http://example.com/stream3', 'Deskripsi Kamera 3', 'Black', '192.168.201.43', 'Surveillance', 'Brand D', 'V2.2', '2024-04-21', 4, 11, 105, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(524, 'CAM 4-L5-G11', 'http://example.com/stream4', 'Deskripsi Kamera 4', 'Gray', '192.168.165.146', 'Surveillance', 'Brand E', 'V4.2', '2024-03-02', 4, 11, 105, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(525, 'CAM 5-L5-G11', 'http://example.com/stream5', 'Deskripsi Kamera 5', 'Black', '192.168.222.212', 'Surveillance', 'Brand F', 'V4.1', '2024-10-15', 4, 11, 105, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(526, 'CAM 1-L6-G11', 'http://example.com/stream1', 'Deskripsi Kamera 1', 'Black', '192.168.114.10', 'CCTV', 'Brand B', 'V5.6', '2024-07-03', 4, 11, 106, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(527, 'CAM 2-L6-G11', 'http://example.com/stream2', 'Deskripsi Kamera 2', 'White', '192.168.151.42', 'Surveillance', 'Brand C', 'V1.4', '2024-11-07', 4, 11, 106, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(528, 'CAM 3-L6-G11', 'http://example.com/stream3', 'Deskripsi Kamera 3', 'White', '192.168.28.170', 'CCTV', 'Brand D', 'V3.9', '2024-11-24', 4, 11, 106, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(529, 'CAM 4-L6-G11', 'http://example.com/stream4', 'Deskripsi Kamera 4', 'White', '192.168.11.211', 'CCTV', 'Brand E', 'V2.0', '2024-06-19', 4, 11, 106, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(530, 'CAM 5-L6-G11', 'http://example.com/stream5', 'Deskripsi Kamera 5', 'Black', '192.168.86.64', 'Surveillance', 'Brand F', 'V4.7', '2024-06-11', 4, 11, 106, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(531, 'CAM 1-L7-G11', 'http://example.com/stream1', 'Deskripsi Kamera 1', 'Gray', '192.168.148.153', 'Surveillance', 'Brand B', 'V1.4', '2024-09-23', 4, 11, 107, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(532, 'CAM 2-L7-G11', 'http://example.com/stream2', 'Deskripsi Kamera 2', 'Black', '192.168.107.102', 'Surveillance', 'Brand C', 'V5.7', '2024-07-16', 4, 11, 107, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(533, 'CAM 3-L7-G11', 'http://example.com/stream3', 'Deskripsi Kamera 3', 'White', '192.168.248.194', 'Surveillance', 'Brand D', 'V2.4', '2024-03-05', 4, 11, 107, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(534, 'CAM 4-L7-G11', 'http://example.com/stream4', 'Deskripsi Kamera 4', 'Gray', '192.168.214.106', 'Surveillance', 'Brand E', 'V1.4', '2024-07-30', 4, 11, 107, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(535, 'CAM 5-L7-G11', 'http://example.com/stream5', 'Deskripsi Kamera 5', 'Black', '192.168.50.2', 'Surveillance', 'Brand F', 'V3.1', '2024-08-05', 4, 11, 107, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(536, 'CAM 1-L8-G11', 'http://example.com/stream1', 'Deskripsi Kamera 1', 'Gray', '192.168.201.240', 'Surveillance', 'Brand B', 'V4.9', '2024-04-10', 4, 11, 108, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(537, 'CAM 2-L8-G11', 'http://example.com/stream2', 'Deskripsi Kamera 2', 'Black', '192.168.51.39', 'CCTV', 'Brand C', 'V5.5', '2024-11-07', 4, 11, 108, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(538, 'CAM 3-L8-G11', 'http://example.com/stream3', 'Deskripsi Kamera 3', 'Gray', '192.168.191.163', 'Surveillance', 'Brand D', 'V1.7', '2024-04-15', 4, 11, 108, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(539, 'CAM 4-L8-G11', 'http://example.com/stream4', 'Deskripsi Kamera 4', 'White', '192.168.65.106', 'Surveillance', 'Brand E', 'V3.8', '2024-01-21', 4, 11, 108, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(540, 'CAM 5-L8-G11', 'http://example.com/stream5', 'Deskripsi Kamera 5', 'Gray', '192.168.130.25', 'CCTV', 'Brand F', 'V2.7', '2024-04-23', 4, 11, 108, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(541, 'CAM 1-L9-G11', 'http://example.com/stream1', 'Deskripsi Kamera 1', 'White', '192.168.219.230', 'CCTV', 'Brand B', 'V1.9', '2024-01-11', 4, 11, 109, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(542, 'CAM 2-L9-G11', 'http://example.com/stream2', 'Deskripsi Kamera 2', 'Black', '192.168.191.148', 'Surveillance', 'Brand C', 'V4.8', '2024-01-13', 4, 11, 109, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(543, 'CAM 3-L9-G11', 'http://example.com/stream3', 'Deskripsi Kamera 3', 'White', '192.168.112.220', 'Surveillance', 'Brand D', 'V2.9', '2024-07-21', 4, 11, 109, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(544, 'CAM 4-L9-G11', 'http://example.com/stream4', 'Deskripsi Kamera 4', 'White', '192.168.193.63', 'Surveillance', 'Brand E', 'V5.7', '2024-11-10', 4, 11, 109, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(545, 'CAM 5-L9-G11', 'http://example.com/stream5', 'Deskripsi Kamera 5', 'Gray', '192.168.189.174', 'Surveillance', 'Brand F', 'V2.2', '2024-04-20', 4, 11, 109, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(546, 'CAM 1-L10-G11', 'http://example.com/stream1', 'Deskripsi Kamera 1', 'White', '192.168.241.171', 'CCTV', 'Brand B', 'V5.4', '2024-04-19', 4, 11, 110, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(547, 'CAM 2-L10-G11', 'http://example.com/stream2', 'Deskripsi Kamera 2', 'Black', '192.168.142.228', 'CCTV', 'Brand C', 'V2.9', '2024-12-29', 4, 11, 110, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(548, 'CAM 3-L10-G11', 'http://example.com/stream3', 'Deskripsi Kamera 3', 'White', '192.168.20.147', 'Surveillance', 'Brand D', 'V2.3', '2024-09-24', 4, 11, 110, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(549, 'CAM 4-L10-G11', 'http://example.com/stream4', 'Deskripsi Kamera 4', 'White', '192.168.99.122', 'Surveillance', 'Brand E', 'V4.7', '2024-11-13', 4, 11, 110, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(550, 'CAM 5-L10-G11', 'http://example.com/stream5', 'Deskripsi Kamera 5', 'Gray', '192.168.170.6', 'Surveillance', 'Brand F', 'V3.0', '2024-12-08', 4, 11, 110, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(551, 'CAM 1-L1-G12', 'http://example.com/stream1', 'Deskripsi Kamera 1', 'Gray', '192.168.15.29', 'CCTV', 'Brand B', 'V2.3', '2024-03-15', 4, 12, 111, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(552, 'CAM 2-L1-G12', 'http://example.com/stream2', 'Deskripsi Kamera 2', 'White', '192.168.149.35', 'CCTV', 'Brand C', 'V2.3', '2024-07-01', 4, 12, 111, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(553, 'CAM 3-L1-G12', 'http://example.com/stream3', 'Deskripsi Kamera 3', 'White', '192.168.237.19', 'Surveillance', 'Brand D', 'V1.4', '2024-06-27', 4, 12, 111, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(554, 'CAM 4-L1-G12', 'http://example.com/stream4', 'Deskripsi Kamera 4', 'Gray', '192.168.63.48', 'Surveillance', 'Brand E', 'V2.1', '2024-03-07', 4, 12, 111, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(555, 'CAM 5-L1-G12', 'http://example.com/stream5', 'Deskripsi Kamera 5', 'Black', '192.168.185.42', 'CCTV', 'Brand F', 'V5.6', '2024-08-28', 4, 12, 111, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(556, 'CAM 1-L2-G12', 'http://example.com/stream1', 'Deskripsi Kamera 1', 'Black', '192.168.133.206', 'CCTV', 'Brand B', 'V3.4', '2024-02-11', 4, 12, 112, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(557, 'CAM 2-L2-G12', 'http://example.com/stream2', 'Deskripsi Kamera 2', 'Black', '192.168.179.78', 'Surveillance', 'Brand C', 'V5.2', '2024-10-24', 4, 12, 112, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(558, 'CAM 3-L2-G12', 'http://example.com/stream3', 'Deskripsi Kamera 3', 'Gray', '192.168.234.132', 'Surveillance', 'Brand D', 'V1.3', '2024-07-18', 4, 12, 112, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(559, 'CAM 4-L2-G12', 'http://example.com/stream4', 'Deskripsi Kamera 4', 'White', '192.168.51.142', 'Surveillance', 'Brand E', 'V3.8', '2024-11-01', 4, 12, 112, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(560, 'CAM 5-L2-G12', 'http://example.com/stream5', 'Deskripsi Kamera 5', 'Black', '192.168.159.217', 'CCTV', 'Brand F', 'V3.1', '2024-05-20', 4, 12, 112, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(561, 'CAM 1-L3-G12', 'http://example.com/stream1', 'Deskripsi Kamera 1', 'Black', '192.168.154.171', 'CCTV', 'Brand B', 'V2.8', '2024-08-12', 4, 12, 113, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(562, 'CAM 2-L3-G12', 'http://example.com/stream2', 'Deskripsi Kamera 2', 'Black', '192.168.73.179', 'CCTV', 'Brand C', 'V3.9', '2024-07-06', 4, 12, 113, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(563, 'CAM 3-L3-G12', 'http://example.com/stream3', 'Deskripsi Kamera 3', 'White', '192.168.143.65', 'Surveillance', 'Brand D', 'V2.2', '2024-11-09', 4, 12, 113, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(564, 'CAM 4-L3-G12', 'http://example.com/stream4', 'Deskripsi Kamera 4', 'Gray', '192.168.243.16', 'CCTV', 'Brand E', 'V2.8', '2024-06-23', 4, 12, 113, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(565, 'CAM 5-L3-G12', 'http://example.com/stream5', 'Deskripsi Kamera 5', 'Gray', '192.168.194.86', 'Surveillance', 'Brand F', 'V1.8', '2024-05-07', 4, 12, 113, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(566, 'CAM 1-L4-G12', 'http://example.com/stream1', 'Deskripsi Kamera 1', 'Black', '192.168.33.60', 'Surveillance', 'Brand B', 'V3.9', '2024-05-12', 4, 12, 114, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(567, 'CAM 2-L4-G12', 'http://example.com/stream2', 'Deskripsi Kamera 2', 'Gray', '192.168.102.143', 'CCTV', 'Brand C', 'V5.6', '2024-07-01', 4, 12, 114, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(568, 'CAM 3-L4-G12', 'http://example.com/stream3', 'Deskripsi Kamera 3', 'White', '192.168.54.116', 'Surveillance', 'Brand D', 'V5.5', '2024-12-27', 4, 12, 114, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(569, 'CAM 4-L4-G12', 'http://example.com/stream4', 'Deskripsi Kamera 4', 'White', '192.168.52.77', 'CCTV', 'Brand E', 'V4.3', '2024-08-06', 4, 12, 114, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(570, 'CAM 5-L4-G12', 'http://example.com/stream5', 'Deskripsi Kamera 5', 'Gray', '192.168.42.88', 'Surveillance', 'Brand F', 'V2.5', '2024-05-07', 4, 12, 114, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(571, 'CAM 1-L5-G12', 'http://example.com/stream1', 'Deskripsi Kamera 1', 'Black', '192.168.149.143', 'Surveillance', 'Brand B', 'V3.6', '2024-12-15', 4, 12, 115, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(572, 'CAM 2-L5-G12', 'http://example.com/stream2', 'Deskripsi Kamera 2', 'Black', '192.168.84.175', 'CCTV', 'Brand C', 'V1.9', '2024-01-14', 4, 12, 115, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(573, 'CAM 3-L5-G12', 'http://example.com/stream3', 'Deskripsi Kamera 3', 'White', '192.168.246.163', 'Surveillance', 'Brand D', 'V5.6', '2024-10-25', 4, 12, 115, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(574, 'CAM 4-L5-G12', 'http://example.com/stream4', 'Deskripsi Kamera 4', 'White', '192.168.204.50', 'Surveillance', 'Brand E', 'V1.6', '2024-08-24', 4, 12, 115, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(575, 'CAM 5-L5-G12', 'http://example.com/stream5', 'Deskripsi Kamera 5', 'Gray', '192.168.98.18', 'Surveillance', 'Brand F', 'V3.2', '2024-03-30', 4, 12, 115, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(576, 'CAM 1-L6-G12', 'http://example.com/stream1', 'Deskripsi Kamera 1', 'Gray', '192.168.23.129', 'Surveillance', 'Brand B', 'V2.6', '2024-09-14', 4, 12, 116, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(577, 'CAM 2-L6-G12', 'http://example.com/stream2', 'Deskripsi Kamera 2', 'Black', '192.168.109.193', 'CCTV', 'Brand C', 'V4.1', '2024-10-22', 4, 12, 116, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(578, 'CAM 3-L6-G12', 'http://example.com/stream3', 'Deskripsi Kamera 3', 'White', '192.168.225.151', 'Surveillance', 'Brand D', 'V2.7', '2024-08-03', 4, 12, 116, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(579, 'CAM 4-L6-G12', 'http://example.com/stream4', 'Deskripsi Kamera 4', 'Black', '192.168.71.171', 'Surveillance', 'Brand E', 'V3.3', '2024-06-01', 4, 12, 116, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(580, 'CAM 5-L6-G12', 'http://example.com/stream5', 'Deskripsi Kamera 5', 'Gray', '192.168.1.155', 'Surveillance', 'Brand F', 'V2.8', '2025-01-01', 4, 12, 116, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(581, 'CAM 1-L7-G12', 'http://example.com/stream1', 'Deskripsi Kamera 1', 'Black', '192.168.71.143', 'Surveillance', 'Brand B', 'V4.1', '2024-04-10', 4, 12, 117, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(582, 'CAM 2-L7-G12', 'http://example.com/stream2', 'Deskripsi Kamera 2', 'Gray', '192.168.138.241', 'Surveillance', 'Brand C', 'V4.3', '2024-03-21', 4, 12, 117, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(583, 'CAM 3-L7-G12', 'http://example.com/stream3', 'Deskripsi Kamera 3', 'Gray', '192.168.98.173', 'CCTV', 'Brand D', 'V5.9', '2024-09-09', 4, 12, 117, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(584, 'CAM 4-L7-G12', 'http://example.com/stream4', 'Deskripsi Kamera 4', 'White', '192.168.214.73', 'CCTV', 'Brand E', 'V2.4', '2024-05-07', 4, 12, 117, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(585, 'CAM 5-L7-G12', 'http://example.com/stream5', 'Deskripsi Kamera 5', 'Black', '192.168.147.235', 'CCTV', 'Brand F', 'V4.9', '2024-02-11', 4, 12, 117, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(586, 'CAM 1-L8-G12', 'http://example.com/stream1', 'Deskripsi Kamera 1', 'Black', '192.168.168.203', 'Surveillance', 'Brand B', 'V5.9', '2024-04-16', 4, 12, 118, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(587, 'CAM 2-L8-G12', 'http://example.com/stream2', 'Deskripsi Kamera 2', 'Black', '192.168.37.141', 'Surveillance', 'Brand C', 'V5.4', '2024-01-22', 4, 12, 118, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(588, 'CAM 3-L8-G12', 'http://example.com/stream3', 'Deskripsi Kamera 3', 'Gray', '192.168.68.21', 'CCTV', 'Brand D', 'V5.3', '2024-01-10', 4, 12, 118, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(589, 'CAM 4-L8-G12', 'http://example.com/stream4', 'Deskripsi Kamera 4', 'White', '192.168.24.89', 'Surveillance', 'Brand E', 'V1.0', '2024-12-29', 4, 12, 118, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(590, 'CAM 5-L8-G12', 'http://example.com/stream5', 'Deskripsi Kamera 5', 'Black', '192.168.221.136', 'CCTV', 'Brand F', 'V3.5', '2024-04-12', 4, 12, 118, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(591, 'CAM 1-L9-G12', 'http://example.com/stream1', 'Deskripsi Kamera 1', 'Gray', '192.168.124.173', 'Surveillance', 'Brand B', 'V1.7', '2024-04-14', 4, 12, 119, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(592, 'CAM 2-L9-G12', 'http://example.com/stream2', 'Deskripsi Kamera 2', 'Black', '192.168.152.143', 'Surveillance', 'Brand C', 'V2.6', '2024-10-28', 4, 12, 119, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(593, 'CAM 3-L9-G12', 'http://example.com/stream3', 'Deskripsi Kamera 3', 'Black', '192.168.37.228', 'CCTV', 'Brand D', 'V4.0', '2024-01-23', 4, 12, 119, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(594, 'CAM 4-L9-G12', 'http://example.com/stream4', 'Deskripsi Kamera 4', 'White', '192.168.19.137', 'Surveillance', 'Brand E', 'V4.9', '2024-12-08', 4, 12, 119, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(595, 'CAM 5-L9-G12', 'http://example.com/stream5', 'Deskripsi Kamera 5', 'Black', '192.168.43.242', 'CCTV', 'Brand F', 'V5.0', '2024-02-20', 4, 12, 119, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(596, 'CAM 1-L10-G12', 'http://example.com/stream1', 'Deskripsi Kamera 1', 'Black', '192.168.184.16', 'CCTV', 'Brand B', 'V2.8', '2024-07-25', 4, 12, 120, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(597, 'CAM 2-L10-G12', 'http://example.com/stream2', 'Deskripsi Kamera 2', 'White', '192.168.41.107', 'CCTV', 'Brand C', 'V4.0', '2024-11-21', 4, 12, 120, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(598, 'CAM 3-L10-G12', 'http://example.com/stream3', 'Deskripsi Kamera 3', 'Black', '192.168.99.145', 'CCTV', 'Brand D', 'V5.6', '2024-10-24', 4, 12, 120, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(599, 'CAM 4-L10-G12', 'http://example.com/stream4', 'Deskripsi Kamera 4', 'Black', '192.168.62.191', 'Surveillance', 'Brand E', 'V2.3', '2024-02-27', 4, 12, 120, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(600, 'CAM 5-L10-G12', 'http://example.com/stream5', 'Deskripsi Kamera 5', 'White', '192.168.216.178', 'CCTV', 'Brand F', 'V3.1', '2024-03-02', 4, 12, 120, '2025-01-06 06:58:48', '2025-01-06 06:58:48');

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
  `id` bigint UNSIGNED NOT NULL,
  `floor_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `university_id` bigint UNSIGNED NOT NULL,
  `building_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `floors`
--

INSERT INTO `floors` (`id`, `floor_name`, `slug`, `university_id`, `building_id`, `created_at`, `updated_at`) VALUES
(1, 'Lantai 1', 'lantai-1-g1', 1, 1, '2025-01-06 06:58:47', '2025-01-06 06:58:47'),
(2, 'Lantai 2', 'lantai-2-g1', 1, 1, '2025-01-06 06:58:47', '2025-01-06 06:58:47'),
(3, 'Lantai 3', 'lantai-3-g1', 1, 1, '2025-01-06 06:58:47', '2025-01-06 06:58:47'),
(4, 'Lantai 4', 'lantai-4-g1', 1, 1, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(5, 'Lantai 5', 'lantai-5-g1', 1, 1, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(6, 'Lantai 6', 'lantai-6-g1', 1, 1, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(7, 'Lantai 7', 'lantai-7-g1', 1, 1, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(8, 'Lantai 8', 'lantai-8-g1', 1, 1, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(9, 'Lantai 9', 'lantai-9-g1', 1, 1, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(10, 'Lantai 10', 'lantai-10-g1', 1, 1, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(11, 'Lantai 1', 'lantai-1-g2', 1, 2, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(12, 'Lantai 2', 'lantai-2-g2', 1, 2, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(13, 'Lantai 3', 'lantai-3-g2', 1, 2, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(14, 'Lantai 4', 'lantai-4-g2', 1, 2, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(15, 'Lantai 5', 'lantai-5-g2', 1, 2, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(16, 'Lantai 6', 'lantai-6-g2', 1, 2, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(17, 'Lantai 7', 'lantai-7-g2', 1, 2, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(18, 'Lantai 8', 'lantai-8-g2', 1, 2, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(19, 'Lantai 9', 'lantai-9-g2', 1, 2, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(20, 'Lantai 10', 'lantai-10-g2', 1, 2, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(21, 'Lantai 1', 'lantai-1-g3', 1, 3, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(22, 'Lantai 2', 'lantai-2-g3', 1, 3, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(23, 'Lantai 3', 'lantai-3-g3', 1, 3, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(24, 'Lantai 4', 'lantai-4-g3', 1, 3, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(25, 'Lantai 5', 'lantai-5-g3', 1, 3, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(26, 'Lantai 6', 'lantai-6-g3', 1, 3, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(27, 'Lantai 7', 'lantai-7-g3', 1, 3, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(28, 'Lantai 8', 'lantai-8-g3', 1, 3, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(29, 'Lantai 9', 'lantai-9-g3', 1, 3, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(30, 'Lantai 10', 'lantai-10-g3', 1, 3, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(31, 'Lantai 1', 'lantai-1-g4', 2, 4, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(32, 'Lantai 2', 'lantai-2-g4', 2, 4, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(33, 'Lantai 3', 'lantai-3-g4', 2, 4, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(34, 'Lantai 4', 'lantai-4-g4', 2, 4, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(35, 'Lantai 5', 'lantai-5-g4', 2, 4, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(36, 'Lantai 6', 'lantai-6-g4', 2, 4, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(37, 'Lantai 7', 'lantai-7-g4', 2, 4, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(38, 'Lantai 8', 'lantai-8-g4', 2, 4, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(39, 'Lantai 9', 'lantai-9-g4', 2, 4, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(40, 'Lantai 10', 'lantai-10-g4', 2, 4, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(41, 'Lantai 1', 'lantai-1-g5', 2, 5, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(42, 'Lantai 2', 'lantai-2-g5', 2, 5, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(43, 'Lantai 3', 'lantai-3-g5', 2, 5, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(44, 'Lantai 4', 'lantai-4-g5', 2, 5, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(45, 'Lantai 5', 'lantai-5-g5', 2, 5, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(46, 'Lantai 6', 'lantai-6-g5', 2, 5, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(47, 'Lantai 7', 'lantai-7-g5', 2, 5, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(48, 'Lantai 8', 'lantai-8-g5', 2, 5, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(49, 'Lantai 9', 'lantai-9-g5', 2, 5, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(50, 'Lantai 10', 'lantai-10-g5', 2, 5, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(51, 'Lantai 1', 'lantai-1-g6', 2, 6, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(52, 'Lantai 2', 'lantai-2-g6', 2, 6, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(53, 'Lantai 3', 'lantai-3-g6', 2, 6, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(54, 'Lantai 4', 'lantai-4-g6', 2, 6, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(55, 'Lantai 5', 'lantai-5-g6', 2, 6, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(56, 'Lantai 6', 'lantai-6-g6', 2, 6, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(57, 'Lantai 7', 'lantai-7-g6', 2, 6, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(58, 'Lantai 8', 'lantai-8-g6', 2, 6, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(59, 'Lantai 9', 'lantai-9-g6', 2, 6, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(60, 'Lantai 10', 'lantai-10-g6', 2, 6, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(61, 'Lantai 1', 'lantai-1-g7', 3, 7, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(62, 'Lantai 2', 'lantai-2-g7', 3, 7, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(63, 'Lantai 3', 'lantai-3-g7', 3, 7, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(64, 'Lantai 4', 'lantai-4-g7', 3, 7, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(65, 'Lantai 5', 'lantai-5-g7', 3, 7, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(66, 'Lantai 6', 'lantai-6-g7', 3, 7, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(67, 'Lantai 7', 'lantai-7-g7', 3, 7, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(68, 'Lantai 8', 'lantai-8-g7', 3, 7, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(69, 'Lantai 9', 'lantai-9-g7', 3, 7, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(70, 'Lantai 10', 'lantai-10-g7', 3, 7, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(71, 'Lantai 1', 'lantai-1-g8', 3, 8, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(72, 'Lantai 2', 'lantai-2-g8', 3, 8, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(73, 'Lantai 3', 'lantai-3-g8', 3, 8, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(74, 'Lantai 4', 'lantai-4-g8', 3, 8, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(75, 'Lantai 5', 'lantai-5-g8', 3, 8, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(76, 'Lantai 6', 'lantai-6-g8', 3, 8, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(77, 'Lantai 7', 'lantai-7-g8', 3, 8, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(78, 'Lantai 8', 'lantai-8-g8', 3, 8, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(79, 'Lantai 9', 'lantai-9-g8', 3, 8, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(80, 'Lantai 10', 'lantai-10-g8', 3, 8, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(81, 'Lantai 1', 'lantai-1-g9', 3, 9, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(82, 'Lantai 2', 'lantai-2-g9', 3, 9, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(83, 'Lantai 3', 'lantai-3-g9', 3, 9, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(84, 'Lantai 4', 'lantai-4-g9', 3, 9, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(85, 'Lantai 5', 'lantai-5-g9', 3, 9, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(86, 'Lantai 6', 'lantai-6-g9', 3, 9, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(87, 'Lantai 7', 'lantai-7-g9', 3, 9, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(88, 'Lantai 8', 'lantai-8-g9', 3, 9, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(89, 'Lantai 9', 'lantai-9-g9', 3, 9, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(90, 'Lantai 10', 'lantai-10-g9', 3, 9, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(91, 'Lantai 1', 'lantai-1-g10', 4, 10, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(92, 'Lantai 2', 'lantai-2-g10', 4, 10, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(93, 'Lantai 3', 'lantai-3-g10', 4, 10, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(94, 'Lantai 4', 'lantai-4-g10', 4, 10, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(95, 'Lantai 5', 'lantai-5-g10', 4, 10, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(96, 'Lantai 6', 'lantai-6-g10', 4, 10, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(97, 'Lantai 7', 'lantai-7-g10', 4, 10, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(98, 'Lantai 8', 'lantai-8-g10', 4, 10, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(99, 'Lantai 9', 'lantai-9-g10', 4, 10, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(100, 'Lantai 10', 'lantai-10-g10', 4, 10, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(101, 'Lantai 1', 'lantai-1-g11', 4, 11, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(102, 'Lantai 2', 'lantai-2-g11', 4, 11, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(103, 'Lantai 3', 'lantai-3-g11', 4, 11, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(104, 'Lantai 4', 'lantai-4-g11', 4, 11, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(105, 'Lantai 5', 'lantai-5-g11', 4, 11, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(106, 'Lantai 6', 'lantai-6-g11', 4, 11, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(107, 'Lantai 7', 'lantai-7-g11', 4, 11, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(108, 'Lantai 8', 'lantai-8-g11', 4, 11, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(109, 'Lantai 9', 'lantai-9-g11', 4, 11, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(110, 'Lantai 10', 'lantai-10-g11', 4, 11, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(111, 'Lantai 1', 'lantai-1-g12', 4, 12, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(112, 'Lantai 2', 'lantai-2-g12', 4, 12, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(113, 'Lantai 3', 'lantai-3-g12', 4, 12, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(114, 'Lantai 4', 'lantai-4-g12', 4, 12, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(115, 'Lantai 5', 'lantai-5-g12', 4, 12, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(116, 'Lantai 6', 'lantai-6-g12', 4, 12, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(117, 'Lantai 7', 'lantai-7-g12', 4, 12, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(118, 'Lantai 8', 'lantai-8-g12', 4, 12, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(119, 'Lantai 9', 'lantai-9-g12', 4, 12, '2025-01-06 06:58:48', '2025-01-06 06:58:48'),
(120, 'Lantai 10', 'lantai-10-g12', 4, 12, '2025-01-06 06:58:48', '2025-01-06 06:58:48');

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
(7, '9999_11_28_123247_create_cameras_table', 1);

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
('LIOpvbJI2mHt4DxclPVtHcrmv4sdP2fYOCsE6v7q', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiZjh2VnN0Y2t4d3FSa2hCMjY2TGc1bUNPV29aWDZjWkxqdGYyYk5pbiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjM5OiJodHRwOi8va2F3YS50ZXN0L2FkbWluL21hbmFnZS9idWlsZGluZy9leUpwZGlJNklrNXVRbWh0T0dndmJUUjNRM1JuVkZKc1ZGWjFhV2M5UFNJc0luWmhiSFZsSWpvaVZtRXZiemRxT1dOb09VRmtiR1pSZVRCSVpVb3dRVDA5SWl3aWJXRmpJam9pTWpRek1qa3lOVFJrTnpRNFlqYzRZV1psTXpJNU16STBZMkpoTnpVNU4ySmlaVGt6TVRZeU56aGtOalV5Tmpjek5UVm1NbUZsWkRKbVltVmtaRGd4WXlJc0luUmhaeUk2SWlKOSI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==', 1736173497);

-- --------------------------------------------------------

--
-- Table structure for table `universities`
--

CREATE TABLE `universities` (
  `id` bigint UNSIGNED NOT NULL,
  `university_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `universities`
--

INSERT INTO `universities` (`id`, `university_name`, `slug`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Kampus Pusat', 'kampus-pusat', 'Deskripsi untuk Kampus Pusat', NULL, NULL),
(2, 'Kampus Viktor', 'kampus-viktor', 'Deskripsi untuk Kampus Viktor', NULL, NULL),
(3, 'Kampus Witana', 'kampus-witana', 'Deskripsi untuk Kampus Witana', NULL, NULL),
(4, 'Kampus Serang', 'kampus-serang', 'Deskripsi untuk Kampus Serang', NULL, NULL);

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
(1, 'Test User', 'test@example.com', '2025-01-06 06:58:47', '$2y$12$p51hrD337vW5DPleEkqxP.yJY.8ipvy0RSclw67QuB1A4IkvSNv0u', 'fXzRSWLtux2uEqx7FLDSXYYNG9FXI8kYUG8A51tiBsEHnaS1twZ1EREHk1VN', '2025-01-06 06:58:47', '2025-01-06 06:58:47');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buildings`
--
ALTER TABLE `buildings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `university` (`university_id`);

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
  ADD KEY `university_camera_id` (`university_id`),
  ADD KEY `bulding_camera_id` (`building_id`),
  ADD KEY `floor` (`floor_id`);

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
  ADD KEY `university_id` (`university_id`),
  ADD KEY `bulding` (`building_id`);

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
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `buildings`
--
ALTER TABLE `buildings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `cameras`
--
ALTER TABLE `cameras`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=601;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `floors`
--
ALTER TABLE `floors`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `universities`
--
ALTER TABLE `universities`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `buildings`
--
ALTER TABLE `buildings`
  ADD CONSTRAINT `university` FOREIGN KEY (`university_id`) REFERENCES `universities` (`id`);

--
-- Constraints for table `cameras`
--
ALTER TABLE `cameras`
  ADD CONSTRAINT `bulding_camera_id` FOREIGN KEY (`building_id`) REFERENCES `buildings` (`id`),
  ADD CONSTRAINT `floor` FOREIGN KEY (`floor_id`) REFERENCES `floors` (`id`),
  ADD CONSTRAINT `university_camera_id` FOREIGN KEY (`university_id`) REFERENCES `universities` (`id`);

--
-- Constraints for table `floors`
--
ALTER TABLE `floors`
  ADD CONSTRAINT `bulding` FOREIGN KEY (`building_id`) REFERENCES `buildings` (`id`),
  ADD CONSTRAINT `university_id` FOREIGN KEY (`university_id`) REFERENCES `universities` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
