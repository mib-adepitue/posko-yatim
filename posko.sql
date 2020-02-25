-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 07, 2019 at 06:26 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `devtekbo_posko_yatim`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `jkel` enum('L','P') COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `phone`, `foto`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `jkel`) VALUES
(1, 'Asdar', 'asdar@gmail.com', '455', 'aa', NULL, '$2y$10$M6lL3uvNILFCsR..vL9blepbLJhsYXLbFBmRVUh0N5jWvC2ydUseS', NULL, '2019-08-06 06:21:57', '2019-08-06 06:21:57', 'L');

-- --------------------------------------------------------

--
-- Table structure for table `beasiswas`
--

CREATE TABLE `beasiswas` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama_penerima` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `dokumentasi` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jumlah_persemester` int(11) NOT NULL,
  `jumlah_total` int(11) DEFAULT NULL,
  `lama` int(11) NOT NULL,
  `kampus` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jkel` enum('L','P') COLLATE utf8mb4_unicode_ci NOT NULL,
  `pendidikan` enum('S1','D3') COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_mitra` int(10) UNSIGNED NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `roles` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `donasis`
--

CREATE TABLE `donasis` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nohp` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `confirm_by` int(10) UNSIGNED DEFAULT NULL,
  `pekerjaan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('sampai','belum') COLLATE utf8mb4_unicode_ci NOT NULL,
  `jumlah` int(11) NOT NULL,
  `foto` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `jkel` enum('L','P') COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `donasiusers`
--

CREATE TABLE `donasiusers` (
  `id` int(10) UNSIGNED NOT NULL,
  `jumlah` int(11) NOT NULL,
  `foto` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('sampai','belum','proses') COLLATE utf8mb4_unicode_ci NOT NULL,
  `iduser` int(10) UNSIGNED DEFAULT NULL,
  `confirm_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kegiataninfaks`
--

CREATE TABLE `kegiataninfaks` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama_kegiatan` int(10) UNSIGNED NOT NULL,
  `deskripsi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `jumlah` int(11) NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dokumentasi` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `roles` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_03_07_135215_create_admins_table', 1),
(4, '2019_03_13_175846_penyesuaiain_users_table', 1),
(5, '2019_03_14_171005_penyesuaian_table_user', 1),
(6, '2019_03_17_110526_create_penyalurans_table', 1),
(7, '2019_03_17_130943_create_donasis_table', 1),
(8, '2019_03_18_140110_create_mitras_table', 1),
(9, '2019_03_19_183607_create_beasiswas_table', 1),
(10, '2019_03_20_052229_create_ukms_table', 1),
(11, '2019_03_20_132453_create_donasiusers_table', 1),
(12, '2019_03_22_070839_create_totaldonasis_table', 1),
(13, '2019_03_25_163722_sesuaikan_table_users', 1),
(14, '2019_03_25_182243_pesesuaikan_table_users', 1),
(15, '2019_04_08_105649_penyesuaian_user', 1),
(16, '2019_04_08_111918_penyesuaian_admin', 1),
(17, '2019_04_09_035158_penyesuaian_donasis', 1),
(18, '2019_04_09_155809_sesuaiakan_beasiswa', 1),
(19, '2019_04_09_160200_sesuaiakan_ukm', 1),
(20, '2019_04_10_122741_create_prokers_table', 1),
(21, '2019_04_10_122831_create_kegiataninfaks_table', 1),
(22, '2019_04_24_002252_sesuaiakanproker', 1);

-- --------------------------------------------------------

--
-- Table structure for table `mitras`
--

CREATE TABLE `mitras` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jumlah` int(11) NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `penyalurans`
--

CREATE TABLE `penyalurans` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dokumentasi` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `jumlah` int(11) NOT NULL,
  `penyaluran` enum('umum',' beasiswa','ukm') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `prokers`
--

CREATE TABLE `prokers` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama_kegiatan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `dokumentasi` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `totaldonasis`
--

CREATE TABLE `totaldonasis` (
  `id` int(10) UNSIGNED NOT NULL,
  `total` int(11) NOT NULL,
  `total_tersalurkan` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `totaldonasis`
--

INSERT INTO `totaldonasis` (`id`, `total`, `total_tersalurkan`, `created_at`, `updated_at`) VALUES
(1, 0, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ukms`
--

CREATE TABLE `ukms` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama_penerima` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_usaha` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `jumlah_awal` int(11) NOT NULL,
  `jumlah_total` int(11) DEFAULT NULL,
  `dokumentasi` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL,
  `lama` int(11) NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `roles` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `totaldonasi` int(11) DEFAULT NULL,
  `nohp` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pekerjaan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL,
  `donasi_awal` int(11) NOT NULL,
  `jkel` enum('L','P') COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `totaldonasi`, `nohp`, `foto`, `pekerjaan`, `alamat`, `status`, `deleted_by`, `donasi_awal`, `jkel`) VALUES
(1, 'Khaeruddin Asdar', 'khaeruddinasdar12@gmail.com', NULL, '$2y$10$XsL8mMwJ2a44.GJu3.L0hecTgrb5wGjRpvkoUgNH1/uu7a0Du.6re', NULL, '2019-08-06 21:09:15', '2019-08-06 21:09:15', NULL, '082344949505', 'fotouser/WY4y8hWXoNjeImBv17C7ToZ2se6TANB6NprkL4w1.jpeg', 'mahasiswa', 'jln. paccerakkang', 'active', NULL, 100000, 'P');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `beasiswas`
--
ALTER TABLE `beasiswas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `beasiswas_created_by_foreign` (`created_by`),
  ADD KEY `beasiswas_id_mitra_foreign` (`id_mitra`);

--
-- Indexes for table `donasis`
--
ALTER TABLE `donasis`
  ADD PRIMARY KEY (`id`),
  ADD KEY `donasis_confirm_by_foreign` (`confirm_by`);

--
-- Indexes for table `donasiusers`
--
ALTER TABLE `donasiusers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `donasiusers_iduser_foreign` (`iduser`),
  ADD KEY `donasiusers_confirm_by_foreign` (`confirm_by`);

--
-- Indexes for table `kegiataninfaks`
--
ALTER TABLE `kegiataninfaks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kegiataninfaks_created_by_foreign` (`created_by`),
  ADD KEY `kegiataninfaks_nama_kegiatan_foreign` (`nama_kegiatan`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mitras`
--
ALTER TABLE `mitras`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mitras_created_by_foreign` (`created_by`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `penyalurans`
--
ALTER TABLE `penyalurans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `penyalurans_created_by_foreign` (`created_by`);

--
-- Indexes for table `prokers`
--
ALTER TABLE `prokers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `prokers_created_by_foreign` (`created_by`);

--
-- Indexes for table `totaldonasis`
--
ALTER TABLE `totaldonasis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ukms`
--
ALTER TABLE `ukms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ukms_created_by_foreign` (`created_by`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_deleted_by_foreign` (`deleted_by`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `beasiswas`
--
ALTER TABLE `beasiswas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `donasis`
--
ALTER TABLE `donasis`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `donasiusers`
--
ALTER TABLE `donasiusers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kegiataninfaks`
--
ALTER TABLE `kegiataninfaks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `mitras`
--
ALTER TABLE `mitras`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `penyalurans`
--
ALTER TABLE `penyalurans`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `prokers`
--
ALTER TABLE `prokers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `totaldonasis`
--
ALTER TABLE `totaldonasis`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ukms`
--
ALTER TABLE `ukms`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `beasiswas`
--
ALTER TABLE `beasiswas`
  ADD CONSTRAINT `beasiswas_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `beasiswas_id_mitra_foreign` FOREIGN KEY (`id_mitra`) REFERENCES `mitras` (`id`);

--
-- Constraints for table `donasis`
--
ALTER TABLE `donasis`
  ADD CONSTRAINT `donasis_confirm_by_foreign` FOREIGN KEY (`confirm_by`) REFERENCES `admins` (`id`);

--
-- Constraints for table `donasiusers`
--
ALTER TABLE `donasiusers`
  ADD CONSTRAINT `donasiusers_confirm_by_foreign` FOREIGN KEY (`confirm_by`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `donasiusers_iduser_foreign` FOREIGN KEY (`iduser`) REFERENCES `users` (`id`);

--
-- Constraints for table `kegiataninfaks`
--
ALTER TABLE `kegiataninfaks`
  ADD CONSTRAINT `kegiataninfaks_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `kegiataninfaks_nama_kegiatan_foreign` FOREIGN KEY (`nama_kegiatan`) REFERENCES `prokers` (`id`);

--
-- Constraints for table `mitras`
--
ALTER TABLE `mitras`
  ADD CONSTRAINT `mitras_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `admins` (`id`);

--
-- Constraints for table `penyalurans`
--
ALTER TABLE `penyalurans`
  ADD CONSTRAINT `penyalurans_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `admins` (`id`);

--
-- Constraints for table `prokers`
--
ALTER TABLE `prokers`
  ADD CONSTRAINT `prokers_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `admins` (`id`);

--
-- Constraints for table `ukms`
--
ALTER TABLE `ukms`
  ADD CONSTRAINT `ukms_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `admins` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_deleted_by_foreign` FOREIGN KEY (`deleted_by`) REFERENCES `admins` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
