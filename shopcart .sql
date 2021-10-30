-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 30, 2021 lúc 12:41 PM
-- Phiên bản máy phục vụ: 10.4.21-MariaDB
-- Phiên bản PHP: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `shopcart`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `parent_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(31, 'Điện thoại', 'dien-thoai', 0, '2021-10-24 21:11:38', '2021-10-24 21:11:38', NULL),
(32, 'Máy tính', 'may-tinh', 0, '2021-10-24 21:11:46', '2021-10-24 21:11:46', NULL),
(33, 'Phụ kiện', 'phu-kien', 0, '2021-10-24 21:11:53', '2021-10-24 21:11:53', NULL),
(34, 'Samsung', 'samsung', 31, '2021-10-24 21:12:02', '2021-10-24 21:12:02', NULL),
(35, 'Nokia', 'nokia', 31, '2021-10-24 21:12:11', '2021-10-24 21:12:11', NULL),
(36, 'Xiaomi', 'xiaomi', 31, '2021-10-24 21:12:30', '2021-10-24 21:12:30', NULL),
(37, 'Asus Cor-i5', 'asus-cor-i5', 32, '2021-10-24 21:13:08', '2021-10-24 21:13:13', NULL);

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
-- Cấu trúc bảng cho bảng `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menus`
--

INSERT INTO `menus` (`id`, `name`, `slug`, `parent_id`, `created_at`, `updated_at`) VALUES
(1, 'Sản phẩm', 'san-pham', 0, '2021-10-15 11:20:53', '2021-10-15 11:20:53'),
(2, 'admin', 'admin', 1, '2021-10-15 11:21:26', '2021-10-15 11:21:26'),
(3, 'Nước hoa tinh khiết', 'nuoc-hoa-tinh-khiet', 0, '2021-10-15 11:21:31', '2021-10-15 11:21:31'),
(4, 'Nước hoa tinh khiết', 'nuoc-hoa-tinh-khiet', 2, '2021-10-15 11:47:04', '2021-10-15 11:47:04');

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
(5, '2021_10_13_025409_create_table_categories', 1),
(6, '2021_10_13_203743_add_colums_delete_at_table_categories', 1),
(7, '2021_10_13_214313_create_menus_table', 1),
(8, '2021_10_14_025643_create_products_table', 1),
(9, '2021_10_14_025947_create_product_images_table', 1),
(10, '2021_10_14_030156_create_tags_table', 1),
(11, '2021_10_14_030339_create_product_tags_table', 1),
(12, '2021_10_15_054628_add_colums_table_products', 2),
(13, '2021_10_16_224453_add_colums_slug_table_product', 3),
(14, '2021_10_18_223626_create_sliders_table', 4),
(15, '2021_10_19_021315_create_settings_table', 5),
(16, '2021_10_19_031227_add_colum_type_table_setting', 6),
(17, '2021_10_19_055935_create_roles_table', 7),
(18, '2021_10_19_060010_create_permissions_table', 7),
(19, '2021_10_19_060146_create_table_user_role', 7),
(20, '2021_10_19_060254_create_table_permission_role', 7),
(22, '2021_10_22_012215_add_colum_parent_id_table_permissions', 8),
(23, '2021_10_23_093756_add_column_key_code_table_permissions', 9),
(24, '2021_10_24_151147_add_column_view_table_product', 10),
(29, '2021_10_28_142044_create_table_order', 11),
(30, '2021_10_28_142202_create_table_order_product', 11),
(31, '2021_10_29_134540_add_colum_quantity_table_product', 12);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `total_price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `code`, `user_id`, `status`, `total_price`, `created_at`, `updated_at`) VALUES
(14, '734162067', 58, 1, 62900000, '2021-10-29 19:45:51', '2021-10-30 12:09:17'),
(16, '1966901009', 58, 2, 21300000, '2021-10-30 12:03:54', '2021-10-30 12:09:09');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_product`
--

CREATE TABLE `order_product` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order_product`
--

INSERT INTO `order_product` (`id`, `order_id`, `product_id`, `quantity`, `price`, `created_at`, `updated_at`) VALUES
(11, 14, 39, 1, 12900000, '2021-10-29 19:45:51', '2021-10-29 19:45:51'),
(12, 14, 40, 2, 25000000, '2021-10-29 19:45:51', '2021-10-29 19:45:51'),
(13, 15, 39, 2, 12900000, '2021-10-29 20:08:48', '2021-10-29 20:08:48'),
(14, 16, 33, 1, 19000000, '2021-10-30 12:03:54', '2021-10-30 12:03:54'),
(15, 16, 35, 1, 2300000, '2021-10-30 12:03:54', '2021-10-30 12:03:54');

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
-- Cấu trúc bảng cho bảng `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `parent_id` int(255) NOT NULL DEFAULT 0,
  `key_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `created_at`, `updated_at`, `parent_id`, `key_code`) VALUES
(70, 'menu', NULL, '2021-10-23 21:19:38', '2021-10-23 21:19:38', 0, NULL),
(71, 'list-menu', NULL, '2021-10-23 21:19:38', '2021-10-23 21:19:38', 70, 'list-menu'),
(72, 'add-menu', NULL, '2021-10-23 21:19:38', '2021-10-23 21:19:38', 70, 'add-menu'),
(73, 'edit-menu', NULL, '2021-10-23 21:19:38', '2021-10-23 21:19:38', 70, 'edit-menu'),
(74, 'delete-menu', NULL, '2021-10-23 21:19:38', '2021-10-23 21:19:38', 70, 'delete-menu'),
(75, 'category', NULL, '2021-10-23 21:20:54', '2021-10-23 21:20:54', 0, NULL),
(76, 'list-category', NULL, '2021-10-23 21:20:54', '2021-10-23 21:20:54', 75, 'list-category'),
(77, 'add-category', NULL, '2021-10-23 21:20:54', '2021-10-23 21:20:54', 75, 'add-category'),
(78, 'edit-category', NULL, '2021-10-23 21:20:54', '2021-10-23 21:20:54', 75, 'edit-category'),
(79, 'delete-category', NULL, '2021-10-23 21:20:54', '2021-10-23 21:20:54', 75, 'delete-category'),
(80, 'product', NULL, '2021-10-23 21:23:48', '2021-10-23 21:23:48', 0, NULL),
(81, 'list-product', NULL, '2021-10-23 21:23:48', '2021-10-23 21:23:48', 80, 'list-product'),
(82, 'add-product', NULL, '2021-10-23 21:23:48', '2021-10-23 21:23:48', 80, 'add-product'),
(83, 'edit-product', NULL, '2021-10-23 21:23:48', '2021-10-23 21:23:48', 80, 'edit-product'),
(84, 'delete-product', NULL, '2021-10-23 21:23:48', '2021-10-23 21:23:48', 80, 'delete-product'),
(85, 'user', NULL, '2021-10-23 21:23:59', '2021-10-23 21:23:59', 0, NULL),
(86, 'list-user', NULL, '2021-10-23 21:23:59', '2021-10-23 21:23:59', 85, 'list-user'),
(87, 'add-user', NULL, '2021-10-23 21:23:59', '2021-10-23 21:23:59', 85, 'add-user'),
(88, 'edit-user', NULL, '2021-10-23 21:23:59', '2021-10-23 21:23:59', 85, 'edit-user'),
(89, 'delete-user', NULL, '2021-10-23 21:23:59', '2021-10-23 21:23:59', 85, 'delete-user'),
(90, 'role', NULL, '2021-10-23 21:24:06', '2021-10-23 21:24:06', 0, NULL),
(91, 'list-role', NULL, '2021-10-23 21:24:06', '2021-10-23 21:24:06', 90, 'list-role'),
(92, 'add-role', NULL, '2021-10-23 21:24:06', '2021-10-23 21:24:06', 90, 'add-role'),
(93, 'edit-role', NULL, '2021-10-23 21:24:06', '2021-10-23 21:24:06', 90, 'edit-role'),
(94, 'delete-role', NULL, '2021-10-23 21:24:06', '2021-10-23 21:24:06', 90, 'delete-role'),
(95, 'setting', NULL, '2021-10-23 21:24:14', '2021-10-23 21:24:14', 0, NULL),
(96, 'list-setting', NULL, '2021-10-23 21:24:14', '2021-10-23 21:24:14', 95, 'list-setting'),
(97, 'add-setting', NULL, '2021-10-23 21:24:14', '2021-10-23 21:24:14', 95, 'add-setting'),
(98, 'edit-setting', NULL, '2021-10-23 21:24:14', '2021-10-23 21:24:14', 95, 'edit-setting'),
(99, 'delete-setting', NULL, '2021-10-23 21:24:14', '2021-10-23 21:24:14', 95, 'delete-setting'),
(100, 'slider', NULL, '2021-10-23 21:24:44', '2021-10-23 21:24:44', 0, NULL),
(101, 'list-slider', NULL, '2021-10-23 21:24:44', '2021-10-23 21:24:44', 100, 'list-slider'),
(102, 'add-slider', NULL, '2021-10-23 21:24:44', '2021-10-23 21:24:44', 100, 'add-slider'),
(103, 'edit-slider', NULL, '2021-10-23 21:24:44', '2021-10-23 21:24:44', 100, 'edit-slider'),
(104, 'delete-slider', NULL, '2021-10-23 21:24:44', '2021-10-23 21:24:44', 100, 'delete-slider'),
(105, 'permission', NULL, NULL, NULL, 0, NULL),
(106, 'add-permission', NULL, NULL, NULL, 105, 'add-permission');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `permission_role`
--

CREATE TABLE `permission_role` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `permission_role`
--

INSERT INTO `permission_role` (`id`, `role_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(10, 18, 4, NULL, NULL),
(11, 18, 6, NULL, NULL),
(12, 18, 7, NULL, NULL),
(13, 18, 8, NULL, NULL),
(21, 15, 2, NULL, NULL),
(22, 16, 2, NULL, NULL),
(23, 16, 3, NULL, NULL),
(24, 16, 4, NULL, NULL),
(25, 16, 6, NULL, NULL),
(26, 16, 7, NULL, NULL),
(27, 16, 8, NULL, NULL),
(30, 15, 3, NULL, NULL),
(31, 15, 4, NULL, NULL),
(72, 13, 76, NULL, NULL),
(73, 13, 77, NULL, NULL),
(74, 13, 78, NULL, NULL),
(75, 13, 79, NULL, NULL),
(76, 13, 71, NULL, NULL),
(77, 13, 81, NULL, NULL),
(81, 13, 72, NULL, NULL),
(82, 13, 73, NULL, NULL),
(83, 13, 74, NULL, NULL),
(84, 13, 82, NULL, NULL),
(85, 13, 83, NULL, NULL),
(86, 13, 84, NULL, NULL),
(87, 13, 86, NULL, NULL),
(88, 13, 87, NULL, NULL),
(89, 13, 88, NULL, NULL),
(90, 13, 89, NULL, NULL),
(91, 13, 91, NULL, NULL),
(92, 13, 92, NULL, NULL),
(93, 13, 93, NULL, NULL),
(94, 13, 94, NULL, NULL),
(95, 13, 96, NULL, NULL),
(96, 13, 97, NULL, NULL),
(97, 13, 98, NULL, NULL),
(98, 13, 99, NULL, NULL),
(99, 13, 101, NULL, NULL),
(100, 13, 102, NULL, NULL),
(101, 13, 103, NULL, NULL),
(102, 13, 104, NULL, NULL),
(103, 13, 106, NULL, NULL),
(104, 14, 71, NULL, NULL),
(105, 14, 72, NULL, NULL),
(108, 14, 76, NULL, NULL),
(109, 14, 77, NULL, NULL),
(112, 14, 81, NULL, NULL),
(116, 14, 101, NULL, NULL),
(117, 14, 102, NULL, NULL),
(118, 14, 103, NULL, NULL),
(119, 14, 104, NULL, NULL),
(120, 14, 82, NULL, NULL);

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
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `view` int(11) NOT NULL DEFAULT 0,
  `quantity` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `image_path`, `content`, `user_id`, `category_id`, `created_at`, `updated_at`, `image_name`, `slug`, `view`, `quantity`) VALUES
(33, 'Samsung Galaxy Z Fold3 5G 512GB', '19000000', '/storage/product/58/qPCbGmQDb9NrUS7Verfq.jpg', '<h3><a href=\"https://www.thegioididong.com/dtdd/samsung-galaxy-z-fold-3-512gb\" target=\"_blank\" title=\"Tham khảo giá điện thoại Samsung Galaxy Z Fold3 5G 512GB chính hãng\">Galaxy Z Fold3 5G</a>&nbsp;đ&aacute;nh dấu bước tiến mới của&nbsp;<a href=\"https://thegioididong.com/samsung\" target=\"_blank\" title=\"Tham khảo sản phẩm Samsung chính hãng tại Thegioididong.com\">Samsung</a>&nbsp;trong ph&acirc;n kh&uacute;c&nbsp;<a href=\"https://www.thegioididong.com/dtdd\" target=\"_blank\" title=\"Tham khảo giá điện thoại smartphone chính hãng\">điện thoại</a>&nbsp;gập cao cấp khi được cải tiến về độ bền c&ugrave;ng những n&acirc;ng cấp đ&aacute;ng gi&aacute; về cấu h&igrave;nh hiệu năng, hứa hẹn sẽ mang đến trải nghiệm sử dụng đột ph&aacute; cho người d&ugrave;ng.</h3>\r\n\r\n<h3>Đột ph&aacute; thiết kế m&agrave;n h&igrave;nh gập</h3>\r\n\r\n<p>Đầu ti&ecirc;n, khung viền Galaxy Z Fold3 được ho&agrave;n thiện bằng chất liệu Armor Aluminum cao cấp nhất từ trước đến giờ nhằm tăng cường được độ bền, m&agrave; vẫn đảm bảo được trọng lượng c&acirc;n đối đem tới cảm gi&aacute;c v&ocirc; c&ugrave;ng chắc chắn v&agrave; cao cấp.&nbsp;</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/42/248284/samsung-galaxy-z-fold3-5g-512gb-23.jpg\" onclick=\"return false;\"><img alt=\"Samsung Galaxy Z Fold3 5G | Thiết kế khung viền cao cấp\" src=\"https://cdn.tgdd.vn/Products/Images/42/248284/samsung-galaxy-z-fold3-5g-512gb-23.jpg\" title=\"Samsung Galaxy Z Fold3 5G | Thiết kế khung viền cao cấp\" /></a></p>\r\n\r\n<p>Nhờ đ&oacute;, tổng thể m&aacute;y cũng đ&atilde; mỏng nhẹ hơn khi trọng lượng giảm xuống c&ograve;n 271 g, độ d&agrave;y phần bản lề khi gập lại c&ograve;n 16 mm cho cảm gi&aacute;c cầm nắm, sử dụng điện thoại Z Fold3 giờ đ&acirc;y đ&atilde; thoải m&aacute;i v&agrave; dễ chịu hơn rất nhiều.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/42/248284/samsung-galaxy-z-fold3-5g-512gb-2.jpg\" onclick=\"return false;\"><img alt=\"Samsung Galaxy Z Fold3 5G | Trọng lượng giảm so với tiền nhiệm\" src=\"https://cdn.tgdd.vn/Products/Images/42/248284/samsung-galaxy-z-fold3-5g-512gb-2.jpg\" title=\"Samsung Galaxy Z Fold3 5G | Trọng lượng giảm so với tiền nhiệm\" /></a></p>\r\n\r\n<p>Khi kh&ocirc;ng d&ugrave;ng c&oacute; thể gấp gọn như một cuốn sổ ghi ch&uacute; nhỏ dễ d&agrave;ng bỏ t&uacute;i mang theo b&ecirc;n m&igrave;nh mọi l&uacute;c mọi nơi.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/42/248284/samsung-galaxy-z-fold3-5g-512gb-060921-102514.jpg\" onclick=\"return false;\"><img alt=\"Samsung Galaxy Z Fold3 5G | Trạng thái khi gập\" src=\"https://cdn.tgdd.vn/Products/Images/42/248284/samsung-galaxy-z-fold3-5g-512gb-060921-102514.jpg\" title=\"Samsung Galaxy Z Fold3 5G | Trạng thái khi gập\" /></a></p>\r\n\r\n<p>Đồng thời, Samsung c&ograve;n tăng cường&nbsp;khả năng kh&aacute;ng nước tr&ecirc;n Galaxy Fold3 chuẩn IPX8 khả dụng ở độ s&acirc;u 1.5 m&eacute;t tối đa trong 30 ph&uacute;t, người d&ugrave;ng c&oacute; thể an t&acirc;m sử dụng tại hồ bơi, thậm ch&iacute; l&agrave; dưới trời mưa.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/42/248284/samsung-galaxy-z-fold3-5g-512gb-21.jpg\" onclick=\"return false;\"><img alt=\"Samsung Galaxy Z Fold3 5G | Khả năng kháng nước chuẩn IPX8\" src=\"https://cdn.tgdd.vn/Products/Images/42/248284/samsung-galaxy-z-fold3-5g-512gb-21.jpg\" title=\"Samsung Galaxy Z Fold3 5G | Khả năng kháng nước chuẩn IPX8\" /></a></p>\r\n\r\n<p>Ngo&agrave;i ra, với&nbsp;<a href=\"https://www.thegioididong.com/dtdd-bao-mat-van-tay\" target=\"_blank\" title=\"Tham khảo giá điện thoại smartphone có bảo mật cảm biến vân tay\">cảm biến v&acirc;n tay</a>&nbsp;ở cạnh b&ecirc;n, người d&ugrave;ng c&oacute; thể nhanh ch&oacute;ng mở kh&oacute;a v&agrave; sử dụng chỉ bằng thao t&aacute;c chạm nhẹ.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/42/248284/samsung-galaxy-z-fold3-5g-512gb-060921-102533.jpg\" onclick=\"return false;\"><img alt=\"Samsung Galaxy Z Fold3 5G | Cảm biến vân tay ở cạnh viền\" src=\"https://cdn.tgdd.vn/Products/Images/42/248284/samsung-galaxy-z-fold3-5g-512gb-060921-102533.jpg\" title=\"Samsung Galaxy Z Fold3 5G | Cảm biến vân tay ở cạnh viền\" /></a></p>\r\n\r\n<p>Hệ thống loa k&eacute;p stereo k&iacute;ch thước lớn ở 2 cạnh tr&ecirc;n dưới t&iacute;ch hợp c&ocirc;ng nghệ Dolby Atmos cho trải nghiệm chơi game, xem phim đ&atilde; tai với &acirc;m lượng lớn, r&otilde; r&agrave;ng v&agrave; sống động.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/42/248284/samsung-galaxy-z-fold3-5g-512gb-060921-102545.jpg\" onclick=\"return false;\"><img alt=\"Samsung Galaxy Z Fold3 5G | Hệ thống loa kép, giải trí ấn tượng\" src=\"https://cdn.tgdd.vn/Products/Images/42/248284/samsung-galaxy-z-fold3-5g-512gb-060921-102545.jpg\" title=\"Samsung Galaxy Z Fold3 5G | Hệ thống loa kép, giải trí ấn tượng\" /></a></p>\r\n\r\n<h3>Cụm camera đỉnh cao c&ocirc;ng nghệ</h3>\r\n\r\n<p>Kế đ&oacute;, cụm camera tr&ecirc;n Galaxy Z Fold3 bao gồm 3 ống k&iacute;nh: Camera g&oacute;c rộng,&nbsp;<a href=\"https://www.thegioididong.com/dtdd-camera-goc-rong\" target=\"_blank\" title=\"Tham khảo giá điện thoại smartphone camera chụp hình góc rộng\">camera g&oacute;c si&ecirc;u rộng</a>,&nbsp;<a href=\"https://www.thegioididong.com/dtdd-camera-zoom\" target=\"_blank\" title=\"Tham khảo điện thoại có camera tele kinh doanh tại Thegioididong.com\">camera tele</a>&nbsp;t&iacute;ch hợp chống rung OIS v&agrave; đều sở hữu độ ph&acirc;n giải 12 MP đặt trong cụm m&ocirc;-đun h&igrave;nh chữ nhật được bo tr&ograve;n 2 đầu tr&ocirc;ng rất thon gọn v&agrave; đầy tinh tế.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/42/248284/samsung-galaxy-z-fold3-5g-512gb-060921-102526.jpg\" onclick=\"return false;\"><img alt=\"Samsung Galaxy Z Fold3 5G | Cụm camera đỉnh cao công nghệ\" src=\"https://cdn.tgdd.vn/Products/Images/42/248284/samsung-galaxy-z-fold3-5g-512gb-060921-102526.jpg\" title=\"Samsung Galaxy Z Fold3 5G | Cụm camera đỉnh cao công nghệ\" /></a></p>\r\n\r\n<p>Chất lượng h&igrave;nh ảnh theo đ&aacute;nh gi&aacute; nhanh l&agrave; kh&aacute; ổn, m&agrave;u sắc tươi tắn, đặc biệt khả năng xử l&yacute;&nbsp;<a href=\"https://www.thegioididong.com/dtdd-camera-xoa-phong\" target=\"_blank\" title=\"Tham khảo giá điện thoại smartphone camera chụp hình xoá phông\">x&oacute;a ph&ocirc;ng</a>&nbsp;cũng đ&atilde; cải thiện đ&aacute;ng kể, &iacute;t t&igrave;nh trạng bị lem như trước đ&acirc;y.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/42/248284/samsung-galaxy-z-fold3-5g-512gb-3.jpg\" onclick=\"return false;\"><img alt=\"Samsung Galaxy Z Fold3 5G | Giao diện camera\" src=\"https://cdn.tgdd.vn/Products/Images/42/248284/samsung-galaxy-z-fold3-5g-512gb-3.jpg\" title=\"Samsung Galaxy Z Fold3 5G | Giao diện camera\" /></a></p>\r\n\r\n<p>Ngo&agrave;i ra, m&aacute;y c&ograve;n sở hữu camera trước ở m&agrave;n h&igrave;nh ngo&agrave;i c&oacute; độ ph&acirc;n giải 10 MP v&agrave; camera trước ở m&agrave;n h&igrave;nh trong sẽ được đặt ẩn dưới m&agrave;n h&igrave;nh c&oacute; độ ph&acirc;n giải 4 MP tất cả đều cho chất lượng ảnh tốt ngo&agrave;i mong đợi.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/42/248284/samsung-galaxy-z-fold3-5g-512gb-15.jpg\" onclick=\"return false;\"><img alt=\"Samsung Galaxy Z Fold3 5G | Khả năng chụp ảnh selfie \" src=\"https://cdn.tgdd.vn/Products/Images/42/248284/samsung-galaxy-z-fold3-5g-512gb-15.jpg\" title=\"Samsung Galaxy Z Fold3 5G | Khả năng chụp ảnh selfie \" /></a></p>\r\n\r\n<p>Đặc biệt, c&oacute; chế độ Flex Mode khi gập m&agrave;n h&igrave;nh theo nhiều g&oacute;c độ, c&oacute; thể chia ra 2 m&agrave;n h&igrave;nh khi chụp ảnh, cho ph&eacute;p người d&ugrave;ng vừa chụp vừa xem lại c&aacute;c ảnh đ&atilde; chụp, tr&aacute;nh sự tr&ugrave;ng lặp, cũng dễ hơn trong việc tương t&aacute;c với người hay vật mẫu để điều khiển c&aacute;c tư thế tạo d&aacute;ng.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/42/248284/samsung-galaxy-z-fold3-5g-512gb-13.jpg\" onclick=\"return false;\"><img alt=\"Samsung Galaxy Z Fold3 5G | Ảnh chụp trên camera\" src=\"https://cdn.tgdd.vn/Products/Images/42/248284/samsung-galaxy-z-fold3-5g-512gb-13.jpg\" title=\"Samsung Galaxy Z Fold3 5G | Ảnh chụp trên camera\" /></a></p>\r\n\r\n<h3>N&acirc;ng tầm giải tr&iacute; m&agrave;n h&igrave;nh gập với camera ẩn</h3>\r\n\r\n<p>M&agrave;n h&igrave;nh ch&iacute;nh tr&ecirc;n Z Fold3 c&oacute; k&iacute;ch thước 7.6 inches, sử dụng tấm nền Dynamic AMOLED 2X cho độ ph&acirc;n giải 1768 x 2208 Pixels hỗ trợ khả năng hiển thị HDR10+ c&ugrave;ng độ s&aacute;ng cao l&ecirc;n tới 1200 nits cho chất lượng hiển thị sắc n&eacute;t, m&agrave;u sắc sống động ch&acirc;n thực trong mọi điều kiện.</p>', 58, 34, '2021-10-24 21:47:26', '2021-10-30 12:03:35', 'samsung-galaxy-z-fold-3-green-1-600x600.jpg', 'samsung-galaxy-z-fold3-5g-512gb', 10, 0),
(34, 'Điện thoại Samsung Galaxy A52s 5G', '20000000', '/storage/product/58/8COyw0JQFs4Frza75WKo.jpg', '<h3><a href=\"https://thegioididong.com/samsung\" target=\"_blank\" title=\"Tham khảo các dòng sản phảm smartphone, tablet Samsung chính hãng\">Samsung</a>&nbsp;đ&atilde; ch&iacute;nh thức giới thiệu chiếc điện thoại&nbsp;<a href=\"https://www.thegioididong.com/dtdd/samsung-galaxy-a52s-5g\" target=\"_blank\" title=\"Tham khảo giá điện thoại Samsung Galaxy A52s 5G chính hãng\">Galaxy A52s 5G</a>&nbsp;đến người d&ugrave;ng, đ&acirc;y&nbsp;phi&ecirc;n bản n&acirc;ng cấp của&nbsp;<a href=\"https://www.thegioididong.com/dtdd/samsung-galaxy-a52-5g\" target=\"_blank\" title=\"Tham khảo giá điện thoại Samsung Galaxy A52 5GSamsung Galaxy A52 5G chính hãng\">Galaxy A52 5G</a>&nbsp;ra mắt c&aacute;ch đ&acirc;y kh&ocirc;ng l&acirc;u, với ngoại h&igrave;nh kh&ocirc;ng đổi nhưng được n&acirc;ng cấp đ&aacute;ng kể về th&ocirc;ng số cấu h&igrave;nh b&ecirc;n trong.</h3>\r\n\r\n<h3>Thiết kế đặc trưng Galaxy A</h3>\r\n\r\n<p>Samsung Galaxy A52s tiếp tục sử dụng ng&ocirc;n ngữ thiết kế nguy&ecirc;n khối theo phong c&aacute;ch trẻ trung với c&aacute;c tuỳ chọn m&agrave;u sắc như: Đen, trắng, t&iacute;m v&agrave; xanh mint.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/42/247507/samsung-galaxy-a52s-5g-3.jpg\" onclick=\"return false;\"><img alt=\"Điện thoại Samsung Galaxy A52s 5G | Thiết kế thừa hưỡng từ dòng flagship cao cấp\" src=\"https://cdn.tgdd.vn/Products/Images/42/247507/samsung-galaxy-a52s-5g-3.jpg\" title=\"Điện thoại Samsung Galaxy A52s 5G | Thiết kế thừa hưỡng từ dòng flagship cao cấp\" /></a></p>\r\n\r\n<p>M&aacute;y sử dụng m&agrave;n h&igrave;nh nốt ruồi Super AMOLED k&iacute;ch thước 6.5 inch, độ ph&acirc;n giải Full HD+ c&ugrave;ng thiết kế tr&agrave;n viền gi&uacute;p mở rộng tối đa kh&ocirc;ng gian hiển thị. Từ đ&oacute; người d&ugrave;ng c&oacute; thể thoải m&aacute;i tận hưởng những chương tr&igrave;nh giải tr&iacute; cực kỳ hấp dẫn.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/42/247507/samsung-galaxy-a52s-5g-2.jpg\" onclick=\"return false;\"><img alt=\"Điện thoại Samsung Galaxy A52s 5G | Màn hình giải trí sắc nét\" src=\"https://cdn.tgdd.vn/Products/Images/42/247507/samsung-galaxy-a52s-5g-2.jpg\" title=\"Điện thoại Samsung Galaxy A52s 5G | Màn hình giải trí sắc nét\" /></a></p>\r\n\r\n<p>M&aacute;y hỗ trợ tần số qu&eacute;t 120 Hz c&ugrave;ng tấm nền chất lượng gi&uacute;p mọi trải nghiệm vuốt chạm tr&ecirc;n m&aacute;y được trở n&ecirc;n mượt m&agrave;, gi&uacute;p mọi h&igrave;nh ảnh, thước phim tr&ecirc;n điện thoại đều được hiển thị tươi tắn v&agrave; v&ocirc; c&ugrave;ng sắc n&eacute;t.&nbsp;</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/42/247507/samsung-galaxy-a52s-5g-5.jpg\" onclick=\"return false;\"><img alt=\"Điện thoại Samsung Galaxy A52s 5G | Trải nghiệm sử dụng vượt mà sắc nét\" src=\"https://cdn.tgdd.vn/Products/Images/42/247507/samsung-galaxy-a52s-5g-5.jpg\" title=\"Điện thoại Samsung Galaxy A52s 5G | Trải nghiệm sử dụng vượt mà sắc nét\" /></a></p>\r\n\r\n<p>Samsung A52s 5G được tăng cường bảo mật với&nbsp;<a href=\"https://www.thegioididong.com/dtdd-bao-mat-van-tay\" target=\"_blank\" title=\"Tham khảo giá điện thoại smartphone có bảo mật cảm biến vân tay\">cảm biến v&acirc;n tay</a>&nbsp;được thiết kế đặt ngay dưới m&agrave;n h&igrave;nh, gi&uacute;p bạn c&oacute; thể mở kh&oacute;a điện thoại hay đăng nhập dễ d&agrave;ng bằng v&acirc;n tay m&agrave; kh&ocirc;ng cần nhập mật khẩu.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/42/247507/samsung-galaxy-a52s-5g-4.jpg\" onclick=\"return false;\"><img alt=\"Điện thoại Samsung Galaxy A52s 5G | Cảm biến vân tay trong màn hình\" src=\"https://cdn.tgdd.vn/Products/Images/42/247507/samsung-galaxy-a52s-5g-4.jpg\" title=\"Điện thoại Samsung Galaxy A52s 5G | Cảm biến vân tay trong màn hình\" /></a></p>\r\n\r\n<p>B&ecirc;n cạnh đ&oacute; Galaxy A52s c&ograve;n sở hữu hệ thống &acirc;m thanh v&ograve;m với vị tr&iacute; ph&acirc;n bổ loa v&ocirc; c&ugrave;ng khoa học gi&uacute;p bạn c&oacute; thể thoải m&aacute;i trải nghiệm những tựa game hay l&agrave; tận hưởng những ph&uacute;t gi&acirc;y giải tr&iacute; khi xem phim với chất &acirc;m cực đ&atilde;.</p>', 58, 34, '2021-10-24 21:50:00', '2021-10-30 16:04:45', 'samsung-galaxy-a52s-5g-mint-600x600.jpg', 'dien-thoai-samsung-galaxy-a52s-5g', 2314, 0),
(35, 'Nokia 3.4', '2300000', '/storage/product/58/uLehpj4gfISrVjcA8LkQ.jpg', '<h3>C&ocirc;ng ty HMD Global đến từ Phần Lan ch&iacute;nh thức bổ sung th&agrave;nh vi&ecirc;n mới cho loạt&nbsp;<a href=\"https://www.thegioididong.com/dtdd\" rel=\"noopener\" target=\"_blank\" title=\"Tham khảo smartphone giá rẻ tại thegioididong.com\">smartphone gi&aacute; rẻ</a>&nbsp;của m&igrave;nh. Đ&acirc;y l&agrave; một sản phẩm&nbsp;c&oacute;&nbsp;m&agrave;n h&igrave;nh lớn, thiết kế cứng c&aacute;p v&agrave; l&agrave;&nbsp;<a href=\"https://www.thegioididong.com/dtdd-nokia\" rel=\"noopener\" target=\"_blank\" title=\"Tham khảo điện thoại Nokia kinh doanh tại thegioididong.com\">điện thoại&nbsp;Nokia</a>&nbsp;series 3 đầu ti&ecirc;n sở hữu m&agrave;n h&igrave;nh &quot;đục l&ocirc;̃&quot;, đ&oacute; ch&iacute;nh l&agrave;&nbsp;<a href=\"https://www.thegioididong.com/dtdd/nokia-34\" rel=\"noopener\" target=\"_blank\" title=\"Tham khảo thông tin Nokia 3.4 kinh doanh tại thegioididong.com\">Nokia 3.4</a>.</h3>\r\n\r\n<h3>M&agrave;n h&igrave;nh lớn hơn, trải nghiệm nhiều hơn</h3>\r\n\r\n<p>Nokia 3.4 sở hữu m&agrave;n h&igrave;nh&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/man-hinh-ips-lcd-la-gi-905752\" rel=\"noopener\" target=\"_blank\" title=\"Màn hình IPS LCD là gì?\">IPS LCD</a>&nbsp;k&iacute;ch thước 6.39 inch độ ph&acirc;n giải HD+, m&agrave;n h&igrave;nh c&oacute; thiết kế theo kiểu đục lỗ đang l&agrave; xu hướng, với một m&agrave;n h&igrave;nh lớn th&igrave; bạn c&oacute; thể tận dụng được tối đa khả năng hiển thị để phục vụ c&aacute;c nhu cầu như vui chơi, giải tr&iacute; v&agrave; l&agrave;m việc.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/42/227626/nokia-34-075820-085849.jpg\" onclick=\"return false;\"><img alt=\"Sở hữu màn hình IPS LCD độ phân giải HD+ | Nokia 3.4\" src=\"https://cdn.tgdd.vn/Products/Images/42/227626/nokia-34-075820-085849.jpg\" title=\"Sở hữu màn hình IPS LCD độ phân giải HD+ | Nokia 3.4\" /></a></p>\r\n\r\n<p>Ngo&agrave;i ra, m&agrave;n h&igrave;nh &quot;đục lỗ&quot; gi&uacute;p đem đến cho bạn nhiều kh&ocirc;ng gian hơn để tận hưởng giải tr&iacute; th&ecirc;m phần trọn vẹn. C&ograve;n m&agrave;n h&igrave;nh IPS LCD sẽ mang lại khả năng hiển thị m&agrave;u sắc tốt, g&oacute;c nh&igrave;n rộng hơn.</p>\r\n\r\n<h3>Thiết kế cứng c&aacute;p, mạnh mẽ</h3>\r\n\r\n<p>Nokia 3.4 sở hữu thiết kế mạnh mẽ, chắc chắn. Kiểu d&aacute;ng gọn nhẹ v&agrave; vẻ ho&agrave;n thiện tuyệt đẹp với m&agrave;u sắc sống động, mặt lưng c&oacute; kết cấu từ 3D Nano dạng v&acirc;n c&oacute; thể cầm chắc chắn trong l&ograve;ng b&agrave;n tay.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/42/227626/nokia-34-075820-085853.jpg\" onclick=\"return false;\"><img alt=\"Thiết kế mặt sau | Nokia 3.4\" src=\"https://cdn.tgdd.vn/Products/Images/42/227626/nokia-34-075820-085853.jpg\" title=\"Thiết kế mặt sau | Nokia 3.4\" /></a></p>\r\n\r\n<p>M&aacute;y cũng được trang bị cảm biến v&acirc;n tay một chạm ở mặt lưng vừa l&agrave;m điểm nhấn vừa gi&uacute;p bảo mật thiết bị tốt hơn, c&oacute; thể mở kh&oacute;a một c&aacute;ch dễ d&agrave;ng v&agrave; nhanh ch&oacute;ng.</p>', 58, 35, '2021-10-24 22:00:16', '2021-10-30 16:05:15', 'nokia-34-xam-600x600-600x600.jpg', 'nokia-34', 0, 0),
(36, 'Nokia C30', '3400000', '/storage/product/58/8jw5kttOzl54hxJX00aJ.jpg', '<h3><a href=\"https://www.thegioididong.com/dtdd/nokia-c30\" target=\"_blank\" title=\"Tham khảo điện thoại Nokia C30 tại Thegioididong.com \">Nokia C30</a>&nbsp;l&agrave; d&ograve;ng&nbsp;<a href=\"https://www.thegioididong.com/dtdd\" target=\"_blank\" title=\"Tham khảo điện thoại chính hãng tại Thegioididong.com \">smartphone gi&aacute; rẻ</a>&nbsp;được&nbsp;<a href=\"https://www.thegioididong.com/dtdd-nokia\" target=\"_blank\" title=\"Tham khảo điện thoại Nokia chính hãng tại Thegioididong.com \">Nokia</a>&nbsp;chăm ch&uacute;t v&agrave; đầu tư kỹ lưỡng với những n&acirc;ng cấp đ&aacute;ng kể về hiệu năng camera c&ugrave;ng vi&ecirc;n pin cực khủng so với&nbsp;<a href=\"https://www.thegioididong.com/dtdd/nokia-c20\" target=\"_blank\" title=\"Tham khảo điện thoại Nokia C20 chính hãng tại Thegioididong.com \">Nokia C20</a>&nbsp;đem lại trải nghiệm tuyệt vời hơn thế hệ tiền nhiệm của m&igrave;nh.</h3>\r\n\r\n<h3>Thiết kế cứng c&aacute;p, tao nh&atilde;</h3>\r\n\r\n<p>Nokia C30 c&oacute; thiết kế kh&ocirc;ng qu&aacute; kh&aacute;c biệt so với thế hệ Nokia C20. Với c&aacute;c g&oacute;c được bo tr&ograve;n ho&agrave;n hảo c&ugrave;ng logo Nokia nổi bật ph&iacute;a viền dưới m&agrave;n h&igrave;nh, được chế t&aacute;c ho&agrave;n to&agrave;n vừa vặn trong l&ograve;ng b&agrave;n tay của bạn.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/42/239748/nokia-c30-2.jpg\" onclick=\"return false;\"><img alt=\"Thiết kế bo tròn quen thuộc - Nokia C30\" src=\"https://cdn.tgdd.vn/Products/Images/42/239748/nokia-c30-2.jpg\" title=\"Thiết kế bo tròn quen thuộc - Nokia C30\" /></a></p>\r\n\r\n<p>Trọng lượng của m&aacute;y khoảng 237 g cho bạn cảm gi&aacute;c cầm nắm đầm tay, cứng c&aacute;p. B&ecirc;n cạnh đ&oacute;, Nokia C30 c&ograve;n ho&agrave;n thiện với vỏ ngo&agrave;i được l&agrave;m từ chất liệu polycarbonate cao cấp đem đến khả năng chống chọi với c&aacute;c va đập một c&aacute;ch hiệu quả.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/42/239748/nokia-c30-3.jpg\" onclick=\"return false;\"><img alt=\"Kích thước nhỏ gọn dễ dàng mang theo - Nokia C30\" src=\"https://cdn.tgdd.vn/Products/Images/42/239748/nokia-c30-3.jpg\" title=\"Kích thước nhỏ gọn dễ dàng mang theo - Nokia C30\" /></a></p>\r\n\r\n<p>Về khả năng hiển thị, thiết bị sở hữu tấm nền IPS LCD hỗ trợ độ ph&acirc;n giải HD+ tuy kh&ocirc;ng qu&aacute; cao nhưng chất lượng hiển thị vẫn tương đối ổn định, m&agrave;u sắc h&agrave;i ho&agrave;. M&agrave;n h&igrave;nh k&iacute;ch thước&nbsp;<a href=\"https://www.thegioididong.com/dtdd-tu-6-inch\" target=\"_blank\" title=\"Tham khảo điện thoại có màn hình 6 inch trở lên tại TGDĐ\">6.82 inch</a>&nbsp;v&agrave; c&oacute; tỷ lệ khung h&igrave;nh 20:9 gi&uacute;p tối ưu h&oacute;a trải nghiệm của bạn từ xem phim, đọc b&aacute;o, chơi game đều sẽ v&ocirc; c&ugrave;ng th&iacute;ch th&uacute;.</p>', 58, 35, '2021-10-24 22:01:39', '2021-10-30 16:05:23', 'nokia-c30-xanh-la-600x600.jpg', 'nokia-c30', 11, 0),
(37, 'Xiaomi 11T 5G 256GB', '9900000', '/storage/product/58/OXR8hXSKUq53Ob0k7Cmb.jpg', '<h3><a href=\"https://www.thegioididong.com/dtdd/xiaomi-11t-256gb\" target=\"_blank\" title=\"Tham khảo giá bán sản phẩm Xiaomi 11T 5G 256GB tại Thế Giới Di Động\">Xiaomi 11T 5G</a>&nbsp;sở hữu m&agrave;n h&igrave;nh AMOLED, vi&ecirc;n pin si&ecirc;u khủng c&ugrave;ng camera độ ph&acirc;n giải 108 MP, chiếc&nbsp;<a href=\"https://www.thegioididong.com/dtdd\" target=\"_blank\" title=\"Tham khảo điện thoại kinh doanh chính hãng tại Thegioididong.com\">smartphone</a>&nbsp;n&agrave;y của&nbsp;<a href=\"https://www.thegioididong.com/dtdd-xiaomi\" target=\"_blank\" title=\"Tham khảo điện thoại Xiaomi kinh doanh tại Thegioididong.com\">Xiaomi</a>&nbsp;sẽ đ&aacute;p ứng mọi nhu cầu sử dụng của bạn, từ giải tr&iacute; đến l&agrave;m việc đều v&ocirc; c&ugrave;ng mượt m&agrave;.&nbsp;</h3>\r\n\r\n<h3>Cho ra những t&aacute;c phẩm đầy ch&acirc;n thật với camera 108 MP</h3>\r\n\r\n<p>Xiaomi đ&atilde; trang bị cho m&aacute;y cụm 3 camera sau gồm camera ch&iacute;nh 108 MP, camera g&oacute;c rộng c&oacute; độ ph&acirc;n giải 8 MP c&ugrave;ng camera telemacro 5 MP kết hợp c&ugrave;ng phần cứng b&ecirc;n trong cho khả năng lấy n&eacute;t, thu s&aacute;ng v&agrave; zoom cực tốt để cho ra những bức ảnh chi tiết d&ugrave; bạn chụp gần hay chụp xa.&nbsp;</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/42/251216/xiaomi-11t-256gb-1.jpg\" onclick=\"return false;\"><img alt=\"Cụm camera sau chất lượng - Xiaomi 11T 5G 256GB\" src=\"https://cdn.tgdd.vn/Products/Images/42/251216/xiaomi-11t-256gb-1.jpg\" title=\"Cụm camera sau chất lượng - Xiaomi 11T 5G 256GB\" /></a></p>\r\n\r\n<p>Việc chụp ảnh phong cảnh khi đi du lịch cũng diễn ra v&ocirc; c&ugrave;ng dễ d&agrave;ng th&ocirc;ng qua&nbsp;<a href=\"https://www.thegioididong.com/dtdd-camera-goc-rong\" target=\"_blank\" title=\"Tham khảo điện thoại có camera góc siêu rộng tại Thegioididong.com\">camera g&oacute;c rộng</a>&nbsp;120 độ, mang đến cho bạn tấm h&igrave;nh to&agrave;n cảnh đầy ấn tượng, c&aacute;c g&oacute;c của ảnh cũng kh&ocirc;ng bị b&oacute;p hay m&eacute;o qu&aacute; nhiều.</p>\r\n\r\n<p>Kh&ocirc;ng dừng lại ở đ&oacute; m&aacute;y c&ograve;n được trang bị th&ecirc;m khả năng chụp đ&ecirc;m si&ecirc;u r&otilde; n&eacute;t, l&agrave;m cho khung cảnh ban đ&ecirc;m th&ocirc;ng qua bức ảnh c&agrave;ng th&ecirc;m ch&acirc;n thực.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/42/251216/xiaomi-11t-256gb-2.jpg\" onclick=\"return false;\"><img alt=\"Chế độ chụp đêm - Xiaomi 11T 5G 256GB\" src=\"https://cdn.tgdd.vn/Products/Images/42/251216/xiaomi-11t-256gb-2.jpg\" title=\"Chế độ chụp đêm - Xiaomi 11T 5G 256GB\" /></a></p>\r\n\r\n<p>Bạn sẽ c&oacute; những bức ảnh chụp cận cảnh cực chi tiết, m&agrave;u sắc trung thực th&ocirc;ng qua ống k&iacute;nh telemacro với ti&ecirc;u điểm chụp th&iacute;ch hợp khoảng 3 - 7 cm, khơi gợi sự s&aacute;ng tạo của bạn bằng những tấm ảnh chụp cận cực chất, l&agrave;m bật l&ecirc;n những n&eacute;t đẹp ẩn đằng sau những chi tiết si&ecirc;u nhỏ.</p>', 58, 36, '2021-10-24 22:03:16', '2021-10-30 16:05:37', 'xiaomi-11t-grey-1-600x600.jpg', 'xiaomi-11t-5g-256gb', 100, 0),
(38, 'Xiaomi 11 Lite 5G NE', '13000000', '/storage/product/58/Lx6JjlcAeTd5ZhzATZQa.jpg', '<h3><a href=\"https://www.thegioididong.com/dtdd/xiaomi-11-lite-5g-ne\" target=\"_blank\" title=\"Tham khảo giá bán điện thoại Xiaomi 11 Lite 5G NE tại Thế Giới Di Động\">Xiaomi 11 Lite 5G NE</a>&nbsp;một phi&ecirc;n bản c&oacute; ngoại h&igrave;nh rất giống với&nbsp;<a href=\"https://www.thegioididong.com/dtdd/xiaomi-mi-11-lite-4g\" target=\"_blank\" title=\"Tham khảo điện thoại Xiaomi Mi 11 Lite tại Thegioididong.com\">Mi 11 Lite</a>&nbsp;được ra mắt trước đ&acirc;y. Chiếc&nbsp;<a href=\"https://www.thegioididong.com/dtdd\" rel=\"noopener\" target=\"_blank\" title=\"Tham khảo các mẫu điện thoại, smartphone giá tốt, chính hãng tại Thegioididong.com\" type=\"Tham khảo các mẫu điện thoại, smartphone giá tốt, chính hãng tại Thegioididong.com\">smartphone</a>&nbsp;n&agrave;y của&nbsp;<a href=\"https://www.thegioididong.com/dtdd-xiaomi\" rel=\"noopener\" target=\"_blank\" title=\"Tham khảo giá smartphone Xiaomi chính hãng đang kinh doanh tại Thegioididong.com\" type=\"Tham khảo giá smartphone Xiaomi chính hãng đang kinh doanh tại Thegioididong.com\">Xiaomi</a>&nbsp;mang trong m&igrave;nh một hiệu năng ổn định, thiết kế sang trọng v&agrave; m&agrave;n h&igrave;nh lớn đ&aacute;p ứng tốt c&aacute;c t&aacute;c vụ hằng ng&agrave;y của bạn một c&aacute;ch dễ d&agrave;ng.</h3>\r\n\r\n<h3>Thiết kế mỏng nhẹ, mang đến sự nổi bật cho người d&ugrave;ng</h3>\r\n\r\n<p>M&aacute;y được chế t&aacute;c nguy&ecirc;n khối, sở hữu một th&acirc;n h&igrave;nh si&ecirc;u mỏng nhẹ chỉ c&oacute; trọng lượng 158 g v&agrave; mỏng 6.8 mm, tạo cảm gi&aacute;c cầm nắm thoải m&aacute;i, để v&agrave;o t&uacute;i quần hay t&uacute;i &aacute;o cũng kh&ocirc;ng qu&aacute; nặng nề.&nbsp;</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/42/249427/xiaomi-11-lite-5g-ne-2.jpg\" onclick=\"return false;\"><img alt=\"Thiết kế mỏng nhẹ, trẻ trung - Xiaomi 11 Lite 5G NE\" src=\"https://cdn.tgdd.vn/Products/Images/42/249427/xiaomi-11-lite-5g-ne-2.jpg\" title=\"Thiết kế mỏng nhẹ, trẻ trung - Xiaomi 11 Lite 5G NE\" /></a></p>\r\n\r\n<p>Thiết kế mặt lưng bằng phẳng với cụm camera được đặt trong một m&ocirc;-đun h&igrave;nh vu&ocirc;ng bo cong nhẹ c&aacute;c g&oacute;c v&agrave; chỉ nh&ocirc; ra 1.77 mm so với mặt lưng, mang đến sự c&acirc;n đối khi nh&igrave;n v&agrave;o tổng thể. M&aacute;y l&ecirc;n kệ với 4 m&agrave;u sắc tuỳ chọn l&agrave; trắng, xanh, hồng v&agrave; đen ph&ugrave; hợp với mọi c&aacute; t&iacute;nh, sở th&iacute;ch.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/42/249427/xiaomi-11-lite-5g-ne-1.jpg\" onclick=\"return false;\"><img alt=\"Có nhiều màu sắc để lựa chọn - Xiaomi 11 Lite 5G NE\" src=\"https://cdn.tgdd.vn/Products/Images/42/249427/xiaomi-11-lite-5g-ne-1.jpg\" title=\"Có nhiều màu sắc để lựa chọn - Xiaomi 11 Lite 5G NE\" /></a></p>\r\n\r\n<p>Bảo mật v&acirc;n tay với cảm biến được trang bị ở cạnh viền, khi cầm m&aacute;y l&ecirc;n bạn c&oacute; thể sẵn tay mở lu&ocirc;n v&ocirc; c&ugrave;ng nhanh ch&oacute;ng, cũng như khả năng bảo vệ tốt th&ocirc;ng tin ri&ecirc;ng tư b&ecirc;n trong m&aacute;y.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/42/249427/xiaomi-11-lite-5g-ne-3.jpg\" onclick=\"return false;\"><img alt=\"Cảm biến vân tay cạnh viền - Xiaomi 11 Lite 5G NE\" src=\"https://cdn.tgdd.vn/Products/Images/42/249427/xiaomi-11-lite-5g-ne-3.jpg\" title=\"Cảm biến vân tay cạnh viền - Xiaomi 11 Lite 5G NE\" /></a></p>\r\n\r\n<h3>M&agrave;n h&igrave;nh AMOLED k&iacute;ch thước lớn cho trải nghiệm tốt hơn</h3>\r\n\r\n<p>M&agrave;n h&igrave;nh AMOLED 6.55 inch thể hiện m&agrave;u sắc tốt hơn, m&agrave;u đen s&acirc;u thẳm c&ograve;n m&agrave;u sắc th&igrave; trong trẻo kết hợp c&ugrave;ng độ ph&acirc;n giải Full HD+ gi&uacute;p h&igrave;nh ảnh hiển thị th&ecirc;m phần sắc n&eacute;t đem đến trải nghiệm tuyệt vời khi xem phim, đọc b&aacute;o hay chơi game.</p>', 58, 36, '2021-10-24 22:04:19', '2021-10-30 16:05:30', 'xiaomi-11-lite-5g-ne-pink-600x600.jpg', 'xiaomi-11-lite-5g-ne', 13, 0),
(39, 'Samsung Galaxy S20 FE (8GB/256GB)', '12900000', '/storage/product/58/UuqwP6MRcy7v5rXbv8RY.jpg', '<h3><a href=\"https://www.thegioididong.com/samsung\" target=\"_blank\" title=\"Tham khảo sản phẩm Samsung chính hãng tại Thế Giới Di Động\">Samsung</a>&nbsp;đ&atilde; giới thiệu đến người d&ugrave;ng th&agrave;nh vi&ecirc;n mới của d&ograve;ng&nbsp;<a href=\"https://www.thegioididong.com/dtdd\" target=\"_blank\" title=\"Tham khảo điện thoại chính hãng tại Thế Giới Di Động\">điện thoại th&ocirc;ng minh</a>&nbsp;S20 Series đ&oacute; ch&iacute;nh l&agrave;&nbsp;<a href=\"https://www.thegioididong.com/dtdd/samsung-galaxy-s20-fan-edition\" target=\"_blank\" title=\"Tham khảo điện thoại Samsung Galaxy S20 FE chính hãng tại Thế Giới Di Động\">Samsung Galaxy S20 FE</a>. Đ&acirc;y l&agrave; mẫu flagship cao cấp quy tụ nhiều t&iacute;nh năng m&agrave; Samfan y&ecirc;u th&iacute;ch, hứa hẹn sẽ mang lại trải nghiệm cao cấp của d&ograve;ng Galaxy S với mức gi&aacute; dễ tiếp cận hơn.</h3>\r\n\r\n<h3>Nhiếp ảnh chuy&ecirc;n nghiệp với cụm camera đẳng cấp</h3>\r\n\r\n<p>Camera tr&ecirc;n S20 FE l&agrave; 3 cảm biến chất lượng nằm gọn trong m&ocirc; đun chữ nhật độc đ&aacute;o ở mặt lưng bao gồm: Camera ch&iacute;nh 12 MP cho chất lượng ảnh sắc n&eacute;t,&nbsp;<a href=\"https://xn--tham%20kho%20in%20thoi%20c%20camera%20gc%20rng%20ti%20th%20gii%20di%20ng-v4gn63tyby8599a5a6iy2igrv2c3a1n/\" target=\"_blank\" title=\"Tham khảo điện thoại có camera góc rộng tại Thế Giới Di Động\">camera g&oacute;c si&ecirc;u rộng</a>&nbsp;12 MP cung cấp g&oacute;c chụp tối đa v&agrave; cuối c&ugrave;ng camera tele 8 MP hỗ trợ zoom quang 3X.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/42/224859/samsung-galaxy-s20-fan-edition-122420-082417.jpg\" onclick=\"return false;\"><img alt=\"Cụm 3 camera chất lượng đa tính năng - Samsung Galaxy S20 FE\" src=\"https://cdn.tgdd.vn/Products/Images/42/224859/samsung-galaxy-s20-fan-edition-122420-082417.jpg\" title=\"Cụm 3 camera chất lượng đa tính năng - Samsung Galaxy S20 FE\" /></a></p>\r\n\r\n<p>Với hệ thống camera n&agrave;y, tất nhi&ecirc;n S20 FE sẽ kh&ocirc;ng thể thiếu những t&iacute;nh năng camera h&agrave;ng đầu như&nbsp;<a href=\"https://www.thegioididong.com/dtdd-camera-xoa-phong\" target=\"_blank\" title=\"Tham khảo điện thoại có camera xóa phông tại Thế Giới Di Động\">chụp x&oacute;a ph&ocirc;ng</a>, tự động lấy n&eacute;t (AF),&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/che-do-chong-rung-quang-hoc-ois-chup-anh-tren-sm-906416\" target=\"_blank\" title=\"Tìm hiểu chế độ chống rung quang học OIS trên smartphone là gì?\">chống rung quang học OIS</a>,... gi&uacute;p bạn dễ d&agrave;ng nhiếp ảnh với c&aacute;c vật thể đang di chuyển m&agrave; vẫn giữ được chất lượng khung h&igrave;nh v&agrave; độ sắc n&eacute;t cao.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/42/224859/samsung-galaxy-s20-fan-edition-122520-082533.jpg\" onclick=\"return false;\"><img alt=\"Cụm camera tích hợp các chế độ chụp nâng cao - Samsung Galaxy S20 FE\" src=\"https://cdn.tgdd.vn/Products/Images/42/224859/samsung-galaxy-s20-fan-edition-122520-082533.jpg\" title=\"Cụm camera tích hợp các chế độ chụp nâng cao - Samsung Galaxy S20 FE\" /></a></p>\r\n\r\n<p>Sự kết hợp giữa ống k&iacute;nh zoom quang học 3X v&agrave; thu ph&oacute;ng si&ecirc;u ph&acirc;n giải l&ecirc;n đến 30X cho ph&eacute;p bạn ph&oacute;ng to mọi chi tiết ở khoảng c&aacute;ch xa đến lại gần hơn bạn m&agrave; kh&ocirc;ng ảnh hưởng đến chất lượng h&igrave;nh ảnh.</p>\r\n\r\n<p>Ngay cả trong điều kiện thiếu s&aacute;ng th&igrave; camera của S20 FE vẫn kh&ocirc;ng l&agrave;m bạn thất vọng khi cho khả năng chụp đ&ecirc;m ấn tượng với cảm biến Dual Pixel gi&uacute;p thu s&aacute;ng tốt, khử nhiễu đa khung h&igrave;nh cho bức ảnh trong m&agrave;n đ&ecirc;m của bạn trở n&ecirc;n sống động, r&otilde; n&eacute;t hơn.</p>\r\n\r\n<p>Với camera selfie 32 MP t&iacute;ch hợp c&aacute;c chế độ l&agrave;m đẹp AI, x&oacute;a ph&ocirc;ng sẽ gi&uacute;p bạn c&oacute; ngay những tấm ảnh selfie cuốn h&uacute;t, tỏa s&aacute;ng c&ugrave;ng bạn b&egrave; trong từng khung h&igrave;nh.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/42/224859/samsung-galaxy-s20-fan-edition-122820-082802.jpg\" onclick=\"return false;\"><img alt=\"Camera selfie 32 MP hỗ trợ tính năng làm đẹp AI, quay video Full HD - Samsung Galaxy S20 FE\" src=\"https://cdn.tgdd.vn/Products/Images/42/224859/samsung-galaxy-s20-fan-edition-122820-082802.jpg\" title=\"Camera selfie 32 MP hỗ trợ tính năng làm đẹp AI, quay video Full HD - Samsung Galaxy S20 FE\" /></a></p>\r\n\r\n<h3>Ngoại h&igrave;nh trẻ trung với loạt gam m&agrave;u c&aacute; t&iacute;nh</h3>\r\n\r\n<p>Samsung Galaxy S20 FE được ho&agrave;n thiện với loạt c&aacute;c gam m&agrave;u trẻ trung thời thượng c&ugrave;ng lớp phủ mờ ở mặt lưng sang trọng mang lại một phi&ecirc;n bản đầy c&aacute; t&iacute;nh để mỗi fan tự tin thể hiện phong c&aacute;ch chất ri&ecirc;ng của m&igrave;nh.</p>', 58, 34, '2021-10-25 23:33:03', '2021-10-29 01:55:24', 'samsung-galaxy-s20-fan-edition-090320-040338-600x600.jpg', 'samsung-galaxy-s20-fe-8gb256gb', 3, 0),
(40, 'Samsung Galaxy S21 Ultra 5G 128GB', '25000000', '/storage/product/58/2rSy1VaQC3gs41dhJzzB.jpg', '<h3>Sự đẳng cấp được&nbsp;<a href=\"https://www.thegioididong.com/samsung\" rel=\"noopener\" target=\"_blank\" title=\"Tham khảo sản phẩm Samsung kinh doanh tại thegioididong.com\">Samsung</a>&nbsp;gửi gắm th&ocirc;ng qua chiếc&nbsp;<a href=\"https://www.thegioididong.com/dtdd\" rel=\"noopener\" target=\"_blank\" title=\"Tham khảo điện thoại smartphone chính hãng tại Thế Giới Di Động\">smartphone</a>&nbsp;Galaxy S21 Ultra 5G với h&agrave;ng loạt sự n&acirc;ng cấp v&agrave; cải tiến kh&ocirc;ng chỉ ngoại h&igrave;nh b&ecirc;n ngo&agrave;i m&agrave; c&ograve;n sức mạnh b&ecirc;n trong, hứa hẹn đ&aacute;p ứng trọn vẹn nhu cầu ng&agrave;y c&agrave;ng cao của người d&ugrave;ng.</h3>\r\n\r\n<h3>Đột ph&aacute; trong thiết kế thời thượng</h3>\r\n\r\n<p>Kh&ocirc;ng chỉ đơn thuần phục vụ giao tiếp v&agrave; giải tr&iacute;,&nbsp;<a href=\"https://www.thegioididong.com/dtdd/samsung-galaxy-s21-ultra\" rel=\"noopener\" target=\"_blank\" title=\"Tham khảo điện thoại Samsung Galaxy S21 Ultra 5G chính hãng tại Thế Giới Di Động\">Samsung Galaxy S21 Ultra 5G</a>&nbsp;c&ograve;n ch&iacute;nh l&agrave; m&oacute;n phụ kiện thời trang khẳng định vị thế của người sở hữu. Vẻ ngo&agrave;i mảnh mai v&agrave; thon gọn đến bất ngờ chỉ 165.1 x 75.6 x 8.9 mm v&agrave; trọng lượng 228 g d&ugrave; phải &ldquo;v&aacute;c&rdquo; một vi&ecirc;n pin lớn.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/42/226316/samsung-galaxy-s21-ultra-0023.jpg\" onclick=\"return false;\"><img alt=\"Thiết kế tinh tế đẳng cấp | Samsung Galaxy S21 Ultra 5G\" src=\"https://cdn.tgdd.vn/Products/Images/42/226316/samsung-galaxy-s21-ultra-0023.jpg\" title=\"Thiết kế tinh tế đẳng cấp | Samsung Galaxy S21 Ultra 5G\" /></a></p>\r\n\r\n<p>Mặt lưng của thiết bị được phủ bởi một lớp nh&aacute;m mờ, sang trọng bền bỉ vừa hạn chế b&aacute;m dấu v&acirc;n tay tối đa vừa tạo n&ecirc;n vẻ ngo&agrave;i tinh xảo v&agrave; cuốn h&uacute;t đến bất ngờ.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/42/226316/samsung-galaxy-s21-ultra-001.jpg\" onclick=\"return false;\"><img alt=\"Mặt lưng phủ nhám mờ tinh xảo | Samsung Galaxy S21 Ultra 5G\" src=\"https://cdn.tgdd.vn/Products/Images/42/226316/samsung-galaxy-s21-ultra-001.jpg\" title=\"Mặt lưng phủ nhám mờ tinh xảo | Samsung Galaxy S21 Ultra 5G\" /></a></p>\r\n\r\n<p>Ngo&agrave;i ra, Galaxy S21 Ultra 5G l&agrave; mẫu flagship S đầu ti&ecirc;n của Samsung hỗ trợ chiếc b&uacute;t S Pen, một c&ocirc;ng cụ vốn đ&atilde; quen thuộc với nhiều người d&ugrave;ng&nbsp;<a href=\"https://www.thegioididong.com/dtdd-samsung-galaxy-note\" rel=\"noopener\" target=\"_blank\" title=\"Tham khảo điện thoại dòng Samsung Galaxy Note chính hãng tại Thế Giới Di Động\">Galaxy Note</a>. Bằng việc sử dụng c&ocirc;ng nghệ Wacom, chiếc b&uacute;t mang đến cảm gi&aacute;c cầm thoải m&aacute;i hơn v&agrave; thật hơn.</p>', 58, 34, '2021-10-25 23:34:49', '2021-10-29 01:19:33', 'samsung-galaxy-s21-ultra-bac-600x600-1-600x600.jpg', 'samsung-galaxy-s21-ultra-5g-128gb', 4, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_images`
--

CREATE TABLE `product_images` (
  `id` int(10) UNSIGNED NOT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_images`
--

INSERT INTO `product_images` (`id`, `image_path`, `product_id`, `created_at`, `updated_at`) VALUES
(10, '/storage/image_details/1/RiyxWSllZoeU98iPzw7l.jpeg', 12, '2021-10-16 04:56:27', '2021-10-16 04:56:27'),
(11, '/storage/image_details/1/OpwqVbWzv0YnMuIzNFdT.jpg', 12, '2021-10-16 04:56:27', '2021-10-16 04:56:27'),
(12, '/storage/image_details/1/vVOLFP5KDkpgfnVxnYjz.jpeg', 13, '2021-10-16 04:57:06', '2021-10-16 04:57:06'),
(13, '/storage/image_details/1/8nBCcGYSXFRkVFqQw6By.jpg', 13, '2021-10-16 04:57:06', '2021-10-16 04:57:06'),
(14, '/storage/image_details/1/dKrTtW4PewHPtr6vQ0FY.jpeg', 14, '2021-10-16 04:57:27', '2021-10-16 04:57:27'),
(15, '/storage/image_details/1/X8GgLYKwYqYcf6rK3nQS.jpg', 14, '2021-10-16 04:57:27', '2021-10-16 04:57:27'),
(16, '/storage/image_details/1/qVCxvuZKHiI2maOjKark.jpeg', 15, '2021-10-16 04:58:54', '2021-10-16 04:58:54'),
(17, '/storage/image_details/1/Hw5AJA0BTpp6hPS2i75K.jpg', 15, '2021-10-16 04:58:54', '2021-10-16 04:58:54'),
(21, '/storage/image_details/1/4vFOIIIBwT09vN6Mxp84.png', 12, '2021-10-17 04:26:34', '2021-10-17 04:26:34'),
(22, '/storage/image_details/1/CS6TEFvVv1uFajfMzbDX.jpg', 12, '2021-10-17 04:26:46', '2021-10-17 04:26:46'),
(23, '/storage/image_details/1/oEebVF8KHXa8VKwl2xtZ.jpg', 16, '2021-10-17 05:11:54', '2021-10-17 05:11:54'),
(24, '/storage/image_details/1/rNMSgzXSnEnbnfwyYCTe.png', 11, '2021-10-17 05:12:03', '2021-10-17 05:12:03'),
(25, '/storage/image_details/1/VPIJix2Q2y9iALiIkhR5.png', 17, '2021-10-17 05:50:53', '2021-10-17 05:50:53'),
(26, '/storage/image_details/1/KKYWjgiQMoXkLvEfu721.jpeg', 17, '2021-10-17 05:50:53', '2021-10-17 05:50:53'),
(27, '/storage/image_details/1/icN2L8oYcDOMbPpWKpb0.jpg', 17, '2021-10-17 05:50:53', '2021-10-17 05:50:53'),
(28, '/storage/image_details/1/Hlgq8dpo3KlxFMeUxoHq.png', 18, '2021-10-17 12:22:05', '2021-10-17 12:22:05'),
(29, '/storage/image_details/1/jA10YjTnLaiC3rQIoaFz.jpeg', 18, '2021-10-17 12:22:05', '2021-10-17 12:22:05'),
(30, '/storage/image_details/1/oAfICF8nYNAMBOKT9Pjn.png', 19, '2021-10-17 12:44:17', '2021-10-17 12:44:17'),
(31, '/storage/image_details/1/96aFqJFVaU8uNTp7aN33.jpg', 20, '2021-10-17 12:46:05', '2021-10-17 12:46:05'),
(32, '/storage/image_details/1/JlSvIu5PgqIjO6p4VM5B.jpeg', 24, '2021-10-17 13:01:04', '2021-10-17 13:01:04'),
(33, '/storage/image_details/1/Ldvm0TJzXA1uq7gAeYUW.jpeg', 25, '2021-10-19 04:12:59', '2021-10-19 04:12:59'),
(34, '/storage/image_details/1/FC8lJWipMaJHZ2OrV8aV.jpg', 25, '2021-10-19 04:12:59', '2021-10-19 04:12:59'),
(35, '/storage/image_details/1/h1WKQ5nJjO0xdgyltbby.jpeg', 26, '2021-10-19 04:21:05', '2021-10-19 04:21:05'),
(36, '/storage/image_details/1/Itdnn7gs4q1kGvXBeNWR.jpg', 26, '2021-10-19 04:21:05', '2021-10-19 04:21:05'),
(37, '/storage/image_details/1/OkdumKTFXyfda0E37jAW.jpg', 27, '2021-10-19 04:45:49', '2021-10-19 04:45:49'),
(38, '/storage/image_details/29/n9I4jsixzqxkdgtKZDjm.jpeg', 28, '2021-10-21 11:54:05', '2021-10-21 11:54:05'),
(39, '/storage/image_details/29/HExiQmbla51DZLbPecwH.jpg', 28, '2021-10-21 11:54:05', '2021-10-21 11:54:05'),
(40, '/storage/image_details/29/KQT7XBayC0kGAl246xJa.png', 29, '2021-10-21 11:54:28', '2021-10-21 11:54:28'),
(41, '/storage/image_details/29/ifKTvVHbTjp0dXCVWtJe.png', 31, '2021-10-21 11:55:34', '2021-10-21 11:55:34'),
(42, '/storage/image_details/58/jpRsivk9ghBItOctqiKf.jpg', 32, '2021-10-24 13:34:49', '2021-10-24 13:34:49'),
(43, '/storage/image_details/58/4FsT1gU3hIMPbtIyNOCm.jpg', 33, '2021-10-24 21:48:09', '2021-10-24 21:48:09'),
(44, '/storage/image_details/58/iorInlthCghICO9KyGlc.jpg', 33, '2021-10-24 21:48:09', '2021-10-24 21:48:09'),
(45, '/storage/image_details/58/sbfSh9p01MXmVnmipRfI.jpg', 33, '2021-10-24 21:48:09', '2021-10-24 21:48:09'),
(46, '/storage/image_details/58/otJpKa3BH0KLmFlSwRCF.jpg', 34, '2021-10-24 21:50:00', '2021-10-24 21:50:00'),
(47, '/storage/image_details/58/eTnTXnacxpgnRdfANh7S.jpg', 34, '2021-10-24 21:50:00', '2021-10-24 21:50:00'),
(48, '/storage/image_details/58/LJYbfBHqXukukGcQrDiQ.jpg', 34, '2021-10-24 21:50:00', '2021-10-24 21:50:00'),
(49, '/storage/image_details/58/9Dop2qY2fE0l8r7IZcPy.jpg', 35, '2021-10-24 22:00:16', '2021-10-24 22:00:16'),
(50, '/storage/image_details/58/0hiYwbczxtQt1hdYveJ4.jpg', 35, '2021-10-24 22:00:16', '2021-10-24 22:00:16'),
(51, '/storage/image_details/58/kt1WzBpZA3sFUY0aEWcM.jpg', 35, '2021-10-24 22:00:16', '2021-10-24 22:00:16'),
(52, '/storage/image_details/58/hOjGBBht3pi5tzEp0xJ1.jpg', 36, '2021-10-24 22:01:39', '2021-10-24 22:01:39'),
(53, '/storage/image_details/58/jUJOqGDjFzrQfkOzU60G.jpg', 36, '2021-10-24 22:01:39', '2021-10-24 22:01:39'),
(54, '/storage/image_details/58/Jo2c3DjAX7EeZlH5wDPY.jpg', 36, '2021-10-24 22:01:39', '2021-10-24 22:01:39'),
(55, '/storage/image_details/58/J9uzgB0jVIcj98QNmeCy.jpg', 37, '2021-10-24 22:03:16', '2021-10-24 22:03:16'),
(56, '/storage/image_details/58/5euuCa7omHEKUu1uxpq4.jpg', 37, '2021-10-24 22:03:16', '2021-10-24 22:03:16'),
(57, '/storage/image_details/58/3flrR4T8YcTCeoR5aRFQ.jpg', 37, '2021-10-24 22:03:16', '2021-10-24 22:03:16'),
(58, '/storage/image_details/58/MpFVXRPrq9zqqkgq28Ri.jpg', 39, '2021-10-25 23:33:03', '2021-10-25 23:33:03'),
(59, '/storage/image_details/58/yhku4lzKQGVIfLnV2p3j.jpg', 39, '2021-10-25 23:33:03', '2021-10-25 23:33:03'),
(60, '/storage/image_details/58/2xZTbaX324b2Akx09jzm.jpg', 39, '2021-10-25 23:33:03', '2021-10-25 23:33:03'),
(61, '/storage/image_details/58/05nskBOkqz9uJEmPn7tF.jpg', 40, '2021-10-25 23:34:49', '2021-10-25 23:34:49'),
(62, '/storage/image_details/58/DP62hPDLlxjnKtVfvI0c.jpg', 40, '2021-10-25 23:34:49', '2021-10-25 23:34:49'),
(63, '/storage/image_details/58/AW59W2rRriNX86lS2Jpd.jpg', 40, '2021-10-25 23:34:49', '2021-10-25 23:34:49');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_tags`
--

CREATE TABLE `product_tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_tags`
--

INSERT INTO `product_tags` (`id`, `product_id`, `tag_id`, `created_at`, `updated_at`) VALUES
(1, 14, 3, '2021-10-16 04:57:27', '2021-10-16 04:57:27'),
(2, 14, 4, '2021-10-16 04:57:27', '2021-10-16 04:57:27'),
(3, 14, 5, '2021-10-16 04:57:27', '2021-10-16 04:57:27'),
(4, 15, 6, '2021-10-16 04:58:54', '2021-10-16 04:58:54'),
(5, 15, 4, '2021-10-16 04:58:54', '2021-10-16 04:58:54'),
(6, 15, 5, '2021-10-16 04:58:54', '2021-10-16 04:58:54'),
(7, 16, 3, '2021-10-16 05:06:09', '2021-10-16 05:06:09'),
(8, 16, 4, '2021-10-16 05:06:09', '2021-10-16 05:06:09'),
(9, 16, 5, '2021-10-16 05:06:09', '2021-10-16 05:06:09'),
(10, 16, 7, '2021-10-16 05:06:09', '2021-10-16 05:06:09'),
(11, 16, 8, '2021-10-17 04:28:26', '2021-10-17 04:28:26'),
(12, 16, 9, '2021-10-17 04:28:26', '2021-10-17 04:28:26'),
(13, 16, 10, '2021-10-17 04:28:26', '2021-10-17 04:28:26'),
(14, 16, 11, '2021-10-17 04:28:27', '2021-10-17 04:28:27'),
(15, 16, 8, '2021-10-17 04:28:33', '2021-10-17 04:28:33'),
(16, 16, 9, '2021-10-17 04:28:33', '2021-10-17 04:28:33'),
(17, 16, 10, '2021-10-17 04:28:33', '2021-10-17 04:28:33'),
(18, 16, 11, '2021-10-17 04:28:33', '2021-10-17 04:28:33'),
(19, 16, 12, '2021-10-17 04:28:33', '2021-10-17 04:28:33'),
(20, 16, 13, '2021-10-17 04:28:33', '2021-10-17 04:28:33'),
(21, 16, 14, '2021-10-17 04:28:33', '2021-10-17 04:28:33'),
(22, 16, 15, '2021-10-17 04:28:33', '2021-10-17 04:28:33'),
(23, 16, 16, '2021-10-17 05:06:17', '2021-10-17 05:06:17'),
(24, 16, 17, '2021-10-17 05:06:17', '2021-10-17 05:06:17'),
(25, 16, 18, '2021-10-17 05:06:17', '2021-10-17 05:06:17'),
(26, 16, 19, '2021-10-17 05:06:17', '2021-10-17 05:06:17'),
(27, 16, 3, '2021-10-17 05:06:36', '2021-10-17 05:06:36'),
(28, 16, 4, '2021-10-17 05:06:36', '2021-10-17 05:06:36'),
(29, 16, 5, '2021-10-17 05:06:36', '2021-10-17 05:06:36'),
(30, 16, 7, '2021-10-17 05:06:36', '2021-10-17 05:06:36'),
(31, 16, 8, '2021-10-17 05:06:36', '2021-10-17 05:06:36'),
(32, 16, 9, '2021-10-17 05:06:36', '2021-10-17 05:06:36'),
(33, 16, 10, '2021-10-17 05:06:36', '2021-10-17 05:06:36'),
(34, 16, 11, '2021-10-17 05:06:36', '2021-10-17 05:06:36'),
(35, 16, 8, '2021-10-17 05:06:36', '2021-10-17 05:06:36'),
(36, 16, 9, '2021-10-17 05:06:36', '2021-10-17 05:06:36'),
(37, 16, 10, '2021-10-17 05:06:36', '2021-10-17 05:06:36'),
(38, 16, 11, '2021-10-17 05:06:36', '2021-10-17 05:06:36'),
(39, 16, 12, '2021-10-17 05:06:36', '2021-10-17 05:06:36'),
(40, 16, 13, '2021-10-17 05:06:36', '2021-10-17 05:06:36'),
(41, 16, 14, '2021-10-17 05:06:36', '2021-10-17 05:06:36'),
(42, 16, 15, '2021-10-17 05:06:36', '2021-10-17 05:06:36'),
(43, 16, 16, '2021-10-17 05:06:36', '2021-10-17 05:06:36'),
(44, 16, 17, '2021-10-17 05:06:36', '2021-10-17 05:06:36'),
(45, 16, 18, '2021-10-17 05:06:36', '2021-10-17 05:06:36'),
(46, 16, 19, '2021-10-17 05:06:36', '2021-10-17 05:06:36'),
(47, 16, 3, '2021-10-17 05:11:54', '2021-10-17 05:11:54'),
(48, 16, 4, '2021-10-17 05:11:54', '2021-10-17 05:11:54'),
(49, 16, 5, '2021-10-17 05:11:54', '2021-10-17 05:11:54'),
(50, 16, 7, '2021-10-17 05:11:54', '2021-10-17 05:11:54'),
(51, 16, 8, '2021-10-17 05:11:54', '2021-10-17 05:11:54'),
(52, 16, 9, '2021-10-17 05:11:54', '2021-10-17 05:11:54'),
(53, 16, 10, '2021-10-17 05:11:54', '2021-10-17 05:11:54'),
(54, 16, 11, '2021-10-17 05:11:54', '2021-10-17 05:11:54'),
(55, 16, 8, '2021-10-17 05:11:54', '2021-10-17 05:11:54'),
(56, 16, 9, '2021-10-17 05:11:54', '2021-10-17 05:11:54'),
(57, 16, 10, '2021-10-17 05:11:54', '2021-10-17 05:11:54'),
(58, 16, 11, '2021-10-17 05:11:54', '2021-10-17 05:11:54'),
(59, 16, 12, '2021-10-17 05:11:54', '2021-10-17 05:11:54'),
(60, 16, 13, '2021-10-17 05:11:54', '2021-10-17 05:11:54'),
(61, 16, 14, '2021-10-17 05:11:54', '2021-10-17 05:11:54'),
(62, 16, 15, '2021-10-17 05:11:54', '2021-10-17 05:11:54'),
(63, 16, 16, '2021-10-17 05:11:54', '2021-10-17 05:11:54'),
(64, 16, 17, '2021-10-17 05:11:54', '2021-10-17 05:11:54'),
(65, 16, 18, '2021-10-17 05:11:55', '2021-10-17 05:11:55'),
(66, 16, 19, '2021-10-17 05:11:55', '2021-10-17 05:11:55'),
(67, 16, 3, '2021-10-17 05:11:55', '2021-10-17 05:11:55'),
(68, 16, 4, '2021-10-17 05:11:55', '2021-10-17 05:11:55'),
(69, 16, 5, '2021-10-17 05:11:55', '2021-10-17 05:11:55'),
(70, 16, 7, '2021-10-17 05:11:55', '2021-10-17 05:11:55'),
(71, 16, 8, '2021-10-17 05:11:55', '2021-10-17 05:11:55'),
(72, 16, 9, '2021-10-17 05:11:55', '2021-10-17 05:11:55'),
(73, 16, 10, '2021-10-17 05:11:55', '2021-10-17 05:11:55'),
(74, 16, 11, '2021-10-17 05:11:55', '2021-10-17 05:11:55'),
(75, 16, 8, '2021-10-17 05:11:55', '2021-10-17 05:11:55'),
(76, 16, 9, '2021-10-17 05:11:55', '2021-10-17 05:11:55'),
(77, 16, 10, '2021-10-17 05:11:55', '2021-10-17 05:11:55'),
(78, 16, 11, '2021-10-17 05:11:55', '2021-10-17 05:11:55'),
(79, 16, 12, '2021-10-17 05:11:55', '2021-10-17 05:11:55'),
(80, 16, 13, '2021-10-17 05:11:55', '2021-10-17 05:11:55'),
(81, 16, 14, '2021-10-17 05:11:55', '2021-10-17 05:11:55'),
(82, 16, 15, '2021-10-17 05:11:55', '2021-10-17 05:11:55'),
(83, 16, 16, '2021-10-17 05:11:55', '2021-10-17 05:11:55'),
(84, 16, 17, '2021-10-17 05:11:55', '2021-10-17 05:11:55'),
(85, 16, 18, '2021-10-17 05:11:55', '2021-10-17 05:11:55'),
(86, 16, 19, '2021-10-17 05:11:55', '2021-10-17 05:11:55'),
(145, 11, 32, NULL, NULL),
(146, 17, 31, '2021-10-17 05:50:53', '2021-10-17 05:50:53'),
(147, 18, 30, '2021-10-17 12:22:05', '2021-10-17 12:22:05'),
(148, 19, 34, '2021-10-17 12:44:17', '2021-10-17 12:44:17'),
(149, 20, 35, '2021-10-17 12:46:06', '2021-10-17 12:46:06'),
(150, 22, 36, '2021-10-17 12:58:59', '2021-10-17 12:58:59'),
(151, 23, 37, '2021-10-17 13:00:48', '2021-10-17 13:00:48'),
(152, 24, 38, '2021-10-17 13:01:04', '2021-10-17 13:01:04'),
(153, 25, 30, '2021-10-19 04:12:59', '2021-10-19 04:12:59'),
(154, 26, 35, '2021-10-19 04:21:05', '2021-10-19 04:21:05'),
(155, 27, 39, '2021-10-19 04:45:49', '2021-10-19 04:45:49'),
(156, 28, 40, '2021-10-21 11:54:05', '2021-10-21 11:54:05'),
(157, 28, 40, '2021-10-21 11:54:05', '2021-10-21 11:54:05'),
(158, 29, 41, '2021-10-21 11:54:28', '2021-10-21 11:54:28'),
(159, 29, 42, '2021-10-21 11:54:28', '2021-10-21 11:54:28'),
(160, 30, 43, '2021-10-21 11:54:53', '2021-10-21 11:54:53'),
(161, 30, 44, NULL, NULL),
(162, 31, 36, '2021-10-21 11:55:34', '2021-10-21 11:55:34'),
(163, 31, 45, '2021-10-21 11:55:34', '2021-10-21 11:55:34'),
(164, 32, 40, '2021-10-24 13:34:49', '2021-10-24 13:34:49'),
(165, 32, 46, '2021-10-24 13:34:49', '2021-10-24 13:34:49'),
(166, 34, 47, '2021-10-24 21:50:00', '2021-10-24 21:50:00'),
(167, 34, 48, '2021-10-24 21:50:00', '2021-10-24 21:50:00'),
(168, 35, 49, '2021-10-24 22:00:16', '2021-10-24 22:00:16'),
(169, 36, 49, '2021-10-24 22:01:39', '2021-10-24 22:01:39'),
(170, 36, 50, '2021-10-24 22:01:39', '2021-10-24 22:01:39'),
(171, 37, 51, '2021-10-24 22:03:16', '2021-10-24 22:03:16'),
(172, 38, 52, '2021-10-24 22:04:19', '2021-10-24 22:04:19'),
(173, 40, 53, '2021-10-25 23:34:49', '2021-10-25 23:34:49');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(13, 'admin', 'Người quản tri', '2021-10-21 11:21:41', '2021-10-22 08:38:33'),
(14, 'nhân viên', 'nhân viên', '2021-10-22 08:38:47', '2021-10-22 08:38:47');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role_user`
--

CREATE TABLE `role_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `role_user`
--

INSERT INTO `role_user` (`id`, `user_id`, `role_id`, `created_at`, `updated_at`) VALUES
(45, 58, 13, NULL, NULL),
(47, 58, 15, NULL, NULL),
(48, 59, 14, NULL, NULL),
(50, 59, 13, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `config_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `config_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `settings`
--

INSERT INTO `settings` (`id`, `config_key`, `config_value`, `created_at`, `updated_at`, `type`) VALUES
(7, 'phone', '0963466269', '2021-10-21 11:52:01', '2021-10-21 11:52:01', 'text'),
(8, 'email', 'buithanhtho14ig@gmail.com', '2021-10-24 20:58:01', '2021-10-24 20:58:01', 'text');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sliders`
--

CREATE TABLE `sliders` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sliders`
--

INSERT INTO `sliders` (`id`, `name`, `description`, `image_path`, `image_name`, `created_at`, `updated_at`) VALUES
(15, 'Free Ecommerce Template', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', '/storage/slider/58/gESCmcD9tF8EZlJ92GtZ.png', 'renno6-seri-830-300-830x300.png', '2021-10-24 20:15:02', '2021-10-28 14:42:10'),
(16, 'Free E-Commerce Template', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', '/storage/slider/58/NNiaqfgc0sLqR7S4Ongl.png', '1.png', '2021-10-24 20:15:22', '2021-10-28 14:43:13'),
(17, '100% Responsive Design', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', '/storage/slider/58/AKPCpZhtB93vPmJ8g89t.png', '2.png', '2021-10-24 20:15:43', '2021-10-28 14:43:21');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tags`
--

INSERT INTO `tags` (`id`, `name`, `created_at`, `updated_at`) VALUES
(30, 'hi', '2021-10-17 05:36:02', '2021-10-17 05:36:02'),
(31, 'hello', '2021-10-17 05:36:13', '2021-10-17 05:36:13'),
(32, 'xin', '2021-10-17 05:37:27', '2021-10-17 05:37:27'),
(33, 'chao', '2021-10-17 05:37:27', '2021-10-17 05:37:27'),
(34, 'ht', '2021-10-17 12:44:17', '2021-10-17 12:44:17'),
(35, 'gt', '2021-10-17 12:46:06', '2021-10-17 12:46:06'),
(36, '123', '2021-10-17 12:58:59', '2021-10-17 12:58:59'),
(37, '213213', '2021-10-17 13:00:48', '2021-10-17 13:00:48'),
(38, '123213', '2021-10-17 13:01:04', '2021-10-17 13:01:04'),
(39, '12d2', '2021-10-19 04:45:49', '2021-10-19 04:45:49'),
(40, 'a', '2021-10-21 11:54:05', '2021-10-21 11:54:05'),
(41, 'c', '2021-10-21 11:54:28', '2021-10-21 11:54:28'),
(42, 'cc', '2021-10-21 11:54:28', '2021-10-21 11:54:28'),
(43, 'sad', '2021-10-21 11:54:53', '2021-10-21 11:54:53'),
(44, 'ASD', '2021-10-21 11:55:15', '2021-10-21 11:55:15'),
(45, '122344', '2021-10-21 11:55:34', '2021-10-21 11:55:34'),
(46, 'as', '2021-10-24 13:34:49', '2021-10-24 13:34:49'),
(47, 'samsung', '2021-10-24 21:50:00', '2021-10-24 21:50:00'),
(48, 's10', '2021-10-24 21:50:00', '2021-10-24 21:50:00'),
(49, 'nokia', '2021-10-24 22:00:16', '2021-10-24 22:00:16'),
(50, 'c30', '2021-10-24 22:01:39', '2021-10-24 22:01:39'),
(51, 'xiaomi', '2021-10-24 22:03:16', '2021-10-24 22:03:16'),
(52, 'xiaomi5g', '2021-10-24 22:04:19', '2021-10-24 22:04:19'),
(53, 's21untra', '2021-10-25 23:34:49', '2021-10-25 23:34:49');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(58, 'admin', 'admin@gmail.com', NULL, '$2y$10$CmntQz4C4ywvTQ8Jd180fuKCJxA1SZ8c5tqDjENiSn6nU//YCLPdG', NULL, '2021-10-21 14:40:25', '2021-10-23 16:14:20'),
(59, 'thobui', 'thobui@gmail.com', NULL, '$2y$10$yeuHQd3m0RWDg7x2xGw62.St1Rv/ubBsajaKtIS2fjRzi3npLclua', NULL, '2021-10-24 13:53:18', '2021-10-30 14:10:01');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `order_product`
--
ALTER TABLE `order_product`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product_tags`
--
ALTER TABLE `product_tags`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `order_product`
--
ALTER TABLE `order_product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT cho bảng `permission_role`
--
ALTER TABLE `permission_role`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT cho bảng `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT cho bảng `product_tags`
--
ALTER TABLE `product_tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=174;

--
-- AUTO_INCREMENT cho bảng `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT cho bảng `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
