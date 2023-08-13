-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Aug 13, 2023 at 12:41 PM
-- Server version: 5.7.39
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravelcustomauth`
--

-- --------------------------------------------------------

--
-- Table structure for table `Atk`
--

CREATE TABLE `Atk` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_stock` int(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `Atk`
--

INSERT INTO `Atk` (`id`, `product_name`, `product_price`, `product_image`, `product_stock`, `created_at`, `updated_at`) VALUES
(1, 'Pencil', '5000', 'pencil.png', 20, '2023-06-12 23:40:37', '2023-06-12 23:40:37'),
(2, 'Pulpen', '8000', 'pulpen.png', 10, '2023-06-12 23:44:46', '2023-06-12 23:44:46'),
(3, 'Majalah', '15000', 'majalah.png', 50, '2023-06-12 23:45:15', '2023-06-12 23:45:15'),
(4, 'Spidol', '10000', 'spidol.jpeg', 120, '2023-06-13 17:58:35', '2023-06-13 17:58:35'),
(5, 'Binder box', '8000', 'binder-box.jpeg', 30, '2023-06-13 18:05:50', '2023-06-13 18:05:50'),
(6, 'Rautan  Pensil', '4000', 'rautan.jpeg', 5, '2023-06-13 18:06:24', '2023-06-13 18:06:24');

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `book_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isbn13` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `num_pages` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stock` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`book_id`, `title`, `isbn13`, `image`, `num_pages`, `author`, `stock`, `price`, `created_at`, `updated_at`) VALUES
(1, 'Dilan 1990', '12121212127126', 'dilan .jpeg', '200', 'Pidi Baiq', 110, 120000, '2023-05-18 07:24:23', '2023-05-18 07:24:23'),
(2, 'Dilan 1991', '12121212127128', 'dilan 2.jpeg', '200', 'Pidi Baiq', 3, 125000, '2023-05-18 07:33:05', '2023-05-18 07:33:05'),
(3, 'harry potter', '12121212127128', 'harry potter chamber of secrets.jpeg', '612', 'JK.Rowling', 100, 350000, '2023-05-18 07:33:51', '2023-05-18 07:33:51'),
(4, 'harry potter and the goblet of fire', '121212121', 'harry potter goblet of fire.jpeg', '899', 'JK.Rowling', 6, 375000, '2023-05-18 07:42:25', '2023-05-18 07:42:25'),
(5, 'harry potter and the order of the phoenix', '112121212', 'harry potter order phoenik.jpeg', '950', 'JK.Rowling', 20, 400000, '2023-05-18 07:43:20', '2023-05-18 07:43:20'),
(6, 'Harry Potter And The Prisoner Of Azkaban', '121212121', 'harry potter prisoner azkaban.jpeg', '300', 'JK.Rowling', 10, 450000, '2023-05-18 07:44:08', '2023-05-29 03:17:17');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `fullname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `fullname`, `email`, `gender`, `address`, `phone`, `created_at`, `updated_at`) VALUES
(2, 'tes', 'tes@gmail.com', 'male', 'Jakarta Barat', '085212131312', '2023-05-28 07:09:11', '2023-05-29 03:16:53'),
(3, 'Dimas Priyandi', 'masdidi00@gmail.com', 'male', 'Jakarta Barat', '085212131312', '2023-05-29 03:17:46', '2023-05-29 03:17:46'),
(4, 'tes3', 'tes3@gmail.com', 'male', 'jakarta', '1212121', '2023-06-13 01:13:16', '2023-06-13 01:13:16'),
(5, 'tes4', 'tes4@gmail.com', 'male', 'bogor', '0912018217', '2023-06-13 01:13:28', '2023-06-13 01:13:28'),
(6, 'tes5', 'tes5@gmail.com', 'male', 'bogor', '8718261', '2023-06-13 01:13:42', '2023-06-13 01:13:42'),
(7, 'tes6', 'tes6@gmail.com', 'male', 'bogor', '54554545', '2023-06-13 01:14:01', '2023-06-13 01:14:01'),
(8, 'belajar', 'belajar@itxpro.com', 'male', 'Loji Bogor', '02312121', '2023-06-13 18:23:57', '2023-06-13 18:23:57');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jurusan`
--

CREATE TABLE `jurusan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_jurusan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jurusan`
--

INSERT INTO `jurusan` (`id`, `nama_jurusan`, `created_at`, `updated_at`) VALUES
(1, 'Rekayasa Perangkat Lunak', '2023-06-19 20:14:03', '2023-06-19 20:14:03'),
(2, 'Teknik Komputer Jaringan', '2023-06-19 20:22:06', '2023-06-19 20:22:06'),
(3, 'Desain Komunikasi Visual', '2023-06-19 20:22:16', '2023-06-19 20:22:16'),
(4, 'Multimedia', '2023-06-19 21:00:04', '2023-06-19 21:00:04');

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `level` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_kelas` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jurusan_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`id`, `level`, `nama_kelas`, `jurusan_id`, `created_at`, `updated_at`) VALUES
(1, '10', 'X-RPL', 1, '2023-06-19 20:49:00', '2023-06-19 20:49:00'),
(2, '10', 'X-TKJ', 2, '2023-06-19 20:55:51', '2023-06-19 20:55:51'),
(3, '10', 'X-DKV', 3, '2023-06-19 20:56:03', '2023-06-19 20:56:03'),
(4, '11', 'XI-RPL', 1, '2023-06-19 20:56:16', '2023-06-19 20:56:16'),
(5, '11', 'XI-TKJ', 2, '2023-06-19 20:56:29', '2023-06-19 20:56:29'),
(6, '11', 'XI-MM1', 3, '2023-06-19 20:56:41', '2023-06-19 20:56:41'),
(7, '11', 'XI-MM2', 3, '2023-06-19 20:56:51', '2023-06-19 20:56:51'),
(8, '12', 'XII-RPL', 1, '2023-06-19 20:57:15', '2023-06-19 20:57:15'),
(9, '12', 'XII-TKJ', 2, '2023-06-19 20:57:30', '2023-06-19 20:57:30'),
(10, '12', 'XII-MM1', 4, '2023-06-19 20:57:51', '2023-06-19 21:12:08'),
(11, '12', 'XII-MM2', 4, '2023-06-19 20:58:07', '2023-06-19 21:11:57');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(9, '2014_10_12_000000_create_users_table', 1),
(10, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(11, '2014_10_12_100000_create_password_resets_table', 1),
(12, '2019_08_19_000000_create_failed_jobs_table', 1),
(13, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(17, '2023_05_15_030356_create_book_table', 2),
(19, '2023_05_15_035814_create_order_table', 3),
(20, '2023_05_15_053954_create_customer_table', 4),
(22, '2023_06_13_043520_create_atk_table', 5),
(23, '2023_06_19_033037_create_siswa_table', 6),
(25, '2023_06_19_034227_create_jurusan_table', 6),
(26, '2023_06_19_035522_create_task_table', 7),
(27, '2023_06_19_040234_create_question_table', 8),
(28, '2023_06_19_034221_create_kelas_table', 9);

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `order_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `book_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `order_date` date NOT NULL,
  `quantity` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `payment_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`order_id`, `book_id`, `customer_id`, `order_date`, `quantity`, `total`, `amount`, `payment_status`, `created_at`, `updated_at`) VALUES
('order_647d9081d56e6', 1, 2, '2023-06-05', 2, 240000, 240000, 'Paid', '2023-06-05 00:36:50', '2023-06-05 00:36:50'),
('order_647d90977cdc0', 2, 2, '2023-06-05', 2, 250000, 250000, 'Paid', '2023-06-05 00:37:07', '2023-06-05 00:37:07'),
('order_647d90a502326', 4, 3, '2023-06-05', 1, 375000, 375000, 'Paid', '2023-06-05 00:37:20', '2023-06-05 00:37:20');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
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
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `task_id` int(11) NOT NULL,
  `question_score` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_lengkap` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nis` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kelas_id` int(11) NOT NULL,
  `jurusan_id` int(11) NOT NULL,
  `jp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `task`
--

CREATE TABLE `task` (
  `task_id` bigint(20) UNSIGNED NOT NULL,
  `siswa_id` int(11) NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `question_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jadwal` datetime NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `level`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'AkunAdmin', 'admin', 'admin@gmail.com', NULL, '$2y$10$Fw2Un7lcu6hxSKTQ2/osQ.X/B8lmXxMjMuR6zMWicJah/oJSwPEHO', 'admin', NULL, '2023-05-18 06:53:23', '2023-05-18 06:53:23'),
(2, 'AkunUser1', 'user1', 'user1@gmail.com', NULL, '$2y$10$MUrbW/EOrZtiQ.FiqS0TBeRSRap5av114kB3WW5dOEa4nqcdUPhnS', 'user', NULL, '2023-05-18 06:53:23', '2023-05-18 06:53:23'),
(3, 'tes', 'admintes', 'admin123@admin.com', NULL, '$2y$10$MOBw3RnYR9yi3lKtKBc3e.fKyzj1PUqwZGPn0RE6Ss8J39xJgHmea', 'admin', NULL, '2023-05-28 07:07:36', '2023-05-28 07:07:36');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Atk`
--
ALTER TABLE `Atk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`book_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jurusan`
--
ALTER TABLE `jurusan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD UNIQUE KEY `order_order_id_unique` (`order_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

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
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `task`
--
ALTER TABLE `task`
  ADD PRIMARY KEY (`task_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Atk`
--
ALTER TABLE `Atk`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `book_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jurusan`
--
ALTER TABLE `jurusan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `task`
--
ALTER TABLE `task`
  MODIFY `task_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
