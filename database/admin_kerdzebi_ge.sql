-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 18, 2021 at 01:29 PM
-- Server version: 10.3.31-MariaDB-cll-lve
-- PHP Version: 7.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `diemgeco_admin.kerdzebi.ge`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `orderNum` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `name`, `image`, `orderNum`, `created_at`, `updated_at`, `deleted_at`) VALUES
(135, 183, 'Salads', 'backend/images/category/1707783673862910.png', NULL, '2021-08-11 04:10:29', NULL, NULL),
(183, NULL, 'Food', '', NULL, '2021-08-11 03:46:48', NULL, NULL),
(184, NULL, 'Drinks', '', NULL, '2021-08-11 03:47:12', NULL, NULL),
(185, 184, 'Aperitif', 'backend/images/category/1707783089624905.png', NULL, '2021-08-11 04:00:48', '2021-08-11 04:01:10', NULL),
(186, 184, 'Liqueur', 'backend/images/category/1707783109012160.png', NULL, '2021-08-11 04:01:29', NULL, NULL),
(187, 184, 'Vodka', 'backend/images/category/1707783127430529.png', NULL, '2021-08-11 04:01:48', NULL, NULL),
(188, 183, 'Soups', 'backend/images/category/1707783657665793.png', NULL, '2021-08-11 04:10:14', NULL, NULL),
(190, 183, 'Sandwiches', 'backend/images/category/1707783687796155.png', NULL, '2021-08-11 04:10:41', NULL, NULL),
(191, 183, 'Pasta', 'backend/images/category/1707783704715190.png', NULL, '2021-08-11 04:10:57', NULL, NULL),
(192, 183, 'Pizza', 'backend/images/category/1708073010248904.jpeg', NULL, '2021-08-11 04:11:19', '2021-08-14 12:49:20', NULL),
(193, 183, 'Bread and pastry', 'backend/images/category/1707783740472117.png', NULL, '2021-08-11 04:11:31', NULL, NULL),
(194, 183, 'Main Course', 'backend/images/category/1707783753648813.png', NULL, '2021-08-11 04:11:46', NULL, NULL),
(195, 183, 'Fish', 'backend/images/category/1711245178849752.png', NULL, '2021-08-11 04:11:59', '2021-09-18 13:10:04', NULL),
(196, 183, 'Garnish', 'backend/images/category/1707783787500388.png', NULL, '2021-08-11 04:12:16', NULL, NULL),
(197, 183, 'Sauces', 'backend/images/category/1707783804980897.png', NULL, '2021-08-11 04:12:32', NULL, NULL),
(198, 183, 'Dessert', 'backend/images/category/1707783821095784.png', NULL, '2021-08-11 04:12:50', NULL, NULL),
(199, 184, 'Gin', 'backend/images/category/1707906300984931.png', NULL, '2021-08-12 16:39:34', NULL, NULL),
(200, 184, 'Tequile', 'backend/images/category/1707906322504613.png', NULL, '2021-08-12 16:39:54', NULL, NULL),
(201, 184, 'Rum', 'backend/images/category/1707906344181676.png', NULL, '2021-08-12 16:40:15', NULL, NULL),
(202, 184, 'Whisky', 'backend/images/category/1707906371666613.png', NULL, '2021-08-12 16:40:41', NULL, NULL),
(203, 184, 'Cognac', 'backend/images/category/1707909037273985.png', NULL, '2021-08-12 16:41:24', '2021-08-12 17:23:03', NULL),
(204, 184, 'Georgian Brandy', 'backend/images/category/1707906449392018.png', NULL, '2021-08-12 16:41:56', NULL, NULL),
(205, 184, 'Champagne', 'backend/images/category/1707909017508463.png', NULL, '2021-08-12 16:42:26', '2021-08-12 17:22:44', NULL),
(206, 184, 'Cocktails', 'backend/images/category/1707906505541317.png', NULL, '2021-08-12 16:42:37', '2021-08-12 16:43:24', NULL),
(207, 184, 'Beer', 'backend/images/category/1707906561015452.png', NULL, '2021-08-12 16:43:42', NULL, NULL),
(208, 184, 'Coffee & Tea', 'backend/images/category/1707906581281683.png', NULL, '2021-08-12 16:44:01', NULL, NULL),
(209, 184, 'Soft Drinks', 'backend/images/category/1707908383273081.png', NULL, '2021-08-12 17:12:40', NULL, NULL),
(210, 183, 'Snacks', 'backend/images/category/1707908982254895.png', NULL, '2021-08-12 17:15:25', '2021-08-12 17:22:11', NULL);

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
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_10_09_135640_create_permission_tables', 1),
(5, '2020_10_09_135732_create_products_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 3),
(1, 'App\\Models\\User', 5),
(1, 'App\\Models\\User', 6),
(2, 'App\\Models\\User', 7);

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `title`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'role-list', 'როლების ნახვა', 'web', '2021-08-05 14:49:25', '2021-08-05 14:49:25'),
(2, 'role-create', 'როლის შექმნა', 'web', '2021-08-05 14:49:25', '2021-08-05 14:49:25'),
(3, 'role-edit', 'როლის რედაქტირება', 'web', '2021-08-05 14:49:25', '2021-08-05 14:49:25'),
(4, 'role-delete', 'როლის წაშლა', 'web', '2021-08-05 14:49:25', '2021-08-05 14:49:25'),
(5, 'product-list', 'პროდუქციის ნახვა', 'web', '2021-08-05 14:49:25', '2021-08-05 14:49:25'),
(6, 'product-create', 'პროდუქცის დამატება', 'web', '2021-08-05 14:49:25', '2021-08-05 14:49:25'),
(7, 'product-edit', 'პროდუქციის რედაქტირება', 'web', '2021-08-05 14:49:25', '2021-08-05 14:49:25'),
(8, 'product-delete', 'პროდუქციის წაშლა', 'web', '2021-08-05 14:49:25', '2021-08-05 14:49:25');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` int(2) NOT NULL DEFAULT 1,
  `category_id` int(11) DEFAULT NULL,
  `price` double(8,2) DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `status`, `category_id`, `price`, `image`, `created_at`, `updated_at`) VALUES
(1055, 1, 188, 12.00, 'backend/images/products/1708508700250631.jfif', '2021-08-12 16:14:50', '2021-08-19 08:42:44'),
(1056, 1, 135, 10.00, 'backend/images/products/1708509022307507.jfif', '2021-08-12 16:16:17', '2021-08-19 08:43:17'),
(1057, 1, 135, 14.00, 'backend/images/products/1708509075899241.png', '2021-08-12 16:16:53', '2021-08-19 08:44:09'),
(1058, 1, 135, 18.00, 'backend/images/products/1708509175185530.jfif', '2021-08-12 16:17:09', '2021-08-19 08:45:32'),
(1059, 1, 135, 18.00, 'backend/images/products/1708509382259094.png', '2021-08-12 16:17:28', '2021-08-19 08:46:10'),
(1060, 1, 135, 12.00, 'backend/images/products/1708509891797410.jfif', '2021-08-12 16:17:41', '2021-08-19 08:46:44'),
(1063, 1, 190, 25.00, 'backend/images/products/1708511150328085.jpg', '2021-08-12 16:18:41', '2021-08-19 08:53:23'),
(1064, 1, 191, 24.00, 'backend/images/products/1708512130269451.jpg', '2021-08-12 16:19:21', '2021-08-19 09:08:58'),
(1065, 1, 191, 24.00, 'backend/images/products/1708512284615834.jpg', '2021-08-12 16:19:34', '2021-08-19 09:11:25'),
(1066, 1, 191, 25.00, 'backend/images/products/1708512444210880.jpg', '2021-08-12 16:20:16', '2021-08-19 09:13:57'),
(1067, 1, 191, 18.00, 'backend/images/products/1708512546544082.jpg', '2021-08-12 16:20:40', '2021-08-19 09:15:34'),
(1068, 1, 192, 16.00, 'backend/images/products/1708512676746073.jpg', '2021-08-12 16:20:55', '2021-08-19 09:17:39'),
(1069, 1, 192, 24.00, 'backend/images/products/1708512781363472.jpg', '2021-08-12 16:21:12', '2021-08-19 09:19:18'),
(1070, 1, 192, 20.00, 'backend/images/products/1708512856789053.jpg', '2021-08-12 16:21:29', '2021-08-19 09:20:30'),
(1071, 1, 192, 20.00, 'backend/images/products/1708512947002912.jpg', '2021-08-12 16:21:50', '2021-08-19 09:21:56'),
(1072, 1, 193, 4.00, 'backend/images/products/1708513085997451.jpg', '2021-08-12 16:22:13', '2021-08-19 09:24:09'),
(1073, 1, 193, 16.00, 'backend/images/products/1708513327379609.jpg', '2021-08-12 16:22:32', '2021-08-19 09:27:59'),
(1074, 1, 193, 17.00, 'backend/images/products/1708514442305190.jfif', '2021-08-12 16:22:45', '2021-08-19 09:45:42'),
(1075, 1, 193, 14.00, 'backend/images/products/1708513548644612.jpg', '2021-08-12 16:23:06', '2021-08-19 09:31:30'),
(1077, 1, 194, 16.00, 'backend/images/products/1708513663867899.jpg', '2021-08-12 16:24:39', '2021-08-19 09:33:20'),
(1078, 1, 194, 28.00, 'backend/images/products/1708513843754857.jpg', '2021-08-12 16:24:54', '2021-08-19 09:36:12'),
(1079, 1, 194, 22.00, 'backend/images/products/1708513929596089.jpg', '2021-08-12 16:25:16', '2021-08-19 09:37:33'),
(1080, 1, 194, 35.00, 'backend/images/products/1708514081278603.jpg', '2021-08-12 16:25:33', '2021-08-19 09:39:58'),
(1081, 1, 194, 25.00, 'backend/images/products/1708514213717550.jfif', '2021-08-12 16:25:57', '2021-08-19 13:43:05'),
(1082, 1, 194, 10.00, 'backend/images/products/1708514730475871.jpg', '2021-08-12 16:26:08', '2021-08-19 09:50:17'),
(1083, 1, 195, 55.00, 'backend/images/products/1708514905317988.jpg', '2021-08-12 16:26:24', '2021-08-19 09:53:04'),
(1084, 1, 195, 30.00, 'backend/images/products/1708515490091460.jfif', '2021-08-12 16:26:48', '2021-08-19 10:02:22'),
(1085, 1, 195, 18.00, 'backend/images/products/1708516981514585.jfif', '2021-08-12 16:27:07', '2021-08-19 10:26:04'),
(1086, 1, 196, 10.00, 'backend/images/products/1708527063519572.jfif', '2021-08-12 16:27:25', '2021-08-19 13:06:19'),
(1087, 1, 196, 10.00, 'backend/images/products/1708527217188437.jfif', '2021-08-12 16:27:40', '2021-08-19 13:08:45'),
(1088, 1, 196, 8.00, 'backend/images/products/1708527385924448.jpg', '2021-08-12 16:28:01', '2021-08-19 13:11:26'),
(1089, 1, 196, 16.00, 'backend/images/products/1708527509188406.jpg', '2021-08-12 16:28:18', '2021-08-19 13:13:24'),
(1090, 1, 196, 5.00, 'backend/images/products/1708528029148775.jfif', '2021-08-12 16:28:39', '2021-08-19 13:22:32'),
(1091, 1, 197, 3.00, 'backend/images/products/1708528166270924.jfif', '2021-08-12 16:29:25', '2021-08-19 13:23:51'),
(1092, 1, 197, 3.00, 'backend/images/products/1708528254625700.jfif', '2021-08-12 16:29:40', '2021-08-19 13:25:15'),
(1093, 1, 197, 3.00, 'backend/images/products/1708528362213933.jfif', '2021-08-12 16:29:55', '2021-08-19 13:26:57'),
(1094, 1, 197, 3.00, 'backend/images/products/1708528458217671.jfif', '2021-08-12 16:30:08', '2021-08-19 13:28:29'),
(1095, 1, 198, 9.00, 'backend/images/products/1708528539338732.jfif', '2021-08-12 16:30:37', '2021-08-19 13:29:46'),
(1096, 1, 198, 17.00, 'backend/images/products/1708528671833144.jfif', '2021-08-12 16:31:00', '2021-08-19 13:31:53'),
(1097, 1, 198, 10.00, 'backend/images/products/1708528784841753.jfif', '2021-08-12 16:31:15', '2021-08-19 13:33:40'),
(1098, 1, 198, 10.00, 'backend/images/products/1708528896487105.jpg', '2021-08-12 16:31:30', '2021-08-19 13:35:27'),
(1099, 1, 198, 8.00, 'backend/images/products/1708529014696139.jfif', '2021-08-12 16:31:49', '2021-08-19 13:37:20'),
(1100, 1, 198, 8.00, 'backend/images/products/1708529084629241.jfif', '2021-08-12 16:32:05', '2021-08-19 13:38:26'),
(1101, 1, 198, 8.00, 'backend/images/products/1708529161785621.png', '2021-08-12 16:32:25', '2021-08-19 13:39:40'),
(1102, 1, 185, 10.00, 'backend/images/products/1708506956447130.jfif', '2021-08-12 16:33:35', '2021-08-19 07:46:43'),
(1103, 1, 185, 10.00, 'backend/images/products/1708506993598153.png', '2021-08-12 16:33:56', '2021-08-19 07:47:19'),
(1104, 1, 185, 10.00, 'backend/images/products/1708507016359600.jfif', '2021-08-12 16:34:10', '2021-08-19 07:47:40'),
(1105, 1, 185, 12.00, 'backend/images/products/1708507175240342.jfif', '2021-08-12 16:34:27', '2021-08-19 07:50:12'),
(1106, 1, 185, 10.00, 'backend/images/products/1708507330695229.jfif', '2021-08-12 16:34:40', '2021-08-19 07:52:40'),
(1107, 1, 186, 10.00, 'backend/images/products/1708507406039447.png', '2021-08-12 16:35:11', '2021-08-19 07:53:52'),
(1108, 1, 186, 14.00, 'backend/images/products/1708507457270597.jfif', '2021-08-12 16:35:22', '2021-08-19 07:54:41'),
(1109, 1, 186, 10.00, 'backend/images/products/1708507568098728.png', '2021-08-12 16:35:30', '2021-08-19 07:56:27'),
(1110, 1, 186, 14.00, 'backend/images/products/1708507620971501.jfif', '2021-08-12 16:36:01', '2021-08-19 07:57:17'),
(1111, 1, 187, 15.00, 'backend/images/products/1708507731479278.jfif', '2021-08-12 16:36:32', '2021-08-19 07:59:02'),
(1112, 1, 187, 15.00, 'backend/images/products/1708529499866212.jfif', '2021-08-12 16:36:47', '2021-08-19 13:45:02'),
(1113, 1, 187, 15.00, 'backend/images/products/1708508071400849.jfif', '2021-08-12 16:36:58', '2021-08-19 08:04:27'),
(1114, 1, 187, 8.00, 'backend/images/products/1708529566673788.jfif', '2021-08-12 16:37:19', '2021-08-19 13:46:06'),
(1115, 1, 187, 8.00, 'backend/images/products/1708529706838468.jfif', '2021-08-12 16:37:35', '2021-08-19 13:48:20'),
(1116, 1, 199, 16.00, 'backend/images/products/1708529792784743.png', '2021-08-12 16:44:43', '2021-08-19 13:49:42'),
(1117, 1, 199, 10.00, 'backend/images/products/1708529858275223.png', '2021-08-12 16:45:02', '2021-08-19 13:50:44'),
(1118, 1, 199, 10.00, 'backend/images/products/1708529923899668.jfif', '2021-08-12 16:45:28', '2021-08-19 13:51:47'),
(1119, 1, 200, 12.00, 'backend/images/products/1708506638679145.jfif', '2021-08-12 16:45:46', '2021-08-19 07:41:40'),
(1120, 1, 200, 12.00, 'backend/images/products/1708506666242780.jfif', '2021-08-12 16:46:04', '2021-08-19 07:42:07'),
(1121, 1, 200, 11.00, 'backend/images/products/1708506795162748.png', '2021-08-12 16:46:21', '2021-08-19 07:44:10'),
(1122, 1, 200, 11.00, 'backend/images/products/1708506820884909.jfif', '2021-08-12 16:46:39', '2021-08-19 07:44:34'),
(1123, 1, 201, 9.00, 'backend/images/products/1708530118049400.jfif', '2021-08-12 16:47:00', '2021-08-19 13:54:52'),
(1124, 1, 201, 9.00, 'backend/images/products/1708530170734503.jfif', '2021-08-12 16:47:15', '2021-08-19 13:55:42'),
(1125, 1, 201, 9.00, 'backend/images/products/1708530226270004.png', '2021-08-12 16:47:31', '2021-08-19 13:56:35'),
(1126, 1, 201, 14.00, 'backend/images/products/1708530370643306.jfif', '2021-08-12 16:47:49', '2021-08-19 13:58:53'),
(1127, 1, 201, 9.00, 'backend/images/products/1708530482358420.jfif', '2021-08-12 16:48:04', '2021-08-19 14:00:39'),
(1128, 1, 202, 12.00, 'backend/images/products/1708530554480498.png', '2021-08-12 16:48:24', '2021-08-19 14:01:48'),
(1129, 1, 202, 28.00, 'backend/images/products/1708530625180520.png', '2021-08-12 16:48:38', '2021-08-19 14:02:56'),
(1130, 1, 202, 20.00, 'backend/images/products/1708530698114621.png', '2021-08-12 16:49:05', '2021-08-19 14:04:05'),
(1131, 1, 202, 24.00, 'backend/images/products/1708530770453907.png', '2021-08-12 16:49:31', '2021-08-19 14:05:14'),
(1132, 1, 202, 28.00, 'backend/images/products/1708531432053064.jfif', '2021-08-12 16:49:53', '2021-08-19 14:15:45'),
(1133, 1, 202, 20.00, '', '2021-08-12 16:50:34', NULL),
(1134, 1, 202, 20.00, '', '2021-08-12 16:52:16', NULL),
(1135, 1, 202, 7.00, '', '2021-08-12 16:52:37', NULL),
(1136, 1, 202, 10.00, '', '2021-08-12 16:52:54', NULL),
(1137, 1, 202, 55.00, '', '2021-08-12 16:53:50', NULL),
(1138, 1, 202, 9.00, '', '2021-08-12 16:54:19', NULL),
(1139, 1, 202, 9.00, '', '2021-08-12 16:54:33', NULL),
(1140, 1, 202, 7.00, '', '2021-08-12 16:54:51', NULL),
(1141, 1, 202, 7.00, '', '2021-08-12 16:55:06', NULL),
(1142, 1, 202, 7.00, '', '2021-08-12 16:55:26', NULL),
(1143, 1, 203, 18.00, '', '2021-08-12 16:55:50', NULL),
(1144, 1, 203, 20.00, '', '2021-08-12 16:56:36', NULL),
(1145, 1, 204, 10.00, '', '2021-08-12 16:57:13', NULL),
(1146, 1, 204, 19.00, '', '2021-08-12 16:57:50', NULL),
(1147, 1, 204, 8.00, '', '2021-08-12 16:58:15', NULL),
(1148, 1, 204, 15.00, '', '2021-08-12 16:58:43', NULL),
(1149, 1, 205, 230.00, '', '2021-08-12 16:59:27', NULL),
(1150, 1, 205, 250.00, '', '2021-08-12 16:59:45', NULL),
(1151, 1, 205, 230.00, '', '2021-08-12 17:00:07', NULL),
(1152, 1, 205, 250.00, '', '2021-08-12 17:00:25', NULL),
(1153, 1, 206, 20.00, '', '2021-08-12 17:00:50', NULL),
(1154, 1, 206, 25.00, '', '2021-08-12 17:01:15', NULL),
(1155, 1, 206, 16.00, '', '2021-08-12 17:01:45', NULL),
(1156, 1, 206, 12.00, '', '2021-08-12 17:02:06', NULL),
(1157, 1, 206, 17.00, '', '2021-08-12 17:05:15', NULL),
(1158, 1, 206, 18.00, '', '2021-08-12 17:05:53', NULL),
(1159, 1, 206, 21.00, '', '2021-08-12 17:06:36', NULL),
(1160, 1, 206, 19.00, '', '2021-08-12 17:06:53', NULL),
(1161, 1, 206, 14.00, '', '2021-08-12 17:07:11', NULL),
(1162, 1, 207, 6.00, '', '2021-08-12 17:07:29', NULL),
(1163, 1, 207, 10.00, '', '2021-08-12 17:07:46', NULL),
(1164, 1, 207, 10.00, '', '2021-08-12 17:08:00', NULL),
(1165, 1, 208, 3.00, '', '2021-08-12 17:08:37', NULL),
(1166, 1, 208, 4.00, '', '2021-08-12 17:08:55', NULL),
(1167, 1, 208, 5.00, '', '2021-08-12 17:09:09', NULL),
(1168, 1, 208, 5.00, '', '2021-08-12 17:09:29', NULL),
(1169, 1, 208, 5.00, '', '2021-08-12 17:09:48', NULL),
(1170, 1, 208, 6.00, '', '2021-08-12 17:10:06', '2021-08-12 17:10:56'),
(1171, 1, 208, 7.00, '', '2021-08-12 17:11:10', NULL),
(1172, 1, 208, 10.00, '', '2021-08-12 17:11:25', NULL),
(1173, 1, 208, 4.00, '', '2021-08-12 17:11:45', NULL),
(1174, 1, 208, 10.00, '', '2021-08-12 17:12:02', NULL),
(1175, 1, 208, 12.00, '', '2021-08-12 17:12:15', NULL),
(1176, 1, 209, 3.00, '', '2021-08-12 17:13:03', NULL),
(1177, 1, 209, 4.00, '', '2021-08-12 17:13:16', NULL),
(1178, 1, 209, 8.00, '', '2021-08-12 17:13:36', NULL),
(1179, 1, 209, 10.00, '', '2021-08-12 17:13:50', NULL),
(1180, 1, 209, 8.00, '', '2021-08-12 17:14:07', NULL),
(1181, 1, 209, 10.00, '', '2021-08-12 17:14:20', NULL),
(1182, 1, 210, 24.00, 'backend/images/products/1708531573400288.jfif', '2021-08-12 17:16:03', '2021-08-19 14:18:00'),
(1183, 1, 210, 30.00, 'backend/images/products/1708531666457517.png', '2021-08-12 17:16:25', '2021-08-19 14:19:29');

-- --------------------------------------------------------

--
-- Table structure for table `product_translations`
--

CREATE TABLE `product_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `full_text` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'web', '2021-08-05 14:49:35', '2021-08-05 14:49:35'),
(2, 'Saler', 'web', '2021-08-05 14:53:34', '2021-08-05 14:53:34'),
(3, 'test1', 'web', '2021-09-16 16:07:05', '2021-09-16 16:35:48'),
(4, 'Manager', 'web', '2021-09-16 22:45:13', '2021-09-16 22:45:13');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 1),
(2, 2),
(2, 3),
(3, 1),
(3, 3),
(4, 1),
(4, 3),
(5, 1),
(5, 2),
(5, 4),
(6, 1),
(6, 2),
(6, 4),
(7, 1),
(7, 4),
(8, 1),
(8, 4);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('cieI447Ov8WwyMUQyVV93CKRtoyfimTnBySmZGRc', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 Edg/92.0.902.67', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoiaEIyOUdBQ2NHSlpvQmJ5U2d5UmF3MXhtanJ4V1FsMDh3NzNvd1lpeiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbi9kYXNoYm9hcmQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjEwOiJ3aGxhbmd1YWdlIjtzOjI6ImthIjtzOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTAkVjZselMxZE1EbTZXd2RhQXkyNTJPZXhQeXlWM20yUlpkNzlSTHBtYWE3SEtaLnNyQ05QaGUiO3M6MjE6InBhc3N3b3JkX2hhc2hfc2FuY3R1bSI7czo2MDoiJDJ5JDEwJFY2bHpTMWRNRG02V3dkYUF5MjUyT2V4UHl5VjNtMlJaZDc5UkxwbWFhN0hLWi5zckNOUGhlIjt9', 1628633403),
('cMUkv9dDCozgeqOB1sZFRxYIDtG1mRoWo3ha4BWY', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 Edg/92.0.902.67', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRGY5OFM3YURudmpvV3g5U2xSVnpIb0ZkenBWNXd4Skh5TUFrWFpiYyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1628632472),
('DIF5OVUThHXVt6K8OaHA7vUSNWnrPOgcvOPu4CPH', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 Edg/92.0.902.67', 'YTo4OntzOjY6Il90b2tlbiI7czo0MDoiMGJoVU1xWVhGMm85Vk9vdTQ4U1hPaHRMS0hhN1oyRU1aNFVLMlh2YSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9ob21lIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2MDoiJDJ5JDEwJFY2bHpTMWRNRG02V3dkYUF5MjUyT2V4UHl5VjNtMlJaZDc5UkxwbWFhN0hLWi5zckNOUGhlIjtzOjIxOiJwYXNzd29yZF9oYXNoX3NhbmN0dW0iO3M6NjA6IiQyeSQxMCRWNmx6UzFkTURtNld3ZGFBeTI1Mk9leFB5eVYzbTJSWmQ3OVJMcG1hYTdIS1ouc3JDTlBoZSI7czoxMDoid2hsYW5ndWFnZSI7czoyOiJlbiI7czo4OiJ3ZFVzZXJJZCI7czoxNjoiN0poSzRGemtJM25lbmFZWCI7fQ==', 1628608325);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `background_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `name`, `title`, `description`, `logo`, `background_image`, `created_at`, `updated_at`) VALUES
(14, 'Best Western Premier', 'ტესტ ტესტ', 'Best Western Premier QR MENU&nbsp;', NULL, NULL, '2021-08-01 10:42:10', '2021-09-10 19:10:24');

-- --------------------------------------------------------

--
-- Table structure for table `users`
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
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(3, 'Davit Gakhokia', 'admin@kerdzebi.ge', NULL, '$2y$10$cW2xzMSsOEr3iUDD.ESLp.ItxfVir0FHOjFtV2ZZn/pvFHDtzDDXq', NULL, '2021-08-10 20:05:45', '2021-08-10 20:06:49'),
(5, 'BWP Admin', 'bwp@kerdzebi.ge', NULL, '$2y$10$Q/jnLTvGyG9KlgU2CGeMVeSu0WQAA41S.kQju7inWjbp73PBM16cu', 'y0tbQVAOBsIdjQTzNAXS7TgYOdApnejjxxxgUsLiogUiDrdHKcypLeOsPqSO', '2021-08-13 13:43:20', '2021-08-13 13:43:20'),
(6, 'demo user', 'demo@kerdzebi.ge', NULL, '$2y$10$I3fzzsnyB6ycot4V//nsE.ZGBAj505.AQt0EgB1DRefhwEvB5vZk.', NULL, '2021-09-16 16:06:07', '2021-09-16 22:44:28'),
(7, 'Guest', 'guest@diem.ge', NULL, '$2y$10$GO.Qmfv0CoklCfxPmz83teB9Xol.Bx7NgRiCCHecG56SwQo0bSnRu', NULL, '2021-09-17 13:50:59', '2021-09-17 13:50:59');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_translations`
--
ALTER TABLE `product_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_translations_product_id_locale_unique` (`product_id`,`locale`) USING BTREE,
  ADD KEY `product_translations_locale_index` (`locale`) USING BTREE;

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=212;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1184;

--
-- AUTO_INCREMENT for table `product_translations`
--
ALTER TABLE `product_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
