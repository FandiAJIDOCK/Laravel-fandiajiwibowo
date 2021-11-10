-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 10 Nov 2021 pada 18.21
-- Versi server: 10.4.19-MariaDB
-- Versi PHP: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_api`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(9, '2014_10_12_000000_create_users_table', 1),
(10, '2014_10_12_100000_create_password_resets_table', 1),
(11, '2019_08_19_000000_create_failed_jobs_table', 1),
(12, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` int(10) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(11, 'App\\Models\\User', 1, 'token-auth', 'c3417d43fe4b59f46ec1bf60f0d89f29d5bc34c0c9ec27c0f9903dfa5815a6fc', '[\"*\"]', NULL, '2021-11-09 01:25:57', '2021-11-09 01:25:57'),
(12, 'App\\Models\\User', 1, 'token-auth', 'a1f893b5284819e65b0141e30d884d99eee51206a121e1433e35f19dbe3e4d26', '[\"*\"]', NULL, '2021-11-09 01:25:58', '2021-11-09 01:25:58'),
(18, 'App\\Models\\User', 1, 'token-auth', '813a9f8f57fe750473b887f2a3ce5b48d77926a0ab3cfb60594685819a103ca1', '[\"*\"]', NULL, '2021-11-09 07:08:40', '2021-11-09 07:08:40'),
(64, 'App\\Models\\User', 1, 'token-auth', 'f80579ab684da23c510645560364012513e7bd72c368c6bfdba1124fdfae0cc7', '[\"*\"]', NULL, '2021-11-09 20:36:22', '2021-11-09 20:36:22'),
(65, 'App\\Models\\User', 1, 'token-auth', 'c1e08a067992fc15a61f9f9a46237dfb0f0062e46bdb759776b26a634324261b', '[\"*\"]', '2021-11-10 02:29:34', '2021-11-10 02:29:16', '2021-11-10 02:29:34'),
(66, 'App\\Models\\User', 1, 'token-auth', '8aa19718ac57a39edb81268429804ec2af1d426445ce5962caa2b5b49402d6f2', '[\"*\"]', '2021-11-10 02:55:45', '2021-11-10 02:33:31', '2021-11-10 02:55:45'),
(67, 'App\\Models\\User', 1, 'token-auth', '8675cbaa76ef9e426e03f26ed4fa8b9cbfb377adeb3a695da928f1e3dd4f8a31', '[\"*\"]', NULL, '2021-11-10 03:14:27', '2021-11-10 03:14:27'),
(68, 'App\\Models\\User', 1, 'token-auth', 'cf236d79f241850ac61ea0b2b707555f1159acd9cdde5251121cbb422c684611', '[\"*\"]', '2021-11-10 09:16:49', '2021-11-10 06:26:26', '2021-11-10 09:16:49'),
(69, 'App\\Models\\User', 1, 'token-auth', 'daab6f494b48c7fbe008ec4df606221df24c0dcac46aaa034c40fa9b6f94d1f0', '[\"*\"]', NULL, '2021-11-10 06:41:52', '2021-11-10 06:41:52'),
(70, 'App\\Models\\User', 1, 'token-auth', '65eacf3cec91c1e00cb02d616fafd5070ba190ac0ae8c652b7beebb14517fa71', '[\"*\"]', NULL, '2021-11-10 06:42:23', '2021-11-10 06:42:23');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'aktif',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'role = admin, user',
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `registered_at` timestamp NULL DEFAULT NULL,
  `otp` int(11) DEFAULT NULL,
  `verified` int(11) DEFAULT NULL COMMENT '0= belum verified, 1= verifdied'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `user_name`, `email`, `email_verified_at`, `password`, `status`, `remember_token`, `created_at`, `updated_at`, `role`, `avatar`, `registered_at`, `otp`, `verified`) VALUES
(1, 'XXX', 'XXX', 'adsd@gmail.com', NULL, '$2y$10$e1hWQzCGmplP8I1rlG52temfZ1ITXwBM4qCKUo8hKysRyPGO3CdES', 'aktif', NULL, '2021-11-08 21:36:12', '2021-11-10 09:16:49', NULL, '/storage/apiDocs/CErZ1HGhPgLCTIuqxgozMEVfAUn7qsQ6RbAQYvVN.png', '2021-11-09 08:01:01', 234543, 1);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_id_foreign` (`tokenable_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD CONSTRAINT `personal_access_tokens_tokenable_id_foreign` FOREIGN KEY (`tokenable_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
