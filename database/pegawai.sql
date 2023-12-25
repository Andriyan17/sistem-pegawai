-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 25, 2023 at 07:28 PM
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
-- Database: `pegawai`
--

-- --------------------------------------------------------

--
-- Table structure for table `agamas`
--

CREATE TABLE `agamas` (
  `id_agm` bigint(20) UNSIGNED NOT NULL,
  `nmagama` varchar(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `agamas`
--

INSERT INTO `agamas` (`id_agm`, `nmagama`, `created_at`, `updated_at`) VALUES
(1, 'Islam', '2023-12-25 02:07:18', '2023-12-25 02:07:18'),
(2, 'Kristen', '2023-12-25 02:07:18', '2023-12-25 02:07:18'),
(3, 'Katolik', '2023-12-25 02:07:18', '2023-12-25 02:07:18'),
(4, 'Hindu', '2023-12-25 02:07:18', '2023-12-25 02:07:18'),
(5, 'Budha', '2023-12-25 02:07:18', '2023-12-25 02:07:18'),
(6, 'Konghucu', '2023-12-25 02:07:18', '2023-12-25 02:07:18');

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
-- Table structure for table `golongan_darahs`
--

CREATE TABLE `golongan_darahs` (
  `id_darah` bigint(20) UNSIGNED NOT NULL,
  `nama_gol_darah` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `golongan_darahs`
--

INSERT INTO `golongan_darahs` (`id_darah`, `nama_gol_darah`, `created_at`, `updated_at`) VALUES
(1, 'A', '2023-12-25 02:07:18', '2023-12-25 02:07:18'),
(2, 'B', '2023-12-25 02:07:18', '2023-12-25 02:07:18'),
(3, 'AB', '2023-12-25 02:07:18', '2023-12-25 02:07:18'),
(4, 'O', '2023-12-25 02:07:18', '2023-12-25 02:07:18');

-- --------------------------------------------------------

--
-- Table structure for table `keluargas`
--

CREATE TABLE `keluargas` (
  `kdstatusk` bigint(20) UNSIGNED NOT NULL,
  `nmstatusk` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `keluargas`
--

INSERT INTO `keluargas` (`kdstatusk`, `nmstatusk`, `created_at`, `updated_at`) VALUES
(1, 'Kawin', '2023-12-25 02:07:18', '2023-12-25 02:07:18'),
(2, 'Belum Kawin', '2023-12-25 02:07:18', '2023-12-25 02:07:18'),
(3, 'Cerai', '2023-12-25 02:07:18', '2023-12-25 02:07:18');

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
(5, '2022_12_28_004829_create_pegawais_table', 1),
(6, '2022_12_28_042637_create_agamas_table', 1),
(7, '2022_12_28_042703_create_negaras_table', 1),
(8, '2022_12_28_042746_create_golongan_darahs_table', 1),
(9, '2022_12_28_042813_create_keluargas_table', 1),
(10, '2022_12_28_042931_create_pendidikans_table', 1),
(11, '2022_12_28_042944_create_pelatihans_table', 1),
(12, '2022_12_28_042959_create_pengalamen_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `negaras`
--

CREATE TABLE `negaras` (
  `id_ngr` bigint(20) UNSIGNED NOT NULL,
  `nm_negara` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `negaras`
--

INSERT INTO `negaras` (`id_ngr`, `nm_negara`, `created_at`, `updated_at`) VALUES
(1, 'Brunei', '2023-12-25 02:07:18', '2023-12-25 02:07:18'),
(2, 'Kamboja', '2023-12-25 02:07:18', '2023-12-25 02:07:18'),
(3, 'Indonesia', '2023-12-25 02:07:18', '2023-12-25 02:07:18'),
(4, 'Laos', '2023-12-25 02:07:18', '2023-12-25 02:07:18'),
(5, 'Malaysia', '2023-12-25 02:07:18', '2023-12-25 02:07:18'),
(6, 'Myanmar', '2023-12-25 02:07:18', '2023-12-25 02:07:18'),
(7, 'Papua New Guinea', '2023-12-25 02:07:18', '2023-12-25 02:07:18'),
(8, 'Filipina', '2023-12-25 02:07:18', '2023-12-25 02:07:18'),
(9, 'Singapura', '2023-12-25 02:07:18', '2023-12-25 02:07:18'),
(10, 'Thailand', '2023-12-25 02:07:18', '2023-12-25 02:07:18'),
(11, 'Timor-Leste', '2023-12-25 02:07:18', '2023-12-25 02:07:18'),
(12, 'Vietnam', '2023-12-25 02:07:18', '2023-12-25 02:07:18');

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
-- Table structure for table `pegawais`
--

CREATE TABLE `pegawais` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nip` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `tmpt_lahir` varchar(40) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jenis_kelamin` enum('Laki-laki','Perempuan') NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `foto` varchar(100) DEFAULT NULL,
  `nohp` varchar(40) NOT NULL,
  `agama_id` smallint(6) DEFAULT NULL,
  `negara_id` smallint(6) DEFAULT NULL,
  `gol_darah_id` smallint(6) DEFAULT NULL,
  `skeluarga_id` smallint(6) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pegawais`
--

INSERT INTO `pegawais` (`id`, `nip`, `nama`, `tmpt_lahir`, `tgl_lahir`, `jenis_kelamin`, `alamat`, `foto`, `nohp`, `agama_id`, `negara_id`, `gol_darah_id`, `skeluarga_id`, `created_at`, `updated_at`) VALUES
(52, '12233', 'asdda', '1s21qa', '2023-12-13', 'Laki-laki', 'Kuta Meuligoe', NULL, '12232313', 1, 3, 1, 1, '2023-12-25 10:10:51', '2023-12-25 10:10:51');

-- --------------------------------------------------------

--
-- Table structure for table `pelatihans`
--

CREATE TABLE `pelatihans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tgl_pelatihan` date NOT NULL,
  `topik_pelatihan` varchar(255) NOT NULL,
  `pegawai_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pendidikans`
--

CREATE TABLE `pendidikans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pegawai_id` bigint(20) UNSIGNED NOT NULL,
  `t_pdk` varchar(20) NOT NULL,
  `d_pdk` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pengalamen`
--

CREATE TABLE `pengalamen` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pegawai_id` bigint(20) UNSIGNED NOT NULL,
  `nm_pekerjaan` varchar(255) NOT NULL,
  `d_pekerjaan` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin', 'admin@adm.id', NULL, '$2y$10$acTK.3hBDAz1yDsfzgMjAe0KnAbhM0gCdLSt3olxm0HkKXLEP/dKS', NULL, '2023-12-25 02:07:17', '2023-12-25 02:07:17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agamas`
--
ALTER TABLE `agamas`
  ADD PRIMARY KEY (`id_agm`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `golongan_darahs`
--
ALTER TABLE `golongan_darahs`
  ADD PRIMARY KEY (`id_darah`);

--
-- Indexes for table `keluargas`
--
ALTER TABLE `keluargas`
  ADD PRIMARY KEY (`kdstatusk`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `negaras`
--
ALTER TABLE `negaras`
  ADD PRIMARY KEY (`id_ngr`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `pegawais`
--
ALTER TABLE `pegawais`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pegawais_nip_unique` (`nip`);

--
-- Indexes for table `pelatihans`
--
ALTER TABLE `pelatihans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pelatihans_pegawai_id_foreign` (`pegawai_id`);

--
-- Indexes for table `pendidikans`
--
ALTER TABLE `pendidikans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pendidikans_pegawai_id_foreign` (`pegawai_id`);

--
-- Indexes for table `pengalamen`
--
ALTER TABLE `pengalamen`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pengalamen_pegawai_id_foreign` (`pegawai_id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
-- AUTO_INCREMENT for table `agamas`
--
ALTER TABLE `agamas`
  MODIFY `id_agm` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `golongan_darahs`
--
ALTER TABLE `golongan_darahs`
  MODIFY `id_darah` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `keluargas`
--
ALTER TABLE `keluargas`
  MODIFY `kdstatusk` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `negaras`
--
ALTER TABLE `negaras`
  MODIFY `id_ngr` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `pegawais`
--
ALTER TABLE `pegawais`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `pelatihans`
--
ALTER TABLE `pelatihans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pendidikans`
--
ALTER TABLE `pendidikans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pengalamen`
--
ALTER TABLE `pengalamen`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `pelatihans`
--
ALTER TABLE `pelatihans`
  ADD CONSTRAINT `pelatihans_pegawai_id_foreign` FOREIGN KEY (`pegawai_id`) REFERENCES `pegawais` (`id`);

--
-- Constraints for table `pendidikans`
--
ALTER TABLE `pendidikans`
  ADD CONSTRAINT `pendidikans_pegawai_id_foreign` FOREIGN KEY (`pegawai_id`) REFERENCES `pegawais` (`id`);

--
-- Constraints for table `pengalamen`
--
ALTER TABLE `pengalamen`
  ADD CONSTRAINT `pengalamen_pegawai_id_foreign` FOREIGN KEY (`pegawai_id`) REFERENCES `pegawais` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
