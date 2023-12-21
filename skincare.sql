-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 21, 2023 at 12:13 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `skincare`
--

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

CREATE TABLE `answers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_user` int(11) NOT NULL,
  `answer` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `result` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `answers`
--

INSERT INTO `answers` (`id`, `id_user`, `answer`, `created_at`, `updated_at`, `result`) VALUES
(38, 2, '[\"-1\",\"-1\",\"-1\",\"1\",\"-1\",\"-1\",\"-1\",\"-1\",\"1\",\"-1\",\"-1\",\"1\",\"-1\",\"-1\",\"-1\",\"-1\",\"-1\",\"-1\",\"-1\",\"-1\"]', '2023-05-15 03:30:28', '2023-05-15 03:30:28', '[\"Sunscreen\",\"Cream Allergan\",\"Lotion Anti Komedo\"]'),
(40, 2, '[\"-1\",\"-1\",\"1\",\"-1\",\"-1\",\"1\",\"1\",\"1\",\"1\",\"-1\",\"-1\",\"1\",\"1\",\"1\",\"-1\",\"-1\",\"-1\",\"-1\",\"-1\",\"1\"]', '2023-05-17 03:38:54', '2023-05-17 03:38:54', '[\"Moisturizer\"]'),
(42, 8, '[\"-1\",\"-1\",\"-1\",\"1\",\"1\",\"-1\",\"-1\",\"-1\",\"-1\",\"-1\",\"1\",\"1\",\"-1\",\"-1\",\"1\",\"1\",\"1\",\"1\",\"1\",\"1\"]', '2023-05-17 05:22:27', '2023-05-17 05:22:27', '[\"Facial Wash\"]'),
(45, 10, '[\"-1\",\"-1\",\"1\",\"-1\",\"1\",\"-1\",\"-1\",\"-1\",\"-1\",\"-1\",\"-1\",\"-1\",\"-1\",\"-1\",\"-1\",\"-1\",\"-1\",\"1\",\"1\",\"1\"]', '2023-06-07 23:41:03', '2023-06-07 23:41:03', '[\"Cream Allergan\"]'),
(46, 10, '[\"-1\",\"-1\",\"1\",\"-1\",\"1\",\"-1\",\"-1\",\"-1\",\"-1\",\"-1\",\"-1\",\"-1\",\"-1\",\"-1\",\"-1\",\"-1\",\"-1\",\"1\",\"1\",\"1\"]', '2023-06-07 23:41:14', '2023-06-07 23:41:14', '[\"Cream Allergan\"]'),
(47, 13, '[\"1\",\"-1\",\"1\",\"-1\",\"1\",\"1\",\"1\",\"1\",\"1\",\"-1\",\"-1\",\"-1\",\"1\",\"1\",\"-1\",\"1\",\"1\",\"-1\",\"-1\",\"-1\"]', '2023-06-09 03:27:12', '2023-06-09 03:27:12', '[\"Sunscreen\",\"Serum Exfoliating\"]'),
(48, 12, '[\"-1\",\"-1\",\"-1\",\"-1\",\"1\",\"-1\",\"1\",\"-1\",\"-1\",\"1\",\"-1\",\"-1\",\"1\",\"-1\",\"1\",\"1\",\"1\",\"1\",\"1\",\"1\"]', '2023-06-09 03:28:06', '2023-06-09 03:28:06', '[\"Serum Hydrating\"]'),
(49, 14, '[\"-1\",\"-1\",\"1\",\"1\",\"1\",\"1\",\"1\",\"-1\",\"1\",\"-1\",\"1\",\"1\",\"-1\",\"1\",\"1\",\"1\",\"-1\",\"-1\",\"-1\",\"-1\"]', '2023-06-09 03:29:00', '2023-06-09 03:29:00', '[\"Micellar Water\"]'),
(50, 16, '[\"-1\",\"-1\",\"-1\",\"-1\",\"1\",\"1\",\"1\",\"1\",\"1\",\"1\",\"-1\",\"-1\",\"1\",\"1\",\"1\",\"1\",\"1\",\"-1\",\"1\",\"1\"]', '2023-06-09 03:31:42', '2023-06-09 03:31:42', '[\"Moisturizer\"]'),
(51, 18, '[\"-1\",\"1\",\"1\",\"1\",\"-1\",\"1\",\"1\",\"1\",\"1\",\"-1\",\"-1\",\"1\",\"-1\",\"-1\",\"1\",\"1\",\"-1\",\"-1\",\"1\",\"-1\"]', '2023-06-09 03:35:34', '2023-06-09 03:35:34', '[\"Micellar Water\"]'),
(52, 19, '[\"-1\",\"1\",\"-1\",\"-1\",\"1\",\"-1\",\"1\",\"1\",\"1\",\"1\",\"-1\",\"1\",\"1\",\"1\",\"1\",\"1\",\"1\",\"-1\",\"-1\",\"1\"]', '2023-06-09 03:40:01', '2023-06-09 03:40:01', '[\"Moisturizer\"]'),
(53, 22, '[\"1\",\"-1\",\"1\",\"1\",\"-1\",\"1\",\"1\",\"-1\",\"-1\",\"1\",\"-1\",\"1\",\"-1\",\"1\",\"1\",\"-1\",\"-1\",\"-1\",\"-1\",\"-1\"]', '2023-06-09 03:41:35', '2023-06-09 03:41:35', '[\"Micellar Water\",\"Serum Retinol\"]'),
(54, 20, '[\"-1\",\"1\",\"1\",\"-1\",\"-1\",\"1\",\"-1\",\"-1\",\"-1\",\"1\",\"1\",\"1\",\"-1\",\"-1\",\"1\",\"-1\",\"-1\",\"-1\",\"1\",\"-1\"]', '2023-06-09 03:41:58', '2023-06-09 03:41:58', '[\"Serum Retinol\",\"Serum Brightening\",\"Serum Hydrating\"]'),
(55, 21, '[\"1\",\"-1\",\"1\",\"-1\",\"-1\",\"-1\",\"-1\",\"1\",\"-1\",\"-1\",\"-1\",\"1\",\"-1\",\"1\",\"-1\",\"1\",\"-1\",\"1\",\"-1\",\"-1\"]', '2023-06-09 03:42:43', '2023-06-09 03:42:43', '[\"Cream Allergan\",\"Serum Acne\",\"Serum Retinol\"]'),
(56, 23, '[\"-1\",\"1\",\"1\",\"1\",\"-1\",\"-1\",\"1\",\"-1\",\"-1\",\"1\",\"1\",\"1\",\"-1\",\"-1\",\"1\",\"-1\",\"1\",\"-1\",\"-1\",\"1\"]', '2023-06-09 03:49:44', '2023-06-09 03:49:44', '[\"Serum Brightening\",\"Serum Hydrating\"]'),
(57, 25, '[\"1\",\"-1\",\"1\",\"1\",\"-1\",\"1\",\"-1\",\"1\",\"-1\",\"-1\",\"1\",\"-1\",\"-1\",\"1\",\"-1\",\"1\",\"-1\",\"1\",\"-1\",\"1\"]', '2023-06-09 03:54:03', '2023-06-09 03:54:03', '[\"Face Tonic\",\"Sunscreen\"]'),
(58, 24, '[\"1\",\"-1\",\"1\",\"1\",\"-1\",\"1\",\"-1\",\"-1\",\"-1\",\"-1\",\"1\",\"-1\",\"-1\",\"1\",\"-1\",\"1\",\"-1\",\"-1\",\"-1\",\"-1\"]', '2023-06-09 03:54:04', '2023-06-09 03:54:04', '[\"Serum Brightening\"]'),
(59, 26, '[\"1\",\"-1\",\"1\",\"-1\",\"1\",\"-1\",\"-1\",\"1\",\"1\",\"-1\",\"1\",\"1\",\"-1\",\"1\",\"-1\",\"1\",\"1\",\"-1\",\"-1\",\"1\"]', '2023-06-09 04:00:24', '2023-06-09 04:00:24', '[\"Sunscreen\"]'),
(60, 27, '[\"1\",\"-1\",\"1\",\"-1\",\"-1\",\"1\",\"1\",\"1\",\"-1\",\"-1\",\"-1\",\"-1\",\"1\",\"1\",\"-1\",\"1\",\"1\",\"-1\",\"-1\",\"-1\"]', '2023-06-09 04:04:19', '2023-06-09 04:04:19', '[\"Sunscreen\",\"Serum Exfoliating\"]'),
(61, 28, '[\"1\",\"-1\",\"1\",\"-1\",\"1\",\"-1\",\"1\",\"1\",\"1\",\"-1\",\"-1\",\"-1\",\"-1\",\"1\",\"-1\",\"1\",\"-1\",\"-1\",\"-1\",\"-1\"]', '2023-06-09 04:43:06', '2023-06-09 04:43:06', '[\"Serum Acne\"]'),
(62, 29, '[\"-1\",\"-1\",\"1\",\"-1\",\"1\",\"-1\",\"1\",\"1\",\"1\",\"-1\",\"-1\",\"1\",\"1\",\"1\",\"-1\",\"1\",\"-1\",\"-1\",\"1\",\"-1\"]', '2023-06-09 05:51:49', '2023-06-09 05:51:49', '[\"Moisturizer\",\"Serum Acne\"]'),
(63, 30, '[\"-1\",\"-1\",\"-1\",\"-1\",\"-1\",\"-1\",\"1\",\"-1\",\"-1\",\"1\",\"-1\",\"1\",\"-1\",\"-1\",\"1\",\"1\",\"-1\",\"-1\",\"1\",\"1\"]', '2023-06-09 05:57:01', '2023-06-09 05:57:01', '[\"Serum Hydrating\"]'),
(64, 30, '[\"-1\",\"-1\",\"-1\",\"-1\",\"-1\",\"-1\",\"1\",\"-1\",\"-1\",\"1\",\"-1\",\"1\",\"-1\",\"-1\",\"1\",\"1\",\"-1\",\"-1\",\"1\",\"1\"]', '2023-06-09 06:08:23', '2023-06-09 06:08:23', '[\"Serum Hydrating\"]'),
(65, 30, '[\"-1\",\"-1\",\"-1\",\"-1\",\"-1\",\"-1\",\"1\",\"-1\",\"-1\",\"1\",\"-1\",\"1\",\"-1\",\"-1\",\"1\",\"1\",\"-1\",\"-1\",\"1\",\"1\"]', '2023-06-09 06:08:23', '2023-06-09 06:08:23', '[\"Serum Hydrating\"]'),
(66, 32, '[\"1\",\"-1\",\"1\",\"-1\",\"1\",\"-1\",\"1\",\"1\",\"1\",\"-1\",\"1\",\"-1\",\"-1\",\"1\",\"-1\",\"1\",\"-1\",\"-1\",\"-1\",\"-1\"]', '2023-06-09 07:24:43', '2023-06-09 07:24:43', '[\"Serum Exfoliating\"]'),
(67, 34, '[\"1\",\"-1\",\"1\",\"-1\",\"-1\",\"1\",\"1\",\"1\",\"-1\",\"-1\",\"-1\",\"-1\",\"-1\",\"1\",\"-1\",\"1\",\"-1\",\"-1\",\"-1\",\"-1\"]', '2023-06-09 07:27:04', '2023-06-09 07:27:04', '[\"Mask\"]'),
(68, 35, '[\"-1\",\"-1\",\"1\",\"-1\",\"1\",\"1\",\"-1\",\"1\",\"-1\",\"1\",\"1\",\"1\",\"-1\",\"1\",\"1\",\"1\",\"-1\",\"-1\",\"-1\",\"-1\"]', '2023-06-09 07:39:33', '2023-06-09 07:39:33', '[\"Micellar Water\"]'),
(69, 37, '[\"1\",\"-1\",\"1\",\"-1\",\"1\",\"-1\",\"1\",\"1\",\"1\",\"-1\",\"-1\",\"-1\",\"-1\",\"1\",\"-1\",\"1\",\"1\",\"-1\",\"-1\",\"1\"]', '2023-06-09 08:11:47', '2023-06-09 08:11:47', '[\"Serum Acne\"]'),
(70, 38, '[\"1\",\"-1\",\"1\",\"-1\",\"1\",\"-1\",\"1\",\"-1\",\"1\",\"-1\",\"-1\",\"-1\",\"-1\",\"1\",\"1\",\"1\",\"-1\",\"-1\",\"-1\",\"1\"]', '2023-06-09 08:19:06', '2023-06-09 08:19:06', '[\"Serum Acne\"]'),
(71, 39, '[\"1\",\"-1\",\"1\",\"-1\",\"1\",\"1\",\"1\",\"-1\",\"1\",\"-1\",\"-1\",\"-1\",\"1\",\"1\",\"-1\",\"1\",\"1\",\"-1\",\"-1\",\"-1\"]', '2023-06-09 09:04:52', '2023-06-09 09:04:52', '[\"Sunscreen\",\"Serum Exfoliating\"]'),
(72, 2, '[\"-1\",\"-1\",\"1\",\"1\",\"1\",\"-1\",\"-1\",\"1\",\"1\",\"1\",\"-1\",\"-1\",\"-1\",\"-1\",\"1\",\"1\",\"-1\",\"-1\",\"-1\",\"-1\"]', '2023-06-09 12:03:13', '2023-06-09 12:03:13', '[\"Serum Retinol\"]'),
(73, 40, '[\"1\",\"-1\",\"1\",\"1\",\"1\",\"-1\",\"-1\",\"-1\",\"1\",\"-1\",\"-1\",\"-1\",\"-1\",\"1\",\"-1\",\"1\",\"-1\",\"-1\",\"-1\",\"-1\"]', '2023-06-09 12:12:13', '2023-06-09 12:12:13', '[\"Serum Acne\"]'),
(74, 41, '[\"-1\",\"-1\",\"1\",\"-1\",\"1\",\"-1\",\"-1\",\"-1\",\"1\",\"-1\",\"1\",\"1\",\"1\",\"1\",\"1\",\"1\",\"1\",\"-1\",\"1\",\"-1\"]', '2023-06-09 12:27:48', '2023-06-09 12:27:48', '[\"Micellar Water\",\"Moisturizer\"]'),
(75, 2, '[\"1\",\"1\",\"1\",\"1\",\"1\",\"1\",\"1\",\"1\",\"1\",\"1\",\"1\",\"1\",\"1\",\"1\",\"-1\",\"1\",\"1\",\"1\",\"-1\",\"-1\"]', '2023-06-11 13:56:13', '2023-06-11 13:56:13', '[\"Micellar Water\"]'),
(76, 43, '[\"-1\",\"-1\",\"-1\",\"1\",\"1\",\"-1\",\"1\",\"-1\",\"1\",\"1\",\"-1\",\"1\",\"1\",\"-1\",\"1\",\"1\",\"1\",\"1\",\"1\",\"1\"]', '2023-06-13 04:43:03', '2023-06-13 04:43:03', '[\"Moisturizer\",\"Serum Hydrating\"]'),
(77, 44, '[\"1\",\"1\",\"1\",\"-1\",\"-1\",\"1\",\"-1\",\"-1\",\"-1\",\"1\",\"1\",\"-1\",\"-1\",\"1\",\"1\",\"1\",\"1\",\"-1\",\"-1\",\"1\"]', '2023-06-16 21:17:31', '2023-06-16 21:17:31', '[\"Face Tonic\"]'),
(78, 45, '[\"1\",\"1\",\"1\",\"1\",\"1\",\"1\",\"1\",\"1\",\"1\",\"1\",\"1\",\"1\",\"1\",\"1\",\"1\",\"1\",\"1\",\"1\",\"1\",\"1\"]', '2023-06-17 08:36:57', '2023-06-17 08:36:57', '[\"Facial Wash\"]'),
(79, 45, '[\"1\",\"-1\",\"1\",\"-1\",\"1\",\"-1\",\"1\",\"-1\",\"1\",\"-1\",\"1\",\"-1\",\"1\",\"-1\",\"1\",\"-1\",\"1\",\"-1\",\"1\",\"-1\"]', '2023-06-17 09:31:01', '2023-06-17 09:31:01', '[\"Face Tonic\"]'),
(80, 46, '[\"-1\",\"-1\",\"-1\",\"-1\",\"-1\",\"-1\",\"-1\",\"-1\",\"-1\",\"-1\",\"-1\",\"-1\",\"-1\",\"-1\",\"-1\",\"-1\",\"-1\",\"-1\",\"-1\",\"-1\"]', '2023-07-02 02:42:22', '2023-07-02 02:42:22', '[\"Serum Retinol\"]');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
-- Table structure for table `kategoris`
--

CREATE TABLE `kategoris` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kategori` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL DEFAULT 'default.png',
  `keterangan` text NOT NULL,
  `flag` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kategoris`
--

INSERT INTO `kategoris` (`id`, `kategori`, `icon`, `keterangan`, `flag`, `created_at`, `updated_at`) VALUES
(1, 'Micellar Water', 'img/icon/jG2YrnSOpQLl2xQrwFA0g2pSNqhsKCXK2SXsWbQK.jpg', 'Micellar water adalah pembersih wajah cair yang berbahan dasar air. Pembersih ini digunakan untuk menghapus makeup dan menyegarkan wajah.', 1, NULL, '2023-12-21 10:29:22'),
(2, 'Face Tonic', '1686070749.png', 'Face tonic atau toner wajah adalah produk skincare berbahan dasar air dengan kandungan tertentu untuk membantu mengatasi masalah di kulit. Fungsi Face Tonic untuk mengangkat kotoran, melindungi dan melembabkan kult, menyeimbangkan pH kulit, dan meningkatkan kandungan skincare setelahnya.', 1, NULL, '2023-06-06 16:59:09'),
(3, 'Facial Wash', '1686070757.png', 'Facial wash adalah produk pembersih wajah yang umumnya ditujukan sebagai sabun pencuci wajah untuk jenis kulit normal, kering, hingga sensitif. Fungsi dari Facial Wash sendiri  untuk menyegarkan wajah, melembapkan dan mencegah iritasi kulit. Karena sifat melembapkannya,', 1, NULL, '2023-06-06 16:59:17'),
(4, 'Moisturizer', '1686070780.png', 'Moisturizer adalah pelembap yang memiliki banyak manfaat untuk kulit. Manfaat mosturizer untuk menjaga kelembapan kulit, menutrisi kulit, mencegah munculnya berbagai masalah kulit, menyamarkan noda-noda di wajah, membuat kulit menjadi lebih awet muda, dan mecerahkan warna kulit wajah.', 1, NULL, '2023-06-06 16:59:40'),
(5, 'Sunscreen', '1686070789.png', 'Sunscreen adalah produk perawatan kulit berfungsi untuk melindungi kulit dari pengaruh sinar UV dari matahari yang dapat merusak kulit.', 1, NULL, '2023-06-06 16:59:50'),
(6, 'Mask', '1686070799.png', 'Masker wajah adalah produk perawatan kulit yang digunakan pada wajah. Masker wajah adalah bagian dari perawatan wajah biasa yang dibuat denganberbagai bahan yang memiliki fungsi dan kelebihan masing-masing. Masker wajah\r\nbiasanya digunakan untuk mengatasi berbagai macam masalah kulit, terutama kulit\r\nkering', 1, NULL, '2023-06-06 17:00:00'),
(7, 'Cream Allergan', '1686070808.png', 'Cream Allergan lebih baik digunakan dengan anjuran dokter. Karena untuk masalah kulit yang dihadapi berbeda-beda dan penangan untuk masalah juga berbeda.', 1, NULL, '2023-06-06 17:00:08'),
(12, 'Serum Acne', '1686182641.png', 'Serum anti acne merupakan serum yang bermanfaat untuk mencegah peradangan ketika jerawat akan tumbuh, meredakan kemerahan, hingga memudarkan jerawat yang sudah membekas. Kandungan yang baik digunakan niacinamide, Salicylic acid, glycolic acid.', 1, '2023-05-17 05:25:51', '2023-06-08 00:04:01'),
(14, 'Serum Retinol', '1686182824.png', 'Serum Retinol digunakan untuk membantu mempercepat pembaruan kulit, meningkatkan produksi kolagen dan mengurangi munculnya tanda-tanda penuaan, tekstur tidak rata, dan bintik-bintik penuaan.', 1, '2023-06-08 00:07:04', '2023-06-08 00:07:04'),
(15, 'Serum Brightening', '1686182950.png', 'Brightening serum adalah jenis serum yang digunakan untuk mencerahkan serta memudarkan spot hitam pada kulit. Formula serum memiliki konsentrasi bahan aktif tinggi dengan tujuan menghambat produksi melanin penyebab flek hitam, bekas jerawat, dan hiperpigmentasi.', 1, '2023-06-08 00:09:10', '2023-06-08 00:09:10'),
(17, 'Serum Exfoliating', '1686183445.png', 'Exfoliator serum terdiri dari molekul kecil yang menembus jauh ke dalam lapisan kulit dan memasok bahan aktif dengan konsentrasi sangat tinggi. Manfaat exfoliator serum ini untuk memproses pengelupasan kulit mati yang ada didalam kulit.', 1, '2023-06-08 00:17:25', '2023-06-08 00:17:25'),
(18, 'Serum Hydrating', '1686183477.png', 'Serum Hydrating berfungsi untuk meningkatkan kadar air pada kulit yang dehidrasi. Kandungan yang diakui dapat menghydrating kulit adalah Glycerin, Hyaluronic Acid, Aloe Vera, dan Tremella fuciformis.', 1, '2023-06-08 00:17:57', '2023-06-08 00:17:57');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_user` int(11) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `id_user`, `subject`, `message`, `created_at`, `updated_at`, `status`) VALUES
(1, 2, 'subject pesan', 'pesan ini disampaikan oleh pihak terkait', '2023-03-01 13:41:55', '2023-03-01 13:58:13', 1),
(2, 2, 'hi', 'aku lagi gini nih', '2023-05-05 07:03:50', '2023-05-05 15:43:05', 1),
(4, 10, 'Konsultasi', 'apakah selain itu bisa produk lain ?', '2023-06-07 23:43:00', '2023-06-08 03:33:05', 1),
(5, 18, 'Coba komen ah', 'Waww sangat sangat membantu sekali rekomendasinya terimakasiii', '2023-06-09 03:37:40', '2023-06-09 03:37:40', 0),
(6, 21, 's', 'semangat mengerjakan tugas penelitian', '2023-06-09 03:47:56', '2023-06-18 00:07:19', 1),
(7, 23, 'apik.', 'membantu.', '2023-06-09 03:53:54', '2023-06-09 03:53:54', 0),
(8, 25, 'marcela', 'Terimakasih kakk sudah membantu permasalahan kulit sayaaaa', '2023-06-09 03:55:06', '2023-06-09 03:55:06', 0),
(9, 24, 'Nafa Ivanti', 'terima kasih kak, sudah memberikan konsultasi gratis', '2023-06-09 03:55:21', '2023-06-09 03:55:21', 0),
(10, 38, 'Serum Acne', 'Dankeschön für Ihre Informationen. Das war so einfach und schnell, mega toll. Gute Applikation 😍😍', '2023-06-09 08:22:24', '2023-06-11 13:19:50', 1);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_02_08_151936_create_pertanyaans_table', 2),
(6, '2023_02_08_152438_create_kategoris_table', 2),
(7, '2023_02_08_152945_create_answers_table', 2),
(8, '2023_02_22_165825_create_messages_table', 3),
(9, '2023_02_25_004530_add_result_to_answer_tables', 3),
(10, '2023_02_25_120156_add_status_to_messages_table', 3),
(11, '2023_05_12_092918_create_replies_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
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
-- Table structure for table `pertanyaans`
--

CREATE TABLE `pertanyaans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pertanyaan` varchar(255) NOT NULL,
  `flag` int(11) NOT NULL DEFAULT 1,
  `vector` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pertanyaans`
--

INSERT INTO `pertanyaans` (`id`, `pertanyaan`, `flag`, `vector`, `created_at`, `updated_at`) VALUES
(1, 'Apakah kulit anda berminyak ?', 1, '[\"1\",\"1\",\"1\",\"-1\",\"1\",\"-1\",\"-1\",\"1\",\"-1\",\"-1\",\"1\",\"-1\"]', NULL, '2023-06-08 00:29:05'),
(2, 'Apakah kulit anda segar dan halus ?', 1, '[\"1\",\"-1\",\"1\",\"-1\",\"1\",\"-1\",\"-1\",\"-1\",\"-1\",\"1\",\"1\",\"-1\"]', '2023-02-09 19:28:17', '2023-06-08 02:51:12'),
(3, 'Apakah bahan-bahan kosmetik mudah menempel di kulit anda ?', 1, '[\"1\",\"1\",\"1\",\"-1\",\"1\",\"-1\",\"-1\",\"-1\",\"-1\",\"-1\",\"-1\",\"-1\"]', NULL, '2023-06-08 02:53:44'),
(4, 'Apakah kulit anda terlihat sehat ?', 1, '[\"1\",\"-1\",\"1\",\"-1\",\"1\",\"-1\",\"-1\",\"-1\",\"-1\",\"1\",\"1\",\"-1\"]', NULL, '2023-06-08 02:55:16'),
(5, 'Apakah kulit anda berjerawat ?', 1, '[\"1\",\"1\",\"1\",\"-1\",\"1\",\"-1\",\"-1\",\"1\",\"-1\",\"-1\",\"1\",\"-1\"]', NULL, '2023-06-08 02:56:48'),
(6, 'Apakah kulit anda mudah dalam memilih kosmetik ?', 1, '[\"1\",\"1\",\"1\",\"-1\",\"1\",\"-1\",\"-1\",\"-1\",\"-1\",\"-1\",\"-1\",\"-1\"]', NULL, '2023-06-08 02:57:55'),
(7, 'Apakah kulit anda memiliki pori-pori besar terutama di area hidung, pipi, dagu ?', 1, '[\"1\",\"-1\",\"1\",\"1\",\"1\",\"1\",\"-1\",\"1\",\"-1\",\"-1\",\"1\",\"-1\"]', NULL, '2023-06-08 03:05:22'),
(8, 'Apakah kulit anda sebagian terlihat mengkilat ?', 1, '[\"1\",\"-1\",\"1\",\"1\",\"1\",\"-1\",\"-1\",\"-1\",\"-1\",\"-1\",\"1\",\"-1\"]', NULL, '2023-06-08 03:07:36'),
(9, 'Apakah kulit anda sering ditumbuhi jerawat ?', 1, '[\"1\",\"-1\",\"1\",\"1\",\"1\",\"-1\",\"-1\",\"1\",\"-1\",\"-1\",\"1\",\"-1\"]', NULL, '2023-06-08 03:08:43'),
(10, 'Apakah kulit anda kelihatan kering sekali ?', 1, '[\"1\",\"-1\",\"1\",\"1\",\"-1\",\"-1\",\"-1\",\"-1\",\"-1\",\"-1\",\"-1\",\"1\"]', NULL, '2023-06-08 03:10:52'),
(11, 'Apakah kulit anda memiliki pori-pori yang halus ?', 1, '[\"1\",\"1\",\"1\",\"-1\",\"1\",\"-1\",\"-1\",\"-1\",\"-1\",\"1\",\"1\",\"-1\"]', NULL, '2023-06-08 03:12:32'),
(12, 'Apakah kulit anda bertekstur tipis ?', 1, '[\"1\",\"-1\",\"1\",\"1\",\"1\",\"-1\",\"-1\",\"-1\",\"-1\",\"-1\",\"-1\",\"1\"]', NULL, '2023-06-08 03:15:03'),
(13, 'Apakah kulit anda cepat menampakkan kerutan-kerutan ?', 1, '[\"1\",\"-1\",\"1\",\"1\",\"1\",\"-1\",\"-1\",\"-1\",\"-1\",\"-1\",\"1\",\"-1\"]', NULL, '2023-06-08 03:16:30'),
(14, 'Apakah kulit anda sebagian terlihat berminyak ?', 1, '[\"1\",\"-1\",\"1\",\"1\",\"1\",\"-1\",\"-1\",\"1\",\"-1\",\"-1\",\"1\",\"-1\"]', NULL, '2023-06-08 03:18:44'),
(15, 'Apakah kulit anda sebagian terlihat kering ?', 1, '[\"1\",\"1\",\"1\",\"1\",\"-1\",\"-1\",\"-1\",\"-1\",\"1\",\"-1\",\"-1\",\"1\"]', NULL, '2023-06-08 03:20:03'),
(16, 'Apakah kulit anda kadang berjerawat ?', 1, '[\"1\",\"-1\",\"1\",\"-1\",\"1\",\"-1\",\"-1\",\"1\",\"-1\",\"-1\",\"1\",\"-1\"]', NULL, '2023-06-08 03:23:16'),
(17, 'Apakah kulit anda susah mendapat hasil polesan kosmetik sempurna ?', 1, '[\"1\",\"1\",\"1\",\"1\",\"1\",\"-1\",\"-1\",\"-1\",\"-1\",\"-1\",\"1\",\"1\"]', NULL, '2023-06-08 03:28:42'),
(18, 'Apakah kulit anda mudah alergi ?', 1, '[\"-1\",\"-1\",\"1\",\"-1\",\"-1\",\"-1\",\"1\",\"1\",\"-1\",\"-1\",\"-1\",\"1\"]', NULL, '2023-06-08 03:29:50'),
(19, 'Apakah kulit anda mudah iritasi dan terluka ?', 1, '[\"-1\",\"-1\",\"1\",\"1\",\"-1\",\"1\",\"1\",\"1\",\"-1\",\"-1\",\"-1\",\"1\"]', NULL, '2023-06-08 03:26:37'),
(20, 'Apakah kulit anda mudah terlihat kemerahan ?', 1, '[\"-1\",\"1\",\"1\",\"1\",\"1\",\"-1\",\"1\",\"1\",\"-1\",\"-1\",\"-1\",\"1\"]', NULL, '2023-06-08 03:25:09');

-- --------------------------------------------------------

--
-- Table structure for table `replies`
--

CREATE TABLE `replies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_message` bigint(20) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `replies`
--

INSERT INTO `replies` (`id`, `id_message`, `message`, `created_at`, `updated_at`) VALUES
(1, 2, '<p>halo</p>', '2023-05-12 11:53:27', '2023-06-07 13:08:26'),
(2, 4, '<p>iya bagaimana ?</p>', '2023-06-08 03:33:38', '2023-06-08 03:33:38'),
(3, 1, '<p>pesan tersebut akan disampaikan kembali kepada pihak terkait</p>\r\n\r\n<p>&nbsp;</p>', '2023-06-18 00:09:07', '2023-06-18 00:09:07');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `level` varchar(255) NOT NULL DEFAULT 'USER',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `level`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'user', 'user', '$2y$10$o8Ox8UAZR4qT6BmevGdPu.0O0ptmUyzZatMgZ03UgO7jRn5Lcm46O', 'USER', 'BDHVfV9vckPJh8n5FbRlTcZ6zyf1nlvZPbEarGsHLGtD4FbjrMUzRvO5USSf', '2023-02-08 08:17:39', '2023-02-08 08:17:39'),
(8, 'panji', 'pann', '$2y$10$jc4pbWotAL9eyw6.6NHqIOxefgHHNMzfTQ30O41kfsRfEJfFEZWKm', 'ADMIN', NULL, '2023-05-16 22:21:51', '2023-06-11 13:35:15'),
(9, 'plafound', 'plafound', '$2y$10$Wf.TmIOrjlgZ6WBhiy1zGuIVtlTsX/nqcAajQ1ha502JI7F411w9u', 'ADMIN', NULL, '2023-06-07 04:22:36', '2023-06-12 09:53:41'),
(10, 'sindi', 'sindi', '$2y$10$2b4xB3xJXcGsl3CSlBNtJ.NNbKns9U.fvSW8Gu18ABxLv3fe7SzQa', 'USER', NULL, '2023-06-07 23:40:24', '2023-06-07 23:40:24'),
(11, 'mama', 'mama', '$2y$10$fNJw4eu.46N7MX/8KdVdAesdFHc7b5juvDCqpxIn6YwOcRAM5Tdqm', 'ADMIN', NULL, '2023-06-08 07:24:22', '2023-06-08 07:24:48'),
(12, 'Sasya Fitriana', 'Sass', '$2y$10$adNl5ZgrQw1mScRhjVAfy.S4UYEvrfitTHBPwVONb7QFuryIvt7PW', 'USER', NULL, '2023-06-09 03:26:03', '2023-06-09 03:26:03'),
(13, 'Weni', 'wenietikas', '$2y$10$2DNVbZ3Sn966WGO45PcJNeuiCO4KHExYmBrNGTEUSl7uaYFQtMcsa', 'USER', NULL, '2023-06-09 03:26:20', '2023-06-09 03:26:20'),
(14, 'dew', 'dew', '$2y$10$cIhupg8LMpGjnBtCGNODRu80TCumbmXfo2ab3AQkX1eLfx8scr.je', 'USER', NULL, '2023-06-09 03:27:31', '2023-06-09 03:27:31'),
(15, 'Aqidatul Izza', 'a.izzaa', '$2y$10$UpvQ25TCBnS/LbaNx.AlL.siiDbCqDikr6R34tUZGEEqbCDHkCbg2', 'USER', NULL, '2023-06-09 03:28:29', '2023-06-09 03:28:29'),
(16, 'Lisna', 'lisna', '$2y$10$myBs35fuZML3j.S1CQ1eYOG6iViZfy4KVSKQMKJRp7wU9FR5g5j/K', 'USER', NULL, '2023-06-09 03:30:17', '2023-06-09 03:30:17'),
(17, 'PATRICIA EKA KUSUMA', 'Patricia', '$2y$10$M3lPIycifWm.Yc2i4N4M5ekWN0orlCotQp..Aysmn.yhu3ZjAdpYW', 'USER', NULL, '2023-06-09 03:31:51', '2023-06-09 03:31:51'),
(18, 'Irma', 'Irmaa', '$2y$10$e1v8tnG/9bBX2OY5nNtuVu6MiEyBMM6HvkcJkgJF7bPhNfp9vtTj.', 'USER', NULL, '2023-06-09 03:33:50', '2023-06-09 03:33:50'),
(19, 'Harya betys', 'Harya betys', '$2y$10$pj9iLx4r26TnO7U5Te5CI.ybBLBxLYtAbiAHq2t/pQLmlCKWaexLW', 'USER', NULL, '2023-06-09 03:37:46', '2023-06-09 03:37:46'),
(20, 'Rena Nazarulva Darma Sayekti', 'Rena', '$2y$10$UuWtPi98c9/0yRvDeDbcvudY6caArq2dK/dCNWxj1DPmX.nbOM5ti', 'USER', NULL, '2023-06-09 03:40:05', '2023-06-09 03:40:05'),
(21, 'Sherly Agustin', 'Sherlystin', '$2y$10$CV4sAD03hDL0QAqzZ8jtRexGILDge6u2hshJ8rxxE7R3EIw2p9Gfm', 'USER', NULL, '2023-06-09 03:40:07', '2023-06-09 03:40:07'),
(22, 'Dias', 'Dias', '$2y$10$lQB1jHsd8CRT6IMhH1Ch9uEkFU4/wgdPwFf8t9mj/bdSI6GWvL9Ku', 'USER', NULL, '2023-06-09 03:40:32', '2023-06-09 03:40:32'),
(23, 'windy', 'windy', '$2y$10$b00ZdX7kQq5geGpUmKBH5eawKOGjEk3x63GEkR/HPwtlEUR4DFE7e', 'USER', NULL, '2023-06-09 03:48:11', '2023-06-09 03:48:11'),
(24, 'Nafa', 'nafaivanti', '$2y$10$X5SgarkoMXj7o5VKpJCREurqWEPoP.JMIHDAo6uEt2ICn52Bn4Wyu', 'USER', NULL, '2023-06-09 03:52:04', '2023-06-09 03:52:04'),
(25, 'Marcela', 'marcela putrii', '$2y$10$HmVGyjH5RK8c6Oj6KpIM8e0GR91SHkFuJinT7zlcCFDOBXQMU9dR.', 'USER', NULL, '2023-06-09 03:52:09', '2023-06-09 03:52:09'),
(26, 'Anggita', 'Putri', '$2y$10$lXa0D7Ox29hl2RG.4w8RVOHnL6O0SwaEpaOKX6CQ2p3sZwoMqpWYa', 'USER', NULL, '2023-06-09 03:59:02', '2023-06-09 03:59:02'),
(27, 'Tifani', 'Tifani', '$2y$10$xMwH2xnVik2wYdjztDd14urrFFmTtQlLXzoBHbo7FaKYo4HtP/slm', 'USER', NULL, '2023-06-09 04:02:56', '2023-06-09 04:02:56'),
(28, 'Anisa Shafira', 'anisashafira', '$2y$10$POc/eyA6J7MIKMw.QILc.OjmlfXyZg.g4UR.LcVPq5ZIPcNMscquW', 'USER', NULL, '2023-06-09 04:41:46', '2023-06-09 04:41:46'),
(29, 'lia', 'lia', '$2y$10$XCKQjbEmACRVXv49csYa5Ok7ZMJYiOpUh5YlBNpErS3ujq1xV6aG6', 'USER', NULL, '2023-06-09 05:50:20', '2023-06-09 05:50:20'),
(30, 'Tazkia', 'Aulia', '$2y$10$OtdK2H1BBSu0RnmjRiLxLegH/UfAOJSFeOvoIMPjmCOIVBFMuzt2u', 'USER', NULL, '2023-06-09 05:55:34', '2023-06-09 05:55:34'),
(31, 'Nada', 'Nada', '$2y$10$5lOMUc0la9IqIrJofQySbODOdWIjbA14aqUi90aE7P.aur5D0p71C', 'USER', NULL, '2023-06-09 06:55:01', '2023-06-09 06:55:01'),
(32, 'Silviana Margareta', 'viamrgrt', '$2y$10$nzM5sl14sJQkp.ihb3ipkuddUDRoG46j0E1QWhrD/Js8asAZgMeTi', 'USER', NULL, '2023-06-09 07:23:06', '2023-06-09 07:23:06'),
(33, 'P', 'Ppp', '$2y$10$GJwOONEj4CrmG0EHpLYIaOtAb9kWp/DUtkyO2GY9HLuJfH.WkK2du', 'USER', NULL, '2023-06-09 07:23:27', '2023-06-09 07:23:27'),
(34, 'Iva', 'Iva', '$2y$10$kr7KTrdQirGJGpFE8Y5PxOUbNSfWHY1pJSXOakDzVoJJ9SzDhJ3dS', 'USER', NULL, '2023-06-09 07:25:46', '2023-06-09 07:25:46'),
(35, 'dinata', 'Dinata', '$2y$10$bXH49lRzeLB6EiOfdxceleflNHZ85KbeK.gfiIo1Fphnt9hFzhPxi', 'USER', NULL, '2023-06-09 07:38:21', '2023-06-09 07:38:21'),
(36, 'Surya', 'Surya', '$2y$10$OtPYtfQgnVy67/synaJUquoDUbu4kb6Oh0f1jFWJrOeyx/3cMsI9q', 'USER', NULL, '2023-06-09 08:09:47', '2023-06-09 08:09:47'),
(37, 'Faradella', 'fara', '$2y$10$OAOSj27XTooWw/XHH7QfO.ogSl9UCjENIJchAV.c1go3QruSewbpy', 'USER', NULL, '2023-06-09 08:10:42', '2023-06-09 08:10:42'),
(38, 'Erikasari', 'euthree', '$2y$10$2WYt/TF.o2FTO.xeldCbA.iLon/eOP8S.wPT/2vQ17azfx44EvsAC', 'USER', NULL, '2023-06-09 08:17:20', '2023-06-09 08:17:20'),
(39, 'Laora', 'Arode', '$2y$10$l2XCdnl7T4gln3ebl.O1Hu8es9FpeElbr9Gh.FJOsmh/6sXP3fQeK', 'USER', NULL, '2023-06-09 09:03:45', '2023-06-09 09:03:45'),
(40, 'Mita', 'mitaa', '$2y$10$KO7nmJ1lE.2un/OoJLKUw.SrRpU0cmWEQnIrniiMgHLSZP3MipAKW', 'USER', NULL, '2023-06-09 12:10:01', '2023-06-09 12:10:01'),
(41, 'waf', 'waf', '$2y$10$ke/PNQd2dUsB6ayHzyUYgevbiDnkgg0sYfFIn0ig58I92YW9V5XhK', 'USER', NULL, '2023-06-09 12:26:39', '2023-06-09 12:26:39'),
(43, 'patricia', 'patriciaeka', '$2y$10$LHWK03Cf3F3pRVh.g5sI6ubNZkk0iBhxUNmOgXaYDtMnepUczMXJ.', 'USER', NULL, '2023-06-13 04:40:33', '2023-06-13 04:40:33'),
(44, 'efryda', 'efryda', '$2y$10$XkHZgwRkd/q5E5BmsAr6Jeza4Td3m8Eg/Ajb2rHShFLOkxBig9/TC', 'USER', NULL, '2023-06-16 21:16:08', '2023-06-16 21:16:08'),
(45, 'Zidy', 'Zidy', '$2y$10$sXpov7WvI8k7AgT3gpvEmeoPRHr80g9bYqNKNCVUrI2yeCBcOUfJi', 'USER', NULL, '2023-06-17 08:35:31', '2023-06-17 08:35:31'),
(46, 'jidy', 'jidy', '$2y$10$XMyWV/7SrtVknG8o7q98Wuyrpp2DAAoCKBWsp3QgzDexS0oX4GoIe', 'USER', NULL, '2023-07-02 02:41:56', '2023-07-02 02:41:56'),
(47, 'YAKIN', 'yakin', '$2y$10$NtDiD5.SGdK9J4EoxRXBmeMA7ifGQUIl68cE7yKCF6XV89rUxqHZi', 'USER', NULL, '2023-08-17 07:00:28', '2023-08-17 07:00:28');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `kategoris`
--
ALTER TABLE `kategoris`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `pertanyaans`
--
ALTER TABLE `pertanyaans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `replies`
--
ALTER TABLE `replies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `answers`
--
ALTER TABLE `answers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kategoris`
--
ALTER TABLE `kategoris`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pertanyaans`
--
ALTER TABLE `pertanyaans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `replies`
--
ALTER TABLE `replies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
