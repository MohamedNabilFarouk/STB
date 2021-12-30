-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 30, 2021 at 05:51 PM
-- Server version: 5.7.36
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `space_stb`
--

-- --------------------------------------------------------

--
-- Table structure for table `academies`
--

CREATE TABLE `academies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_ar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `des_en` text COLLATE utf8mb4_unicode_ci,
  `des_ar` text COLLATE utf8mb4_unicode_ci,
  `link` text COLLATE utf8mb4_unicode_ci,
  `price` double DEFAULT NULL,
  `price_coins` double DEFAULT NULL,
  `category` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '''educational'' or ''strategy'' 	',
  `level` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `academies`
--

INSERT INTO `academies` (`id`, `title_en`, `title_ar`, `des_en`, `des_ar`, `link`, `price`, `price_coins`, `category`, `level`, `created_at`, `updated_at`) VALUES
(1, 'Academy 1', 'الاكاديميه 1', 'desc 1', 'تقاصيل 1', 'https://www.youtube.com/watch?v=xcJtL7QggTI', 300, 600, 'strategy', 2, '2021-12-19 11:47:20', '2021-12-20 15:26:19'),
(3, 'Academy 2', 'الاكاديميه2', 'asdasd', 'asdasd', 'https://www.youtube.com/watch?v=xcJtL7QggTI', 20000, 50000, 'educational', 3, '2021-12-20 15:27:23', '2021-12-20 15:27:23'),
(4, 'Academy 3', 'الاكاديميه 3', 'desc 3', 'تقاصيل 3', 'https://www.youtube.com/watch?v=xcJtL7QggTI', 300, 600, 'strategy', 2, '2021-12-19 11:47:20', '2021-12-20 15:26:19'),
(5, 'Academy 4', 'الاكاديميه4', 'asdasd', 'asdasd', 'https://www.youtube.com/watch?v=xcJtL7QggTI', 20000, 50000, 'educational', 3, '2021-12-20 15:27:23', '2021-12-20 15:27:23');

-- --------------------------------------------------------

--
-- Table structure for table `affiliates`
--

CREATE TABLE `affiliates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `points` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `affiliates`
--

INSERT INTO `affiliates` (`id`, `user_id`, `points`, `code`, `created_at`, `updated_at`) VALUES
(1, '1', '200', 'j66r00rQJe', '2021-12-13 14:43:23', '2021-12-13 15:06:35'),
(2, '64', '100', 'tZ0T7xt4yP', '2021-12-13 15:06:35', '2021-12-13 15:06:35');

-- --------------------------------------------------------

--
-- Table structure for table `currency`
--

CREATE TABLE `currency` (
  `id` int(11) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `code` varchar(20) DEFAULT NULL,
  `symbol` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `currency`
--

INSERT INTO `currency` (`id`, `name`, `code`, `symbol`) VALUES
(2, 'EURUSD', 'EURUSD', '$'),
(58, 'GBPUSD', 'GBPUSD', 'лв'),
(90, 'USDCAD', 'USDCAD', 'Дин.'),
(93, 'GOLD', 'GOLD', '$'),
(115, 'OIL', 'OIL', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `levels`
--

CREATE TABLE `levels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_ar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double NOT NULL,
  `price_coins` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `levels`
--

INSERT INTO `levels` (`id`, `title_en`, `title_ar`, `price`, `price_coins`, `created_at`, `updated_at`) VALUES
(1, 'Level 1', 'مستوي 1', 0, 0, '2021-12-16 15:33:11', '2021-12-20 14:58:04'),
(2, 'Level 2', 'مستوي 2', 500, 700, '2021-12-19 11:05:24', '2021-12-20 14:57:57'),
(3, 'Level 3', 'مستوي 3', 750, 1000, '2021-12-19 11:05:57', '2021-12-20 14:57:46'),
(4, 'Level 4', 'مستوي 4', 1000, 2000, '2021-12-19 11:06:16', '2021-12-20 14:57:32');

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
(4, '2021_04_29_081419_create_categories_table', 1),
(5, '2021_04_29_081938_create_products_table', 1),
(6, '2021_04_29_082642_create_banners_table', 1),
(7, '2021_05_16_114802_create_branches_table', 1),
(8, '2021_05_16_131849_create_delivery_boys_table', 1),
(9, '2021_05_26_120417_create_vouchers_table', 1),
(10, '2021_05_26_144113_create_discounts_table', 1),
(11, '2021_05_27_131851_create_orders_table', 1),
(12, '2021_05_30_111250_create_order_items_table', 1),
(13, '2021_05_30_145650_laratrust_setup_tables', 1),
(14, '2021_07_06_092905_create_packages_table', 1),
(15, '2021_07_06_101943_create_package_bookings_table', 1),
(16, '2021_07_12_142421_create_site_settings_table', 1),
(17, '2021_07_12_150141_create_social_settings_table', 1),
(18, '2021_07_13_130856_create_sliders_table', 1),
(19, '2021_07_14_092410_create_package_booking_extra_items_table', 1),
(20, '2021_07_14_100614_create_wishlists_table', 1),
(21, '2021_08_03_093902_create_providers_table', 2),
(22, '2021_09_06_093050_create_main_categories_table', 3),
(23, '2021_08_03_144957_create_table__reservations_table', 4),
(24, '2021_08_09_130834_create_regions_table', 4),
(25, '2021_09_06_093223_create_resturants_table', 4),
(26, '2021_12_07_141457_create_recommendations_table', 4),
(27, '2021_12_08_120932_create_order_recommendations_table', 5),
(28, '2021_12_13_134223_create_affiliates_table', 6),
(29, '2021_12_16_114053_create_levels_table', 7),
(30, '2021_12_16_114608_create_academies_table', 8);

-- --------------------------------------------------------

--
-- Table structure for table `order_recommendations`
--

CREATE TABLE `order_recommendations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `service` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'recommendation , level , vip',
  `service_id` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `type` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_recommendations`
--

INSERT INTO `order_recommendations` (`id`, `user_id`, `service`, `service_id`, `total`, `type`, `created_at`, `updated_at`) VALUES
(1, 64, 'recommendation', 2, 100, 'Coins', '2021-12-09 09:13:29', '2021-12-09 09:13:29'),
(4, 64, 'recommendation', 3, 100, 'Coins', '2021-12-09 09:13:29', '2021-12-09 09:13:29'),
(5, 64, 'recommendation', 3, 100, 'Coins', '2021-12-09 09:13:29', '2021-12-09 09:13:29'),
(6, 64, 'recommendation', 2, 64, 'Coins', '2021-12-22 14:48:46', '2021-12-22 14:48:46'),
(7, 64, 'recommendation', 2, 64, 'Mony', '2021-12-22 14:49:12', '2021-12-22 14:49:12'),
(8, 65, 'recommendation', 2, 65, 'Mony', '2021-12-22 15:19:40', '2021-12-22 15:19:40'),
(9, 65, 'recommendation', 2, 65, 'Mony', '2021-12-22 15:20:02', '2021-12-22 15:20:02'),
(10, 65, 'recommendation', 2, 65, 'Coins', '2021-12-22 15:20:11', '2021-12-22 15:20:11'),
(12, 65, 'level', 4, 2000, 'Coins', '2021-12-23 13:19:21', '2021-12-23 13:19:21'),
(13, 78, 'recommendation', 4, 300, 'Coins', '2021-12-28 12:32:15', '2021-12-28 12:32:15'),
(14, 78, 'recommendation', 4, 300, 'Coins', '2021-12-28 12:37:44', '2021-12-28 12:37:44'),
(15, 78, 'recommendation', 4, 300, 'Coins', '2021-12-28 13:19:00', '2021-12-28 13:19:00'),
(16, 66, 'recommendation', 4, 100, 'Coins', '2021-12-29 09:11:05', '2021-12-29 09:11:05'),
(17, 66, 'recommendation', 4, 100, 'Coins', '2021-12-29 09:13:07', '2021-12-29 09:13:07'),
(18, 66, 'level', 2, 700, 'Coins', '2021-12-29 09:21:48', '2021-12-29 09:21:48'),
(19, 66, 'recommendation', 4, 100, 'Coins', '2021-12-29 09:22:42', '2021-12-29 09:22:42'),
(20, 66, 'recommendation', 4, 100, 'Coins', '2021-12-29 10:00:37', '2021-12-29 10:00:37'),
(21, 66, 'recommendation', 4, 100, 'Coins', '2021-12-29 10:17:24', '2021-12-29 10:17:24'),
(22, 66, 'recommendation', 4, 100, 'Coins', '2021-12-29 10:17:33', '2021-12-29 10:17:33'),
(23, 66, 'recommendation', 6, 299, 'Coins', '2021-12-30 13:08:10', '2021-12-30 13:08:10'),
(24, 66, 'recommendation', 7, 10, 'Coins', '2021-12-30 13:12:11', '2021-12-30 13:12:11'),
(25, 66, 'academy', 1, 600, 'Coins', '2021-12-30 13:30:41', '2021-12-30 13:30:41');

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
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permission_user`
--

CREATE TABLE `permission_user` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `providers`
--

CREATE TABLE `providers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `provider_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `recommendations`
--

CREATE TABLE `recommendations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_ar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `des_en` text COLLATE utf8mb4_unicode_ci,
  `des_ar` text COLLATE utf8mb4_unicode_ci,
  `price` double DEFAULT NULL,
  `price_coins` double DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `opening_time` timestamp NULL DEFAULT NULL,
  `open_price` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `take_profit1` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `take_profit2` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `take_profit3` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stop_loss` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trade_result` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trade_probability` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_frame` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci,
  `profit_loss` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(4) DEFAULT NULL,
  `show` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `recommendations`
--

INSERT INTO `recommendations` (`id`, `title_en`, `title_ar`, `des_en`, `des_ar`, `price`, `price_coins`, `image`, `action`, `status`, `opening_time`, `open_price`, `take_profit1`, `take_profit2`, `take_profit3`, `stop_loss`, `trade_result`, `trade_probability`, `time_frame`, `comment`, `profit_loss`, `active`, `show`, `created_at`, `updated_at`) VALUES
(2, 'EURUSD', 'توصية 1', 'EURUSD', 'يورو دولار', 100, 100, 'qLprRCT6fp62LlgjNNEFrb3p4FPiTDeB2wJsFvcy.jpg', 'SELL', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-07 15:40:16', '2021-12-30 05:12:01'),
(3, 'GBPUSD', 'توصية 2', 'GBPUSD', 'الباوند دولار', 100, 100, 'TGjLzef3QLd98hex5WAYpLXGuWOEIeJERryWE1RB.jpg', 'SELL', 'Closed', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-08 11:14:49', '2021-12-30 05:11:38'),
(4, 'rcom 3', 'توصية 3', 'adasd', 'asdasd', 100, 300, 'EGYX0J1MUq7mAxQfMw987f0vBpd06BVkWYqiAdog.jpg', 'SELL', 'Active', NULL, NULL, 'asd', 'asd', 'asd', 'asd', 'asd', 'asd', 'asdasd', 'asdasd', 'asd', 1, NULL, '2021-12-08 11:44:53', '2021-12-28 09:48:49'),
(5, 'EURUSD', 'asdasd', 'asdasdasd', 'asdasd', 5000000, 30000000, 'reTXBCpb5HJezQpL7ZLxKsRJ9r5tn8iJTAF60dIN.jpg', 'SELL', 'Closed', NULL, NULL, '10.33', '50', '30.66', 'asd', 'asd', 'asd', 'hh', 'asdasdasdasd  asd asd a', 'asd', NULL, 1, '2021-12-26 11:59:30', '2021-12-30 05:13:09'),
(6, 'Rand', NULL, 'asdasd', 'asdasd', 100, 299, NULL, 'SELL', 'Active', NULL, NULL, 'asdasd', 'asdasd', 'asdasd', 'asdasd', 'asdasd', 'asd', 'asdads', 'asdasd', 'asdasd', 1, 1, '2021-12-28 10:32:50', '2021-12-28 10:33:10'),
(7, 'EURUSD', NULL, 'asdsd', 'asdasd', 112000, 10, NULL, 'SELL', 'Closed', NULL, NULL, 'asdasd', 'asdasd', 'asd', 'asdasd', 'asdasd', 'asdas', 'asdas', 'asd', 'asddas', NULL, 1, '2021-12-28 10:37:31', '2021-12-30 05:14:03');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Admin', NULL, '2021-07-14 08:07:54', '2021-07-14 08:07:54'),
(5, 'customer', 'Customer', NULL, '2021-07-14 08:07:54', '2021-07-14 08:07:54');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`role_id`, `user_id`, `user_type`) VALUES
(1, 1, 'App\\User'),
(5, 64, 'App\\User'),
(5, 65, 'App\\User'),
(5, 66, 'App\\User'),
(5, 67, 'App\\User'),
(5, 68, 'App\\User'),
(5, 69, 'App\\User'),
(5, 70, 'App\\User'),
(5, 73, 'App\\User'),
(5, 74, 'App\\User'),
(5, 75, 'App\\User'),
(5, 76, 'App\\User'),
(5, 77, 'App\\User'),
(5, 78, 'App\\User'),
(5, 79, 'App\\User');

-- --------------------------------------------------------

--
-- Table structure for table `site_settings`
--

CREATE TABLE `site_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hot_line` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.png',
  `favicon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'favicon.png',
  `longitude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_ar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `welcome_phrase_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `welcome_phrase_ar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_ar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city_ar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_ar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title_ar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description_ar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keyword_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keyword_ar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `site_settings`
--

INSERT INTO `site_settings` (`id`, `phone`, `hot_line`, `logo`, `favicon`, `longitude`, `latitude`, `title_en`, `title_ar`, `welcome_phrase_en`, `welcome_phrase_ar`, `address_en`, `address_ar`, `city_en`, `city_ar`, `country_en`, `country_ar`, `meta_title_en`, `meta_title_ar`, `meta_description_en`, `meta_description_ar`, `meta_keyword_en`, `meta_keyword_ar`, `created_at`, `updated_at`) VALUES
(1, '01XXXXXXXXX', '01099339393', 'logo.png', 'https://sevenfoods.app/images/site/https://sevenfoods.app/images/site/https://sevenfoods.app/images/site/https://sevenfoods.app/images/site/favicon.png', NULL, NULL, 'test', 'test_ar', 'test', 'test_ar', 'test', 'test_ar', 'test', 'test_ar', 'test', 'test_ar', 'test', 'test_ar', 'test', 'test_ar', 'test', 'test_ar', '2021-07-14 08:07:54', '2021-09-05 17:08:01');

-- --------------------------------------------------------

--
-- Table structure for table `social_settings`
--

CREATE TABLE `social_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `social_settings`
--

INSERT INTO `social_settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 'facebook', NULL, '2021-07-14 08:07:54', '2021-07-14 08:07:54'),
(2, 'twitter', NULL, '2021-07-14 08:07:55', '2021-07-14 08:07:55'),
(3, 'whatsApp', NULL, '2021-07-14 08:07:55', '2021-07-14 08:07:55'),
(4, 'linkedIn', NULL, '2021-07-14 08:07:55', '2021-07-14 08:07:55'),
(5, 'pinterest', NULL, '2021-07-14 08:07:55', '2021-07-14 08:07:55'),
(6, 'instagram', NULL, '2021-07-14 08:07:55', '2021-07-14 08:07:55'),
(7, 'youtube', NULL, '2021-07-14 08:07:55', '2021-07-14 08:07:55');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'customer',
  `balance` double DEFAULT '0',
  `code` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level_id` int(11) NOT NULL DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `vip` tinyint(1) NOT NULL DEFAULT '0',
  `from` timestamp NULL DEFAULT NULL,
  `to` timestamp NULL DEFAULT NULL,
  `fcm_token` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `phone`, `password`, `role`, `balance`, `code`, `level_id`, `remember_token`, `address`, `vip`, `from`, `to`, `fcm_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@app.com', '2021-07-14 08:07:55', '01011941903', '$2y$10$BFw5GcloLNnHgMmWMaSBIur6zpdmzhAG/oWYrMpO8MHmqXZCXx2ke', 'admin', 600, 'TX0DKlqllB', 1, 'EySe6nE7VqwSwSOSffLdzE1hkCsU3XxEhGkaE26vlUpLzzPrVtqWQq1xWnl5', NULL, 0, NULL, NULL, 'e9nM4WrYTkGuT1hG4eBJgL:APA91bHvdn3HCWXyxTzkJvOmAywyVI-tYA7hzaOIdTS4Q9DYivkGDpB9J4sYKVp8YdVE0d2CnV7cveuxXXKOaRE1EjG7xQUZJr_5VT74O2sbUTHyczKYBI_XoXY4rGa0c0O_ZAGqFcVc', '2021-07-14 08:07:55', '2021-12-26 12:19:20'),
(64, 'customer', 'customer@app.com', NULL, '09876543210', '$2y$10$USxw19DyCHa76YXJkG3nxefRAQVYETO7uRcta5iQBaMofaNHJZEfu', 'customer', 150, 'V9nxmOGWBY', 1, NULL, NULL, 0, NULL, NULL, NULL, '2021-12-07 11:33:30', '2021-12-22 14:48:46'),
(65, 'Billy', 'billy8@billy.com', NULL, '0222222222222', '$2y$10$BMSY.dyfiKniiFc8NRugs.zyMz5NKymnpRd8GYWr37mxaCgNrfAQa', 'customer', 15000, 'uDj5hTlfFS', 4, NULL, NULL, 1, '2021-12-22 15:49:24', '2021-12-30 15:49:24', NULL, '2021-12-07 14:02:06', '2021-12-23 13:19:21'),
(66, 'Mohamed', 'mo@gm.com', NULL, '01234567890', '$2y$10$gvyVq5goXAfcSb5Ug6CpGeDbksfAN/9BrQsbLrVsqKqj2/m6WLF/2', 'customer', 191, NULL, 2, NULL, NULL, 0, '2021-12-28 13:56:33', '2022-01-27 13:56:33', NULL, '2021-12-26 07:35:32', '2021-12-30 13:30:41'),
(67, 'mosalah', 'mo2@gm.com', NULL, '01234567891', '$2y$10$YiCO94zVY/af3mwV4eogQ.zIVco92HVsVjcpXMotC59r6ZJN4VORm', 'customer', 0, NULL, 1, NULL, NULL, 1, '2021-12-29 12:55:46', '2022-03-01 12:55:46', NULL, '2021-12-26 12:37:24', '2021-12-29 12:55:46'),
(73, 'Billy', 'billy322@billy.com', NULL, '02222234', '$2y$10$vb5cTb2benYYK/VoNwW0R.ojmuVL.xX9UpT0rfnZ5SbBD4fpbu346', 'customer', 100, '1crOespW6C', 1, NULL, NULL, 0, NULL, NULL, NULL, '2021-12-26 13:17:04', '2021-12-26 13:54:32'),
(74, 'mo3', 'mo3@gm.com', NULL, '01234567892', '$2y$10$GppRxfOD0OXwc9SBf0oS4.Ferbe965KQ4dwEvJpP8jIT/xCgIJmPm', 'customer', 0, 'bOliz90eCV', 1, NULL, NULL, 0, NULL, NULL, NULL, '2021-12-26 13:21:37', '2021-12-26 13:21:37'),
(76, 'Billy testts', 'test@billy.com', NULL, '021235555', '$2y$10$P0IFepTcdaTeSiZ1TWbqD.AoFJhIPkpe2nGNKFdgJ2/8rZmuHrllC', 'customer', 100, 'qubLGcC1Yr', 1, NULL, NULL, 0, NULL, NULL, NULL, '2021-12-26 13:54:32', '2021-12-26 13:54:32'),
(77, 'mohamed', 'mmmm@gm.com', NULL, '01056489644', '$2y$10$DOY92NksuxA7OUCfymJo8.tfOlJNaGcj9RxYIdv2/4kN1z89OCni.', 'customer', 0, 'tIbHYu4sZ5', 1, NULL, NULL, 0, NULL, NULL, NULL, '2021-12-26 14:06:21', '2021-12-26 14:06:21'),
(78, 'mosalah', 'mo6@gm.com', NULL, '01234567898', '$2y$10$egiRFMgw0k3zOajp6S5JJuk8.6NVXeuc0Ea6IgBFoQ0a.Hs9q9EM2', 'customer', 150, 'IUj63UtkEy', 1, NULL, NULL, 1, '2021-12-28 13:42:52', '2022-01-27 13:42:52', NULL, '2021-12-26 14:08:48', '2021-12-28 13:42:52'),
(79, 'rrr', 'rrr@gm.com', NULL, '01478523691', '$2y$10$AnnOkzRZgNny40tf8KkqFeIEG.BmT6t/ldm3XR7HIGaHUgtzwWrmq', 'customer', 200, 'Q1Q4BkuWgx', 1, NULL, NULL, 0, NULL, NULL, NULL, '2021-12-27 09:20:38', '2021-12-27 09:34:15');

-- --------------------------------------------------------

--
-- Table structure for table `vips`
--

CREATE TABLE `vips` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_ar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `des_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `des_ar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `months_no` int(11) NOT NULL,
  `price` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vips`
--

INSERT INTO `vips` (`id`, `title_en`, `title_ar`, `des_en`, `des_ar`, `months_no`, `price`, `created_at`, `updated_at`) VALUES
(1, 'Vip 1', 'مميز 1', 'لمدة شهر', 'For 1 Month', 2, 500, '2021-12-29 10:52:29', '2021-12-29 13:32:23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `academies`
--
ALTER TABLE `academies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `affiliates`
--
ALTER TABLE `affiliates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currency`
--
ALTER TABLE `currency`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `levels`
--
ALTER TABLE `levels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_recommendations`
--
ALTER TABLE `order_recommendations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD PRIMARY KEY (`user_id`,`permission_id`,`user_type`),
  ADD KEY `permission_user_permission_id_foreign` (`permission_id`);

--
-- Indexes for table `providers`
--
ALTER TABLE `providers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `recommendations`
--
ALTER TABLE `recommendations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`user_id`,`role_id`,`user_type`),
  ADD KEY `role_user_role_id_foreign` (`role_id`);

--
-- Indexes for table `site_settings`
--
ALTER TABLE `site_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_settings`
--
ALTER TABLE `social_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vips`
--
ALTER TABLE `vips`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `academies`
--
ALTER TABLE `academies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `affiliates`
--
ALTER TABLE `affiliates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `currency`
--
ALTER TABLE `currency`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `levels`
--
ALTER TABLE `levels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `order_recommendations`
--
ALTER TABLE `order_recommendations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `providers`
--
ALTER TABLE `providers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `recommendations`
--
ALTER TABLE `recommendations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `site_settings`
--
ALTER TABLE `site_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `social_settings`
--
ALTER TABLE `social_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `vips`
--
ALTER TABLE `vips`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD CONSTRAINT `permission_user_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
