-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th2 09, 2023 lúc 02:54 PM
-- Phiên bản máy phục vụ: 10.4.24-MariaDB
-- Phiên bản PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `vkqn_group`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bills`
--

CREATE TABLE `bills` (
  `id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(11) NOT NULL,
  `date_order` datetime NOT NULL,
  `total` double NOT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bill_details`
--

CREATE TABLE `bill_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `bill_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantily` int(11) NOT NULL,
  `price` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart`
--

CREATE TABLE `cart` (
  `idcart` bigint(20) UNSIGNED NOT NULL,
  `iduser` int(11) NOT NULL,
  `idproduct` int(11) NOT NULL,
  `soluong` int(11) NOT NULL,
  `tensp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gia` int(11) NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `cart`
--

INSERT INTO `cart` (`idcart`, `iduser`, `idproduct`, `soluong`, `tensp`, `gia`, `img`, `created_at`, `updated_at`) VALUES
(16, 5, 15, 1, 'Điện thoại iPhone 12 Pro Max', 21000, '1654162041.jpg', NULL, NULL),
(17, 5, 16, 4, 'Điện thoại iPhone 12 Pro Max', 24000, '1654162031.jpg', NULL, NULL),
(28, 8, 15, 10, 'Điện thoại iPhone 12 Pro Max', 21000, '1654162041.jpg', NULL, NULL),
(29, 8, 16, 4, 'Điện thoại iPhone 12 Pro Max', 24000, '1654162031.jpg', NULL, NULL),
(30, 8, 17, 10, 'Điện thoại iPhone 12 Pro Max', 24000000, '1653880793.jpg', NULL, NULL),
(33, 2, 18, 1, 'Laptop M1', 24000000, '1654477967.jpg', NULL, NULL),
(34, 10, 18, 1, 'Laptop M1', 24000000, '1654477967.jpg', NULL, NULL),
(35, 10, 15, 3, 'Điện thoại iPhone 12 Pro Max', 21000, '1654162041.jpg', NULL, NULL),
(36, 9, 17, 2, 'Điện thoại iPhone 12 Pro Max', 24000000, '1653880793.jpg', NULL, NULL),
(37, 9, 18, 1, 'Laptop M1', 24000000, '1654477967.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customers`
--

CREATE TABLE `customers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` int(11) NOT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `address`, `phone_number`, `note`, `created_at`, `updated_at`) VALUES
(1, 'cuong', 'cuongtran8c@gmail.com', 'da nang', 358838507, 'dasasd', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
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
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_05_24_091138_products', 1),
(6, '2022_05_31_015636_create_customers_table', 2),
(7, '2022_05_31_015645_create_bills_table', 2),
(8, '2022_05_31_015653_create_bill_details_table', 2),
(9, '2022_05_31_140514_cart_table', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `idProduct` bigint(20) UNSIGNED NOT NULL,
  `tenSp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gia` int(11) NOT NULL,
  `giaSale` int(11) NOT NULL,
  `loaiSp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `imgProduct` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `property` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`idProduct`, `tenSp`, `gia`, `giaSale`, `loaiSp`, `quantity`, `imgProduct`, `property`, `hang`, `created_at`, `updated_at`) VALUES
(15, 'Điện thoại iPhone 12 Pro Max', 2500000, 21000, 'phone', 50, '1654162041.jpg', 'noibat', 'iphone', NULL, NULL),
(16, 'Điện thoại iPhone 12 Pro Max', 2500, 24000, 'phone', 50, '1654162031.jpg', 'noibat', 'iphone', NULL, NULL),
(17, 'Điện thoại iPhone 12 Pro Max', 2500000, 24000000, 'phone', 50, '1653880793.jpg', 'noibat', 'iphone', NULL, NULL),
(18, 'Laptop M1', 2500000, 24000000, 'laptop', 50, '1654477967.jpg', 'noibat', 'iphone', NULL, NULL),
(19, 'Điện thoại SamSung S21', 2500000, 24000000, 'phone', 50, '1654478055.jpg', 'noibat', 'SamSung', NULL, NULL),
(20, 'máy tính bảng', 2500000, 24000000, 'tablet', 50, '1654478330.jpg', 'khuyenmai', 'iphone', NULL, NULL),
(21, 'Điện thoại SamSung U22 utra', 2500000, 24000000, 'phone', 50, '1654478082.jpg', 'noibat', 'iphone', NULL, NULL),
(22, 'tai phone', 2500000, 24000000, 'phukien', 50, '1654478096.jpg', 'noibat', 'iphone', NULL, NULL),
(23, 'Điện thoại iPhone 12 Pro Max', 2500000, 26000000, 'phone', 50, '1653880844.jpg', 'noibat', 'iphone', NULL, NULL),
(24, 'Điện thoại iPhone 12 Pro Max', 2500000, 26000000, 'phone', 50, '1653881157.jpg', 'noibat', 'iphone', NULL, NULL),
(30, 'Laptop Gaming Asus', 213, 111, 'laptop', 33, '1654478649.jpg', 'noibat', 'Asus', '2022-06-05 18:23:27', '2022-06-05 18:23:27'),
(31, 'Laptop HP', 2130, 2100, 'laptop', 12, '1654478701.jpg', 'noibat', 'HP', '2022-06-05 18:25:01', '2022-06-05 18:25:01'),
(32, 'galaxy', 2500, 24000, 'tablet', 2, '1654478819.jpg', 'noibat', 'SamSung', '2022-06-05 18:26:59', '2022-06-05 18:26:59'),
(33, 'samsung table', 213, 121, 'tablet', 12, '1654478871.jpg', 'noibat', 'SamSung', '2022-06-05 18:27:51', '2022-06-05 18:27:51'),
(35, 'iphone 17 22', 2500, 2100, 'điện thoại', 33, '1675948736.jpg', 'đasa', 'iphone', '2023-02-09 06:18:56', '2023-02-09 06:18:56');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
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
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `email_verified_at`, `password`, `level`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'cuong tran', 'cuong_1951220010@dau.edu.vn', NULL, '$2y$10$rJ9O3y44T6.6cTKl4WsciORu7b7DnUL80LeEPZbwmN8YHTfxd6Tz6', '1', NULL, '2022-05-29 17:58:25', '2022-05-29 17:58:25'),
(8, 'cuongbro', 'datbe26092001@gmail.com', NULL, '$2y$10$oibIaeDUNt.zXJwUaFgcuOCSnboZ37FSgazvVQDrAACIpIPNn2TU6', '1', NULL, '2022-06-05 17:29:22', '2022-06-05 17:29:22'),
(9, 'ccccccceee', 'cuongtran8c@gmail.com', NULL, '$2y$10$MQNFi2vJiIJupgbUHfHpfeRRNzcs1M.m.GKzfUTNSFnYK/ZRU1AQq', '0', NULL, '2022-06-05 20:29:07', '2022-06-05 20:29:07'),
(10, 'tien', 'tien_1951220088@dau.edu.vn', NULL, '$2y$10$4F5zvKR9C3Q7lpKlKwhKq.hIECxVar8.fgLEqMR7j.ZbGaVhymP1i', '0', NULL, '2022-06-05 20:36:52', '2022-06-05 20:36:52'),
(11, 'cuongtran8c@gmail.com', 'logincuongtran118c@gmail.com', NULL, '$2y$10$Ol5d9wBMulYw0EsKz6Xx1egpEMFudXzejW7F5t3SATRZjH/dteiOO', '0', NULL, '2023-02-09 06:52:44', '2023-02-09 06:52:44');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `bills`
--
ALTER TABLE `bills`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `bill_details`
--
ALTER TABLE `bill_details`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`idcart`);

--
-- Chỉ mục cho bảng `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`idProduct`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `bills`
--
ALTER TABLE `bills`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `bill_details`
--
ALTER TABLE `bill_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `cart`
--
ALTER TABLE `cart`
  MODIFY `idcart` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT cho bảng `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `idProduct` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
