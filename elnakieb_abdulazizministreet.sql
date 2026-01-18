-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 18, 2026 at 08:31 AM
-- Server version: 11.4.9-MariaDB-cll-lve-log
-- PHP Version: 8.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `elnakieb_abdulazizministreet`
--

-- --------------------------------------------------------

--
-- Table structure for table `activations`
--

CREATE TABLE `activations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(120) NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT 0,
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activations`
--

INSERT INTO `activations` (`id`, `user_id`, `code`, `completed`, `completed_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'tNZxWYzzBlIFQScFNoyIaJxCwryh6nXH', 1, '2026-01-06 00:55:51', '2026-01-06 00:55:51', '2026-01-06 00:55:51'),
(2, 2, 'RdJN0b6MV47mi8OxxM38nWUGQFL69DdY', 1, '2026-01-18 20:26:48', '2026-01-18 20:26:48', '2026-01-18 20:26:48'),
(3, 3, 'nnTifhR8ua3lKRtB5ww4jVT4Uw0xkyaQ', 1, '2026-01-18 20:28:13', '2026-01-18 20:28:13', '2026-01-18 20:28:13'),
(4, 4, '7PuHye3j6zhkSNHiC2vUo9jBGqSOFQHV', 1, '2026-01-18 20:30:13', '2026-01-18 20:30:13', '2026-01-18 20:30:13');

-- --------------------------------------------------------

--
-- Table structure for table `admin_notifications`
--

CREATE TABLE `admin_notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `action_label` varchar(191) DEFAULT NULL,
  `action_url` varchar(191) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permission` varchar(191) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ads`
--

CREATE TABLE `ads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `expired_at` datetime DEFAULT NULL,
  `location` varchar(120) DEFAULT NULL,
  `key` varchar(120) NOT NULL,
  `image` varchar(191) DEFAULT NULL,
  `url` varchar(191) DEFAULT NULL,
  `clicked` bigint(20) NOT NULL DEFAULT 0,
  `order` int(11) DEFAULT 0,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `open_in_new_tab` tinyint(1) NOT NULL DEFAULT 1,
  `tablet_image` varchar(191) DEFAULT NULL,
  `mobile_image` varchar(191) DEFAULT NULL,
  `ads_type` varchar(191) DEFAULT NULL,
  `google_adsense_slot_id` varchar(191) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ads`
--

INSERT INTO `ads` (`id`, `name`, `expired_at`, `location`, `key`, `image`, `url`, `clicked`, `order`, `status`, `created_at`, `updated_at`, `open_in_new_tab`, `tablet_image`, `mobile_image`, `ads_type`, `google_adsense_slot_id`) VALUES
(1, 'Everyday Fresh', '2031-01-05 00:00:00', 'not_set', 'IZ6WU8KUALYD', 'promotion/1.png', '/products', 15, 1, 'published', '2026-01-06 00:56:02', '2026-01-06 00:56:02', 1, NULL, NULL, NULL, NULL),
(2, 'Make your Breakfast', '2031-01-05 00:00:00', 'not_set', 'ILSFJVYFGCPZ', 'promotion/2.png', '/products', 14, 2, 'published', '2026-01-06 00:56:02', '2026-01-06 00:56:02', 1, NULL, NULL, NULL, NULL),
(3, 'The best Organic', '2031-01-05 00:00:00', 'not_set', 'ILSDKVYFGXPH', 'promotion/3.png', '/products', 13, 3, 'published', '2026-01-06 00:56:02', '2026-01-06 00:56:02', 1, NULL, NULL, NULL, NULL),
(4, 'Bring nature into your home', '2031-01-05 00:00:00', 'not_set', 'IZ6WU8KUALYG', 'promotion/4.png', '/products', 13, 4, 'published', '2026-01-06 00:56:02', '2026-01-06 00:56:02', 1, NULL, NULL, NULL, NULL),
(5, 'Delivered to your home', '2031-01-05 00:00:00', 'not_set', 'IZ6WU8KUALYH', 'promotion/5.png', '/products', 9, 5, 'published', '2026-01-06 00:56:02', '2026-01-06 00:56:02', 1, NULL, NULL, NULL, NULL),
(6, 'Save 17% on Oganic Juice', '2031-01-05 00:00:00', 'not_set', 'IZ6WU8KUALYI', 'promotion/6.png', '/products', 9, 6, 'published', '2026-01-06 00:56:02', '2026-01-06 00:56:02', 1, NULL, NULL, NULL, NULL),
(7, 'Everyday Fresh & Clean with Our Products', '2031-01-05 00:00:00', 'not_set', 'IZ6WU8KUALYJ', 'promotion/7.png', '/products', 10, 7, 'published', '2026-01-06 00:56:02', '2026-01-06 00:56:02', 1, NULL, NULL, NULL, NULL),
(8, 'The best Organic Products Online', '2031-01-05 00:00:00', 'not_set', 'IZ6WU8KUALYK', 'promotion/8.png', '/products', 9, 8, 'published', '2026-01-06 00:56:02', '2026-01-06 00:56:02', 1, NULL, NULL, NULL, NULL),
(9, 'Everyday Fresh with Our Products', '2031-01-05 00:00:00', 'not_set', 'IZ6WU8KUALYL', 'promotion/9.png', NULL, 0, 9, 'published', '2026-01-06 00:56:02', '2026-01-06 00:56:02', 1, NULL, NULL, NULL, NULL),
(10, '100% guaranteed all Fresh items', '2031-01-05 00:00:00', 'not_set', 'IZ6WU8KUALYM', 'promotion/10.png', NULL, 0, 10, 'published', '2026-01-06 00:56:02', '2026-01-06 00:56:02', 1, NULL, NULL, NULL, NULL),
(11, 'Special grocery sale off this month', '2031-01-05 00:00:00', 'not_set', 'IZ6WU8KUALYN', 'promotion/11.png', NULL, 0, 11, 'published', '2026-01-06 00:56:02', '2026-01-06 00:56:02', 1, NULL, NULL, NULL, NULL),
(12, 'Enjoy 15% OFF for all vegetable and fruit', '2031-01-05 00:00:00', 'not_set', 'IZ6WU8KUALYO', 'promotion/12.png', NULL, 0, 12, 'published', '2026-01-06 00:56:02', '2026-01-06 00:56:02', 1, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ads_translations`
--

CREATE TABLE `ads_translations` (
  `lang_code` varchar(191) NOT NULL,
  `ads_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `image` varchar(191) DEFAULT NULL,
  `url` varchar(191) DEFAULT NULL,
  `tablet_image` varchar(191) DEFAULT NULL,
  `mobile_image` varchar(191) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ads_translations`
--

INSERT INTO `ads_translations` (`lang_code`, `ads_id`, `name`, `image`, `url`, `tablet_image`, `mobile_image`) VALUES
('ar', 1, 'طازج كل يوم', NULL, NULL, NULL, NULL),
('ar', 2, 'اصنع فطورك', NULL, NULL, NULL, NULL),
('ar', 3, 'أفضل المنتجات العضوية', NULL, NULL, NULL, NULL),
('ar', 4, 'أحضر الطبيعة إلى منزلك', NULL, NULL, NULL, NULL),
('ar', 5, 'توصيل إلى منزلك', NULL, NULL, NULL, NULL),
('ar', 6, 'وفر 17% على العصير العضوي', NULL, NULL, NULL, NULL),
('ar', 7, 'طازج ونظيف كل يوم مع منتجاتنا', NULL, NULL, NULL, NULL),
('ar', 8, 'أفضل المنتجات العضوية عبر الإنترنت', NULL, NULL, NULL, NULL),
('ar', 9, 'طازج كل يوم مع منتجاتنا', NULL, NULL, NULL, NULL),
('ar', 10, '100% ضمان جميع المنتجات الطازجة', NULL, NULL, NULL, NULL),
('ar', 11, 'تخفيضات خاصة على البقالة هذا الشهر', NULL, NULL, NULL, NULL),
('ar', 12, 'استمتع بخصم 15% على جميع الخضروات والفواكه', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `audit_histories`
--

CREATE TABLE `audit_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `user_type` varchar(191) DEFAULT 'Botble\\ACL\\Models\\User',
  `module` varchar(60) NOT NULL,
  `request` longtext DEFAULT NULL,
  `action` varchar(120) NOT NULL,
  `user_agent` text DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `actor_id` bigint(20) UNSIGNED NOT NULL,
  `actor_type` varchar(191) DEFAULT 'Botble\\ACL\\Models\\User',
  `reference_id` bigint(20) UNSIGNED NOT NULL,
  `reference_name` varchar(191) NOT NULL,
  `type` varchar(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `audit_histories`
--

INSERT INTO `audit_histories` (`id`, `user_id`, `user_type`, `module`, `request`, `action`, `user_agent`, `ip_address`, `actor_id`, `actor_type`, `reference_id`, `reference_name`, `type`, `created_at`, `updated_at`) VALUES
(1, 1, 'Botble\\ACL\\Models\\User', 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '156.195.195.240', 1, 'Botble\\ACL\\Models\\User', 1, 'Ewell Lueilwitz', 'info', '2026-01-06 00:56:34', '2026-01-06 00:56:34'),
(2, 1, 'Botble\\ACL\\Models\\User', 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', '156.195.245.173', 1, 'Botble\\ACL\\Models\\User', 1, 'Ewell Lueilwitz', 'info', '2026-01-06 01:38:40', '2026-01-06 01:38:40'),
(3, 1, 'Botble\\ACL\\Models\\User', 'user', '{\"_method\":\"PUT\",\"first_name\":\"Ibrahim\",\"last_name\":\"Osha\",\"email\":\"osimonis@schaden.org\",\"phone\":\"01020438540\"}', 'has updated his profile', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '196.153.112.8', 1, 'Botble\\ACL\\Models\\User', 1, 'Ibrahim Osha', 'primary', '2026-01-06 01:55:58', '2026-01-06 01:55:58'),
(4, 1, 'Botble\\ACL\\Models\\User', 'user', '{\"_method\":\"PUT\",\"first_name\":\"Ibrahim\",\"last_name\":\"Osha\",\"email\":\"osimonis@schaden.org\",\"phone\":\"01020438540\"}', 'has updated his profile', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '196.153.112.8', 1, 'Botble\\ACL\\Models\\User', 1, 'Ibrahim Osha', 'primary', '2026-01-06 01:56:00', '2026-01-06 01:56:00'),
(5, 1, 'Botble\\ACL\\Models\\User', 'user', '{\"_method\":\"PUT\",\"first_name\":\"Abdulaziz\",\"last_name\":\"Ministreet\",\"email\":\"info@abdulazizministreet.com\",\"phone\":\"01020438540\"}', 'has updated his profile', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '196.153.112.8', 1, 'Botble\\ACL\\Models\\User', 1, 'Abdulaziz Ministreet', 'primary', '2026-01-06 01:57:36', '2026-01-06 01:57:36'),
(6, 1, 'Botble\\ACL\\Models\\User', 'user', '{\"step\":\"3\",\"email\":\"info@abdulazizministreet.com\"}', 'updated profile', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '196.153.112.8', 1, 'Botble\\ACL\\Models\\User', 1, 'Abdulaziz Ministreet', 'info', '2026-01-06 02:03:54', '2026-01-06 02:03:54'),
(7, 1, 'Botble\\ACL\\Models\\User', 'user', '{\"step\":\"3\",\"email\":\"info@abdulazizministreet.com\"}', 'changed password', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '196.153.112.8', 1, 'Botble\\ACL\\Models\\User', 1, 'Abdulaziz Ministreet', 'danger', '2026-01-06 02:03:54', '2026-01-06 02:03:54'),
(8, 1, 'Botble\\ACL\\Models\\User', 'user', '{\"step\":\"3\",\"email\":\"info@abdulazizministreet.com\"}', 'has updated his profile', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '196.153.112.8', 1, 'Botble\\ACL\\Models\\User', 1, 'Abdulaziz Ministreet', 'primary', '2026-01-06 02:03:54', '2026-01-06 02:03:54'),
(9, 1, 'Botble\\ACL\\Models\\User', 'user', '{\"step\":\"3\",\"email\":\"info@abdulazizministreet.com\"}', 'updated profile', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '196.153.112.8', 1, 'Botble\\ACL\\Models\\User', 1, 'Abdulaziz Ministreet', 'info', '2026-01-06 02:05:56', '2026-01-06 02:05:56'),
(10, 1, 'Botble\\ACL\\Models\\User', 'user', '{\"step\":\"3\",\"email\":\"info@abdulazizministreet.com\"}', 'changed password', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '196.153.112.8', 1, 'Botble\\ACL\\Models\\User', 1, 'Abdulaziz Ministreet', 'danger', '2026-01-06 02:05:56', '2026-01-06 02:05:56'),
(11, 1, 'Botble\\ACL\\Models\\User', 'user', '{\"step\":\"3\",\"email\":\"info@abdulazizministreet.com\"}', 'has updated his profile', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '196.153.112.8', 1, 'Botble\\ACL\\Models\\User', 1, 'Abdulaziz Ministreet', 'primary', '2026-01-06 02:05:56', '2026-01-06 02:05:56'),
(12, 1, 'Botble\\ACL\\Models\\User', 'of the system', '[]', 'logged out', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '156.195.236.243', 1, 'Botble\\ACL\\Models\\User', 1, 'Abdulaziz Ministreet', 'info', '2026-01-06 02:20:48', '2026-01-06 02:20:48'),
(13, 1, 'Botble\\ACL\\Models\\User', 'from the admin panel', NULL, 'logged out', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '156.195.236.243', 1, 'Botble\\ACL\\Models\\User', 1, 'Abdulaziz Ministreet', 'info', '2026-01-06 02:20:48', '2026-01-06 02:20:48'),
(14, 1, 'Botble\\ACL\\Models\\User', 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '156.195.236.243', 1, 'Botble\\ACL\\Models\\User', 1, 'Abdulaziz Ministreet', 'info', '2026-01-06 02:21:51', '2026-01-06 02:21:51'),
(15, 1, 'Botble\\ACL\\Models\\User', '', '{\"name\":\"\\u0635\\u0641\\u0642\\u0627\\u062a \\u0627\\u0644\\u064a\\u0648\\u0645\",\"subtitle\":null,\"image\":null,\"model\":\"Botble\\\\Ecommerce\\\\Models\\\\FlashSale\",\"form\":\"Botble\\\\Ecommerce\\\\Forms\\\\FlashSaleForm\",\"submitter\":\"apply\",\"language\":\"ar\",\"ref_lang\":\"ar\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '156.195.236.243', 1, 'Botble\\ACL\\Models\\User', 1, 'Deal of the Day', 'primary', '2026-01-06 02:23:38', '2026-01-06 02:23:38'),
(16, 1, 'Botble\\ACL\\Models\\User', 'simpleslideritem', '{\"simple_slider_id\":\"1\",\"title\":\"\\u0644\\u0627 \\u062a\\u0641\\u0648\\u0646 \\u0639\\u0631\\u0648\\u0636 \\u0627\\u0644\\u064a\\u0648\\u0645<br> \\u0635\\u0641\\u0642\\u0627\\u062a \\u0644\\u0644\\u062a\\u0644\\u0627\\u062c\\u0627\\u062a\",\"link\":\"\\/products\",\"description\":\"\\u0633\\u062c\\u0644 \\u0644\\u0645\\u0632\\u064a\\u064a\\u062f \\u0645\\u0646 \\u0627\\u0644\\u0635\\u0641\\u0642\\u0627\\u062a\",\"order\":\"1\",\"image\":\"home-appliances-ar.png\",\"tablet_image\":null,\"mobile_image\":null}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '102.44.22.179', 1, 'Botble\\ACL\\Models\\User', 1, 'لا تفون عروض اليوم<br> صفقات للتلاجات', 'primary', '2026-01-06 02:37:57', '2026-01-06 02:37:57'),
(17, 1, 'Botble\\ACL\\Models\\User', 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '156.195.195.240', 1, 'Botble\\ACL\\Models\\User', 1, 'Abdulaziz Ministreet', 'info', '2026-01-10 17:48:25', '2026-01-10 17:48:25'),
(18, 1, 'Botble\\ACL\\Models\\User', 'language', '{\"lang_id\":\"2\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '156.195.195.240', 1, 'Botble\\ACL\\Models\\User', 2, '', 'primary', '2026-01-10 19:58:40', '2026-01-10 19:58:40'),
(19, 1, 'Botble\\ACL\\Models\\User', 'language', '{\"lang_id\":\"1\",\"lang_name\":\"English\",\"lang_locale\":\"en\",\"lang_code\":\"en_US\",\"lang_flag\":\"us\",\"lang_order\":\"2\",\"lang_is_rtl\":\"0\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '156.195.195.240', 1, 'Botble\\ACL\\Models\\User', 1, '', 'primary', '2026-01-10 20:08:50', '2026-01-10 20:08:50'),
(20, 1, 'Botble\\ACL\\Models\\User', 'language', '{\"lang_id\":\"2\",\"lang_name\":\"\\u0627\\u0644\\u0639\\u0631\\u0628\\u064a\\u0629\",\"lang_locale\":\"ar\",\"lang_code\":\"ar\",\"lang_flag\":\"eg\",\"lang_order\":\"0\",\"lang_is_rtl\":\"1\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '156.195.195.240', 1, 'Botble\\ACL\\Models\\User', 2, '', 'primary', '2026-01-10 20:08:57', '2026-01-10 20:08:57'),
(21, 1, 'Botble\\ACL\\Models\\User', 'language', '{\"lang_id\":\"1\",\"lang_name\":\"English\",\"lang_locale\":\"en\",\"lang_code\":\"en_US\",\"lang_flag\":\"us\",\"lang_order\":\"1\",\"lang_is_rtl\":\"0\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '156.195.195.240', 1, 'Botble\\ACL\\Models\\User', 1, '', 'primary', '2026-01-10 20:09:04', '2026-01-10 20:09:04'),
(22, 1, 'Botble\\ACL\\Models\\User', 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '102.42.30.230', 1, 'Botble\\ACL\\Models\\User', 1, 'Abdulaziz Ministreet', 'info', '2026-01-12 16:16:46', '2026-01-12 16:16:46'),
(23, 1, 'Botble\\ACL\\Models\\User', 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '102.42.30.230', 1, 'Botble\\ACL\\Models\\User', 1, 'Abdulaziz Ministreet', 'info', '2026-01-12 16:16:48', '2026-01-12 16:16:48'),
(24, 1, 'Botble\\ACL\\Models\\User', 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '102.42.30.230', 1, 'Botble\\ACL\\Models\\User', 1, 'Abdulaziz Ministreet', 'info', '2026-01-12 16:29:12', '2026-01-12 16:29:12'),
(25, 1, 'Botble\\ACL\\Models\\User', 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '102.42.30.230', 1, 'Botble\\ACL\\Models\\User', 1, 'Abdulaziz Ministreet', 'info', '2026-01-12 16:29:15', '2026-01-12 16:29:15'),
(26, 1, 'Botble\\ACL\\Models\\User', 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '102.42.30.230', 1, 'Botble\\ACL\\Models\\User', 1, 'Abdulaziz Ministreet', 'info', '2026-01-12 19:03:09', '2026-01-12 19:03:09'),
(27, 1, 'Botble\\ACL\\Models\\User', 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '102.42.30.230', 1, 'Botble\\ACL\\Models\\User', 1, 'Abdulaziz Ministreet', 'info', '2026-01-14 04:57:12', '2026-01-14 04:57:12'),
(28, 1, 'Botble\\ACL\\Models\\User', 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '102.42.30.230', 1, 'Botble\\ACL\\Models\\User', 1, 'Abdulaziz Ministreet', 'info', '2026-01-16 07:27:02', '2026-01-16 07:27:02'),
(29, 1, 'Botble\\ACL\\Models\\User', 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '102.42.30.230', 1, 'Botble\\ACL\\Models\\User', 1, 'Abdulaziz Ministreet', 'info', '2026-01-16 07:27:47', '2026-01-16 07:27:47'),
(30, 1, 'Botble\\ACL\\Models\\User', 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '102.42.30.230', 1, 'Botble\\ACL\\Models\\User', 1, 'Abdulaziz Ministreet', 'info', '2026-01-16 07:29:24', '2026-01-16 07:29:24'),
(31, 1, 'Botble\\ACL\\Models\\User', 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '102.42.30.230', 1, 'Botble\\ACL\\Models\\User', 1, 'Abdulaziz Ministreet', 'info', '2026-01-16 07:37:54', '2026-01-16 07:37:54'),
(32, 1, 'Botble\\ACL\\Models\\User', 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '102.42.30.230', 1, 'Botble\\ACL\\Models\\User', 1, 'Abdulaziz Ministreet', 'info', '2026-01-16 07:40:03', '2026-01-16 07:40:03'),
(33, 1, 'Botble\\ACL\\Models\\User', 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '102.42.30.230', 1, 'Botble\\ACL\\Models\\User', 1, 'Abdulaziz Ministreet', 'info', '2026-01-17 00:19:06', '2026-01-17 00:19:06'),
(34, 1, 'Botble\\ACL\\Models\\User', 'of the system', '[]', 'logged out', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '102.42.30.230', 1, 'Botble\\ACL\\Models\\User', 1, 'Abdulaziz Ministreet', 'info', '2026-01-17 00:24:40', '2026-01-17 00:24:40'),
(35, 1, 'Botble\\ACL\\Models\\User', 'from the admin panel', NULL, 'logged out', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '102.42.30.230', 1, 'Botble\\ACL\\Models\\User', 1, 'Abdulaziz Ministreet', 'info', '2026-01-17 00:24:40', '2026-01-17 00:24:40'),
(36, 1, 'Botble\\ACL\\Models\\User', 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '102.42.30.230', 1, 'Botble\\ACL\\Models\\User', 1, 'Abdulaziz Ministreet', 'info', '2026-01-18 20:24:12', '2026-01-18 20:24:12'),
(37, 1, 'Botble\\ACL\\Models\\User', 'user', '{\"first_name\":\"Mostafa\",\"last_name\":\"Abdulaziz\",\"email\":\"mostafa@gmail.com\",\"phone\":\"01030660989\",\"submitter\":\"apply\",\"role_id\":\"1\"}', 'created', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '102.42.30.230', 1, 'Botble\\ACL\\Models\\User', 2, 'Mostafa Abdulaziz', 'info', '2026-01-18 20:26:48', '2026-01-18 20:26:48'),
(38, 1, 'Botble\\ACL\\Models\\User', 'user', '{\"first_name\":\"Ahmed\",\"last_name\":\"Ozoo\",\"email\":\"ozoo@gmail.com\",\"phone\":\"01020304050\",\"submitter\":\"apply\",\"role_id\":\"1\"}', 'created', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '102.42.30.230', 1, 'Botble\\ACL\\Models\\User', 3, 'Ahmed Ozoo', 'info', '2026-01-18 20:28:13', '2026-01-18 20:28:13'),
(39, 1, 'Botble\\ACL\\Models\\User', 'of the system', '[]', 'logged out', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '102.42.30.230', 1, 'Botble\\ACL\\Models\\User', 1, 'Abdulaziz Ministreet', 'info', '2026-01-18 20:28:23', '2026-01-18 20:28:23'),
(40, 1, 'Botble\\ACL\\Models\\User', 'from the admin panel', NULL, 'logged out', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '102.42.30.230', 1, 'Botble\\ACL\\Models\\User', 1, 'Abdulaziz Ministreet', 'info', '2026-01-18 20:28:23', '2026-01-18 20:28:23'),
(41, 3, 'Botble\\ACL\\Models\\User', 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '102.42.30.230', 3, 'Botble\\ACL\\Models\\User', 3, 'Ahmed Ozoo', 'info', '2026-01-18 20:28:28', '2026-01-18 20:28:28'),
(42, 3, 'Botble\\ACL\\Models\\User', 'of the system', '[]', 'logged out', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '102.42.30.230', 3, 'Botble\\ACL\\Models\\User', 3, 'Ahmed Ozoo', 'info', '2026-01-18 20:28:55', '2026-01-18 20:28:55'),
(43, 3, 'Botble\\ACL\\Models\\User', 'from the admin panel', NULL, 'logged out', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '102.42.30.230', 3, 'Botble\\ACL\\Models\\User', 3, 'Ahmed Ozoo', 'info', '2026-01-18 20:28:55', '2026-01-18 20:28:55'),
(44, 1, 'Botble\\ACL\\Models\\User', 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '102.42.30.230', 1, 'Botble\\ACL\\Models\\User', 1, 'Abdulaziz Ministreet', 'info', '2026-01-18 20:29:02', '2026-01-18 20:29:02'),
(45, 1, 'Botble\\ACL\\Models\\User', 'user', '{\"first_name\":\"Ibrahim\",\"last_name\":\"Osha\",\"email\":\"osha@gmail.com\",\"phone\":\"01020438544\",\"submitter\":\"apply\",\"role_id\":\"1\"}', 'created', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '102.42.30.230', 1, 'Botble\\ACL\\Models\\User', 4, 'Ibrahim Osha', 'info', '2026-01-18 20:30:13', '2026-01-18 20:30:13');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(191) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('abdulaziz_cache_pruned_audit_logs_table', 'i:1;', 1768829413),
('abdulaziz_cache_core.base.boot_settings', 'a:2:{s:8:\"timezone\";s:12:\"Africa/Cairo\";s:6:\"locale\";s:2:\"ar\";}', 1768746613),
('abdulaziz_cache_core_installed_plugins', 'a:29:{i:0;s:8:\"language\";i:1;s:17:\"language-advanced\";i:2;s:3:\"ads\";i:3;s:9:\"analytics\";i:4;s:9:\"audit-log\";i:5;s:6:\"backup\";i:6;s:4:\"blog\";i:7;s:15:\"bottom-bar-menu\";i:8;s:7:\"captcha\";i:9;s:7:\"contact\";i:10;s:14:\"cookie-consent\";i:11;s:9:\"ecommerce\";i:12;s:3:\"faq\";i:13;s:8:\"location\";i:14;s:11:\"marketplace\";i:15;s:6:\"mollie\";i:16;s:10:\"newsletter\";i:17;s:7:\"payment\";i:18;s:6:\"paypal\";i:19;s:13:\"paypal-payout\";i:20;s:8:\"paystack\";i:21;s:8:\"razorpay\";i:22;s:6:\"shippo\";i:23;s:13:\"simple-slider\";i:24;s:12:\"social-login\";i:25;s:10:\"sslcommerz\";i:26;s:6:\"stripe\";i:27;s:14:\"stripe-connect\";i:28;s:11:\"translation\";}', 1768744813),
('abdulaziz_cache_core_file_data', 'a:8:{s:9:\"productId\";s:8:\"5F061D22\";s:6:\"source\";s:6:\"envato\";s:6:\"apiUrl\";s:26:\"https://license.botble.com\";s:6:\"apiKey\";s:20:\"CAF4B17F6D3F656125F9\";s:7:\"version\";s:8:\"1.25.9.1\";s:14:\"marketplaceUrl\";s:37:\"https://marketplace.botble.com/api/v1\";s:16:\"marketplaceToken\";s:40:\"ef595699344d15d1a294b95143211b52b6bb6a19\";s:17:\"minimumPhpVersion\";s:5:\"8.2.0\";}', 1768744813),
('abdulaziz_cache_3cacb0d523d0e3e4a18e0b012d8be032', 's:1719:\"data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAYABgAAD/2wBDAAgGBgcGBQgHBwcJCQgKDBQNDAsLDBkSEw8UHRofHh0aHBwgJC4nICIsIxwcKDcpLDAxNDQ0Hyc5PTgyPC4zNDL/2wBDAQkJCQwLDBgNDRgyIRwhMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjL/wAARCAD6APoDASIAAhEBAxEB/8QAGgABAQEBAQEBAAAAAAAAAAAAAAcFAwQGAf/EAC0QAQABAwEHAgUFAQAAAAAAAAACAQMEBgU0NnFysbIR0RUXVFWRITFRYZSB/8QAGwEBAAMBAQEBAAAAAAAAAAAAAAQFBgcCAQP/xAAoEQEAAQICCwEBAQEAAAAAAAAAAQIDBIEFBhExMjM0cXKxwUESUZH/2gAMAwEAAhEDEQA/AO4DTuVAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAPpdk6My9r7NtZtrJsQhc9fSMvX1p6VrT+P6e35d5/1uN+Jez6fRfCeHzn5yb6nu4y7TXVTE7pbTCaFwdzD0V1UztmInfP7Cc/LvP+txvxL2fH3IVt3JQrX1rGtaLshmTvV7rl3SsHfruzV/f4qtN6PsYSKJsxs27f3s5AJygAAAAAAAAAAAAAAAAAAAAAAAAAAVnRfCeHzn5yb7A0Xwnh85+cm+zt/m1d5dKwHSWvGPQhmTvV7rl3XNDMner3XLunaN31ZKHWbht5/HIBaMmAAAAAAAAAAAAAAAAAAAAAAAAAArOi+E8PnPzk32BovhPD5z85N9nb/Nq7y6VgOkteMehDMner3XLuuaGZO9XuuXdO0bvqyUOs3Dbz+OQC0ZMAAAAAAAAAAAAAAAAAAAAAAAAABWdF8J4fOfnJvsDRfCeHzn5yb7O3+bV3l0rAdJa8Y9CGZO9XuuXdc0Myd6vdcu6do3fVkodZuG3n8cgFoyYAAAAAAAAAAAAAAAAAAAAAAAAACs6L4Tw+c/OTfYGi+E8PnPzk32dv82rvLpWA6S14x6EMyd6vdcu65oZk71e65d07Ru+rJQ6zcNvP45ALRkwAAAAAAAAAAAAAAAAAAAAAAAAAFZ0Xwnh85+cm+wNF8J4fOfnJvs7f5tXeXSsB0lrxj0IZk71e65d1zQzJ3q91y7p2jd9WSh1m4befxyAWjJgAAAAAAAAAAAAAAAAAAAAAAAAAKzovhPD5z85N9gaL4Tw+c/OTfZ2/zau8ulYDpLXjHoQzJ3q91y7rmhmTvV7rl3TtG76slDrNw28/jkAtGTAAAAAAAAAAAAAAAAAAAAAAAAAAeuztTaONajasZ+Vatx/aFu9KNKf8pV0+ObW+6Zv+ifu8A8/xT/j9IvXYjZFU/wDXv+ObW+6Zv+ifu8Na1lWta1rWtf1rWr8H2KYjdDzVcrr4pmQB9eQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAH/2Q==\";', 1768829413),
('abdulaziz_cache_admin-notifications-count-1', 'i:0;', 1768829413),
('abdulaziz_cache_0c175e4a57799ccc0d2967044852a2f8@unread-contacts', 'O:42:\"Illuminate\\Pagination\\LengthAwarePaginator\":12:{s:8:\"\0*\0items\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:10:{i:0;O:29:\"Botble\\Contact\\Models\\Contact\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"contacts\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:5:{s:2:\"id\";s:2:\"15\";s:4:\"name\";s:11:\"Robertscurn\";s:5:\"email\";s:22:\"zekisuquc419@gmail.com\";s:5:\"phone\";s:11:\"84111663553\";s:10:\"created_at\";s:19:\"2026-01-17 18:27:46\";}s:11:\"\0*\0original\";a:5:{s:2:\"id\";s:2:\"15\";s:4:\"name\";s:11:\"Robertscurn\";s:5:\"email\";s:22:\"zekisuquc419@gmail.com\";s:5:\"phone\";s:11:\"84111663553\";s:10:\"created_at\";s:19:\"2026-01-17 18:27:46\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:6:{s:6:\"status\";s:38:\"Botble\\Contact\\Enums\\ContactStatusEnum\";s:4:\"name\";s:29:\"Botble\\Base\\Casts\\SafeContent\";s:7:\"address\";s:29:\"Botble\\Base\\Casts\\SafeContent\";s:7:\"subject\";s:29:\"Botble\\Base\\Casts\\SafeContent\";s:7:\"content\";s:29:\"Botble\\Base\\Casts\\SafeContent\";s:13:\"custom_fields\";s:5:\"array\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:8:{i:0;s:4:\"name\";i:1;s:5:\"email\";i:2;s:5:\"phone\";i:3;s:7:\"address\";i:4;s:7:\"subject\";i:5;s:7:\"content\";i:6;s:6:\"status\";i:7;s:13:\"custom_fields\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:1;O:29:\"Botble\\Contact\\Models\\Contact\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"contacts\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:5:{s:2:\"id\";s:2:\"14\";s:4:\"name\";s:8:\"Leescurn\";s:5:\"email\";s:22:\"zekisuquc419@gmail.com\";s:5:\"phone\";s:11:\"88414376877\";s:10:\"created_at\";s:19:\"2026-01-13 10:48:39\";}s:11:\"\0*\0original\";a:5:{s:2:\"id\";s:2:\"14\";s:4:\"name\";s:8:\"Leescurn\";s:5:\"email\";s:22:\"zekisuquc419@gmail.com\";s:5:\"phone\";s:11:\"88414376877\";s:10:\"created_at\";s:19:\"2026-01-13 10:48:39\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:6:{s:6:\"status\";s:38:\"Botble\\Contact\\Enums\\ContactStatusEnum\";s:4:\"name\";s:29:\"Botble\\Base\\Casts\\SafeContent\";s:7:\"address\";s:29:\"Botble\\Base\\Casts\\SafeContent\";s:7:\"subject\";s:29:\"Botble\\Base\\Casts\\SafeContent\";s:7:\"content\";s:29:\"Botble\\Base\\Casts\\SafeContent\";s:13:\"custom_fields\";s:5:\"array\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:8:{i:0;s:4:\"name\";i:1;s:5:\"email\";i:2;s:5:\"phone\";i:3;s:7:\"address\";i:4;s:7:\"subject\";i:5;s:7:\"content\";i:6;s:6:\"status\";i:7;s:13:\"custom_fields\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:2;O:29:\"Botble\\Contact\\Models\\Contact\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"contacts\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:5:{s:2:\"id\";s:2:\"13\";s:4:\"name\";s:8:\"Leescurn\";s:5:\"email\";s:22:\"zekisuquc419@gmail.com\";s:5:\"phone\";s:11:\"87461977691\";s:10:\"created_at\";s:19:\"2026-01-10 15:57:02\";}s:11:\"\0*\0original\";a:5:{s:2:\"id\";s:2:\"13\";s:4:\"name\";s:8:\"Leescurn\";s:5:\"email\";s:22:\"zekisuquc419@gmail.com\";s:5:\"phone\";s:11:\"87461977691\";s:10:\"created_at\";s:19:\"2026-01-10 15:57:02\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:6:{s:6:\"status\";s:38:\"Botble\\Contact\\Enums\\ContactStatusEnum\";s:4:\"name\";s:29:\"Botble\\Base\\Casts\\SafeContent\";s:7:\"address\";s:29:\"Botble\\Base\\Casts\\SafeContent\";s:7:\"subject\";s:29:\"Botble\\Base\\Casts\\SafeContent\";s:7:\"content\";s:29:\"Botble\\Base\\Casts\\SafeContent\";s:13:\"custom_fields\";s:5:\"array\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:8:{i:0;s:4:\"name\";i:1;s:5:\"email\";i:2;s:5:\"phone\";i:3;s:7:\"address\";i:4;s:7:\"subject\";i:5;s:7:\"content\";i:6;s:6:\"status\";i:7;s:13:\"custom_fields\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:3;O:29:\"Botble\\Contact\\Models\\Contact\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"contacts\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:5:{s:2:\"id\";s:2:\"12\";s:4:\"name\";s:15:\"Norberto Elmore\";s:5:\"email\";s:41:\"indexing@searches-abdulazizministreet.com\";s:5:\"phone\";s:9:\"247026145\";s:10:\"created_at\";s:19:\"2026-01-08 17:51:19\";}s:11:\"\0*\0original\";a:5:{s:2:\"id\";s:2:\"12\";s:4:\"name\";s:15:\"Norberto Elmore\";s:5:\"email\";s:41:\"indexing@searches-abdulazizministreet.com\";s:5:\"phone\";s:9:\"247026145\";s:10:\"created_at\";s:19:\"2026-01-08 17:51:19\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:6:{s:6:\"status\";s:38:\"Botble\\Contact\\Enums\\ContactStatusEnum\";s:4:\"name\";s:29:\"Botble\\Base\\Casts\\SafeContent\";s:7:\"address\";s:29:\"Botble\\Base\\Casts\\SafeContent\";s:7:\"subject\";s:29:\"Botble\\Base\\Casts\\SafeContent\";s:7:\"content\";s:29:\"Botble\\Base\\Casts\\SafeContent\";s:13:\"custom_fields\";s:5:\"array\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:8:{i:0;s:4:\"name\";i:1;s:5:\"email\";i:2;s:5:\"phone\";i:3;s:7:\"address\";i:4;s:7:\"subject\";i:5;s:7:\"content\";i:6;s:6:\"status\";i:7;s:13:\"custom_fields\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:4;O:29:\"Botble\\Contact\\Models\\Contact\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"contacts\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:5:{s:2:\"id\";s:2:\"11\";s:4:\"name\";s:11:\"Naina Singh\";s:5:\"email\";s:28:\"naina.websolutions@gmail.com\";s:5:\"phone\";s:9:\"736624535\";s:10:\"created_at\";s:19:\"2026-01-08 11:39:54\";}s:11:\"\0*\0original\";a:5:{s:2:\"id\";s:2:\"11\";s:4:\"name\";s:11:\"Naina Singh\";s:5:\"email\";s:28:\"naina.websolutions@gmail.com\";s:5:\"phone\";s:9:\"736624535\";s:10:\"created_at\";s:19:\"2026-01-08 11:39:54\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:6:{s:6:\"status\";s:38:\"Botble\\Contact\\Enums\\ContactStatusEnum\";s:4:\"name\";s:29:\"Botble\\Base\\Casts\\SafeContent\";s:7:\"address\";s:29:\"Botble\\Base\\Casts\\SafeContent\";s:7:\"subject\";s:29:\"Botble\\Base\\Casts\\SafeContent\";s:7:\"content\";s:29:\"Botble\\Base\\Casts\\SafeContent\";s:13:\"custom_fields\";s:5:\"array\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:8:{i:0;s:4:\"name\";i:1;s:5:\"email\";i:2;s:5:\"phone\";i:3;s:7:\"address\";i:4;s:7:\"subject\";i:5;s:7:\"content\";i:6;s:6:\"status\";i:7;s:13:\"custom_fields\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:5;O:29:\"Botble\\Contact\\Models\\Contact\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"contacts\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:5:{s:2:\"id\";s:2:\"10\";s:4:\"name\";s:15:\"Anaya Prajapati\";s:5:\"email\";s:28:\"anaya.dgtlsolution@gmail.com\";s:5:\"phone\";s:10:\"9266141479\";s:10:\"created_at\";s:19:\"2026-01-08 07:55:53\";}s:11:\"\0*\0original\";a:5:{s:2:\"id\";s:2:\"10\";s:4:\"name\";s:15:\"Anaya Prajapati\";s:5:\"email\";s:28:\"anaya.dgtlsolution@gmail.com\";s:5:\"phone\";s:10:\"9266141479\";s:10:\"created_at\";s:19:\"2026-01-08 07:55:53\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:6:{s:6:\"status\";s:38:\"Botble\\Contact\\Enums\\ContactStatusEnum\";s:4:\"name\";s:29:\"Botble\\Base\\Casts\\SafeContent\";s:7:\"address\";s:29:\"Botble\\Base\\Casts\\SafeContent\";s:7:\"subject\";s:29:\"Botble\\Base\\Casts\\SafeContent\";s:7:\"content\";s:29:\"Botble\\Base\\Casts\\SafeContent\";s:13:\"custom_fields\";s:5:\"array\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:8:{i:0;s:4:\"name\";i:1;s:5:\"email\";i:2;s:5:\"phone\";i:3;s:7:\"address\";i:4;s:7:\"subject\";i:5;s:7:\"content\";i:6;s:6:\"status\";i:7;s:13:\"custom_fields\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:6;O:29:\"Botble\\Contact\\Models\\Contact\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"contacts\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:5:{s:2:\"id\";s:1:\"9\";s:4:\"name\";s:11:\"Roslyn Wild\";s:5:\"email\";s:41:\"indexing@searches-abdulazizministreet.com\";s:5:\"phone\";s:10:\"8304660380\";s:10:\"created_at\";s:19:\"2026-01-07 20:07:23\";}s:11:\"\0*\0original\";a:5:{s:2:\"id\";s:1:\"9\";s:4:\"name\";s:11:\"Roslyn Wild\";s:5:\"email\";s:41:\"indexing@searches-abdulazizministreet.com\";s:5:\"phone\";s:10:\"8304660380\";s:10:\"created_at\";s:19:\"2026-01-07 20:07:23\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:6:{s:6:\"status\";s:38:\"Botble\\Contact\\Enums\\ContactStatusEnum\";s:4:\"name\";s:29:\"Botble\\Base\\Casts\\SafeContent\";s:7:\"address\";s:29:\"Botble\\Base\\Casts\\SafeContent\";s:7:\"subject\";s:29:\"Botble\\Base\\Casts\\SafeContent\";s:7:\"content\";s:29:\"Botble\\Base\\Casts\\SafeContent\";s:13:\"custom_fields\";s:5:\"array\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:8:{i:0;s:4:\"name\";i:1;s:5:\"email\";i:2;s:5:\"phone\";i:3;s:7:\"address\";i:4;s:7:\"subject\";i:5;s:7:\"content\";i:6;s:6:\"status\";i:7;s:13:\"custom_fields\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:7;O:29:\"Botble\\Contact\\Models\\Contact\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"contacts\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:5:{s:2:\"id\";s:1:\"8\";s:4:\"name\";s:5:\"Anaya\";s:5:\"email\";s:22:\"geneva.guzzi@gmail.com\";s:5:\"phone\";s:10:\"9266141479\";s:10:\"created_at\";s:19:\"2026-01-07 07:24:51\";}s:11:\"\0*\0original\";a:5:{s:2:\"id\";s:1:\"8\";s:4:\"name\";s:5:\"Anaya\";s:5:\"email\";s:22:\"geneva.guzzi@gmail.com\";s:5:\"phone\";s:10:\"9266141479\";s:10:\"created_at\";s:19:\"2026-01-07 07:24:51\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:6:{s:6:\"status\";s:38:\"Botble\\Contact\\Enums\\ContactStatusEnum\";s:4:\"name\";s:29:\"Botble\\Base\\Casts\\SafeContent\";s:7:\"address\";s:29:\"Botble\\Base\\Casts\\SafeContent\";s:7:\"subject\";s:29:\"Botble\\Base\\Casts\\SafeContent\";s:7:\"content\";s:29:\"Botble\\Base\\Casts\\SafeContent\";s:13:\"custom_fields\";s:5:\"array\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:8:{i:0;s:4:\"name\";i:1;s:5:\"email\";i:2;s:5:\"phone\";i:3;s:7:\"address\";i:4;s:7:\"subject\";i:5;s:7:\"content\";i:6;s:6:\"status\";i:7;s:13:\"custom_fields\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:8;O:29:\"Botble\\Contact\\Models\\Contact\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"contacts\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:5:{s:2:\"id\";s:1:\"7\";s:4:\"name\";s:8:\"Oval SEO\";s:5:\"email\";s:21:\"ovalentine2@gmail.com\";s:5:\"phone\";s:10:\"2102102101\";s:10:\"created_at\";s:19:\"2026-01-07 02:45:11\";}s:11:\"\0*\0original\";a:5:{s:2:\"id\";s:1:\"7\";s:4:\"name\";s:8:\"Oval SEO\";s:5:\"email\";s:21:\"ovalentine2@gmail.com\";s:5:\"phone\";s:10:\"2102102101\";s:10:\"created_at\";s:19:\"2026-01-07 02:45:11\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:6:{s:6:\"status\";s:38:\"Botble\\Contact\\Enums\\ContactStatusEnum\";s:4:\"name\";s:29:\"Botble\\Base\\Casts\\SafeContent\";s:7:\"address\";s:29:\"Botble\\Base\\Casts\\SafeContent\";s:7:\"subject\";s:29:\"Botble\\Base\\Casts\\SafeContent\";s:7:\"content\";s:29:\"Botble\\Base\\Casts\\SafeContent\";s:13:\"custom_fields\";s:5:\"array\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:8:{i:0;s:4:\"name\";i:1;s:5:\"email\";i:2;s:5:\"phone\";i:3;s:7:\"address\";i:4;s:7:\"subject\";i:5;s:7:\"content\";i:6;s:6:\"status\";i:7;s:13:\"custom_fields\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:9;O:29:\"Botble\\Contact\\Models\\Contact\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"contacts\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:5:{s:2:\"id\";s:1:\"6\";s:4:\"name\";s:14:\"Gemma Marshall\";s:5:\"email\";s:26:\"gemmamarshall811@gmail.com\";s:5:\"phone\";s:9:\"623812766\";s:10:\"created_at\";s:19:\"2026-01-06 20:54:25\";}s:11:\"\0*\0original\";a:5:{s:2:\"id\";s:1:\"6\";s:4:\"name\";s:14:\"Gemma Marshall\";s:5:\"email\";s:26:\"gemmamarshall811@gmail.com\";s:5:\"phone\";s:9:\"623812766\";s:10:\"created_at\";s:19:\"2026-01-06 20:54:25\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:6:{s:6:\"status\";s:38:\"Botble\\Contact\\Enums\\ContactStatusEnum\";s:4:\"name\";s:29:\"Botble\\Base\\Casts\\SafeContent\";s:7:\"address\";s:29:\"Botble\\Base\\Casts\\SafeContent\";s:7:\"subject\";s:29:\"Botble\\Base\\Casts\\SafeContent\";s:7:\"content\";s:29:\"Botble\\Base\\Casts\\SafeContent\";s:13:\"custom_fields\";s:5:\"array\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:8:{i:0;s:4:\"name\";i:1;s:5:\"email\";i:2;s:5:\"phone\";i:3;s:7:\"address\";i:4;s:7:\"subject\";i:5;s:7:\"content\";i:6;s:6:\"status\";i:7;s:13:\"custom_fields\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:10:\"\0*\0perPage\";i:10;s:14:\"\0*\0currentPage\";i:1;s:7:\"\0*\0path\";s:67:\"https://abdulazizministreet.com/public/admin/system/users/profile/4\";s:8:\"\0*\0query\";a:0:{}s:11:\"\0*\0fragment\";N;s:11:\"\0*\0pageName\";s:4:\"page\";s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:10:\"onEachSide\";i:3;s:10:\"\0*\0options\";a:2:{s:4:\"path\";s:67:\"https://abdulazizministreet.com/public/admin/system/users/profile/4\";s:8:\"pageName\";s:4:\"page\";}s:8:\"\0*\0total\";i:15;s:11:\"\0*\0lastPage\";i:2;}', 1768829413),
('abdulaziz_cache_63c3b790d959ccde916c9d72a1d3f149', 's:3411:\"data:image/jpeg;base64,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\";', 1768829413),
('abdulaziz_cache_3abf12f45732e705c40994dcf74a7064', 's:1915:\"data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAYABgAAD/2wBDAAgGBgcGBQgHBwcJCQgKDBQNDAsLDBkSEw8UHRofHh0aHBwgJC4nICIsIxwcKDcpLDAxNDQ0Hyc5PTgyPC4zNDL/2wBDAQkJCQwLDBgNDRgyIRwhMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjL/wAARCAD6APoDASIAAhEBAxEB/8QAGQABAQEBAQEAAAAAAAAAAAAAAAcGBQME/8QAMBABAAAEAgkEAAYDAAAAAAAAAAECAwQFBxEWNlVxc5Sy0QYSMsIUFyFRdJITMYH/xAAaAQEAAwEBAQAAAAAAAAAAAAAABAUHAwYB/8QAJxEBAAECBAYBBQAAAAAAAAAAAAEDBQI0UrEEERNygZExFUFhcaH/2gAMAwEAAhEDEQA/AOEANVAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAHU9P4LU9QYvJh9KtJSnnlmm988Ixh+kNLltdlttpb8qp2xEbjKmKlw+Opg+YiZdb8pb/elt/SY/KW/3pbf0mVgHi/rvHav5CCeqfSdf0tG1hXuqdf8R79HsljDR7dH78WeU3N354PwrfRMh662V8fEcJgq1J5zPPeQATwAAAAAAAAAAAAAAAAAAAAAAABrstttLflVO2LItdlttpb8qp2xEO45Sr2zstwAzZMM3fng/Ct9EyU3N354PwrfRMhoFkyFPzvIALUAAAAAAAAAAAAAAAAAAAAAAAAa7LbbS35VTtiyLXZbbaW/KqdsRDuOUq9s7LcAM2TDN354PwrfRMlNzd+eD8K30TIaBZMhT87yAC1AAAAAAAAAAAAAAAAAAAAAAAAGuy220t+VU7Ysi12W22lvyqnbEQ7jlKvbOy3ADNkwzd+eD8K30TJTc3fng/Ct9EyGgWTIU/O8gAtQAAAAAAAAAAAAAAAAAAAAAAABrstttLflVO2LItdlttpb8qp2xEO45Sr2zstwAzZMM3fng/Ct9EyU3N354PwrfRMhoFkyFPzvIALUAAAAAAAAAAAAAAAAAAAAAAAAa7LbbS35VTtiyLXZbbaW/KqdsRDuOUq9s7LcAM2TDN354PwrfRMlWzSw6+v58K/B2Vxc+yFX3f4aU0/t0+zRp0Q/T/UU71dxvc2IdLP4HvbNVp4eBwROKI+fv+Zc0dLV3G9zYh0s/g1dxvc2IdLP4Fn16WqPbmjpau43ubEOln8GruN7mxDpZ/Adelqj25o97qyu7GpCneWte3nmh7oS1qcZIxh++iLwHSJiY5wAD6AAAAAAAAAAAAAAAAAANdlttpb8qp2xZFrstttLflVO2Ih3HKVe2dluAGbAAAAAAJDmxtDZ/wASHfMwLfZsbQ2f8SHfMwI0S05Kn+gAWIAAAAAAAAAAAAAAAAAA9ra6ubKvCta3FWhVhDRCelPGWaH/AGDxAmImOUunrJju+sR6qfyayY7vrEeqn8uYDl0KWmPUOnrJju+sR6qfyayY7vrEeqn8uYB0KWmPUOnrJju+sR6qfyayY7vrEeqn8uYB0KWmPUOnrJju+sR6qfyayY7vrEeqn8uYB0KWmPUPou768v6ktS8uq9zPLD2wmrVIzxhD9tMYvnAdIiMMcoAB9AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAf/Z\";', 1768829413),
('abdulaziz_cache_e3f7c0c84e267e6a96e2b916627f099a', 's:3307:\"data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAYABgAAD/2wBDAAgGBgcGBQgHBwcJCQgKDBQNDAsLDBkSEw8UHRofHh0aHBwgJC4nICIsIxwcKDcpLDAxNDQ0Hyc5PTgyPC4zNDL/2wBDAQkJCQwLDBgNDRgyIRwhMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjL/wAARCAD6APoDASIAAhEBAxEB/8QAHAABAAIDAQEBAAAAAAAAAAAAAAQIBQYHAwIB/8QAOxABAAEDAQQGBQoGAwAAAAAAAAECAwQFBhE1sgchMTZzdBIVQVGBEyIyQlVhcZGx0RQWF5TB8CNS4f/EABsBAQACAwEBAAAAAAAAAAAAAAAEBgIDBQEH/8QALhEBAAECBQIEBAcBAAAAAAAAAAECAwQFETEyEnETQYHBITM0kRRSYaGx0eHw/9oADAMBAAIRAxEAPwDDgOg+egAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAN6xejDUcrEs5FOfixTdopriJirfETG/3PX+lOp/aGJ+VX7OmaRwXA8vb5YTESbtS20ZThZpiZj93JbnRXqtFquqjNxK6opmYpj0o9Kfd2NEroqt3KqK6ZprpmYqpmN0xMexZVyjpK2c/hMyNZxqP+HIn0b8RH0bnv8Aj+v4tlu7MzpKBmOWUWrfiWY23c/Ab3BAAbboWwWbr+lUahYy8e3RXVVTFNcVb+qd3shkv6U6n9oYn5Vfs2zo47mY/iXOaW2ItV2qJmFow2V4a5Zprqj4zEebk/8ASnU/tDE/Kr9miZFmcfJu2apiZt1zRMx7d07lk1ctS4rmePXzS2Wq5q11QM1wdnD00zbjfVFAbnGAAAAAAAAAAAAAAAAAAWL0jguB5e3ywmIekcFwPL2+WExAndf7fCBG1DAsanp9/CyafSs3qJpqj3ffH3x2pI8ZTEVRpKu2r6Xf0bVcjAyI+faq3RVu6qo9kx+MILsHSLs56z0v1nj0b8rEpn04iOuu32z+Xb+bj6bRV1RqpWOws4a9NHl5dgBmhu19HHczH8S5zS2xqfRx3Mx/Euc0tsQa+UrxgvpqO0CuWpcVzPHr5pWNVy1LiuZ49fNLbY3lys940evsigJKuAAAAAAAAAAAAAAAAAALF6RwXA8vb5YTEPSOC4Hl7fLCYgTuv9vhAIOs5VzB0TPy7O75Wxj13KN8b43xTMx+j80bVbGtaTYz8efmXaeunf101e2J/CTT4aniU9fR56ap8xExMTG+JcN222dnQNbq+Ro3YWRvuWJ9lPvp+H6TDuTDbUaFb2h0S9iTui9Hz7Fc/Vrjs+E9k/izt19MoeY4T8TZ0jlG39ergI+7tq5YvV2btE0XLdU01Uz2xMdUw+ExTdna+jjuZj+Jc5pbY1Po47mY/iXOaW2INfKV3wX01HaBXLUuK5nj180rGq5alxXM8evmltsby5We8aPX2RQElXAAAAAAAAAAAAAAAAAAFi9I4LgeXt8sJiHpHBcDy9vlhMQJ3X+3whi9pe62reTu8kuY9HW0fqvVZ07Ir3YmXVEUzM9VFzsifj2fk6dtL3W1byd3klXyJ3TvhvtUxVTMS4ea3qrGIt3KfKFlxrGw+0Xr/RKYvV783G3W72/tq91Xx/WJbO0TExOku3Zu03aIuU7S5b0mbOfI3qdcxqPmXJijJiI7KvZV8ez8d3vc6WQzMSzn4V7EyaIrs3qJorp+6XANc0i9oWsX8C/vmbc76K9306Z7JSbNesaSrWb4Tw7njU7Vfz/rrXRx3Mx/Euc0tsan0cdzMfxLnNLbEevlLv4L6ajtArlqXFczx6+aVjVctS4rmePXzS22N5crPeNHr7IoCSrgAAAAAAAAAAAAAAAAACxekcFwPL2+WExD0jguB5e3ywmIE7r/AG+EMXtL3W1byd3klXxYPaXutq3k7vJKviRY2lXc8+ZR2ZjZnXbmz2t2cynfNqfmXqI+tRPb8Y7Y/B3yzet5Fi3fs1xXauUxVRVHZMT2SrW6h0Z7R/KWqtDya/n0RNeNMz2x21U/Dtj4+4vUax1Q8yfF9FfgVbTt3/10dp3SDs5640f+Nx6N+ZiRNUREdddHtj4dsfH3txEemZpnWFhv2ab1ubdW0tT6OO5mP4lzmltiHpum2NKxq8fGj0bU3arlNP8A19Kd8xH3b0wqnWZl5h7c27VNE7xGgrlqXFczx6+aVjVctS4rmePXzS3WN5cbPeNHr7IoCSrgAAAAAAAAAAAAAAAAACxekcFwPL2+WExD0jguB5e3ywmIE7r/AG+EMXtL3W1byd3klXxYPaXutq3k7vJKviRY2lXc8+ZR2HtiZV7BzLOVj1zRetVxXRVHsmHiN7hxMxOsLC6DrFnXtHsZ9ndHpxuuUb/oVx2x/vs3Mk4v0f7R+ptY/hMivdh5cxTVvnqor+rV/if/AB2hCuUdMrpgMVGJsxVO8bgDBNFctS4rmePXzSsarlqXFczx6+aW+xvLgZ7xo9fZFASVcAAAAAAAAAAAAAAAAAAWL0jguB5e3ywmIekcFwPL2+WExAndf7fCGL2l7rat5O7ySr4sHtL3W1byd3klXxIsbSruefMo7ADe4Q7VsFtH670aMe/XvzcSIor3z110/Vq/xP3x97irKbPa1e0DWbGda3zTTPo3aI+vRPbH++2IYXKOqE7L8XOGvRVO07/9+iwY8sXJs5mLayceuK7N2mK6Ko9sS9UJc4mJjWBXLUuK5nj180rGq5alxXM8evmlvsby4Oe8aPX2RQElXAAAAAAAAAAAAAAAAAAGRo2g1q3RTRRq+fTRTG6mmnJriIj3R1vr+Y9c+2dR/uq/3YweaQ2eLc/NP3ZC7r2sXrVdq7q2fct1xNNVFeTXMVRPbExv64Y8HumjGqqqrlOoAMQAE7H1rVcSxTYxtTzbNqn6Nu3fqppj29URL1/mPXPtnUf7qv8AdjB5pDZF25Hwiqfuyf8AMeufbOo/3Vf7sbVVVXXNddU1VVTvmZnfMy/A0iGNVdVXKdQB6xAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAf/2Q==\";', 1768829413),
('abdulaziz_cache_e4efd499eb94084807f60639dfe9d8fc', 's:3331:\"data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAYABgAAD/2wBDAAgGBgcGBQgHBwcJCQgKDBQNDAsLDBkSEw8UHRofHh0aHBwgJC4nICIsIxwcKDcpLDAxNDQ0Hyc5PTgyPC4zNDL/2wBDAQkJCQwLDBgNDRgyIRwhMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjL/wAARCAD6APoDASIAAhEBAxEB/8QAHAABAQEBAQEBAQEAAAAAAAAAAAcEBgUDAgEI/8QAOhABAAEDAQQFCQYHAQEAAAAAAAECAwQFETVzsgYxNkGxEhUhIlF0gZHRBxMUF0JxUlRVYZTB4SPw/8QAGgEBAQEBAQEBAAAAAAAAAAAAAAYFBAIBA//EACsRAQACAAQEBQQDAQAAAAAAAAABAgMEBTERMkFxEhMzNIEUIcHhUqGxkf/aAAwDAQACEQMRAD8A/IC7QgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADscf7PM/IxrV+nNxopuURXETFXo2xt9j6/ltqH89i/Kr6KBpe6cPgUcsNaXtqmZi0xx/pUV0vLTWJ4f2mVz7N9Spt1VU5eNXVETMUx5UbZ9nU4yuiq3XVRXTNNVM7JiY9MS/wBAJp0/0H8Nlxq2PR/5X58m9Efpr9vx8f3duQ1G+LieXizvs4s/p1MLD8zCjbdxIDbYgADptG6F5mtabRm2cqxboqmYimvbt9E7O6HofltqH89i/Kr6Om6B9lLHEr5pdKm8xqWYpi2pWftEz0UmX03L3wq2tH3mI6pp+W2ofz2L8qvo429amxfuWpmJmiqaZmO/ZOxfUHz95ZXGr8ZdumZvFzE2jEnbg4dSymFl4rOHG/FmAa7JAAAAAAAAAAAAAAAAAAXbS904fAo5Ya2TS904fAo5Ya0Nfmlc05YGfOwrOo4N7EyKfKtXafJq+v7x1tA+RMxPGH2YiY4ShWqade0nUr2Ffj17dWyJ7qo7pj94Y1S6d6D5w07zhYo25OLT60R11W+/5dfzS1X5LMxmMKLdeqQzmWnL4s16dAB1uRXOgfZSxxK+aXSua6B9lLHEr5pdKjc37i/eVnk/b07QIPn7yyuNX4yvCD5+8srjV+MtLRea/wAflma1y0+WYBQJ8AAAAAAAAAAAAAAAAABdtL3Th8CjlhrZNL3Th8CjlhrQ1+aVzTlgGPVcm5h6RmZNrZ95ZsV3KdsejbETMGlalZ1bTbObYn1blPpp76Z74n9pffBbwePps+eOvj8HXdsmImNk+mEe6XaF5k1er7qnZiX9tdn2R7afh4TCwvJ6RaNRrmkXcWdkXY9ezVP6a46vhPV8XXkM19Pi8Z2ndyZ/K/UYXCN42RQfu7ars3a7V2mablFU01Uz1xMdcPwrEmrnQPspY4lfNLpXNdA+yljiV80ulR2b9xfvKyyft6doEHz95ZXGr8ZXhB8/eWVxq/GWlovNf4/LM1rlp8swCgT4AAAAAAAAAAAAAAAAAC7aXunD4FHLDWyaXunD4FHLDWhr80rmnLDztf7Oan7rc5ZT3oJr3m7UpwL9ezGypiKZnqoud0/Hq+Sha/2c1P3W5yyh/VO2G1pmDXGy98O3WWLqeNbBzFMSvR/oEc90P13z1pERdq25ePsou+2r2VfHxiXQsfFw7YV5pbeGxhYlcWkXrtKc/aDoP3V2nWMej1K5ii/Ed1XdV8er5e1wi95WLZzcS7jX6fKtXaZpqj+0onrGl3tH1S9hXvT5E7aav4qZ6pUGlZrzKeVbeP8AP0n9Vyvl382u0/7+1N6B9lLHEr5pdK5roH2UscSvml0rEzfuL95bmT9vTtAg+fvLK41fjK8IPn7yyuNX4y0tF5r/AB+WZrXLT5ZgFAnwAAAAAAAAAAAAAAAAAF20vdOHwKOWGtk0vdOHwKOWGtDX5pXNOWHna/2c1P3W5yyh64a/2c1P3W5yyh7f0X07d2BrPqV7PV6Paxc0PV7WVTtm1PqXaY/VRPX9fgtNq7bv2aL1quK7ddMVU1R1TE9UoCon2fa995bq0fIr9ajbXjzPfHfT8Ov5+x91bK+OvnV3jft+nzSc14LeTbadu/7d65XpvoPnTS/xdijblYsTVGzrro74/wBx8fa6oYWDi2wcSL13hu42FXGw5pbaXNdA+yljiV80ulZcDAs6bYqsY8eTam5VXFP8PlTtmI/s1GPeMTFteOsmBScPCrSekCD5+8srjV+Mrwg+fvLK41fjLW0Xmv8AH5ZOtctPlmAUCfAAAAAAAAAAAAAAAAAAXbS904fAo5Ya2TS904fAo5Ya0Nfmlc05Yedr/ZzU/dbnLKHrhr/ZzU/dbnLKHt/RfTt3YGs+pXsPri5N3DyrWTYrmi7aqiqmqO6YfIbMxExwljRMxPGFx0XVbWs6VZzbWyPKjZXT/DVHXD0Em6Ea95q1X8Nfr2YuVMUzt6qK+6f9T/xWUjnctOXxZr0nZXZHMxmMKLTvG4A43YIPn7yyuNX4yvCD5+8srjV+MtvRea/x+WJrXLT5ZgFAnwAAAAAAAAAAAAAAAAAF20vdOHwKOWGtk0vdOHwKOWGtDX5pXNOWHna/2c1P3W5yyh64a/2c1P3W5yyh7f0X07d2BrPqV7ADaYorfQvXvO+k/cXq9uXjRFNe3rqp7qv9T/1JHo6Hq13RdWs5lvbNNM7LlEfqonrj/wC79jiz2W+owpiN42duRzP0+Lxnad1wHyx8i1l41vIs1xXauUxVTVHfEvqkpjh9pVsTxjjAg+fvLK41fjK8IPn7yyuNX4y2tF5r/H5YutctPlmAUCfAAAAAAAAAAAAAAAAAAb6db1aiimijVM2mmmNkRGRXERHzf3z9rH9Wzv8AIr+rzx+flU/jH/H6ebf+Ut1zWtVu26rdzU8yu3XE01U1X6piYnumNrCD1Wta7RwebWtbeeIA9PIADZY1bUsazTZx9Qy7Vqnqot3qqYj4RL6eftY/q2d/kV/V54/OcOk/eYh+kYl4+0TL0PP2sf1bO/yK/qwVVVV1TVVM1VTO2ZmdszL+D1Wla7RwebXtbeeIA9PIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD/9k=\";', 1768829413),
('abdulaziz_cache_a782e87e057a800079c9b2bd3e35a918', 's:3435:\"data:image/jpeg;base64,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\";', 1768829413),
('abdulaziz_cache_1cd4eac9774026b86aebb798988a29c2', 's:3411:\"data:image/jpeg;base64,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\";', 1768829413),
('abdulaziz_cache_4feb6cad77e19ff76e38c314a97cb7c6', 's:3075:\"data:image/jpeg;base64,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\";', 1768829413),
('abdulaziz_cache_a6cee407866906de09f8076d10595930', 's:3119:\"data:image/jpeg;base64,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\";', 1768829413);
INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('abdulaziz_cache_e6f870d72c16c91d798d3c4db752d7c8', 's:2743:\"data:image/jpeg;base64,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\";', 1768829413),
('abdulaziz_cache_813df7c4d229262380d3a4aa3aeef64d', 's:3435:\"data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAYABgAAD/2wBDAAgGBgcGBQgHBwcJCQgKDBQNDAsLDBkSEw8UHRofHh0aHBwgJC4nICIsIxwcKDcpLDAxNDQ0Hyc5PTgyPC4zNDL/2wBDAQkJCQwLDBgNDRgyIRwhMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjL/wAARCAD6APoDASIAAhEBAxEB/8QAHAABAQADAQEBAQAAAAAAAAAAAAcFBggEAwEC/8QAPxABAAEDAgIGBAsHBAMAAAAAAAECAwQFEQYhBxITgZGhFTFBchQWFyJRVFVhcZPSIzIzUpTC0UJiorKCkrH/xAAbAQEAAgMBAQAAAAAAAAAAAAAAAwQBBQYCB//EACwRAQACAgAGAAQFBQAAAAAAAAABAgMRBAUSEyExFFGRsRVBUoHRMkJx4fD/2gAMAwEAAhEDEQA/AMOA2D56AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA+2LjXMzLs4tmN7t6uLdEffM7QMxEzOobHo3AWra5plvPx7uJas3JmKYvV1RVO07b8qZ5bwyHyV659b078yv8AQquBh29O0/Hw7P8ADsW6bdP37R63pVZzW34dVj5Nw/THXvf5+Ufq6LddpomqMnT6piN9ouV7z/waTMTTVNNUTExO0xPsdLIbx3pXorirJ6lO1nJ/b2//AC9cf+26TFkm06lr+Z8ux8PjjJi/drQCZpAAAAAAAAAAAAAAAAAAAAAAAABuvRnpXw3iKrNrp3tYVHWj36uUeXWnuaUtvR9pXozhWzcrp2vZc9vV+E/u+W096PLbVWy5Vg7vERM+q+f4bUApuwGjdJ2lfC9CtahRTvcw6/ne5Vynz6vm3l587Et5+BkYd6N7d+3Vbq/CY2eqz0ztBxOGM2G2Ofzc4D75mLcwc2/iXo2u2blVuqPvidnwXnCzExOpABgAAAAAAAAAAAAAAAAAAAAABkND02rWNbxMCnf9tciKpj2U+uqfCJdC0UU27dNFFMU0UxEUxHsiEw6K9K6+Tmatcp+bbjsLU/7p51eEbeKoqua27adVybB0YJyT7t9oGo8QcTejOMNF0+K9rVczORG/Lav5tO/4TvLbnP8AxNqk6txLm5tNW9E3OramJ/008qfKN+9jFXqlLzTip4fHHT7mft5dADGcP6lGr6BhZ2+9V21HX9+OVXnEsmjmNeGxpaL1i0epR/pN0r4Hr9vPop2t5lG8+/Tyny6vm0hcOPtK9KcK5FVFO97F/b0d373/AB38IQ9bxW3VyPNcHa4iZj1bz/IAka0AAAAAAAAAAAAAAAAAAAABn+DNK9L8UYlmqne1aq7a77tPPznaO9iZ1G0mLHOS8Ur7lX+FdK9DcN4eJVTtd6nXu+/Vznw9XczIKMzudu7x0jHSKV9QwnF2p+ieF87Jpq2uTR2dv6etVyjw337kDUrpV1PevB0uir1RN+5HjTT/AHeKarWGuq7ctzjN3OI6I9VVLoq1PtMPN0uur51qqL1uJ/lnlPhMR4qKhHBWp+iuK8O7VVtau1djc/Crl5TtPcu6HNXVm45Rm7nD9M+6+H5VTTXTNNURNMxtMT7Yc96/plWja9mYExPVtXJ6kz7aJ50z4TDoVMelTStrmHq1unlVHYXZ+/nNP93hDOG2raeOc4O5g6491+ybALTlAAAAAAAAAAAAAAAAAAAABV+i3Suw0vJ1Sun5+RX2duZ/kp9fjP8A1SyxZuZF+3YtU9a5cqiimmPbMztEOiNLwLel6Vi4Nv8AdsW4o3+mfbPfPNDmtqNNzyXB15pyT6r95esCYiYmJjeJ9iq6lAOKNT9L8S52XFW9ubk0W/cp5R5Rv3sO6G+L+i/ZGn/01H+D4v6L9kaf/TUf4WIzREa053JyXLe03m8blzzEzE7xO0w6E4e1KNX4fws7feu5bjr+/HKrziX9fF/RfsjT/wCmo/w9mNi4+HZ7HFsWrFqJ36lqiKY3/CHjJki0LvL+AycLaZm24l9WJ4l0qNZ4dzMKI3uVUda378c6fONu9lhHE6nbZ3pF6zS3qXNExMTtMbTA2PjjSvRPFWVRTTtZvz29v8KvX4TvDXF6J3G3B5cc4rzSfcADKMAAAAAAAAAAAAAAAAABuHRxpXpDianJrp3tYdPaz9HWnlTH/wBnuWdqHRzpXo/hinIrp2u5lXaz9PV9VMeHPvbep5bbs7LleDs8NG/c+f8Av2ASrUelDU7OpZNrDx8GrGouVU2qq6K5mqmJ2iZ2qj1vNaTb0n4ni8XDRE5J9qqJD8qmufVdO/Lr/WfKprn1XTvy6/1vfZsp/jHC/OforwkPyqa59V078uv9Z8qmufVdO/Lr/Wdmx+McL85+ivDG6Dqka1oWJqG1MVXaN64p9UVRyqiO+JZJFMa8NnS0XrFq+paH0oaV8J0WxqVFO9eJX1a5/wBlXLynbxlJHR2oYVvUdOyMK9/Dv26rc/dvHrc7ZWNcw8u9jXqerds1zRXH0TE7StYbbjTmedYOjLGWP7vvD5AJmlAAAAAAAAAAAAAAAAHs0nT69V1bFwbe/Wv3Io3j2R7Z7o3l41B6LNK7bUsrVLlPzcens7cz/NV657o/7PN7dNdrPCYe/mrj+f2VOzaox7Fuzapim3bpiimmPZERtEP7BRdzEaYbivU/RPDGdlU1bXOz7O371XKPDffuQFTOlXU+WDpdFX037keNNP8Acma3hrqu3J84zdfEdEeqgCVqQAFS6KtT7TDzdLrq52qovW4+6eU+ExHioqEcF6n6K4rw7tVW1q7V2Nz8KuXlO09y7qmaurOt5Rm7nD9M+6+BHekvSvgXEVObRTtazaOtPv08qvLqz3rE1XpB0r0nwteuUU73sSe3p/CP3vLee5jFbVk3MsHe4a0R7jz9P9IkAuOMAAAAAAAAAAAAAAAAGSwOINW0vHnHwc67YtTVNU00bbTP0+UMaExt6re1J3WdM58ceIvtbI8YPjjxF9rZHjDBjHTHySfE5v1z9ZenOz8vUsmcnNv1370xETXXPPaHmBlFMzM7kAGAACJmJ3idphnPjjxF9rZHjDBjExE+3umS9P6JmP8ADOfHHiL7WyPGH5XxfxBcoqor1W/VTVG0xMxtMMIHTHye/iM365+sgDKEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAB/9k=\";', 1768829413),
('abdulaziz_cache_0c175e4a57799ccc0d2967044852a2f8@unread-contacts-count', 'i:15;', 1768829429),
('abdulaziz_cache_a2183fb1c46089223c9fd38c3c063e59', 's:3075:\"data:image/jpeg;base64,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\";', 1768829434),
('abdulaziz_cache_65b83ad065dbeb5292d94ab9580d9273@user-meta-1', 'O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:2:{i:0;O:26:\"Botble\\ACL\\Models\\UserMeta\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:9:\"user_meta\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:6:{s:2:\"id\";s:1:\"1\";s:3:\"key\";s:10:\"theme_mode\";s:5:\"value\";s:5:\"light\";s:7:\"user_id\";s:1:\"1\";s:10:\"created_at\";s:19:\"2026-01-05 20:57:58\";s:10:\"updated_at\";s:19:\"2026-01-05 20:58:03\";}s:11:\"\0*\0original\";a:6:{s:2:\"id\";s:1:\"1\";s:3:\"key\";s:10:\"theme_mode\";s:5:\"value\";s:5:\"light\";s:7:\"user_id\";s:1:\"1\";s:10:\"created_at\";s:19:\"2026-01-05 20:57:58\";s:10:\"updated_at\";s:19:\"2026-01-05 20:58:03\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:3:{i:0;s:3:\"key\";i:1;s:5:\"value\";i:2;s:7:\"user_id\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:1;O:26:\"Botble\\ACL\\Models\\UserMeta\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:9:\"user_meta\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:6:{s:2:\"id\";s:1:\"2\";s:3:\"key\";s:15:\"minimal_sidebar\";s:5:\"value\";s:2:\"no\";s:7:\"user_id\";s:1:\"1\";s:10:\"created_at\";s:19:\"2026-01-18 15:30:42\";s:10:\"updated_at\";s:19:\"2026-01-18 15:30:44\";}s:11:\"\0*\0original\";a:6:{s:2:\"id\";s:1:\"2\";s:3:\"key\";s:15:\"minimal_sidebar\";s:5:\"value\";s:2:\"no\";s:7:\"user_id\";s:1:\"1\";s:10:\"created_at\";s:19:\"2026-01-18 15:30:42\";s:10:\"updated_at\";s:19:\"2026-01-18 15:30:44\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:3:{i:0;s:3:\"key\";i:1;s:5:\"value\";i:2;s:7:\"user_id\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', 1768743646);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(191) NOT NULL,
  `owner` varchar(191) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `parent_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `description` varchar(400) DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `author_id` bigint(20) UNSIGNED DEFAULT NULL,
  `author_type` varchar(191) NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `icon` varchar(60) DEFAULT NULL,
  `order` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `is_featured` tinyint(4) NOT NULL DEFAULT 0,
  `is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `parent_id`, `description`, `status`, `author_id`, `author_type`, `icon`, `order`, `is_featured`, `is_default`, `created_at`, `updated_at`) VALUES
(1, 'Ecommerce', 0, 'Odio sunt sit rerum veritatis provident dolor. Vero quibusdam laboriosam autem reiciendis. Et adipisci et repellendus id quibusdam repudiandae. Nesciunt veritatis est incidunt eligendi.', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 0, 1, '2026-01-06 00:55:50', '2026-01-06 00:55:50'),
(2, 'Fashion', 0, 'Dolores sunt ut cupiditate deleniti dignissimos accusamus id. Quo voluptas eaque praesentium.', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 1, 0, '2026-01-06 00:55:50', '2026-01-06 00:55:50'),
(3, 'Electronic', 0, 'Ut in numquam sint sint. Ut veritatis sed ut id tempora. Eveniet sed corrupti tenetur aut expedita qui voluptatem est. Velit odit quis sit.', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 1, 0, '2026-01-06 00:55:50', '2026-01-06 00:55:50'),
(4, 'Commercial', 0, 'Quos iste debitis ullam. Corporis necessitatibus molestiae earum vel et. Facere totam quo numquam nam quia.', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 1, 0, '2026-01-06 00:55:50', '2026-01-06 00:55:50');

-- --------------------------------------------------------

--
-- Table structure for table `categories_translations`
--

CREATE TABLE `categories_translations` (
  `lang_code` varchar(20) NOT NULL,
  `categories_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories_translations`
--

INSERT INTO `categories_translations` (`lang_code`, `categories_id`, `name`, `description`) VALUES
('ar', 1, 'التجارة الإلكترونية', 'مقالات عن التجارة الإلكترونية'),
('ar', 2, 'الموضة', 'أخبار وصيحات الموضة'),
('ar', 3, 'الإلكترونيات', 'أخبار التقنية والإلكترونيات'),
('ar', 4, 'التجاري', 'المواضيع التجارية');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `slug` varchar(120) DEFAULT NULL,
  `state_id` bigint(20) UNSIGNED DEFAULT NULL,
  `country_id` bigint(20) UNSIGNED DEFAULT NULL,
  `record_id` varchar(40) DEFAULT NULL,
  `order` tinyint(4) NOT NULL DEFAULT 0,
  `image` varchar(191) DEFAULT NULL,
  `is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cities_translations`
--

CREATE TABLE `cities_translations` (
  `lang_code` varchar(20) NOT NULL,
  `cities_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) DEFAULT NULL,
  `slug` varchar(120) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(60) NOT NULL,
  `email` varchar(60) DEFAULT NULL,
  `phone` varchar(60) DEFAULT NULL,
  `address` varchar(120) DEFAULT NULL,
  `subject` varchar(120) DEFAULT NULL,
  `content` longtext NOT NULL,
  `custom_fields` text DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `phone`, `address`, `subject`, `content`, `custom_fields`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Lucy Gordon', 'lucygordon.mkt@gmail.com', '1201201200', 'Burgemeester De Geusstraat 128', 'Re: Improve your website traffic and SEO', 'Hi,\n\nabdulazizministreet.com\n\nI visited your website online and discovered that it was not showing up in any search results for the majority of keywords related to your company on Google, Yahoo, or Bing.\n\nDo you want more targeted visitors on your website? We can place your website on Google’s 1st Page. yahoo, AOL, Bing. Etc.\n\nIf interested, kindly provide me your name, phone number, and email.\n\nRegards,\nLucy Gordon\n\n\n\nNote: Proficient with Squarespace, Shopify, Wix, WordPress, GoDaddy, and similar tools.', NULL, 'unread', '2026-01-06 13:04:26', '2026-01-06 13:04:26'),
(2, 'Sonam Prajapati', 'sonam.websolution12@gmail.com', '485230627', 'Jagerij 137', 'Elevate Your Website’s Google Rankings', 'Hi http://abdulazizministreet.com, \n\nI hope you’re doing well. \n\nI came across your business online and thought you might be interested in improving your visibility and traffic on search engines.\n\nWe specialize in helping businesses strengthen their online presence through effective SEO strategies. \n\nOnce you share your target keywords and target market, I’ll send a full proposal. \n\nWarm regards, \n\nSonam', NULL, 'unread', '2026-01-06 17:47:50', '2026-01-06 17:47:50'),
(3, 'Daniel Edwards', 'daniel.websolution11@gmail.com', '8454479454', 'USA', 'Question about your website', 'Hello,\n\nWe have completed the review of your website, and it appears that your site is currently struggling to appear on search engines such as Google and Bing when users search for keywords related to your business. This issue is primarily due to the lack of proper Search Engine Optimization (SEO).\n\nWe understand that your goal in creating this website is to attract more clients and grow your business. If that is the case, we recommend replying to this email with your phone number and a suitable time for a call. This will allow us to discuss a clear and effective solution to improve your website’s visibility and ensure it ranks among the top search results across all major search engines.\n\nWe look forward to hearing from you.\n\nThank you,\nDaniel Edwards', NULL, 'unread', '2026-01-06 22:00:40', '2026-01-06 22:00:40'),
(4, 'Joanna Riggs', 'joannariggs83@gmail.com', '7766147936', '48 Union Terrace', 'Explainer Video for abdulazizministreet.com', 'Hi,\n\nI just visited abdulazizministreet.com and wondered if you\'d ever thought about having an engaging video to explain what you do?\n\nOur prices start from just $195 (USD).\n\nLet me know if you\'re interested in seeing samples of our previous work.\n\nRegards,\nJoanna\n\nUnsubscribe: https://unsubscribe.video/unsubscribe.php?d=abdulazizministreet.com', NULL, 'unread', '2026-01-06 22:52:01', '2026-01-06 22:52:01'),
(5, 'Nikita Joshi', 'nikita.sale01@gmail.com', '7532833829', 'suite 303', '', 'Hi http://abdulazizministreet.com,\n\nThis Black Friday, I’m offering a ONE-TIME SEO Optimization for only $199 ,\nno monthly fees.\n\nIn this one-time setup, I will:\n\n✔ Fix all major website errors\n✔ Improve website speed\n✔ Fully optimize on-page SEO\n✔ Complete technical SEO (sitemap, robots.txt, indexing, broken links)\n✔ Fix keywords your site is missing\n\nPay once. Get a complete SEO foundation.\nLimited slots • Offer valid till 30th November\n\nWant to grab this deal? Just reply “YES”\n\nThank you,\nNikita', NULL, 'unread', '2026-01-07 00:13:14', '2026-01-07 00:13:14'),
(6, 'Gemma Marshall', 'gemmamarshall811@gmail.com', '623812766', 'Rijnauwenhof 40', 'Increasing your reach on Instagram', 'Hi,\n\nAre you looking to grow your Instagram audience (or perhaps launch a new page)?\n\nWe run a manual Instagram service that acts as your dedicated assistant. We can build your profile from scratch or grow your existing account by 300+ real followers a month.\n\nMind if I send over the details?\n\nNote: We also work with Youtube Channels.\n\nKind Regards,\nGemma\n\nhttps://unsubscribe.social/unsubscribe.php?d=abdulazizministreet.com', NULL, 'unread', '2026-01-07 01:54:25', '2026-01-07 01:54:25'),
(7, 'Oval SEO', 'ovalentine2@gmail.com', '2102102101', '5776 Lindero Canyon', 'Page speed issue', 'Hello,\n\nI took a quick look at your website and noticed that some PAGES LOAD SLOWER than expected. This can impact visitor engagement and also affect Google rankings.\n\nIf you’d like, I can put together a free report showing which pages are slow and what can be improved.\n\nI’m also happy to walk you through it on a short Google Meet call.\n\nWould you like me to send the full report or a proposal?\n\nKind regards,', NULL, 'unread', '2026-01-07 07:45:11', '2026-01-07 07:45:11'),
(8, 'Anaya', 'geneva.guzzi@gmail.com', '9266141479', '41 Insignia Way', 'Get Your Website to Google 1st Page.', 'Hi http://abdulazizministreet.com,\n\nWe can place your website on Google 1st page.\n\nI can give you our Complete SEO Action Plan along with a customary reach and add great value to your product/ service.\n\nI may send you a SEO Packages &amp; price list. If interested.\n\nBest Regards,\nAnaya\nOnline SEO Consultant', NULL, 'unread', '2026-01-07 12:24:51', '2026-01-07 12:24:51'),
(9, 'Roslyn Wild', 'indexing@searches-abdulazizministreet.com', '8304660380', '', 'abdulazizministreet.com', 'Get abdulazizministreet.com indexed by Google and start appearing in search results.\n\nAdd abdulazizministreet.com today at https://searchregister.net', NULL, 'unread', '2026-01-08 01:07:23', '2026-01-08 01:07:23'),
(10, 'Anaya Prajapati', 'anaya.dgtlsolution@gmail.com', '9266141479', '60 Magnolia Drive', 'A modern design with solid SEO — your next step forward', 'Hi there http://abdulazizministreet.com,\n \nI help businesses boost their website traffic and online visibility through effective SEO strategies. To get started, I’d love to take a quick look at your website and prepare a short report outlining key issues and practical recommendations to help you attract more visitors and improve rankings.\n \nCould you please share your Keywords and target locations? Once I review it, I’ll send you a brief summary of insights and suggestions tailored to your business goals — completely free of charge.\n \nLooking forward to hearing from you soon.\n \nBest regards,\nAnaya', NULL, 'unread', '2026-01-08 12:55:53', '2026-01-08 12:55:53'),
(11, 'Naina Singh', 'naina.websolutions@gmail.com', '736624535', '49 Quintin Street', 'Enhancing Your Website Design to Attract More Clients', 'Hello http://abdulazizministreet.com,\n\nI design modern, user-friendly websites for small businesses and help improve their online presence.\n\nI wanted to check if you’re considering any updates to your current website—such as improving the design, usability, or adding features to better support your business.\n\nIf you’re planning a new website or a redesign, feel free to share your requirements and  reference website link. \n\nI’d be happy to discuss.\n\nKind regards,\nNaina', NULL, 'unread', '2026-01-08 16:39:54', '2026-01-08 16:39:54'),
(12, 'Norberto Elmore', 'indexing@searches-abdulazizministreet.com', '247026145', '', 'abdulazizministreet.com', 'Submit abdulazizministreet.com to GoogleIndex to start appearing in search results.\n\nList abdulazizministreet.com today at https://searchregister.org', NULL, 'unread', '2026-01-08 22:51:19', '2026-01-08 22:51:19'),
(13, 'Leescurn', 'zekisuquc419@gmail.com', '87461977691', '', 'Hello, i wrote about     price', 'Sveiki, es gribēju zināt savu cenu.', NULL, 'unread', '2026-01-10 20:57:02', '2026-01-10 20:57:02'),
(14, 'Leescurn', 'zekisuquc419@gmail.com', '88414376877', '', 'Hallo, i write about your the prices', 'Ndewo, achọrọ m ịmara ọnụahịa gị.', NULL, 'unread', '2026-01-13 15:48:39', '2026-01-13 15:48:39'),
(15, 'Robertscurn', 'zekisuquc419@gmail.com', '84111663553', '', 'Hallo    writing about your   price for reseller', 'Hi, roeddwn i eisiau gwybod eich pris.', NULL, 'unread', '2026-01-17 23:27:46', '2026-01-17 23:27:46');

-- --------------------------------------------------------

--
-- Table structure for table `contact_custom_fields`
--

CREATE TABLE `contact_custom_fields` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(191) NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `name` varchar(191) NOT NULL,
  `placeholder` varchar(191) DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 999,
  `status` varchar(191) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_custom_fields_translations`
--

CREATE TABLE `contact_custom_fields_translations` (
  `contact_custom_fields_id` bigint(20) UNSIGNED NOT NULL,
  `lang_code` varchar(191) NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `placeholder` varchar(191) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_custom_field_options`
--

CREATE TABLE `contact_custom_field_options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `custom_field_id` bigint(20) UNSIGNED NOT NULL,
  `label` varchar(191) DEFAULT NULL,
  `value` varchar(191) NOT NULL,
  `order` int(11) NOT NULL DEFAULT 999,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_custom_field_options_translations`
--

CREATE TABLE `contact_custom_field_options_translations` (
  `contact_custom_field_options_id` bigint(20) UNSIGNED NOT NULL,
  `lang_code` varchar(191) NOT NULL,
  `label` varchar(191) DEFAULT NULL,
  `value` varchar(191) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_replies`
--

CREATE TABLE `contact_replies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `message` longtext NOT NULL,
  `contact_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `nationality` varchar(120) DEFAULT NULL,
  `order` tinyint(4) NOT NULL DEFAULT 0,
  `image` varchar(191) DEFAULT NULL,
  `is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `code` varchar(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `countries_translations`
--

CREATE TABLE `countries_translations` (
  `lang_code` varchar(20) NOT NULL,
  `countries_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) DEFAULT NULL,
  `nationality` varchar(120) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_widgets`
--

CREATE TABLE `dashboard_widgets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dashboard_widgets`
--

INSERT INTO `dashboard_widgets` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'widget_total_1', '2026-01-06 00:56:34', '2026-01-06 00:56:34'),
(2, 'widget_total_2', '2026-01-06 00:56:34', '2026-01-06 00:56:34'),
(3, 'widget_total_3', '2026-01-06 00:56:34', '2026-01-06 00:56:34'),
(4, 'widget_total_4', '2026-01-06 00:56:34', '2026-01-06 00:56:34'),
(5, 'widget_total_themes', '2026-01-06 00:56:34', '2026-01-06 00:56:34'),
(6, 'widget_total_users', '2026-01-06 00:56:34', '2026-01-06 00:56:34'),
(7, 'widget_total_plugins', '2026-01-06 00:56:34', '2026-01-06 00:56:34'),
(8, 'widget_total_pages', '2026-01-06 00:56:34', '2026-01-06 00:56:34'),
(9, 'widget_posts_recent', '2026-01-06 00:56:34', '2026-01-06 00:56:34'),
(10, 'widget_audit_logs', '2026-01-06 00:56:34', '2026-01-06 00:56:34'),
(11, 'widget_ecommerce_report_general', '2026-01-06 00:56:34', '2026-01-06 00:56:34');

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_widget_settings`
--

CREATE TABLE `dashboard_widget_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `settings` text DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `widget_id` bigint(20) UNSIGNED NOT NULL,
  `order` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `device_tokens`
--

CREATE TABLE `device_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `token` varchar(191) NOT NULL,
  `platform` varchar(191) DEFAULT NULL,
  `app_version` varchar(191) DEFAULT NULL,
  `device_id` varchar(191) DEFAULT NULL,
  `user_type` varchar(191) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_abandoned_carts`
--

CREATE TABLE `ec_abandoned_carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `session_id` varchar(191) DEFAULT NULL,
  `cart_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`cart_data`)),
  `total_amount` decimal(15,2) NOT NULL DEFAULT 0.00,
  `items_count` int(11) NOT NULL DEFAULT 0,
  `email` varchar(191) DEFAULT NULL,
  `phone` varchar(191) DEFAULT NULL,
  `customer_name` varchar(191) DEFAULT NULL,
  `abandoned_at` timestamp NULL DEFAULT NULL,
  `reminder_sent_at` timestamp NULL DEFAULT NULL,
  `reminders_sent` int(11) NOT NULL DEFAULT 0,
  `is_recovered` tinyint(1) NOT NULL DEFAULT 0,
  `recovered_at` timestamp NULL DEFAULT NULL,
  `recovered_order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_brands`
--

CREATE TABLE `ec_brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` mediumtext DEFAULT NULL,
  `website` varchar(191) DEFAULT NULL,
  `logo` varchar(191) DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `order` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `is_featured` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_brands`
--

INSERT INTO `ec_brands` (`id`, `name`, `description`, `website`, `logo`, `status`, `order`, `is_featured`, `created_at`, `updated_at`) VALUES
(1, 'Samsung', NULL, NULL, NULL, 'published', 0, 1, '2026-01-06 00:55:14', '2026-01-06 00:55:14'),
(2, 'LG', NULL, NULL, NULL, 'published', 1, 1, '2026-01-06 00:55:14', '2026-01-06 00:55:14'),
(3, 'Toshiba', NULL, NULL, NULL, 'published', 2, 1, '2026-01-06 00:55:14', '2026-01-06 00:55:14'),
(4, 'Sharp', NULL, NULL, NULL, 'published', 3, 1, '2026-01-06 00:55:14', '2026-01-06 00:55:14'),
(5, 'Tornado', NULL, NULL, NULL, 'published', 4, 1, '2026-01-06 00:55:14', '2026-01-06 00:55:14'),
(6, 'Fresh', NULL, NULL, NULL, 'published', 5, 1, '2026-01-06 00:55:14', '2026-01-06 00:55:14'),
(7, 'Olympic', NULL, NULL, NULL, 'published', 6, 1, '2026-01-06 00:55:14', '2026-01-06 00:55:14');

-- --------------------------------------------------------

--
-- Table structure for table `ec_brands_translations`
--

CREATE TABLE `ec_brands_translations` (
  `lang_code` varchar(191) NOT NULL,
  `ec_brands_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `description` mediumtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_brands_translations`
--

INSERT INTO `ec_brands_translations` (`lang_code`, `ec_brands_id`, `name`, `description`) VALUES
('ar', 1, 'سامسونج', 'علامة سامسونج التجارية للإلكترونيات'),
('ar', 2, 'ال جي', 'علامة ال جي التجارية للأجهزة المنزلية'),
('ar', 3, 'توشيبا', 'علامة توشيبا التجارية للإلكترونيات'),
('ar', 4, 'شارب', 'علامة شارب التجارية للأجهزة الكهربائية'),
('ar', 5, 'تورنيدو', 'علامة تورنيدو التجارية للأجهزة المنزلية'),
('ar', 6, 'فريش', 'علامة فريش التجارية للأجهزة المنزلية'),
('ar', 7, 'اوليمبيك', 'علامة اوليمبيك التجارية للسخانات');

-- --------------------------------------------------------

--
-- Table structure for table `ec_cart`
--

CREATE TABLE `ec_cart` (
  `identifier` varchar(60) NOT NULL,
  `instance` varchar(60) NOT NULL,
  `content` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_currencies`
--

CREATE TABLE `ec_currencies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `symbol` varchar(10) NOT NULL,
  `is_prefix_symbol` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `decimals` tinyint(3) UNSIGNED DEFAULT 0,
  `order` int(10) UNSIGNED DEFAULT 0,
  `is_default` tinyint(4) NOT NULL DEFAULT 0,
  `exchange_rate` double NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_currencies`
--

INSERT INTO `ec_currencies` (`id`, `title`, `symbol`, `is_prefix_symbol`, `decimals`, `order`, `is_default`, `exchange_rate`, `created_at`, `updated_at`) VALUES
(1, 'USD', '$', 1, 2, 1, 0, 1, '2026-01-06 00:55:14', '2026-01-06 00:55:14'),
(2, 'EGP', 'ج.م', 0, 2, 5, 1, 47.3, '2026-01-06 00:55:14', '2026-01-06 00:55:14');

-- --------------------------------------------------------

--
-- Table structure for table `ec_customers`
--

CREATE TABLE `ec_customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) DEFAULT NULL,
  `password` varchar(191) NOT NULL,
  `avatar` varchar(191) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `email_verify_token` varchar(120) DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'activated',
  `block_reason` varchar(400) DEFAULT NULL,
  `private_notes` text DEFAULT NULL,
  `is_vendor` tinyint(1) NOT NULL DEFAULT 0,
  `vendor_verified_at` datetime DEFAULT NULL,
  `stripe_account_id` varchar(191) DEFAULT NULL,
  `stripe_account_active` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_customers`
--

INSERT INTO `ec_customers` (`id`, `name`, `email`, `password`, `avatar`, `dob`, `phone`, `remember_token`, `created_at`, `updated_at`, `confirmed_at`, `email_verify_token`, `status`, `block_reason`, `private_notes`, `is_vendor`, `vendor_verified_at`, `stripe_account_id`, `stripe_account_active`) VALUES
(1, 'Yvonne Howell', 'customer@botble.com', '$2y$12$nQ0dT.e6JqN8nU6zC/qECu3ELdId2jZYH7qxORGQQxC4d0JwDSSe6', 'customers/9.jpg', '1999-12-23', '+16284137506', NULL, '2026-01-06 00:55:37', '2026-01-06 00:55:37', '2026-01-05 19:55:37', NULL, 'activated', NULL, NULL, 0, NULL, NULL, 0),
(2, 'Sibyl Welch', 'vendor@botble.com', '$2y$12$DSM524IeoFOXhlmbwotlvujX0fC2uixcB1QfS2sRcHdm6oCVZ95Ra', 'customers/7.jpg', '1986-12-19', '+17577876128', NULL, '2026-01-06 00:55:37', '2026-01-06 00:56:05', '2026-01-05 19:55:37', NULL, 'activated', NULL, NULL, 1, '2026-01-05 19:56:05', NULL, 0),
(3, 'Claudie Keeling', 'nasir82@example.org', '$2y$12$wpr9EgxMLRCo3z5WeDFsB.nt/iPpTFdtjzrI8MwEQurHdarIe1osC', 'customers/1.jpg', '1982-12-18', '+14846680094', NULL, '2026-01-06 00:55:37', '2026-01-06 00:55:37', '2026-01-05 19:55:37', NULL, 'activated', NULL, NULL, 0, NULL, NULL, 0),
(4, 'Bettye Schuster', 'casper42@example.net', '$2y$12$cWzv5t.MJtrkIaj5K1CPVeFe36llrqKEaLGJWVg01.A1vYRUsNHTe', 'customers/2.jpg', '2002-01-02', '+17817338392', NULL, '2026-01-06 00:55:37', '2026-01-06 00:56:05', '2026-01-05 19:55:37', NULL, 'activated', NULL, NULL, 1, '2026-01-05 19:56:05', NULL, 0),
(5, 'Johan Walter', 'price.lyric@example.org', '$2y$12$mpoSS6ANteAmmyEWpVVj4OTqYRtyua5eBLzNxqYFcPJaY6erKfcKS', 'customers/3.jpg', '1984-12-28', '+14586883959', NULL, '2026-01-06 00:55:38', '2026-01-06 00:56:06', '2026-01-05 19:55:38', NULL, 'activated', NULL, NULL, 1, '2026-01-05 19:56:06', NULL, 0),
(6, 'Zoey Yundt', 'corwin.justus@example.com', '$2y$12$zXD9.fRQVm119DInb.3EnezRXcRCWAT.1vdXicUyLhfjBuBDN.ASq', 'customers/4.jpg', '1979-12-09', '+13645937697', NULL, '2026-01-06 00:55:38', '2026-01-06 00:55:38', '2026-01-05 19:55:38', NULL, 'activated', NULL, NULL, 0, NULL, NULL, 0),
(7, 'Quinn Klein', 'jaden.mueller@example.com', '$2y$12$jGHKuLTKSP3Te5hTNu.93.sOi7EIINrzIBDFjy71qjULVquZ5v4JW', 'customers/5.jpg', '1983-12-20', '+19106781973', NULL, '2026-01-06 00:55:38', '2026-01-06 00:55:38', '2026-01-05 19:55:38', NULL, 'activated', NULL, NULL, 0, NULL, NULL, 0),
(8, 'Sandy Effertz', 'lucienne86@example.net', '$2y$12$EDsAyAZgJh1j1s4stVSjIukOAhyiY/hF2nTxhXeBQSXcLS5V54Zua', 'customers/6.jpg', '1999-12-23', '+18487574528', NULL, '2026-01-06 00:55:38', '2026-01-06 00:56:06', '2026-01-05 19:55:38', NULL, 'activated', NULL, NULL, 1, '2026-01-05 19:56:06', NULL, 0),
(9, 'Katelyn Smitham', 'leatha.beatty@example.com', '$2y$12$ild/Pvet38q8hk0lFWgrr.n1CO.weKAmedTmocQoRIcLxc/wUpCiW', 'customers/7.jpg', '1976-12-11', '+16056756098', NULL, '2026-01-06 00:55:39', '2026-01-06 00:56:06', '2026-01-05 19:55:39', NULL, 'activated', NULL, NULL, 1, '2026-01-05 19:56:06', NULL, 0),
(10, 'Connie Lueilwitz', 'ludwig37@example.org', '$2y$12$DemFZE5k4j49fjCWDUOSce4BVdt3Gm/qOZvwjpV18F/zvwJih/.0u', 'customers/8.jpg', '1993-01-02', '+14583722622', NULL, '2026-01-06 00:55:39', '2026-01-06 00:56:07', '2026-01-05 19:55:39', NULL, 'activated', NULL, NULL, 1, '2026-01-05 19:56:07', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ec_customer_addresses`
--

CREATE TABLE `ec_customer_addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(60) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `country` varchar(120) DEFAULT NULL,
  `state` varchar(120) DEFAULT NULL,
  `city` varchar(120) DEFAULT NULL,
  `address` varchar(191) DEFAULT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_customer_addresses`
--

INSERT INTO `ec_customer_addresses` (`id`, `name`, `email`, `phone`, `country`, `state`, `city`, `address`, `customer_id`, `is_default`, `created_at`, `updated_at`, `zip_code`) VALUES
(1, 'Yvonne Howell', 'customer@botble.com', '+19866741378', 'CM', 'West Virginia', 'Edenmouth', '5051 Reynolds Prairie', 1, 1, '2026-01-06 00:55:37', '2026-01-06 00:55:37', '30211'),
(2, 'Yvonne Howell', 'customer@botble.com', '+19866918851', 'GY', 'Georgia', 'Schummside', '158 Toni Avenue', 1, 0, '2026-01-06 00:55:37', '2026-01-06 00:55:37', '14506-5631'),
(3, 'Sibyl Welch', 'vendor@botble.com', '+12812817477', 'MF', 'Iowa', 'Nolanview', '61032 Bailey Place Apt. 127', 2, 1, '2026-01-06 00:55:37', '2026-01-06 00:55:37', '01444-1088'),
(4, 'Sibyl Welch', 'vendor@botble.com', '+12485315932', 'SI', 'Wyoming', 'Rettamouth', '14312 Schuppe Falls Suite 734', 2, 0, '2026-01-06 00:55:37', '2026-01-06 00:55:37', '47650-2062'),
(5, 'Claudie Keeling', 'nasir82@example.org', '+12078281402', 'TF', 'Alabama', 'Dedrickshire', '45928 Theresia Causeway', 3, 1, '2026-01-06 00:55:37', '2026-01-06 00:55:37', '67594-2248'),
(6, 'Bettye Schuster', 'casper42@example.net', '+19724889981', 'SH', 'Vermont', 'East Jillianshire', '57567 Margarete Lodge', 4, 1, '2026-01-06 00:55:37', '2026-01-06 00:55:37', '89183-0374'),
(7, 'Johan Walter', 'price.lyric@example.org', '+18488875405', 'AZ', 'Wisconsin', 'Heidenreichmouth', '714 Oberbrunner Bridge', 5, 1, '2026-01-06 00:55:38', '2026-01-06 00:55:38', '15977'),
(8, 'Zoey Yundt', 'corwin.justus@example.com', '+19368851987', 'YT', 'Wyoming', 'Miloberg', '29768 Nikolaus Avenue', 6, 1, '2026-01-06 00:55:38', '2026-01-06 00:55:38', '44888'),
(9, 'Quinn Klein', 'jaden.mueller@example.com', '+16416960026', 'CG', 'North Carolina', 'Trompmouth', '150 Yasmeen Streets', 7, 1, '2026-01-06 00:55:38', '2026-01-06 00:55:38', '93490-8918'),
(10, 'Sandy Effertz', 'lucienne86@example.net', '+14054997446', 'KR', 'Utah', 'Hoppechester', '4893 Jaskolski Mall Apt. 989', 8, 1, '2026-01-06 00:55:38', '2026-01-06 00:55:38', '02920'),
(11, 'Katelyn Smitham', 'leatha.beatty@example.com', '+15092894569', 'GS', 'Vermont', 'Hermistonport', '520 Zora Junction Apt. 769', 9, 1, '2026-01-06 00:55:39', '2026-01-06 00:55:39', '41776-6762'),
(12, 'Connie Lueilwitz', 'ludwig37@example.org', '+18287689906', 'HK', 'North Carolina', 'Diannaville', '23248 Franecki Fields', 10, 1, '2026-01-06 00:55:39', '2026-01-06 00:55:39', '78705');

-- --------------------------------------------------------

--
-- Table structure for table `ec_customer_deletion_requests`
--

CREATE TABLE `ec_customer_deletion_requests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `customer_name` varchar(191) DEFAULT NULL,
  `customer_phone` varchar(191) DEFAULT NULL,
  `customer_email` varchar(191) DEFAULT NULL,
  `token` varchar(191) NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'waiting_for_confirmation',
  `reason` text DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_customer_password_resets`
--

CREATE TABLE `ec_customer_password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_customer_recently_viewed_products`
--

CREATE TABLE `ec_customer_recently_viewed_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_customer_used_coupons`
--

CREATE TABLE `ec_customer_used_coupons` (
  `discount_id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_discounts`
--

CREATE TABLE `ec_discounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(120) DEFAULT NULL,
  `code` varchar(20) DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `total_used` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `value` double DEFAULT NULL,
  `type` varchar(60) DEFAULT 'coupon',
  `can_use_with_promotion` tinyint(1) NOT NULL DEFAULT 0,
  `can_use_with_flash_sale` tinyint(1) NOT NULL DEFAULT 0,
  `discount_on` varchar(20) DEFAULT NULL,
  `product_quantity` int(10) UNSIGNED DEFAULT NULL,
  `type_option` varchar(100) NOT NULL DEFAULT 'amount',
  `target` varchar(100) NOT NULL DEFAULT 'all-orders',
  `min_order_price` decimal(15,2) DEFAULT NULL,
  `apply_via_url` tinyint(1) NOT NULL DEFAULT 0,
  `display_at_checkout` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL,
  `store_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_discounts`
--

INSERT INTO `ec_discounts` (`id`, `title`, `code`, `start_date`, `end_date`, `quantity`, `total_used`, `value`, `type`, `can_use_with_promotion`, `can_use_with_flash_sale`, `discount_on`, `product_quantity`, `type_option`, `target`, `min_order_price`, `apply_via_url`, `display_at_checkout`, `created_at`, `updated_at`, `description`, `store_id`) VALUES
(1, 'Discount 1', 'PHAJGYVBNAK8', '2026-01-04 19:55:40', NULL, NULL, 0, 49, 'coupon', 0, 0, NULL, NULL, 'percentage', 'all-orders', NULL, 0, 1, '2026-01-06 00:55:40', '2026-01-06 00:55:40', NULL, NULL),
(2, 'Discount 2', '99EJQB7HDZCU', '2026-01-04 19:55:40', NULL, NULL, 0, 766, 'coupon', 0, 0, NULL, NULL, 'shipping', 'all-orders', NULL, 0, 1, '2026-01-06 00:55:40', '2026-01-06 00:55:40', NULL, NULL),
(3, 'Discount 3', 'XMVK8LIYFZNW', '2026-01-04 19:55:40', '2026-02-03 19:55:40', NULL, 0, 59, 'coupon', 0, 0, NULL, NULL, 'percentage', 'all-orders', NULL, 0, 1, '2026-01-06 00:55:40', '2026-01-06 00:55:40', NULL, NULL),
(4, 'Discount 4', 'LX5PZS7Z9TBL', '2026-01-04 19:55:40', '2026-01-24 19:55:40', NULL, 0, 216, 'coupon', 0, 0, NULL, NULL, 'shipping', 'all-orders', NULL, 0, 1, '2026-01-06 00:55:40', '2026-01-06 00:55:40', NULL, NULL),
(5, 'Discount 5', '1A7AHD4EKQSB', '2026-01-04 19:55:40', '2026-01-17 19:55:40', NULL, 0, 81, 'coupon', 0, 0, NULL, NULL, 'percentage', 'all-orders', NULL, 0, 1, '2026-01-06 00:55:40', '2026-01-06 00:55:40', NULL, NULL),
(6, 'Discount 6', 'E7VCKRDYOQ34', '2026-01-04 19:55:40', NULL, NULL, 0, 21, 'coupon', 0, 0, NULL, NULL, 'percentage', 'all-orders', NULL, 0, 1, '2026-01-06 00:55:40', '2026-01-06 00:55:40', NULL, NULL),
(7, 'Discount 7', 'E7UGIDFYEGPQ', '2026-01-04 19:55:40', NULL, NULL, 0, 828, 'coupon', 0, 0, NULL, NULL, 'amount', 'all-orders', NULL, 0, 1, '2026-01-06 00:55:40', '2026-01-06 00:55:40', NULL, NULL),
(8, 'Discount 8', '1RWSP1WXE7FL', '2026-01-04 19:55:40', NULL, NULL, 0, 44, 'coupon', 0, 0, NULL, NULL, 'percentage', 'all-orders', NULL, 0, 1, '2026-01-06 00:55:40', '2026-01-06 00:55:40', NULL, NULL),
(9, 'Discount 9', 'MYRZOGPQZVGT', '2026-01-04 19:55:40', '2026-01-18 19:55:40', NULL, 0, 50, 'coupon', 0, 0, NULL, NULL, 'same-price', 'all-orders', NULL, 0, 1, '2026-01-06 00:55:40', '2026-01-06 00:55:40', NULL, NULL),
(10, 'Discount 10', '4XEYBQUSLPO6', '2026-01-04 19:55:40', NULL, NULL, 0, 591, 'coupon', 0, 0, NULL, NULL, 'amount', 'all-orders', NULL, 0, 1, '2026-01-06 00:55:40', '2026-01-06 00:55:40', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ec_discount_customers`
--

CREATE TABLE `ec_discount_customers` (
  `discount_id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_discount_products`
--

CREATE TABLE `ec_discount_products` (
  `discount_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_discount_product_categories`
--

CREATE TABLE `ec_discount_product_categories` (
  `discount_id` bigint(20) UNSIGNED NOT NULL,
  `product_category_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_discount_product_collections`
--

CREATE TABLE `ec_discount_product_collections` (
  `discount_id` bigint(20) UNSIGNED NOT NULL,
  `product_collection_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_flash_sales`
--

CREATE TABLE `ec_flash_sales` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `end_date` datetime NOT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_flash_sales`
--

INSERT INTO `ec_flash_sales` (`id`, `name`, `end_date`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Deal of the Day', '2026-01-21 00:00:00', 'published', '2026-01-06 00:55:40', '2026-01-06 00:55:40'),
(2, 'Winter Sale', '2026-02-18 00:00:00', 'published', '2026-01-06 00:55:40', '2026-01-06 00:55:40'),
(3, 'Gadgets &amp; Accessories', '2026-02-21 00:00:00', 'published', '2026-01-06 00:55:40', '2026-01-06 00:55:40'),
(4, 'Hot products', '2026-02-25 00:00:00', 'published', '2026-01-06 00:55:40', '2026-01-06 00:55:40'),
(5, 'Best sale items', '2026-02-13 00:00:00', 'published', '2026-01-06 00:55:40', '2026-01-06 00:55:40');

-- --------------------------------------------------------

--
-- Table structure for table `ec_flash_sales_translations`
--

CREATE TABLE `ec_flash_sales_translations` (
  `lang_code` varchar(191) NOT NULL,
  `ec_flash_sales_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_flash_sales_translations`
--

INSERT INTO `ec_flash_sales_translations` (`lang_code`, `ec_flash_sales_id`, `name`) VALUES
('ar', 1, 'صفقات اليوم');

-- --------------------------------------------------------

--
-- Table structure for table `ec_flash_sale_products`
--

CREATE TABLE `ec_flash_sale_products` (
  `flash_sale_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `price` double UNSIGNED DEFAULT NULL,
  `quantity` int(10) UNSIGNED DEFAULT NULL,
  `sold` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_flash_sale_products`
--

INSERT INTO `ec_flash_sale_products` (`flash_sale_id`, `product_id`, `price`, `quantity`, `sold`) VALUES
(1, 15, 362.94, 15, 3),
(2, 20, 195.36, 11, 1),
(3, 1, 717.69, 9, 4),
(4, 14, 1754.25, 17, 5),
(5, 22, 594.66, 8, 3),
(5, 1, 778.77, 12, 3),
(5, 2, 577.92, 11, 2),
(5, 3, 1209.62, 10, 2),
(5, 4, 47.52, 19, 2),
(5, 5, 961, 19, 5);

-- --------------------------------------------------------

--
-- Table structure for table `ec_global_options`
--

CREATE TABLE `ec_global_options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL COMMENT 'Name of options',
  `option_type` varchar(191) NOT NULL COMMENT 'option type',
  `required` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'Checked if this option is required',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_global_options`
--

INSERT INTO `ec_global_options` (`id`, `name`, `option_type`, `required`, `created_at`, `updated_at`) VALUES
(1, 'Warranty', 'Botble\\Ecommerce\\Option\\OptionType\\RadioButton', 1, '2026-01-06 00:56:02', '2026-01-06 00:56:02'),
(2, 'RAM', 'Botble\\Ecommerce\\Option\\OptionType\\RadioButton', 1, '2026-01-06 00:56:02', '2026-01-06 00:56:02'),
(3, 'CPU', 'Botble\\Ecommerce\\Option\\OptionType\\RadioButton', 1, '2026-01-06 00:56:02', '2026-01-06 00:56:02'),
(4, 'HDD', 'Botble\\Ecommerce\\Option\\OptionType\\Dropdown', 0, '2026-01-06 00:56:02', '2026-01-06 00:56:02');

-- --------------------------------------------------------

--
-- Table structure for table `ec_global_options_translations`
--

CREATE TABLE `ec_global_options_translations` (
  `lang_code` varchar(191) NOT NULL,
  `ec_global_options_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_global_option_value`
--

CREATE TABLE `ec_global_option_value` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `option_id` bigint(20) UNSIGNED NOT NULL COMMENT 'option id',
  `option_value` tinytext DEFAULT NULL COMMENT 'option value',
  `affect_price` double DEFAULT NULL COMMENT 'value of price of this option affect',
  `order` int(11) NOT NULL DEFAULT 9999,
  `affect_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0. fixed 1. percent',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_global_option_value`
--

INSERT INTO `ec_global_option_value` (`id`, `option_id`, `option_value`, `affect_price`, `order`, `affect_type`, `created_at`, `updated_at`) VALUES
(1, 1, '1 Year', 0, 9999, 0, '2026-01-06 00:56:02', '2026-01-06 00:56:02'),
(2, 1, '2 Year', 10, 9999, 0, '2026-01-06 00:56:02', '2026-01-06 00:56:02'),
(3, 1, '3 Year', 20, 9999, 0, '2026-01-06 00:56:02', '2026-01-06 00:56:02'),
(4, 2, '4GB', 0, 9999, 0, '2026-01-06 00:56:02', '2026-01-06 00:56:02'),
(5, 2, '8GB', 10, 9999, 0, '2026-01-06 00:56:02', '2026-01-06 00:56:02'),
(6, 2, '16GB', 20, 9999, 0, '2026-01-06 00:56:02', '2026-01-06 00:56:02'),
(7, 3, 'Core i5', 0, 9999, 0, '2026-01-06 00:56:02', '2026-01-06 00:56:02'),
(8, 3, 'Core i7', 10, 9999, 0, '2026-01-06 00:56:02', '2026-01-06 00:56:02'),
(9, 3, 'Core i9', 20, 9999, 0, '2026-01-06 00:56:02', '2026-01-06 00:56:02'),
(10, 4, '128GB', 0, 9999, 0, '2026-01-06 00:56:02', '2026-01-06 00:56:02'),
(11, 4, '256GB', 10, 9999, 0, '2026-01-06 00:56:02', '2026-01-06 00:56:02'),
(12, 4, '512GB', 20, 9999, 0, '2026-01-06 00:56:02', '2026-01-06 00:56:02');

-- --------------------------------------------------------

--
-- Table structure for table `ec_global_option_value_translations`
--

CREATE TABLE `ec_global_option_value_translations` (
  `lang_code` varchar(191) NOT NULL,
  `ec_global_option_value_id` bigint(20) UNSIGNED NOT NULL,
  `option_value` varchar(191) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_grouped_products`
--

CREATE TABLE `ec_grouped_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_product_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `fixed_qty` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_invoices`
--

CREATE TABLE `ec_invoices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `reference_type` varchar(191) NOT NULL,
  `reference_id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(191) NOT NULL,
  `customer_name` varchar(191) DEFAULT NULL,
  `company_name` varchar(191) DEFAULT NULL,
  `company_logo` varchar(191) DEFAULT NULL,
  `customer_email` varchar(191) DEFAULT NULL,
  `customer_phone` varchar(191) DEFAULT NULL,
  `customer_address` varchar(191) DEFAULT NULL,
  `customer_country` varchar(191) DEFAULT NULL,
  `customer_state` varchar(191) DEFAULT NULL,
  `customer_city` varchar(191) DEFAULT NULL,
  `customer_zip_code` varchar(191) DEFAULT NULL,
  `customer_address_line` varchar(191) DEFAULT NULL,
  `customer_tax_id` varchar(191) DEFAULT NULL,
  `sub_total` decimal(15,2) UNSIGNED NOT NULL,
  `tax_amount` decimal(15,2) DEFAULT 0.00,
  `shipping_amount` decimal(15,2) UNSIGNED NOT NULL DEFAULT 0.00,
  `payment_fee` decimal(15,2) DEFAULT 0.00,
  `discount_amount` decimal(15,2) UNSIGNED NOT NULL DEFAULT 0.00,
  `shipping_option` varchar(60) DEFAULT NULL,
  `shipping_method` varchar(60) NOT NULL DEFAULT 'default',
  `coupon_code` varchar(120) DEFAULT NULL,
  `discount_description` varchar(191) DEFAULT NULL,
  `amount` decimal(15,2) UNSIGNED NOT NULL,
  `description` text DEFAULT NULL,
  `payment_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status` varchar(191) NOT NULL DEFAULT 'pending',
  `paid_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_invoice_items`
--

CREATE TABLE `ec_invoice_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_id` bigint(20) UNSIGNED NOT NULL,
  `reference_type` varchar(191) NOT NULL,
  `reference_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` varchar(400) DEFAULT NULL,
  `image` varchar(191) DEFAULT NULL,
  `qty` int(10) UNSIGNED NOT NULL,
  `price` decimal(15,2) NOT NULL DEFAULT 0.00,
  `sub_total` decimal(15,2) UNSIGNED NOT NULL,
  `tax_amount` decimal(15,2) UNSIGNED NOT NULL DEFAULT 0.00,
  `discount_amount` decimal(15,2) UNSIGNED NOT NULL DEFAULT 0.00,
  `amount` decimal(15,2) UNSIGNED NOT NULL,
  `options` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_options`
--

CREATE TABLE `ec_options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL COMMENT 'Name of options',
  `option_type` varchar(191) DEFAULT NULL COMMENT 'option type',
  `product_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `order` int(11) NOT NULL DEFAULT 9999,
  `required` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'Checked if this option is required',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_options_translations`
--

CREATE TABLE `ec_options_translations` (
  `lang_code` varchar(191) NOT NULL,
  `ec_options_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_option_value`
--

CREATE TABLE `ec_option_value` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `option_id` bigint(20) UNSIGNED NOT NULL COMMENT 'option id',
  `option_value` tinytext DEFAULT NULL COMMENT 'option value',
  `affect_price` double DEFAULT NULL COMMENT 'value of price of this option affect',
  `order` int(11) NOT NULL DEFAULT 9999,
  `affect_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0. fixed 1. percent',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_option_value_translations`
--

CREATE TABLE `ec_option_value_translations` (
  `lang_code` varchar(191) NOT NULL,
  `ec_option_value_id` bigint(20) UNSIGNED NOT NULL,
  `option_value` varchar(191) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_orders`
--

CREATE TABLE `ec_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(191) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `shipping_option` varchar(60) DEFAULT NULL,
  `shipping_method` varchar(60) NOT NULL DEFAULT 'default',
  `status` varchar(120) NOT NULL DEFAULT 'pending',
  `amount` decimal(15,2) NOT NULL,
  `tax_amount` decimal(15,2) DEFAULT 0.00,
  `shipping_amount` decimal(15,2) DEFAULT NULL,
  `payment_fee` decimal(15,2) DEFAULT 0.00,
  `description` text DEFAULT NULL,
  `coupon_code` varchar(120) DEFAULT NULL,
  `discount_amount` decimal(15,2) DEFAULT NULL,
  `sub_total` decimal(15,2) NOT NULL,
  `is_confirmed` tinyint(1) NOT NULL DEFAULT 0,
  `discount_description` varchar(191) DEFAULT NULL,
  `is_finished` tinyint(1) DEFAULT 0,
  `cancellation_reason` varchar(191) DEFAULT NULL,
  `cancellation_reason_description` varchar(191) DEFAULT NULL,
  `completed_at` timestamp NULL DEFAULT NULL,
  `token` varchar(120) DEFAULT NULL,
  `payment_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `proof_file` varchar(191) DEFAULT NULL,
  `private_notes` text DEFAULT NULL,
  `store_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_orders`
--

INSERT INTO `ec_orders` (`id`, `code`, `user_id`, `shipping_option`, `shipping_method`, `status`, `amount`, `tax_amount`, `shipping_amount`, `payment_fee`, `description`, `coupon_code`, `discount_amount`, `sub_total`, `is_confirmed`, `discount_description`, `is_finished`, `cancellation_reason`, `cancellation_reason_description`, `completed_at`, `token`, `payment_id`, `created_at`, `updated_at`, `proof_file`, `private_notes`, `store_id`) VALUES
(1, '#SF-10000001', 0, NULL, 'default', 'pending', 1650.68, 215.30, 0.00, 0.00, NULL, NULL, 0.00, 1435.38, 0, NULL, 0, NULL, NULL, NULL, '6cb8de6b0582ec1845094f582bc005d0', NULL, '2026-01-06 02:07:29', '2026-01-06 02:07:29', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ec_order_addresses`
--

CREATE TABLE `ec_order_addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(191) DEFAULT NULL,
  `country` varchar(120) DEFAULT NULL,
  `state` varchar(120) DEFAULT NULL,
  `city` varchar(120) DEFAULT NULL,
  `address` varchar(191) DEFAULT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `zip_code` varchar(20) DEFAULT NULL,
  `type` varchar(60) NOT NULL DEFAULT 'shipping_address'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_order_histories`
--

CREATE TABLE `ec_order_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `action` varchar(120) NOT NULL,
  `description` varchar(400) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `extras` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_order_product`
--

CREATE TABLE `ec_order_product` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `price` decimal(15,2) NOT NULL,
  `tax_amount` decimal(15,2) DEFAULT 0.00,
  `options` text DEFAULT NULL,
  `product_options` text DEFAULT NULL COMMENT 'product option data',
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `product_name` varchar(191) NOT NULL,
  `product_image` varchar(191) DEFAULT NULL,
  `weight` double DEFAULT 0,
  `restock_quantity` int(10) UNSIGNED DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `product_type` varchar(60) NOT NULL DEFAULT 'physical',
  `times_downloaded` int(11) NOT NULL DEFAULT 0,
  `license_code` text DEFAULT NULL,
  `downloaded_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_order_product`
--

INSERT INTO `ec_order_product` (`id`, `order_id`, `qty`, `price`, `tax_amount`, `options`, `product_options`, `product_id`, `product_name`, `product_image`, `weight`, `restock_quantity`, `created_at`, `updated_at`, `product_type`, `times_downloaded`, `license_code`, `downloaded_at`) VALUES
(1, 1, 2, 717.69, 215.30, '{\"image\":\"products\\/1.jpg\",\"attributes\":\"\",\"taxRate\":15,\"taxClasses\":{\"Import Tax\":\"15\"},\"options\":[],\"extras\":[],\"sku\":\"UH-180\",\"weight\":748}', '[]', 1, 'تليفزيون سامسونج 55 بوصة سمارت 4K', 'products/1.jpg', 1496, 0, '2026-01-06 02:07:29', '2026-01-06 02:07:29', 'physical', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ec_order_referrals`
--

CREATE TABLE `ec_order_referrals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ip` varchar(39) DEFAULT NULL,
  `landing_domain` varchar(191) DEFAULT NULL,
  `landing_page` varchar(191) DEFAULT NULL,
  `landing_params` varchar(191) DEFAULT NULL,
  `referral` varchar(191) DEFAULT NULL,
  `gclid` varchar(191) DEFAULT NULL,
  `fclid` varchar(191) DEFAULT NULL,
  `utm_source` varchar(191) DEFAULT NULL,
  `utm_campaign` varchar(191) DEFAULT NULL,
  `utm_medium` varchar(191) DEFAULT NULL,
  `utm_term` varchar(191) DEFAULT NULL,
  `utm_content` varchar(191) DEFAULT NULL,
  `referrer_url` text DEFAULT NULL,
  `referrer_domain` varchar(191) DEFAULT NULL,
  `order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_order_returns`
--

CREATE TABLE `ec_order_returns` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(191) DEFAULT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL COMMENT 'Order ID',
  `store_id` bigint(20) UNSIGNED DEFAULT NULL COMMENT 'Store ID',
  `user_id` bigint(20) UNSIGNED NOT NULL COMMENT 'Customer ID',
  `reason` text DEFAULT NULL COMMENT 'Reason return order',
  `order_status` varchar(191) DEFAULT NULL COMMENT 'Order current status',
  `return_status` varchar(191) NOT NULL COMMENT 'Return status',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_order_return_histories`
--

CREATE TABLE `ec_order_return_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `order_return_id` bigint(20) UNSIGNED NOT NULL,
  `action` varchar(191) NOT NULL,
  `description` varchar(400) DEFAULT NULL,
  `reason` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_order_return_items`
--

CREATE TABLE `ec_order_return_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_return_id` bigint(20) UNSIGNED NOT NULL COMMENT 'Order return id',
  `order_product_id` bigint(20) UNSIGNED NOT NULL COMMENT 'Order product id',
  `product_id` bigint(20) UNSIGNED NOT NULL COMMENT 'Product id',
  `product_name` varchar(191) NOT NULL,
  `product_image` varchar(191) DEFAULT NULL,
  `qty` int(11) NOT NULL COMMENT 'Quantity return',
  `price` decimal(15,2) NOT NULL COMMENT 'Price Product',
  `reason` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `refund_amount` decimal(12,2) DEFAULT 0.00
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_order_tax_information`
--

CREATE TABLE `ec_order_tax_information` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `company_name` varchar(120) NOT NULL,
  `company_address` varchar(191) NOT NULL,
  `company_tax_code` varchar(20) NOT NULL,
  `company_email` varchar(60) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_products`
--

CREATE TABLE `ec_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `slug` varchar(191) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `images` text DEFAULT NULL,
  `video_media` text DEFAULT NULL,
  `sku` varchar(191) DEFAULT NULL,
  `order` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `quantity` int(10) UNSIGNED DEFAULT NULL,
  `allow_checkout_when_out_of_stock` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `with_storehouse_management` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `stock_status` varchar(191) DEFAULT 'in_stock',
  `is_featured` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `brand_id` bigint(20) UNSIGNED DEFAULT NULL,
  `is_variation` tinyint(4) NOT NULL DEFAULT 0,
  `variations_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `reviews_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `reviews_avg` decimal(3,2) NOT NULL DEFAULT 0.00,
  `sale_type` tinyint(4) NOT NULL DEFAULT 0,
  `price` double UNSIGNED DEFAULT NULL,
  `sale_price` double UNSIGNED DEFAULT NULL,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `length` double DEFAULT NULL,
  `wide` double DEFAULT NULL,
  `height` double DEFAULT NULL,
  `weight` double DEFAULT NULL,
  `tax_id` bigint(20) UNSIGNED DEFAULT NULL,
  `views` bigint(20) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by_id` bigint(20) UNSIGNED DEFAULT 0,
  `created_by_type` varchar(191) NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `image` varchar(191) DEFAULT NULL,
  `product_type` varchar(60) DEFAULT 'physical',
  `barcode` varchar(150) DEFAULT NULL,
  `cost_per_item` double DEFAULT NULL,
  `generate_license_code` tinyint(1) NOT NULL DEFAULT 0,
  `license_code_type` enum('auto_generate','pick_from_list') NOT NULL DEFAULT 'auto_generate',
  `minimum_order_quantity` int(10) UNSIGNED DEFAULT 0,
  `maximum_order_quantity` int(10) UNSIGNED DEFAULT 0,
  `notify_attachment_updated` tinyint(1) NOT NULL DEFAULT 0,
  `specification_table_id` bigint(20) UNSIGNED DEFAULT NULL,
  `store_id` bigint(20) UNSIGNED DEFAULT NULL,
  `approved_by` bigint(20) UNSIGNED DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_products`
--

INSERT INTO `ec_products` (`id`, `name`, `slug`, `description`, `content`, `status`, `images`, `video_media`, `sku`, `order`, `quantity`, `allow_checkout_when_out_of_stock`, `with_storehouse_management`, `stock_status`, `is_featured`, `brand_id`, `is_variation`, `variations_count`, `reviews_count`, `reviews_avg`, `sale_type`, `price`, `sale_price`, `start_date`, `end_date`, `length`, `wide`, `height`, `weight`, `tax_id`, `views`, `created_at`, `updated_at`, `created_by_id`, `created_by_type`, `image`, `product_type`, `barcode`, `cost_per_item`, `generate_license_code`, `license_code_type`, `minimum_order_quantity`, `maximum_order_quantity`, `notify_attachment_updated`, `specification_table_id`, `store_id`, `approved_by`) VALUES
(1, 'تليفزيون سامسونج 55 بوصة سمارت 4K', 'tlyfzyon-samsong-55-bos-smart-4k', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n', 'published', '[\"products\\/1.jpg\",\"products\\/1-1.jpg\"]', NULL, 'UH-180', 0, 17, 0, 1, 'in_stock', 1, 3, 0, 0, 10, 3.30, 0, 1747, 1527, NULL, NULL, 13, 11, 12, 748, NULL, 46864, '2026-01-06 00:55:29', '2026-01-06 00:56:07', 0, 'Botble\\ACL\\Models\\User', NULL, 'physical', '9786002120847', NULL, 0, 'auto_generate', 0, 0, 0, 2, 1, 0),
(2, 'ثلاجة ال جي 18 قدم نوفروست سيلفر', 'thlag-al-gy-18-kdm-nofrost-sylfr', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n', 'published', '[\"products\\/2.jpg\",\"products\\/2-1.jpg\"]', NULL, '3W-160', 0, 14, 0, 1, 'in_stock', 1, 5, 0, 0, 10, 2.60, 0, 1384, 688, NULL, NULL, 11, 18, 14, 588, NULL, 157801, '2026-01-06 00:55:30', '2026-01-06 00:56:07', 0, 'Botble\\ACL\\Models\\User', NULL, 'physical', '6599745902440', NULL, 0, 'auto_generate', 0, 0, 0, 2, 5, 0),
(3, 'غسالة توشيبا فوق اتوماتيك 10 كيلو', 'ghsal-toshyba-fok-atomatyk-10-kylo', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n', 'published', '[\"products\\/3.jpg\",\"products\\/3-1.jpg\"]', NULL, '8Q-169-A1', 0, 14, 0, 1, 'in_stock', 1, 2, 0, 4, 10, 2.30, 0, 1951, NULL, NULL, NULL, 12, 19, 16, 653, NULL, 125964, '2026-01-06 00:55:30', '2026-01-06 00:56:07', 0, 'Botble\\ACL\\Models\\User', NULL, 'physical', '8519529001730', NULL, 0, 'auto_generate', 0, 0, 0, 1, 1, 0),
(4, 'تكييف شارب 1.5 حصان بارد ساخن انفرتر (Digital)', 'tkyyf-sharb-15-hsan-bard-sakhn-anfrtr', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n', 'published', '[\"products\\/4.jpg\",\"products\\/4-1.jpg\"]', NULL, 'JK-200', 0, 18, 0, 1, 'in_stock', 1, 6, 0, 0, 9, 3.22, 0, 726, 88, NULL, NULL, 11, 19, 19, 523, NULL, 121639, '2026-01-06 00:55:30', '2026-01-06 00:56:07', 0, 'Botble\\ACL\\Models\\User', NULL, 'digital', '0593656194549', NULL, 0, 'auto_generate', 0, 0, 0, 2, 4, 0),
(5, 'بوتاجاز فريش 5 شعلة ستانلس ستيل', 'botagaz-frysh-5-shaal-stanls-styl', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n', 'published', '[\"products\\/5.jpg\",\"products\\/5-1.jpg\"]', NULL, 'GJ-105-A1', 0, 18, 0, 1, 'in_stock', 1, 2, 0, 2, 10, 2.90, 0, 1922, NULL, NULL, NULL, 14, 10, 18, 866, NULL, 154508, '2026-01-06 00:55:30', '2026-01-06 00:56:07', 0, 'Botble\\ACL\\Models\\User', NULL, 'physical', '5580341876915', NULL, 0, 'auto_generate', 0, 0, 0, 2, 2, 0),
(6, 'سخان اوليمبيك كهرباء 50 لتر', 'skhan-aolymbyk-khrbaaa-50-ltr', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n', 'published', '[\"products\\/6.jpg\",\"products\\/6-1.jpg\"]', NULL, 'VK-102', 0, 14, 0, 1, 'in_stock', 1, 4, 0, 0, 10, 3.00, 0, 668, 387, NULL, NULL, 10, 16, 13, 519, NULL, 21177, '2026-01-06 00:55:30', '2026-01-06 00:56:07', 0, 'Botble\\ACL\\Models\\User', NULL, 'physical', '7989683603537', NULL, 0, 'auto_generate', 0, 0, 0, 2, 6, 0),
(7, 'شاشة ال جي 43 بوصة سمارت FHD', 'shash-al-gy-43-bos-smart-fhd', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n', 'published', '[\"products\\/7.jpg\",\"products\\/7-1.jpg\"]', NULL, 'JS-155-A1', 0, 19, 0, 1, 'in_stock', 1, 7, 0, 2, 10, 4.40, 0, 1151, NULL, NULL, NULL, 19, 18, 18, 816, NULL, 77410, '2026-01-06 00:55:30', '2026-01-06 00:56:07', 0, 'Botble\\ACL\\Models\\User', NULL, 'physical', '2235034713789', NULL, 0, 'auto_generate', 0, 0, 0, 1, 5, 0),
(8, 'ديب فريزر توشيبا 5 درج نوفروست (Digital)', 'dyb-fryzr-toshyba-5-drg-nofrost', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n', 'published', '[\"products\\/8.jpg\",\"products\\/8-1.jpg\"]', NULL, 'Y8-180-A1', 0, 13, 0, 1, 'in_stock', 1, 1, 0, 2, 10, 2.50, 0, 913, 812.57, NULL, NULL, 18, 11, 14, 644, NULL, 148094, '2026-01-06 00:55:30', '2026-01-06 00:56:07', 0, 'Botble\\ACL\\Models\\User', NULL, 'digital', '5847452529438', NULL, 0, 'auto_generate', 0, 0, 0, 1, 4, 0),
(9, 'غسالة اطباق بوش 12 فرد ستانلس', 'ghsal-atbak-bosh-12-frd-stanls', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n', 'published', '[\"products\\/9.jpg\",\"products\\/9-1.jpg\"]', NULL, 'LS-119-A1', 0, 18, 0, 1, 'in_stock', 1, 7, 0, 2, 10, 2.40, 0, 1256, NULL, NULL, NULL, 11, 11, 10, 770, NULL, 69812, '2026-01-06 00:55:30', '2026-01-06 00:56:07', 0, 'Botble\\ACL\\Models\\User', NULL, 'physical', '1772595503103', NULL, 0, 'auto_generate', 0, 0, 0, 1, 2, 0),
(10, 'مروحة تورنيدو سقف 56 بوصة ابيض', 'mroh-tornydo-skf-56-bos-abyd', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n', 'published', '[\"products\\/10.jpg\",\"products\\/10-1.jpg\"]', NULL, 'WI-118', 0, 13, 0, 1, 'in_stock', 1, 5, 0, 0, 10, 2.80, 0, 1102, 45, NULL, NULL, 18, 17, 14, 843, NULL, 66644, '2026-01-06 00:55:30', '2026-01-06 00:56:07', 0, 'Botble\\ACL\\Models\\User', NULL, 'physical', '8485869385406', NULL, 0, 'auto_generate', 0, 0, 0, 1, 6, 0),
(11, 'ميكروويف سامسونج 40 لتر ديجيتال', 'mykrooyf-samsong-40-ltr-dygytal', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n', 'published', '[\"products\\/11.jpg\",\"products\\/11-1.jpg\"]', NULL, 'I9-126-A1', 0, 17, 0, 1, 'in_stock', 1, 6, 0, 1, 10, 3.20, 0, 2086, NULL, NULL, NULL, 10, 11, 10, 792, NULL, 61574, '2026-01-06 00:55:30', '2026-01-06 00:56:08', 0, 'Botble\\ACL\\Models\\User', NULL, 'physical', '9877805701156', NULL, 0, 'auto_generate', 0, 0, 0, 2, 1, 0),
(12, 'مبرد مياه تورنيدو 2 حنفية بارد ساخن (Digital)', 'mbrd-myah-tornydo-2-hnfy-bard-sakhn', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n', 'published', '[\"products\\/12.jpg\",\"products\\/12-1.jpg\"]', NULL, '1P-178-A1', 0, 16, 0, 1, 'in_stock', 1, 5, 0, 4, 9, 3.00, 0, 1050, 756, NULL, NULL, 14, 20, 11, 538, NULL, 171055, '2026-01-06 00:55:30', '2026-01-06 00:56:08', 0, 'Botble\\ACL\\Models\\User', NULL, 'digital', '6521675192585', NULL, 0, 'auto_generate', 0, 0, 0, 2, 6, 0),
(13, 'شفاط مطبخ فريش 90 سم ستانلس', 'shfat-mtbkh-frysh-90-sm-stanls', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n', 'published', '[\"products\\/13.jpg\",\"products\\/13-1.jpg\"]', NULL, 'XD-111', 0, 16, 0, 1, 'in_stock', 1, 3, 0, 0, 10, 2.90, 0, 386, 313, NULL, NULL, 14, 16, 19, 631, NULL, 66372, '2026-01-06 00:55:30', '2026-01-06 00:56:08', 0, 'Botble\\ACL\\Models\\User', NULL, 'physical', '2744853042241', NULL, 0, 'auto_generate', 0, 0, 0, 2, 2, 0),
(14, 'فرن كهربائي تورنيدو 48 لتر', 'frn-khrbayy-tornydo-48-ltr', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n', 'published', '[\"products\\/14.jpg\",\"products\\/14-1.jpg\"]', NULL, 'Q3-199-A1', 0, 17, 0, 1, 'in_stock', 1, 5, 0, 4, 10, 2.90, 0, 2339, NULL, NULL, NULL, 11, 15, 16, 659, NULL, 160180, '2026-01-06 00:55:31', '2026-01-06 00:56:08', 0, 'Botble\\ACL\\Models\\User', NULL, 'physical', '1552461210744', NULL, 0, 'auto_generate', 0, 0, 0, 2, 4, 0),
(15, 'خلاط براون 600 وات مع مطحنة', 'khlat-braon-600-oat-maa-mthn', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n', 'published', '[\"products\\/15.jpg\",\"products\\/15-1.jpg\"]', NULL, 'FO-100-A1', 0, 19, 0, 1, 'in_stock', 1, 1, 0, 5, 10, 3.10, 0, 526, NULL, NULL, NULL, 18, 12, 12, 638, NULL, 160230, '2026-01-06 00:55:31', '2026-01-06 00:56:08', 0, 'Botble\\ACL\\Models\\User', NULL, 'physical', '3161019421105', NULL, 0, 'auto_generate', 0, 0, 0, 2, 5, 0),
(16, 'تليفزيون ال جي 65 بوصة OLED سمارت (Digital)', 'tlyfzyon-al-gy-65-bos-oled-smart', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n', 'published', '[\"products\\/16.jpg\",\"products\\/16-1.jpg\",\"products\\/16-2.jpg\",\"products\\/16-3.jpg\",\"products\\/16-4.jpg\",\"products\\/16-5.jpg\",\"products\\/16-6.jpg\"]', NULL, 'SB-116-A1', 0, 12, 0, 1, 'in_stock', 1, 4, 0, 1, 10, 2.20, 0, 501, 395.79, NULL, NULL, 16, 15, 14, 696, NULL, 195436, '2026-01-06 00:55:31', '2026-01-06 00:56:08', 0, 'Botble\\ACL\\Models\\User', NULL, 'digital', '5609187286280', NULL, 0, 'auto_generate', 0, 0, 0, 2, 6, 0),
(17, 'ثلاجة سامسونج 24 قدم بابين سيلفر', 'thlag-samsong-24-kdm-babyn-sylfr', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n', 'published', '[\"products\\/17.jpg\",\"products\\/17-1.jpg\"]', NULL, 'DR-185-A1', 0, 13, 0, 1, 'in_stock', 1, 5, 0, 2, 10, 2.50, 0, 600, NULL, NULL, NULL, 18, 20, 15, 512, NULL, 174313, '2026-01-06 00:55:31', '2026-01-06 00:56:08', 0, 'Botble\\ACL\\Models\\User', NULL, 'physical', '6377434590488', NULL, 0, 'auto_generate', 0, 0, 0, 2, 2, 0),
(18, 'غسالة ال جي فول اتوماتيك 8 كيلو', 'ghsal-al-gy-fol-atomatyk-8-kylo', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n', 'published', '[\"products\\/18.jpg\",\"products\\/18-1.jpg\"]', NULL, 'E7-198-A1', 0, 18, 0, 1, 'in_stock', 1, 3, 0, 4, 10, 2.70, 0, 1936, NULL, NULL, NULL, 19, 14, 14, 650, NULL, 48139, '2026-01-06 00:55:31', '2026-01-06 00:56:08', 0, 'Botble\\ACL\\Models\\User', NULL, 'physical', '9469861024678', NULL, 0, 'auto_generate', 0, 0, 0, 1, 3, 0),
(19, 'تكييف كاريير 2.25 حصان بارد فقط', 'tkyyf-karyyr-225-hsan-bard-fkt', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n', 'published', '[\"products\\/19.jpg\",\"products\\/19-1.jpg\"]', NULL, 'TH-200', 0, 13, 0, 1, 'in_stock', 1, 2, 0, 0, 10, 2.60, 0, 2164, 2092, NULL, NULL, 12, 16, 11, 814, NULL, 10571, '2026-01-06 00:55:31', '2026-01-06 00:56:08', 0, 'Botble\\ACL\\Models\\User', NULL, 'physical', '3953758335238', NULL, 0, 'auto_generate', 0, 0, 0, 1, 2, 0);
INSERT INTO `ec_products` (`id`, `name`, `slug`, `description`, `content`, `status`, `images`, `video_media`, `sku`, `order`, `quantity`, `allow_checkout_when_out_of_stock`, `with_storehouse_management`, `stock_status`, `is_featured`, `brand_id`, `is_variation`, `variations_count`, `reviews_count`, `reviews_avg`, `sale_type`, `price`, `sale_price`, `start_date`, `end_date`, `length`, `wide`, `height`, `weight`, `tax_id`, `views`, `created_at`, `updated_at`, `created_by_id`, `created_by_type`, `image`, `product_type`, `barcode`, `cost_per_item`, `generate_license_code`, `license_code_type`, `minimum_order_quantity`, `maximum_order_quantity`, `notify_attachment_updated`, `specification_table_id`, `store_id`, `approved_by`) VALUES
(20, 'بوتاجاز يونيون تك 4 شعلة ابيض (Digital)', 'botagaz-yonyon-tk-4-shaal-abyd', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n', 'published', '[\"products\\/20.jpg\",\"products\\/20-1.jpg\"]', NULL, 'ZT-118', 0, 13, 0, 1, 'in_stock', 1, 1, 0, 0, 10, 3.70, 0, 985, 592, NULL, NULL, 12, 16, 16, 580, NULL, 119179, '2026-01-06 00:55:31', '2026-01-06 00:56:08', 0, 'Botble\\ACL\\Models\\User', NULL, 'digital', '0744891294833', NULL, 0, 'auto_generate', 0, 0, 0, 1, 6, 0),
(21, 'سخان غاز اوليمبيك 10 لتر ديجيتال', 'skhan-ghaz-aolymbyk-10-ltr-dygytal', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n', 'published', '[\"products\\/21.jpg\",\"products\\/21-1.jpg\"]', NULL, '1I-144', 0, 18, 0, 1, 'in_stock', 1, 1, 0, 0, 10, 3.60, 0, 657, 14, NULL, NULL, 14, 16, 19, 595, NULL, 73281, '2026-01-06 00:55:31', '2026-01-06 00:56:08', 0, 'Botble\\ACL\\Models\\User', NULL, 'physical', '8192522573505', NULL, 0, 'auto_generate', 0, 0, 0, 1, 5, 0),
(22, 'شاشة سامسونج 50 بوصة كريستال UHD', 'shash-samsong-50-bos-krystal-uhd', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n', 'published', '[\"products\\/22.jpg\",\"products\\/22-1.jpg\"]', NULL, 'ZI-192', 0, 16, 0, 1, 'in_stock', 1, 2, 0, 0, 10, 2.50, 0, 916, 901, NULL, NULL, 12, 19, 10, 679, NULL, 80818, '2026-01-06 00:55:31', '2026-01-06 00:56:08', 0, 'Botble\\ACL\\Models\\User', NULL, 'physical', '8331460373246', NULL, 0, 'auto_generate', 0, 0, 0, 1, 2, 0),
(23, 'ثلاجة شارب 16 قدم نوفروست ابيض', 'thlag-sharb-16-kdm-nofrost-abyd', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n', 'published', '[\"products\\/23.jpg\",\"products\\/23-1.jpg\"]', NULL, 'GC-136-A1', 0, 13, 0, 1, 'in_stock', 1, 4, 0, 3, 10, 2.90, 0, 1558, NULL, NULL, NULL, 15, 18, 13, 700, NULL, 199833, '2026-01-06 00:55:31', '2026-01-06 00:56:08', 0, 'Botble\\ACL\\Models\\User', NULL, 'physical', '2322011433973', NULL, 0, 'auto_generate', 0, 0, 0, 1, 6, 0),
(24, 'غسالة زانوسي فول اتوماتيك 7 كيلو (Digital)', 'ghsal-zanosy-fol-atomatyk-7-kylo', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n', 'published', '[\"products\\/24.jpg\",\"products\\/24-1.jpg\"]', NULL, '9O-125', 0, 15, 0, 1, 'in_stock', 1, 4, 0, 0, 10, 3.20, 0, 1454, 31, NULL, NULL, 12, 12, 14, 537, NULL, 16057, '2026-01-06 00:55:32', '2026-01-06 00:56:08', 0, 'Botble\\ACL\\Models\\User', NULL, 'digital', '3407814229370', NULL, 0, 'auto_generate', 0, 0, 0, 1, 1, 0),
(25, 'غسالة توشيبا فوق اتوماتيك 10 كيلو', NULL, NULL, NULL, 'published', '[\"products\\/3-1.jpg\"]', NULL, '8Q-169-A1', 0, 14, 0, 1, 'in_stock', 0, 2, 1, 0, 0, 0.00, 0, 1951, NULL, NULL, NULL, 12, 19, 16, 653, NULL, 0, '2026-01-06 00:55:32', '2026-01-06 00:56:07', 0, 'Botble\\ACL\\Models\\User', NULL, 'physical', '9003503322526', NULL, 0, 'auto_generate', 0, 0, 0, NULL, NULL, 0),
(26, 'غسالة توشيبا فوق اتوماتيك 10 كيلو', NULL, NULL, NULL, 'published', '[\"products\\/3.jpg\"]', NULL, '8Q-169-A1-A2', 0, 14, 0, 1, 'in_stock', 0, 2, 1, 0, 0, 0.00, 0, 1951, NULL, NULL, NULL, 12, 19, 16, 653, NULL, 0, '2026-01-06 00:55:32', '2026-01-06 00:56:07', 0, 'Botble\\ACL\\Models\\User', NULL, 'physical', '7856783085511', NULL, 0, 'auto_generate', 0, 0, 0, NULL, NULL, 0),
(27, 'غسالة توشيبا فوق اتوماتيك 10 كيلو', NULL, NULL, NULL, 'published', '[\"products\\/3.jpg\"]', NULL, '8Q-169-A1-A3', 0, 14, 0, 1, 'in_stock', 0, 2, 1, 0, 0, 0.00, 0, 1951, NULL, NULL, NULL, 12, 19, 16, 653, NULL, 0, '2026-01-06 00:55:32', '2026-01-06 00:56:07', 0, 'Botble\\ACL\\Models\\User', NULL, 'physical', '5531707632003', NULL, 0, 'auto_generate', 0, 0, 0, NULL, NULL, 0),
(28, 'غسالة توشيبا فوق اتوماتيك 10 كيلو', NULL, NULL, NULL, 'published', '[\"products\\/3.jpg\"]', NULL, '8Q-169-A1-A4', 0, 14, 0, 1, 'in_stock', 0, 2, 1, 0, 0, 0.00, 0, 1951, NULL, NULL, NULL, 12, 19, 16, 653, NULL, 0, '2026-01-06 00:55:32', '2026-01-06 00:56:07', 0, 'Botble\\ACL\\Models\\User', NULL, 'physical', '1490158710095', NULL, 0, 'auto_generate', 0, 0, 0, NULL, NULL, 0),
(29, 'بوتاجاز فريش 5 شعلة ستانلس ستيل', NULL, NULL, NULL, 'published', '[\"products\\/5-1.jpg\"]', NULL, 'GJ-105-A1', 0, 18, 0, 1, 'in_stock', 0, 2, 1, 0, 0, 0.00, 0, 1922, NULL, NULL, NULL, 14, 10, 18, 866, NULL, 0, '2026-01-06 00:55:32', '2026-01-06 00:56:07', 0, 'Botble\\ACL\\Models\\User', NULL, 'physical', '2678819361964', NULL, 0, 'auto_generate', 0, 0, 0, NULL, NULL, 0),
(30, 'بوتاجاز فريش 5 شعلة ستانلس ستيل', NULL, NULL, NULL, 'published', '[\"products\\/5.jpg\"]', NULL, 'GJ-105-A1-A2', 0, 18, 0, 1, 'in_stock', 0, 2, 1, 0, 0, 0.00, 0, 1922, NULL, NULL, NULL, 14, 10, 18, 866, NULL, 0, '2026-01-06 00:55:32', '2026-01-06 00:56:07', 0, 'Botble\\ACL\\Models\\User', NULL, 'physical', '1782100100666', NULL, 0, 'auto_generate', 0, 0, 0, NULL, NULL, 0),
(31, 'شاشة ال جي 43 بوصة سمارت FHD', NULL, NULL, NULL, 'published', '[\"products\\/7-1.jpg\"]', NULL, 'JS-155-A1', 0, 19, 0, 1, 'in_stock', 0, 7, 1, 0, 0, 0.00, 0, 1151, NULL, NULL, NULL, 19, 18, 18, 816, NULL, 0, '2026-01-06 00:55:32', '2026-01-06 00:56:07', 0, 'Botble\\ACL\\Models\\User', NULL, 'physical', '9235518524934', NULL, 0, 'auto_generate', 0, 0, 0, NULL, NULL, 0),
(32, 'شاشة ال جي 43 بوصة سمارت FHD', NULL, NULL, NULL, 'published', '[\"products\\/7.jpg\"]', NULL, 'JS-155-A1-A2', 0, 19, 0, 1, 'in_stock', 0, 7, 1, 0, 0, 0.00, 0, 1151, NULL, NULL, NULL, 19, 18, 18, 816, NULL, 0, '2026-01-06 00:55:32', '2026-01-06 00:56:07', 0, 'Botble\\ACL\\Models\\User', NULL, 'physical', '0911755941688', NULL, 0, 'auto_generate', 0, 0, 0, NULL, NULL, 0),
(33, 'ديب فريزر توشيبا 5 درج نوفروست (Digital)', NULL, NULL, NULL, 'published', '[\"products\\/8-1.jpg\"]', NULL, 'Y8-180-A1', 0, 13, 0, 1, 'in_stock', 0, 1, 1, 0, 0, 0.00, 0, 913, 812.57, NULL, NULL, 18, 11, 14, 644, NULL, 0, '2026-01-06 00:55:32', '2026-01-06 00:56:07', 0, 'Botble\\ACL\\Models\\User', NULL, 'digital', '7909865281506', NULL, 0, 'auto_generate', 0, 0, 0, NULL, NULL, 0),
(34, 'ديب فريزر توشيبا 5 درج نوفروست (Digital)', NULL, NULL, NULL, 'published', '[\"products\\/8.jpg\"]', NULL, 'Y8-180-A1-A2', 0, 13, 0, 1, 'in_stock', 0, 1, 1, 0, 0, 0.00, 0, 913, 794.31, NULL, NULL, 18, 11, 14, 644, NULL, 0, '2026-01-06 00:55:32', '2026-01-06 00:56:07', 0, 'Botble\\ACL\\Models\\User', NULL, 'digital', '2774887734683', NULL, 0, 'auto_generate', 0, 0, 0, NULL, NULL, 0),
(35, 'غسالة اطباق بوش 12 فرد ستانلس', NULL, NULL, NULL, 'published', '[\"products\\/9-1.jpg\"]', NULL, 'LS-119-A1', 0, 18, 0, 1, 'in_stock', 0, 7, 1, 0, 0, 0.00, 0, 1256, NULL, NULL, NULL, 11, 11, 10, 770, NULL, 0, '2026-01-06 00:55:32', '2026-01-06 00:56:07', 0, 'Botble\\ACL\\Models\\User', NULL, 'physical', '1197690987274', NULL, 0, 'auto_generate', 0, 0, 0, NULL, NULL, 0),
(36, 'غسالة اطباق بوش 12 فرد ستانلس', NULL, NULL, NULL, 'published', '[\"products\\/9.jpg\"]', NULL, 'LS-119-A1-A2', 0, 18, 0, 1, 'in_stock', 0, 7, 1, 0, 0, 0.00, 0, 1256, NULL, NULL, NULL, 11, 11, 10, 770, NULL, 0, '2026-01-06 00:55:32', '2026-01-06 00:56:07', 0, 'Botble\\ACL\\Models\\User', NULL, 'physical', '1362163937821', NULL, 0, 'auto_generate', 0, 0, 0, NULL, NULL, 0),
(37, 'ميكروويف سامسونج 40 لتر ديجيتال', NULL, NULL, NULL, 'published', '[\"products\\/11-1.jpg\"]', NULL, 'I9-126-A1', 0, 17, 0, 1, 'in_stock', 0, 6, 1, 0, 0, 0.00, 0, 2086, NULL, NULL, NULL, 10, 11, 10, 792, NULL, 0, '2026-01-06 00:55:32', '2026-01-06 00:56:08', 0, 'Botble\\ACL\\Models\\User', NULL, 'physical', '8789438637041', NULL, 0, 'auto_generate', 0, 0, 0, NULL, NULL, 0),
(38, 'مبرد مياه تورنيدو 2 حنفية بارد ساخن (Digital)', NULL, NULL, NULL, 'published', '[\"products\\/12-1.jpg\"]', NULL, '1P-178-A1', 0, 16, 0, 1, 'in_stock', 0, 5, 1, 0, 0, 0.00, 0, 1050, 756, NULL, NULL, 14, 20, 11, 538, NULL, 0, '2026-01-06 00:55:33', '2026-01-06 00:56:08', 0, 'Botble\\ACL\\Models\\User', NULL, 'digital', '0654755198705', NULL, 0, 'auto_generate', 0, 0, 0, NULL, NULL, 0),
(39, 'مبرد مياه تورنيدو 2 حنفية بارد ساخن (Digital)', NULL, NULL, NULL, 'published', '[\"products\\/12.jpg\"]', NULL, '1P-178-A1-A2', 0, 16, 0, 1, 'in_stock', 0, 5, 1, 0, 0, 0.00, 0, 1050, 735, NULL, NULL, 14, 20, 11, 538, NULL, 0, '2026-01-06 00:55:33', '2026-01-06 00:56:08', 0, 'Botble\\ACL\\Models\\User', NULL, 'digital', '2407259906585', NULL, 0, 'auto_generate', 0, 0, 0, NULL, NULL, 0),
(40, 'مبرد مياه تورنيدو 2 حنفية بارد ساخن (Digital)', NULL, NULL, NULL, 'published', '[\"products\\/12.jpg\"]', NULL, '1P-178-A1-A3', 0, 16, 0, 1, 'in_stock', 0, 5, 1, 0, 0, 0.00, 0, 1050, 913.5, NULL, NULL, 14, 20, 11, 538, NULL, 0, '2026-01-06 00:55:33', '2026-01-06 00:56:08', 0, 'Botble\\ACL\\Models\\User', NULL, 'digital', '6947082353805', NULL, 0, 'auto_generate', 0, 0, 0, NULL, NULL, 0),
(41, 'مبرد مياه تورنيدو 2 حنفية بارد ساخن (Digital)', NULL, NULL, NULL, 'published', '[\"products\\/12.jpg\"]', NULL, '1P-178-A1-A4', 0, 16, 0, 1, 'in_stock', 0, 5, 1, 0, 0, 0.00, 0, 1050, 798, NULL, NULL, 14, 20, 11, 538, NULL, 0, '2026-01-06 00:55:33', '2026-01-06 00:56:08', 0, 'Botble\\ACL\\Models\\User', NULL, 'digital', '1259817334382', NULL, 0, 'auto_generate', 0, 0, 0, NULL, NULL, 0),
(42, 'فرن كهربائي تورنيدو 48 لتر', NULL, NULL, NULL, 'published', '[\"products\\/14-1.jpg\"]', NULL, 'Q3-199-A1', 0, 17, 0, 1, 'in_stock', 0, 5, 1, 0, 0, 0.00, 0, 2339, NULL, NULL, NULL, 11, 15, 16, 659, NULL, 0, '2026-01-06 00:55:33', '2026-01-06 00:56:08', 0, 'Botble\\ACL\\Models\\User', NULL, 'physical', '2468345782056', NULL, 0, 'auto_generate', 0, 0, 0, NULL, NULL, 0),
(43, 'فرن كهربائي تورنيدو 48 لتر', NULL, NULL, NULL, 'published', '[\"products\\/14.jpg\"]', NULL, 'Q3-199-A1-A2', 0, 17, 0, 1, 'in_stock', 0, 5, 1, 0, 0, 0.00, 0, 2339, NULL, NULL, NULL, 11, 15, 16, 659, NULL, 0, '2026-01-06 00:55:33', '2026-01-06 00:56:08', 0, 'Botble\\ACL\\Models\\User', NULL, 'physical', '2060466941604', NULL, 0, 'auto_generate', 0, 0, 0, NULL, NULL, 0),
(44, 'فرن كهربائي تورنيدو 48 لتر', NULL, NULL, NULL, 'published', '[\"products\\/14.jpg\"]', NULL, 'Q3-199-A1-A3', 0, 17, 0, 1, 'in_stock', 0, 5, 1, 0, 0, 0.00, 0, 2339, NULL, NULL, NULL, 11, 15, 16, 659, NULL, 0, '2026-01-06 00:55:33', '2026-01-06 00:56:08', 0, 'Botble\\ACL\\Models\\User', NULL, 'physical', '0809207751292', NULL, 0, 'auto_generate', 0, 0, 0, NULL, NULL, 0),
(45, 'فرن كهربائي تورنيدو 48 لتر', NULL, NULL, NULL, 'published', '[\"products\\/14.jpg\"]', NULL, 'Q3-199-A1-A4', 0, 17, 0, 1, 'in_stock', 0, 5, 1, 0, 0, 0.00, 0, 2339, NULL, NULL, NULL, 11, 15, 16, 659, NULL, 0, '2026-01-06 00:55:33', '2026-01-06 00:56:08', 0, 'Botble\\ACL\\Models\\User', NULL, 'physical', '5343775416740', NULL, 0, 'auto_generate', 0, 0, 0, NULL, NULL, 0),
(46, 'خلاط براون 600 وات مع مطحنة', NULL, NULL, NULL, 'published', '[\"products\\/15-1.jpg\"]', NULL, 'FO-100-A1', 0, 19, 0, 1, 'in_stock', 0, 1, 1, 0, 0, 0.00, 0, 526, NULL, NULL, NULL, 18, 12, 12, 638, NULL, 0, '2026-01-06 00:55:33', '2026-01-06 00:56:08', 0, 'Botble\\ACL\\Models\\User', NULL, 'physical', '4385285445286', NULL, 0, 'auto_generate', 0, 0, 0, NULL, NULL, 0),
(47, 'خلاط براون 600 وات مع مطحنة', NULL, NULL, NULL, 'published', '[\"products\\/15.jpg\"]', NULL, 'FO-100-A1-A2', 0, 19, 0, 1, 'in_stock', 0, 1, 1, 0, 0, 0.00, 0, 526, NULL, NULL, NULL, 18, 12, 12, 638, NULL, 0, '2026-01-06 00:55:33', '2026-01-06 00:56:08', 0, 'Botble\\ACL\\Models\\User', NULL, 'physical', '7569317153975', NULL, 0, 'auto_generate', 0, 0, 0, NULL, NULL, 0),
(48, 'خلاط براون 600 وات مع مطحنة', NULL, NULL, NULL, 'published', '[\"products\\/15.jpg\"]', NULL, 'FO-100-A1-A3', 0, 19, 0, 1, 'in_stock', 0, 1, 1, 0, 0, 0.00, 0, 526, NULL, NULL, NULL, 18, 12, 12, 638, NULL, 0, '2026-01-06 00:55:33', '2026-01-06 00:56:08', 0, 'Botble\\ACL\\Models\\User', NULL, 'physical', '7100559255760', NULL, 0, 'auto_generate', 0, 0, 0, NULL, NULL, 0),
(49, 'خلاط براون 600 وات مع مطحنة', NULL, NULL, NULL, 'published', '[\"products\\/15.jpg\"]', NULL, 'FO-100-A1-A4', 0, 19, 0, 1, 'in_stock', 0, 1, 1, 0, 0, 0.00, 0, 526, NULL, NULL, NULL, 18, 12, 12, 638, NULL, 0, '2026-01-06 00:55:33', '2026-01-06 00:56:08', 0, 'Botble\\ACL\\Models\\User', NULL, 'physical', '7277952204470', NULL, 0, 'auto_generate', 0, 0, 0, NULL, NULL, 0),
(50, 'خلاط براون 600 وات مع مطحنة', NULL, NULL, NULL, 'published', '[\"products\\/15.jpg\"]', NULL, 'FO-100-A1-A5', 0, 19, 0, 1, 'in_stock', 0, 1, 1, 0, 0, 0.00, 0, 526, NULL, NULL, NULL, 18, 12, 12, 638, NULL, 0, '2026-01-06 00:55:33', '2026-01-06 00:56:08', 0, 'Botble\\ACL\\Models\\User', NULL, 'physical', '1060893433438', NULL, 0, 'auto_generate', 0, 0, 0, NULL, NULL, 0),
(51, 'تليفزيون ال جي 65 بوصة OLED سمارت (Digital)', NULL, NULL, NULL, 'published', '[\"products\\/16-1.jpg\"]', NULL, 'SB-116-A1', 0, 12, 0, 1, 'in_stock', 0, 4, 1, 0, 0, 0.00, 0, 501, 395.79, NULL, NULL, 16, 15, 14, 696, NULL, 0, '2026-01-06 00:55:33', '2026-01-06 00:56:08', 0, 'Botble\\ACL\\Models\\User', NULL, 'digital', '8035456238297', NULL, 0, 'auto_generate', 0, 0, 0, NULL, NULL, 0),
(52, 'ثلاجة سامسونج 24 قدم بابين سيلفر', NULL, NULL, NULL, 'published', '[\"products\\/17-1.jpg\"]', NULL, 'DR-185-A1', 0, 13, 0, 1, 'in_stock', 0, 5, 1, 0, 0, 0.00, 0, 600, NULL, NULL, NULL, 18, 20, 15, 512, NULL, 0, '2026-01-06 00:55:33', '2026-01-06 00:56:08', 0, 'Botble\\ACL\\Models\\User', NULL, 'physical', '0332405965302', NULL, 0, 'auto_generate', 0, 0, 0, NULL, NULL, 0),
(53, 'ثلاجة سامسونج 24 قدم بابين سيلفر', NULL, NULL, NULL, 'published', '[\"products\\/17.jpg\"]', NULL, 'DR-185-A1-A2', 0, 13, 0, 1, 'in_stock', 0, 5, 1, 0, 0, 0.00, 0, 600, NULL, NULL, NULL, 18, 20, 15, 512, NULL, 0, '2026-01-06 00:55:33', '2026-01-06 00:56:08', 0, 'Botble\\ACL\\Models\\User', NULL, 'physical', '9228488459382', NULL, 0, 'auto_generate', 0, 0, 0, NULL, NULL, 0),
(54, 'غسالة ال جي فول اتوماتيك 8 كيلو', NULL, NULL, NULL, 'published', '[\"products\\/18-1.jpg\"]', NULL, 'E7-198-A1', 0, 18, 0, 1, 'in_stock', 0, 3, 1, 0, 0, 0.00, 0, 1936, NULL, NULL, NULL, 19, 14, 14, 650, NULL, 0, '2026-01-06 00:55:34', '2026-01-06 00:56:08', 0, 'Botble\\ACL\\Models\\User', NULL, 'physical', '4250368166726', NULL, 0, 'auto_generate', 0, 0, 0, NULL, NULL, 0),
(55, 'غسالة ال جي فول اتوماتيك 8 كيلو', NULL, NULL, NULL, 'published', '[\"products\\/18.jpg\"]', NULL, 'E7-198-A1-A2', 0, 18, 0, 1, 'in_stock', 0, 3, 1, 0, 0, 0.00, 0, 1936, NULL, NULL, NULL, 19, 14, 14, 650, NULL, 0, '2026-01-06 00:55:34', '2026-01-06 00:56:08', 0, 'Botble\\ACL\\Models\\User', NULL, 'physical', '1816706007064', NULL, 0, 'auto_generate', 0, 0, 0, NULL, NULL, 0),
(56, 'غسالة ال جي فول اتوماتيك 8 كيلو', NULL, NULL, NULL, 'published', '[\"products\\/18.jpg\"]', NULL, 'E7-198-A1-A3', 0, 18, 0, 1, 'in_stock', 0, 3, 1, 0, 0, 0.00, 0, 1936, NULL, NULL, NULL, 19, 14, 14, 650, NULL, 0, '2026-01-06 00:55:34', '2026-01-06 00:56:08', 0, 'Botble\\ACL\\Models\\User', NULL, 'physical', '2654970682551', NULL, 0, 'auto_generate', 0, 0, 0, NULL, NULL, 0),
(57, 'غسالة ال جي فول اتوماتيك 8 كيلو', NULL, NULL, NULL, 'published', '[\"products\\/18.jpg\"]', NULL, 'E7-198-A1-A4', 0, 18, 0, 1, 'in_stock', 0, 3, 1, 0, 0, 0.00, 0, 1936, NULL, NULL, NULL, 19, 14, 14, 650, NULL, 0, '2026-01-06 00:55:34', '2026-01-06 00:56:08', 0, 'Botble\\ACL\\Models\\User', NULL, 'physical', '5474731918364', NULL, 0, 'auto_generate', 0, 0, 0, NULL, NULL, 0),
(58, 'ثلاجة شارب 16 قدم نوفروست ابيض', NULL, NULL, NULL, 'published', '[\"products\\/23-1.jpg\"]', NULL, 'GC-136-A1', 0, 13, 0, 1, 'in_stock', 0, 4, 1, 0, 0, 0.00, 0, 1558, NULL, NULL, NULL, 15, 18, 13, 700, NULL, 0, '2026-01-06 00:55:34', '2026-01-06 00:56:08', 0, 'Botble\\ACL\\Models\\User', NULL, 'physical', '1566504277571', NULL, 0, 'auto_generate', 0, 0, 0, NULL, NULL, 0),
(59, 'ثلاجة شارب 16 قدم نوفروست ابيض', NULL, NULL, NULL, 'published', '[\"products\\/23.jpg\"]', NULL, 'GC-136-A1-A2', 0, 13, 0, 1, 'in_stock', 0, 4, 1, 0, 0, 0.00, 0, 1558, NULL, NULL, NULL, 15, 18, 13, 700, NULL, 0, '2026-01-06 00:55:34', '2026-01-06 00:56:08', 0, 'Botble\\ACL\\Models\\User', NULL, 'physical', '8554326283637', NULL, 0, 'auto_generate', 0, 0, 0, NULL, NULL, 0),
(60, 'ثلاجة شارب 16 قدم نوفروست ابيض', NULL, NULL, NULL, 'published', '[\"products\\/23.jpg\"]', NULL, 'GC-136-A1-A3', 0, 13, 0, 1, 'in_stock', 0, 4, 1, 0, 0, 0.00, 0, 1558, NULL, NULL, NULL, 15, 18, 13, 700, NULL, 0, '2026-01-06 00:55:34', '2026-01-06 00:56:08', 0, 'Botble\\ACL\\Models\\User', NULL, 'physical', '7837816979243', NULL, 0, 'auto_generate', 0, 0, 0, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ec_products_translations`
--

CREATE TABLE `ec_products_translations` (
  `lang_code` varchar(191) NOT NULL,
  `ec_products_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `slug` varchar(191) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `content` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_attributes`
--

CREATE TABLE `ec_product_attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `attribute_set_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(120) NOT NULL,
  `slug` varchar(120) DEFAULT NULL,
  `color` varchar(120) DEFAULT NULL,
  `image` varchar(191) DEFAULT NULL,
  `is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `order` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_attributes`
--

INSERT INTO `ec_product_attributes` (`id`, `attribute_set_id`, `title`, `slug`, `color`, `image`, `is_default`, `order`, `created_at`, `updated_at`) VALUES
(1, 1, '1KG', '1kg', NULL, NULL, 1, 1, '2026-01-06 00:55:18', '2026-01-06 00:55:18'),
(2, 1, '2KG', '2kg', NULL, NULL, 0, 2, '2026-01-06 00:55:18', '2026-01-06 00:55:18'),
(3, 1, '3KG', '3kg', NULL, NULL, 0, 3, '2026-01-06 00:55:18', '2026-01-06 00:55:18'),
(4, 1, '4KG', '4kg', NULL, NULL, 0, 4, '2026-01-06 00:55:18', '2026-01-06 00:55:18'),
(5, 1, '5KG', '5kg', NULL, NULL, 0, 5, '2026-01-06 00:55:18', '2026-01-06 00:55:18'),
(6, 2, '1 Box', '1-box', NULL, NULL, 1, 1, '2026-01-06 00:55:18', '2026-01-06 00:55:18'),
(7, 2, '2 Boxes', '2-boxes', NULL, NULL, 0, 2, '2026-01-06 00:55:18', '2026-01-06 00:55:18'),
(8, 2, '3 Boxes', '3-boxes', NULL, NULL, 0, 3, '2026-01-06 00:55:18', '2026-01-06 00:55:18'),
(9, 2, '4 Boxes', '4-boxes', NULL, NULL, 0, 4, '2026-01-06 00:55:18', '2026-01-06 00:55:18'),
(10, 2, '5 Boxes', '5-boxes', NULL, NULL, 0, 5, '2026-01-06 00:55:18', '2026-01-06 00:55:18');

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_attributes_translations`
--

CREATE TABLE `ec_product_attributes_translations` (
  `lang_code` varchar(191) NOT NULL,
  `ec_product_attributes_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_attribute_sets`
--

CREATE TABLE `ec_product_attribute_sets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(120) NOT NULL,
  `slug` varchar(120) DEFAULT NULL,
  `display_layout` varchar(191) NOT NULL DEFAULT 'dropdown',
  `is_searchable` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `is_comparable` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `is_use_in_product_listing` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `order` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `use_image_from_product_variation` tinyint(3) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_attribute_sets`
--

INSERT INTO `ec_product_attribute_sets` (`id`, `title`, `slug`, `display_layout`, `is_searchable`, `is_comparable`, `is_use_in_product_listing`, `status`, `order`, `created_at`, `updated_at`, `use_image_from_product_variation`) VALUES
(1, 'Weight', 'weight', 'text', 1, 1, 1, 'published', 0, '2026-01-06 00:55:18', '2026-01-06 00:55:18', 0),
(2, 'Boxes', 'boxes', 'text', 1, 1, 1, 'published', 1, '2026-01-06 00:55:18', '2026-01-06 00:55:18', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_attribute_sets_translations`
--

CREATE TABLE `ec_product_attribute_sets_translations` (
  `lang_code` varchar(191) NOT NULL,
  `ec_product_attribute_sets_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_categories`
--

CREATE TABLE `ec_product_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `slug` varchar(191) DEFAULT NULL,
  `parent_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `description` mediumtext DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `order` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `image` varchar(191) DEFAULT NULL,
  `is_featured` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `icon` varchar(191) DEFAULT NULL,
  `icon_image` varchar(191) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_categories`
--

INSERT INTO `ec_product_categories` (`id`, `name`, `slug`, `parent_id`, `description`, `status`, `order`, `image`, `is_featured`, `created_at`, `updated_at`, `icon`, `icon_image`) VALUES
(1, 'Electronics', 'electronics', 0, NULL, 'published', 0, 'product-categories/image-1.png', 1, '2026-01-06 00:55:18', '2026-01-06 00:55:18', 'icon-cpu', 'product-categories/icon-1.png'),
(2, 'Home Appliances', 'home-appliances', 0, NULL, 'published', 1, 'product-categories/image-2.png', 1, '2026-01-06 00:55:18', '2026-01-06 00:55:18', 'icon-home', 'product-categories/icon-2.png'),
(3, 'Kitchen Appliances', 'kitchen-appliances', 0, NULL, 'published', 2, 'product-categories/image-3.png', 1, '2026-01-06 00:55:18', '2026-01-06 00:55:18', 'icon-coffee', 'product-categories/icon-3.png'),
(4, 'Televisions', 'televisions', 0, NULL, 'published', 3, 'product-categories/image-4.png', 1, '2026-01-06 00:55:18', '2026-01-06 00:55:18', 'icon-tv', 'product-categories/icon-4.png'),
(5, 'Refrigerators', 'refrigerators', 0, NULL, 'published', 4, 'product-categories/image-5.png', 1, '2026-01-06 00:55:18', '2026-01-06 00:55:18', 'icon-archive', 'product-categories/icon-5.png'),
(6, 'Washing Machines', 'washing-machines', 0, NULL, 'published', 5, 'product-categories/image-6.png', 1, '2026-01-06 00:55:18', '2026-01-06 00:55:18', 'icon-disc', 'product-categories/icon-6.png'),
(7, 'Air Conditioners', 'air-conditioners', 0, NULL, 'published', 6, 'product-categories/image-7.png', 1, '2026-01-06 00:55:18', '2026-01-06 00:55:18', 'icon-wind', 'product-categories/icon-7.png'),
(8, 'Gas Stoves & Ovens', 'gas-stoves-ovens', 0, NULL, 'published', 7, 'product-categories/image-8.png', 1, '2026-01-06 00:55:18', '2026-01-06 00:55:18', 'icon-zap', 'product-categories/icon-8.png'),
(9, 'Screens & Monitors', 'screens-monitors', 0, NULL, 'published', 8, 'product-categories/image-9.png', 1, '2026-01-06 00:55:18', '2026-01-06 00:55:18', 'icon-monitor', 'product-categories/icon-9.png'),
(10, 'Dishwashers', 'dishwashers', 0, NULL, 'published', 9, 'product-categories/image-10.png', 1, '2026-01-06 00:55:18', '2026-01-06 00:55:18', 'icon-droplet', 'product-categories/icon-10.png'),
(11, 'Water Heaters', 'water-heaters', 0, NULL, 'published', 10, 'product-categories/image-11.png', 1, '2026-01-06 00:55:18', '2026-01-06 00:55:18', 'icon-thermometer', 'product-categories/icon-11.png'),
(12, 'Built-in Appliances', 'built-in-appliances', 0, NULL, 'published', 11, 'product-categories/image-12.png', 1, '2026-01-06 00:55:18', '2026-01-06 00:55:18', 'icon-grid', 'product-categories/icon-12.png'),
(13, 'Microwaves', 'microwaves', 0, NULL, 'published', 12, 'product-categories/image-13.png', 1, '2026-01-06 00:55:18', '2026-01-06 00:55:18', 'icon-box', 'product-categories/icon-13.png'),
(14, 'Water Coolers', 'water-coolers', 0, NULL, 'published', 13, 'product-categories/image-14.png', 1, '2026-01-06 00:55:18', '2026-01-06 00:55:18', 'icon-droplet', 'product-categories/icon-14.png');

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_categories_translations`
--

CREATE TABLE `ec_product_categories_translations` (
  `lang_code` varchar(191) NOT NULL,
  `ec_product_categories_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `slug` varchar(191) DEFAULT NULL,
  `description` mediumtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_categories_translations`
--

INSERT INTO `ec_product_categories_translations` (`lang_code`, `ec_product_categories_id`, `name`, `slug`, `description`) VALUES
('ar', 1, 'إلكترونيات', 'electronics', 'أجهزة إلكترونية متنوعة'),
('ar', 2, 'أجهزة منزلية', 'home-appliances', 'أجهزة منزلية كهربائية'),
('ar', 3, 'أجهزة مطبخ', 'kitchen-appliances', 'أجهزة مطبخ حديثة'),
('ar', 4, 'تليفزيونات', 'televisions', 'تليفزيونات بأحدث التقنيات'),
('ar', 5, 'ثلاجات', 'refrigerators', 'ثلاجات بسعات مختلفة'),
('ar', 6, 'غسالات ملابس', 'washing-machines', 'غسالات ملابس أوتوماتيك'),
('ar', 7, 'تكيفات و مبرد هواء', 'air-conditioners', 'تكيفات ومبردات هواء'),
('ar', 8, 'بوتاجازات و أفران', 'gas-stoves-ovens', 'بوتاجازات وأفران غاز وكهرباء'),
('ar', 9, 'شاشات', 'screens-monitors', 'شاشات كمبيوتر وتلفزيون'),
('ar', 10, 'غسالات أطباق', 'dishwashers', 'غسالات أطباق أوتوماتيك'),
('ar', 11, 'سخانات مياة', 'water-heaters', 'سخانات مياه كهربائية وغاز'),
('ar', 12, 'أجهزه بلت أن', 'built-in-appliances', 'أجهزة مطبخ مدمجة'),
('ar', 13, 'ميكروويف', 'microwaves', 'أفران ميكروويف'),
('ar', 14, 'مبردات مياة', 'water-coolers', 'مبردات مياه');

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_categorizables`
--

CREATE TABLE `ec_product_categorizables` (
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `reference_id` bigint(20) UNSIGNED NOT NULL,
  `reference_type` varchar(120) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_category_product`
--

CREATE TABLE `ec_product_category_product` (
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_category_product`
--

INSERT INTO `ec_product_category_product` (`category_id`, `product_id`) VALUES
(1, 1),
(6, 1),
(7, 1),
(13, 1),
(2, 2),
(10, 2),
(11, 2),
(12, 2),
(1, 3),
(5, 3),
(7, 3),
(12, 3),
(1, 4),
(2, 4),
(10, 4),
(12, 4),
(5, 5),
(7, 5),
(11, 5),
(14, 5),
(1, 6),
(5, 6),
(7, 6),
(13, 6),
(4, 7),
(6, 7),
(10, 7),
(12, 7),
(7, 8),
(10, 8),
(11, 8),
(12, 8),
(1, 9),
(6, 9),
(10, 9),
(12, 9),
(2, 10),
(3, 10),
(10, 10),
(14, 10),
(6, 11),
(10, 11),
(13, 11),
(14, 11),
(1, 12),
(3, 12),
(11, 12),
(12, 12),
(4, 13),
(6, 13),
(7, 13),
(13, 13),
(2, 14),
(4, 14),
(9, 14),
(12, 14),
(1, 15),
(6, 15),
(8, 15),
(9, 15),
(2, 16),
(8, 16),
(9, 16),
(11, 16),
(1, 17),
(6, 17),
(11, 17),
(12, 17),
(6, 18),
(9, 18),
(11, 18),
(13, 18),
(5, 19),
(10, 19),
(13, 19),
(14, 19),
(2, 20),
(3, 20),
(12, 20),
(13, 20),
(6, 21),
(7, 21),
(10, 21),
(13, 21),
(3, 22),
(5, 22),
(8, 22),
(13, 22),
(2, 23),
(6, 23),
(11, 23),
(14, 23),
(3, 24),
(7, 24),
(9, 24),
(14, 24);

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_collections`
--

CREATE TABLE `ec_product_collections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `description` varchar(400) DEFAULT NULL,
  `image` varchar(191) DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_featured` tinyint(3) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_collections`
--

INSERT INTO `ec_product_collections` (`id`, `name`, `slug`, `description`, `image`, `status`, `created_at`, `updated_at`, `is_featured`) VALUES
(1, 'New Arrival', 'new-arrival', NULL, NULL, 'published', '2026-01-06 00:55:18', '2026-01-06 00:55:18', 0),
(2, 'Best Sellers', 'best-sellers', NULL, NULL, 'published', '2026-01-06 00:55:18', '2026-01-06 00:55:18', 0),
(3, 'Special Offer', 'special-offer', NULL, NULL, 'published', '2026-01-06 00:55:18', '2026-01-06 00:55:18', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_collections_translations`
--

CREATE TABLE `ec_product_collections_translations` (
  `lang_code` varchar(191) NOT NULL,
  `ec_product_collections_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_collections_translations`
--

INSERT INTO `ec_product_collections_translations` (`lang_code`, `ec_product_collections_id`, `name`, `description`) VALUES
('ar', 1, 'وصول جديد', 'منتجات جديدة'),
('ar', 2, 'الأكثر مبيعاً', 'المنتجات الأكثر مبيعاً'),
('ar', 3, 'عرض خاص', 'عروض خاصة ومحدودة');

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_collection_products`
--

CREATE TABLE `ec_product_collection_products` (
  `product_collection_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_collection_products`
--

INSERT INTO `ec_product_collection_products` (`product_collection_id`, `product_id`) VALUES
(1, 1),
(3, 2),
(2, 3),
(1, 4),
(2, 5),
(1, 6),
(2, 7),
(1, 8),
(2, 9),
(3, 10),
(1, 11),
(3, 12),
(2, 13),
(3, 14),
(1, 15),
(1, 16),
(1, 17),
(2, 18),
(2, 19),
(1, 20),
(1, 21),
(2, 22),
(3, 23),
(1, 24);

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_cross_sale_relations`
--

CREATE TABLE `ec_product_cross_sale_relations` (
  `from_product_id` bigint(20) UNSIGNED NOT NULL,
  `to_product_id` bigint(20) UNSIGNED NOT NULL,
  `is_variant` tinyint(1) NOT NULL DEFAULT 0,
  `price` decimal(15,2) DEFAULT 0.00,
  `price_type` varchar(191) NOT NULL DEFAULT 'fixed',
  `apply_to_all_variations` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_cross_sale_relations`
--

INSERT INTO `ec_product_cross_sale_relations` (`from_product_id`, `to_product_id`, `is_variant`, `price`, `price_type`, `apply_to_all_variations`) VALUES
(1, 24, 0, 0.00, 'fixed', 1),
(1, 20, 0, 0.00, 'fixed', 1),
(1, 5, 0, 0.00, 'fixed', 1),
(1, 23, 0, 0.00, 'fixed', 1),
(1, 6, 0, 0.00, 'fixed', 1),
(4, 12, 0, 0.00, 'fixed', 1),
(2, 11, 0, 0.00, 'fixed', 1),
(2, 5, 0, 0.00, 'fixed', 1),
(2, 14, 0, 0.00, 'fixed', 1),
(2, 19, 0, 0.00, 'fixed', 1),
(2, 15, 0, 0.00, 'fixed', 1),
(2, 12, 0, 0.00, 'fixed', 1),
(3, 2, 0, 0.00, 'fixed', 1),
(3, 23, 0, 0.00, 'fixed', 1),
(4, 7, 0, 0.00, 'fixed', 1),
(3, 16, 0, 0.00, 'fixed', 1),
(3, 9, 0, 0.00, 'fixed', 1),
(3, 13, 0, 0.00, 'fixed', 1),
(3, 22, 0, 0.00, 'fixed', 1),
(4, 20, 0, 0.00, 'fixed', 1),
(4, 19, 0, 0.00, 'fixed', 1),
(4, 17, 0, 0.00, 'fixed', 1),
(4, 21, 0, 0.00, 'fixed', 1),
(4, 13, 0, 0.00, 'fixed', 1),
(5, 16, 0, 0.00, 'fixed', 1),
(5, 21, 0, 0.00, 'fixed', 1),
(5, 12, 0, 0.00, 'fixed', 1),
(5, 18, 0, 0.00, 'fixed', 1),
(5, 24, 0, 0.00, 'fixed', 1),
(5, 9, 0, 0.00, 'fixed', 1),
(1, 7, 0, 0.00, 'fixed', 1),
(6, 15, 0, 0.00, 'fixed', 1),
(24, 7, 0, 0.00, 'fixed', 1),
(6, 5, 0, 0.00, 'fixed', 1),
(6, 23, 0, 0.00, 'fixed', 1),
(7, 5, 0, 0.00, 'fixed', 1),
(7, 3, 0, 0.00, 'fixed', 1),
(7, 15, 0, 0.00, 'fixed', 1),
(7, 11, 0, 0.00, 'fixed', 1),
(22, 14, 0, 0.00, 'fixed', 1),
(7, 19, 0, 0.00, 'fixed', 1),
(7, 12, 0, 0.00, 'fixed', 1),
(22, 15, 0, 0.00, 'fixed', 1),
(8, 4, 0, 0.00, 'fixed', 1),
(9, 20, 0, 0.00, 'fixed', 1),
(8, 6, 0, 0.00, 'fixed', 1),
(8, 1, 0, 0.00, 'fixed', 1),
(8, 23, 0, 0.00, 'fixed', 1),
(8, 19, 0, 0.00, 'fixed', 1),
(9, 7, 0, 0.00, 'fixed', 1),
(9, 12, 0, 0.00, 'fixed', 1),
(9, 18, 0, 0.00, 'fixed', 1),
(9, 11, 0, 0.00, 'fixed', 1),
(9, 8, 0, 0.00, 'fixed', 1),
(9, 10, 0, 0.00, 'fixed', 1),
(21, 17, 0, 0.00, 'fixed', 1),
(10, 5, 0, 0.00, 'fixed', 1),
(10, 4, 0, 0.00, 'fixed', 1),
(10, 8, 0, 0.00, 'fixed', 1),
(10, 19, 0, 0.00, 'fixed', 1),
(10, 7, 0, 0.00, 'fixed', 1),
(10, 2, 0, 0.00, 'fixed', 1),
(11, 2, 0, 0.00, 'fixed', 1),
(11, 20, 0, 0.00, 'fixed', 1),
(11, 22, 0, 0.00, 'fixed', 1),
(18, 17, 0, 0.00, 'fixed', 1),
(11, 8, 0, 0.00, 'fixed', 1),
(11, 10, 0, 0.00, 'fixed', 1),
(12, 16, 0, 0.00, 'fixed', 1),
(12, 2, 0, 0.00, 'fixed', 1),
(12, 17, 0, 0.00, 'fixed', 1),
(12, 8, 0, 0.00, 'fixed', 1),
(17, 9, 0, 0.00, 'fixed', 1),
(20, 22, 0, 0.00, 'fixed', 1),
(19, 17, 0, 0.00, 'fixed', 1),
(13, 17, 0, 0.00, 'fixed', 1),
(13, 11, 0, 0.00, 'fixed', 1),
(13, 22, 0, 0.00, 'fixed', 1),
(14, 12, 0, 0.00, 'fixed', 1),
(14, 20, 0, 0.00, 'fixed', 1),
(15, 13, 0, 0.00, 'fixed', 1),
(14, 19, 0, 0.00, 'fixed', 1),
(14, 24, 0, 0.00, 'fixed', 1),
(14, 4, 0, 0.00, 'fixed', 1),
(15, 21, 0, 0.00, 'fixed', 1),
(15, 1, 0, 0.00, 'fixed', 1),
(15, 11, 0, 0.00, 'fixed', 1),
(16, 12, 0, 0.00, 'fixed', 1),
(16, 21, 0, 0.00, 'fixed', 1),
(16, 8, 0, 0.00, 'fixed', 1),
(16, 7, 0, 0.00, 'fixed', 1),
(16, 1, 0, 0.00, 'fixed', 1),
(17, 22, 0, 0.00, 'fixed', 1),
(17, 10, 0, 0.00, 'fixed', 1),
(17, 16, 0, 0.00, 'fixed', 1),
(17, 6, 0, 0.00, 'fixed', 1),
(17, 3, 0, 0.00, 'fixed', 1),
(18, 7, 0, 0.00, 'fixed', 1),
(18, 9, 0, 0.00, 'fixed', 1),
(18, 15, 0, 0.00, 'fixed', 1),
(18, 20, 0, 0.00, 'fixed', 1),
(18, 5, 0, 0.00, 'fixed', 1),
(19, 1, 0, 0.00, 'fixed', 1),
(19, 10, 0, 0.00, 'fixed', 1),
(19, 22, 0, 0.00, 'fixed', 1),
(19, 2, 0, 0.00, 'fixed', 1),
(19, 11, 0, 0.00, 'fixed', 1),
(20, 17, 0, 0.00, 'fixed', 1),
(20, 7, 0, 0.00, 'fixed', 1),
(20, 6, 0, 0.00, 'fixed', 1),
(20, 21, 0, 0.00, 'fixed', 1),
(21, 9, 0, 0.00, 'fixed', 1),
(21, 12, 0, 0.00, 'fixed', 1),
(21, 20, 0, 0.00, 'fixed', 1),
(21, 10, 0, 0.00, 'fixed', 1),
(21, 15, 0, 0.00, 'fixed', 1),
(22, 17, 0, 0.00, 'fixed', 1),
(22, 23, 0, 0.00, 'fixed', 1),
(22, 1, 0, 0.00, 'fixed', 1),
(22, 9, 0, 0.00, 'fixed', 1),
(23, 4, 0, 0.00, 'fixed', 1),
(23, 10, 0, 0.00, 'fixed', 1),
(23, 3, 0, 0.00, 'fixed', 1),
(23, 14, 0, 0.00, 'fixed', 1),
(23, 7, 0, 0.00, 'fixed', 1),
(23, 17, 0, 0.00, 'fixed', 1),
(24, 15, 0, 0.00, 'fixed', 1),
(24, 22, 0, 0.00, 'fixed', 1),
(24, 8, 0, 0.00, 'fixed', 1),
(24, 3, 0, 0.00, 'fixed', 1),
(1, 11, 0, 0.00, 'fixed', 1),
(6, 20, 0, 0.00, 'fixed', 1),
(6, 14, 0, 0.00, 'fixed', 1),
(6, 22, 0, 0.00, 'fixed', 1),
(6, 8, 0, 0.00, 'fixed', 1),
(8, 12, 0, 0.00, 'fixed', 1),
(11, 1, 0, 0.00, 'fixed', 1),
(11, 7, 0, 0.00, 'fixed', 1),
(12, 24, 0, 0.00, 'fixed', 1),
(12, 9, 0, 0.00, 'fixed', 1),
(12, 3, 0, 0.00, 'fixed', 1),
(13, 10, 0, 0.00, 'fixed', 1),
(13, 19, 0, 0.00, 'fixed', 1),
(13, 15, 0, 0.00, 'fixed', 1),
(14, 23, 0, 0.00, 'fixed', 1),
(15, 12, 0, 0.00, 'fixed', 1),
(20, 10, 0, 0.00, 'fixed', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_files`
--

CREATE TABLE `ec_product_files` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `url` varchar(400) DEFAULT NULL,
  `extras` mediumtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_files`
--

INSERT INTO `ec_product_files` (`id`, `product_id`, `url`, `extras`, `created_at`, `updated_at`) VALUES
(1, 4, 'ecommerce/digital-product-files/4.jpg', '{\"filename\":\"4.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/4.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2026-01-05 19:55:34\",\"name\":\"4\",\"extension\":\"jpg\"}', '2026-01-06 00:55:34', '2026-01-06 00:55:34'),
(2, 4, 'ecommerce/digital-product-files/4-1.jpg', '{\"filename\":\"4-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/4-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2026-01-05 19:55:34\",\"name\":\"4-1\",\"extension\":\"jpg\"}', '2026-01-06 00:55:34', '2026-01-06 00:55:34'),
(3, 8, 'ecommerce/digital-product-files/8.jpg', '{\"filename\":\"8.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/8.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2026-01-05 19:55:34\",\"name\":\"8\",\"extension\":\"jpg\"}', '2026-01-06 00:55:34', '2026-01-06 00:55:34'),
(4, 8, 'ecommerce/digital-product-files/8-1.jpg', '{\"filename\":\"8-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/8-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2026-01-05 19:55:34\",\"name\":\"8-1\",\"extension\":\"jpg\"}', '2026-01-06 00:55:34', '2026-01-06 00:55:34'),
(5, 12, 'ecommerce/digital-product-files/12.jpg', '{\"filename\":\"12.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/12.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2026-01-05 19:55:34\",\"name\":\"12\",\"extension\":\"jpg\"}', '2026-01-06 00:55:34', '2026-01-06 00:55:34'),
(6, 12, 'ecommerce/digital-product-files/12-1.jpg', '{\"filename\":\"12-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/12-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2026-01-05 19:55:34\",\"name\":\"12-1\",\"extension\":\"jpg\"}', '2026-01-06 00:55:34', '2026-01-06 00:55:34'),
(7, 16, 'ecommerce/digital-product-files/16.jpg', '{\"filename\":\"16.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/16.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2026-01-05 19:55:34\",\"name\":\"16\",\"extension\":\"jpg\"}', '2026-01-06 00:55:34', '2026-01-06 00:55:34'),
(8, 16, 'ecommerce/digital-product-files/16-1.jpg', '{\"filename\":\"16-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/16-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2026-01-05 19:55:34\",\"name\":\"16-1\",\"extension\":\"jpg\"}', '2026-01-06 00:55:34', '2026-01-06 00:55:34'),
(9, 20, 'ecommerce/digital-product-files/20.jpg', '{\"filename\":\"20.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/20.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2026-01-05 19:55:34\",\"name\":\"20\",\"extension\":\"jpg\"}', '2026-01-06 00:55:34', '2026-01-06 00:55:34'),
(10, 20, 'ecommerce/digital-product-files/20-1.jpg', '{\"filename\":\"20-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/20-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2026-01-05 19:55:34\",\"name\":\"20-1\",\"extension\":\"jpg\"}', '2026-01-06 00:55:34', '2026-01-06 00:55:34'),
(11, 24, 'ecommerce/digital-product-files/24.jpg', '{\"filename\":\"24.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/24.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2026-01-05 19:55:34\",\"name\":\"24\",\"extension\":\"jpg\"}', '2026-01-06 00:55:34', '2026-01-06 00:55:34'),
(12, 24, 'ecommerce/digital-product-files/24-1.jpg', '{\"filename\":\"24-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/24-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2026-01-05 19:55:34\",\"name\":\"24-1\",\"extension\":\"jpg\"}', '2026-01-06 00:55:34', '2026-01-06 00:55:34'),
(13, 33, 'ecommerce/digital-product-files/8-1.jpg', '{\"filename\":\"8-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/8-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2026-01-05 19:55:34\",\"name\":\"8-1\",\"extension\":\"jpg\"}', '2026-01-06 00:55:34', '2026-01-06 00:55:34'),
(14, 34, 'ecommerce/digital-product-files/8.jpg', '{\"filename\":\"8.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/8.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2026-01-05 19:55:34\",\"name\":\"8\",\"extension\":\"jpg\"}', '2026-01-06 00:55:34', '2026-01-06 00:55:34'),
(15, 38, 'ecommerce/digital-product-files/12-1.jpg', '{\"filename\":\"12-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/12-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2026-01-05 19:55:34\",\"name\":\"12-1\",\"extension\":\"jpg\"}', '2026-01-06 00:55:34', '2026-01-06 00:55:34'),
(16, 39, 'ecommerce/digital-product-files/12.jpg', '{\"filename\":\"12.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/12.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2026-01-05 19:55:34\",\"name\":\"12\",\"extension\":\"jpg\"}', '2026-01-06 00:55:34', '2026-01-06 00:55:34'),
(17, 40, 'ecommerce/digital-product-files/12.jpg', '{\"filename\":\"12.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/12.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2026-01-05 19:55:34\",\"name\":\"12\",\"extension\":\"jpg\"}', '2026-01-06 00:55:34', '2026-01-06 00:55:34'),
(18, 41, 'ecommerce/digital-product-files/12.jpg', '{\"filename\":\"12.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/12.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2026-01-05 19:55:34\",\"name\":\"12\",\"extension\":\"jpg\"}', '2026-01-06 00:55:34', '2026-01-06 00:55:34'),
(19, 51, 'ecommerce/digital-product-files/16-1.jpg', '{\"filename\":\"16-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/16-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2026-01-05 19:55:34\",\"name\":\"16-1\",\"extension\":\"jpg\"}', '2026-01-06 00:55:34', '2026-01-06 00:55:34');

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_labels`
--

CREATE TABLE `ec_product_labels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `color` varchar(120) DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `text_color` varchar(120) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_labels`
--

INSERT INTO `ec_product_labels` (`id`, `name`, `color`, `status`, `created_at`, `updated_at`, `text_color`) VALUES
(1, 'Hot', '#d71e2d', 'published', '2026-01-06 00:55:18', '2026-01-06 00:55:18', NULL),
(2, 'New', '#02856e', 'published', '2026-01-06 00:55:18', '2026-01-06 00:55:18', NULL),
(3, 'Sale', '#fe9931', 'published', '2026-01-06 00:55:18', '2026-01-06 00:55:18', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_labels_translations`
--

CREATE TABLE `ec_product_labels_translations` (
  `lang_code` varchar(191) NOT NULL,
  `ec_product_labels_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_labels_translations`
--

INSERT INTO `ec_product_labels_translations` (`lang_code`, `ec_product_labels_id`, `name`, `description`) VALUES
('ar', 1, 'ساخن', 'منتج رائج'),
('ar', 2, 'جديد', 'منتج جديد'),
('ar', 3, 'تخفيض', 'منتج مخفض');

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_label_products`
--

CREATE TABLE `ec_product_label_products` (
  `product_label_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_label_products`
--

INSERT INTO `ec_product_label_products` (`product_label_id`, `product_id`) VALUES
(1, 3),
(1, 9),
(1, 12),
(2, 18),
(2, 24),
(3, 6),
(3, 15),
(3, 21);

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_license_codes`
--

CREATE TABLE `ec_product_license_codes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `license_code` text NOT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'available',
  `assigned_order_product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `assigned_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_related_relations`
--

CREATE TABLE `ec_product_related_relations` (
  `from_product_id` bigint(20) UNSIGNED NOT NULL,
  `to_product_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_specification_attribute`
--

CREATE TABLE `ec_product_specification_attribute` (
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `value` text DEFAULT NULL,
  `hidden` tinyint(1) NOT NULL DEFAULT 0,
  `order` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_specification_attribute`
--

INSERT INTO `ec_product_specification_attribute` (`product_id`, `attribute_id`, `value`, `hidden`, `order`) VALUES
(1, 6, '81.51 cm', 0, 0),
(1, 7, '46.24 cm', 0, 0),
(1, 8, '2560x1440', 0, 0),
(2, 6, '19.76 cm', 0, 0),
(2, 7, '92.74 cm', 0, 0),
(2, 8, '3840x2160', 0, 0),
(3, 1, '44.21 cm', 0, 0),
(3, 2, '45.83 cm', 0, 0),
(3, 3, '97.26 cm', 0, 0),
(3, 4, '89.27 cm', 0, 0),
(3, 5, '48.83 cm', 0, 0),
(4, 6, '97.42 cm', 0, 0),
(4, 7, '84.18 cm', 0, 0),
(4, 8, '3840x2160', 0, 0),
(5, 6, '55.09 cm', 0, 0),
(5, 7, '55.83 cm', 0, 0),
(5, 8, '3840x2160', 0, 0),
(6, 6, '21.51 cm', 0, 0),
(6, 7, '97.68 cm', 0, 0),
(6, 8, '1920x1080', 0, 0),
(7, 1, '7.82 cm', 0, 0),
(7, 2, '84.69 cm', 0, 0),
(7, 3, '70.37 cm', 0, 0),
(7, 4, '11.79 cm', 0, 0),
(7, 5, '62.63 cm', 0, 0),
(8, 1, '10.58 cm', 0, 0),
(8, 2, '72.27 cm', 0, 0),
(8, 3, '41.58 cm', 0, 0),
(8, 4, '46.6 cm', 0, 0),
(8, 5, '95.52 cm', 0, 0),
(9, 1, '16.7 cm', 0, 0),
(9, 2, '36.47 cm', 0, 0),
(9, 3, '68.16 cm', 0, 0),
(9, 4, '62.34 cm', 0, 0),
(9, 5, '66.77 cm', 0, 0),
(10, 1, '97.73 cm', 0, 0),
(10, 2, '83.15 cm', 0, 0),
(10, 3, '96.63 cm', 0, 0),
(10, 4, '47.2 cm', 0, 0),
(10, 5, '71.1 cm', 0, 0),
(11, 6, '41.29 cm', 0, 0),
(11, 7, '52.96 cm', 0, 0),
(11, 8, '3840x2160', 0, 0),
(12, 6, '1.65 cm', 0, 0),
(12, 7, '56.28 cm', 0, 0),
(12, 8, '1920x1080', 0, 0),
(13, 6, '54.26 cm', 0, 0),
(13, 7, '15.6 cm', 0, 0),
(13, 8, '1920x1080', 0, 0),
(14, 6, '19.49 cm', 0, 0),
(14, 7, '73.24 cm', 0, 0),
(14, 8, '3840x2160', 0, 0),
(15, 6, '68.56 cm', 0, 0),
(15, 7, '36.04 cm', 0, 0),
(15, 8, '3840x2160', 0, 0),
(16, 6, '19.39 cm', 0, 0),
(16, 7, '12.55 cm', 0, 0),
(16, 8, '1920x1080', 0, 0),
(17, 6, '77.17 cm', 0, 0),
(17, 7, '99.75 cm', 0, 0),
(17, 8, '1920x1080', 0, 0),
(18, 1, '26.12 cm', 0, 0),
(18, 2, '95.41 cm', 0, 0),
(18, 3, '62.18 cm', 0, 0),
(18, 4, '36.97 cm', 0, 0),
(18, 5, '58.17 cm', 0, 0),
(19, 1, '84.17 cm', 0, 0),
(19, 2, '21.65 cm', 0, 0),
(19, 3, '24.16 cm', 0, 0),
(19, 4, '37.93 cm', 0, 0),
(19, 5, '74.17 cm', 0, 0),
(20, 1, '55.79 cm', 0, 0),
(20, 2, '52.19 cm', 0, 0),
(20, 3, '71.79 cm', 0, 0),
(20, 4, '86.66 cm', 0, 0),
(20, 5, '50.92 cm', 0, 0),
(21, 1, '69.22 cm', 0, 0),
(21, 2, '75.58 cm', 0, 0),
(21, 3, '41.8 cm', 0, 0),
(21, 4, '2.37 cm', 0, 0),
(21, 5, '75.91 cm', 0, 0),
(22, 1, '9.24 cm', 0, 0),
(22, 2, '20.75 cm', 0, 0),
(22, 3, '81.53 cm', 0, 0),
(22, 4, '12.62 cm', 0, 0),
(22, 5, '56.51 cm', 0, 0),
(23, 1, '67.55 cm', 0, 0),
(23, 2, '96.92 cm', 0, 0),
(23, 3, '60.13 cm', 0, 0),
(23, 4, '14.53 cm', 0, 0),
(23, 5, '83.75 cm', 0, 0),
(24, 1, '42.56 cm', 0, 0),
(24, 2, '41.7 cm', 0, 0),
(24, 3, '59.78 cm', 0, 0),
(24, 4, '40.91 cm', 0, 0),
(24, 5, '57.22 cm', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_specification_attribute_translations`
--

CREATE TABLE `ec_product_specification_attribute_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `lang_code` varchar(20) NOT NULL,
  `value` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_tags`
--

CREATE TABLE `ec_product_tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `description` varchar(400) DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_tags`
--

INSERT INTO `ec_product_tags` (`id`, `name`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Smart TV', NULL, 'published', '2026-01-06 00:55:18', '2026-01-06 00:55:18'),
(2, 'Inverter', NULL, 'published', '2026-01-06 00:55:18', '2026-01-06 00:55:18'),
(3, 'No Frost', NULL, 'published', '2026-01-06 00:55:18', '2026-01-06 00:55:18'),
(4, 'Digital', NULL, 'published', '2026-01-06 00:55:18', '2026-01-06 00:55:18'),
(5, 'Energy Saving', NULL, 'published', '2026-01-06 00:55:18', '2026-01-06 00:55:18');

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_tags_translations`
--

CREATE TABLE `ec_product_tags_translations` (
  `lang_code` varchar(191) NOT NULL,
  `ec_product_tags_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_tags_translations`
--

INSERT INTO `ec_product_tags_translations` (`lang_code`, `ec_product_tags_id`, `name`) VALUES
('ar', 1, 'سمارت تي في'),
('ar', 2, 'انفرتر'),
('ar', 3, 'نوفروست'),
('ar', 4, 'ديجيتال'),
('ar', 5, 'موفر للطاقة');

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_tag_product`
--

CREATE TABLE `ec_product_tag_product` (
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `tag_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_tag_product`
--

INSERT INTO `ec_product_tag_product` (`product_id`, `tag_id`) VALUES
(1, 2),
(1, 3),
(1, 5),
(2, 2),
(2, 3),
(2, 5),
(3, 1),
(3, 2),
(3, 5),
(4, 2),
(4, 3),
(4, 5),
(5, 2),
(5, 4),
(5, 5),
(6, 1),
(6, 3),
(6, 4),
(7, 1),
(7, 4),
(7, 5),
(8, 1),
(8, 4),
(8, 5),
(9, 3),
(9, 4),
(9, 5),
(10, 1),
(10, 2),
(10, 4),
(11, 2),
(11, 3),
(11, 4),
(12, 1),
(12, 2),
(12, 5),
(13, 2),
(13, 4),
(13, 5),
(14, 3),
(14, 4),
(14, 5),
(15, 1),
(15, 3),
(15, 5),
(16, 1),
(16, 3),
(16, 5),
(17, 3),
(17, 4),
(17, 5),
(18, 1),
(18, 4),
(18, 5),
(19, 1),
(19, 2),
(19, 4),
(20, 2),
(20, 3),
(20, 4),
(21, 1),
(21, 2),
(21, 3),
(22, 2),
(22, 3),
(22, 4),
(23, 1),
(23, 2),
(23, 3),
(24, 1),
(24, 2),
(24, 4);

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_up_sale_relations`
--

CREATE TABLE `ec_product_up_sale_relations` (
  `from_product_id` bigint(20) UNSIGNED NOT NULL,
  `to_product_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_variations`
--

CREATE TABLE `ec_product_variations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `configurable_product_id` bigint(20) UNSIGNED NOT NULL,
  `is_default` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_variations`
--

INSERT INTO `ec_product_variations` (`id`, `product_id`, `configurable_product_id`, `is_default`) VALUES
(1, 25, 3, 1),
(2, 26, 3, 0),
(3, 27, 3, 0),
(4, 28, 3, 0),
(5, 29, 5, 1),
(6, 30, 5, 0),
(7, 31, 7, 1),
(8, 32, 7, 0),
(9, 33, 8, 1),
(10, 34, 8, 0),
(11, 35, 9, 1),
(12, 36, 9, 0),
(13, 37, 11, 1),
(14, 38, 12, 1),
(15, 39, 12, 0),
(16, 40, 12, 0),
(17, 41, 12, 0),
(18, 42, 14, 1),
(19, 43, 14, 0),
(20, 44, 14, 0),
(21, 45, 14, 0),
(22, 46, 15, 1),
(23, 47, 15, 0),
(24, 48, 15, 0),
(25, 49, 15, 0),
(26, 50, 15, 0),
(27, 51, 16, 1),
(28, 52, 17, 1),
(29, 53, 17, 0),
(30, 54, 18, 1),
(31, 55, 18, 0),
(32, 56, 18, 0),
(33, 57, 18, 0),
(34, 58, 23, 1),
(35, 59, 23, 0),
(36, 60, 23, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_variation_items`
--

CREATE TABLE `ec_product_variation_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `variation_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_variation_items`
--

INSERT INTO `ec_product_variation_items` (`id`, `attribute_id`, `variation_id`) VALUES
(1, 5, 1),
(2, 8, 1),
(3, 3, 2),
(4, 7, 2),
(5, 5, 3),
(6, 7, 3),
(7, 4, 4),
(8, 8, 4),
(9, 1, 5),
(10, 9, 5),
(11, 3, 6),
(12, 10, 6),
(13, 2, 7),
(14, 9, 7),
(15, 3, 8),
(16, 6, 8),
(17, 4, 9),
(18, 6, 9),
(19, 3, 10),
(20, 9, 10),
(21, 2, 11),
(22, 7, 11),
(23, 4, 12),
(24, 8, 12),
(25, 2, 13),
(26, 6, 13),
(27, 2, 14),
(28, 7, 14),
(29, 4, 15),
(30, 9, 15),
(31, 3, 16),
(32, 7, 16),
(33, 3, 17),
(34, 7, 17),
(35, 1, 18),
(36, 8, 18),
(37, 5, 19),
(38, 8, 19),
(39, 5, 20),
(40, 10, 20),
(41, 3, 21),
(42, 9, 21),
(43, 3, 22),
(44, 6, 22),
(45, 4, 23),
(46, 10, 23),
(47, 3, 24),
(48, 8, 24),
(49, 5, 25),
(50, 10, 25),
(51, 5, 26),
(52, 6, 26),
(53, 5, 27),
(54, 10, 27),
(55, 5, 28),
(56, 10, 28),
(57, 1, 29),
(58, 9, 29),
(59, 1, 30),
(60, 6, 30),
(61, 5, 31),
(62, 9, 31),
(63, 1, 32),
(64, 10, 32),
(65, 1, 33),
(66, 6, 33),
(67, 5, 34),
(68, 7, 34),
(69, 5, 35),
(70, 8, 35),
(71, 5, 36),
(72, 9, 36);

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_views`
--

CREATE TABLE `ec_product_views` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `views` int(11) NOT NULL DEFAULT 1,
  `date` date NOT NULL DEFAULT '2026-01-05'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_views`
--

INSERT INTO `ec_product_views` (`id`, `product_id`, `views`, `date`) VALUES
(1, 3, 1, '2026-01-05'),
(2, 1, 4, '2026-01-05'),
(3, 2, 1, '2026-01-05'),
(4, 23, 1, '2026-01-05'),
(5, 4, 1, '2026-01-05'),
(6, 23, 2, '2026-01-06'),
(7, 3, 2, '2026-01-06'),
(8, 2, 2, '2026-01-06'),
(9, 19, 1, '2026-01-06'),
(10, 20, 1, '2026-01-06'),
(11, 16, 1, '2026-01-06'),
(12, 6, 1, '2026-01-06'),
(13, 9, 2, '2026-01-06'),
(14, 1, 2, '2026-01-07'),
(15, 2, 3, '2026-01-07'),
(16, 11, 1, '2026-01-07'),
(17, 20, 1, '2026-01-07'),
(18, 15, 1, '2026-01-07'),
(19, 3, 1, '2026-01-07'),
(20, 22, 1, '2026-01-07'),
(21, 12, 1, '2026-01-07'),
(22, 21, 1, '2026-01-07'),
(23, 16, 1, '2026-01-08'),
(24, 21, 1, '2026-01-08'),
(25, 3, 1, '2026-01-08'),
(26, 12, 1, '2026-01-08'),
(27, 24, 1, '2026-01-08'),
(28, 17, 1, '2026-01-08'),
(29, 4, 1, '2026-01-08'),
(30, 6, 1, '2026-01-08'),
(31, 8, 1, '2026-01-08'),
(32, 20, 1, '2026-01-08'),
(33, 1, 1, '2026-01-08'),
(34, 11, 1, '2026-01-08'),
(35, 5, 1, '2026-01-08'),
(36, 19, 1, '2026-01-08'),
(37, 22, 1, '2026-01-08'),
(38, 23, 1, '2026-01-08'),
(39, 13, 1, '2026-01-08'),
(40, 9, 1, '2026-01-08'),
(41, 18, 1, '2026-01-08'),
(42, 14, 1, '2026-01-08'),
(43, 2, 1, '2026-01-08'),
(44, 15, 1, '2026-01-08'),
(45, 10, 1, '2026-01-08'),
(46, 7, 1, '2026-01-08'),
(47, 16, 1, '2026-01-09'),
(48, 21, 1, '2026-01-09'),
(49, 1, 3, '2026-01-10'),
(50, 20, 1, '2026-01-10'),
(51, 15, 1, '2026-01-10'),
(52, 4, 1, '2026-01-11'),
(53, 2, 1, '2026-01-11'),
(54, 22, 1, '2026-01-11'),
(55, 5, 1, '2026-01-11'),
(56, 1, 1, '2026-01-11'),
(57, 14, 1, '2026-01-11'),
(58, 3, 1, '2026-01-11'),
(59, 3, 1, '2026-01-12'),
(60, 2, 2, '2026-01-12'),
(61, 4, 1, '2026-01-12'),
(62, 19, 1, '2026-01-12'),
(63, 1, 2, '2026-01-13'),
(64, 2, 1, '2026-01-13'),
(65, 22, 1, '2026-01-13'),
(66, 3, 1, '2026-01-13'),
(67, 14, 1, '2026-01-13'),
(68, 5, 1, '2026-01-13'),
(69, 3, 4, '2026-01-14'),
(70, 21, 4, '2026-01-14'),
(71, 12, 4, '2026-01-14'),
(72, 24, 5, '2026-01-14'),
(73, 17, 4, '2026-01-14'),
(74, 4, 3, '2026-01-14'),
(75, 6, 4, '2026-01-14'),
(76, 8, 4, '2026-01-14'),
(77, 20, 3, '2026-01-14'),
(78, 1, 5, '2026-01-14'),
(79, 11, 5, '2026-01-14'),
(80, 5, 3, '2026-01-14'),
(81, 19, 4, '2026-01-14'),
(82, 22, 3, '2026-01-14'),
(83, 9, 4, '2026-01-14'),
(84, 13, 4, '2026-01-14'),
(85, 23, 4, '2026-01-14'),
(86, 16, 4, '2026-01-14'),
(87, 18, 4, '2026-01-14'),
(88, 14, 3, '2026-01-14'),
(89, 2, 6, '2026-01-14'),
(90, 15, 3, '2026-01-14'),
(91, 10, 4, '2026-01-14'),
(92, 7, 4, '2026-01-14'),
(93, 22, 1, '2026-01-15'),
(94, 11, 1, '2026-01-15'),
(95, 22, 2, '2026-01-16'),
(96, 24, 1, '2026-01-16'),
(97, 14, 1, '2026-01-16'),
(98, 12, 1, '2026-01-17'),
(99, 13, 1, '2026-01-17'),
(100, 21, 1, '2026-01-17'),
(101, 11, 1, '2026-01-17'),
(102, 18, 1, '2026-01-17'),
(103, 15, 2, '2026-01-17'),
(104, 17, 1, '2026-01-17'),
(105, 7, 1, '2026-01-17'),
(106, 8, 1, '2026-01-17'),
(107, 19, 1, '2026-01-17'),
(108, 20, 1, '2026-01-17'),
(109, 24, 1, '2026-01-18'),
(110, 6, 1, '2026-01-18'),
(111, 20, 1, '2026-01-18'),
(112, 16, 1, '2026-01-18'),
(113, 10, 1, '2026-01-18'),
(114, 17, 1, '2026-01-18');

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_with_attribute_set`
--

CREATE TABLE `ec_product_with_attribute_set` (
  `attribute_set_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order` tinyint(3) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_with_attribute_set`
--

INSERT INTO `ec_product_with_attribute_set` (`attribute_set_id`, `product_id`, `order`) VALUES
(1, 3, 0),
(2, 3, 0),
(1, 5, 0),
(2, 5, 0),
(1, 7, 0),
(2, 7, 0),
(1, 8, 0),
(2, 8, 0),
(1, 9, 0),
(2, 9, 0),
(1, 11, 0),
(2, 11, 0),
(1, 12, 0),
(2, 12, 0),
(1, 14, 0),
(2, 14, 0),
(1, 15, 0),
(2, 15, 0),
(1, 16, 0),
(2, 16, 0),
(1, 17, 0),
(2, 17, 0),
(1, 18, 0),
(2, 18, 0),
(1, 23, 0),
(2, 23, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ec_reviews`
--

CREATE TABLE `ec_reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `customer_name` varchar(191) DEFAULT NULL,
  `customer_email` varchar(191) DEFAULT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `star` double NOT NULL,
  `comment` text NOT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `images` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_reviews`
--

INSERT INTO `ec_reviews` (`id`, `customer_id`, `customer_name`, `customer_email`, `product_id`, `star`, `comment`, `status`, `created_at`, `updated_at`, `images`) VALUES
(1, 4, NULL, NULL, 16, 1, 'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/7.jpg\",\"products\\/17.jpg\",\"products\\/24-1.jpg\"]'),
(2, 8, NULL, NULL, 1, 4, 'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/8-1.jpg\",\"products\\/15-1.jpg\"]'),
(3, 9, NULL, NULL, 24, 3, 'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/1-1.jpg\",\"products\\/19.jpg\",\"products\\/20.jpg\"]'),
(4, 3, NULL, NULL, 7, 4, 'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/3.jpg\",\"products\\/11.jpg\",\"products\\/19-1.jpg\"]'),
(5, 9, NULL, NULL, 20, 4, 'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/17.jpg\"]'),
(6, 9, NULL, NULL, 14, 5, 'Great E-commerce system. And much more : Wonderful Customer Support.', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/2.jpg\",\"products\\/16.jpg\",\"products\\/18.jpg\"]'),
(7, 6, NULL, NULL, 11, 5, 'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/22.jpg\",\"products\\/24.jpg\"]'),
(8, 6, NULL, NULL, 18, 2, 'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/6.jpg\"]'),
(9, 3, NULL, NULL, 16, 5, 'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/15-1.jpg\",\"products\\/19.jpg\",\"products\\/24-1.jpg\"]'),
(10, 2, NULL, NULL, 6, 5, 'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/5.jpg\",\"products\\/18-1.jpg\",\"products\\/23-1.jpg\"]'),
(11, 2, NULL, NULL, 19, 4, 'We have received brilliant service support and will be expanding the features with the developer. Nice product!', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/18.jpg\"]'),
(12, 10, NULL, NULL, 18, 3, 'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/6.jpg\",\"products\\/8.jpg\",\"products\\/10-1.jpg\",\"products\\/22.jpg\"]'),
(13, 10, NULL, NULL, 13, 4, 'Good app, good backup service and support. Good documentation.', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/7-1.jpg\",\"products\\/23.jpg\"]'),
(14, 2, NULL, NULL, 24, 5, 'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/8-1.jpg\",\"products\\/11.jpg\",\"products\\/21-1.jpg\"]'),
(15, 8, NULL, NULL, 17, 1, 'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/14.jpg\"]'),
(16, 7, NULL, NULL, 8, 2, 'The code is good, in general, if you like it, can you give it 5 stars?', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/9-1.jpg\",\"products\\/17-1.jpg\",\"products\\/18-1.jpg\",\"products\\/22.jpg\"]'),
(17, 9, NULL, NULL, 18, 1, 'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/8.jpg\",\"products\\/16-3.jpg\"]'),
(18, 1, NULL, NULL, 10, 1, 'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/17-1.jpg\"]'),
(19, 2, NULL, NULL, 23, 2, 'Great E-commerce system. And much more : Wonderful Customer Support.', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/10.jpg\",\"products\\/12.jpg\",\"products\\/14-1.jpg\",\"products\\/16.jpg\"]'),
(20, 8, NULL, NULL, 21, 4, 'Best ecommerce CMS online store!', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/8.jpg\",\"products\\/13-1.jpg\",\"products\\/24-1.jpg\"]'),
(21, 7, NULL, NULL, 3, 2, 'Great E-commerce system. And much more : Wonderful Customer Support.', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/10.jpg\",\"products\\/23-1.jpg\"]'),
(22, 6, NULL, NULL, 24, 5, 'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/10-1.jpg\",\"products\\/16-5.jpg\",\"products\\/17.jpg\"]'),
(23, 8, NULL, NULL, 9, 1, 'Great E-commerce system. And much more : Wonderful Customer Support.', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/4.jpg\",\"products\\/7.jpg\"]'),
(24, 1, NULL, NULL, 18, 2, 'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/23.jpg\"]'),
(25, 1, NULL, NULL, 3, 3, 'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/15.jpg\",\"products\\/24-1.jpg\"]'),
(26, 8, NULL, NULL, 18, 5, 'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/15.jpg\"]'),
(27, 9, NULL, NULL, 6, 3, 'We have received brilliant service support and will be expanding the features with the developer. Nice product!', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/15.jpg\",\"products\\/17-1.jpg\",\"products\\/21-1.jpg\",\"products\\/22-1.jpg\"]'),
(28, 10, NULL, NULL, 9, 3, 'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/7-1.jpg\",\"products\\/11-1.jpg\"]'),
(29, 2, NULL, NULL, 16, 2, 'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/3.jpg\"]'),
(30, 4, NULL, NULL, 14, 3, 'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/8-1.jpg\",\"products\\/9-1.jpg\",\"products\\/18-1.jpg\"]'),
(31, 6, NULL, NULL, 10, 3, 'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/3-1.jpg\",\"products\\/4-1.jpg\",\"products\\/21-1.jpg\"]'),
(32, 1, NULL, NULL, 7, 5, 'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/5-1.jpg\",\"products\\/12-1.jpg\",\"products\\/14-1.jpg\",\"products\\/17.jpg\"]'),
(33, 6, NULL, NULL, 21, 3, 'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/6-1.jpg\",\"products\\/14.jpg\"]'),
(34, 6, NULL, NULL, 22, 2, 'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/3.jpg\",\"products\\/4-1.jpg\",\"products\\/8.jpg\"]'),
(35, 8, NULL, NULL, 2, 1, 'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/1-1.jpg\",\"products\\/16-1.jpg\",\"products\\/22.jpg\"]'),
(36, 9, NULL, NULL, 21, 2, 'Good app, good backup service and support. Good documentation.', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/16-6.jpg\",\"products\\/20.jpg\",\"products\\/22.jpg\"]'),
(37, 8, NULL, NULL, 3, 2, 'Good app, good backup service and support. Good documentation.', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/18.jpg\",\"products\\/20-1.jpg\",\"products\\/20.jpg\"]'),
(38, 5, NULL, NULL, 4, 2, 'Best ecommerce CMS online store!', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/7.jpg\"]'),
(39, 5, NULL, NULL, 23, 5, 'The code is good, in general, if you like it, can you give it 5 stars?', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/12.jpg\"]'),
(40, 5, NULL, NULL, 13, 5, 'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/7-1.jpg\",\"products\\/13-1.jpg\",\"products\\/19.jpg\"]'),
(41, 10, NULL, NULL, 22, 1, 'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/4.jpg\",\"products\\/15.jpg\",\"products\\/17-1.jpg\",\"products\\/23-1.jpg\"]'),
(42, 4, NULL, NULL, 22, 2, 'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/3.jpg\",\"products\\/11.jpg\",\"products\\/19.jpg\",\"products\\/20-1.jpg\"]'),
(43, 4, NULL, NULL, 3, 1, 'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/3-1.jpg\",\"products\\/11.jpg\",\"products\\/13-1.jpg\",\"products\\/20-1.jpg\"]'),
(44, 9, NULL, NULL, 3, 3, 'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/13.jpg\"]'),
(45, 7, NULL, NULL, 2, 4, 'The code is good, in general, if you like it, can you give it 5 stars?', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/14.jpg\",\"products\\/19-1.jpg\"]'),
(46, 10, NULL, NULL, 12, 2, 'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/3-1.jpg\",\"products\\/8.jpg\",\"products\\/14.jpg\",\"products\\/22-1.jpg\"]'),
(47, 4, NULL, NULL, 17, 5, 'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/14-1.jpg\",\"products\\/16-5.jpg\",\"products\\/24-1.jpg\"]'),
(48, 7, NULL, NULL, 13, 1, 'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/1.jpg\",\"products\\/5-1.jpg\",\"products\\/21.jpg\"]'),
(49, 5, NULL, NULL, 19, 1, 'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/2.jpg\",\"products\\/16-2.jpg\"]'),
(50, 3, NULL, NULL, 10, 3, 'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/4-1.jpg\",\"products\\/13-1.jpg\",\"products\\/24.jpg\"]'),
(51, 1, NULL, NULL, 24, 1, 'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/16-5.jpg\",\"products\\/17-1.jpg\",\"products\\/18-1.jpg\"]'),
(52, 3, NULL, NULL, 6, 5, 'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/1-1.jpg\",\"products\\/7-1.jpg\",\"products\\/11-1.jpg\",\"products\\/23.jpg\"]'),
(53, 5, NULL, NULL, 17, 2, 'We have received brilliant service support and will be expanding the features with the developer. Nice product!', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/5-1.jpg\",\"products\\/13.jpg\",\"products\\/17-1.jpg\",\"products\\/22-1.jpg\"]'),
(54, 8, NULL, NULL, 5, 3, 'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/1-1.jpg\",\"products\\/12.jpg\",\"products\\/19-1.jpg\",\"products\\/20.jpg\"]'),
(55, 3, NULL, NULL, 24, 3, 'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/5.jpg\",\"products\\/8-1.jpg\",\"products\\/11.jpg\",\"products\\/17.jpg\"]'),
(56, 3, NULL, NULL, 23, 4, 'Clean & perfect source code', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/13-1.jpg\"]'),
(57, 3, NULL, NULL, 1, 5, 'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/7-1.jpg\",\"products\\/16.jpg\"]'),
(58, 1, NULL, NULL, 9, 1, 'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/16-3.jpg\",\"products\\/17.jpg\",\"products\\/19-1.jpg\",\"products\\/22.jpg\"]'),
(59, 4, NULL, NULL, 24, 5, 'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/10.jpg\",\"products\\/13.jpg\",\"products\\/17-1.jpg\",\"products\\/22.jpg\"]'),
(60, 6, NULL, NULL, 16, 1, 'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/1.jpg\",\"products\\/3.jpg\",\"products\\/16.jpg\",\"products\\/23.jpg\"]'),
(61, 7, NULL, NULL, 22, 4, 'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/14-1.jpg\",\"products\\/15.jpg\",\"products\\/16.jpg\"]'),
(62, 4, NULL, NULL, 10, 5, 'Good app, good backup service and support. Good documentation.', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/4-1.jpg\"]'),
(63, 9, NULL, NULL, 12, 2, 'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/10.jpg\"]'),
(64, 7, NULL, NULL, 15, 3, 'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/18.jpg\",\"products\\/19.jpg\"]'),
(65, 9, NULL, NULL, 5, 4, 'Good app, good backup service and support. Good documentation.', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/14-1.jpg\",\"products\\/16-1.jpg\",\"products\\/16-6.jpg\",\"products\\/17.jpg\"]'),
(66, 1, NULL, NULL, 1, 5, 'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/12.jpg\",\"products\\/13-1.jpg\"]'),
(67, 5, NULL, NULL, 12, 5, 'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/6-1.jpg\",\"products\\/22.jpg\"]'),
(68, 2, NULL, NULL, 13, 2, 'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/9.jpg\",\"products\\/11.jpg\",\"products\\/15.jpg\"]'),
(69, 2, NULL, NULL, 11, 4, 'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/11-1.jpg\",\"products\\/17-1.jpg\",\"products\\/17.jpg\",\"products\\/23-1.jpg\"]'),
(70, 2, NULL, NULL, 18, 1, 'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/13.jpg\",\"products\\/22.jpg\"]'),
(71, 6, NULL, NULL, 13, 1, 'Clean & perfect source code', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/16-5.jpg\"]'),
(72, 9, NULL, NULL, 15, 4, 'Best ecommerce CMS online store!', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/2.jpg\",\"products\\/12-1.jpg\"]'),
(73, 7, NULL, NULL, 11, 1, 'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/8.jpg\",\"products\\/12.jpg\"]'),
(74, 6, NULL, NULL, 20, 5, 'Good app, good backup service and support. Good documentation.', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/2-1.jpg\",\"products\\/18.jpg\",\"products\\/21-1.jpg\",\"products\\/22-1.jpg\"]'),
(75, 5, NULL, NULL, 6, 1, 'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/1-1.jpg\",\"products\\/5.jpg\",\"products\\/9.jpg\",\"products\\/18-1.jpg\"]'),
(76, 6, NULL, NULL, 6, 1, 'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/2-1.jpg\",\"products\\/4.jpg\",\"products\\/21.jpg\",\"products\\/24.jpg\"]'),
(77, 7, NULL, NULL, 14, 5, 'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/1-1.jpg\"]'),
(78, 6, NULL, NULL, 15, 4, 'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/16-5.jpg\",\"products\\/16-6.jpg\",\"products\\/24-1.jpg\"]'),
(79, 8, NULL, NULL, 20, 5, 'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/5.jpg\",\"products\\/24.jpg\"]'),
(80, 2, NULL, NULL, 3, 2, 'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/1.jpg\",\"products\\/12-1.jpg\",\"products\\/23.jpg\"]'),
(81, 1, NULL, NULL, 17, 3, 'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/2-1.jpg\",\"products\\/10-1.jpg\",\"products\\/16-2.jpg\",\"products\\/20.jpg\"]'),
(82, 3, NULL, NULL, 15, 1, 'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/7-1.jpg\"]'),
(83, 8, NULL, NULL, 10, 2, 'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/1-1.jpg\",\"products\\/3-1.jpg\",\"products\\/14-1.jpg\",\"products\\/19.jpg\"]'),
(84, 9, NULL, NULL, 23, 3, 'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/1.jpg\",\"products\\/5-1.jpg\",\"products\\/5.jpg\"]'),
(85, 9, NULL, NULL, 11, 4, 'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/10-1.jpg\",\"products\\/15.jpg\"]'),
(86, 8, NULL, NULL, 12, 1, 'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/7-1.jpg\",\"products\\/9-1.jpg\",\"products\\/13.jpg\",\"products\\/16-2.jpg\"]'),
(87, 6, NULL, NULL, 7, 4, 'The code is good, in general, if you like it, can you give it 5 stars?', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/3-1.jpg\",\"products\\/17.jpg\",\"products\\/23.jpg\"]'),
(88, 10, NULL, NULL, 6, 1, 'Clean & perfect source code', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/9.jpg\",\"products\\/14.jpg\",\"products\\/15.jpg\",\"products\\/20.jpg\"]'),
(89, 4, NULL, NULL, 11, 4, 'Great E-commerce system. And much more : Wonderful Customer Support.', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/10.jpg\",\"products\\/15-1.jpg\"]'),
(90, 5, NULL, NULL, 16, 5, 'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/11-1.jpg\",\"products\\/11.jpg\"]'),
(91, 9, NULL, NULL, 9, 1, 'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/4-1.jpg\",\"products\\/19.jpg\"]'),
(92, 3, NULL, NULL, 11, 2, 'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/18-1.jpg\"]'),
(93, 2, NULL, NULL, 12, 3, 'Best ecommerce CMS online store!', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/14-1.jpg\"]'),
(94, 7, NULL, NULL, 18, 4, 'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/19.jpg\"]'),
(95, 10, NULL, NULL, 7, 5, 'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/2-1.jpg\",\"products\\/10.jpg\",\"products\\/16-3.jpg\",\"products\\/18-1.jpg\"]'),
(96, 1, NULL, NULL, 5, 2, 'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/2-1.jpg\",\"products\\/16-3.jpg\"]'),
(97, 3, NULL, NULL, 2, 2, 'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/16-2.jpg\"]'),
(98, 5, NULL, NULL, 9, 5, 'The code is good, in general, if you like it, can you give it 5 stars?', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/5-1.jpg\",\"products\\/11.jpg\"]'),
(99, 5, NULL, NULL, 24, 3, 'Clean & perfect source code', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/2-1.jpg\"]'),
(100, 9, NULL, NULL, 4, 1, 'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/20-1.jpg\"]'),
(101, 2, NULL, NULL, 1, 4, 'Best ecommerce CMS online store!', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/3.jpg\",\"products\\/12-1.jpg\"]'),
(102, 5, NULL, NULL, 21, 3, 'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/13-1.jpg\"]'),
(103, 2, NULL, NULL, 7, 5, 'Best ecommerce CMS online store!', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/13-1.jpg\",\"products\\/14-1.jpg\"]'),
(104, 3, NULL, NULL, 9, 4, 'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/1.jpg\",\"products\\/4.jpg\",\"products\\/7.jpg\",\"products\\/17-1.jpg\"]'),
(105, 5, NULL, NULL, 10, 4, 'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/1.jpg\",\"products\\/17.jpg\",\"products\\/19-1.jpg\",\"products\\/23.jpg\"]'),
(106, 8, NULL, NULL, 15, 2, 'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/16-5.jpg\"]'),
(107, 4, NULL, NULL, 19, 2, 'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/1-1.jpg\",\"products\\/3-1.jpg\",\"products\\/14-1.jpg\",\"products\\/18.jpg\"]'),
(108, 5, NULL, NULL, 14, 5, 'Good app, good backup service and support. Good documentation.', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/24.jpg\"]'),
(109, 8, NULL, NULL, 24, 3, 'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/1.jpg\",\"products\\/9.jpg\",\"products\\/14.jpg\"]'),
(110, 9, NULL, NULL, 22, 3, 'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/23-1.jpg\"]'),
(111, 3, NULL, NULL, 8, 3, 'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/15.jpg\"]'),
(112, 10, NULL, NULL, 11, 2, 'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/2-1.jpg\",\"products\\/14.jpg\"]'),
(113, 5, NULL, NULL, 20, 5, 'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/7-1.jpg\",\"products\\/19.jpg\"]'),
(114, 7, NULL, NULL, 19, 1, 'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/16-5.jpg\",\"products\\/21-1.jpg\"]'),
(115, 1, NULL, NULL, 22, 2, 'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/6-1.jpg\",\"products\\/13.jpg\",\"products\\/16-5.jpg\",\"products\\/18.jpg\"]'),
(116, 5, NULL, NULL, 22, 4, 'The code is good, in general, if you like it, can you give it 5 stars?', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/12.jpg\",\"products\\/18-1.jpg\"]'),
(117, 8, NULL, NULL, 13, 2, 'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/5-1.jpg\",\"products\\/9-1.jpg\",\"products\\/14-1.jpg\",\"products\\/16-6.jpg\"]'),
(118, 10, NULL, NULL, 20, 3, 'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/9-1.jpg\"]'),
(119, 3, NULL, NULL, 14, 1, 'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/1-1.jpg\",\"products\\/14.jpg\",\"products\\/20.jpg\"]'),
(120, 10, NULL, NULL, 16, 1, 'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/24.jpg\"]'),
(121, 2, NULL, NULL, 17, 2, 'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/2.jpg\"]'),
(122, 5, NULL, NULL, 11, 4, 'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/24-1.jpg\"]'),
(123, 4, NULL, NULL, 8, 1, 'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/16-2.jpg\",\"products\\/19-1.jpg\",\"products\\/24-1.jpg\"]'),
(124, 9, NULL, NULL, 2, 2, 'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/12-1.jpg\",\"products\\/13-1.jpg\",\"products\\/19.jpg\",\"products\\/21.jpg\"]'),
(125, 2, NULL, NULL, 5, 2, 'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/8.jpg\",\"products\\/24.jpg\"]'),
(126, 1, NULL, NULL, 15, 2, 'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/16-2.jpg\"]'),
(127, 8, NULL, NULL, 11, 3, 'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/1-1.jpg\",\"products\\/8.jpg\",\"products\\/16-2.jpg\",\"products\\/17.jpg\"]'),
(128, 10, NULL, NULL, 1, 3, 'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/6.jpg\",\"products\\/9.jpg\",\"products\\/18.jpg\",\"products\\/20-1.jpg\"]'),
(129, 1, NULL, NULL, 11, 3, 'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/7-1.jpg\",\"products\\/13-1.jpg\",\"products\\/16-2.jpg\"]'),
(130, 6, NULL, NULL, 14, 3, 'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/4-1.jpg\",\"products\\/17.jpg\",\"products\\/20.jpg\",\"products\\/23-1.jpg\"]'),
(131, 3, NULL, NULL, 18, 4, 'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/11.jpg\",\"products\\/15-1.jpg\",\"products\\/16-2.jpg\",\"products\\/23-1.jpg\"]'),
(132, 8, NULL, NULL, 16, 2, 'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/16-4.jpg\"]'),
(133, 2, NULL, NULL, 9, 1, 'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/19.jpg\",\"products\\/20.jpg\",\"products\\/24.jpg\"]'),
(134, 4, NULL, NULL, 15, 4, 'Great E-commerce system. And much more : Wonderful Customer Support.', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/6-1.jpg\",\"products\\/12.jpg\",\"products\\/19-1.jpg\"]'),
(135, 10, NULL, NULL, 14, 3, 'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/6-1.jpg\",\"products\\/12.jpg\",\"products\\/14-1.jpg\"]'),
(136, 1, NULL, NULL, 4, 4, 'Good app, good backup service and support. Good documentation.', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/10.jpg\",\"products\\/17-1.jpg\",\"products\\/20.jpg\",\"products\\/21-1.jpg\"]'),
(137, 7, NULL, NULL, 4, 5, 'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/14.jpg\",\"products\\/23-1.jpg\"]'),
(138, 9, NULL, NULL, 19, 2, 'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/6.jpg\"]'),
(139, 10, NULL, NULL, 17, 2, 'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/8-1.jpg\",\"products\\/16-1.jpg\"]'),
(140, 7, NULL, NULL, 24, 1, 'Great E-commerce system. And much more : Wonderful Customer Support.', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/5.jpg\",\"products\\/6-1.jpg\",\"products\\/13.jpg\",\"products\\/21.jpg\"]'),
(141, 9, NULL, NULL, 13, 4, 'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/13.jpg\",\"products\\/14-1.jpg\",\"products\\/16-5.jpg\"]'),
(142, 9, NULL, NULL, 16, 2, 'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/8.jpg\",\"products\\/15-1.jpg\",\"products\\/19.jpg\"]'),
(143, 3, NULL, NULL, 19, 3, 'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/5.jpg\",\"products\\/6.jpg\",\"products\\/11.jpg\",\"products\\/24-1.jpg\"]'),
(144, 4, NULL, NULL, 21, 5, 'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/18.jpg\"]'),
(145, 7, NULL, NULL, 21, 5, 'Clean & perfect source code', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/2.jpg\",\"products\\/5-1.jpg\",\"products\\/15-1.jpg\",\"products\\/22.jpg\"]'),
(146, 6, NULL, NULL, 23, 4, 'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/6-1.jpg\"]'),
(147, 10, NULL, NULL, 24, 3, 'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/6-1.jpg\",\"products\\/12-1.jpg\",\"products\\/21-1.jpg\",\"products\\/23.jpg\"]'),
(148, 7, NULL, NULL, 6, 3, 'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/20-1.jpg\",\"products\\/22-1.jpg\"]'),
(149, 8, NULL, NULL, 14, 2, 'Clean & perfect source code', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/6.jpg\",\"products\\/8-1.jpg\",\"products\\/10.jpg\",\"products\\/17-1.jpg\"]'),
(150, 8, NULL, NULL, 22, 1, 'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/10-1.jpg\",\"products\\/14-1.jpg\",\"products\\/17.jpg\",\"products\\/20.jpg\"]'),
(151, 2, NULL, NULL, 22, 2, 'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/5.jpg\",\"products\\/8-1.jpg\",\"products\\/16-4.jpg\",\"products\\/18.jpg\"]'),
(152, 6, NULL, NULL, 12, 2, 'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/1-1.jpg\",\"products\\/16.jpg\",\"products\\/20-1.jpg\",\"products\\/21-1.jpg\"]'),
(153, 7, NULL, NULL, 23, 1, 'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/3.jpg\",\"products\\/13-1.jpg\",\"products\\/16.jpg\"]'),
(154, 9, NULL, NULL, 7, 5, 'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/16-4.jpg\",\"products\\/19.jpg\"]'),
(155, 3, NULL, NULL, 13, 3, 'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/2.jpg\",\"products\\/15-1.jpg\",\"products\\/24.jpg\"]'),
(156, 3, NULL, NULL, 4, 4, 'Best ecommerce CMS online store!', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/9-1.jpg\",\"products\\/12.jpg\",\"products\\/13.jpg\"]'),
(157, 4, NULL, NULL, 18, 2, 'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/13.jpg\",\"products\\/15.jpg\"]'),
(158, 7, NULL, NULL, 10, 1, 'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/8-1.jpg\",\"products\\/23-1.jpg\",\"products\\/24-1.jpg\"]'),
(159, 4, NULL, NULL, 9, 3, 'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/6-1.jpg\",\"products\\/21-1.jpg\",\"products\\/22-1.jpg\"]'),
(160, 6, NULL, NULL, 19, 5, 'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/7-1.jpg\"]'),
(161, 7, NULL, NULL, 1, 5, 'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/8-1.jpg\",\"products\\/16-6.jpg\",\"products\\/22-1.jpg\"]'),
(162, 6, NULL, NULL, 3, 1, 'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/5.jpg\"]'),
(163, 7, NULL, NULL, 5, 4, 'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/1.jpg\",\"products\\/9.jpg\"]'),
(164, 3, NULL, NULL, 20, 4, 'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/7-1.jpg\",\"products\\/19.jpg\",\"products\\/24.jpg\"]'),
(165, 2, NULL, NULL, 14, 1, 'The code is good, in general, if you like it, can you give it 5 stars?', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/6.jpg\",\"products\\/13-1.jpg\"]'),
(166, 1, NULL, NULL, 20, 5, 'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/6.jpg\",\"products\\/17-1.jpg\",\"products\\/18.jpg\"]'),
(167, 8, NULL, NULL, 8, 2, 'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/2.jpg\",\"products\\/4-1.jpg\",\"products\\/14.jpg\",\"products\\/22.jpg\"]'),
(168, 7, NULL, NULL, 7, 3, 'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/5.jpg\"]'),
(169, 2, NULL, NULL, 15, 5, 'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/5-1.jpg\",\"products\\/14-1.jpg\"]'),
(170, 6, NULL, NULL, 8, 3, 'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/16-1.jpg\",\"products\\/16-3.jpg\"]');
INSERT INTO `ec_reviews` (`id`, `customer_id`, `customer_name`, `customer_email`, `product_id`, `star`, `comment`, `status`, `created_at`, `updated_at`, `images`) VALUES
(171, 5, NULL, NULL, 18, 3, 'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/8-1.jpg\",\"products\\/11-1.jpg\",\"products\\/12.jpg\",\"products\\/16-1.jpg\"]'),
(172, 10, NULL, NULL, 10, 3, 'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/5-1.jpg\"]'),
(173, 10, NULL, NULL, 21, 5, 'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/13-1.jpg\"]'),
(174, 8, NULL, NULL, 19, 5, 'Good app, good backup service and support. Good documentation.', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/2.jpg\"]'),
(175, 4, NULL, NULL, 12, 2, 'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/10-1.jpg\",\"products\\/20-1.jpg\"]'),
(176, 1, NULL, NULL, 14, 1, 'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/12.jpg\",\"products\\/18-1.jpg\"]'),
(177, 9, NULL, NULL, 17, 1, 'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/11-1.jpg\"]'),
(178, 10, NULL, NULL, 8, 4, 'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/11.jpg\",\"products\\/21.jpg\",\"products\\/23.jpg\"]'),
(179, 6, NULL, NULL, 2, 1, 'Great E-commerce system. And much more : Wonderful Customer Support.', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/1.jpg\",\"products\\/5.jpg\"]'),
(180, 4, NULL, NULL, 6, 4, 'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/3.jpg\",\"products\\/16-5.jpg\",\"products\\/16.jpg\"]'),
(181, 6, NULL, NULL, 17, 4, 'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/11.jpg\"]'),
(182, 10, NULL, NULL, 5, 5, 'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/3.jpg\",\"products\\/16-1.jpg\"]'),
(183, 1, NULL, NULL, 23, 1, 'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/12-1.jpg\",\"products\\/19-1.jpg\",\"products\\/19.jpg\",\"products\\/23-1.jpg\"]'),
(184, 1, NULL, NULL, 6, 3, 'We have received brilliant service support and will be expanding the features with the developer. Nice product!', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/2-1.jpg\",\"products\\/17.jpg\"]'),
(185, 6, NULL, NULL, 9, 1, 'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/22-1.jpg\"]'),
(186, 5, NULL, NULL, 7, 3, 'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/16-2.jpg\"]'),
(187, 10, NULL, NULL, 3, 3, 'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/10-1.jpg\",\"products\\/16-6.jpg\"]'),
(188, 7, NULL, NULL, 17, 2, 'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/2.jpg\",\"products\\/4-1.jpg\",\"products\\/21.jpg\"]'),
(189, 1, NULL, NULL, 2, 5, 'Best ecommerce CMS online store!', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/20.jpg\"]'),
(190, 2, NULL, NULL, 10, 5, 'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/12-1.jpg\",\"products\\/13.jpg\"]'),
(191, 4, NULL, NULL, 20, 2, 'Clean & perfect source code', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/16-1.jpg\",\"products\\/16-5.jpg\",\"products\\/16.jpg\"]'),
(192, 1, NULL, NULL, 13, 4, 'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/15.jpg\",\"products\\/22.jpg\"]'),
(193, 8, NULL, NULL, 23, 4, 'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/16.jpg\",\"products\\/22-1.jpg\"]'),
(194, 5, NULL, NULL, 5, 3, 'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/16-3.jpg\",\"products\\/16.jpg\",\"products\\/19-1.jpg\",\"products\\/22-1.jpg\"]'),
(195, 3, NULL, NULL, 3, 1, 'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/17.jpg\"]'),
(196, 3, NULL, NULL, 17, 3, 'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/4-1.jpg\",\"products\\/7.jpg\",\"products\\/11.jpg\",\"products\\/18-1.jpg\"]'),
(197, 3, NULL, NULL, 5, 4, 'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/5.jpg\",\"products\\/8.jpg\",\"products\\/21.jpg\",\"products\\/24.jpg\"]'),
(198, 2, NULL, NULL, 21, 2, 'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/1-1.jpg\",\"products\\/2-1.jpg\"]'),
(199, 1, NULL, NULL, 16, 1, 'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/1-1.jpg\"]'),
(200, 3, NULL, NULL, 21, 4, 'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/5.jpg\"]'),
(201, 8, NULL, NULL, 7, 5, 'Clean & perfect source code', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/12.jpg\",\"products\\/17.jpg\",\"products\\/19.jpg\",\"products\\/23-1.jpg\"]'),
(202, 6, NULL, NULL, 1, 1, 'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/1.jpg\",\"products\\/3.jpg\",\"products\\/8-1.jpg\",\"products\\/16-2.jpg\"]'),
(203, 4, NULL, NULL, 7, 5, 'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/14.jpg\",\"products\\/17-1.jpg\",\"products\\/21-1.jpg\"]'),
(204, 4, NULL, NULL, 2, 4, 'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/15-1.jpg\",\"products\\/16-1.jpg\",\"products\\/17-1.jpg\",\"products\\/23.jpg\"]'),
(205, 9, NULL, NULL, 8, 1, 'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/2.jpg\",\"products\\/23-1.jpg\"]'),
(206, 2, NULL, NULL, 2, 1, 'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/22.jpg\"]'),
(207, 9, NULL, NULL, 10, 1, 'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/6-1.jpg\",\"products\\/8-1.jpg\",\"products\\/9.jpg\",\"products\\/24.jpg\"]'),
(208, 1, NULL, NULL, 19, 1, 'Great E-commerce system. And much more : Wonderful Customer Support.', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/10-1.jpg\",\"products\\/11.jpg\"]'),
(209, 3, NULL, NULL, 12, 5, 'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/3-1.jpg\",\"products\\/14-1.jpg\"]'),
(210, 9, NULL, NULL, 1, 4, 'We have received brilliant service support and will be expanding the features with the developer. Nice product!', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/9.jpg\",\"products\\/18.jpg\"]'),
(211, 2, NULL, NULL, 8, 2, 'Great E-commerce system. And much more : Wonderful Customer Support.', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/6-1.jpg\",\"products\\/11.jpg\",\"products\\/21-1.jpg\"]'),
(212, 4, NULL, NULL, 23, 4, 'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/7-1.jpg\",\"products\\/24.jpg\"]'),
(213, 4, NULL, NULL, 13, 3, 'Clean & perfect source code', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/4.jpg\",\"products\\/9-1.jpg\",\"products\\/22.jpg\",\"products\\/23.jpg\"]'),
(214, 6, NULL, NULL, 4, 5, 'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/5.jpg\",\"products\\/8-1.jpg\",\"products\\/20-1.jpg\"]'),
(215, 5, NULL, NULL, 1, 1, 'Best ecommerce CMS online store!', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/10-1.jpg\",\"products\\/12-1.jpg\"]'),
(216, 1, NULL, NULL, 8, 5, 'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/10.jpg\",\"products\\/19.jpg\"]'),
(217, 5, NULL, NULL, 8, 2, 'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/4-1.jpg\"]'),
(218, 8, NULL, NULL, 4, 1, 'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/13.jpg\",\"products\\/24-1.jpg\"]'),
(219, 5, NULL, NULL, 3, 5, 'Good app, good backup service and support. Good documentation.', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/7-1.jpg\",\"products\\/9.jpg\",\"products\\/12-1.jpg\"]'),
(220, 7, NULL, NULL, 12, 5, 'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/16-5.jpg\"]'),
(221, 4, NULL, NULL, 5, 1, 'Great E-commerce system. And much more : Wonderful Customer Support.', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/9-1.jpg\",\"products\\/15-1.jpg\"]'),
(222, 10, NULL, NULL, 19, 2, 'Best ecommerce CMS online store!', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/12.jpg\",\"products\\/16-1.jpg\"]'),
(223, 10, NULL, NULL, 4, 2, 'The code is good, in general, if you like it, can you give it 5 stars?', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/12.jpg\",\"products\\/13-1.jpg\",\"products\\/24-1.jpg\"]'),
(224, 2, NULL, NULL, 20, 2, 'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/18-1.jpg\",\"products\\/20.jpg\"]'),
(225, 5, NULL, NULL, 15, 4, 'The code is good, in general, if you like it, can you give it 5 stars?', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/11-1.jpg\"]'),
(226, 4, NULL, NULL, 4, 5, 'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/7.jpg\"]'),
(227, 7, NULL, NULL, 20, 2, 'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/3-1.jpg\",\"products\\/5-1.jpg\",\"products\\/12-1.jpg\",\"products\\/14-1.jpg\"]'),
(228, 7, NULL, NULL, 16, 2, 'We have received brilliant service support and will be expanding the features with the developer. Nice product!', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/3.jpg\",\"products\\/5.jpg\",\"products\\/7-1.jpg\"]'),
(229, 1, NULL, NULL, 21, 3, 'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/2-1.jpg\",\"products\\/4-1.jpg\",\"products\\/12-1.jpg\"]'),
(230, 10, NULL, NULL, 23, 1, 'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/1.jpg\",\"products\\/4.jpg\"]'),
(231, 3, NULL, NULL, 22, 4, 'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/6-1.jpg\",\"products\\/12-1.jpg\",\"products\\/14-1.jpg\",\"products\\/21.jpg\"]'),
(232, 10, NULL, NULL, 15, 2, 'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/5-1.jpg\"]'),
(233, 10, NULL, NULL, 2, 1, 'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/3.jpg\",\"products\\/5-1.jpg\",\"products\\/9-1.jpg\"]'),
(234, 6, NULL, NULL, 5, 1, 'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/3-1.jpg\",\"products\\/3.jpg\",\"products\\/16-4.jpg\",\"products\\/18-1.jpg\"]'),
(235, 4, NULL, NULL, 1, 1, 'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/3.jpg\",\"products\\/15-1.jpg\"]'),
(236, 7, NULL, NULL, 9, 4, 'Best ecommerce CMS online store!', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/5-1.jpg\",\"products\\/6.jpg\",\"products\\/23.jpg\",\"products\\/24.jpg\"]'),
(237, 8, NULL, NULL, 6, 4, 'Best ecommerce CMS online store!', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/16-3.jpg\"]'),
(238, 5, NULL, NULL, 2, 5, 'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece', 'published', '2026-01-06 00:55:39', '2026-01-06 00:55:39', '[\"products\\/15.jpg\",\"products\\/18-1.jpg\"]');

-- --------------------------------------------------------

--
-- Table structure for table `ec_review_replies`
--

CREATE TABLE `ec_review_replies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `review_id` bigint(20) UNSIGNED NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_shared_wishlists`
--

CREATE TABLE `ec_shared_wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(191) NOT NULL,
  `product_ids` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_shipments`
--

CREATE TABLE `ec_shipments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `weight` double DEFAULT 0,
  `shipment_id` varchar(120) DEFAULT NULL,
  `rate_id` varchar(120) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `status` varchar(120) NOT NULL DEFAULT 'pending',
  `cod_amount` decimal(15,2) DEFAULT 0.00,
  `cod_status` varchar(60) NOT NULL DEFAULT 'pending',
  `cross_checking_status` varchar(60) NOT NULL DEFAULT 'pending',
  `price` decimal(15,2) DEFAULT 0.00,
  `store_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tracking_id` varchar(191) DEFAULT NULL,
  `shipping_company_name` varchar(191) DEFAULT NULL,
  `tracking_link` varchar(191) DEFAULT NULL,
  `estimate_date_shipped` datetime DEFAULT NULL,
  `date_shipped` datetime DEFAULT NULL,
  `customer_delivered_confirmed_at` timestamp NULL DEFAULT NULL,
  `label_url` text DEFAULT NULL,
  `metadata` mediumtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_shipment_histories`
--

CREATE TABLE `ec_shipment_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `action` varchar(120) NOT NULL,
  `description` varchar(400) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `shipment_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_type` varchar(191) NOT NULL DEFAULT 'Botble\\ACL\\Models\\User'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_shipping`
--

CREATE TABLE `ec_shipping` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) DEFAULT NULL,
  `country` varchar(120) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_shipping`
--

INSERT INTO `ec_shipping` (`id`, `title`, `country`, `created_at`, `updated_at`) VALUES
(1, 'All', NULL, '2026-01-06 00:55:39', '2026-01-06 00:55:39');

-- --------------------------------------------------------

--
-- Table structure for table `ec_shipping_rules`
--

CREATE TABLE `ec_shipping_rules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `shipping_id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(24) DEFAULT 'based_on_price',
  `from` decimal(15,2) DEFAULT 0.00,
  `to` decimal(15,2) DEFAULT 0.00,
  `price` decimal(15,2) DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_shipping_rules`
--

INSERT INTO `ec_shipping_rules` (`id`, `name`, `shipping_id`, `type`, `from`, `to`, `price`, `created_at`, `updated_at`) VALUES
(1, 'Free delivery', 1, 'based_on_price', 1000.00, NULL, 0.00, '2026-01-06 00:55:39', '2026-01-06 00:55:39'),
(2, 'Flat Rate', 1, 'based_on_price', 0.00, NULL, 20.00, '2026-01-06 00:55:39', '2026-01-06 00:55:39'),
(3, 'Local Pickup', 1, 'based_on_price', 0.00, NULL, 0.00, '2026-01-06 00:55:39', '2026-01-06 00:55:39');

-- --------------------------------------------------------

--
-- Table structure for table `ec_shipping_rule_items`
--

CREATE TABLE `ec_shipping_rule_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `shipping_rule_id` bigint(20) UNSIGNED NOT NULL,
  `country` varchar(120) DEFAULT NULL,
  `state` varchar(120) DEFAULT NULL,
  `city` varchar(120) DEFAULT NULL,
  `zip_code` varchar(20) DEFAULT NULL,
  `adjustment_price` decimal(15,2) DEFAULT 0.00,
  `is_enabled` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_specification_attributes`
--

CREATE TABLE `ec_specification_attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `group_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `type` varchar(20) NOT NULL,
  `options` text DEFAULT NULL,
  `default_value` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `author_type` varchar(191) DEFAULT NULL,
  `author_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_specification_attributes`
--

INSERT INTO `ec_specification_attributes` (`id`, `group_id`, `name`, `type`, `options`, `default_value`, `created_at`, `updated_at`, `author_type`, `author_id`) VALUES
(1, 1, 'Height', 'text', NULL, NULL, '2026-01-06 00:55:57', '2026-01-06 00:55:57', NULL, NULL),
(2, 1, 'Width', 'text', NULL, NULL, '2026-01-06 00:55:57', '2026-01-06 00:55:57', NULL, NULL),
(3, 1, 'Weight', 'text', NULL, NULL, '2026-01-06 00:55:57', '2026-01-06 00:55:57', NULL, NULL),
(4, 2, 'Power', 'text', NULL, NULL, '2026-01-06 00:55:57', '2026-01-06 00:55:57', NULL, NULL),
(5, 2, 'Speed', 'text', NULL, NULL, '2026-01-06 00:55:57', '2026-01-06 00:55:57', NULL, NULL),
(6, 3, 'Battery Life', 'text', NULL, NULL, '2026-01-06 00:55:57', '2026-01-06 00:55:57', NULL, NULL),
(7, 4, 'Screen Size', 'text', NULL, NULL, '2026-01-06 00:55:57', '2026-01-06 00:55:57', NULL, NULL),
(8, 4, 'Resolution', 'select', '[\"1920x1080\",\"2560x1440\",\"3840x2160\"]', NULL, '2026-01-06 00:55:57', '2026-01-06 00:55:57', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ec_specification_attributes_translations`
--

CREATE TABLE `ec_specification_attributes_translations` (
  `lang_code` varchar(20) NOT NULL,
  `ec_specification_attributes_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `options` text DEFAULT NULL,
  `default_value` varchar(191) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_specification_groups`
--

CREATE TABLE `ec_specification_groups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` varchar(400) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `author_type` varchar(191) DEFAULT NULL,
  `author_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_specification_groups`
--

INSERT INTO `ec_specification_groups` (`id`, `name`, `description`, `created_at`, `updated_at`, `author_type`, `author_id`) VALUES
(1, 'Dimensions', NULL, '2026-01-06 00:55:57', '2026-01-06 00:55:57', NULL, NULL),
(2, 'Performance', NULL, '2026-01-06 00:55:57', '2026-01-06 00:55:57', NULL, NULL),
(3, 'Battery', NULL, '2026-01-06 00:55:57', '2026-01-06 00:55:57', NULL, NULL),
(4, 'Display', NULL, '2026-01-06 00:55:57', '2026-01-06 00:55:57', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ec_specification_groups_translations`
--

CREATE TABLE `ec_specification_groups_translations` (
  `lang_code` varchar(20) NOT NULL,
  `ec_specification_groups_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_specification_tables`
--

CREATE TABLE `ec_specification_tables` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` varchar(400) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `author_type` varchar(191) DEFAULT NULL,
  `author_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_specification_tables`
--

INSERT INTO `ec_specification_tables` (`id`, `name`, `description`, `created_at`, `updated_at`, `author_type`, `author_id`) VALUES
(1, 'General Specification', NULL, '2026-01-06 00:55:57', '2026-01-06 00:55:57', NULL, NULL),
(2, 'Technical Specification', NULL, '2026-01-06 00:55:58', '2026-01-06 00:55:58', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ec_specification_tables_translations`
--

CREATE TABLE `ec_specification_tables_translations` (
  `lang_code` varchar(20) NOT NULL,
  `ec_specification_tables_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_specification_table_group`
--

CREATE TABLE `ec_specification_table_group` (
  `table_id` bigint(20) UNSIGNED NOT NULL,
  `group_id` bigint(20) UNSIGNED NOT NULL,
  `order` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_specification_table_group`
--

INSERT INTO `ec_specification_table_group` (`table_id`, `group_id`, `order`) VALUES
(1, 1, 0),
(1, 2, 0),
(2, 3, 0),
(2, 4, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ec_store_locators`
--

CREATE TABLE `ec_store_locators` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(60) NOT NULL,
  `email` varchar(60) DEFAULT NULL,
  `phone` varchar(20) NOT NULL,
  `address` varchar(191) NOT NULL,
  `country` varchar(120) DEFAULT NULL,
  `state` varchar(120) DEFAULT NULL,
  `city` varchar(120) DEFAULT NULL,
  `is_primary` tinyint(1) DEFAULT 0,
  `is_shipping_location` tinyint(1) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_store_locators`
--

INSERT INTO `ec_store_locators` (`id`, `name`, `email`, `phone`, `address`, `country`, `state`, `city`, `is_primary`, `is_shipping_location`, `created_at`, `updated_at`, `zip_code`) VALUES
(1, 'Abdulaziz', 'info@abdulazizministreet.com', '01020438540', 'Cairo', 'EG', 'Cairo', 'cairo', 1, 1, '2026-01-06 00:55:39', '2026-01-10 20:07:39', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ec_taxes`
--

CREATE TABLE `ec_taxes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) DEFAULT NULL,
  `percentage` float DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_taxes`
--

INSERT INTO `ec_taxes` (`id`, `title`, `percentage`, `priority`, `status`, `created_at`, `updated_at`) VALUES
(1, 'VAT', 10, 1, 'published', '2026-01-06 00:55:34', '2026-01-06 00:55:34'),
(2, 'None', 0, 2, 'published', '2026-01-06 00:55:34', '2026-01-06 00:55:34'),
(3, 'Import Tax', 15, 3, 'published', '2026-01-06 00:55:34', '2026-01-06 00:55:34');

-- --------------------------------------------------------

--
-- Table structure for table `ec_taxes_translations`
--

CREATE TABLE `ec_taxes_translations` (
  `lang_code` varchar(191) NOT NULL,
  `ec_taxes_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_tax_products`
--

CREATE TABLE `ec_tax_products` (
  `tax_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_tax_products`
--

INSERT INTO `ec_tax_products` (`tax_id`, `product_id`) VALUES
(3, 1),
(2, 2),
(1, 3),
(2, 4),
(1, 5),
(1, 6),
(3, 7),
(3, 8),
(2, 9),
(2, 10),
(3, 11),
(2, 12),
(1, 13),
(3, 14),
(2, 15),
(2, 16),
(3, 17),
(3, 18),
(3, 19),
(3, 20),
(3, 21),
(2, 22),
(3, 23),
(1, 24);

-- --------------------------------------------------------

--
-- Table structure for table `ec_tax_rules`
--

CREATE TABLE `ec_tax_rules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tax_id` bigint(20) UNSIGNED NOT NULL,
  `country` varchar(120) DEFAULT NULL,
  `state` varchar(120) DEFAULT NULL,
  `city` varchar(120) DEFAULT NULL,
  `zip_code` varchar(20) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `percentage` float DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_wish_lists`
--

CREATE TABLE `ec_wish_lists` (
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question` text NOT NULL,
  `answer` text NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `question`, `answer`, `category_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'What Shipping Methods Are Available?', 'Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.', 1, 'published', '2026-01-06 00:55:14', '2026-01-06 00:55:14'),
(2, 'Do You Ship Internationally?', 'Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.', 1, 'published', '2026-01-06 00:55:14', '2026-01-06 00:55:14'),
(3, 'How Long Will It Take To Get My Package?', 'Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.', 1, 'published', '2026-01-06 00:55:14', '2026-01-06 00:55:14'),
(4, 'What Payment Methods Are Accepted?', 'Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.', 2, 'published', '2026-01-06 00:55:14', '2026-01-06 00:55:14'),
(5, 'Is Buying On-Line Safe?', 'Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.', 2, 'published', '2026-01-06 00:55:14', '2026-01-06 00:55:14'),
(6, 'How do I place an Order?', 'Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb Odd Future seitan normcore. Master cleanse American Apparel gentrify flexitarian beard slow-carb next level. Raw denim polaroid paleo farm-to-table, put a bird on it lo-fi tattooed Wes Anderson Pinterest letterpress. Fingerstache McSweeney’s pour-over, letterpress Schlitz photo booth master cleanse bespoke hashtag chillwave gentrify.', 3, 'published', '2026-01-06 00:55:14', '2026-01-06 00:55:14'),
(7, 'How Can I Cancel Or Change My Order?', 'Plaid letterpress leggings craft beer meh ethical Pinterest. Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth.', 3, 'published', '2026-01-06 00:55:14', '2026-01-06 00:55:14'),
(8, 'Do I need an account to place an order?', 'Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY. Cray ugh 3 wolf moon fap, fashion axe irony butcher cornhole typewriter chambray VHS banjo street art.', 3, 'published', '2026-01-06 00:55:14', '2026-01-06 00:55:14'),
(9, 'How Do I Track My Order?', 'Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb @Odd Future seitan normcore. Master cleanse American Apparel gentrify flexitarian beard slow-carb next level.', 3, 'published', '2026-01-06 00:55:14', '2026-01-06 00:55:14'),
(10, 'How Can I Return a Product?', 'Kale chips Truffaut Williamsburg, hashtag fixie Pinterest raw denim c hambray drinking vinegar Carles street art Bushwick gastropub. Wolf Tumblr paleo church-key. Plaid food truck Echo Park YOLO bitters hella, direct trade Thundercats leggings quinoa before they sold out. You probably haven’t heard of them wayfarers authentic umami drinking vinegar Pinterest Cosby sweater, fingerstache fap High Life.', 3, 'published', '2026-01-06 00:55:14', '2026-01-06 00:55:14');

-- --------------------------------------------------------

--
-- Table structure for table `faqs_translations`
--

CREATE TABLE `faqs_translations` (
  `lang_code` varchar(20) NOT NULL,
  `faqs_id` bigint(20) UNSIGNED NOT NULL,
  `question` text DEFAULT NULL,
  `answer` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faq_categories`
--

CREATE TABLE `faq_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `order` tinyint(4) NOT NULL DEFAULT 0,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faq_categories`
--

INSERT INTO `faq_categories` (`id`, `name`, `order`, `status`, `created_at`, `updated_at`, `description`) VALUES
(1, 'Shipping', 0, 'published', '2026-01-06 00:55:14', '2026-01-06 00:55:14', NULL),
(2, 'Payment', 1, 'published', '2026-01-06 00:55:14', '2026-01-06 00:55:14', NULL),
(3, 'Order &amp; Returns', 2, 'published', '2026-01-06 00:55:14', '2026-01-06 00:55:14', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `faq_categories_translations`
--

CREATE TABLE `faq_categories_translations` (
  `lang_code` varchar(20) NOT NULL,
  `faq_categories_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faq_categories_translations`
--

INSERT INTO `faq_categories_translations` (`lang_code`, `faq_categories_id`, `name`) VALUES
('ar', 1, 'الشحن'),
('ar', 2, 'الدفع'),
('ar', 3, 'الطلب والإرجاع');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(191) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `lang_id` bigint(20) UNSIGNED NOT NULL,
  `lang_name` varchar(120) NOT NULL,
  `lang_locale` varchar(20) NOT NULL,
  `lang_code` varchar(20) NOT NULL,
  `lang_flag` varchar(20) DEFAULT NULL,
  `lang_is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `lang_order` int(11) NOT NULL DEFAULT 0,
  `lang_is_rtl` tinyint(3) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`lang_id`, `lang_name`, `lang_locale`, `lang_code`, `lang_flag`, `lang_is_default`, `lang_order`, `lang_is_rtl`) VALUES
(1, 'English', 'en', 'en_US', 'us', 0, 1, 0),
(2, 'العربية', 'ar', 'ar', 'eg', 1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `language_meta`
--

CREATE TABLE `language_meta` (
  `lang_meta_id` bigint(20) UNSIGNED NOT NULL,
  `lang_meta_code` varchar(20) DEFAULT NULL,
  `lang_meta_origin` varchar(32) NOT NULL,
  `reference_id` bigint(20) UNSIGNED NOT NULL,
  `reference_type` varchar(120) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `language_meta`
--

INSERT INTO `language_meta` (`lang_meta_id`, `lang_meta_code`, `lang_meta_origin`, `reference_id`, `reference_type`) VALUES
(1, 'en_US', 'b8a509abf32aa3a786fa49ed46e1eca2', 1, 'Botble\\SimpleSlider\\Models\\SimpleSlider'),
(2, 'en_US', '9297c1ce678b80736442cfe3f12b5161', 2, 'Botble\\SimpleSlider\\Models\\SimpleSlider'),
(3, 'en_US', '6b849c0ca721666961c9c6cca9c526c5', 3, 'Botble\\SimpleSlider\\Models\\SimpleSlider'),
(4, 'en_US', '3fd2a0bfd47aec1157d097aaecf29f7c', 4, 'Botble\\SimpleSlider\\Models\\SimpleSlider'),
(5, 'en_US', 'c10c5a141d396248f57301b722006f02', 5, 'Botble\\SimpleSlider\\Models\\SimpleSlider'),
(6, 'en_US', 'dd6602fe3cb88d6dfbb0bfcc502c6117', 6, 'Botble\\SimpleSlider\\Models\\SimpleSlider'),
(7, 'en_US', 'fc96aea305135c8a2653419a254856f8', 7, 'Botble\\SimpleSlider\\Models\\SimpleSlider'),
(29, 'ar', 'bb3ccd5881d651448ded1dac904054ac', 9, 'Botble\\Menu\\Models\\Menu'),
(30, 'en_US', '93c731f1c3a84ef05cd54d044c379eaa', 5, 'Botble\\Menu\\Models\\Menu'),
(24, 'en_US', '156273c7fdb78cecbd298fd90ce83a74', 2, 'Botble\\Menu\\Models\\Menu'),
(25, 'ar', '156273c7fdb78cecbd298fd90ce83a74', 7, 'Botble\\Menu\\Models\\Menu'),
(26, 'en_US', 'f23fafc43cf1f2f121f669f3999c1617', 3, 'Botble\\Menu\\Models\\Menu'),
(27, 'ar', 'f23fafc43cf1f2f121f669f3999c1617', 8, 'Botble\\Menu\\Models\\Menu'),
(28, 'en_US', 'bb3ccd5881d651448ded1dac904054ac', 4, 'Botble\\Menu\\Models\\Menu'),
(23, 'ar', 'a9c0fc569fd231b004d44e718add99e2', 6, 'Botble\\Menu\\Models\\Menu'),
(22, 'en_US', 'a9c0fc569fd231b004d44e718add99e2', 1, 'Botble\\Menu\\Models\\Menu'),
(31, 'ar', '93c731f1c3a84ef05cd54d044c379eaa', 10, 'Botble\\Menu\\Models\\Menu'),
(32, 'en_US', 'a52b12ba87680f08fb0dcc1cf3b00744', 1, 'Botble\\Menu\\Models\\MenuLocation'),
(33, 'ar', 'a52b12ba87680f08fb0dcc1cf3b00744', 3, 'Botble\\Menu\\Models\\MenuLocation'),
(34, 'en_US', '7f90042eec5c9f06419fa84d977b5141', 2, 'Botble\\Menu\\Models\\MenuLocation'),
(35, 'ar', '7f90042eec5c9f06419fa84d977b5141', 4, 'Botble\\Menu\\Models\\MenuLocation');

-- --------------------------------------------------------

--
-- Table structure for table `media_files`
--

CREATE TABLE `media_files` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `alt` varchar(191) DEFAULT NULL,
  `folder_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `mime_type` varchar(120) NOT NULL,
  `size` int(11) NOT NULL,
  `url` varchar(191) NOT NULL,
  `options` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `visibility` varchar(191) NOT NULL DEFAULT 'public'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media_files`
--

INSERT INTO `media_files` (`id`, `user_id`, `name`, `alt`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`, `visibility`) VALUES
(1, 0, 'icon-1', 'icon-1', 1, 'image/png', 5327, 'product-categories/icon-1.png', '[]', '2026-01-06 00:55:14', '2026-01-06 00:55:14', NULL, 'public'),
(2, 0, 'icon-10', 'icon-10', 1, 'image/png', 5327, 'product-categories/icon-10.png', '[]', '2026-01-06 00:55:14', '2026-01-06 00:55:14', NULL, 'public'),
(3, 0, 'icon-11', 'icon-11', 1, 'image/png', 5327, 'product-categories/icon-11.png', '[]', '2026-01-06 00:55:14', '2026-01-06 00:55:14', NULL, 'public'),
(4, 0, 'icon-12', 'icon-12', 1, 'image/png', 5327, 'product-categories/icon-12.png', '[]', '2026-01-06 00:55:14', '2026-01-06 00:55:14', NULL, 'public'),
(5, 0, 'icon-13', 'icon-13', 1, 'image/png', 5327, 'product-categories/icon-13.png', '[]', '2026-01-06 00:55:14', '2026-01-06 00:55:14', NULL, 'public'),
(6, 0, 'icon-14', 'icon-14', 1, 'image/png', 5327, 'product-categories/icon-14.png', '[]', '2026-01-06 00:55:14', '2026-01-06 00:55:14', NULL, 'public'),
(7, 0, 'icon-2', 'icon-2', 1, 'image/png', 5327, 'product-categories/icon-2.png', '[]', '2026-01-06 00:55:15', '2026-01-06 00:55:15', NULL, 'public'),
(8, 0, 'icon-3', 'icon-3', 1, 'image/png', 5327, 'product-categories/icon-3.png', '[]', '2026-01-06 00:55:15', '2026-01-06 00:55:15', NULL, 'public'),
(9, 0, 'icon-4', 'icon-4', 1, 'image/png', 5327, 'product-categories/icon-4.png', '[]', '2026-01-06 00:55:15', '2026-01-06 00:55:15', NULL, 'public'),
(10, 0, 'icon-5', 'icon-5', 1, 'image/png', 5327, 'product-categories/icon-5.png', '[]', '2026-01-06 00:55:15', '2026-01-06 00:55:15', NULL, 'public'),
(11, 0, 'icon-6', 'icon-6', 1, 'image/png', 5327, 'product-categories/icon-6.png', '[]', '2026-01-06 00:55:15', '2026-01-06 00:55:15', NULL, 'public'),
(12, 0, 'icon-7', 'icon-7', 1, 'image/png', 5327, 'product-categories/icon-7.png', '[]', '2026-01-06 00:55:15', '2026-01-06 00:55:15', NULL, 'public'),
(13, 0, 'icon-8', 'icon-8', 1, 'image/png', 5327, 'product-categories/icon-8.png', '[]', '2026-01-06 00:55:16', '2026-01-06 00:55:16', NULL, 'public'),
(14, 0, 'icon-9', 'icon-9', 1, 'image/png', 5327, 'product-categories/icon-9.png', '[]', '2026-01-06 00:55:16', '2026-01-06 00:55:16', NULL, 'public'),
(15, 0, 'image-1', 'image-1', 1, 'image/png', 5327, 'product-categories/image-1.png', '[]', '2026-01-06 00:55:16', '2026-01-06 00:55:16', NULL, 'public'),
(16, 0, 'image-10', 'image-10', 1, 'image/png', 5327, 'product-categories/image-10.png', '[]', '2026-01-06 00:55:16', '2026-01-06 00:55:16', NULL, 'public'),
(17, 0, 'image-11', 'image-11', 1, 'image/png', 5327, 'product-categories/image-11.png', '[]', '2026-01-06 00:55:16', '2026-01-06 00:55:16', NULL, 'public'),
(18, 0, 'image-12', 'image-12', 1, 'image/png', 5327, 'product-categories/image-12.png', '[]', '2026-01-06 00:55:16', '2026-01-06 00:55:16', NULL, 'public'),
(19, 0, 'image-13', 'image-13', 1, 'image/png', 5327, 'product-categories/image-13.png', '[]', '2026-01-06 00:55:16', '2026-01-06 00:55:16', NULL, 'public'),
(20, 0, 'image-14', 'image-14', 1, 'image/png', 5327, 'product-categories/image-14.png', '[]', '2026-01-06 00:55:17', '2026-01-06 00:55:17', NULL, 'public'),
(21, 0, 'image-15', 'image-15', 1, 'image/png', 5327, 'product-categories/image-15.png', '[]', '2026-01-06 00:55:17', '2026-01-06 00:55:17', NULL, 'public'),
(22, 0, 'image-2', 'image-2', 1, 'image/png', 5327, 'product-categories/image-2.png', '[]', '2026-01-06 00:55:17', '2026-01-06 00:55:17', NULL, 'public'),
(23, 0, 'image-3', 'image-3', 1, 'image/png', 5327, 'product-categories/image-3.png', '[]', '2026-01-06 00:55:17', '2026-01-06 00:55:17', NULL, 'public'),
(24, 0, 'image-4', 'image-4', 1, 'image/png', 5327, 'product-categories/image-4.png', '[]', '2026-01-06 00:55:17', '2026-01-06 00:55:17', NULL, 'public'),
(25, 0, 'image-5', 'image-5', 1, 'image/png', 5327, 'product-categories/image-5.png', '[]', '2026-01-06 00:55:17', '2026-01-06 00:55:17', NULL, 'public'),
(26, 0, 'image-6', 'image-6', 1, 'image/png', 5327, 'product-categories/image-6.png', '[]', '2026-01-06 00:55:18', '2026-01-06 00:55:18', NULL, 'public'),
(27, 0, 'image-7', 'image-7', 1, 'image/png', 5327, 'product-categories/image-7.png', '[]', '2026-01-06 00:55:18', '2026-01-06 00:55:18', NULL, 'public'),
(28, 0, 'image-8', 'image-8', 1, 'image/png', 5327, 'product-categories/image-8.png', '[]', '2026-01-06 00:55:18', '2026-01-06 00:55:18', NULL, 'public'),
(29, 0, 'image-9', 'image-9', 1, 'image/png', 5327, 'product-categories/image-9.png', '[]', '2026-01-06 00:55:18', '2026-01-06 00:55:18', NULL, 'public'),
(30, 0, '1-1', '1-1', 2, 'image/jpeg', 9803, 'products/1-1.jpg', '[]', '2026-01-06 00:55:18', '2026-01-06 00:55:18', NULL, 'public'),
(31, 0, '1', '1', 2, 'image/jpeg', 9803, 'products/1.jpg', '[]', '2026-01-06 00:55:19', '2026-01-06 00:55:19', NULL, 'public'),
(32, 0, '10-1', '10-1', 2, 'image/jpeg', 9803, 'products/10-1.jpg', '[]', '2026-01-06 00:55:19', '2026-01-06 00:55:19', NULL, 'public'),
(33, 0, '10', '10', 2, 'image/jpeg', 9803, 'products/10.jpg', '[]', '2026-01-06 00:55:19', '2026-01-06 00:55:19', NULL, 'public'),
(34, 0, '11-1', '11-1', 2, 'image/jpeg', 9803, 'products/11-1.jpg', '[]', '2026-01-06 00:55:19', '2026-01-06 00:55:19', NULL, 'public'),
(35, 0, '11', '11', 2, 'image/jpeg', 9803, 'products/11.jpg', '[]', '2026-01-06 00:55:19', '2026-01-06 00:55:19', NULL, 'public'),
(36, 0, '12-1', '12-1', 2, 'image/jpeg', 9803, 'products/12-1.jpg', '[]', '2026-01-06 00:55:20', '2026-01-06 00:55:20', NULL, 'public'),
(37, 0, '12', '12', 2, 'image/jpeg', 9803, 'products/12.jpg', '[]', '2026-01-06 00:55:20', '2026-01-06 00:55:20', NULL, 'public'),
(38, 0, '13-1', '13-1', 2, 'image/jpeg', 9803, 'products/13-1.jpg', '[]', '2026-01-06 00:55:20', '2026-01-06 00:55:20', NULL, 'public'),
(39, 0, '13', '13', 2, 'image/jpeg', 9803, 'products/13.jpg', '[]', '2026-01-06 00:55:20', '2026-01-06 00:55:20', NULL, 'public'),
(40, 0, '14-1', '14-1', 2, 'image/jpeg', 9803, 'products/14-1.jpg', '[]', '2026-01-06 00:55:20', '2026-01-06 00:55:20', NULL, 'public'),
(41, 0, '14', '14', 2, 'image/jpeg', 9803, 'products/14.jpg', '[]', '2026-01-06 00:55:21', '2026-01-06 00:55:21', NULL, 'public'),
(42, 0, '15-1', '15-1', 2, 'image/jpeg', 9803, 'products/15-1.jpg', '[]', '2026-01-06 00:55:21', '2026-01-06 00:55:21', NULL, 'public'),
(43, 0, '15', '15', 2, 'image/jpeg', 9803, 'products/15.jpg', '[]', '2026-01-06 00:55:21', '2026-01-06 00:55:21', NULL, 'public'),
(44, 0, '16-1', '16-1', 2, 'image/jpeg', 9803, 'products/16-1.jpg', '[]', '2026-01-06 00:55:21', '2026-01-06 00:55:21', NULL, 'public'),
(45, 0, '16-2', '16-2', 2, 'image/jpeg', 9803, 'products/16-2.jpg', '[]', '2026-01-06 00:55:21', '2026-01-06 00:55:21', NULL, 'public'),
(46, 0, '16-3', '16-3', 2, 'image/jpeg', 9803, 'products/16-3.jpg', '[]', '2026-01-06 00:55:22', '2026-01-06 00:55:22', NULL, 'public'),
(47, 0, '16-4', '16-4', 2, 'image/jpeg', 9803, 'products/16-4.jpg', '[]', '2026-01-06 00:55:22', '2026-01-06 00:55:22', NULL, 'public'),
(48, 0, '16-5', '16-5', 2, 'image/jpeg', 9803, 'products/16-5.jpg', '[]', '2026-01-06 00:55:22', '2026-01-06 00:55:22', NULL, 'public'),
(49, 0, '16-6', '16-6', 2, 'image/jpeg', 9803, 'products/16-6.jpg', '[]', '2026-01-06 00:55:22', '2026-01-06 00:55:22', NULL, 'public'),
(50, 0, '16', '16', 2, 'image/jpeg', 9803, 'products/16.jpg', '[]', '2026-01-06 00:55:23', '2026-01-06 00:55:23', NULL, 'public'),
(51, 0, '17-1', '17-1', 2, 'image/jpeg', 9803, 'products/17-1.jpg', '[]', '2026-01-06 00:55:23', '2026-01-06 00:55:23', NULL, 'public'),
(52, 0, '17', '17', 2, 'image/jpeg', 9803, 'products/17.jpg', '[]', '2026-01-06 00:55:23', '2026-01-06 00:55:23', NULL, 'public'),
(53, 0, '18-1', '18-1', 2, 'image/jpeg', 9803, 'products/18-1.jpg', '[]', '2026-01-06 00:55:23', '2026-01-06 00:55:23', NULL, 'public'),
(54, 0, '18', '18', 2, 'image/jpeg', 9803, 'products/18.jpg', '[]', '2026-01-06 00:55:23', '2026-01-06 00:55:23', NULL, 'public'),
(55, 0, '19-1', '19-1', 2, 'image/jpeg', 9803, 'products/19-1.jpg', '[]', '2026-01-06 00:55:24', '2026-01-06 00:55:24', NULL, 'public'),
(56, 0, '19', '19', 2, 'image/jpeg', 9803, 'products/19.jpg', '[]', '2026-01-06 00:55:24', '2026-01-06 00:55:24', NULL, 'public'),
(57, 0, '2-1', '2-1', 2, 'image/jpeg', 9803, 'products/2-1.jpg', '[]', '2026-01-06 00:55:24', '2026-01-06 00:55:24', NULL, 'public'),
(58, 0, '2', '2', 2, 'image/jpeg', 9803, 'products/2.jpg', '[]', '2026-01-06 00:55:24', '2026-01-06 00:55:24', NULL, 'public'),
(59, 0, '20-1', '20-1', 2, 'image/jpeg', 9803, 'products/20-1.jpg', '[]', '2026-01-06 00:55:24', '2026-01-06 00:55:24', NULL, 'public'),
(60, 0, '20', '20', 2, 'image/jpeg', 9803, 'products/20.jpg', '[]', '2026-01-06 00:55:25', '2026-01-06 00:55:25', NULL, 'public'),
(61, 0, '21-1', '21-1', 2, 'image/jpeg', 9803, 'products/21-1.jpg', '[]', '2026-01-06 00:55:25', '2026-01-06 00:55:25', NULL, 'public'),
(62, 0, '21', '21', 2, 'image/jpeg', 9803, 'products/21.jpg', '[]', '2026-01-06 00:55:25', '2026-01-06 00:55:25', NULL, 'public'),
(63, 0, '22-1', '22-1', 2, 'image/jpeg', 9803, 'products/22-1.jpg', '[]', '2026-01-06 00:55:25', '2026-01-06 00:55:25', NULL, 'public'),
(64, 0, '22', '22', 2, 'image/jpeg', 9803, 'products/22.jpg', '[]', '2026-01-06 00:55:25', '2026-01-06 00:55:25', NULL, 'public'),
(65, 0, '23-1', '23-1', 2, 'image/jpeg', 9803, 'products/23-1.jpg', '[]', '2026-01-06 00:55:26', '2026-01-06 00:55:26', NULL, 'public'),
(66, 0, '23', '23', 2, 'image/jpeg', 9803, 'products/23.jpg', '[]', '2026-01-06 00:55:26', '2026-01-06 00:55:26', NULL, 'public'),
(67, 0, '24-1', '24-1', 2, 'image/jpeg', 9803, 'products/24-1.jpg', '[]', '2026-01-06 00:55:26', '2026-01-06 00:55:26', NULL, 'public'),
(68, 0, '24', '24', 2, 'image/jpeg', 9803, 'products/24.jpg', '[]', '2026-01-06 00:55:26', '2026-01-06 00:55:26', NULL, 'public'),
(69, 0, '3-1', '3-1', 2, 'image/jpeg', 9803, 'products/3-1.jpg', '[]', '2026-01-06 00:55:26', '2026-01-06 00:55:26', NULL, 'public'),
(70, 0, '3', '3', 2, 'image/jpeg', 9803, 'products/3.jpg', '[]', '2026-01-06 00:55:27', '2026-01-06 00:55:27', NULL, 'public'),
(71, 0, '4-1', '4-1', 2, 'image/jpeg', 9803, 'products/4-1.jpg', '[]', '2026-01-06 00:55:27', '2026-01-06 00:55:27', NULL, 'public'),
(72, 0, '4', '4', 2, 'image/jpeg', 9803, 'products/4.jpg', '[]', '2026-01-06 00:55:27', '2026-01-06 00:55:27', NULL, 'public'),
(73, 0, '5-1', '5-1', 2, 'image/jpeg', 9803, 'products/5-1.jpg', '[]', '2026-01-06 00:55:27', '2026-01-06 00:55:27', NULL, 'public'),
(74, 0, '5', '5', 2, 'image/jpeg', 9803, 'products/5.jpg', '[]', '2026-01-06 00:55:27', '2026-01-06 00:55:27', NULL, 'public'),
(75, 0, '6-1', '6-1', 2, 'image/jpeg', 9803, 'products/6-1.jpg', '[]', '2026-01-06 00:55:28', '2026-01-06 00:55:28', NULL, 'public'),
(76, 0, '6', '6', 2, 'image/jpeg', 9803, 'products/6.jpg', '[]', '2026-01-06 00:55:28', '2026-01-06 00:55:28', NULL, 'public'),
(77, 0, '7-1', '7-1', 2, 'image/jpeg', 9803, 'products/7-1.jpg', '[]', '2026-01-06 00:55:28', '2026-01-06 00:55:28', NULL, 'public'),
(78, 0, '7', '7', 2, 'image/jpeg', 9803, 'products/7.jpg', '[]', '2026-01-06 00:55:28', '2026-01-06 00:55:28', NULL, 'public'),
(79, 0, '8-1', '8-1', 2, 'image/jpeg', 9803, 'products/8-1.jpg', '[]', '2026-01-06 00:55:29', '2026-01-06 00:55:29', NULL, 'public'),
(80, 0, '8', '8', 2, 'image/jpeg', 9803, 'products/8.jpg', '[]', '2026-01-06 00:55:29', '2026-01-06 00:55:29', NULL, 'public'),
(81, 0, '9-1', '9-1', 2, 'image/jpeg', 9803, 'products/9-1.jpg', '[]', '2026-01-06 00:55:29', '2026-01-06 00:55:29', NULL, 'public'),
(82, 0, '9', '9', 2, 'image/jpeg', 9803, 'products/9.jpg', '[]', '2026-01-06 00:55:29', '2026-01-06 00:55:29', NULL, 'public'),
(83, 0, '1', '1', 3, 'image/jpeg', 9803, 'customers/1.jpg', '[]', '2026-01-06 00:55:34', '2026-01-06 00:55:34', NULL, 'public'),
(84, 0, '10', '10', 3, 'image/jpeg', 9803, 'customers/10.jpg', '[]', '2026-01-06 00:55:34', '2026-01-06 00:55:34', NULL, 'public'),
(85, 0, '2', '2', 3, 'image/jpeg', 9803, 'customers/2.jpg', '[]', '2026-01-06 00:55:35', '2026-01-06 00:55:35', NULL, 'public'),
(86, 0, '3', '3', 3, 'image/jpeg', 9803, 'customers/3.jpg', '[]', '2026-01-06 00:55:35', '2026-01-06 00:55:35', NULL, 'public'),
(87, 0, '4', '4', 3, 'image/jpeg', 9803, 'customers/4.jpg', '[]', '2026-01-06 00:55:35', '2026-01-06 00:55:35', NULL, 'public'),
(88, 0, '5', '5', 3, 'image/jpeg', 9803, 'customers/5.jpg', '[]', '2026-01-06 00:55:35', '2026-01-06 00:55:35', NULL, 'public'),
(89, 0, '6', '6', 3, 'image/jpeg', 9803, 'customers/6.jpg', '[]', '2026-01-06 00:55:35', '2026-01-06 00:55:35', NULL, 'public'),
(90, 0, '7', '7', 3, 'image/jpeg', 9803, 'customers/7.jpg', '[]', '2026-01-06 00:55:36', '2026-01-06 00:55:36', NULL, 'public'),
(91, 0, '8', '8', 3, 'image/jpeg', 9803, 'customers/8.jpg', '[]', '2026-01-06 00:55:36', '2026-01-06 00:55:36', NULL, 'public'),
(92, 0, '9', '9', 3, 'image/jpeg', 9803, 'customers/9.jpg', '[]', '2026-01-06 00:55:36', '2026-01-06 00:55:36', NULL, 'public'),
(93, 0, '1', '1', 4, 'image/png', 17727, 'flash-sales/1.png', '[]', '2026-01-06 00:55:39', '2026-01-06 00:55:39', NULL, 'public'),
(94, 0, '2', '2', 4, 'image/png', 12278, 'flash-sales/2.png', '[]', '2026-01-06 00:55:40', '2026-01-06 00:55:40', NULL, 'public'),
(95, 0, '3', '3', 4, 'image/png', 12278, 'flash-sales/3.png', '[]', '2026-01-06 00:55:40', '2026-01-06 00:55:40', NULL, 'public'),
(96, 0, '4', '4', 4, 'image/png', 12278, 'flash-sales/4.png', '[]', '2026-01-06 00:55:40', '2026-01-06 00:55:40', NULL, 'public'),
(97, 0, '5', '5', 4, 'image/png', 12278, 'flash-sales/5.png', '[]', '2026-01-06 00:55:40', '2026-01-06 00:55:40', NULL, 'public'),
(98, 0, '1-1', '1-1', 5, 'image/png', 28526, 'sliders/1-1.png', '[]', '2026-01-06 00:55:41', '2026-01-06 00:55:41', NULL, 'public'),
(99, 0, '1-2', '1-2', 5, 'image/png', 28526, 'sliders/1-2.png', '[]', '2026-01-06 00:55:41', '2026-01-06 00:55:41', NULL, 'public'),
(100, 0, '2-1', '2-1', 5, 'image/png', 15581, 'sliders/2-1.png', '[]', '2026-01-06 00:55:42', '2026-01-06 00:55:42', NULL, 'public'),
(101, 0, '2-2', '2-2', 5, 'image/png', 15581, 'sliders/2-2.png', '[]', '2026-01-06 00:55:42', '2026-01-06 00:55:42', NULL, 'public'),
(102, 0, '3-1', '3-1', 5, 'image/png', 28526, 'sliders/3-1.png', '[]', '2026-01-06 00:55:42', '2026-01-06 00:55:42', NULL, 'public'),
(103, 0, '3-2', '3-2', 5, 'image/png', 28526, 'sliders/3-2.png', '[]', '2026-01-06 00:55:43', '2026-01-06 00:55:43', NULL, 'public'),
(104, 0, '4-1', '4-1', 5, 'image/png', 28526, 'sliders/4-1.png', '[]', '2026-01-06 00:55:43', '2026-01-06 00:55:43', NULL, 'public'),
(105, 0, '4-2', '4-2', 5, 'image/png', 28526, 'sliders/4-2.png', '[]', '2026-01-06 00:55:44', '2026-01-06 00:55:44', NULL, 'public'),
(106, 0, '5-1', '5-1', 5, 'image/png', 23916, 'sliders/5-1.png', '[]', '2026-01-06 00:55:44', '2026-01-06 00:55:44', NULL, 'public'),
(107, 0, '5-2', '5-2', 5, 'image/png', 23916, 'sliders/5-2.png', '[]', '2026-01-06 00:55:45', '2026-01-06 00:55:45', NULL, 'public'),
(108, 0, 'banner-1', 'banner-1', 5, 'image/png', 212534, 'sliders/banner-1.png', '[]', '2026-01-06 00:55:45', '2026-01-06 00:55:45', NULL, 'public'),
(109, 0, 'thumbnail-1', 'thumbnail-1', 5, 'image/jpeg', 9803, 'sliders/thumbnail-1.jpg', '[]', '2026-01-06 00:55:46', '2026-01-06 00:55:46', NULL, 'public'),
(110, 0, 'thumbnail-2', 'thumbnail-2', 5, 'image/jpeg', 9803, 'sliders/thumbnail-2.jpg', '[]', '2026-01-06 00:55:46', '2026-01-06 00:55:46', NULL, 'public'),
(111, 0, 'thumbnail-3', 'thumbnail-3', 5, 'image/jpeg', 9803, 'sliders/thumbnail-3.jpg', '[]', '2026-01-06 00:55:46', '2026-01-06 00:55:46', NULL, 'public'),
(112, 0, 'thumbnail-4', 'thumbnail-4', 5, 'image/jpeg', 9803, 'sliders/thumbnail-4.jpg', '[]', '2026-01-06 00:55:47', '2026-01-06 00:55:47', NULL, 'public'),
(113, 0, 'thumbnail-5', 'thumbnail-5', 5, 'image/jpeg', 9803, 'sliders/thumbnail-5.jpg', '[]', '2026-01-06 00:55:47', '2026-01-06 00:55:47', NULL, 'public'),
(114, 0, 'thumbnail-6', 'thumbnail-6', 5, 'image/jpeg', 9803, 'sliders/thumbnail-6.jpg', '[]', '2026-01-06 00:55:47', '2026-01-06 00:55:47', NULL, 'public'),
(115, 0, '1', '1', 6, 'image/png', 9803, 'news/1.png', '[]', '2026-01-06 00:55:48', '2026-01-06 00:55:48', NULL, 'public'),
(116, 0, '10', '10', 6, 'image/png', 9803, 'news/10.png', '[]', '2026-01-06 00:55:48', '2026-01-06 00:55:48', NULL, 'public'),
(117, 0, '11', '11', 6, 'image/png', 9803, 'news/11.png', '[]', '2026-01-06 00:55:48', '2026-01-06 00:55:48', NULL, 'public'),
(118, 0, '2', '2', 6, 'image/png', 9803, 'news/2.png', '[]', '2026-01-06 00:55:48', '2026-01-06 00:55:48', NULL, 'public'),
(119, 0, '3', '3', 6, 'image/png', 9803, 'news/3.png', '[]', '2026-01-06 00:55:48', '2026-01-06 00:55:48', NULL, 'public'),
(120, 0, '4', '4', 6, 'image/png', 9803, 'news/4.png', '[]', '2026-01-06 00:55:49', '2026-01-06 00:55:49', NULL, 'public'),
(121, 0, '5', '5', 6, 'image/png', 9803, 'news/5.png', '[]', '2026-01-06 00:55:49', '2026-01-06 00:55:49', NULL, 'public'),
(122, 0, '6', '6', 6, 'image/png', 9803, 'news/6.png', '[]', '2026-01-06 00:55:49', '2026-01-06 00:55:49', NULL, 'public'),
(123, 0, '7', '7', 6, 'image/png', 9803, 'news/7.png', '[]', '2026-01-06 00:55:49', '2026-01-06 00:55:49', NULL, 'public'),
(124, 0, '8', '8', 6, 'image/png', 9803, 'news/8.png', '[]', '2026-01-06 00:55:50', '2026-01-06 00:55:50', NULL, 'public'),
(125, 0, '9', '9', 6, 'image/png', 9803, 'news/9.png', '[]', '2026-01-06 00:55:50', '2026-01-06 00:55:50', NULL, 'public'),
(126, 0, 'app-store', 'app-store', 7, 'image/jpeg', 1928, 'general/app-store.jpg', '[]', '2026-01-06 00:55:51', '2026-01-06 00:55:51', NULL, 'public'),
(127, 0, 'category-1', 'category-1', 7, 'image/png', 1070, 'general/category-1.png', '[]', '2026-01-06 00:55:51', '2026-01-06 00:55:51', NULL, 'public'),
(128, 0, 'clock', 'clock', 7, 'image/png', 4405, 'general/clock.png', '[]', '2026-01-06 00:55:51', '2026-01-06 00:55:51', NULL, 'public'),
(129, 0, 'contact-img', 'contact-img', 7, 'image/jpeg', 35441, 'general/contact-img.jpg', '[]', '2026-01-06 00:55:51', '2026-01-06 00:55:51', NULL, 'public'),
(130, 0, 'credit-card', 'credit-card', 7, 'image/png', 1455, 'general/credit-card.png', '[]', '2026-01-06 00:55:51', '2026-01-06 00:55:51', NULL, 'public'),
(131, 0, 'facebook', 'facebook', 7, 'image/png', 804, 'general/facebook.png', '[]', '2026-01-06 00:55:52', '2026-01-06 00:55:52', NULL, 'public'),
(132, 0, 'favicon', 'favicon', 7, 'image/png', 17597, 'general/favicon.png', '[]', '2026-01-06 00:55:52', '2026-01-06 00:55:52', NULL, 'public'),
(133, 0, 'google-play', 'google-play', 7, 'image/jpeg', 1928, 'general/google-play.jpg', '[]', '2026-01-06 00:55:52', '2026-01-06 00:55:52', NULL, 'public'),
(134, 0, 'header-bg', 'header-bg', 7, 'image/png', 36758, 'general/header-bg.png', '[]', '2026-01-06 00:55:52', '2026-01-06 00:55:52', NULL, 'public'),
(135, 0, 'home-6', 'home-6', 7, 'image/jpeg', 103307, 'general/home-6.jpeg', '[]', '2026-01-06 00:55:53', '2026-01-06 00:55:53', NULL, 'public'),
(136, 0, 'icon-1', 'icon-1', 7, 'image/png', 3143, 'general/icon-1.png', '[]', '2026-01-06 00:55:53', '2026-01-06 00:55:53', NULL, 'public'),
(137, 0, 'icon-2', 'icon-2', 7, 'image/png', 5389, 'general/icon-2.png', '[]', '2026-01-06 00:55:53', '2026-01-06 00:55:53', NULL, 'public'),
(138, 0, 'icon-3', 'icon-3', 7, 'image/png', 3452, 'general/icon-3.png', '[]', '2026-01-06 00:55:53', '2026-01-06 00:55:53', NULL, 'public'),
(139, 0, 'icon-4', 'icon-4', 7, 'image/png', 3369, 'general/icon-4.png', '[]', '2026-01-06 00:55:53', '2026-01-06 00:55:53', NULL, 'public'),
(140, 0, 'icon-5', 'icon-5', 7, 'image/png', 4435, 'general/icon-5.png', '[]', '2026-01-06 00:55:53', '2026-01-06 00:55:53', NULL, 'public'),
(141, 0, 'instagram', 'instagram', 7, 'image/png', 2935, 'general/instagram.png', '[]', '2026-01-06 00:55:54', '2026-01-06 00:55:54', NULL, 'public'),
(142, 0, 'loading', 'loading', 7, 'image/gif', 23986, 'general/loading.gif', '[]', '2026-01-06 00:55:54', '2026-01-06 00:55:54', NULL, 'public'),
(143, 0, 'login-1', 'login-1', 7, 'image/png', 20332, 'general/login-1.png', '[]', '2026-01-06 00:55:55', '2026-01-06 00:55:55', NULL, 'public'),
(144, 0, 'logo', 'logo', 7, 'image/png', 83871, 'general/logo.png', '[]', '2026-01-06 00:55:55', '2026-01-06 00:55:55', NULL, 'public'),
(145, 0, 'newsletter-background-image', 'newsletter-background-image', 7, 'image/png', 58306, 'general/newsletter-background-image.png', '[]', '2026-01-06 00:55:56', '2026-01-06 00:55:56', NULL, 'public'),
(146, 0, 'newsletter-image', 'newsletter-image', 7, 'image/png', 14191, 'general/newsletter-image.png', '[]', '2026-01-06 00:55:56', '2026-01-06 00:55:56', NULL, 'public'),
(147, 0, 'open-graph-image', 'open-graph-image', 7, 'image/png', 108845, 'general/open-graph-image.png', '[]', '2026-01-06 00:55:56', '2026-01-06 00:55:56', NULL, 'public'),
(148, 0, 'paper-plane', 'paper-plane', 7, 'image/png', 5184, 'general/paper-plane.png', '[]', '2026-01-06 00:55:56', '2026-01-06 00:55:56', NULL, 'public'),
(149, 0, 'payment-methods', 'payment-methods', 7, 'image/png', 476, 'general/payment-methods.png', '[]', '2026-01-06 00:55:57', '2026-01-06 00:55:57', NULL, 'public'),
(150, 0, 'pinterest', 'pinterest', 7, 'image/png', 2430, 'general/pinterest.png', '[]', '2026-01-06 00:55:57', '2026-01-06 00:55:57', NULL, 'public'),
(151, 0, 'twitter', 'twitter', 7, 'image/png', 2058, 'general/twitter.png', '[]', '2026-01-06 00:55:57', '2026-01-06 00:55:57', NULL, 'public'),
(152, 0, 'youtube', 'youtube', 7, 'image/png', 1296, 'general/youtube.png', '[]', '2026-01-06 00:55:57', '2026-01-06 00:55:57', NULL, 'public'),
(153, 0, 'cod', 'cod', 8, 'image/png', 12121, 'payments/cod.png', '[]', '2026-01-06 00:55:57', '2026-01-06 00:55:57', NULL, 'public'),
(154, 0, 'bank-transfer', 'bank-transfer', 8, 'image/png', 29089, 'payments/bank-transfer.png', '[]', '2026-01-06 00:55:57', '2026-01-06 00:55:57', NULL, 'public'),
(155, 0, 'stripe', 'stripe', 8, 'image/webp', 7516, 'payments/stripe.webp', '[]', '2026-01-06 00:55:57', '2026-01-06 00:55:57', NULL, 'public'),
(156, 0, 'paypal', 'paypal', 8, 'image/png', 3001, 'payments/paypal.png', '[]', '2026-01-06 00:55:57', '2026-01-06 00:55:57', NULL, 'public'),
(157, 0, 'mollie', 'mollie', 8, 'image/png', 8968, 'payments/mollie.png', '[]', '2026-01-06 00:55:57', '2026-01-06 00:55:57', NULL, 'public'),
(158, 0, 'paystack', 'paystack', 8, 'image/png', 31015, 'payments/paystack.png', '[]', '2026-01-06 00:55:57', '2026-01-06 00:55:57', NULL, 'public'),
(159, 0, 'razorpay', 'razorpay', 8, 'image/png', 8489, 'payments/razorpay.png', '[]', '2026-01-06 00:55:57', '2026-01-06 00:55:57', NULL, 'public'),
(160, 0, 'sslcommerz', 'sslcommerz', 8, 'image/png', 3482, 'payments/sslcommerz.png', '[]', '2026-01-06 00:55:57', '2026-01-06 00:55:57', NULL, 'public'),
(161, 0, '1', '1', 9, 'image/png', 11540, 'promotion/1.png', '[]', '2026-01-06 00:55:59', '2026-01-06 00:55:59', NULL, 'public'),
(162, 0, '10', '10', 9, 'image/png', 7883, 'promotion/10.png', '[]', '2026-01-06 00:55:59', '2026-01-06 00:55:59', NULL, 'public'),
(163, 0, '11', '11', 9, 'image/png', 7883, 'promotion/11.png', '[]', '2026-01-06 00:56:00', '2026-01-06 00:56:00', NULL, 'public'),
(164, 0, '12', '12', 9, 'image/png', 7883, 'promotion/12.png', '[]', '2026-01-06 00:56:00', '2026-01-06 00:56:00', NULL, 'public'),
(165, 0, '2', '2', 9, 'image/png', 11540, 'promotion/2.png', '[]', '2026-01-06 00:56:00', '2026-01-06 00:56:00', NULL, 'public'),
(166, 0, '3', '3', 9, 'image/png', 11540, 'promotion/3.png', '[]', '2026-01-06 00:56:00', '2026-01-06 00:56:00', NULL, 'public'),
(167, 0, '4', '4', 9, 'image/png', 13954, 'promotion/4.png', '[]', '2026-01-06 00:56:00', '2026-01-06 00:56:00', NULL, 'public'),
(168, 0, '5', '5', 9, 'image/png', 26326, 'promotion/5.png', '[]', '2026-01-06 00:56:01', '2026-01-06 00:56:01', NULL, 'public'),
(169, 0, '6', '6', 9, 'image/png', 26326, 'promotion/6.png', '[]', '2026-01-06 00:56:01', '2026-01-06 00:56:01', NULL, 'public'),
(170, 0, '7', '7', 9, 'image/png', 14402, 'promotion/7.png', '[]', '2026-01-06 00:56:01', '2026-01-06 00:56:01', NULL, 'public'),
(171, 0, '8', '8', 9, 'image/png', 7028, 'promotion/8.png', '[]', '2026-01-06 00:56:02', '2026-01-06 00:56:02', NULL, 'public'),
(172, 0, '9', '9', 9, 'image/png', 7883, 'promotion/9.png', '[]', '2026-01-06 00:56:02', '2026-01-06 00:56:02', NULL, 'public'),
(173, 0, '1', '1', 10, 'image/png', 5327, 'stores/1.png', '[]', '2026-01-06 00:56:02', '2026-01-06 00:56:02', NULL, 'public'),
(174, 0, '10', '10', 10, 'image/png', 5327, 'stores/10.png', '[]', '2026-01-06 00:56:03', '2026-01-06 00:56:03', NULL, 'public'),
(175, 0, '11', '11', 10, 'image/png', 5327, 'stores/11.png', '[]', '2026-01-06 00:56:03', '2026-01-06 00:56:03', NULL, 'public'),
(176, 0, '12', '12', 10, 'image/png', 5327, 'stores/12.png', '[]', '2026-01-06 00:56:03', '2026-01-06 00:56:03', NULL, 'public'),
(177, 0, '13', '13', 10, 'image/png', 5327, 'stores/13.png', '[]', '2026-01-06 00:56:03', '2026-01-06 00:56:03', NULL, 'public'),
(178, 0, '14', '14', 10, 'image/png', 5327, 'stores/14.png', '[]', '2026-01-06 00:56:03', '2026-01-06 00:56:03', NULL, 'public'),
(179, 0, '15', '15', 10, 'image/png', 5327, 'stores/15.png', '[]', '2026-01-06 00:56:04', '2026-01-06 00:56:04', NULL, 'public'),
(180, 0, '16', '16', 10, 'image/png', 5327, 'stores/16.png', '[]', '2026-01-06 00:56:04', '2026-01-06 00:56:04', NULL, 'public'),
(181, 0, '17', '17', 10, 'image/png', 5327, 'stores/17.png', '[]', '2026-01-06 00:56:04', '2026-01-06 00:56:04', NULL, 'public'),
(182, 0, '2', '2', 10, 'image/png', 5327, 'stores/2.png', '[]', '2026-01-06 00:56:04', '2026-01-06 00:56:04', NULL, 'public'),
(183, 0, '3', '3', 10, 'image/png', 5327, 'stores/3.png', '[]', '2026-01-06 00:56:04', '2026-01-06 00:56:04', NULL, 'public'),
(184, 0, '4', '4', 10, 'image/png', 5327, 'stores/4.png', '[]', '2026-01-06 00:56:04', '2026-01-06 00:56:04', NULL, 'public'),
(185, 0, '5', '5', 10, 'image/png', 5327, 'stores/5.png', '[]', '2026-01-06 00:56:04', '2026-01-06 00:56:04', NULL, 'public'),
(186, 0, '6', '6', 10, 'image/png', 5327, 'stores/6.png', '[]', '2026-01-06 00:56:05', '2026-01-06 00:56:05', NULL, 'public'),
(187, 0, '7', '7', 10, 'image/png', 5327, 'stores/7.png', '[]', '2026-01-06 00:56:05', '2026-01-06 00:56:05', NULL, 'public'),
(188, 0, '8', '8', 10, 'image/png', 5327, 'stores/8.png', '[]', '2026-01-06 00:56:05', '2026-01-06 00:56:05', NULL, 'public'),
(189, 0, '9', '9', 10, 'image/png', 5327, 'stores/9.png', '[]', '2026-01-06 00:56:05', '2026-01-06 00:56:05', NULL, 'public'),
(190, 1, 'ميني شارع عبد العزيز', 'ميني شارع عبد العزيز', 0, 'image/jpeg', 25131, 'myny-sharaa-aabd-alaazyz.jpg', '[]', '2026-01-06 01:59:51', '2026-01-06 01:59:51', NULL, 'public'),
(191, 1, 'LOGO ABDALAZIZSORE PNG', 'LOGO ABDALAZIZSORE PNG', 0, 'image/png', 156159, 'logo-abdalazizsore-png.png', '[]', '2026-01-06 02:05:42', '2026-01-06 02:05:42', NULL, 'public'),
(192, 1, 'home_appliances_ar', 'home_appliances_ar', 0, 'image/png', 215473, 'home-appliances-ar.png', '[]', '2026-01-06 02:36:47', '2026-01-06 02:36:47', NULL, 'public'),
(193, 1, 'home_appliances_ar', 'home_appliances_ar', 0, 'image/png', 435845, 'home-appliances-ar.png', '[]', '2026-01-06 02:36:47', '2026-01-06 02:36:47', NULL, 'public');

-- --------------------------------------------------------

--
-- Table structure for table `media_folders`
--

CREATE TABLE `media_folders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `color` varchar(191) DEFAULT NULL,
  `slug` varchar(191) DEFAULT NULL,
  `parent_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media_folders`
--

INSERT INTO `media_folders` (`id`, `user_id`, `name`, `color`, `slug`, `parent_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 0, 'product-categories', NULL, 'product-categories', 0, '2026-01-06 00:55:14', '2026-01-06 00:55:14', NULL),
(2, 0, 'products', NULL, 'products', 0, '2026-01-06 00:55:18', '2026-01-06 00:55:18', NULL),
(3, 0, 'customers', NULL, 'customers', 0, '2026-01-06 00:55:34', '2026-01-06 00:55:34', NULL),
(4, 0, 'flash-sales', NULL, 'flash-sales', 0, '2026-01-06 00:55:39', '2026-01-06 00:55:39', NULL),
(5, 0, 'sliders', NULL, 'sliders', 0, '2026-01-06 00:55:41', '2026-01-06 00:55:41', NULL),
(6, 0, 'news', NULL, 'news', 0, '2026-01-06 00:55:48', '2026-01-06 00:55:48', NULL),
(7, 0, 'general', NULL, 'general', 0, '2026-01-06 00:55:51', '2026-01-06 00:55:51', NULL),
(8, 0, 'payments', NULL, 'payments', 0, '2026-01-06 00:55:57', '2026-01-06 00:55:57', NULL),
(9, 0, 'promotion', NULL, 'promotion', 0, '2026-01-06 00:55:59', '2026-01-06 00:55:59', NULL),
(10, 0, 'stores', NULL, 'stores', 0, '2026-01-06 00:56:02', '2026-01-06 00:56:02', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `media_settings`
--

CREATE TABLE `media_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(120) NOT NULL,
  `value` text DEFAULT NULL,
  `media_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media_settings`
--

INSERT INTO `media_settings` (`id`, `key`, `value`, `media_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'recent_items', '[{\"id\":193,\"is_folder\":false},{\"id\":191,\"is_folder\":false},{\"id\":190,\"is_folder\":false}]', NULL, 1, '2026-01-06 01:59:52', '2026-01-06 02:37:50');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `slug` varchar(120) DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Main menu', 'main-menu', 'published', '2026-01-06 00:56:09', '2026-01-06 00:56:09'),
(2, 'Header menu', 'header-menu', 'published', '2026-01-06 00:56:09', '2026-01-06 00:56:09'),
(3, 'Product categories', 'product-categories', 'published', '2026-01-06 00:56:09', '2026-01-06 00:56:09'),
(4, 'Information', 'information', 'published', '2026-01-06 00:56:09', '2026-01-06 00:56:09'),
(5, 'Company', 'company', 'published', '2026-01-06 00:56:09', '2026-01-06 00:56:09'),
(6, 'Main menu', 'main-menu-ar', 'published', '2026-01-06 00:56:09', '2026-01-06 00:56:09'),
(7, 'Header menu', 'header-menu-ar', 'published', '2026-01-06 00:56:09', '2026-01-06 00:56:09'),
(8, 'Product categories', 'product-categories-ar', 'published', '2026-01-06 00:56:09', '2026-01-06 00:56:09'),
(9, 'Information', 'information-ar', 'published', '2026-01-06 00:56:09', '2026-01-06 00:56:09'),
(10, 'Company', 'company-ar', 'published', '2026-01-06 00:56:09', '2026-01-06 00:56:09');

-- --------------------------------------------------------

--
-- Table structure for table `menu_locations`
--

CREATE TABLE `menu_locations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `menu_id` bigint(20) UNSIGNED NOT NULL,
  `location` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_locations`
--

INSERT INTO `menu_locations` (`id`, `menu_id`, `location`, `created_at`, `updated_at`) VALUES
(1, 1, 'main-menu', '2026-01-06 00:56:09', '2026-01-06 00:56:09'),
(2, 2, 'header-navigation', '2026-01-06 00:56:09', '2026-01-06 00:56:09'),
(3, 6, 'main-menu', '2026-01-06 00:56:09', '2026-01-06 00:56:09'),
(4, 7, 'header-navigation', '2026-01-06 00:56:09', '2026-01-06 00:56:09');

-- --------------------------------------------------------

--
-- Table structure for table `menu_nodes`
--

CREATE TABLE `menu_nodes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `menu_id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `reference_id` bigint(20) UNSIGNED DEFAULT NULL,
  `reference_type` varchar(191) DEFAULT NULL,
  `url` varchar(191) DEFAULT NULL,
  `icon_font` varchar(191) DEFAULT NULL,
  `position` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(191) DEFAULT NULL,
  `css_class` varchar(191) DEFAULT NULL,
  `target` varchar(20) NOT NULL DEFAULT '_self',
  `has_child` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_nodes`
--

INSERT INTO `menu_nodes` (`id`, `menu_id`, `parent_id`, `reference_id`, `reference_type`, `url`, `icon_font`, `position`, `title`, `css_class`, `target`, `has_child`, `created_at`, `updated_at`) VALUES
(1, 1, 0, NULL, NULL, '/', 'fi-rs-home', 0, 'Home', NULL, '_self', 1, '2026-01-06 00:56:09', '2026-01-06 00:56:09'),
(2, 1, 1, 1, 'Botble\\Page\\Models\\Page', '/', NULL, 0, 'Home 1', NULL, '_self', 0, '2026-01-06 00:56:09', '2026-01-06 00:56:09'),
(3, 1, 1, 2, 'Botble\\Page\\Models\\Page', '/homepage-2', NULL, 1, 'Home 2', NULL, '_self', 0, '2026-01-06 00:56:09', '2026-01-06 00:56:09'),
(4, 1, 1, 3, 'Botble\\Page\\Models\\Page', '/homepage-3', NULL, 2, 'Home 3', NULL, '_self', 0, '2026-01-06 00:56:09', '2026-01-06 00:56:09'),
(5, 1, 1, 4, 'Botble\\Page\\Models\\Page', '/homepage-4', NULL, 3, 'Home 4', NULL, '_self', 0, '2026-01-06 00:56:09', '2026-01-06 00:56:09'),
(6, 1, 1, 16, 'Botble\\Page\\Models\\Page', '/homepage-5', NULL, 4, 'Home 5', NULL, '_self', 0, '2026-01-06 00:56:09', '2026-01-06 00:56:09'),
(7, 1, 1, 17, 'Botble\\Page\\Models\\Page', '/homepage-6', NULL, 5, 'Home 6', NULL, '_self', 0, '2026-01-06 00:56:09', '2026-01-06 00:56:09'),
(8, 1, 0, NULL, NULL, '/products', NULL, 1, 'Shop', NULL, '_self', 1, '2026-01-06 00:56:09', '2026-01-06 00:56:09'),
(9, 1, 8, NULL, NULL, '/products', NULL, 0, 'Shop Grid - Full Width', NULL, '_self', 0, '2026-01-06 00:56:09', '2026-01-06 00:56:09'),
(10, 1, 8, NULL, NULL, '/products?layout=product-right-sidebar', NULL, 1, 'Shop Grid - Right Sidebar', NULL, '_self', 0, '2026-01-06 00:56:09', '2026-01-06 00:56:09'),
(11, 1, 8, NULL, NULL, '/products?layout=product-left-sidebar', NULL, 2, 'Shop Grid - Left Sidebar', NULL, '_self', 0, '2026-01-06 00:56:09', '2026-01-06 00:56:09'),
(12, 1, 8, 1, 'Botble\\Ecommerce\\Models\\ProductCategory', '/product-categories/electronics', NULL, 3, 'Products Of Category', NULL, '_self', 0, '2026-01-06 00:56:09', '2026-01-06 00:56:09'),
(13, 1, 0, NULL, NULL, '/stores', NULL, 2, 'Stores', NULL, '_self', 1, '2026-01-06 00:56:09', '2026-01-06 00:56:09'),
(14, 1, 13, NULL, NULL, '/stores', NULL, 0, 'Stores - Grid', NULL, '_self', 0, '2026-01-06 00:56:09', '2026-01-06 00:56:09'),
(15, 1, 13, NULL, NULL, '/stores?layout=stores-list', NULL, 1, 'Stores - List', NULL, '_self', 0, '2026-01-06 00:56:09', '2026-01-06 00:56:09'),
(16, 1, 13, NULL, NULL, '/stores/gopro', NULL, 2, 'Store - Detail', NULL, '_self', 0, '2026-01-06 00:56:09', '2026-01-06 00:56:09'),
(17, 1, 0, NULL, NULL, '/products/tlyfzyon-samsong-55-bos-smart-4k', NULL, 3, 'Product', NULL, '_self', 1, '2026-01-06 00:56:09', '2026-01-06 00:56:09'),
(18, 1, 17, NULL, NULL, '/products/tlyfzyon-samsong-55-bos-smart-4k', NULL, 0, 'Product Right Sidebar', NULL, '_self', 0, '2026-01-06 00:56:09', '2026-01-06 00:56:09'),
(19, 1, 17, NULL, NULL, '/products/thlag-al-gy-18-kdm-nofrost-sylfr', NULL, 1, 'Product Left Sidebar', NULL, '_self', 0, '2026-01-06 00:56:09', '2026-01-06 00:56:09'),
(20, 1, 17, NULL, NULL, '/products/ghsal-toshyba-fok-atomatyk-10-kylo', NULL, 2, 'Product Full Width', NULL, '_self', 0, '2026-01-06 00:56:09', '2026-01-06 00:56:09'),
(21, 1, 0, 5, 'Botble\\Page\\Models\\Page', '/blog', NULL, 4, 'Blog', NULL, '_self', 1, '2026-01-06 00:56:09', '2026-01-06 00:56:09'),
(22, 1, 21, 5, 'Botble\\Page\\Models\\Page', '/blog', NULL, 0, 'Blog Grid', NULL, '_self', 0, '2026-01-06 00:56:09', '2026-01-06 00:56:09'),
(23, 1, 21, 13, 'Botble\\Page\\Models\\Page', '/blog-list', NULL, 1, 'Blog List', NULL, '_self', 0, '2026-01-06 00:56:09', '2026-01-06 00:56:09'),
(24, 1, 21, 14, 'Botble\\Page\\Models\\Page', '/blog-big', NULL, 2, 'Blog Big', NULL, '_self', 0, '2026-01-06 00:56:09', '2026-01-06 00:56:09'),
(25, 1, 21, 15, 'Botble\\Page\\Models\\Page', '/blog-wide', NULL, 3, 'Blog Wide', NULL, '_self', 0, '2026-01-06 00:56:09', '2026-01-06 00:56:09'),
(26, 1, 21, NULL, NULL, '/blog/4-expert-tips-on-how-to-choose-the-right-mens-wallet', NULL, 4, 'Single Post', NULL, '_self', 1, '2026-01-06 00:56:09', '2026-01-06 00:56:09'),
(27, 1, 26, NULL, NULL, '/blog/4-expert-tips-on-how-to-choose-the-right-mens-wallet', NULL, 0, 'Single Post Right Sidebar', NULL, '_self', 0, '2026-01-06 00:56:09', '2026-01-06 00:56:09'),
(28, 1, 26, NULL, NULL, '/blog/sexy-clutches-how-to-buy-wear-a-designer-clutch-bag', NULL, 1, 'Single Post Left Sidebar', NULL, '_self', 0, '2026-01-06 00:56:09', '2026-01-06 00:56:09'),
(29, 1, 26, NULL, NULL, '/blog/the-top-2020-handbag-trends-to-know', NULL, 2, 'Single Post Full Width', NULL, '_self', 0, '2026-01-06 00:56:09', '2026-01-06 00:56:09'),
(30, 1, 26, NULL, NULL, '/blog/how-to-match-the-color-of-your-handbag-with-an-outfit', NULL, 3, 'Single Post with Product Listing', NULL, '_self', 0, '2026-01-06 00:56:09', '2026-01-06 00:56:09'),
(31, 1, 0, 18, 'Botble\\Page\\Models\\Page', '/faq', NULL, 5, 'FAQ', NULL, '_self', 0, '2026-01-06 00:56:09', '2026-01-06 00:56:09'),
(32, 1, 0, 6, 'Botble\\Page\\Models\\Page', '/contact', NULL, 6, 'Contact', NULL, '_self', 0, '2026-01-06 00:56:09', '2026-01-06 00:56:09'),
(33, 2, 0, 7, 'Botble\\Page\\Models\\Page', '/about-us', NULL, 0, 'About Us', NULL, '_self', 0, '2026-01-06 00:56:09', '2026-01-06 00:56:09'),
(34, 2, 0, NULL, NULL, '/orders/tracking', NULL, 1, 'Order Tracking', NULL, '_self', 0, '2026-01-06 00:56:09', '2026-01-06 00:56:09'),
(35, 3, 0, 1, 'Botble\\Ecommerce\\Models\\ProductCategory', '/product-categories/electronics', NULL, 0, 'Electronics', NULL, '_self', 0, '2026-01-06 00:56:09', '2026-01-06 00:56:09'),
(36, 3, 0, 2, 'Botble\\Ecommerce\\Models\\ProductCategory', '/product-categories/home-appliances', NULL, 1, 'Home Appliances', NULL, '_self', 0, '2026-01-06 00:56:09', '2026-01-06 00:56:09'),
(37, 3, 0, 3, 'Botble\\Ecommerce\\Models\\ProductCategory', '/product-categories/kitchen-appliances', NULL, 2, 'Kitchen Appliances', NULL, '_self', 0, '2026-01-06 00:56:09', '2026-01-06 00:56:09'),
(38, 3, 0, 4, 'Botble\\Ecommerce\\Models\\ProductCategory', '/product-categories/televisions', NULL, 3, 'Televisions', NULL, '_self', 0, '2026-01-06 00:56:09', '2026-01-06 00:56:09'),
(39, 3, 0, 5, 'Botble\\Ecommerce\\Models\\ProductCategory', '/product-categories/refrigerators', NULL, 4, 'Refrigerators', NULL, '_self', 0, '2026-01-06 00:56:09', '2026-01-06 00:56:09'),
(40, 3, 0, 6, 'Botble\\Ecommerce\\Models\\ProductCategory', '/product-categories/washing-machines', NULL, 5, 'Washing Machines', NULL, '_self', 0, '2026-01-06 00:56:09', '2026-01-06 00:56:09'),
(41, 4, 0, 6, 'Botble\\Page\\Models\\Page', '/contact', NULL, 0, 'Contact Us', NULL, '_self', 0, '2026-01-06 00:56:09', '2026-01-06 00:56:09'),
(42, 4, 0, 7, 'Botble\\Page\\Models\\Page', '/about-us', NULL, 1, 'About Us', NULL, '_self', 0, '2026-01-06 00:56:09', '2026-01-06 00:56:09'),
(43, 4, 0, 8, 'Botble\\Page\\Models\\Page', '/cookie-policy', NULL, 2, 'Cookie Policy', NULL, '_self', 0, '2026-01-06 00:56:09', '2026-01-06 00:56:09'),
(44, 4, 0, 9, 'Botble\\Page\\Models\\Page', '/terms-conditions', NULL, 3, 'Terms & Conditions', NULL, '_self', 0, '2026-01-06 00:56:09', '2026-01-06 00:56:09'),
(45, 4, 0, 10, 'Botble\\Page\\Models\\Page', '/returns-exchanges', NULL, 4, 'Returns & Exchanges', NULL, '_self', 0, '2026-01-06 00:56:09', '2026-01-06 00:56:09'),
(46, 4, 0, 11, 'Botble\\Page\\Models\\Page', '/shipping-delivery', NULL, 5, 'Shipping & Delivery', NULL, '_self', 0, '2026-01-06 00:56:09', '2026-01-06 00:56:09'),
(47, 4, 0, 12, 'Botble\\Page\\Models\\Page', '/privacy-policy', NULL, 6, 'Privacy Policy', NULL, '_self', 0, '2026-01-06 00:56:09', '2026-01-06 00:56:09'),
(48, 5, 0, 7, 'Botble\\Page\\Models\\Page', '/about-us', NULL, 0, 'About us', NULL, '_self', 0, '2026-01-06 00:56:09', '2026-01-06 00:56:09'),
(49, 5, 0, NULL, NULL, '#', NULL, 1, 'Affiliate', NULL, '_self', 0, '2026-01-06 00:56:09', '2026-01-06 00:56:09'),
(50, 5, 0, NULL, NULL, '#', NULL, 2, 'Career', NULL, '_self', 0, '2026-01-06 00:56:09', '2026-01-06 00:56:09'),
(51, 5, 0, 6, 'Botble\\Page\\Models\\Page', '/contact', NULL, 3, 'Contact us', NULL, '_self', 0, '2026-01-06 00:56:09', '2026-01-06 00:56:09'),
(52, 6, 0, NULL, NULL, '/', 'fi-rs-home', 0, 'الرئيسية', NULL, '_self', 1, '2026-01-06 00:56:09', '2026-01-06 00:56:09'),
(53, 6, 0, NULL, NULL, '/products', NULL, 1, 'المتجر', NULL, '_self', 1, '2026-01-06 00:56:09', '2026-01-06 00:56:09'),
(54, 6, 0, NULL, NULL, '/stores', NULL, 2, 'المتاجر', NULL, '_self', 1, '2026-01-06 00:56:09', '2026-01-06 00:56:09'),
(55, 6, 0, NULL, NULL, '/products/tlyfzyon-samsong-55-bos-smart-4k', NULL, 3, 'المنتج', NULL, '_self', 1, '2026-01-06 00:56:09', '2026-01-06 00:56:09'),
(56, 6, 0, 5, 'Botble\\Page\\Models\\Page', '/blog', NULL, 4, 'المدونة', NULL, '_self', 1, '2026-01-06 00:56:09', '2026-01-06 00:56:09'),
(57, 6, 0, 18, 'Botble\\Page\\Models\\Page', '/faq', NULL, 5, 'الأسئلة الشائعة', NULL, '_self', 0, '2026-01-06 00:56:09', '2026-01-06 00:56:09'),
(58, 6, 0, 6, 'Botble\\Page\\Models\\Page', '/contact', NULL, 6, 'اتصل بنا', NULL, '_self', 0, '2026-01-06 00:56:09', '2026-01-06 00:56:09'),
(59, 6, 52, 1, 'Botble\\Page\\Models\\Page', '/', NULL, 0, 'الرئيسية 1', NULL, '_self', 0, '2026-01-06 00:56:09', '2026-01-06 00:56:09'),
(60, 6, 52, 2, 'Botble\\Page\\Models\\Page', '/homepage-2', NULL, 1, 'الرئيسية 2', NULL, '_self', 0, '2026-01-06 00:56:09', '2026-01-06 00:56:09'),
(61, 6, 52, 3, 'Botble\\Page\\Models\\Page', '/homepage-3', NULL, 2, 'الرئيسية 3', NULL, '_self', 0, '2026-01-06 00:56:09', '2026-01-06 00:56:09'),
(62, 6, 52, 4, 'Botble\\Page\\Models\\Page', '/homepage-4', NULL, 3, 'الرئيسية 4', NULL, '_self', 0, '2026-01-06 00:56:09', '2026-01-06 00:56:09'),
(63, 6, 52, 16, 'Botble\\Page\\Models\\Page', '/homepage-5', NULL, 4, 'الرئيسية 5', NULL, '_self', 0, '2026-01-06 00:56:09', '2026-01-06 00:56:09'),
(64, 6, 52, 17, 'Botble\\Page\\Models\\Page', '/homepage-6', NULL, 5, 'الرئيسية 6', NULL, '_self', 0, '2026-01-06 00:56:09', '2026-01-06 00:56:09'),
(65, 6, 53, NULL, NULL, '/products', NULL, 0, 'شبكة المتجر - عرض كامل', NULL, '_self', 0, '2026-01-06 00:56:09', '2026-01-06 00:56:09'),
(66, 6, 53, NULL, NULL, '/products?layout=product-right-sidebar', NULL, 1, 'شبكة المتجر - شريط جانبي أيمن', NULL, '_self', 0, '2026-01-06 00:56:09', '2026-01-06 00:56:09'),
(67, 6, 53, NULL, NULL, '/products?layout=product-left-sidebar', NULL, 2, 'شبكة المتجر - شريط جانبي أيسر', NULL, '_self', 0, '2026-01-06 00:56:09', '2026-01-06 00:56:09'),
(68, 6, 53, 1, 'Botble\\Ecommerce\\Models\\ProductCategory', '/product-categories/electronics', NULL, 3, 'منتجات الفئة', NULL, '_self', 0, '2026-01-06 00:56:09', '2026-01-06 00:56:09'),
(69, 6, 54, NULL, NULL, '/stores', NULL, 0, 'المتاجر - شبكة', NULL, '_self', 0, '2026-01-06 00:56:09', '2026-01-06 00:56:09'),
(70, 6, 54, NULL, NULL, '/stores?layout=stores-list', NULL, 1, 'المتاجر - قائمة', NULL, '_self', 0, '2026-01-06 00:56:09', '2026-01-06 00:56:09'),
(71, 6, 54, NULL, NULL, '/stores/gopro', NULL, 2, 'تفاصيل المتجر', NULL, '_self', 0, '2026-01-06 00:56:09', '2026-01-06 00:56:09'),
(72, 6, 55, NULL, NULL, '/products/tlyfzyon-samsong-55-bos-smart-4k', NULL, 0, 'منتج - شريط جانبي أيمن', NULL, '_self', 0, '2026-01-06 00:56:09', '2026-01-06 00:56:09'),
(73, 6, 55, NULL, NULL, '/products/thlag-al-gy-18-kdm-nofrost-sylfr', NULL, 1, 'منتج - شريط جانبي أيسر', NULL, '_self', 0, '2026-01-06 00:56:09', '2026-01-06 00:56:09'),
(74, 6, 55, NULL, NULL, '/products/ghsal-toshyba-fok-atomatyk-10-kylo', NULL, 2, 'منتج - عرض كامل', NULL, '_self', 0, '2026-01-06 00:56:09', '2026-01-06 00:56:09'),
(75, 6, 56, 5, 'Botble\\Page\\Models\\Page', '/blog', NULL, 0, 'شبكة المدونة', NULL, '_self', 0, '2026-01-06 00:56:09', '2026-01-06 00:56:09'),
(76, 6, 56, 13, 'Botble\\Page\\Models\\Page', '/blog-list', NULL, 1, 'قائمة المدونة', NULL, '_self', 0, '2026-01-06 00:56:09', '2026-01-06 00:56:09'),
(77, 6, 56, 14, 'Botble\\Page\\Models\\Page', '/blog-big', NULL, 2, 'المدونة الكبيرة', NULL, '_self', 0, '2026-01-06 00:56:09', '2026-01-06 00:56:09'),
(78, 6, 56, 15, 'Botble\\Page\\Models\\Page', '/blog-wide', NULL, 3, 'المدونة العريضة', NULL, '_self', 0, '2026-01-06 00:56:09', '2026-01-06 00:56:09'),
(79, 6, 56, NULL, NULL, '/blog/4-expert-tips-on-how-to-choose-the-right-mens-wallet', NULL, 4, 'مقال واحد', NULL, '_self', 1, '2026-01-06 00:56:09', '2026-01-06 00:56:09'),
(80, 6, 79, NULL, NULL, '/blog/4-expert-tips-on-how-to-choose-the-right-mens-wallet', NULL, 0, 'مقال - شريط جانبي أيمن', NULL, '_self', 0, '2026-01-06 00:56:09', '2026-01-06 00:56:09'),
(81, 6, 79, NULL, NULL, '/blog/sexy-clutches-how-to-buy-wear-a-designer-clutch-bag', NULL, 1, 'مقال - شريط جانبي أيسر', NULL, '_self', 0, '2026-01-06 00:56:09', '2026-01-06 00:56:09'),
(82, 6, 79, NULL, NULL, '/blog/the-top-2020-handbag-trends-to-know', NULL, 2, 'مقال - عرض كامل', NULL, '_self', 0, '2026-01-06 00:56:09', '2026-01-06 00:56:09'),
(83, 6, 79, NULL, NULL, '/blog/how-to-match-the-color-of-your-handbag-with-an-outfit', NULL, 3, 'مقال مع قائمة المنتجات', NULL, '_self', 0, '2026-01-06 00:56:09', '2026-01-06 00:56:09'),
(84, 7, 0, 7, 'Botble\\Page\\Models\\Page', '/about-us', NULL, 0, 'من نحن', NULL, '_self', 0, '2026-01-06 00:56:09', '2026-01-06 00:56:09'),
(85, 7, 0, NULL, NULL, '/orders/tracking', NULL, 1, 'تتبع الطلب', NULL, '_self', 0, '2026-01-06 00:56:09', '2026-01-06 00:56:09'),
(86, 8, 0, 1, 'Botble\\Ecommerce\\Models\\ProductCategory', '/product-categories/electronics', NULL, 0, 'إلكترونيات', NULL, '_self', 0, '2026-01-06 00:56:09', '2026-01-06 00:56:09'),
(87, 8, 0, 2, 'Botble\\Ecommerce\\Models\\ProductCategory', '/product-categories/home-appliances', NULL, 1, 'أجهزة منزلية', NULL, '_self', 0, '2026-01-06 00:56:09', '2026-01-06 00:56:09'),
(88, 8, 0, 3, 'Botble\\Ecommerce\\Models\\ProductCategory', '/product-categories/kitchen-appliances', NULL, 2, 'أجهزة مطبخ', NULL, '_self', 0, '2026-01-06 00:56:09', '2026-01-06 00:56:09'),
(89, 8, 0, 4, 'Botble\\Ecommerce\\Models\\ProductCategory', '/product-categories/televisions', NULL, 3, 'تليفزيونات', NULL, '_self', 0, '2026-01-06 00:56:09', '2026-01-06 00:56:09'),
(90, 8, 0, 5, 'Botble\\Ecommerce\\Models\\ProductCategory', '/product-categories/refrigerators', NULL, 4, 'ثلاجات', NULL, '_self', 0, '2026-01-06 00:56:09', '2026-01-06 00:56:09'),
(91, 8, 0, 6, 'Botble\\Ecommerce\\Models\\ProductCategory', '/product-categories/washing-machines', NULL, 5, 'غسالات ملابس', NULL, '_self', 0, '2026-01-06 00:56:09', '2026-01-06 00:56:09'),
(92, 9, 0, 6, 'Botble\\Page\\Models\\Page', '/contact', NULL, 0, 'اتصل بنا', NULL, '_self', 0, '2026-01-06 00:56:09', '2026-01-06 00:56:09'),
(93, 9, 0, 7, 'Botble\\Page\\Models\\Page', '/about-us', NULL, 1, 'من نحن', NULL, '_self', 0, '2026-01-06 00:56:09', '2026-01-06 00:56:09'),
(94, 9, 0, 8, 'Botble\\Page\\Models\\Page', '/cookie-policy', NULL, 2, 'سياسة ملفات تعريف الارتباط', NULL, '_self', 0, '2026-01-06 00:56:09', '2026-01-06 00:56:09'),
(95, 9, 0, 9, 'Botble\\Page\\Models\\Page', '/terms-conditions', NULL, 3, 'الشروط والأحكام', NULL, '_self', 0, '2026-01-06 00:56:09', '2026-01-06 00:56:09'),
(96, 9, 0, 10, 'Botble\\Page\\Models\\Page', '/returns-exchanges', NULL, 4, 'الإرجاع والاستبدال', NULL, '_self', 0, '2026-01-06 00:56:09', '2026-01-06 00:56:09'),
(97, 9, 0, 11, 'Botble\\Page\\Models\\Page', '/shipping-delivery', NULL, 5, 'الشحن والتوصيل', NULL, '_self', 0, '2026-01-06 00:56:09', '2026-01-06 00:56:09'),
(98, 9, 0, 12, 'Botble\\Page\\Models\\Page', '/privacy-policy', NULL, 6, 'سياسة الخصوصية', NULL, '_self', 0, '2026-01-06 00:56:09', '2026-01-06 00:56:09'),
(99, 10, 0, 7, 'Botble\\Page\\Models\\Page', '/about-us', NULL, 0, 'من نحن', NULL, '_self', 0, '2026-01-06 00:56:09', '2026-01-06 00:56:09'),
(100, 10, 0, NULL, NULL, '#', NULL, 1, 'الشراكة', NULL, '_self', 0, '2026-01-06 00:56:09', '2026-01-06 00:56:09'),
(101, 10, 0, NULL, NULL, '#', NULL, 2, 'الوظائف', NULL, '_self', 0, '2026-01-06 00:56:09', '2026-01-06 00:56:09'),
(102, 10, 0, 6, 'Botble\\Page\\Models\\Page', '/contact', NULL, 3, 'Contact us', NULL, '_self', 0, '2026-01-06 00:56:09', '2026-01-06 00:56:09');

-- --------------------------------------------------------

--
-- Table structure for table `meta_boxes`
--

CREATE TABLE `meta_boxes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(191) NOT NULL,
  `meta_value` text DEFAULT NULL,
  `reference_id` bigint(20) UNSIGNED NOT NULL,
  `reference_type` varchar(120) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `meta_boxes`
--

INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES
(1, 'background_color', '[\"#F2FCE4\"]', 1, 'Botble\\Ecommerce\\Models\\ProductCategory', '2026-01-06 00:55:18', '2026-01-06 00:55:18'),
(2, 'background_color', '[\"#FFFCEB\"]', 2, 'Botble\\Ecommerce\\Models\\ProductCategory', '2026-01-06 00:55:18', '2026-01-06 00:55:18'),
(3, 'background_color', '[\"#ECFFEC\"]', 3, 'Botble\\Ecommerce\\Models\\ProductCategory', '2026-01-06 00:55:18', '2026-01-06 00:55:18'),
(4, 'background_color', '[\"#FEEFEA\"]', 4, 'Botble\\Ecommerce\\Models\\ProductCategory', '2026-01-06 00:55:18', '2026-01-06 00:55:18'),
(5, 'background_color', '[\"#FFF3EB\"]', 5, 'Botble\\Ecommerce\\Models\\ProductCategory', '2026-01-06 00:55:18', '2026-01-06 00:55:18'),
(6, 'background_color', '[\"#FFF3FF\"]', 6, 'Botble\\Ecommerce\\Models\\ProductCategory', '2026-01-06 00:55:18', '2026-01-06 00:55:18'),
(7, 'background_color', '[\"#F2FCE4\"]', 7, 'Botble\\Ecommerce\\Models\\ProductCategory', '2026-01-06 00:55:18', '2026-01-06 00:55:18'),
(8, 'background_color', '[\"#FFFCEB\"]', 8, 'Botble\\Ecommerce\\Models\\ProductCategory', '2026-01-06 00:55:18', '2026-01-06 00:55:18'),
(9, 'background_color', '[\"#ECFFEC\"]', 9, 'Botble\\Ecommerce\\Models\\ProductCategory', '2026-01-06 00:55:18', '2026-01-06 00:55:18'),
(10, 'background_color', '[\"#FEEFEA\"]', 10, 'Botble\\Ecommerce\\Models\\ProductCategory', '2026-01-06 00:55:18', '2026-01-06 00:55:18'),
(11, 'background_color', '[\"#FFF3EB\"]', 11, 'Botble\\Ecommerce\\Models\\ProductCategory', '2026-01-06 00:55:18', '2026-01-06 00:55:18'),
(12, 'background_color', '[\"#FFF3FF\"]', 12, 'Botble\\Ecommerce\\Models\\ProductCategory', '2026-01-06 00:55:18', '2026-01-06 00:55:18'),
(13, 'background_color', '[\"#F2FCE4\"]', 13, 'Botble\\Ecommerce\\Models\\ProductCategory', '2026-01-06 00:55:18', '2026-01-06 00:55:18'),
(14, 'background_color', '[\"#FFFCEB\"]', 14, 'Botble\\Ecommerce\\Models\\ProductCategory', '2026-01-06 00:55:18', '2026-01-06 00:55:18'),
(15, 'layout', '[\"product-right-sidebar\"]', 1, 'Botble\\Ecommerce\\Models\\Product', '2026-01-06 00:55:29', '2026-01-06 00:55:29'),
(16, 'is_popular', '[\"1\"]', 1, 'Botble\\Ecommerce\\Models\\Product', '2026-01-06 00:55:29', '2026-01-06 00:55:29'),
(17, 'faq_ids', '[[1,3,8,9,10]]', 1, 'Botble\\Ecommerce\\Models\\Product', '2026-01-06 00:55:30', '2026-01-06 00:55:30'),
(18, 'layout', '[\"product-left-sidebar\"]', 2, 'Botble\\Ecommerce\\Models\\Product', '2026-01-06 00:55:30', '2026-01-06 00:55:30'),
(19, 'faq_ids', '[[1,3,5,8,10]]', 2, 'Botble\\Ecommerce\\Models\\Product', '2026-01-06 00:55:30', '2026-01-06 00:55:30'),
(20, 'layout', '[\"product-full-width\"]', 3, 'Botble\\Ecommerce\\Models\\Product', '2026-01-06 00:55:30', '2026-01-06 00:55:30'),
(21, 'is_popular', '[\"1\"]', 3, 'Botble\\Ecommerce\\Models\\Product', '2026-01-06 00:55:30', '2026-01-06 00:55:30'),
(22, 'faq_ids', '[[3,5,8,9,10]]', 3, 'Botble\\Ecommerce\\Models\\Product', '2026-01-06 00:55:30', '2026-01-06 00:55:30'),
(23, 'faq_ids', '[[2,5,6,7,8]]', 4, 'Botble\\Ecommerce\\Models\\Product', '2026-01-06 00:55:30', '2026-01-06 00:55:30'),
(24, 'is_popular', '[\"1\"]', 5, 'Botble\\Ecommerce\\Models\\Product', '2026-01-06 00:55:30', '2026-01-06 00:55:30'),
(25, 'faq_ids', '[[1,3,5,6,7]]', 5, 'Botble\\Ecommerce\\Models\\Product', '2026-01-06 00:55:30', '2026-01-06 00:55:30'),
(26, 'faq_ids', '[[1,4,5,6,10]]', 6, 'Botble\\Ecommerce\\Models\\Product', '2026-01-06 00:55:30', '2026-01-06 00:55:30'),
(27, 'is_popular', '[\"1\"]', 7, 'Botble\\Ecommerce\\Models\\Product', '2026-01-06 00:55:30', '2026-01-06 00:55:30'),
(28, 'faq_ids', '[[2,3,4,5,9]]', 7, 'Botble\\Ecommerce\\Models\\Product', '2026-01-06 00:55:30', '2026-01-06 00:55:30'),
(29, 'faq_ids', '[[5,6,7,8,9]]', 8, 'Botble\\Ecommerce\\Models\\Product', '2026-01-06 00:55:30', '2026-01-06 00:55:30'),
(30, 'is_popular', '[\"1\"]', 9, 'Botble\\Ecommerce\\Models\\Product', '2026-01-06 00:55:30', '2026-01-06 00:55:30'),
(31, 'faq_ids', '[[2,4,5,8,9]]', 9, 'Botble\\Ecommerce\\Models\\Product', '2026-01-06 00:55:30', '2026-01-06 00:55:30'),
(32, 'faq_ids', '[[1,2,5,6,9]]', 10, 'Botble\\Ecommerce\\Models\\Product', '2026-01-06 00:55:30', '2026-01-06 00:55:30'),
(33, 'is_popular', '[\"1\"]', 11, 'Botble\\Ecommerce\\Models\\Product', '2026-01-06 00:55:30', '2026-01-06 00:55:30'),
(34, 'faq_ids', '[[2,4,7,8,9]]', 11, 'Botble\\Ecommerce\\Models\\Product', '2026-01-06 00:55:30', '2026-01-06 00:55:30'),
(35, 'faq_ids', '[[3,4,5,6,8]]', 12, 'Botble\\Ecommerce\\Models\\Product', '2026-01-06 00:55:30', '2026-01-06 00:55:30'),
(36, 'is_popular', '[\"1\"]', 13, 'Botble\\Ecommerce\\Models\\Product', '2026-01-06 00:55:31', '2026-01-06 00:55:31'),
(37, 'faq_ids', '[[1,2,6,7,8]]', 13, 'Botble\\Ecommerce\\Models\\Product', '2026-01-06 00:55:31', '2026-01-06 00:55:31'),
(38, 'faq_ids', '[[2,3,5,6,9]]', 14, 'Botble\\Ecommerce\\Models\\Product', '2026-01-06 00:55:31', '2026-01-06 00:55:31'),
(39, 'is_popular', '[\"1\"]', 15, 'Botble\\Ecommerce\\Models\\Product', '2026-01-06 00:55:31', '2026-01-06 00:55:31'),
(40, 'faq_ids', '[[2,4,5,6,9]]', 15, 'Botble\\Ecommerce\\Models\\Product', '2026-01-06 00:55:31', '2026-01-06 00:55:31'),
(41, 'faq_ids', '[[2,3,6,8,10]]', 16, 'Botble\\Ecommerce\\Models\\Product', '2026-01-06 00:55:31', '2026-01-06 00:55:31'),
(42, 'is_popular', '[\"1\"]', 17, 'Botble\\Ecommerce\\Models\\Product', '2026-01-06 00:55:31', '2026-01-06 00:55:31'),
(43, 'faq_ids', '[[3,4,5,7,8]]', 17, 'Botble\\Ecommerce\\Models\\Product', '2026-01-06 00:55:31', '2026-01-06 00:55:31'),
(44, 'faq_ids', '[[2,4,7,9,10]]', 18, 'Botble\\Ecommerce\\Models\\Product', '2026-01-06 00:55:31', '2026-01-06 00:55:31'),
(45, 'is_popular', '[\"1\"]', 19, 'Botble\\Ecommerce\\Models\\Product', '2026-01-06 00:55:31', '2026-01-06 00:55:31'),
(46, 'faq_ids', '[[1,3,7,8,9]]', 19, 'Botble\\Ecommerce\\Models\\Product', '2026-01-06 00:55:31', '2026-01-06 00:55:31'),
(47, 'faq_ids', '[[1,3,5,8,9]]', 20, 'Botble\\Ecommerce\\Models\\Product', '2026-01-06 00:55:31', '2026-01-06 00:55:31'),
(48, 'is_popular', '[\"1\"]', 21, 'Botble\\Ecommerce\\Models\\Product', '2026-01-06 00:55:31', '2026-01-06 00:55:31'),
(49, 'faq_ids', '[[2,5,8,9,10]]', 21, 'Botble\\Ecommerce\\Models\\Product', '2026-01-06 00:55:31', '2026-01-06 00:55:31'),
(50, 'faq_ids', '[[4,5,6,7,8]]', 22, 'Botble\\Ecommerce\\Models\\Product', '2026-01-06 00:55:31', '2026-01-06 00:55:31'),
(51, 'is_popular', '[\"1\"]', 23, 'Botble\\Ecommerce\\Models\\Product', '2026-01-06 00:55:32', '2026-01-06 00:55:32'),
(52, 'faq_ids', '[[2,5,7,8,9]]', 23, 'Botble\\Ecommerce\\Models\\Product', '2026-01-06 00:55:32', '2026-01-06 00:55:32'),
(53, 'faq_ids', '[[1,2,6,8,10]]', 24, 'Botble\\Ecommerce\\Models\\Product', '2026-01-06 00:55:32', '2026-01-06 00:55:32'),
(54, 'image', '[\"flash-sales\\/1.png\"]', 1, 'Botble\\Ecommerce\\Models\\FlashSale', '2026-01-06 00:55:40', '2026-01-06 00:55:40'),
(55, 'image', '[\"flash-sales\\/2.png\"]', 2, 'Botble\\Ecommerce\\Models\\FlashSale', '2026-01-06 00:55:40', '2026-01-06 00:55:40'),
(56, 'image', '[\"flash-sales\\/3.png\"]', 3, 'Botble\\Ecommerce\\Models\\FlashSale', '2026-01-06 00:55:40', '2026-01-06 00:55:40'),
(57, 'image', '[\"flash-sales\\/4.png\"]', 4, 'Botble\\Ecommerce\\Models\\FlashSale', '2026-01-06 00:55:40', '2026-01-06 00:55:40'),
(58, 'image', '[\"flash-sales\\/5.png\"]', 5, 'Botble\\Ecommerce\\Models\\FlashSale', '2026-01-06 00:55:40', '2026-01-06 00:55:40'),
(59, 'simple_slider_style', '[\"style-4\"]', 1, 'Botble\\SimpleSlider\\Models\\SimpleSlider', '2026-01-06 00:55:47', '2026-01-06 00:55:47'),
(60, 'simple_slider_style', '[\"style-2\"]', 2, 'Botble\\SimpleSlider\\Models\\SimpleSlider', '2026-01-06 00:55:47', '2026-01-06 00:55:47'),
(61, 'simple_slider_style', '[\"style-3\"]', 3, 'Botble\\SimpleSlider\\Models\\SimpleSlider', '2026-01-06 00:55:47', '2026-01-06 00:55:47'),
(62, 'simple_slider_style', '[\"style-1\"]', 4, 'Botble\\SimpleSlider\\Models\\SimpleSlider', '2026-01-06 00:55:48', '2026-01-06 00:55:48'),
(63, 'simple_slider_style', '[\"style-5\"]', 5, 'Botble\\SimpleSlider\\Models\\SimpleSlider', '2026-01-06 00:55:48', '2026-01-06 00:55:48'),
(64, 'simple_slider_style', '[\"style-6\"]', 6, 'Botble\\SimpleSlider\\Models\\SimpleSlider', '2026-01-06 00:55:48', '2026-01-06 00:55:48'),
(65, 'simple_slider_style', '[\"style-1\"]', 7, 'Botble\\SimpleSlider\\Models\\SimpleSlider', '2026-01-06 00:55:48', '2026-01-06 00:55:48'),
(66, 'header_style', '[\"header-style-5\"]', 16, 'Botble\\Page\\Models\\Page', '2026-01-06 00:55:50', '2026-01-06 00:55:50'),
(67, 'header_style', '[\"header-style-5\"]', 17, 'Botble\\Page\\Models\\Page', '2026-01-06 00:55:50', '2026-01-06 00:55:50'),
(68, 'button_text', '[\"Shop now\"]', 1, 'Botble\\Ads\\Models\\Ads', '2026-01-06 00:56:02', '2026-01-06 00:56:02'),
(69, 'subtitle', '[\"Everyday Fresh & \\nClean with Our \\nProducts\"]', 1, 'Botble\\Ads\\Models\\Ads', '2026-01-06 00:56:02', '2026-01-06 00:56:02'),
(70, 'button_text', '[\"Shop now\"]', 2, 'Botble\\Ads\\Models\\Ads', '2026-01-06 00:56:02', '2026-01-06 00:56:02'),
(71, 'subtitle', '[\"Make your Breakfast Healthy and Easy\"]', 2, 'Botble\\Ads\\Models\\Ads', '2026-01-06 00:56:02', '2026-01-06 00:56:02'),
(72, 'button_text', '[\"Shop now\"]', 3, 'Botble\\Ads\\Models\\Ads', '2026-01-06 00:56:02', '2026-01-06 00:56:02'),
(73, 'subtitle', '[\"The best Organic Products Online\"]', 3, 'Botble\\Ads\\Models\\Ads', '2026-01-06 00:56:02', '2026-01-06 00:56:02'),
(74, 'button_text', '[\"Shop now\"]', 4, 'Botble\\Ads\\Models\\Ads', '2026-01-06 00:56:02', '2026-01-06 00:56:02'),
(75, 'subtitle', '[\"Bring nature into your home\"]', 4, 'Botble\\Ads\\Models\\Ads', '2026-01-06 00:56:02', '2026-01-06 00:56:02'),
(76, 'button_text', '[\"Shop now\"]', 5, 'Botble\\Ads\\Models\\Ads', '2026-01-06 00:56:02', '2026-01-06 00:56:02'),
(77, 'subtitle', '[\"Delivered to your home\"]', 5, 'Botble\\Ads\\Models\\Ads', '2026-01-06 00:56:02', '2026-01-06 00:56:02'),
(78, 'button_text', '[\"Shop now\"]', 6, 'Botble\\Ads\\Models\\Ads', '2026-01-06 00:56:02', '2026-01-06 00:56:02'),
(79, 'subtitle', '[\"Save 17% <br \\/>on Oganic <br \\/>Juice\"]', 6, 'Botble\\Ads\\Models\\Ads', '2026-01-06 00:56:02', '2026-01-06 00:56:02'),
(80, 'button_text', '[\"Shop now\"]', 7, 'Botble\\Ads\\Models\\Ads', '2026-01-06 00:56:02', '2026-01-06 00:56:02'),
(81, 'subtitle', '[\"Everyday Fresh & Clean with Our Products\"]', 7, 'Botble\\Ads\\Models\\Ads', '2026-01-06 00:56:02', '2026-01-06 00:56:02'),
(82, 'button_text', '[\"Shop now\"]', 8, 'Botble\\Ads\\Models\\Ads', '2026-01-06 00:56:02', '2026-01-06 00:56:02'),
(83, 'subtitle', '[\"The best Organic Products Online\"]', 8, 'Botble\\Ads\\Models\\Ads', '2026-01-06 00:56:02', '2026-01-06 00:56:02'),
(84, 'button_text', '[\"Go to supplier\"]', 9, 'Botble\\Ads\\Models\\Ads', '2026-01-06 00:56:02', '2026-01-06 00:56:02'),
(85, 'subtitle', '[\"Everyday Fresh with\\n Our Products\"]', 9, 'Botble\\Ads\\Models\\Ads', '2026-01-06 00:56:02', '2026-01-06 00:56:02'),
(86, 'button_text', '[\"Go to supplier\"]', 10, 'Botble\\Ads\\Models\\Ads', '2026-01-06 00:56:02', '2026-01-06 00:56:02'),
(87, 'subtitle', '[\"100% guaranteed all\\n Fresh items\"]', 10, 'Botble\\Ads\\Models\\Ads', '2026-01-06 00:56:02', '2026-01-06 00:56:02'),
(88, 'button_text', '[\"Go to supplier\"]', 11, 'Botble\\Ads\\Models\\Ads', '2026-01-06 00:56:02', '2026-01-06 00:56:02'),
(89, 'subtitle', '[\"Special grocery sale\\n off this month\"]', 11, 'Botble\\Ads\\Models\\Ads', '2026-01-06 00:56:02', '2026-01-06 00:56:02'),
(90, 'button_text', '[\"Go to supplier\"]', 12, 'Botble\\Ads\\Models\\Ads', '2026-01-06 00:56:02', '2026-01-06 00:56:02'),
(91, 'subtitle', '[\"Enjoy 15% OFF for all\\n vegetable and fruit\"]', 12, 'Botble\\Ads\\Models\\Ads', '2026-01-06 00:56:02', '2026-01-06 00:56:02'),
(92, 'social_links', '[{\"facebook\":\"botble\",\"twitter\":\"botble\"}]', 1, 'Botble\\Marketplace\\Models\\Store', '2026-01-06 00:56:07', '2026-01-06 00:56:07'),
(93, 'social_links', '[{\"facebook\":\"botble\",\"twitter\":\"botble\"}]', 2, 'Botble\\Marketplace\\Models\\Store', '2026-01-06 00:56:07', '2026-01-06 00:56:07'),
(94, 'social_links', '[{\"facebook\":\"botble\",\"twitter\":\"botble\"}]', 3, 'Botble\\Marketplace\\Models\\Store', '2026-01-06 00:56:07', '2026-01-06 00:56:07'),
(95, 'social_links', '[{\"facebook\":\"botble\",\"twitter\":\"botble\"}]', 4, 'Botble\\Marketplace\\Models\\Store', '2026-01-06 00:56:07', '2026-01-06 00:56:07'),
(96, 'social_links', '[{\"facebook\":\"botble\",\"twitter\":\"botble\"}]', 5, 'Botble\\Marketplace\\Models\\Store', '2026-01-06 00:56:07', '2026-01-06 00:56:07'),
(97, 'social_links', '[{\"facebook\":\"botble\",\"twitter\":\"botble\"}]', 6, 'Botble\\Marketplace\\Models\\Store', '2026-01-06 00:56:07', '2026-01-06 00:56:07'),
(98, 'ar_subtitle', '[null]', 1, 'Botble\\Ecommerce\\Models\\FlashSale', '2026-01-06 02:23:38', '2026-01-06 02:23:38'),
(99, 'ar_image', '[null]', 1, 'Botble\\Ecommerce\\Models\\FlashSale', '2026-01-06 02:23:38', '2026-01-06 02:23:38'),
(100, 'tablet_image', '[null]', 1, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2026-01-06 02:37:57', '2026-01-06 02:37:57'),
(101, 'mobile_image', '[null]', 1, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2026-01-06 02:37:57', '2026-01-06 02:37:57');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000001_create_cache_table', 1),
(2, '2013_04_09_032329_create_base_tables', 1),
(3, '2013_04_09_062329_create_revisions_table', 1),
(4, '2014_10_12_000000_create_users_table', 1),
(5, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(6, '2016_06_10_230148_create_acl_tables', 1),
(7, '2016_06_14_230857_create_menus_table', 1),
(8, '2016_06_28_221418_create_pages_table', 1),
(9, '2016_10_05_074239_create_setting_table', 1),
(10, '2016_11_28_032840_create_dashboard_widget_tables', 1),
(11, '2016_12_16_084601_create_widgets_table', 1),
(12, '2017_05_09_070343_create_media_tables', 1),
(13, '2017_11_03_070450_create_slug_table', 1),
(14, '2019_01_05_053554_create_jobs_table', 1),
(15, '2019_08_19_000000_create_failed_jobs_table', 1),
(16, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(17, '2022_04_20_100851_add_index_to_media_table', 1),
(18, '2022_04_20_101046_add_index_to_menu_table', 1),
(19, '2022_07_10_034813_move_lang_folder_to_root', 1),
(20, '2022_08_04_051940_add_missing_column_expires_at', 1),
(21, '2022_09_01_000001_create_admin_notifications_tables', 1),
(22, '2022_10_14_024629_drop_column_is_featured', 1),
(23, '2022_11_18_063357_add_missing_timestamp_in_table_settings', 1),
(24, '2022_12_02_093615_update_slug_index_columns', 1),
(25, '2023_01_30_024431_add_alt_to_media_table', 1),
(26, '2023_02_16_042611_drop_table_password_resets', 1),
(27, '2023_04_23_005903_add_column_permissions_to_admin_notifications', 1),
(28, '2023_05_10_075124_drop_column_id_in_role_users_table', 1),
(29, '2023_08_21_090810_make_page_content_nullable', 1),
(30, '2023_09_14_021936_update_index_for_slugs_table', 1),
(31, '2023_12_07_095130_add_color_column_to_media_folders_table', 1),
(32, '2023_12_17_162208_make_sure_column_color_in_media_folders_nullable', 1),
(33, '2024_01_07_072057_update_theme_option_for_login_page', 1),
(34, '2024_04_04_110758_update_value_column_in_user_meta_table', 1),
(35, '2024_04_25_021317_remove_wrong_widget', 1),
(36, '2024_05_12_091229_add_column_visibility_to_table_media_files', 1),
(37, '2024_07_07_091316_fix_column_url_in_menu_nodes_table', 1),
(38, '2024_07_12_100000_change_random_hash_for_media', 1),
(39, '2024_09_30_024515_create_sessions_table', 1),
(40, '2024_12_19_000001_create_device_tokens_table', 1),
(41, '2024_12_19_000002_create_push_notifications_table', 1),
(42, '2024_12_19_000003_create_push_notification_recipients_table', 1),
(43, '2024_12_30_000001_create_user_settings_table', 1),
(44, '2025_07_06_030754_add_phone_to_users_table', 1),
(45, '2025_07_31_add_performance_indexes_to_slugs_table', 1),
(46, '2020_11_18_150916_ads_create_ads_table', 2),
(47, '2021_12_02_035301_add_ads_translations_table', 2),
(48, '2023_04_17_062645_add_open_in_new_tab', 2),
(49, '2023_11_07_023805_add_tablet_mobile_image', 2),
(50, '2024_04_01_043317_add_google_adsense_slot_id_to_ads_table', 2),
(51, '2025_04_21_000000_add_tablet_mobile_image_to_ads_translations_table', 2),
(52, '2024_04_27_100730_improve_analytics_setting', 3),
(53, '2015_06_29_025744_create_audit_history', 4),
(54, '2023_11_14_033417_change_request_column_in_table_audit_histories', 4),
(55, '2025_05_05_000001_add_user_type_to_audit_histories_table', 4),
(56, '2015_06_18_033822_create_blog_table', 5),
(57, '2021_02_16_092633_remove_default_value_for_author_type', 5),
(58, '2021_12_03_030600_create_blog_translations', 5),
(59, '2022_04_19_113923_add_index_to_table_posts', 5),
(60, '2023_08_29_074620_make_column_author_id_nullable', 5),
(61, '2024_07_30_091615_fix_order_column_in_categories_table', 5),
(62, '2025_01_06_033807_add_default_value_for_categories_author_type', 5),
(63, '2016_06_17_091537_create_contacts_table', 6),
(64, '2023_11_10_080225_migrate_contact_blacklist_email_domains_to_core', 6),
(65, '2024_03_20_080001_migrate_change_attribute_email_to_nullable_form_contacts_table', 6),
(66, '2024_03_25_000001_update_captcha_settings_for_contact', 6),
(67, '2024_04_19_063914_create_custom_fields_table', 6),
(68, '2020_03_05_041139_create_ecommerce_tables', 7),
(69, '2021_01_01_044147_ecommerce_create_flash_sale_table', 7),
(70, '2021_01_17_082713_add_column_is_featured_to_product_collections_table', 7),
(71, '2021_01_18_024333_add_zip_code_into_table_customer_addresses', 7),
(72, '2021_02_18_073505_update_table_ec_reviews', 7),
(73, '2021_03_10_024419_add_column_confirmed_at_to_table_ec_customers', 7),
(74, '2021_03_10_025153_change_column_tax_amount', 7),
(75, '2021_03_20_033103_add_column_availability_to_table_ec_products', 7),
(76, '2021_04_28_074008_ecommerce_create_product_label_table', 7),
(77, '2021_05_31_173037_ecommerce_create_ec_products_translations', 7),
(78, '2021_08_17_105016_remove_column_currency_id_in_some_tables', 7),
(79, '2021_08_30_142128_add_images_column_to_ec_reviews_table', 7),
(80, '2021_10_04_030050_add_column_created_by_to_table_ec_products', 7),
(81, '2021_10_05_122616_add_status_column_to_ec_customers_table', 7),
(82, '2021_11_03_025806_nullable_phone_number_in_ec_customer_addresses', 7),
(83, '2021_11_23_071403_correct_languages_for_product_variations', 7),
(84, '2021_11_28_031808_add_product_tags_translations', 7),
(85, '2021_12_01_031123_add_featured_image_to_ec_products', 7),
(86, '2022_01_01_033107_update_table_ec_shipments', 7),
(87, '2022_02_16_042457_improve_product_attribute_sets', 7),
(88, '2022_03_22_075758_correct_product_name', 7),
(89, '2022_04_19_113334_add_index_to_ec_products', 7),
(90, '2022_04_28_144405_remove_unused_table', 7),
(91, '2022_05_05_115015_create_ec_customer_recently_viewed_products_table', 7),
(92, '2022_05_18_143720_add_index_to_table_ec_product_categories', 7),
(93, '2022_06_16_095633_add_index_to_some_tables', 7),
(94, '2022_06_30_035148_create_order_referrals_table', 7),
(95, '2022_07_24_153815_add_completed_at_to_ec_orders_table', 7),
(96, '2022_08_14_032836_create_ec_order_returns_table', 7),
(97, '2022_08_14_033554_create_ec_order_return_items_table', 7),
(98, '2022_08_15_040324_add_billing_address', 7),
(99, '2022_08_30_091114_support_digital_products_table', 7),
(100, '2022_09_13_095744_create_options_table', 7),
(101, '2022_09_13_104347_create_option_value_table', 7),
(102, '2022_10_05_163518_alter_table_ec_order_product', 7),
(103, '2022_10_12_041517_create_invoices_table', 7),
(104, '2022_10_12_142226_update_orders_table', 7),
(105, '2022_10_13_024916_update_table_order_returns', 7),
(106, '2022_10_21_030830_update_columns_in_ec_shipments_table', 7),
(107, '2022_10_28_021046_update_columns_in_ec_shipments_table', 7),
(108, '2022_11_16_034522_update_type_column_in_ec_shipping_rules_table', 7),
(109, '2022_11_19_041643_add_ec_tax_product_table', 7),
(110, '2022_12_12_063830_update_tax_defadult_in_ec_tax_products_table', 7),
(111, '2022_12_17_041532_fix_address_in_order_invoice', 7),
(112, '2022_12_26_070329_create_ec_product_views_table', 7),
(113, '2023_01_04_033051_fix_product_categories', 7),
(114, '2023_01_09_050400_add_ec_global_options_translations_table', 7),
(115, '2023_01_10_093754_add_missing_option_value_id', 7),
(116, '2023_01_17_082713_add_column_barcode_and_cost_per_item_to_product_table', 7),
(117, '2023_01_26_021854_add_ec_customer_used_coupons_table', 7),
(118, '2023_02_08_015900_update_options_column_in_ec_order_product_table', 7),
(119, '2023_02_27_095752_remove_duplicate_reviews', 7),
(120, '2023_03_20_115757_add_user_type_column_to_ec_shipment_histories_table', 7),
(121, '2023_04_21_082427_create_ec_product_categorizables_table', 7),
(122, '2023_05_03_011331_add_missing_column_price_into_invoice_items_table', 7),
(123, '2023_05_17_025812_fix_invoice_issue', 7),
(124, '2023_05_26_073140_move_option_make_phone_field_optional_at_checkout_page_to_mandatory_fields', 7),
(125, '2023_05_27_144611_fix_exchange_rate_setting', 7),
(126, '2023_06_22_084331_add_generate_license_code_to_ec_products_table', 7),
(127, '2023_06_30_042512_create_ec_order_tax_information_table', 7),
(128, '2023_07_14_022724_remove_column_id_from_ec_product_collection_products', 7),
(129, '2023_08_09_012940_remove_column_status_in_ec_product_attributes', 7),
(130, '2023_08_15_064505_create_ec_tax_rules_table', 7),
(131, '2023_08_21_021819_make_column_address_in_ec_customer_addresses_nullable', 7),
(132, '2023_08_22_094114_drop_unique_for_barcode', 7),
(133, '2023_08_30_031811_add_apply_via_url_column_to_ec_discounts_table', 7),
(134, '2023_09_07_094312_add_index_to_product_sku_and_translations', 7),
(135, '2023_09_19_024955_create_discount_product_categories_table', 7),
(136, '2023_10_17_070728_add_icon_and_icon_image_to_product_categories_table', 7),
(137, '2023_11_22_154643_add_unique_in_table_ec_products_variations', 7),
(138, '2023_11_27_032313_add_price_columns_to_ec_product_cross_sale_relations_table', 7),
(139, '2023_12_06_023945_add_display_on_checkout_column_to_ec_discounts_table', 7),
(140, '2023_12_25_040604_ec_create_review_replies_table', 7),
(141, '2023_12_26_090340_add_private_notes_column_to_ec_customers_table', 7),
(142, '2024_01_16_070706_fix_translation_tables', 7),
(143, '2024_01_23_075227_add_proof_file_to_ec_orders_table', 7),
(144, '2024_03_26_041531_add_cancel_reason_to_ec_orders_table', 7),
(145, '2024_03_27_062402_create_ec_customer_deletion_requests_table', 7),
(146, '2024_03_29_042242_migrate_old_captcha_settings', 7),
(147, '2024_03_29_093946_create_ec_order_return_histories_table', 7),
(148, '2024_04_01_063523_add_customer_columns_to_ec_reviews_table', 7),
(149, '2024_04_15_092654_migrate_ecommerce_google_tag_manager_code_setting', 7),
(150, '2024_04_16_035713_add_min_max_order_quantity_columns_to_products_table', 7),
(151, '2024_05_07_073153_improve_table_wishlist', 7),
(152, '2024_05_07_093703_add_missing_zip_code_into_table_store_locators', 7),
(153, '2024_05_15_021503_fix_invoice_path', 7),
(154, '2024_06_20_160724_create_ec_shared_wishlists_table', 7),
(155, '2024_06_28_025104_add_notify_attachment_updated_column_to_ec_products_table', 7),
(156, '2024_07_03_030900_add_downloaded_at_column_to_ec_order_product_table', 7),
(157, '2024_07_14_071826_make_customer_email_nullable', 7),
(158, '2024_07_15_104916_add_video_media_column_to_ec_products_table', 7),
(159, '2024_07_26_052530_add_percentage_to_tax_rules_table', 7),
(160, '2024_08_14_123028_add_customer_delivered_confirmed_at_column_to_ec_shipments_table', 7),
(161, '2024_08_19_132849_create_specification_tables', 7),
(162, '2024_09_07_060744_add_author_column_to_specification_tables', 7),
(163, '2024_09_14_064023_add_can_use_with_flash_sale_column_to_ec_discounts_table', 7),
(164, '2024_09_25_073928_remove_wrong_product_slugs', 7),
(165, '2025_01_10_000000_fix_order_invoice_rounding_issues', 7),
(166, '2025_01_15_050230_migrate_old_theme_options', 7),
(167, '2025_01_15_optimize_products_export_index', 7),
(168, '2025_01_17_082713_correct_column_barcode_and_cost_per_item_to_product_table', 7),
(169, '2025_01_24_044641_migrate_old_country_data', 7),
(170, '2025_01_28_233602_add_private_notes_into_ec_orders_table', 7),
(171, '2025_02_13_021247_add_tax_translations', 7),
(172, '2025_02_24_152621_add_text_color_to_product_labels_table', 7),
(173, '2025_04_12_000001_add_payment_fee_to_ec_orders_table', 7),
(174, '2025_04_12_000002_add_payment_fee_to_ec_invoices_table', 7),
(175, '2025_05_05_092036_make_user_id_and_tax_amount_nullable', 7),
(176, '2025_05_15_082342_drop_email_unique_index_in_ec_customers_table', 7),
(177, '2025_06_07_081731_add_translations_for_specification_groups_and_tables', 7),
(178, '2025_06_17_091813_increase_note_in_shipments_table', 7),
(179, '2025_06_24_000001_create_ec_product_license_codes_table', 7),
(180, '2025_06_24_080427_add_license_code_type_to_products_table', 7),
(181, '2025_07_06_062402_create_ec_customer_deletion_requests_table', 7),
(182, '2025_07_07_161729_change_license_code_to_text_in_ec_product_license_codes_table', 7),
(183, '2025_07_08_162756_increase_license_code_column_size_in_ec_order_product_table', 7),
(184, '2025_07_09_000001_add_customer_address_fields_to_ec_invoices_table', 7),
(185, '2025_07_15_090809_create_ec_abandoned_carts_table', 7),
(186, '2025_07_24_120510_increase_barcode_column_length_in_ec_products_table', 7),
(187, '2025_07_31_133600_add_performance_indexes_to_ec_product_categories_table', 7),
(188, '2025_08_01_161205_optimize_product_variation_query_indexes', 7),
(189, '2025_08_08_145059_correct_tax_amount_in_order_and_invoice_tables', 7),
(190, '2025_09_05_025247_create_ec_product_specification_attribute_translations_table', 7),
(191, '2025_09_08_025516_add_variations_count_to_ec_products_table', 7),
(192, '2025_09_08_030755_add_reviews_cache_to_ec_products_table', 7),
(193, '2025_09_08_080248_add_slug_column_to_ec_product_categories_table', 7),
(194, '2025_09_08_080330_add_slug_column_to_ec_product_categories_translations_table', 7),
(195, '2025_09_08_080443_populate_slug_column_for_product_categories', 7),
(196, '2025_09_08_081216_add_slug_column_to_ec_products_table', 7),
(197, '2025_09_08_081237_add_slug_column_to_ec_products_translations_table', 7),
(198, '2025_09_08_081321_populate_slug_column_for_products', 7),
(199, '2025_09_10_073321_add_performance_indexes_to_ecommerce_tables', 7),
(200, '2018_07_09_221238_create_faq_table', 8),
(201, '2021_12_03_082134_create_faq_translations', 8),
(202, '2023_11_17_063408_add_description_column_to_faq_categories_table', 8),
(203, '2016_10_03_032336_create_languages_table', 9),
(204, '2023_09_14_022423_add_index_for_language_table', 9),
(205, '2021_10_25_021023_fix-priority-load-for-language-advanced', 10),
(206, '2021_12_03_075608_create_page_translations', 10),
(207, '2023_07_06_011444_create_slug_translations_table', 10),
(208, '2019_11_18_061011_create_country_table', 11),
(209, '2021_12_03_084118_create_location_translations', 11),
(210, '2021_12_03_094518_migrate_old_location_data', 11),
(211, '2021_12_10_034440_switch_plugin_location_to_use_language_advanced', 11),
(212, '2022_01_16_085908_improve_plugin_location', 11),
(213, '2022_08_04_052122_delete_location_backup_tables', 11),
(214, '2023_04_23_061847_increase_state_translations_abbreviation_column', 11),
(215, '2023_07_26_041451_add_more_columns_to_location_table', 11),
(216, '2023_07_27_041451_add_more_columns_to_location_translation_table', 11),
(217, '2023_08_15_073307_drop_unique_in_states_cities_translations', 11),
(218, '2023_10_21_065016_make_state_id_in_table_cities_nullable', 11),
(219, '2024_08_17_094600_add_image_into_countries', 11),
(220, '2025_01_08_093652_add_zip_code_to_cities', 11),
(221, '2025_07_31_083459_add_indexes_for_location_search_performance', 11),
(222, '2021_07_06_030002_create_marketplace_table', 12),
(223, '2021_09_04_150137_add_vendor_verified_at_to_ec_customers_table', 12),
(224, '2021_10_04_033903_add_column_approved_by_into_table_ec_products', 12),
(225, '2021_10_06_124943_add_transaction_id_column_to_mp_customer_withdrawals_table', 12),
(226, '2021_10_10_054216_add_columns_to_mp_customer_revenues_table', 12),
(227, '2021_12_06_031304_update_table_mp_customer_revenues', 12),
(228, '2022_10_19_152916_add_columns_to_mp_stores_table', 12),
(229, '2022_10_20_062849_create_mp_category_sale_commissions_table', 12),
(230, '2022_11_02_071413_add_more_info_for_store', 12),
(231, '2022_11_02_080444_add_tax_info', 12),
(232, '2023_02_01_062030_add_store_translations', 12),
(233, '2023_02_13_032133_update_fee_column_mp_customer_revenues_table', 12),
(234, '2023_02_17_023648_fix_store_prefix', 12),
(235, '2024_04_03_062451_add_cover_image_to_table_mp_stores', 12),
(236, '2024_05_07_082630_create_mp_messages_table', 12),
(237, '2024_07_19_131849_add_documents_to_mp_stores_table', 12),
(238, '2024_08_18_083119_add_tax_id_column_to_mp_stores_table', 12),
(239, '2024_08_27_141244_add_block_reason_to_ec_customers_table', 12),
(240, '2024_09_17_125408_add_square_logo_to_stores_table', 12),
(241, '2025_07_31_021805_add_indexes_for_vendor_categories_optimization', 12),
(242, '2025_08_07_073854_add_verification_fields_to_mp_stores_table', 12),
(243, '2017_10_24_154832_create_newsletter_table', 13),
(244, '2024_03_25_000001_update_captcha_settings_for_newsletter', 13),
(245, '2017_05_18_080441_create_payment_tables', 14),
(246, '2021_03_27_144913_add_customer_type_into_table_payments', 14),
(247, '2021_05_24_034720_make_column_currency_nullable', 14),
(248, '2021_08_09_161302_add_metadata_column_to_payments_table', 14),
(249, '2021_10_19_020859_update_metadata_field', 14),
(250, '2022_06_28_151901_activate_paypal_stripe_plugin', 14),
(251, '2022_07_07_153354_update_charge_id_in_table_payments', 14),
(252, '2024_07_04_083133_create_payment_logs_table', 14),
(253, '2025_04_12_000003_add_payment_fee_to_payments_table', 14),
(254, '2025_05_22_000001_add_payment_fee_type_to_settings_table', 14),
(255, '2017_07_11_140018_create_simple_slider_table', 15),
(256, '2025_04_08_040931_create_social_logins_table', 16),
(257, '2024_09_14_100108_add_stripe_connect_details_to_ec_customers_table', 17),
(258, '2016_10_07_193005_create_translations_table', 18),
(259, '2023_12_12_105220_drop_translations_table', 18);

-- --------------------------------------------------------

--
-- Table structure for table `mp_category_sale_commissions`
--

CREATE TABLE `mp_category_sale_commissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_category_id` bigint(20) UNSIGNED NOT NULL,
  `commission_percentage` decimal(8,2) NOT NULL DEFAULT 0.00
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mp_customer_revenues`
--

CREATE TABLE `mp_customer_revenues` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `sub_amount` decimal(15,2) DEFAULT 0.00,
  `fee` decimal(15,2) UNSIGNED DEFAULT 0.00,
  `amount` decimal(15,2) DEFAULT 0.00,
  `current_balance` decimal(15,2) DEFAULT 0.00,
  `currency` varchar(120) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `type` varchar(60) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mp_customer_withdrawals`
--

CREATE TABLE `mp_customer_withdrawals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `fee` decimal(15,2) UNSIGNED DEFAULT 0.00,
  `amount` decimal(15,2) UNSIGNED DEFAULT 0.00,
  `current_balance` decimal(15,2) UNSIGNED DEFAULT 0.00,
  `currency` varchar(120) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `bank_info` text DEFAULT NULL,
  `payment_channel` varchar(60) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `status` varchar(60) NOT NULL DEFAULT 'pending',
  `images` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `transaction_id` varchar(60) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mp_messages`
--

CREATE TABLE `mp_messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `store_id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(60) NOT NULL,
  `email` varchar(60) NOT NULL,
  `content` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mp_stores`
--

CREATE TABLE `mp_stores` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(60) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `address` varchar(191) DEFAULT NULL,
  `country` varchar(120) DEFAULT NULL,
  `state` varchar(120) DEFAULT NULL,
  `city` varchar(120) DEFAULT NULL,
  `customer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `logo` varchar(191) DEFAULT NULL,
  `logo_square` varchar(255) DEFAULT NULL,
  `cover_image` varchar(191) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `is_verified` tinyint(1) NOT NULL DEFAULT 0,
  `verified_at` timestamp NULL DEFAULT NULL,
  `verified_by` bigint(20) UNSIGNED DEFAULT NULL,
  `verification_note` text DEFAULT NULL,
  `vendor_verified_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) DEFAULT NULL,
  `company` varchar(191) DEFAULT NULL,
  `tax_id` varchar(191) DEFAULT NULL,
  `certificate_file` varchar(191) DEFAULT NULL,
  `government_id_file` varchar(191) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mp_stores`
--

INSERT INTO `mp_stores` (`id`, `name`, `email`, `phone`, `address`, `country`, `state`, `city`, `customer_id`, `logo`, `logo_square`, `cover_image`, `description`, `content`, `status`, `is_verified`, `verified_at`, `verified_by`, `verification_note`, `vendor_verified_at`, `created_at`, `updated_at`, `zip_code`, `company`, `tax_id`, `certificate_file`, `government_id_file`) VALUES
(1, 'GoPro', 'cordell.mccullough@example.org', '+14807862085', '51211 Charley Crossing', 'SO', 'Mississippi', 'New Scottie', 2, 'stores/1.png', NULL, NULL, 'Similique non expedita in dicta.', 'Molestiae dolores suscipit at ut consequatur. Quia praesentium non architecto.', 'published', 1, '2025-11-27 12:27:28', NULL, 'Authentic products and reliable service confirmed', NULL, '2026-01-06 00:56:07', '2026-01-06 00:56:07', NULL, NULL, NULL, NULL, NULL),
(2, 'Global Office', 'verona35@example.net', '+12283138183', '559 Trinity Crescent', 'SN', 'Arkansas', 'Beattyburgh', 4, 'stores/2.png', NULL, NULL, 'Iure natus dolorem iste error.', 'Eum doloribus error incidunt natus. Assumenda autem blanditiis harum non incidunt aut. Iusto dolores sed eum quisquam.', 'published', 0, NULL, NULL, NULL, NULL, '2026-01-06 00:56:07', '2026-01-06 00:56:07', NULL, NULL, NULL, NULL, NULL),
(3, 'Young Shop', 'kathleen.borer@example.org', '+17325418191', '57075 Stroman Mews', 'SG', 'Delaware', 'Lake Kaleb', 5, 'stores/3.png', NULL, NULL, 'Quam corrupti nesciunt et aut.', 'Vitae amet et ut aperiam. Id ipsa praesentium dolorum sapiente. Rerum quod ut iusto velit cupiditate quia.', 'published', 1, '2025-11-16 11:16:39', NULL, 'Verified through official business registration', NULL, '2026-01-06 00:56:07', '2026-01-06 00:56:07', NULL, NULL, NULL, NULL, NULL),
(4, 'Global Store', 'ari30@example.com', '+17547519060', '39496 Hill Causeway Suite 026', 'AF', 'North Dakota', 'East Justine', 8, 'stores/4.png', NULL, NULL, 'Laudantium cumque ea soluta minus natus ab.', 'Fugiat ad excepturi voluptatibus dignissimos. Ea voluptatem ea optio id dolore sequi. Consectetur perspiciatis consectetur aliquam.', 'published', 0, NULL, NULL, NULL, NULL, '2026-01-06 00:56:07', '2026-01-06 00:56:07', NULL, NULL, NULL, NULL, NULL),
(5, 'Robert’s Store', 'julius44@example.com', '+12698795473', '23166 Rau Land', 'CL', 'Idaho', 'North Emeliehaven', 9, 'stores/5.png', NULL, NULL, 'Qui iste aliquam qui magnam modi ut dolorem.', 'Totam cum earum quia pariatur voluptatem aliquid. Ratione omnis autem voluptates cupiditate sapiente aliquam laborum.', 'published', 0, NULL, NULL, NULL, NULL, '2026-01-06 00:56:07', '2026-01-06 00:56:07', NULL, NULL, NULL, NULL, NULL),
(6, 'Stouffer', 'ybruen@example.org', '+18635841890', '4694 Gerlach Island Apt. 752', 'FO', 'Idaho', 'Port Derrickbury', 10, 'stores/6.png', NULL, NULL, 'Dolore error quae impedit quis placeat.', 'Iste quidem magnam placeat sit. Rerum voluptas omnis expedita quidem porro laborum. Modi non rerum saepe blanditiis.', 'published', 1, '2025-08-03 04:10:35', NULL, 'Established vendor with proven track record', NULL, '2026-01-06 00:56:07', '2026-01-06 00:56:07', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mp_stores_translations`
--

CREATE TABLE `mp_stores_translations` (
  `lang_code` varchar(191) NOT NULL,
  `mp_stores_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `address` varchar(191) DEFAULT NULL,
  `company` varchar(191) DEFAULT NULL,
  `cover_image` varchar(191) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mp_vendor_info`
--

CREATE TABLE `mp_vendor_info` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `balance` decimal(15,2) NOT NULL DEFAULT 0.00,
  `total_fee` decimal(15,2) NOT NULL DEFAULT 0.00,
  `total_revenue` decimal(15,2) NOT NULL DEFAULT 0.00,
  `signature` varchar(191) DEFAULT NULL,
  `bank_info` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `payout_payment_method` varchar(120) DEFAULT 'bank_transfer',
  `tax_info` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mp_vendor_info`
--

INSERT INTO `mp_vendor_info` (`id`, `customer_id`, `balance`, `total_fee`, `total_revenue`, `signature`, `bank_info`, `created_at`, `updated_at`, `payout_payment_method`, `tax_info`) VALUES
(1, 2, 0.00, 0.00, 0.00, '$2y$12$8cWyPFIPHH2nuDwTJ8iE1ulgkYATnr81uEEMljtgeaTDZad3agFde', '{\"name\":\"Chaya Block\",\"number\":\"+12317265752\",\"full_name\":\"Dr. Mohammed Bins\",\"description\":\"Angie Hane\"}', '2026-01-06 00:56:05', '2026-01-06 00:56:05', 'bank_transfer', NULL),
(2, 4, 0.00, 0.00, 0.00, '$2y$12$Cw9ytTw3cUbKgvqzaQsTS.pKdi2A3rx7Az98HUMR4TMTK4F9W1KG.', '{\"name\":\"Leilani Mante\",\"number\":\"+14805709850\",\"full_name\":\"Elmer Murphy\",\"description\":\"Miss Dessie Champlin\"}', '2026-01-06 00:56:06', '2026-01-06 00:56:06', 'bank_transfer', NULL),
(3, 5, 0.00, 0.00, 0.00, '$2y$12$7LYweRdJZVIflcqufDVj4u2WvX/KjVh2ddos./av6v9G8YrbJm9A6', '{\"name\":\"Aiden Koelpin\",\"number\":\"+18302296671\",\"full_name\":\"Dr. Evalyn Stokes\",\"description\":\"Rosalinda Frami\"}', '2026-01-06 00:56:06', '2026-01-06 00:56:06', 'bank_transfer', NULL),
(4, 8, 0.00, 0.00, 0.00, '$2y$12$htaMLwN4SlxGuwHATe/gWehzLSSfc9OnklrkvYpeCK3.mRbDwXy9C', '{\"name\":\"Delbert Murphy IV\",\"number\":\"+12483183152\",\"full_name\":\"Heather Haley\",\"description\":\"Alexandre McCullough\"}', '2026-01-06 00:56:06', '2026-01-06 00:56:06', 'bank_transfer', NULL),
(5, 9, 0.00, 0.00, 0.00, '$2y$12$MjCOLBDN8oTZtirUnjy3POjVb6oFrODGCP7xvYKEzNGxp8zvRZA92', '{\"name\":\"Torrance Raynor\",\"number\":\"+19895097208\",\"full_name\":\"Margarita Smitham\",\"description\":\"Deven Cummings\"}', '2026-01-06 00:56:07', '2026-01-06 00:56:07', 'bank_transfer', NULL),
(6, 10, 0.00, 0.00, 0.00, '$2y$12$qCwHMKjQ2k1TjaLJ3YwoJuPRGC8G8T56puePFJr6QYcPNqdGPeLt.', '{\"name\":\"Jasen Conn\",\"number\":\"+16783848731\",\"full_name\":\"Tyree Haley\",\"description\":\"Louisa Robel\"}', '2026-01-06 00:56:07', '2026-01-06 00:56:07', 'bank_transfer', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `newsletters`
--

CREATE TABLE `newsletters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(120) NOT NULL,
  `name` varchar(120) DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'subscribed',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `content` longtext DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `image` varchar(191) DEFAULT NULL,
  `template` varchar(60) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `name`, `content`, `user_id`, `image`, `template`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Homepage', '<div>[simple-slider key=\"home-slider-1\" show_newsletter_form=\"yes\"][/simple-slider]</div><div>[featured-product-categories title=\"Top Categories\"][/featured-product-categories]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[popular-products title=\"Popular Products\" per_row=\"5\" limit=\"10\" enable_lazy_loading=\"yes\"][/popular-products]</div><div>[best-flash-sale title=\"Daily Best Sells\" flash_sale_id=\"5\" ads=\"IZ6WU8KUALYG\"][/best-flash-sale]</div><div>[flash-sale flash_sale_1=\"1\" flash_sale_2=\"2\" flash_sale_3=\"3\" flash_sale_4=\"4\" title=\"Deals Of The Day\" flash_sale_popup_id=\"1\"][/flash-sale]</div><div>[top-products-group tabs=\"top-selling,trending-products,recent-added,top-rated\" top_selling_in_days=\"365\" enable_lazy_loading=\"yes\"][/top-products-group]</div>', 1, NULL, 'homepage', NULL, 'published', '2026-01-06 00:55:50', '2026-01-06 00:55:50'),
(2, 'Homepage 2', '<div>[simple-slider key=\"home-slider-2\" ads_1=\"IZ6WU8KUALYH\" show_newsletter_form=\"yes\" cover_image=\"sliders/banner-1.png\"][/simple-slider]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[popular-products title=\"Popular Products\" per_row=\"5\" limit=\"10\" enable_lazy_loading=\"yes\"][/popular-products]</div><div>[best-flash-sale title=\"Daily Best Sells\" flash_sale_id=\"5\" ads=\"IZ6WU8KUALYG\"][/best-flash-sale]</div><div>[flash-sale flash_sale_1=\"1\" flash_sale_2=\"2\" flash_sale_3=\"3\" flash_sale_4=\"4\" title=\"Deals Of The Day\" flash_sale_popup_id=\"1\"][/flash-sale]</div><div>[top-products-group tabs=\"top-selling,trending-products,recent-added,top-rated\" top_selling_in_days=\"365\" enable_lazy_loading=\"yes\"][/top-products-group]</div><div>[product-categories title=\"Shop by Categories\"][/product-categories]</div>', 1, NULL, 'homepage', NULL, 'published', '2026-01-06 00:55:50', '2026-01-06 00:55:50'),
(3, 'Homepage 3', '<div>[simple-slider key=\"home-slider-1\" show_newsletter_form=\"yes\"][/simple-slider]</div><div>[popular-products title=\"Popular Products\" per_row=\"5\" limit=\"10\" enable_lazy_loading=\"yes\"][/popular-products]</div><div>[flash-sale flash_sale_1=\"1\" flash_sale_2=\"2\" flash_sale_3=\"3\" flash_sale_4=\"4\" title=\"Deals Of The Day\" flash_sale_popup_id=\"1\"][/flash-sale]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[product-categories title=\"Shop by Categories\"][/product-categories]</div><div>[top-products-group tabs=\"top-selling,trending-products,recent-added,top-rated\" top_selling_in_days=\"365\" enable_lazy_loading=\"yes\"][/top-products-group]</div>', 1, NULL, 'homepage', NULL, 'published', '2026-01-06 00:55:50', '2026-01-06 00:55:50'),
(4, 'Homepage 4', '<div>[simple-slider key=\"home-slider-4\" show_newsletter_form=\"yes\"][/simple-slider]</div><div>[popular-products title=\"Popular Products\" per_row=\"5\" limit=\"10\" enable_lazy_loading=\"yes\"][/popular-products]</div><div>[flash-sale flash_sale_1=\"1\" flash_sale_2=\"2\" flash_sale_3=\"3\" flash_sale_4=\"4\" title=\"Deals Of The Day\" flash_sale_popup_id=\"1\"][/flash-sale]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[product-categories title=\"Shop by Categories\"][/product-categories]</div><div>[top-products-group tabs=\"top-selling,trending-products,recent-added,top-rated\" top_selling_in_days=\"365\" enable_lazy_loading=\"yes\"][/top-products-group]</div>', 1, NULL, 'homepage', NULL, 'published', '2026-01-06 00:55:50', '2026-01-06 00:55:50'),
(5, 'Blog', '<p>---</p>', 1, NULL, 'blog-grid', NULL, 'published', '2026-01-06 00:55:50', '2026-01-06 00:55:50'),
(6, 'Contact', '<p>[google-map]502 New Street, Brighton VIC, Australia[/google-map]</p><p>[our-offices][/our-offices]</p><p>[contact-form][/contact-form]</p>', 1, NULL, 'default', NULL, 'published', '2026-01-06 00:55:50', '2026-01-06 00:55:50'),
(7, 'About us', '<p>Duchess began in a sulky tone; \'Seven jogged my elbow.\' On which Seven looked up and went in. The door led right into it. \'That\'s very important,\' the King said, for about the right height to rest her chin in salt water. Her first idea was that you think you\'re changed, do you?\' \'I\'m afraid I can\'t tell you more than three.\' \'Your hair wants cutting,\' said the Cat, and vanished again. Alice waited a little, and then unrolled the parchment scroll, and read out from his book, \'Rule Forty-two.</p><p>I suppose it doesn\'t understand English,\' thought Alice; \'only, as it\'s asleep, I suppose I ought to go on with the birds hurried off to other parts of the conversation. Alice replied, rather shyly, \'I--I hardly know, sir, just at present--at least I mean what I say--that\'s the same size: to be full of smoke from one minute to another! However, I\'ve got to come once a week: HE taught us Drawling, Stretching, and Fainting in Coils.\' \'What was THAT like?\' said Alice. \'I\'ve read that in some.</p><p>BEST butter,\' the March Hare. Alice was rather doubtful whether she could not tell whether they were all writing very busily on slates. \'What are tarts made of?\' \'Pepper, mostly,\' said the March Hare. \'He denies it,\' said Alice. \'Why not?\' said the Gryphon. \'We can do without lobsters, you know. Which shall sing?\' \'Oh, YOU sing,\' said the King. \'I can\'t explain MYSELF, I\'m afraid, but you might knock, and I shall fall right THROUGH the earth! How funny it\'ll seem to dry me at all.\' \'In that.</p><p>Alice said nothing; she had known them all her wonderful Adventures, till she was ready to ask any more questions about it, you may stand down,\' continued the Gryphon. \'We can do without lobsters, you know. But do cats eat bats?\' and sometimes, \'Do bats eat cats?\' for, you see, as she was playing against herself, for she was looking at Alice the moment she appeared on the spot.\' This did not answer, so Alice soon began talking again. \'Dinah\'ll miss me very much to-night, I should think you can.</p>', 1, NULL, 'right-sidebar', NULL, 'published', '2026-01-06 00:55:50', '2026-01-06 00:55:50'),
(8, 'Cookie Policy', '<h3>EU Cookie Consent</h3><p>To use this website we are using Cookies and collecting some data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>', 1, NULL, 'default', NULL, 'published', '2026-01-06 00:55:50', '2026-01-06 00:55:50'),
(9, 'Terms &amp; Conditions', '<p>Queen to-day?\' \'I should like to be beheaded!\' said Alice, a little bottle on it, for she had caught the baby joined):-- \'Wow! wow! wow!\' \'Here! you may nurse it a little bit, and said \'No, never\') \'--so you can have no answers.\' \'If you do. I\'ll set Dinah at you!\' There was a real Turtle.\' These words were followed by a very curious sensation, which puzzled her a good deal: this fireplace is narrow, to be executed for having cheated herself in Wonderland, though she looked at the stick, and.</p><p>Kings and Queens, and among them Alice recognised the White Rabbit returning, splendidly dressed, with a sigh. \'I only took the opportunity of taking it away. She did it so yet,\' said the Gryphon, and the Hatter asked triumphantly. Alice did not like to drop the jar for fear of their wits!\' So she began: \'O Mouse, do you know that cats COULD grin.\' \'They all can,\' said the Hatter. \'Nor I,\' said the Duck. \'Found IT,\' the Mouse with an M, such as mouse-traps, and the others looked round also.</p><p>Bill\'s got to grow to my boy, I beat him when he sneezes; For he can thoroughly enjoy The pepper when he sneezes; For he can thoroughly enjoy The pepper when he finds out who I WAS when I get SOMEWHERE,\' Alice added as an unusually large saucepan flew close by it, and fortunately was just saying to herself how this same little sister of hers would, in the night? Let me see--how IS it to half-past one as long as I tell you!\' said Alice. \'Why, you don\'t know much,\' said Alice, surprised at this.</p><p>I BEG your pardon!\' cried Alice in a hot tureen! Who for such dainties would not give all else for two reasons. First, because I\'m on the back. However, it was too small, but at any rate,\' said Alice: \'she\'s so extremely--\' Just then her head to hide a smile: some of the legs of the court. (As that is enough,\' Said his father; \'don\'t give yourself airs! Do you think you\'re changed, do you?\' \'I\'m afraid I\'ve offended it again!\' For the Mouse in the lap of her head was so ordered about by mice.</p>', 1, NULL, 'default', NULL, 'published', '2026-01-06 00:55:50', '2026-01-06 00:55:50'),
(10, 'Returns &amp; Exchanges', '<p>Mouse with an M--\' \'Why with an important air, \'are you all ready? This is the capital of Rome, and Rome--no, THAT\'S all wrong, I\'m certain! I must be getting somewhere near the house of the room. The cook threw a frying-pan after her as she could, \'If you please, sir--\' The Rabbit Sends in a low, trembling voice. \'There\'s more evidence to come down the chimney, has he?\' said Alice doubtfully: \'it means--to--make--anything--prettier.\' \'Well, then,\' the Cat again, sitting on a summer day: The.</p><p>Alice soon came to ME, and told me you had been found and handed back to her: its face in some book, but I shall remember it in time,\' said the Lory hastily. \'I thought you did,\' said the Cat. \'I said pig,\' replied Alice; \'and I do it again and again.\' \'You are all dry, he is gay as a boon, Was kindly permitted to pocket the spoon: While the Owl and the constant heavy sobbing of the miserable Mock Turtle. \'And how do you know what to say a word, but slowly followed her back to the rose-tree.</p><p>March Hare. \'Exactly so,\' said Alice. \'I don\'t see how he can thoroughly enjoy The pepper when he pleases!\' CHORUS. \'Wow! wow! wow!\' \'Here! you may nurse it a violent shake at the bottom of a water-well,\' said the Mock Turtle to sing you a present of everything I\'ve said as yet.\' \'A cheap sort of thing never happened, and now here I am to see the Mock Turtle, who looked at it again: but he now hastily began again, using the ink, that was said, and went on again:-- \'I didn\'t know that cats.</p><p>White Rabbit; \'in fact, there\'s nothing written on the floor, and a large arm-chair at one and then unrolled the parchment scroll, and read out from his book, \'Rule Forty-two. ALL PERSONS MORE THAN A MILE HIGH TO LEAVE THE COURT.\' Everybody looked at it uneasily, shaking it every now and then, if I know is, something comes at me like that!\' But she did not at all a proper way of speaking to it,\' she thought, \'it\'s sure to make out that the meeting adjourn, for the moment she appeared on the.</p>', 1, NULL, 'default', NULL, 'published', '2026-01-06 00:55:50', '2026-01-06 00:55:50'),
(11, 'Shipping &amp; Delivery', '<p>Alice said; \'there\'s a large cat which was full of tears, \'I do wish they COULD! I\'m sure I don\'t keep the same thing as \"I get what I could let you out, you know.\' \'Who is this?\' She said this last remark that had made out that the mouse doesn\'t get out.\" Only I don\'t believe it,\' said Alice, quite forgetting that she ought to tell him. \'A nice muddle their slates\'ll be in Bill\'s place for a little recovered from the sky! Ugh, Serpent!\' \'But I\'m NOT a serpent!\' said Alice timidly. \'Would you.</p><p>Alice said with some surprise that the cause of this rope--Will the roof of the reeds--the rattling teacups would change (she knew) to the company generally, \'You are old,\' said the Gryphon. \'Of course,\' the Gryphon whispered in a trembling voice to its feet, \'I move that the reason is--\' here the conversation dropped, and the little door, had vanished completely. Very soon the Rabbit in a more subdued tone, and added \'It isn\'t directed at all,\' said the Pigeon; \'but if they do, why then.</p><p>SIT down,\' the King and the little glass box that was sitting on a crimson velvet cushion; and, last of all the same, the next question is, what did the archbishop find?\' The Mouse did not see anything that looked like the look of the gloves, and was delighted to find that the Queen to-day?\' \'I should like to have got altered.\' \'It is wrong from beginning to end,\' said the youth, \'and your jaws are too weak For anything tougher than suet; Yet you finished the guinea-pigs!\' thought Alice. \'Now.</p><p>I didn\'t know it was quite impossible to say it out to sea as you go to on the door between us. For instance, suppose it doesn\'t matter a bit,\' she thought it would,\' said the Mock Turtle, \'they--you\'ve seen them, of course?\' \'Yes,\' said Alice, rather doubtfully, as she could, for her to carry it further. So she began: \'O Mouse, do you call him Tortoise--\' \'Why did they live at the sudden change, but very glad she had got its neck nicely straightened out, and was just in time to wash the.</p>', 1, NULL, 'default', NULL, 'published', '2026-01-06 00:55:50', '2026-01-06 00:55:50'),
(12, 'Privacy Policy', '<p>The Cat only grinned when it saw Alice. It looked good-natured, she thought: still it had finished this short speech, they all looked so good, that it seemed quite natural); but when the White Rabbit put on his spectacles. \'Where shall I begin, please your Majesty?\' he asked. \'Begin at the frontispiece if you cut your finger VERY deeply with a great hurry. \'You did!\' said the Queen, and Alice was not a moment to be a footman in livery, with a lobster as a cushion, resting their elbows on it.</p><p>Normans--\" How are you thinking of?\' \'I beg your pardon,\' said Alice in a bit.\' \'Perhaps it hasn\'t one,\' Alice ventured to taste it, and then all the unjust things--\' when his eye chanced to fall a long way back, and see that she wanted much to know, but the great question is, what?\' The great question is, what did the archbishop find?\' The Mouse did not see anything that had a bone in his turn; and both creatures hid their faces in their mouths--and they\'re all over with fright. \'Oh, I beg.</p><p>Pat, what\'s that in the distance, and she tried her best to climb up one of its mouth and yawned once or twice, half hoping she might find another key on it, (\'which certainly was not going to begin with; and being ordered about in the world she was holding, and she thought it would make with the game,\' the Queen ordering off her head!\' the Queen never left off when they arrived, with a round face, and large eyes like a telescope.\' And so it was addressed to the end of the trees had a large.</p><p>Eaglet. \'I don\'t know of any that do,\' Alice hastily replied; \'at least--at least I mean what I say,\' the Mock Turtle. \'And how many miles I\'ve fallen by this time, and was going to begin with,\' said the others. \'We must burn the house before she came upon a little shriek, and went to school in the last few minutes that she might as well wait, as she was dozing off, and found in it a violent shake at the end of the deepest contempt. \'I\'ve seen a cat without a porpoise.\' \'Wouldn\'t it really?\'.</p>', 1, NULL, 'default', NULL, 'published', '2026-01-06 00:55:50', '2026-01-06 00:55:50'),
(13, 'Blog List', '<p>[blog-posts paginate=\"12\"][/blog-posts]</p>', 1, NULL, 'blog-list', NULL, 'published', '2026-01-06 00:55:50', '2026-01-06 00:55:50'),
(14, 'Blog Big', '<p>[blog-posts paginate=\"12\"][/blog-posts]</p>', 1, NULL, 'blog-big', NULL, 'published', '2026-01-06 00:55:50', '2026-01-06 00:55:50'),
(15, 'Blog Wide', '<p>[blog-posts paginate=\"12\"][/blog-posts]</p>', 1, NULL, 'blog-wide', NULL, 'published', '2026-01-06 00:55:50', '2026-01-06 00:55:50'),
(16, 'Homepage 5', '<div>[simple-slider key=\"home-slider-5\" ads_1=\"IZ6WU8KUALYJ\" ads_2=\"IZ6WU8KUALYK\" show_newsletter_form=\"yes\"][/simple-slider]</div><div>[featured-product-categories title=\"Top Categories\"][/featured-product-categories]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[popular-products title=\"Popular Products\" per_row=\"5\" limit=\"10\" enable_lazy_loading=\"yes\"][/popular-products]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYL\" ads_2=\"IZ6WU8KUALYM\" ads_3=\"IZ6WU8KUALYN\" ads_4=\"IZ6WU8KUALYO\" style=\"style-5\"][/theme-ads]</div><div>[best-flash-sale title=\"Daily Best Sells\" flash_sale_id=\"5\" ads=\"IZ6WU8KUALYG\"][/best-flash-sale]</div><div>[flash-sale flash_sale_1=\"1\" flash_sale_2=\"2\" flash_sale_3=\"3\" flash_sale_4=\"4\" title=\"Deals Of The Day\" flash_sale_popup_id=\"1\"][/flash-sale]</div><div>[top-products-group tabs=\"top-selling,trending-products,recent-added,top-rated\" top_selling_in_days=\"365\" enable_lazy_loading=\"yes\"][/top-products-group]</div>', 1, NULL, 'homepage', NULL, 'published', '2026-01-06 00:55:50', '2026-01-06 00:55:50'),
(17, 'Homepage 6', '<div>[big-banner cover_image=\"general/home-6.jpeg\" show_newsletter_form=\"yes\" number_display_featured_categories=\"4\" title=\"What are you looking for?\"][/big-banner]</div><div>[trending-products title=\"Trending items\" per_row=\"5\" limit=\"20\"][/trending-products]</div><div>[flash-sale flash_sale_1=\"1\" flash_sale_2=\"2\" flash_sale_3=\"3\" flash_sale_4=\"4\" title=\"Deals Of The Day\" flash_sale_popup_id=\"1\"][/flash-sale]</div><div>[top-products-group tabs=\"top-selling,trending-products,recent-added,top-rated\" top_selling_in_days=\"365\" enable_lazy_loading=\"yes\"][/top-products-group]</div>', 1, NULL, 'homepage', NULL, 'published', '2026-01-06 00:55:50', '2026-01-06 00:55:50'),
(18, 'Faq', '<div>[faqs][/faqs]</div>', 1, NULL, 'default', NULL, 'published', '2026-01-06 00:55:50', '2026-01-06 00:55:50'),
(19, 'Coming Soon', '[coming-soon title=\"Get Notified When We Launch\" countdown_time=\"2026-07-24\" address=\" 58 Street Commercial Road Fratton, Australia\" hotline=\"+123456789\" business_hours=\"Mon – Sat: 8 am – 5 pm, Sunday: CLOSED\" show_social_links=\"1\" image=\"general/contact-img.jpg\"][/coming-soon]', 1, NULL, 'without-layout', NULL, 'published', '2026-01-06 00:55:50', '2026-01-06 00:55:50');

-- --------------------------------------------------------

--
-- Table structure for table `pages_translations`
--

CREATE TABLE `pages_translations` (
  `lang_code` varchar(20) NOT NULL,
  `pages_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL,
  `content` longtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages_translations`
--

INSERT INTO `pages_translations` (`lang_code`, `pages_id`, `name`, `description`, `content`) VALUES
('ar', 1, 'الصفحة الرئيسية', 'الصفحة الرئيسية', NULL),
('ar', 2, 'الصفحة الرئيسية 2', 'الصفحة الرئيسية 2', NULL),
('ar', 3, 'الصفحة الرئيسية 3', 'الصفحة الرئيسية 3', NULL),
('ar', 4, 'الصفحة الرئيسية 4', 'الصفحة الرئيسية 4', NULL),
('ar', 5, 'المدونة', 'مقالات ومدونات', NULL),
('ar', 6, 'اتصل بنا', 'تواصل معنا', NULL),
('ar', 7, 'من نحن', 'معلومات عنا', NULL),
('ar', 8, 'سياسة ملفات تعريف الارتباط', 'سياسة الكوكيز', NULL),
('ar', 9, 'الشروط والأحكام', 'شروط الاستخدام', NULL),
('ar', 10, 'الإرجاع والاستبدال', 'سياسة الإرجاع والاستبدال', NULL),
('ar', 11, 'الشحن والتوصيل', 'معلومات الشحن والتوصيل', NULL),
('ar', 12, 'سياسة الخصوصية', 'سياسة حماية البيانات', NULL),
('ar', 13, 'قائمة المدونة', 'عرض المقالات كقائمة', NULL),
('ar', 14, 'المدونة الكبيرة', 'عرض المقالات بشكل كبير', NULL),
('ar', 15, 'المدونة العريضة', 'عرض المقالات بشكل عريض', NULL),
('ar', 16, 'الصفحة الرئيسية 5', 'الصفحة الرئيسية 5', NULL),
('ar', 17, 'الصفحة الرئيسية 6', 'الصفحة الرئيسية 6', NULL),
('ar', 18, 'الأسئلة الشائعة', 'الأسئلة المتكررة', NULL),
('ar', 19, 'قريباً', 'صفحة قريباً', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `currency` varchar(120) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `charge_id` varchar(191) DEFAULT NULL,
  `payment_channel` varchar(60) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL,
  `amount` decimal(15,2) UNSIGNED NOT NULL,
  `payment_fee` decimal(15,2) DEFAULT 0.00,
  `order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status` varchar(60) DEFAULT 'pending',
  `payment_type` varchar(191) DEFAULT 'confirm',
  `customer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `refunded_amount` decimal(15,2) UNSIGNED DEFAULT NULL,
  `refund_note` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `customer_type` varchar(191) DEFAULT NULL,
  `metadata` mediumtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_logs`
--

CREATE TABLE `payment_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `payment_method` varchar(191) NOT NULL,
  `request` longtext DEFAULT NULL,
  `response` longtext DEFAULT NULL,
  `ip_address` varchar(45) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` varchar(400) DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `author_id` bigint(20) UNSIGNED DEFAULT NULL,
  `author_type` varchar(191) NOT NULL,
  `is_featured` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `image` varchar(191) DEFAULT NULL,
  `views` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `format_type` varchar(30) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `name`, `description`, `content`, `status`, `author_id`, `author_type`, `is_featured`, `image`, `views`, `format_type`, `created_at`, `updated_at`) VALUES
(1, '4 Expert Tips On How To Choose The Right Men’s Wallet', 'You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/1.png', 299, NULL, '2026-01-06 00:55:50', '2026-01-06 00:55:50'),
(2, 'Sexy Clutches: How to Buy &amp; Wear a Designer Clutch Bag', 'You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/2.png', 1460, NULL, '2026-01-06 00:55:50', '2026-01-06 00:55:50'),
(3, 'The Top 2020 Handbag Trends to Know', 'You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/3.png', 1257, NULL, '2026-01-06 00:55:50', '2026-01-06 00:55:50'),
(4, 'How to Match the Color of Your Handbag With an Outfit', 'You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n[featured-products title=\"Shop The Look\" limit=\"6\"][/featured-products]\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/4.png', 201, NULL, '2026-01-06 00:55:50', '2026-01-06 00:55:50'),
(5, 'How to Care for Leather Bags', 'You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/5.png', 1748, NULL, '2026-01-06 00:55:50', '2026-01-06 00:55:50'),
(6, 'We\'re Crushing Hard on Summer\'s 10 Biggest Bag Trends', 'You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/6.png', 535, NULL, '2026-01-06 00:55:50', '2026-01-06 00:55:50'),
(7, 'Essential Qualities of Highly Successful Music', 'You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/7.png', 962, NULL, '2026-01-06 00:55:50', '2026-01-06 00:55:50'),
(8, '9 Things I Love About Shaving My Head', 'You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/8.png', 800, NULL, '2026-01-06 00:55:50', '2026-01-06 00:55:50'),
(9, 'Why Teamwork Really Makes The Dream Work', 'You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/9.png', 161, NULL, '2026-01-06 00:55:50', '2026-01-06 00:55:50'),
(10, 'The World Caters to Average People', 'You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/10.png', 1700, NULL, '2026-01-06 00:55:50', '2026-01-06 00:55:50');
INSERT INTO `posts` (`id`, `name`, `description`, `content`, `status`, `author_id`, `author_type`, `is_featured`, `image`, `views`, `format_type`, `created_at`, `updated_at`) VALUES
(11, 'The litigants on the screen are not actors', 'You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'news/11.png', 1035, NULL, '2026-01-06 00:55:50', '2026-01-06 00:55:50');

-- --------------------------------------------------------

--
-- Table structure for table `posts_translations`
--

CREATE TABLE `posts_translations` (
  `lang_code` varchar(20) NOT NULL,
  `posts_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL,
  `content` longtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `post_categories`
--

CREATE TABLE `post_categories` (
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_categories`
--

INSERT INTO `post_categories` (`category_id`, `post_id`) VALUES
(1, 1),
(3, 1),
(3, 2),
(1, 2),
(3, 3),
(1, 3),
(2, 4),
(3, 4),
(2, 5),
(4, 5),
(1, 6),
(4, 6),
(3, 7),
(2, 7),
(2, 8),
(4, 8),
(4, 9),
(1, 9),
(3, 10),
(1, 10),
(3, 11),
(2, 11);

-- --------------------------------------------------------

--
-- Table structure for table `post_tags`
--

CREATE TABLE `post_tags` (
  `tag_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_tags`
--

INSERT INTO `post_tags` (`tag_id`, `post_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(1, 2),
(2, 2),
(3, 2),
(4, 2),
(5, 2),
(1, 3),
(2, 3),
(3, 3),
(4, 3),
(5, 3),
(1, 4),
(2, 4),
(3, 4),
(4, 4),
(5, 4),
(1, 5),
(2, 5),
(3, 5),
(4, 5),
(5, 5),
(1, 6),
(2, 6),
(3, 6),
(4, 6),
(5, 6),
(1, 7),
(2, 7),
(3, 7),
(4, 7),
(5, 7),
(1, 8),
(2, 8),
(3, 8),
(4, 8),
(5, 8),
(1, 9),
(2, 9),
(3, 9),
(4, 9),
(5, 9),
(1, 10),
(2, 10),
(3, 10),
(4, 10),
(5, 10),
(1, 11),
(2, 11),
(3, 11),
(4, 11),
(5, 11);

-- --------------------------------------------------------

--
-- Table structure for table `push_notifications`
--

CREATE TABLE `push_notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `message` text NOT NULL,
  `type` varchar(191) NOT NULL DEFAULT 'general',
  `target_type` varchar(191) DEFAULT NULL,
  `target_value` varchar(191) DEFAULT NULL,
  `action_url` varchar(191) DEFAULT NULL,
  `image_url` varchar(191) DEFAULT NULL,
  `data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`data`)),
  `status` varchar(191) NOT NULL DEFAULT 'sent',
  `sent_count` int(11) NOT NULL DEFAULT 0,
  `failed_count` int(11) NOT NULL DEFAULT 0,
  `delivered_count` int(11) NOT NULL DEFAULT 0,
  `read_count` int(11) NOT NULL DEFAULT 0,
  `scheduled_at` timestamp NULL DEFAULT NULL,
  `sent_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `push_notification_recipients`
--

CREATE TABLE `push_notification_recipients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `push_notification_id` bigint(20) UNSIGNED NOT NULL,
  `user_type` varchar(50) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `device_token` varchar(191) DEFAULT NULL,
  `platform` varchar(20) DEFAULT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'sent',
  `sent_at` timestamp NULL DEFAULT NULL,
  `delivered_at` timestamp NULL DEFAULT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `clicked_at` timestamp NULL DEFAULT NULL,
  `fcm_response` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`fcm_response`)),
  `error_message` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `revisions`
--

CREATE TABLE `revisions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `revisionable_type` varchar(191) NOT NULL,
  `revisionable_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `key` varchar(120) NOT NULL,
  `old_value` text DEFAULT NULL,
  `new_value` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(120) NOT NULL,
  `name` varchar(120) NOT NULL,
  `permissions` text DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL,
  `is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `updated_by` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `slug`, `name`, `permissions`, `description`, `is_default`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Admin', '{\"users.index\":true,\"users.create\":true,\"users.edit\":true,\"users.destroy\":true,\"roles.index\":true,\"roles.create\":true,\"roles.edit\":true,\"roles.destroy\":true,\"core.system\":true,\"core.cms\":true,\"core.manage.license\":true,\"systems.cronjob\":true,\"core.tools\":true,\"tools.data-synchronize\":true,\"media.index\":true,\"files.index\":true,\"files.create\":true,\"files.edit\":true,\"files.trash\":true,\"files.destroy\":true,\"folders.index\":true,\"folders.create\":true,\"folders.edit\":true,\"folders.trash\":true,\"folders.destroy\":true,\"settings.index\":true,\"settings.common\":true,\"settings.options\":true,\"settings.email\":true,\"settings.media\":true,\"settings.admin-appearance\":true,\"settings.cache\":true,\"settings.datatables\":true,\"settings.email.rules\":true,\"settings.others\":true,\"menus.index\":true,\"menus.create\":true,\"menus.edit\":true,\"menus.destroy\":true,\"optimize.settings\":true,\"pages.index\":true,\"pages.create\":true,\"pages.edit\":true,\"pages.destroy\":true,\"plugins.index\":true,\"plugins.edit\":true,\"plugins.remove\":true,\"plugins.marketplace\":true,\"sitemap.settings\":true,\"core.appearance\":true,\"theme.index\":true,\"theme.activate\":true,\"theme.remove\":true,\"theme.options\":true,\"theme.custom-css\":true,\"theme.custom-js\":true,\"theme.custom-html\":true,\"theme.robots-txt\":true,\"settings.website-tracking\":true,\"widgets.index\":true,\"ads.index\":true,\"ads.create\":true,\"ads.edit\":true,\"ads.destroy\":true,\"ads.settings\":true,\"analytics.general\":true,\"analytics.page\":true,\"analytics.browser\":true,\"analytics.referrer\":true,\"analytics.settings\":true,\"audit-log.index\":true,\"audit-log.destroy\":true,\"backups.index\":true,\"backups.create\":true,\"backups.restore\":true,\"backups.destroy\":true,\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"categories.index\":true,\"categories.create\":true,\"categories.edit\":true,\"categories.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"blog.settings\":true,\"posts.export\":true,\"posts.import\":true,\"captcha.settings\":true,\"contacts.index\":true,\"contacts.edit\":true,\"contacts.destroy\":true,\"contact.custom-fields\":true,\"contact.settings\":true,\"plugins.ecommerce\":true,\"ecommerce.report.index\":true,\"products.index\":true,\"products.create\":true,\"products.edit\":true,\"products.destroy\":true,\"products.duplicate\":true,\"ecommerce.product-prices.index\":true,\"ecommerce.product-prices.edit\":true,\"ecommerce.product-inventory.index\":true,\"ecommerce.product-inventory.edit\":true,\"product-categories.index\":true,\"product-categories.create\":true,\"product-categories.edit\":true,\"product-categories.destroy\":true,\"product-tag.index\":true,\"product-tag.create\":true,\"product-tag.edit\":true,\"product-tag.destroy\":true,\"brands.index\":true,\"brands.create\":true,\"brands.edit\":true,\"brands.destroy\":true,\"product-collections.index\":true,\"product-collections.create\":true,\"product-collections.edit\":true,\"product-collections.destroy\":true,\"product-attribute-sets.index\":true,\"product-attribute-sets.create\":true,\"product-attribute-sets.edit\":true,\"product-attribute-sets.destroy\":true,\"product-attributes.index\":true,\"product-attributes.create\":true,\"product-attributes.edit\":true,\"product-attributes.destroy\":true,\"tax.index\":true,\"tax.create\":true,\"tax.edit\":true,\"tax.destroy\":true,\"reviews.index\":true,\"reviews.create\":true,\"reviews.destroy\":true,\"reviews.publish\":true,\"reviews.reply\":true,\"ecommerce.shipments.index\":true,\"ecommerce.shipments.create\":true,\"ecommerce.shipments.edit\":true,\"ecommerce.shipments.destroy\":true,\"orders.index\":true,\"orders.create\":true,\"orders.edit\":true,\"orders.destroy\":true,\"discounts.index\":true,\"discounts.create\":true,\"discounts.edit\":true,\"discounts.destroy\":true,\"customers.index\":true,\"customers.create\":true,\"customers.edit\":true,\"customers.destroy\":true,\"ecommerce.customers.import\":true,\"ecommerce.customers.export\":true,\"flash-sale.index\":true,\"flash-sale.create\":true,\"flash-sale.edit\":true,\"flash-sale.destroy\":true,\"product-label.index\":true,\"product-label.create\":true,\"product-label.edit\":true,\"product-label.destroy\":true,\"ecommerce.import.products.index\":true,\"ecommerce.export.products.index\":true,\"order_returns.index\":true,\"order_returns.edit\":true,\"order_returns.destroy\":true,\"global-option.index\":true,\"global-option.create\":true,\"global-option.edit\":true,\"global-option.destroy\":true,\"ecommerce.invoice.index\":true,\"ecommerce.invoice.edit\":true,\"ecommerce.invoice.destroy\":true,\"ecommerce.settings\":true,\"ecommerce.settings.general\":true,\"ecommerce.invoice-template.index\":true,\"ecommerce.settings.currencies\":true,\"ecommerce.settings.products\":true,\"ecommerce.settings.product-search\":true,\"ecommerce.settings.digital-products\":true,\"ecommerce.settings.store-locators\":true,\"ecommerce.settings.invoices\":true,\"ecommerce.settings.product-reviews\":true,\"ecommerce.settings.customers\":true,\"ecommerce.settings.shopping\":true,\"ecommerce.settings.taxes\":true,\"ecommerce.settings.shipping\":true,\"ecommerce.shipping-rule-items.index\":true,\"ecommerce.shipping-rule-items.create\":true,\"ecommerce.shipping-rule-items.edit\":true,\"ecommerce.shipping-rule-items.destroy\":true,\"ecommerce.shipping-rule-items.bulk-import\":true,\"ecommerce.settings.tracking\":true,\"ecommerce.settings.standard-and-format\":true,\"ecommerce.settings.checkout\":true,\"ecommerce.settings.return\":true,\"ecommerce.settings.flash-sale\":true,\"ecommerce.settings.product-specification\":true,\"product-categories.export\":true,\"product-categories.import\":true,\"orders.export\":true,\"ecommerce.product-specification.index\":true,\"ecommerce.specification-groups.index\":true,\"ecommerce.specification-groups.create\":true,\"ecommerce.specification-groups.edit\":true,\"ecommerce.specification-groups.destroy\":true,\"ecommerce.specification-attributes.index\":true,\"ecommerce.specification-attributes.create\":true,\"ecommerce.specification-attributes.edit\":true,\"ecommerce.specification-attributes.destroy\":true,\"ecommerce.specification-tables.index\":true,\"ecommerce.specification-tables.create\":true,\"ecommerce.specification-tables.edit\":true,\"ecommerce.specification-tables.destroy\":true,\"plugin.faq\":true,\"faq.index\":true,\"faq.create\":true,\"faq.edit\":true,\"faq.destroy\":true,\"faq_category.index\":true,\"faq_category.create\":true,\"faq_category.edit\":true,\"faq_category.destroy\":true,\"faqs.settings\":true,\"languages.index\":true,\"languages.create\":true,\"languages.edit\":true,\"languages.destroy\":true,\"translations.import\":true,\"translations.export\":true,\"property-translations.import\":true,\"property-translations.export\":true,\"plugin.location\":true,\"country.index\":true,\"country.create\":true,\"country.edit\":true,\"country.destroy\":true,\"state.index\":true,\"state.create\":true,\"state.edit\":true,\"state.destroy\":true,\"city.index\":true,\"city.create\":true,\"city.edit\":true,\"city.destroy\":true,\"marketplace.index\":true,\"marketplace.store.index\":true,\"marketplace.store.create\":true,\"marketplace.store.edit\":true,\"marketplace.store.destroy\":true,\"marketplace.store.view\":true,\"marketplace.store.revenue.create\":true,\"marketplace.withdrawal.index\":true,\"marketplace.withdrawal.edit\":true,\"marketplace.withdrawal.destroy\":true,\"marketplace.withdrawal.invoice\":true,\"marketplace.vendors.index\":true,\"marketplace.unverified-vendors.index\":true,\"marketplace.vendors.control\":true,\"marketplace.unverified-vendors.edit\":true,\"marketplace.reports\":true,\"marketplace.settings\":true,\"marketplace.messages.index\":true,\"marketplace.messages.edit\":true,\"marketplace.messages.destroy\":true,\"newsletter.index\":true,\"newsletter.destroy\":true,\"newsletter.settings\":true,\"payment.index\":true,\"payments.settings\":true,\"payment.destroy\":true,\"payments.logs\":true,\"payments.logs.show\":true,\"payments.logs.destroy\":true,\"simple-slider.index\":true,\"simple-slider.create\":true,\"simple-slider.edit\":true,\"simple-slider.destroy\":true,\"simple-slider-item.index\":true,\"simple-slider-item.create\":true,\"simple-slider-item.edit\":true,\"simple-slider-item.destroy\":true,\"simple-slider.settings\":true,\"social-login.settings\":true,\"plugins.translation\":true,\"translations.locales\":true,\"translations.theme-translations\":true,\"translations.index\":true,\"theme-translations.export\":true,\"other-translations.export\":true,\"theme-translations.import\":true,\"other-translations.import\":true,\"api.settings\":true,\"api.sanctum-token.index\":true,\"api.sanctum-token.create\":true,\"api.sanctum-token.destroy\":true}', 'Admin users role', 1, 1, 1, '2026-01-06 00:55:51', '2026-01-06 00:55:51');

-- --------------------------------------------------------

--
-- Table structure for table `role_users`
--

CREATE TABLE `role_users` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_users`
--

INSERT INTO `role_users` (`user_id`, `role_id`, `created_at`, `updated_at`) VALUES
(2, 1, '2026-01-18 20:26:48', '2026-01-18 20:26:48'),
(3, 1, '2026-01-18 20:28:13', '2026-01-18 20:28:13'),
(1, 1, '2026-01-18 20:29:27', '2026-01-18 20:29:27'),
(4, 1, '2026-01-18 20:30:13', '2026-01-18 20:30:13');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(191) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('p0IPjAB4Rv1J65KvN8CdbZ6Coay26mBZGgVyvL2T', NULL, '147.135.213.175', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiMjgyT0V1RDlTeU01S3FuTDlQN1NRTXRqYnBkT1Fra2dVQXpjZ0FPZSI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTIzOiJodHRwczovL2FiZHVsYXppem1pbmlzdHJlZXQuY29tL2VuL3Byb2R1Y3QtdGFncy9zbWFydC10dj9udW09MzYmc29ydC1ieT1wcmljZV9hc2MmdGFncyU1QjAlNUQ9MSZ0YWdzJTVCMSU1RD0xJnRhZ3MlNUIyJTVEPTEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1768742568),
('iyZh7MYwxkunATaYWnGtkZEV3BaBxtdNDn707Xma', NULL, '147.135.213.175', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiU2pVcGU0ZFdNTWVMZUxBdjBKZUdoekhJbEZvVEFYNzBkNzNTY3VGVCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTIzOiJodHRwczovL2FiZHVsYXppem1pbmlzdHJlZXQuY29tL2VuL3Byb2R1Y3QtdGFncy9zbWFydC10dj9wYWdlPTEmc29ydC1ieT1wcmljZV9hc2MmdGFncyU1QjAlNUQ9MSZ0YWdzJTVCMSU1RD0xJnRhZ3MlNUIyJTVEPTEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1768742571),
('xjwN3GUSRKlrZZbepOqxH9UiKtHeE5j8HTfDLryg', NULL, '147.135.213.175', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiQUNhNWwycDcycEVhYlFxMUF1OGtrZUtRaVJ0STUwV0ZHUjlPRGZ5VCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTIzOiJodHRwczovL2FiZHVsYXppem1pbmlzdHJlZXQuY29tL2VuL3Byb2R1Y3QtdGFncy9zbWFydC10dj9wYWdlPTImc29ydC1ieT1wcmljZV9hc2MmdGFncyU1QjAlNUQ9MSZ0YWdzJTVCMSU1RD0xJnRhZ3MlNUIyJTVEPTEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1768742573),
('mDWayl6Dinb4UZCT0dGP8Aq7vjDyZdaTGVDmvrCD', NULL, '147.135.213.175', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiV1d5WDc2RDV0cnFXekh6cDJ0c2Jyekt4OGlycUFNTXF5TTV1elFYaCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTE3OiJodHRwczovL2FiZHVsYXppem1pbmlzdHJlZXQuY29tL2VuL3Byb2R1Y3QtdGFncy9zbWFydC10dj9zb3J0LWJ5PXByaWNlX2Rlc2MmdGFncyU1QjAlNUQ9MSZ0YWdzJTVCMSU1RD0xJnRhZ3MlNUIyJTVEPTEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1768742576),
('HiVYkCDppnrek2rmsQE9sKuZqJbJN2gnh4wma2Gb', NULL, '147.135.213.175', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoicnpzaXBDdzFnMGUzYzc3VzZoMG14YVpVZm9mMGdpd0RDRFF3dEljVyI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTI0OiJodHRwczovL2FiZHVsYXppem1pbmlzdHJlZXQuY29tL2VuL3Byb2R1Y3QtdGFncy9zbWFydC10dj9udW09MTImc29ydC1ieT1wcmljZV9kZXNjJnRhZ3MlNUIwJTVEPTEmdGFncyU1QjElNUQ9MSZ0YWdzJTVCMiU1RD0xIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1768742579),
('Wbx29BtmYXSzlq3L9h9BGBZ2z0EfiMWV9ZyTfMAF', NULL, '147.135.213.175', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiQlA3TW53dVMyYXh2eE54NHl5bEVjbEtCRXhxbzJndENZWWcyaEVKSCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTI0OiJodHRwczovL2FiZHVsYXppem1pbmlzdHJlZXQuY29tL2VuL3Byb2R1Y3QtdGFncy9zbWFydC10dj9udW09MjQmc29ydC1ieT1wcmljZV9kZXNjJnRhZ3MlNUIwJTVEPTEmdGFncyU1QjElNUQ9MSZ0YWdzJTVCMiU1RD0xIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1768742581),
('l01C3iz9rbXynuILI1aMLy5uihy9VG7u0KZY3kfo', NULL, '147.135.213.175', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoia282clV1cVdXRjRTVUNuWkZXUmdGWGNsWFF2cjJEOE9WRVpUT1Q0cCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTI0OiJodHRwczovL2FiZHVsYXppem1pbmlzdHJlZXQuY29tL2VuL3Byb2R1Y3QtdGFncy9zbWFydC10dj9udW09MzYmc29ydC1ieT1wcmljZV9kZXNjJnRhZ3MlNUIwJTVEPTEmdGFncyU1QjElNUQ9MSZ0YWdzJTVCMiU1RD0xIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1768742584),
('Et4WyhKqy5GoP7oT6fJMJqQ1mDOKxHMOgOj4Rwpy', NULL, '147.135.213.175', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiT0psemZ1amxkTEgySXpnblFjdkw5R1FTNUZLcU5HVW1FZkVOMEdxUiI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTI0OiJodHRwczovL2FiZHVsYXppem1pbmlzdHJlZXQuY29tL2VuL3Byb2R1Y3QtdGFncy9zbWFydC10dj9wYWdlPTEmc29ydC1ieT1wcmljZV9kZXNjJnRhZ3MlNUIwJTVEPTEmdGFncyU1QjElNUQ9MSZ0YWdzJTVCMiU1RD0xIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1768742587),
('ftEOIyWcvl9MV4kWaC0bzQwJIiu7AJIO9pw3s84p', NULL, '147.135.213.175', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiR2hWVGNjaFFmZHdzV05LNXZlbWpmSFhJSkc2eW94cDVsOVJGa2JlbyI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTI0OiJodHRwczovL2FiZHVsYXppem1pbmlzdHJlZXQuY29tL2VuL3Byb2R1Y3QtdGFncy9zbWFydC10dj9wYWdlPTImc29ydC1ieT1wcmljZV9kZXNjJnRhZ3MlNUIwJTVEPTEmdGFncyU1QjElNUQ9MSZ0YWdzJTVCMiU1RD0xIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1768742589),
('D1TCYByjlaVPLO1PIW6UiCZ9JwRHDRj240mgplv3', 1, '102.42.30.230', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il9mbGFzaCI7YToyOntzOjM6Im5ldyI7YTowOnt9czozOiJvbGQiO2E6MDp7fX1zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czo1MzoiaHR0cHM6Ly9hYmR1bGF6aXptaW5pc3RyZWV0LmNvbS9wdWJsaWMvYWRtaW4vc2V0dGluZ3MiO31zOjY6Il90b2tlbiI7czo0MDoiQnJLTkU0MHRNaFZrNGhHYTZSV0pmc2xyam4yaVl3QlFVb09Kc1BlMCI7czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjM6InVybCI7YTowOnt9fQ==', 1768743065),
('dP2LjwrzEtJePdjFzxotfG1BPmmEtxSX34FiDq4B', NULL, '147.135.213.175', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiRDFoQXdPSHd5OGpxTHlvdlpmRFVMblpZOGl0U0dSMGRUdTM2U3FVSCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTIzOiJodHRwczovL2FiZHVsYXppem1pbmlzdHJlZXQuY29tL2VuL3Byb2R1Y3QtdGFncy9zbWFydC10dj9udW09MjQmc29ydC1ieT1wcmljZV9hc2MmdGFncyU1QjAlNUQ9MSZ0YWdzJTVCMSU1RD0xJnRhZ3MlNUIyJTVEPTEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1768742566),
('amPZ35aDdrFjTPWes5pIKFUwj1F7FOQDZqJjiEd4', NULL, '147.135.213.175', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiTTJrekpsN2hjSFVpUk5ZMkU2UlFrakp2Qlc4SW1DSU9GUmhuRDd3bSI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTIzOiJodHRwczovL2FiZHVsYXppem1pbmlzdHJlZXQuY29tL2VuL3Byb2R1Y3QtdGFncy9zbWFydC10dj9udW09MTImc29ydC1ieT1wcmljZV9hc2MmdGFncyU1QjAlNUQ9MSZ0YWdzJTVCMSU1RD0xJnRhZ3MlNUIyJTVEPTEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1768742563),
('9fIDuOGRj5hzyBoJeKzg2rBtgM9ta11343V34H4M', NULL, '147.135.213.175', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiOHBhTDVIdXRxRXhDc1pWS0FiOTE3RGxpQ1ljS25mZUpRSkV0aVF4eSI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTE2OiJodHRwczovL2FiZHVsYXppem1pbmlzdHJlZXQuY29tL2VuL3Byb2R1Y3QtdGFncy9zbWFydC10dj9zb3J0LWJ5PXByaWNlX2FzYyZ0YWdzJTVCMCU1RD0xJnRhZ3MlNUIxJTVEPTEmdGFncyU1QjIlNUQ9MSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1768742561),
('uo9pSgL2Tut6H5d0lmZACF2O8i556k3VsWAm08H5', NULL, '147.135.213.175', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoibm96dGdHMWx4UGp6OGVIOGNTSW5sMmVXdGJJOGd6R2F3bGxyTUgyUSI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTIzOiJodHRwczovL2FiZHVsYXppem1pbmlzdHJlZXQuY29tL2VuL3Byb2R1Y3QtdGFncy9zbWFydC10dj9wYWdlPTImc29ydC1ieT1uYW1lX2Rlc2MmdGFncyU1QjAlNUQ9MSZ0YWdzJTVCMSU1RD0xJnRhZ3MlNUIyJTVEPTEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1768742558),
('zpEbSKNobB4Zpl9cE5Ok28PqlY1PWmiTG76SzGak', NULL, '147.135.213.175', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiNzdUTFRLQ2dHMW9nSHhmWHphdXdBRDFJQ2YyaDhabDFJc2o1aklWZCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTIyOiJodHRwczovL2FiZHVsYXppem1pbmlzdHJlZXQuY29tL2VuL3Byb2R1Y3QtdGFncy9zbWFydC10dj9udW09MTImc29ydC1ieT1uYW1lX2FzYyZ0YWdzJTVCMCU1RD0xJnRhZ3MlNUIxJTVEPTEmdGFncyU1QjIlNUQ9MSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1768742532),
('sVDniAlEzkkMhBnRXXaih3mVj4xliNS681rpxhaO', NULL, '147.135.213.175', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiUE1WWXdTVDlKWkhkemw1d2lSY2RvdUZkeE5SbTM3aXcyb0lCRVhmQSI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTIzOiJodHRwczovL2FiZHVsYXppem1pbmlzdHJlZXQuY29tL2VuL3Byb2R1Y3QtdGFncy9zbWFydC10dj9wYWdlPTEmc29ydC1ieT1uYW1lX2Rlc2MmdGFncyU1QjAlNUQ9MSZ0YWdzJTVCMSU1RD0xJnRhZ3MlNUIyJTVEPTEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1768742556),
('3YKusod3QCsOVycamlKVAf1Qt8fKMSy55pPFHX1Y', NULL, '147.135.213.175', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoic1A4eHpTd01xNVlMUDBVTGRNRVJ6NkhOVVFDaDVEU01KdWdkSFBRdCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTIzOiJodHRwczovL2FiZHVsYXppem1pbmlzdHJlZXQuY29tL2VuL3Byb2R1Y3QtdGFncy9zbWFydC10dj9udW09MzYmc29ydC1ieT1uYW1lX2Rlc2MmdGFncyU1QjAlNUQ9MSZ0YWdzJTVCMSU1RD0xJnRhZ3MlNUIyJTVEPTEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1768742553),
('0BTJTtsGSf2ORvhZo3DUYbAtPErpERTyBGxeSr3z', NULL, '147.135.213.175', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoialBYRUUwQkU3R3VGNWFMc0g4RGhyQ29hdFJyM2xhSkZGMUlrYVIxYSI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTIzOiJodHRwczovL2FiZHVsYXppem1pbmlzdHJlZXQuY29tL2VuL3Byb2R1Y3QtdGFncy9zbWFydC10dj9udW09MjQmc29ydC1ieT1uYW1lX2Rlc2MmdGFncyU1QjAlNUQ9MSZ0YWdzJTVCMSU1RD0xJnRhZ3MlNUIyJTVEPTEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1768742551),
('2PlUqMPSAUZqCphJA2XnpLe1BJiIxoqIi5xchJ42', NULL, '147.135.213.175', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiVUhHWDAwTE83QUIzZUllYXdRYjlBNGhQYlNWOWkxOFRGMXJPS0JVUiI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTIzOiJodHRwczovL2FiZHVsYXppem1pbmlzdHJlZXQuY29tL2VuL3Byb2R1Y3QtdGFncy9zbWFydC10dj9udW09MTImc29ydC1ieT1uYW1lX2Rlc2MmdGFncyU1QjAlNUQ9MSZ0YWdzJTVCMSU1RD0xJnRhZ3MlNUIyJTVEPTEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1768742548),
('GWpYBYFcoz3eH9hifMfeA3EA3pFiaAO6rFtOIJsc', NULL, '147.135.213.175', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiUXlWQk9DQTcyc3dPbzMyOUlIWWRqWXJlaVIyclNDUWFMU1JmNTFxbSI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTE2OiJodHRwczovL2FiZHVsYXppem1pbmlzdHJlZXQuY29tL2VuL3Byb2R1Y3QtdGFncy9zbWFydC10dj9zb3J0LWJ5PW5hbWVfZGVzYyZ0YWdzJTVCMCU1RD0xJnRhZ3MlNUIxJTVEPTEmdGFncyU1QjIlNUQ9MSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1768742545),
('X8evDXj5dSmWPs9UvuYY4SRdR1dtpyZn3thz5QN8', NULL, '147.135.213.175', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiVlRCcXUxNkVwdmgyZ0x4OG44aU51UzR6bnRYZXVYRUw3RVFycmd1ciI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTIyOiJodHRwczovL2FiZHVsYXppem1pbmlzdHJlZXQuY29tL2VuL3Byb2R1Y3QtdGFncy9zbWFydC10dj9wYWdlPTImc29ydC1ieT1uYW1lX2FzYyZ0YWdzJTVCMCU1RD0xJnRhZ3MlNUIxJTVEPTEmdGFncyU1QjIlNUQ9MSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1768742543),
('rELmscLkBGsmzgvQaWsLvb2mWLARD3X7WpEOeZJ3', NULL, '147.135.213.175', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiTDVSM0l4NlZKRURsZlFSYjlGUG8yaktIUGw3WUZvQ3YwS2w2bEJzaCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTIyOiJodHRwczovL2FiZHVsYXppem1pbmlzdHJlZXQuY29tL2VuL3Byb2R1Y3QtdGFncy9zbWFydC10dj9udW09MjQmc29ydC1ieT1uYW1lX2FzYyZ0YWdzJTVCMCU1RD0xJnRhZ3MlNUIxJTVEPTEmdGFncyU1QjIlNUQ9MSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1768742535),
('pq5qd4ze6GjxJCMtLlmoYoNbidlMbWr63zusKpZr', NULL, '147.135.213.175', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiVGQ1dzl4VzdUV2tLTGdEMWZ4eTI4Z3h4THk1RmpRdXJRem1oc081MSI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTIyOiJodHRwczovL2FiZHVsYXppem1pbmlzdHJlZXQuY29tL2VuL3Byb2R1Y3QtdGFncy9zbWFydC10dj9udW09MzYmc29ydC1ieT1uYW1lX2FzYyZ0YWdzJTVCMCU1RD0xJnRhZ3MlNUIxJTVEPTEmdGFncyU1QjIlNUQ9MSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1768742538),
('ew2Q4Tq3COTP5e40bjwpmVS1cOWy0HaJONmUV3fH', NULL, '147.135.213.175', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoibVpqNmh4QmhQTG1mTUtZZDFtUm9hQkVUSGgzRUxCUXRRTmRCY2ppMSI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTIyOiJodHRwczovL2FiZHVsYXppem1pbmlzdHJlZXQuY29tL2VuL3Byb2R1Y3QtdGFncy9zbWFydC10dj9wYWdlPTEmc29ydC1ieT1uYW1lX2FzYyZ0YWdzJTVCMCU1RD0xJnRhZ3MlNUIxJTVEPTEmdGFncyU1QjIlNUQ9MSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1768742540),
('GGmTOMqsytiOu2JeFkiow8n4iweylXwhsBZ2dL4u', NULL, '147.135.213.175', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoib1hPNjRDZnlDbGJmTnFNQ01DZTRBdWJVVzlnMk5FTlkyZThYQjJ3aCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTI5OiJodHRwczovL2FiZHVsYXppem1pbmlzdHJlZXQuY29tL2VuL3Byb2R1Y3QtdGFncy9zbWFydC10dj9wYWdlPTImc29ydC1ieT1kZWZhdWx0X3NvcnRpbmcmdGFncyU1QjAlNUQ9MSZ0YWdzJTVCMSU1RD0xJnRhZ3MlNUIyJTVEPTEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1768742526),
('8mb0HDCqRh1X8j8aOFAlrMGjAyBYi1Z0KdaDnj9m', NULL, '147.135.213.175', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoibmc1YUEzeUc0RllBMURKVEVBTnBDdWttYXo4S3ZPUDlLcTI1Vm13WSI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTE1OiJodHRwczovL2FiZHVsYXppem1pbmlzdHJlZXQuY29tL2VuL3Byb2R1Y3QtdGFncy9zbWFydC10dj9zb3J0LWJ5PW5hbWVfYXNjJnRhZ3MlNUIwJTVEPTEmdGFncyU1QjElNUQ9MSZ0YWdzJTVCMiU1RD0xIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1768742529),
('2uI3NH0WUUrlAS9KYT9AXLotz6PZV6A3ziVhcXOK', NULL, '147.135.213.175', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiYkdtWFpsTFBBbHNLYVJJMkVkOEJzaFZNellXVHFWaFQ3R3VUQmYzcyI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTI5OiJodHRwczovL2FiZHVsYXppem1pbmlzdHJlZXQuY29tL2VuL3Byb2R1Y3QtdGFncy9zbWFydC10dj9wYWdlPTEmc29ydC1ieT1kZWZhdWx0X3NvcnRpbmcmdGFncyU1QjAlNUQ9MSZ0YWdzJTVCMSU1RD0xJnRhZ3MlNUIyJTVEPTEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1768742523),
('A9C1RzjEAulm5K0GIkdo0CHVxWHMKtIK64EPr9M9', NULL, '147.135.213.175', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiNFFzNWo1cHpOSkpQSFhDUzNmeVhlS3plZ0h2czREVkZmVFZ6VlBrUyI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTI5OiJodHRwczovL2FiZHVsYXppem1pbmlzdHJlZXQuY29tL2VuL3Byb2R1Y3QtdGFncy9zbWFydC10dj9udW09MzYmc29ydC1ieT1kZWZhdWx0X3NvcnRpbmcmdGFncyU1QjAlNUQ9MSZ0YWdzJTVCMSU1RD0xJnRhZ3MlNUIyJTVEPTEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1768742521),
('uz6D9P6fNc3Yp4b7hwT5G5yiug5JRPbC3TnZhdx3', NULL, '147.135.213.175', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiVGpkZkNMRUFnV25zZWpwekNYRE1uYjVYdnZ6WER5M3REdmZLSkhSZCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTI5OiJodHRwczovL2FiZHVsYXppem1pbmlzdHJlZXQuY29tL2VuL3Byb2R1Y3QtdGFncy9zbWFydC10dj9udW09MTImc29ydC1ieT1kZWZhdWx0X3NvcnRpbmcmdGFncyU1QjAlNUQ9MSZ0YWdzJTVCMSU1RD0xJnRhZ3MlNUIyJTVEPTEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1768742513),
('GowHZjpkOkWKvyV8VX1gC9lGWN8fw7etWdRkgX54', NULL, '147.135.213.175', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoieVV0MERkNVcxcHRPRjFIMWo3SjNremtZNXR5SXU2bWV3T2Y2WXUwUSI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTI5OiJodHRwczovL2FiZHVsYXppem1pbmlzdHJlZXQuY29tL2VuL3Byb2R1Y3QtdGFncy9zbWFydC10dj9udW09MjQmc29ydC1ieT1kZWZhdWx0X3NvcnRpbmcmdGFncyU1QjAlNUQ9MSZ0YWdzJTVCMSU1RD0xJnRhZ3MlNUIyJTVEPTEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1768742516),
('RnkLrK3tLviU4GKjBAMRl7B1eVxUoSubHO02EAjn', NULL, '147.135.213.175', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoidnJKampTYVBmc1RkYWtSV0FUTjhaVDh3RGEyQjNxRFJaWWxUMldMTyI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTIyOiJodHRwczovL2FiZHVsYXppem1pbmlzdHJlZXQuY29tL2VuL3Byb2R1Y3QtdGFncy9zbWFydC10dj9zb3J0LWJ5PWRlZmF1bHRfc29ydGluZyZ0YWdzJTVCMCU1RD0xJnRhZ3MlNUIxJTVEPTEmdGFncyU1QjIlNUQ9MSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1768742510),
('iyIVc5ec8Z0IoHMyqW5ywwoCSPZFX21VpmDTAKVb', NULL, '147.135.213.175', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoieTY5a0lpc0xreDRjUkFFNFBha3paYmZ3UUZmNWl4dzBWNnB6NFpZYyI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTIzOiJodHRwczovL2FiZHVsYXppem1pbmlzdHJlZXQuY29tL2VuL3Byb2R1Y3QtdGFncy9zbWFydC10dj9wYWdlPTEmc29ydC1ieT1kYXRlX2Rlc2MmdGFncyU1QjAlNUQ9MSZ0YWdzJTVCMSU1RD0xJnRhZ3MlNUIyJTVEPTEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1768742503),
('zkZjK6UHAWt0057enoeKaCTTx1aO1ZCJjnMyKuE6', NULL, '147.135.213.175', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoidk10VFNCMVBDQVNWdUpQVVV2Y2JyNTIwTVB0Vmtkd1VZUW1GaDZmbyI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTIzOiJodHRwczovL2FiZHVsYXppem1pbmlzdHJlZXQuY29tL2VuL3Byb2R1Y3QtdGFncy9zbWFydC10dj9wYWdlPTImc29ydC1ieT1kYXRlX2Rlc2MmdGFncyU1QjAlNUQ9MSZ0YWdzJTVCMSU1RD0xJnRhZ3MlNUIyJTVEPTEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1768742506),
('GeHCORJXGLeAjRXa4khRpm5CLq10zwxdAKXjOFw7', NULL, '147.135.213.175', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiT0lYZmNWRVJOcllLbUpLN1JERjkzelE2OXk1MzVtck9FUkl4cDhKZSI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTIzOiJodHRwczovL2FiZHVsYXppem1pbmlzdHJlZXQuY29tL2VuL3Byb2R1Y3QtdGFncy9zbWFydC10dj9udW09MzYmc29ydC1ieT1kYXRlX2Rlc2MmdGFncyU1QjAlNUQ9MSZ0YWdzJTVCMSU1RD0xJnRhZ3MlNUIyJTVEPTEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1768742499),
('o2ELlF5wa6PCZzigcuKV6fCYQkz7zbpkZaUtsnPq', NULL, '147.135.213.175', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiZzRmVFNEZGR4TExwRGtrZmZ5djZDYkJkTUVSU2FCVm5tdU1wV0Q2UyI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTIzOiJodHRwczovL2FiZHVsYXppem1pbmlzdHJlZXQuY29tL2VuL3Byb2R1Y3QtdGFncy9zbWFydC10dj9udW09MTImc29ydC1ieT1kYXRlX2Rlc2MmdGFncyU1QjAlNUQ9MSZ0YWdzJTVCMSU1RD0xJnRhZ3MlNUIyJTVEPTEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1768742491),
('PpykDDdWO6QGCvzBwh9n1iX8To31G2iTHnQbNKqh', NULL, '147.135.213.175', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoieXEyR3czMFVlZ2FZQ3dPdTVST3F6NGVsRFIwcTY5bWVNQ1VHZ2dvWCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTIzOiJodHRwczovL2FiZHVsYXppem1pbmlzdHJlZXQuY29tL2VuL3Byb2R1Y3QtdGFncy9zbWFydC10dj9udW09MjQmc29ydC1ieT1kYXRlX2Rlc2MmdGFncyU1QjAlNUQ9MSZ0YWdzJTVCMSU1RD0xJnRhZ3MlNUIyJTVEPTEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1768742495),
('2alLex23Ntm5H8cundjO5Fvfq6FE3l8UFMtCLaNO', NULL, '147.135.213.175', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiV2hGcVVRQXJHSWdHWXBKbjVkOFJKZ0JkVnUxdElmR01NN1RpTUdiTSI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTE2OiJodHRwczovL2FiZHVsYXppem1pbmlzdHJlZXQuY29tL2VuL3Byb2R1Y3QtdGFncy9zbWFydC10dj9zb3J0LWJ5PWRhdGVfZGVzYyZ0YWdzJTVCMCU1RD0xJnRhZ3MlNUIxJTVEPTEmdGFncyU1QjIlNUQ9MSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1768742488),
('2OUxO4F5i5HkjphEByPqPXVZ1skQK8vNsA26O8En', NULL, '147.135.213.175', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoibGl1a1hPZkQ2dG5sSjNPNThmMVNHT3Y0d1BqdTJZQmIzcU9SV0kxNiI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTIyOiJodHRwczovL2FiZHVsYXppem1pbmlzdHJlZXQuY29tL2VuL3Byb2R1Y3QtdGFncy9zbWFydC10dj9wYWdlPTImc29ydC1ieT1kYXRlX2FzYyZ0YWdzJTVCMCU1RD0xJnRhZ3MlNUIxJTVEPTEmdGFncyU1QjIlNUQ9MSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1768742485),
('HEsSv0z81bmJxDU3P3Xlopn5jKd4bLoTwdWbQcQa', NULL, '147.135.213.175', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiQWZIaHVucFIzWXJKdkh6VUF3RVNONVdma1NiZmV1RHEzS01FZnlFdiI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTIyOiJodHRwczovL2FiZHVsYXppem1pbmlzdHJlZXQuY29tL2VuL3Byb2R1Y3QtdGFncy9zbWFydC10dj9wYWdlPTEmc29ydC1ieT1kYXRlX2FzYyZ0YWdzJTVCMCU1RD0xJnRhZ3MlNUIxJTVEPTEmdGFncyU1QjIlNUQ9MSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1768742482),
('TDL1pC3qVIE0b6foJhSwLseIewCedmFMTTotrb6r', NULL, '147.135.213.175', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoic3c5dUxuUGZJbHhIeXM3bTVBenYwb0dZYUZrN3JpMXI5Wmc0TlB6cyI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTIyOiJodHRwczovL2FiZHVsYXppem1pbmlzdHJlZXQuY29tL2VuL3Byb2R1Y3QtdGFncy9zbWFydC10dj9udW09MzYmc29ydC1ieT1kYXRlX2FzYyZ0YWdzJTVCMCU1RD0xJnRhZ3MlNUIxJTVEPTEmdGFncyU1QjIlNUQ9MSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1768742479),
('v6Seso9mOnAvfXgsZyIqUNcPMswrbBcRr3pAtZPH', NULL, '147.135.213.175', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoicDdTY3NlVHF2R2VrM2hrWUhTdFpOYmJ3dmJ6Tm5sMGw4VHdaMHgxSiI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTIyOiJodHRwczovL2FiZHVsYXppem1pbmlzdHJlZXQuY29tL2VuL3Byb2R1Y3QtdGFncy9zbWFydC10dj9udW09MTImc29ydC1ieT1kYXRlX2FzYyZ0YWdzJTVCMCU1RD0xJnRhZ3MlNUIxJTVEPTEmdGFncyU1QjIlNUQ9MSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1768742474),
('5qJ3jIWhsx5RQjsXHuKE5faXABeFbiAQAh9Ixc7e', NULL, '147.135.213.175', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiYkpISHVQdmYzeUR2TDJFcGhUNEdUSEEwb0ZKa0VaeFY2S21Nd2VSMCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTIyOiJodHRwczovL2FiZHVsYXppem1pbmlzdHJlZXQuY29tL2VuL3Byb2R1Y3QtdGFncy9zbWFydC10dj9udW09MjQmc29ydC1ieT1kYXRlX2FzYyZ0YWdzJTVCMCU1RD0xJnRhZ3MlNUIxJTVEPTEmdGFncyU1QjIlNUQ9MSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1768742477),
('3kAwd6035HfxRAjVlQT9A7oaWzquznWrccQwsdrC', NULL, '147.135.213.175', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiVERnU2F0WkdNYWJ0QzBKSHd1bEhVSnBUMDlDMEVZWGpyWUxMeGlWciI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTEyOiJodHRwczovL2FiZHVsYXppem1pbmlzdHJlZXQuY29tL2VuL3Byb2R1Y3QtdGFncy9uby1mcm9zdD9udW09MTImcGFnZT0yJnRhZ3MlNUIwJTVEPTMmdGFncyU1QjElNUQ9MyZ0YWdzJTVCMiU1RD0zIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1768742469),
('lFyJep9l8dmFgUBsPMeCaUglvEySOeSw4PiZTJHN', NULL, '147.135.213.175', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiQWRiUENSMlFKSHI0UXZwd0U5VWRQOWlWMUg2VkFDNWNFTHpxVjJ6cCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTE1OiJodHRwczovL2FiZHVsYXppem1pbmlzdHJlZXQuY29tL2VuL3Byb2R1Y3QtdGFncy9zbWFydC10dj9zb3J0LWJ5PWRhdGVfYXNjJnRhZ3MlNUIwJTVEPTEmdGFncyU1QjElNUQ9MSZ0YWdzJTVCMiU1RD0xIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1768742472),
('lfwSo2dZBGtq1A8jw5C3HIW5CURMbK8OOcpcIucU', NULL, '147.135.213.175', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiRGZDZDNGTkk3NWpvd2ZkaGNpVGUwQWRhUXBjMm1UM2RTOVd3SFltYiI7czo4OiJsYW5ndWFnZSI7czoyOiJhciI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTExOiJodHRwczovL2FiZHVsYXppem1pbmlzdHJlZXQuY29tL2FyL3Byb2R1Y3QtdGFncy9pbnZlcnRlcj9udW09MzYmc29ydC1ieT1yYXRpbmdfZGVzYyZ0YWdzJTVCMCU1RD0yJnRhZ3MlNUIxJTVEPTIiO319', 1768742464),
('Dvcvgc8Jp8n2NC4mPRluNZ2NYX81mmNrzcZKNRQd', NULL, '147.135.213.175', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiQ1RpdmpKSElxUHdnYnBvYW9sdlpTZkZ0YVltOGFVNmVNaUQyWGJORCI7czo4OiJsYW5ndWFnZSI7czoyOiJhciI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTA4OiJodHRwczovL2FiZHVsYXppem1pbmlzdHJlZXQuY29tL3Byb2R1Y3QtdGFncy9pbnZlcnRlcj9udW09MzYmc29ydC1ieT1yYXRpbmdfZGVzYyZ0YWdzJTVCMCU1RD0yJnRhZ3MlNUIxJTVEPTIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1768742467),
('75ogh5o6lqel25I24HhvNw0xKU4zro3SSjTtLQjH', NULL, '51.68.111.240', 'Mozilla/5.0 (compatible; MJ12bot/v2.0.4; http://mj12bot.com/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoic3dyWVBXUlZSSXhaV0ZwaEF4UHFCNGFXM0RUeFBPaEtvUTZnU0h4OSI7czo4OiJsYW5ndWFnZSI7czoyOiJhciI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vYWJkdWxheml6bWluaXN0cmVldC5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1768740399),
('ShtnGlIktF0twkjzwYibSjLg8ZaSeC9YAWdh0TGi', NULL, '54.37.252.152', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiQlNwQmxtUmd2MmZRT2c4WTd2VFRvdGRpZG15UTJLSnJ3TlczVXJ2RSI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTI5OiJodHRwczovL2FiZHVsYXppem1pbmlzdHJlZXQuY29tL2VuL3Byb2R1Y3QtdGFncy9zbWFydC10dj9wYWdlPTImc29ydC1ieT1kZWZhdWx0X3NvcnRpbmcmdGFncyU1QjAlNUQ9MSZ0YWdzJTVCMSU1RD0xJnRhZ3MlNUIyJTVEPTEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1768740301),
('STkWXO6HVkMidGUgEy53Fs6PjSNFJwUIttRWpdPT', NULL, '54.37.252.152', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiTlNyUG5BQk45amVCZEc3cFo1Wll3YWU0aWJQenhCZGZLajdLMGVCMyI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTIzOiJodHRwczovL2FiZHVsYXppem1pbmlzdHJlZXQuY29tL2VuL3Byb2R1Y3QtdGFncy9zbWFydC10dj9wYWdlPTImc29ydC1ieT1kYXRlX2Rlc2MmdGFncyU1QjAlNUQ9MSZ0YWdzJTVCMSU1RD0xJnRhZ3MlNUIyJTVEPTEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1768740297),
('yw8Fos8iQo6aAQM0RNfOXoNbKS99kg2eZt7rfRJm', NULL, '54.37.252.152', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoidDFHMUEwSDRhMjlYVzgxTWhDc3B3aWJwMllsY0NWTnNPM3RlRmFpaCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTIyOiJodHRwczovL2FiZHVsYXppem1pbmlzdHJlZXQuY29tL2VuL3Byb2R1Y3QtdGFncy9zbWFydC10dj9wYWdlPTImc29ydC1ieT1kYXRlX2FzYyZ0YWdzJTVCMCU1RD0xJnRhZ3MlNUIxJTVEPTEmdGFncyU1QjIlNUQ9MSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1768740295),
('1xNUMF8Li7likIHmdfruiAq3CECqC7fQXRdpB7kk', NULL, '54.37.252.152', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiSjF6TmJSRTlKcUlmbVZhelFwYzBJSEV0M09yRzR5UktjTlQzUTVCVyI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTI1OiJodHRwczovL2FiZHVsYXppem1pbmlzdHJlZXQuY29tL2VuL3Byb2R1Y3QtdGFncy9zbWFydC10dj9wYWdlPTEmc29ydC1ieT1yYXRpbmdfZGVzYyZ0YWdzJTVCMCU1RD0xJnRhZ3MlNUIxJTVEPTEmdGFncyU1QjIlNUQ9MSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1768740292),
('4vHZX0PHTNlI7gzkksQeNER9XLfPMIBj9s7SEv8M', NULL, '54.37.252.152', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoialI0YWt4aVdXSHVzSXdpd3E0N3Y0anBpcFpYR3NsbEd3OU82RE9teiI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTI0OiJodHRwczovL2FiZHVsYXppem1pbmlzdHJlZXQuY29tL2VuL3Byb2R1Y3QtdGFncy9zbWFydC10dj9wYWdlPTEmc29ydC1ieT1yYXRpbmdfYXNjJnRhZ3MlNUIwJTVEPTEmdGFncyU1QjElNUQ9MSZ0YWdzJTVCMiU1RD0xIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1768740289),
('8It728hKUh9e6Mg10hL8HriJ5sVCCFvrZaAFvLSe', NULL, '54.37.252.152', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiWEloYWxRWXdHMEJzT3RiUlpRM2U2cXVwNXZWS1NzMXdrQkFtUHRVTyI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTI0OiJodHRwczovL2FiZHVsYXppem1pbmlzdHJlZXQuY29tL2VuL3Byb2R1Y3QtdGFncy9zbWFydC10dj9wYWdlPTEmc29ydC1ieT1wcmljZV9kZXNjJnRhZ3MlNUIwJTVEPTEmdGFncyU1QjElNUQ9MSZ0YWdzJTVCMiU1RD0xIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1768740287),
('aESWcB5eXbcvaXYGE7po3VTU2Mwh5qpkRtOrl216', NULL, '54.37.252.152', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoieWNsanpPOWVFUG51TWg5RHdFZHVoVEc0T3c2M1RtR0hkT1g1dDh2bSI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTIzOiJodHRwczovL2FiZHVsYXppem1pbmlzdHJlZXQuY29tL2VuL3Byb2R1Y3QtdGFncy9zbWFydC10dj9wYWdlPTEmc29ydC1ieT1wcmljZV9hc2MmdGFncyU1QjAlNUQ9MSZ0YWdzJTVCMSU1RD0xJnRhZ3MlNUIyJTVEPTEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1768740284),
('0UEhcBC1aQnl9EjsoTh65auTXkvqSBUAcV5YNqjc', NULL, '54.37.252.152', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiTTlRaXhXTlRNVUdpWTZ2RUVneFhNUFIyeTZrVDRTQUlpcHdPc2NIMSI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTIzOiJodHRwczovL2FiZHVsYXppem1pbmlzdHJlZXQuY29tL2VuL3Byb2R1Y3QtdGFncy9zbWFydC10dj9wYWdlPTEmc29ydC1ieT1uYW1lX2Rlc2MmdGFncyU1QjAlNUQ9MSZ0YWdzJTVCMSU1RD0xJnRhZ3MlNUIyJTVEPTEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1768740281),
('JBQnHl7pWEtpJRbgS6iqg1IR62GpCNYPwR5zwJQV', NULL, '66.249.73.14', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.7499.192 Mobile Safari/537.36 (compatible; GoogleOther)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiM2pRTmpIZWR1NkxTa1JGbkZ3bnAzQ0J2ZzJpYkFCNEpKZzk3Q1hmSyI7czo4OiJsYW5ndWFnZSI7czoyOiJhciI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NzM6Imh0dHBzOi8vd3d3LmFiZHVsYXppem1pbmlzdHJlZXQuY29tL3Byb2R1Y3QtY2F0ZWdvcmllcy9raXRjaGVuLWFwcGxpYW5jZXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1768740278),
('yfPG3pZyQoLeWBphmmYiHhmQdfp3mmFldz8fectz', NULL, '54.37.252.152', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiQUNXZkUzejlYMjN1dEdiRDBYQWJicXlZMHFGYjlhdDZPRjQ4Q3lUQiI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTIyOiJodHRwczovL2FiZHVsYXppem1pbmlzdHJlZXQuY29tL2VuL3Byb2R1Y3QtdGFncy9zbWFydC10dj9wYWdlPTEmc29ydC1ieT1uYW1lX2FzYyZ0YWdzJTVCMCU1RD0xJnRhZ3MlNUIxJTVEPTEmdGFncyU1QjIlNUQ9MSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1768740278),
('FdZbaisj1LLY6YZaBy4KzQj1vaWyaU9p1iI8lD8A', NULL, '54.37.252.152', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiVENwMDVQWTZacjJNZkJkTTZ2MzNVZW1LMklVdm5mZHBxRlI4Y0hMZiI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTI5OiJodHRwczovL2FiZHVsYXppem1pbmlzdHJlZXQuY29tL2VuL3Byb2R1Y3QtdGFncy9zbWFydC10dj9wYWdlPTEmc29ydC1ieT1kZWZhdWx0X3NvcnRpbmcmdGFncyU1QjAlNUQ9MSZ0YWdzJTVCMSU1RD0xJnRhZ3MlNUIyJTVEPTEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1768740275),
('Bj1TvWUv6UogJCJ8qr9lvAM0KXYoid81sdtW5TLF', NULL, '54.37.252.152', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoidFdxenpJRDZ0ZUVmdEE0dzhNbG1kTFd4RXhXdmllQVBCbGRKU01HciI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTIzOiJodHRwczovL2FiZHVsYXppem1pbmlzdHJlZXQuY29tL2VuL3Byb2R1Y3QtdGFncy9zbWFydC10dj9wYWdlPTEmc29ydC1ieT1kYXRlX2Rlc2MmdGFncyU1QjAlNUQ9MSZ0YWdzJTVCMSU1RD0xJnRhZ3MlNUIyJTVEPTEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1768740272),
('Pdm78yp1dYTL8CjeUleDyj6CHKnwCXXRW1EaFPRZ', NULL, '54.37.252.152', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiWEZhNmw0TmlZZlRtYWJadEV5TXJOSmVWOWZiaGdKd2JGVERjaWRCUSI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTIyOiJodHRwczovL2FiZHVsYXppem1pbmlzdHJlZXQuY29tL2VuL3Byb2R1Y3QtdGFncy9zbWFydC10dj9wYWdlPTEmc29ydC1ieT1kYXRlX2FzYyZ0YWdzJTVCMCU1RD0xJnRhZ3MlNUIxJTVEPTEmdGFncyU1QjIlNUQ9MSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1768740269),
('xlcaxXogP1LhwKipSTXnptc68JjRj4g5qwF0N1IM', NULL, '54.37.252.152', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiZVJMRU5malMzMnRxakRsVHZvbkx1MXhvUTk3bUh1NkZKUUhQaVM0YyI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTEyOiJodHRwczovL2FiZHVsYXppem1pbmlzdHJlZXQuY29tL2VuL3Byb2R1Y3QtdGFncy9zbWFydC10dj9udW09MzYmcGFnZT0xJnRhZ3MlNUIwJTVEPTEmdGFncyU1QjElNUQ9MSZ0YWdzJTVCMiU1RD0xIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1768740266),
('wC5R2ZLqCZWfyYMHg3hboBgyyDKyKyKQkKIn22qm', NULL, '54.37.252.152', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoibnFRSGNDc0R1bE9hZng2TFNBeHZGbjFScmdDbFZoMkRlZzZlekJTbiI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTEyOiJodHRwczovL2FiZHVsYXppem1pbmlzdHJlZXQuY29tL2VuL3Byb2R1Y3QtdGFncy9zbWFydC10dj9udW09MjQmcGFnZT0xJnRhZ3MlNUIwJTVEPTEmdGFncyU1QjElNUQ9MSZ0YWdzJTVCMiU1RD0xIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1768740264),
('C2gJdIDRmGHPV6D3fJAdotZOdkA6xYarJsse3Ca6', NULL, '54.37.252.152', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiRUdNZmRJUTJmSjlJTUMzYzdSSTd0a1owa2ZvNW1tV3c1VzNrbmwwUCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTEyOiJodHRwczovL2FiZHVsYXppem1pbmlzdHJlZXQuY29tL2VuL3Byb2R1Y3QtdGFncy9zbWFydC10dj9udW09MTImcGFnZT0xJnRhZ3MlNUIwJTVEPTEmdGFncyU1QjElNUQ9MSZ0YWdzJTVCMiU1RD0xIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1768740261),
('777JLmay5z2M6BqwzukGZ3HNQynVgaTI2gAwLLKn', NULL, '54.37.252.152', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiOFRvUEhrQzBoV1pmTHljcFEwQjBZNE13UlNLS1B0QWxrcHQxcVFTcSI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTI1OiJodHRwczovL2FiZHVsYXppem1pbmlzdHJlZXQuY29tL2VuL3Byb2R1Y3QtdGFncy9zbWFydC10dj9wYWdlPTEmc29ydC1ieT1yYXRpbmdfZGVzYyZ0YWdzJTVCMCU1RD0xJnRhZ3MlNUIxJTVEPTEmdGFncyU1QjIlNUQ9MSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1768740258),
('VLzbR5iOQVAwCvkkCPsvL5f2pB431joLKp6XvZRF', NULL, '54.37.252.152', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoieGdxamtzZ0Z0REJ4RmR1NnFCRG83ajRIN1lmTXlSUDVHOEhYTWJoaSI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTI0OiJodHRwczovL2FiZHVsYXppem1pbmlzdHJlZXQuY29tL2VuL3Byb2R1Y3QtdGFncy9zbWFydC10dj9wYWdlPTEmc29ydC1ieT1yYXRpbmdfYXNjJnRhZ3MlNUIwJTVEPTEmdGFncyU1QjElNUQ9MSZ0YWdzJTVCMiU1RD0xIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1768740255),
('Nod8pEZpeddXE4S5wV57RVPZJ94mmLw5BHXlRIqL', NULL, '54.37.252.152', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoic1Bpd2Q3ZWxJRXlMdWRnMzFGdjByMUs5Z3A1dmJOM2FudHZKV0JHZSI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTI0OiJodHRwczovL2FiZHVsYXppem1pbmlzdHJlZXQuY29tL2VuL3Byb2R1Y3QtdGFncy9zbWFydC10dj9wYWdlPTEmc29ydC1ieT1wcmljZV9kZXNjJnRhZ3MlNUIwJTVEPTEmdGFncyU1QjElNUQ9MSZ0YWdzJTVCMiU1RD0xIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1768740252),
('jIjBSlegBFXsGGXcf153fvHmwtzWwizlWsmfc5Xq', NULL, '54.37.252.152', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiZ1dnQkxqdnpScDFiT3VFbm1Zc0pLWWpRQVQyNHFnUE53R2NybXJtcSI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTIzOiJodHRwczovL2FiZHVsYXppem1pbmlzdHJlZXQuY29tL2VuL3Byb2R1Y3QtdGFncy9zbWFydC10dj9wYWdlPTEmc29ydC1ieT1wcmljZV9hc2MmdGFncyU1QjAlNUQ9MSZ0YWdzJTVCMSU1RD0xJnRhZ3MlNUIyJTVEPTEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1768740250),
('hNu7qJ1NFqGbpkdttzUjTncCNvC1M6RpcRU3iNBE', NULL, '54.37.252.152', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiOG5XYkhsWkpxR3c5aWNucXd6TkY3U1c5NTJRRW1OaUQzUVFIb01YaSI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTIzOiJodHRwczovL2FiZHVsYXppem1pbmlzdHJlZXQuY29tL2VuL3Byb2R1Y3QtdGFncy9zbWFydC10dj9wYWdlPTEmc29ydC1ieT1uYW1lX2Rlc2MmdGFncyU1QjAlNUQ9MSZ0YWdzJTVCMSU1RD0xJnRhZ3MlNUIyJTVEPTEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1768740247),
('B1wI1WXRRKEkJFf3h9iaxEOhmcwjNxgDCcOmU0xC', NULL, '54.37.252.152', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoialROcG5rVGExVFFST2dCSGtxTmJMZ1ZUejg2Ym82UzZVYTFSaGg0TCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTIyOiJodHRwczovL2FiZHVsYXppem1pbmlzdHJlZXQuY29tL2VuL3Byb2R1Y3QtdGFncy9zbWFydC10dj9wYWdlPTEmc29ydC1ieT1uYW1lX2FzYyZ0YWdzJTVCMCU1RD0xJnRhZ3MlNUIxJTVEPTEmdGFncyU1QjIlNUQ9MSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1768740245),
('k83dDyyqPkQJgAS0Fnh46kpwCjUC8fTev4QtFmKq', NULL, '54.37.252.152', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoidGJnVHYxYkUyNmxuUnBjY1pDNmlka0NTclhVMmFMRXV0OENYU1hzciI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTI5OiJodHRwczovL2FiZHVsYXppem1pbmlzdHJlZXQuY29tL2VuL3Byb2R1Y3QtdGFncy9zbWFydC10dj9wYWdlPTEmc29ydC1ieT1kZWZhdWx0X3NvcnRpbmcmdGFncyU1QjAlNUQ9MSZ0YWdzJTVCMSU1RD0xJnRhZ3MlNUIyJTVEPTEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1768740242),
('5UDnnLEUuxNUdqGqtSm02v4rDVnIdpk1bomvPHJO', NULL, '54.37.252.152', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiOVZKczdvUWlIdkRzSE15eUlOaTJOQ3k0b1YxRkhKVU53ZlZwOGxubSI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTIzOiJodHRwczovL2FiZHVsYXppem1pbmlzdHJlZXQuY29tL2VuL3Byb2R1Y3QtdGFncy9zbWFydC10dj9wYWdlPTEmc29ydC1ieT1kYXRlX2Rlc2MmdGFncyU1QjAlNUQ9MSZ0YWdzJTVCMSU1RD0xJnRhZ3MlNUIyJTVEPTEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1768740239),
('BgtP1DFTclN5JLlGhZ0UvqWhtBoGoFDpI8Pa7CVe', NULL, '54.37.252.152', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiaUxmcWtGTDJWbDB4ZkJCZndIeW1xbUpkaTl0SUlJclg3elJ0UTRSNCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTIyOiJodHRwczovL2FiZHVsYXppem1pbmlzdHJlZXQuY29tL2VuL3Byb2R1Y3QtdGFncy9zbWFydC10dj9wYWdlPTEmc29ydC1ieT1kYXRlX2FzYyZ0YWdzJTVCMCU1RD0xJnRhZ3MlNUIxJTVEPTEmdGFncyU1QjIlNUQ9MSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1768740237),
('SNa9Bcw5bJEjc3JxYlwxWYII5rPvmavlOgbgf6F8', NULL, '54.37.252.152', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoic2lYaTRJOGJPakZYaGFnQWpqUEJoalRHRllMRHJTb1hmMU1RdzVLRiI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTI1OiJodHRwczovL2FiZHVsYXppem1pbmlzdHJlZXQuY29tL2VuL3Byb2R1Y3QtdGFncy9zbWFydC10dj9udW09MzYmc29ydC1ieT1yYXRpbmdfZGVzYyZ0YWdzJTVCMCU1RD0xJnRhZ3MlNUIxJTVEPTEmdGFncyU1QjIlNUQ9MSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1768740234),
('wKWYBb0RuXuczdcnj8TKAwtaSwgJp0zYa8sf4b3c', NULL, '54.37.252.152', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiM1pWekR4V0RQTjV3Wk9TakI0blZyNVNkM1NEQWgwNGNlaUdocTlrNCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTI0OiJodHRwczovL2FiZHVsYXppem1pbmlzdHJlZXQuY29tL2VuL3Byb2R1Y3QtdGFncy9zbWFydC10dj9udW09MzYmc29ydC1ieT1yYXRpbmdfYXNjJnRhZ3MlNUIwJTVEPTEmdGFncyU1QjElNUQ9MSZ0YWdzJTVCMiU1RD0xIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1768740231),
('qlNxQYt00zQlgsfhUQJTn0LuhFJbkdJ2QM1O4QI4', NULL, '54.37.252.152', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoib24yamRmM0ttMVJwTW1ZT05DQ2IxZ3RHS2JNMk81ajJhMU9EWWpKMCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTA1OiJodHRwczovL2FiZHVsYXppem1pbmlzdHJlZXQuY29tL2VuL3Byb2R1Y3QtdGFncy9zbWFydC10dj9udW09MzYmdGFncyU1QjAlNUQ9MSZ0YWdzJTVCMSU1RD0xJnRhZ3MlNUIyJTVEPTEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1768740203),
('Z2n7FkMjvcCVFUD2VUSedq7XSwIBEF1CW568sqOD', NULL, '54.37.252.152', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiNWN0TTJGSnZ2SnVJRW82U3VFdUVVYXFmYkw4M1Q4VXU0eHluTVFaNCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTEyOiJodHRwczovL2FiZHVsYXppem1pbmlzdHJlZXQuY29tL2VuL3Byb2R1Y3QtdGFncy9zbWFydC10dj9udW09MzYmcGFnZT0xJnRhZ3MlNUIwJTVEPTEmdGFncyU1QjElNUQ9MSZ0YWdzJTVCMiU1RD0xIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1768740206),
('EcYDX571nGb4OKUrJpRymZ73jkYQFkxt1DrmNA4Z', NULL, '54.37.252.152', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoicFJzOUNMMjd6U2NvaGtTVGpYQlRXblRZR3RUUDJiV1ZFZlRBenNtNCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTEyOiJodHRwczovL2FiZHVsYXppem1pbmlzdHJlZXQuY29tL2VuL3Byb2R1Y3QtdGFncy9zbWFydC10dj9udW09MzYmcGFnZT0yJnRhZ3MlNUIwJTVEPTEmdGFncyU1QjElNUQ9MSZ0YWdzJTVCMiU1RD0xIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1768740208),
('ck1O9JvC1XvDmJMOmYMNWnyEMxMBiEE5oF8r80lz', NULL, '54.37.252.152', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiU05scXRscDF6ZldsbnJ3TTZpaUNxWUhST3cwYUh0NGQ2d3YxeDVQRiI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTIyOiJodHRwczovL2FiZHVsYXppem1pbmlzdHJlZXQuY29tL2VuL3Byb2R1Y3QtdGFncy9zbWFydC10dj9udW09MzYmc29ydC1ieT1kYXRlX2FzYyZ0YWdzJTVCMCU1RD0xJnRhZ3MlNUIxJTVEPTEmdGFncyU1QjIlNUQ9MSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1768740211),
('Oxis5iZX5hxBTIzEFhIasmvCR0SiV4avDuU1DIQs', NULL, '54.37.252.152', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoieVdsUjVINTR6TFpEeExEbGE0Q1FhMXFHZnY3dlJOUjdyUnRRb0ZuZiI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTIzOiJodHRwczovL2FiZHVsYXppem1pbmlzdHJlZXQuY29tL2VuL3Byb2R1Y3QtdGFncy9zbWFydC10dj9udW09MzYmc29ydC1ieT1kYXRlX2Rlc2MmdGFncyU1QjAlNUQ9MSZ0YWdzJTVCMSU1RD0xJnRhZ3MlNUIyJTVEPTEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1768740213),
('y3o1pypnkIWEaCOrQ3oX774631lYX1IAbk8C9e4l', NULL, '54.37.252.152', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiU1BoSTJzdHhVUTdyVVZLM05TYkFvOUVOUTAyMncyaUdwSGI1QlJBNyI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTI5OiJodHRwczovL2FiZHVsYXppem1pbmlzdHJlZXQuY29tL2VuL3Byb2R1Y3QtdGFncy9zbWFydC10dj9udW09MzYmc29ydC1ieT1kZWZhdWx0X3NvcnRpbmcmdGFncyU1QjAlNUQ9MSZ0YWdzJTVCMSU1RD0xJnRhZ3MlNUIyJTVEPTEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1768740217),
('fPSngU5zWAKwjUrznn3HXw04zEJAzGEMQVy5RNh7', NULL, '54.37.252.152', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiWU8yZENhOXRCOEs0NmxPNjRiWlJ4Q0FRNDBXSFFHSWh1SkJHb0JvRiI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTIyOiJodHRwczovL2FiZHVsYXppem1pbmlzdHJlZXQuY29tL2VuL3Byb2R1Y3QtdGFncy9zbWFydC10dj9udW09MzYmc29ydC1ieT1uYW1lX2FzYyZ0YWdzJTVCMCU1RD0xJnRhZ3MlNUIxJTVEPTEmdGFncyU1QjIlNUQ9MSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1768740219),
('WUTdEUDRLwiBfKlrRgVJTCGtLES9mcT7t8CV0PbB', NULL, '54.37.252.152', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiWTJyVkZjdWNZMU9iM3JiUmZ2dlFpSlEwNk1pTFNPU0h6Z1ptVUV3biI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTIzOiJodHRwczovL2FiZHVsYXppem1pbmlzdHJlZXQuY29tL2VuL3Byb2R1Y3QtdGFncy9zbWFydC10dj9udW09MzYmc29ydC1ieT1uYW1lX2Rlc2MmdGFncyU1QjAlNUQ9MSZ0YWdzJTVCMSU1RD0xJnRhZ3MlNUIyJTVEPTEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1768740222),
('BSzgfUlk3U1F3BY80GkGG4ZIrBYsQ1CLHtde6vJc', NULL, '54.37.252.152', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoicTltMEVvUUxhemZwY1ZSZTJMZGJCN2x0NVpDakVtbVhOdEljbGhZaCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTIzOiJodHRwczovL2FiZHVsYXppem1pbmlzdHJlZXQuY29tL2VuL3Byb2R1Y3QtdGFncy9zbWFydC10dj9udW09MzYmc29ydC1ieT1wcmljZV9hc2MmdGFncyU1QjAlNUQ9MSZ0YWdzJTVCMSU1RD0xJnRhZ3MlNUIyJTVEPTEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1768740225),
('HlXDLaDzTDm7K96L5H3uCai8Tq1mXu6ebLnbAiP9', NULL, '54.37.252.152', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiMzh3dGVwdkZVbGtWU3F4YWRsUGdZZkZwU3ZCT3pJOFNxbXBvdXpyTiI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTI0OiJodHRwczovL2FiZHVsYXppem1pbmlzdHJlZXQuY29tL2VuL3Byb2R1Y3QtdGFncy9zbWFydC10dj9udW09MzYmc29ydC1ieT1wcmljZV9kZXNjJnRhZ3MlNUIwJTVEPTEmdGFncyU1QjElNUQ9MSZ0YWdzJTVCMiU1RD0xIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1768740228),
('CpbGWNLj72NJdlzWZuJwBPzE9Rb3IPN706xSiQV8', NULL, '54.37.252.152', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoidU9CUmJaMmdvZVpUeWY0ZWN5dG5WWnlJSnhwR01xcFg3OUdFZ0JaSSI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTI1OiJodHRwczovL2FiZHVsYXppem1pbmlzdHJlZXQuY29tL2VuL3Byb2R1Y3QtdGFncy9zbWFydC10dj9udW09MzYmc29ydC1ieT1yYXRpbmdfZGVzYyZ0YWdzJTVCMCU1RD0xJnRhZ3MlNUIxJTVEPTEmdGFncyU1QjIlNUQ9MSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1768740201),
('4z8iVmlUktrhY5ZDSarPBrmr9ZqO2r8vhUkHPXbG', NULL, '54.37.252.152', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiY1JpOEluc2JvM21HWTJhejRSQmZTQkRVa0Z2dTVOZURQT2VZekRtNyI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTIyOiJodHRwczovL2FiZHVsYXppem1pbmlzdHJlZXQuY29tL2VuL3Byb2R1Y3QtdGFncy9zbWFydC10dj9udW09MzYmc29ydC1ieT1uYW1lX2FzYyZ0YWdzJTVCMCU1RD0xJnRhZ3MlNUIxJTVEPTEmdGFncyU1QjIlNUQ9MSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1768740187),
('SOVZyEYo3CQpE9STPyuW8DSMY0z4EcN5zjxqY649', NULL, '54.37.252.152', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiYmRlc1BGTlFpTmc2dncwQWV5SlVyMUhiMkRBeUVPT1RMVDBIMG1SaCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTIzOiJodHRwczovL2FiZHVsYXppem1pbmlzdHJlZXQuY29tL2VuL3Byb2R1Y3QtdGFncy9zbWFydC10dj9udW09MzYmc29ydC1ieT1uYW1lX2Rlc2MmdGFncyU1QjAlNUQ9MSZ0YWdzJTVCMSU1RD0xJnRhZ3MlNUIyJTVEPTEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1768740190),
('yDFncKDrld1GssmwIgwyoI8bmdfU6aqINifVjdM9', NULL, '54.37.252.152', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiNGJncXJnYWtOTHozNzlod21vMXA4SGJ2bXM1TGdlS2p1R05FcnBVNyI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTIzOiJodHRwczovL2FiZHVsYXppem1pbmlzdHJlZXQuY29tL2VuL3Byb2R1Y3QtdGFncy9zbWFydC10dj9udW09MzYmc29ydC1ieT1wcmljZV9hc2MmdGFncyU1QjAlNUQ9MSZ0YWdzJTVCMSU1RD0xJnRhZ3MlNUIyJTVEPTEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1768740193),
('DACw3bRGBJ583e15uO00hyy75yFMkbGUpZTVZkWF', NULL, '54.37.252.152', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoieFRzakdZV0dnRWM1QmpaaG1POEVyQlhQMTE4N29ZU3hGQTZvSEh0dSI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTI0OiJodHRwczovL2FiZHVsYXppem1pbmlzdHJlZXQuY29tL2VuL3Byb2R1Y3QtdGFncy9zbWFydC10dj9udW09MzYmc29ydC1ieT1wcmljZV9kZXNjJnRhZ3MlNUIwJTVEPTEmdGFncyU1QjElNUQ9MSZ0YWdzJTVCMiU1RD0xIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1768740196);
INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('oj9NZBxrA4Pkto5bsjmXxZsMJmCXmd9f0CGJ2ws7', NULL, '54.37.252.152', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoicXNTdmdqb3Ribm52cExzQ2p2Y0xKeEl6c3FkSXdjSGtWaXhwdFlvaSI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTI0OiJodHRwczovL2FiZHVsYXppem1pbmlzdHJlZXQuY29tL2VuL3Byb2R1Y3QtdGFncy9zbWFydC10dj9udW09MzYmc29ydC1ieT1yYXRpbmdfYXNjJnRhZ3MlNUIwJTVEPTEmdGFncyU1QjElNUQ9MSZ0YWdzJTVCMiU1RD0xIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1768740198),
('GUVHiar9pdqM1J65cRt6mmAjpHB6b79UFu4xxzG7', NULL, '54.37.252.152', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiZXhzc3hRNmMyeVlHYzNodzMyRm9xdERUS1JNc1RLaHd5eEVFTzd3eSI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTIzOiJodHRwczovL2FiZHVsYXppem1pbmlzdHJlZXQuY29tL2VuL3Byb2R1Y3QtdGFncy9zbWFydC10dj9udW09MzYmc29ydC1ieT1kYXRlX2Rlc2MmdGFncyU1QjAlNUQ9MSZ0YWdzJTVCMSU1RD0xJnRhZ3MlNUIyJTVEPTEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1768740182),
('ISZnm7IkkGOXOUvarYAiK0xeNv6WtL9JiJyK8rUF', NULL, '54.37.252.152', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiQUpERGoxQWdGUDhWNERoU0tBYVZDNDFTejNxY2x2bmJDR2JXVElqTSI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTI5OiJodHRwczovL2FiZHVsYXppem1pbmlzdHJlZXQuY29tL2VuL3Byb2R1Y3QtdGFncy9zbWFydC10dj9udW09MzYmc29ydC1ieT1kZWZhdWx0X3NvcnRpbmcmdGFncyU1QjAlNUQ9MSZ0YWdzJTVCMSU1RD0xJnRhZ3MlNUIyJTVEPTEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1768740185),
('b01udprCG0leEvi0gzsNsVg0sjOq2Z3fGzWz7hDr', NULL, '54.37.252.152', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiWTRUb1NWdnVTY28yRk9TT0FVelF3TEIwZ0NhMENmUkdkaVRDZ3hTOSI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTIyOiJodHRwczovL2FiZHVsYXppem1pbmlzdHJlZXQuY29tL2VuL3Byb2R1Y3QtdGFncy9zbWFydC10dj9udW09MzYmc29ydC1ieT1kYXRlX2FzYyZ0YWdzJTVCMCU1RD0xJnRhZ3MlNUIxJTVEPTEmdGFncyU1QjIlNUQ9MSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1768740179),
('Ilx4lqjNeSMgUwDDBuN3AdDHvK5HvVGGirdPyn0T', NULL, '54.37.252.152', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiQlp0TlJ1b1FrdWNhMVdYa1ZTWmF0UUNJU3ZNUzI4WGdpb05nR0xNdSI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTEyOiJodHRwczovL2FiZHVsYXppem1pbmlzdHJlZXQuY29tL2VuL3Byb2R1Y3QtdGFncy9zbWFydC10dj9udW09MzYmcGFnZT0yJnRhZ3MlNUIwJTVEPTEmdGFncyU1QjElNUQ9MSZ0YWdzJTVCMiU1RD0xIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1768740176),
('D0DjOn34UWXNRu907QqR6oGZ5xsINjwHuCNwM2qE', NULL, '54.37.252.152', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoidzhNT2ZlNXp1cVJmOVVxR01Td0hvTHQ2SWU0NTM1Ums1YmNFbUFxZyI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTEyOiJodHRwczovL2FiZHVsYXppem1pbmlzdHJlZXQuY29tL2VuL3Byb2R1Y3QtdGFncy9zbWFydC10dj9udW09MzYmcGFnZT0xJnRhZ3MlNUIwJTVEPTEmdGFncyU1QjElNUQ9MSZ0YWdzJTVCMiU1RD0xIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1768740174),
('SmSS8PJ1iC3MRsjKSkHkpXJQMW7KiTCtaGdQ4fg4', NULL, '54.37.252.152', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiSEZPbmxwMDFGVG14N3VlOG9NNndqUUtnTDBNcTNGUWNwbTduYklmVyI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTI1OiJodHRwczovL2FiZHVsYXppem1pbmlzdHJlZXQuY29tL2VuL3Byb2R1Y3QtdGFncy9zbWFydC10dj9udW09MjQmc29ydC1ieT1yYXRpbmdfZGVzYyZ0YWdzJTVCMCU1RD0xJnRhZ3MlNUIxJTVEPTEmdGFncyU1QjIlNUQ9MSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1768740171),
('vd0W451TDTOAVeI9yLUtRVmAnpCjvZg1ywroKcQP', NULL, '54.37.252.152', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiY1FMUjVabWthQ2twdEE5dHZDdldrZWFqSDFId2tuT25ycUhxMjBadiI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTI0OiJodHRwczovL2FiZHVsYXppem1pbmlzdHJlZXQuY29tL2VuL3Byb2R1Y3QtdGFncy9zbWFydC10dj9udW09MjQmc29ydC1ieT1yYXRpbmdfYXNjJnRhZ3MlNUIwJTVEPTEmdGFncyU1QjElNUQ9MSZ0YWdzJTVCMiU1RD0xIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1768740168),
('UIJiU9nJDH40wG1F7m2GysviNnwmrFPqKHCiE3LO', NULL, '54.37.252.152', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiWnRoWlBzWWdYT0ZWQVFIbEkxNmhXb2x3TjFMRHZpQjdhMFZnY2NCOCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTI0OiJodHRwczovL2FiZHVsYXppem1pbmlzdHJlZXQuY29tL2VuL3Byb2R1Y3QtdGFncy9zbWFydC10dj9udW09MjQmc29ydC1ieT1wcmljZV9kZXNjJnRhZ3MlNUIwJTVEPTEmdGFncyU1QjElNUQ9MSZ0YWdzJTVCMiU1RD0xIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1768740165),
('ImzRPbWiuikSEopzkRY9KiwQaXFdKAb5Zehbqwpm', NULL, '54.37.252.152', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiUm5Na3dlUzFjbnlWazM3TlNoZmZEcXg0ZmdDbmNybWh2aWdJbUdiViI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTIzOiJodHRwczovL2FiZHVsYXppem1pbmlzdHJlZXQuY29tL2VuL3Byb2R1Y3QtdGFncy9zbWFydC10dj9udW09MjQmc29ydC1ieT1kYXRlX2Rlc2MmdGFncyU1QjAlNUQ9MSZ0YWdzJTVCMSU1RD0xJnRhZ3MlNUIyJTVEPTEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1768740118),
('ngYHXbHaMJGvGKvzLFExKcwByOsQphzqbKE527o3', NULL, '54.37.252.152', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoid3ZpMU5WeXh2YjNRRUpVd0dZZXFUbWhrTFdqc2xrWFkycTlYMXd1eSI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTI5OiJodHRwczovL2FiZHVsYXppem1pbmlzdHJlZXQuY29tL2VuL3Byb2R1Y3QtdGFncy9zbWFydC10dj9udW09MjQmc29ydC1ieT1kZWZhdWx0X3NvcnRpbmcmdGFncyU1QjAlNUQ9MSZ0YWdzJTVCMSU1RD0xJnRhZ3MlNUIyJTVEPTEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1768740120),
('uLkRpsyVSm0aaMLRci0s0MJyxK6EFyVhR2xNCeEV', NULL, '54.37.252.152', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiaVY5dWlSSmxRUVRva2xkVjY2RmJqbGc4WHlkTWVXUTNCbFc3MmlEQSI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTIyOiJodHRwczovL2FiZHVsYXppem1pbmlzdHJlZXQuY29tL2VuL3Byb2R1Y3QtdGFncy9zbWFydC10dj9udW09MjQmc29ydC1ieT1uYW1lX2FzYyZ0YWdzJTVCMCU1RD0xJnRhZ3MlNUIxJTVEPTEmdGFncyU1QjIlNUQ9MSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1768740123),
('dvYexWwt77mH78PL90aQEO0xyV7LVUZl7WROUfhb', NULL, '54.37.252.152', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiSER5SUNrbmNRd1lOSjBXSjdFSXNtNXZZSEUzRXNxMXBHU1lNQTVIcSI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTIzOiJodHRwczovL2FiZHVsYXppem1pbmlzdHJlZXQuY29tL2VuL3Byb2R1Y3QtdGFncy9zbWFydC10dj9udW09MjQmc29ydC1ieT1uYW1lX2Rlc2MmdGFncyU1QjAlNUQ9MSZ0YWdzJTVCMSU1RD0xJnRhZ3MlNUIyJTVEPTEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1768740126),
('S6rbciW1sKnTvGuz9RBUafOzTRcKWVdEMReeih64', NULL, '54.37.252.152', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiWVprc1IzS3VmQlZpTnpNR1h0N2VRRXZYd1JnT25odWdBN3pVdUNRTyI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTIzOiJodHRwczovL2FiZHVsYXppem1pbmlzdHJlZXQuY29tL2VuL3Byb2R1Y3QtdGFncy9zbWFydC10dj9udW09MjQmc29ydC1ieT1wcmljZV9hc2MmdGFncyU1QjAlNUQ9MSZ0YWdzJTVCMSU1RD0xJnRhZ3MlNUIyJTVEPTEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1768740129),
('c9QwTp5crQCabj5Qy46gEodYdVuiRZsjXWwejlHm', NULL, '54.37.252.152', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiSm5hTFZjVk1uTktMYW9PRWs1ZmxYbktkVjZsOWNENTlHMUFiWjIyNCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTI0OiJodHRwczovL2FiZHVsYXppem1pbmlzdHJlZXQuY29tL2VuL3Byb2R1Y3QtdGFncy9zbWFydC10dj9udW09MjQmc29ydC1ieT1wcmljZV9kZXNjJnRhZ3MlNUIwJTVEPTEmdGFncyU1QjElNUQ9MSZ0YWdzJTVCMiU1RD0xIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1768740131),
('tyVycNNPTPzejIkpDwZCa0jW67CkCsRZ0hQgRdEA', NULL, '54.37.252.152', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoieHFLMHdWV3VaVEc3T3ZNb2dFbGt2QUx4a3lWQlIwUmszM0M5M1VSQiI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTI0OiJodHRwczovL2FiZHVsYXppem1pbmlzdHJlZXQuY29tL2VuL3Byb2R1Y3QtdGFncy9zbWFydC10dj9udW09MjQmc29ydC1ieT1yYXRpbmdfYXNjJnRhZ3MlNUIwJTVEPTEmdGFncyU1QjElNUQ9MSZ0YWdzJTVCMiU1RD0xIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1768740134),
('Q5sw8RFAp2AO2DspiuliS7B2wvvFjCXeN8Bk8vJ6', NULL, '54.37.252.152', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiMDBNa0J0QkRNcUU1aTNQOWt1QTJPdktJNGFZZjZ0Y0FaTkN5anRHeiI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTI1OiJodHRwczovL2FiZHVsYXppem1pbmlzdHJlZXQuY29tL2VuL3Byb2R1Y3QtdGFncy9zbWFydC10dj9udW09MjQmc29ydC1ieT1yYXRpbmdfZGVzYyZ0YWdzJTVCMCU1RD0xJnRhZ3MlNUIxJTVEPTEmdGFncyU1QjIlNUQ9MSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1768740137),
('MYgUjLtyx2VAQdDBsnRHF9gCxxOzFvt844l5Zmda', NULL, '54.37.252.152', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiSVR2VkhOaG9BMExkZktDbkV0N09jeGZ4NTE0emVZaFQwQlJONkhJayI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTA1OiJodHRwczovL2FiZHVsYXppem1pbmlzdHJlZXQuY29tL2VuL3Byb2R1Y3QtdGFncy9zbWFydC10dj9udW09MjQmdGFncyU1QjAlNUQ9MSZ0YWdzJTVCMSU1RD0xJnRhZ3MlNUIyJTVEPTEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1768740140),
('CxOVkKIGlKwVrXlmTKx922IFEt1ArUlDXhaFW83k', NULL, '54.37.252.152', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiaVBQbjlxM0N6MEZnNEVzSDJnMWt3eEhKdTViRUtVRTJjYWZ4R3dyUiI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTEyOiJodHRwczovL2FiZHVsYXppem1pbmlzdHJlZXQuY29tL2VuL3Byb2R1Y3QtdGFncy9zbWFydC10dj9udW09MjQmcGFnZT0xJnRhZ3MlNUIwJTVEPTEmdGFncyU1QjElNUQ9MSZ0YWdzJTVCMiU1RD0xIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1768740143),
('MoWOblJUrSeiCfLRcd0sphkz1N6DhTSXkIHdZTjm', NULL, '54.37.252.152', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiRWlGNUt2bVhsVW1MNEJvN3I2ek1lOU5iR2tRTllJSmRuY2dROXI5WSI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTEyOiJodHRwczovL2FiZHVsYXppem1pbmlzdHJlZXQuY29tL2VuL3Byb2R1Y3QtdGFncy9zbWFydC10dj9udW09MjQmcGFnZT0yJnRhZ3MlNUIwJTVEPTEmdGFncyU1QjElNUQ9MSZ0YWdzJTVCMiU1RD0xIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1768740145),
('aelYDCvZqhrwWPvqWa3f1LBqPQp9e9OcmiZydbAs', NULL, '54.37.252.152', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiZTdrUDVkb1Z2aUFZZnZRckdCQVNnQW9HQXIzeTVRMUczVmlHMEFSUSI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTIyOiJodHRwczovL2FiZHVsYXppem1pbmlzdHJlZXQuY29tL2VuL3Byb2R1Y3QtdGFncy9zbWFydC10dj9udW09MjQmc29ydC1ieT1kYXRlX2FzYyZ0YWdzJTVCMCU1RD0xJnRhZ3MlNUIxJTVEPTEmdGFncyU1QjIlNUQ9MSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1768740149),
('Pi0Jy1Cw85Oi56ugpBNoXSsy9agsP76udtlsAvpL', NULL, '54.37.252.152', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiRGVnSElhMTJ1UEJPZU51MjRvcmVrYmJYRnlha1VjUURuaVJTcGsxVSI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTIzOiJodHRwczovL2FiZHVsYXppem1pbmlzdHJlZXQuY29tL2VuL3Byb2R1Y3QtdGFncy9zbWFydC10dj9udW09MjQmc29ydC1ieT1kYXRlX2Rlc2MmdGFncyU1QjAlNUQ9MSZ0YWdzJTVCMSU1RD0xJnRhZ3MlNUIyJTVEPTEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1768740151),
('IUCkHjknhu1ZvVgsw5UtREk2TYWcpk7HR7shkrzB', NULL, '54.37.252.152', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoibXdhMDUwQUtFWlBZclUzZGdEU3NWREIwdFhOaGxFMTVnTGVIdHk2SCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTI5OiJodHRwczovL2FiZHVsYXppem1pbmlzdHJlZXQuY29tL2VuL3Byb2R1Y3QtdGFncy9zbWFydC10dj9udW09MjQmc29ydC1ieT1kZWZhdWx0X3NvcnRpbmcmdGFncyU1QjAlNUQ9MSZ0YWdzJTVCMSU1RD0xJnRhZ3MlNUIyJTVEPTEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1768740154),
('uCAMzsezccV3T78kG5iISZAzBytpU6E95XlwaKux', NULL, '54.37.252.152', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiQ0R3NExaTHg2c2JSaGZMU3JtWEowV0dMUVM4bEs5aTNtMUlhSWRlWiI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTIyOiJodHRwczovL2FiZHVsYXppem1pbmlzdHJlZXQuY29tL2VuL3Byb2R1Y3QtdGFncy9zbWFydC10dj9udW09MjQmc29ydC1ieT1uYW1lX2FzYyZ0YWdzJTVCMCU1RD0xJnRhZ3MlNUIxJTVEPTEmdGFncyU1QjIlNUQ9MSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1768740157),
('WSLb0bfIHUEq5T2KbEi9Nbxnx3KLbrWHPwCuTWaX', NULL, '54.37.252.152', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiaVp4VHgzeDVOYkEyc3g4OXAyUEJJakRZTmpTcThLUXZkek9MQXlxbiI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTIzOiJodHRwczovL2FiZHVsYXppem1pbmlzdHJlZXQuY29tL2VuL3Byb2R1Y3QtdGFncy9zbWFydC10dj9udW09MjQmc29ydC1ieT1uYW1lX2Rlc2MmdGFncyU1QjAlNUQ9MSZ0YWdzJTVCMSU1RD0xJnRhZ3MlNUIyJTVEPTEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1768740160),
('bPaJtclDzKXba7OiBbWcUz7cXelHNWhRKIyKVsda', NULL, '54.37.252.152', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoicnlWeERmUnV1ZTN5ZWhEMWVRUGlGekI3QjVrRGFrU2UyaUlxVEhDSyI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTIzOiJodHRwczovL2FiZHVsYXppem1pbmlzdHJlZXQuY29tL2VuL3Byb2R1Y3QtdGFncy9zbWFydC10dj9udW09MjQmc29ydC1ieT1wcmljZV9hc2MmdGFncyU1QjAlNUQ9MSZ0YWdzJTVCMSU1RD0xJnRhZ3MlNUIyJTVEPTEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1768740163),
('zSjSjYPcmJn6wN1Lqb72yX42wyUzCF15gTtuyVZL', NULL, '54.37.252.152', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiVFExekNXOXFpazZxcE9ZRmhzTnJjdnFBV0p2NkJ5RmtrZGxxV2c3TyI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTIyOiJodHRwczovL2FiZHVsYXppem1pbmlzdHJlZXQuY29tL2VuL3Byb2R1Y3QtdGFncy9zbWFydC10dj9udW09MjQmc29ydC1ieT1kYXRlX2FzYyZ0YWdzJTVCMCU1RD0xJnRhZ3MlNUIxJTVEPTEmdGFncyU1QjIlNUQ9MSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1768740115),
('xrugn9IeBARkBFCEN2AFB58S7MeTgWhUeedFfxer', NULL, '54.37.252.152', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoibXF3T0FHR2RuS1d6MGxPeDU4NTI3MlpzNGZsUk1BQmJYM1FJRVNWYyI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTEyOiJodHRwczovL2FiZHVsYXppem1pbmlzdHJlZXQuY29tL2VuL3Byb2R1Y3QtdGFncy9zbWFydC10dj9udW09MjQmcGFnZT0yJnRhZ3MlNUIwJTVEPTEmdGFncyU1QjElNUQ9MSZ0YWdzJTVCMiU1RD0xIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1768740112),
('UYtSTQWAd5JytyZUBCftOHVc8Qlg0XVh8cuuOuiz', NULL, '54.37.252.152', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoidWVFcUxMNUdER0UyRmxscXNxRE11RHR4dzBDbHIzdHd4VVk2b2hBeSI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTEyOiJodHRwczovL2FiZHVsYXppem1pbmlzdHJlZXQuY29tL2VuL3Byb2R1Y3QtdGFncy9zbWFydC10dj9udW09MjQmcGFnZT0xJnRhZ3MlNUIwJTVEPTEmdGFncyU1QjElNUQ9MSZ0YWdzJTVCMiU1RD0xIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1768740110),
('BPq9I9hbNEkMzMn9NC0FO7qRjacmj5pqfkJh8VDy', NULL, '54.37.252.152', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiN1cyMG5iaURWNHp4a3Z3MTNNajdKbW90NXQ0d0RxUW1oWFJKZUxFdCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTI1OiJodHRwczovL2FiZHVsYXppem1pbmlzdHJlZXQuY29tL2VuL3Byb2R1Y3QtdGFncy9zbWFydC10dj9udW09MTImc29ydC1ieT1yYXRpbmdfZGVzYyZ0YWdzJTVCMCU1RD0xJnRhZ3MlNUIxJTVEPTEmdGFncyU1QjIlNUQ9MSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1768740107),
('kN23MEpZL2kDCgN3t3h6yPoIbQg6KhP0rrABjf0D', NULL, '54.37.252.152', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiWTQxZU51ZWV2WWhraVE1c1lrdGdWaE9Uamt3eE1UN3NIUmF2bEoxRCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTIzOiJodHRwczovL2FiZHVsYXppem1pbmlzdHJlZXQuY29tL2VuL3Byb2R1Y3QtdGFncy9zbWFydC10dj9udW09MTImc29ydC1ieT1uYW1lX2Rlc2MmdGFncyU1QjAlNUQ9MSZ0YWdzJTVCMSU1RD0xJnRhZ3MlNUIyJTVEPTEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1768740096),
('uBQ0o1VJyFNvYHxSFihmTdDHVB1LBSxYTiq8lq4p', NULL, '54.37.252.152', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiUXlTemNOVWRwWWRhcHdBZldOUTFCaWNYU3JCV2FVSElqSHNIdU9hYiI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTIzOiJodHRwczovL2FiZHVsYXppem1pbmlzdHJlZXQuY29tL2VuL3Byb2R1Y3QtdGFncy9zbWFydC10dj9udW09MTImc29ydC1ieT1wcmljZV9hc2MmdGFncyU1QjAlNUQ9MSZ0YWdzJTVCMSU1RD0xJnRhZ3MlNUIyJTVEPTEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1768740099),
('m35X9AWCG3FMwojCOxFAcRSI7Ub6juLuut9iWMVK', NULL, '54.37.252.152', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoidXk2NW9SV0JZbWUwd1d2Q0RxZ2N6b0NqdFQ1RTdVc29uQUo2N2ZOeCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTI0OiJodHRwczovL2FiZHVsYXppem1pbmlzdHJlZXQuY29tL2VuL3Byb2R1Y3QtdGFncy9zbWFydC10dj9udW09MTImc29ydC1ieT1wcmljZV9kZXNjJnRhZ3MlNUIwJTVEPTEmdGFncyU1QjElNUQ9MSZ0YWdzJTVCMiU1RD0xIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1768740101),
('uaBTN41qg1xb14kOfKXF2llf6V7mO1t3xfLbN3yP', NULL, '54.37.252.152', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiQkowbkRnZ01nejVHYXE1U05VVW9Ta3BrSlo3RG9lT3ljSlRDU2ZhRSI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTI0OiJodHRwczovL2FiZHVsYXppem1pbmlzdHJlZXQuY29tL2VuL3Byb2R1Y3QtdGFncy9zbWFydC10dj9udW09MTImc29ydC1ieT1yYXRpbmdfYXNjJnRhZ3MlNUIwJTVEPTEmdGFncyU1QjElNUQ9MSZ0YWdzJTVCMiU1RD0xIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1768740104),
('4n41DstIVrlZ0G7Ht25NtpzI6ATCqlwNyY2IRwqJ', NULL, '54.37.252.152', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiSWdxV0VHeTV1ckxBU3NMQm56U1pSdUYydGRYMWp3ak9kOE01ZDNJcSI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTIyOiJodHRwczovL2FiZHVsYXppem1pbmlzdHJlZXQuY29tL2VuL3Byb2R1Y3QtdGFncy9zbWFydC10dj9udW09MTImc29ydC1ieT1uYW1lX2FzYyZ0YWdzJTVCMCU1RD0xJnRhZ3MlNUIxJTVEPTEmdGFncyU1QjIlNUQ9MSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1768740094),
('LVTgrfaTznPnZEKCpu32JG4rHWIwGiLZJgbMTCPn', NULL, '54.37.252.152', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiWHRXQTlCUDFXdzJjenh2aFNvVGRFU1NSSTE4RUlJQWl1M1dPYTd5ciI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTI5OiJodHRwczovL2FiZHVsYXppem1pbmlzdHJlZXQuY29tL2VuL3Byb2R1Y3QtdGFncy9zbWFydC10dj9udW09MTImc29ydC1ieT1kZWZhdWx0X3NvcnRpbmcmdGFncyU1QjAlNUQ9MSZ0YWdzJTVCMSU1RD0xJnRhZ3MlNUIyJTVEPTEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1768740091),
('S40QqfWjpAupPgCzI7jMwOLMlHEsONuXXVsKmY17', NULL, '54.37.252.152', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiWGJkMmtSQ2xHb1RQT1UzMWRyNjFlSFpld2VqTXhyYlQ0VzhqUUpTdSI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTIzOiJodHRwczovL2FiZHVsYXppem1pbmlzdHJlZXQuY29tL2VuL3Byb2R1Y3QtdGFncy9zbWFydC10dj9udW09MTImc29ydC1ieT1kYXRlX2Rlc2MmdGFncyU1QjAlNUQ9MSZ0YWdzJTVCMSU1RD0xJnRhZ3MlNUIyJTVEPTEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1768740088),
('TfZ3xgQa44zC8Owei6ArZVgQ3xOYs0N8DVphVkza', NULL, '54.37.252.152', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiN3FENGVqd2dxUGxPeko5RTdlUnRPeDZQNDVnckJCNXlIZnVqaGtQTiI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTIyOiJodHRwczovL2FiZHVsYXppem1pbmlzdHJlZXQuY29tL2VuL3Byb2R1Y3QtdGFncy9zbWFydC10dj9udW09MTImc29ydC1ieT1kYXRlX2FzYyZ0YWdzJTVCMCU1RD0xJnRhZ3MlNUIxJTVEPTEmdGFncyU1QjIlNUQ9MSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1768740086),
('YBlFRbKjMvwYrW2BkddfZLfORlUdRcLAf4Wj7rvP', NULL, '54.37.252.152', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiNU9ESE1pVTdvazFFQ01DZFBMbGtJZDJ5MVRTN2RuQjlsN2RSb0FPTCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTIzOiJodHRwczovL2FiZHVsYXppem1pbmlzdHJlZXQuY29tL2VuL3Byb2R1Y3QtdGFncy9uby1mcm9zdD9wYWdlPTImc29ydC1ieT1uYW1lX2Rlc2MmdGFncyU1QjAlNUQ9MyZ0YWdzJTVCMSU1RD0zJnRhZ3MlNUIyJTVEPTMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1768740082),
('OtpeCA6goGRswL9I6cssyQYcHLConftuMhTGSjEw', NULL, '54.37.252.152', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiY1lHUkVNYWxIaG5QdHJmc1FnejRleGV2eHg5czR5YWtFdkFwU0V5RyI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTIyOiJodHRwczovL2FiZHVsYXppem1pbmlzdHJlZXQuY29tL2VuL3Byb2R1Y3QtdGFncy9uby1mcm9zdD9wYWdlPTImc29ydC1ieT1uYW1lX2FzYyZ0YWdzJTVCMCU1RD0zJnRhZ3MlNUIxJTVEPTMmdGFncyU1QjIlNUQ9MyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1768740080),
('NMTngE9YYZg0Ogx2QaHsWZYKbLlwGWawszqgqvir', NULL, '54.37.252.152', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiZTIzWFdJZGxyNkJyU293MlN6QlJrMnNtTnN1QlFJOG14bkw5S0YwQyI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTI5OiJodHRwczovL2FiZHVsYXppem1pbmlzdHJlZXQuY29tL2VuL3Byb2R1Y3QtdGFncy9uby1mcm9zdD9wYWdlPTImc29ydC1ieT1kZWZhdWx0X3NvcnRpbmcmdGFncyU1QjAlNUQ9MyZ0YWdzJTVCMSU1RD0zJnRhZ3MlNUIyJTVEPTMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1768740077),
('a2fxpRs6auTlGJrBk4Uet7sliRAvzr4xKDYNxJUB', NULL, '54.37.252.152', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiSFZOWjRlTkxNVllvOTlMUzg5Y1Q3a3ZuaEVBNjZLVm5JNUtwNVI3dCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTIzOiJodHRwczovL2FiZHVsYXppem1pbmlzdHJlZXQuY29tL2VuL3Byb2R1Y3QtdGFncy9uby1mcm9zdD9wYWdlPTImc29ydC1ieT1kYXRlX2Rlc2MmdGFncyU1QjAlNUQ9MyZ0YWdzJTVCMSU1RD0zJnRhZ3MlNUIyJTVEPTMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1768740075),
('5kcSZ3CypJSMrQyUia4dHzPSNlGv2ztbpWrcNCkH', NULL, '54.37.252.152', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoicTJpVW1FNkJBcWlVS2lEaXdhTGlKajF6OThzSGNjeVN1UmRLOUU4cCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTIyOiJodHRwczovL2FiZHVsYXppem1pbmlzdHJlZXQuY29tL2VuL3Byb2R1Y3QtdGFncy9uby1mcm9zdD9wYWdlPTImc29ydC1ieT1kYXRlX2FzYyZ0YWdzJTVCMCU1RD0zJnRhZ3MlNUIxJTVEPTMmdGFncyU1QjIlNUQ9MyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1768740072),
('vB25hVkorTbgp2gjDAwDluXudNe4Ik9Yns3egF0u', NULL, '54.37.252.152', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiU0pCd3JKVVYxbnRyakNseldiWWJ6RUJsT2VGaVZZTGhKSVJCOHF2USI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTEyOiJodHRwczovL2FiZHVsYXppem1pbmlzdHJlZXQuY29tL2VuL3Byb2R1Y3QtdGFncy9uby1mcm9zdD9udW09MzYmcGFnZT0yJnRhZ3MlNUIwJTVEPTMmdGFncyU1QjElNUQ9MyZ0YWdzJTVCMiU1RD0zIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1768740070),
('qqCYBbXtYc56Dr8txBAHtFdCKZUluk8f6ehewWGY', NULL, '54.37.252.152', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiakgwWDVLQmUybFhNajF5a1pCQjdzVXZwRjhwY2dVQ2NodmV5NkxHQiI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTEyOiJodHRwczovL2FiZHVsYXppem1pbmlzdHJlZXQuY29tL2VuL3Byb2R1Y3QtdGFncy9uby1mcm9zdD9udW09MjQmcGFnZT0yJnRhZ3MlNUIwJTVEPTMmdGFncyU1QjElNUQ9MyZ0YWdzJTVCMiU1RD0zIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1768740067),
('ZnvDGxIWRsF52Xtu3HCysEFYhJMA6eFJvSUF9zrX', NULL, '54.37.252.152', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiaTdiRkdVbE1jMlVaMlpEUHNUWVgwcFdDbmxNalhSMXZNSjYzQVBpNSI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTEyOiJodHRwczovL2FiZHVsYXppem1pbmlzdHJlZXQuY29tL2VuL3Byb2R1Y3QtdGFncy9uby1mcm9zdD9udW09MTImcGFnZT0yJnRhZ3MlNUIwJTVEPTMmdGFncyU1QjElNUQ9MyZ0YWdzJTVCMiU1RD0zIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1768740065),
('sfS81vazn15H6WKltuw1UMsmfuiUmvOMKVfrZMAX', NULL, '54.37.252.152', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiTlVzMWhUR3ZMVG9VTEVwczhDUHdrcGhQTW1Mb2dEU3ZLRXEzUmhqZCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTA1OiJodHRwczovL2FiZHVsYXppem1pbmlzdHJlZXQuY29tL2VuL3Byb2R1Y3QtdGFncy9uby1mcm9zdD9wYWdlPTImdGFncyU1QjAlNUQ9MyZ0YWdzJTVCMSU1RD0zJnRhZ3MlNUIyJTVEPTMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1768740063),
('M4D9deju3BasIOurbhY7bmCdn4SLirJvgp9QLrsc', NULL, '54.37.252.152', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiOGRLbFg5OGRBVzZPYWFhZFhkZ0I3cHFZZlpLbVd4c2dZbENhak92VyI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTI1OiJodHRwczovL2FiZHVsYXppem1pbmlzdHJlZXQuY29tL2VuL3Byb2R1Y3QtdGFncy9uby1mcm9zdD9wYWdlPTEmc29ydC1ieT1yYXRpbmdfZGVzYyZ0YWdzJTVCMCU1RD0zJnRhZ3MlNUIxJTVEPTMmdGFncyU1QjIlNUQ9MyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1768740060),
('2lCzClXLlft3kLS6VGmcnW57EaI9zmuq4uVigcSJ', NULL, '54.37.252.152', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiWklqdm00b09XN0luOWdQRTk1eExMRXZIRk85d0pZNG5PaDlvYzlTWSI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTI0OiJodHRwczovL2FiZHVsYXppem1pbmlzdHJlZXQuY29tL2VuL3Byb2R1Y3QtdGFncy9uby1mcm9zdD9wYWdlPTEmc29ydC1ieT1wcmljZV9kZXNjJnRhZ3MlNUIwJTVEPTMmdGFncyU1QjElNUQ9MyZ0YWdzJTVCMiU1RD0zIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1768740055),
('y982zxN2BpmwPz4ijnAQUajY1vUsOW9ZboZBwnVi', NULL, '54.37.252.152', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoick9hdmZ1QkRpN3RQQ0NmTnVWRVBnQ3pGM21SY1JaSU84Qld0NmVyUyI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTI0OiJodHRwczovL2FiZHVsYXppem1pbmlzdHJlZXQuY29tL2VuL3Byb2R1Y3QtdGFncy9uby1mcm9zdD9wYWdlPTEmc29ydC1ieT1yYXRpbmdfYXNjJnRhZ3MlNUIwJTVEPTMmdGFncyU1QjElNUQ9MyZ0YWdzJTVCMiU1RD0zIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1768740057),
('RrucnTShk0s0he5L0mK5V1aDw2vet4yM6Lxzk8wR', NULL, '54.37.252.152', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiOTU2T3FCU1o3QzJCcW5DNU56UlR5NXNwM205dWpZTXgwMXVpWlJIMCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTIzOiJodHRwczovL2FiZHVsYXppem1pbmlzdHJlZXQuY29tL2VuL3Byb2R1Y3QtdGFncy9uby1mcm9zdD9wYWdlPTEmc29ydC1ieT1wcmljZV9hc2MmdGFncyU1QjAlNUQ9MyZ0YWdzJTVCMSU1RD0zJnRhZ3MlNUIyJTVEPTMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1768740052),
('pbSYYylOqya9kYtc5fXjMGDJ0A5183N4vISP5ZYh', NULL, '54.37.252.152', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiUFZ2UUh6ZVJLcVRyelMxOWQwaWkyMEY3R2dEZ3JzSEZ4UUJNRG81bCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTIzOiJodHRwczovL2FiZHVsYXppem1pbmlzdHJlZXQuY29tL2VuL3Byb2R1Y3QtdGFncy9uby1mcm9zdD9wYWdlPTEmc29ydC1ieT1uYW1lX2Rlc2MmdGFncyU1QjAlNUQ9MyZ0YWdzJTVCMSU1RD0zJnRhZ3MlNUIyJTVEPTMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1768740049),
('LFIGKYb0tEU0Z9fzLtljdh5MQCl8aDKpkdH61M6j', NULL, '54.37.252.152', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiT2NYM1MyWWlqUGwxSDk4M05wbU1rSlNrd01paGlZVG9LNlhOMWhyZCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTIyOiJodHRwczovL2FiZHVsYXppem1pbmlzdHJlZXQuY29tL2VuL3Byb2R1Y3QtdGFncy9uby1mcm9zdD9wYWdlPTEmc29ydC1ieT1uYW1lX2FzYyZ0YWdzJTVCMCU1RD0zJnRhZ3MlNUIxJTVEPTMmdGFncyU1QjIlNUQ9MyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1768740046),
('q5EXEJvThMAjc8DnDFu0S8qebbV88b9LKmVQuIdD', NULL, '54.37.252.152', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiNEIxS0Izb05seENPZ2JERGlrckNlRXBqSnZjSXJ2SEdyRnBoeXBvbSI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTI5OiJodHRwczovL2FiZHVsYXppem1pbmlzdHJlZXQuY29tL2VuL3Byb2R1Y3QtdGFncy9uby1mcm9zdD9wYWdlPTEmc29ydC1ieT1kZWZhdWx0X3NvcnRpbmcmdGFncyU1QjAlNUQ9MyZ0YWdzJTVCMSU1RD0zJnRhZ3MlNUIyJTVEPTMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1768740043),
('jRlZsaKlaBoWqhHPAwztSeeDTP0Czh0FrSqVVdQT', NULL, '54.37.252.152', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoib1JLWUlJVFJjVTNYdjJHMGNmZzZ4UDZQYU1pYVJMUnNmTmJKYXZvSCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTI1OiJodHRwczovL2FiZHVsYXppem1pbmlzdHJlZXQuY29tL2VuL3Byb2R1Y3QtdGFncy9uby1mcm9zdD9udW09MzYmc29ydC1ieT1yYXRpbmdfZGVzYyZ0YWdzJTVCMCU1RD0zJnRhZ3MlNUIxJTVEPTMmdGFncyU1QjIlNUQ9MyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1768740040),
('IW2OINLAO5t8e3Uz6Tekk3pmgmowN4FtazS8Dufz', NULL, '54.37.252.152', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiTkJ6TFA5UDVPd2JEZ21NYTlBSDY3TEk2dUtydkRKZng3d0xnTlVjciI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTI0OiJodHRwczovL2FiZHVsYXppem1pbmlzdHJlZXQuY29tL2VuL3Byb2R1Y3QtdGFncy9uby1mcm9zdD9udW09MzYmc29ydC1ieT1wcmljZV9kZXNjJnRhZ3MlNUIwJTVEPTMmdGFncyU1QjElNUQ9MyZ0YWdzJTVCMiU1RD0zIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1768740038),
('LQ46lNFXeJRarnJUwzqqLHo580tvVOJwgOyRqTc3', NULL, '54.37.252.152', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiTGJDbXNEYTZUMEE2ckQwYldDUlFqekduUEZmWkZFUFZQbW5FMHhqdSI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTEyOiJodHRwczovL2FiZHVsYXppem1pbmlzdHJlZXQuY29tL2VuL3Byb2R1Y3QtdGFncy9uby1mcm9zdD9udW09MTImcGFnZT0xJnRhZ3MlNUIwJTVEPTMmdGFncyU1QjElNUQ9MyZ0YWdzJTVCMiU1RD0zIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1768740032),
('EJruygp7r1EaSR9uvvVi86OsNLpUF2emlpK1m8QE', NULL, '54.37.252.152', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.8; http://mj12bot.com/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiaE1ZSnVUMzFyTEx5MFNWM0RtOXl3dFF3NkljdDF2ejRwMUJUdDB1ZSI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTI1OiJodHRwczovL2FiZHVsYXppem1pbmlzdHJlZXQuY29tL2VuL3Byb2R1Y3QtdGFncy9uby1mcm9zdD9udW09MTImc29ydC1ieT1yYXRpbmdfZGVzYyZ0YWdzJTVCMCU1RD0zJnRhZ3MlNUIxJTVEPTMmdGFncyU1QjIlNUQ9MyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1768740035),
('np5uJBlkiqPlGu9PiclJKASyPDqcjCeCKUJnYl5t', NULL, '66.249.73.12', 'Googlebot-Image/1.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoidDN5VllMdXNlMUJ3NzFZNVNSSVJLSDZzMTlBczQzUmhTbEdPRzJMayI7czo4OiJsYW5ndWFnZSI7czoyOiJhciI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHBzOi8vd3d3LmFiZHVsYXppem1pbmlzdHJlZXQuY29tL2Zhdmljb24ucG5nIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1768737726),
('XUaQrBICvAyxQIYBoL4VGFT0H948zE4vk80fIFTl', NULL, '116.179.32.92', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://www.baidu.com/search/spider.html)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiYkkwN1ljaDE3dHIxQXNmYktkdmFJcTBZSnlkUlVCemczOUlMSWpkdiI7czo4OiJsYW5ndWFnZSI7czoyOiJhciI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHBzOi8vYWJkdWxheml6bWluaXN0cmVldC5jb20vY2FydCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1768737719),
('iaiHh32f3TijFrbQBS9ZiEOX97Pdl238phopaSSQ', NULL, '54.237.1.68', 'Mozilla/5.0 (iPad; CPU OS 15_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/100.0.4896.85 Mobile/15E148 Safari/604.1', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoibHd1VmVoWjhkbktMQjVCSlprdXlkRmhZckt3SzJDOEtGN2VtQWRwSyI7czo4OiJsYW5ndWFnZSI7czoyOiJhciI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vYWJkdWxheml6bWluaXN0cmVldC5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1768736423),
('yk1jgqln1L5VvK4uPKaiGRv7uA8J7cMZyEztQKDM', NULL, '40.77.167.75', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoidDhuMnNaeVBBSHhWaUhZdXpsQlJIUkdDUjZXdGhLRUE1UlQ2S0p3SyI7czo4OiJsYW5ndWFnZSI7czoyOiJhciI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODY6Imh0dHBzOi8vYWJkdWxheml6bWluaXN0cmVldC5jb20vcHVibGljL2luZGV4LnBocD9wcm9kdWN0X2lkPTcxJnJvdXRlPXByb2R1Y3QlMkZwcm9kdWN0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1768736684),
('EjuHNT2HL5fpqzxez2Mx8bLAPmooukaiyhrsMFNx', NULL, '66.249.73.14', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.7499.192 Mobile Safari/537.36 (compatible; GoogleOther)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoicHhEbnJCVEg2cFZGSW1YUmdJYjc5QVBtcTRuTDZnOFlRSVQ1V3k3bCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTQ6Imh0dHBzOi8vd3d3LmFiZHVsYXppem1pbmlzdHJlZXQuY29tL2VuL3N0b3Jlcy9zdG91ZmZlciI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1768735779);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(191) NOT NULL,
  `value` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 'media_random_hash', '3e362d4621909b93f607b89540109607', NULL, '2026-01-10 21:09:54'),
(2, 'api_enabled', '0', NULL, '2026-01-10 21:09:54'),
(3, 'activated_plugins', '[\"language\",\"language-advanced\",\"ads\",\"analytics\",\"audit-log\",\"backup\",\"blog\",\"bottom-bar-menu\",\"captcha\",\"contact\",\"cookie-consent\",\"ecommerce\",\"faq\",\"location\",\"marketplace\",\"mollie\",\"newsletter\",\"payment\",\"paypal\",\"paypal-payout\",\"paystack\",\"razorpay\",\"shippo\",\"simple-slider\",\"social-login\",\"sslcommerz\",\"stripe\",\"stripe-connect\",\"translation\"]', NULL, '2026-01-10 21:09:54'),
(21, 'payment_bank_transfer_status', '1', NULL, '2026-01-10 21:09:54'),
(20, 'payment_cod_status', '1', NULL, '2026-01-10 21:09:54'),
(6, 'theme', 'nest', NULL, '2026-01-10 21:09:54'),
(7, 'show_admin_bar', '1', NULL, '2026-01-10 21:09:54'),
(8, 'language_hide_default', '1', NULL, '2026-01-10 21:09:54'),
(9, 'language_switcher_display', 'dropdown', NULL, '2026-01-10 21:09:54'),
(10, 'language_display', 'all', NULL, '2026-01-10 21:09:54'),
(11, 'language_hide_languages', '[]', NULL, '2026-01-10 21:09:54'),
(12, 'ecommerce_store_name', 'ميني شارع عبدالعزيز', NULL, '2026-01-10 21:09:54'),
(13, 'ecommerce_store_phone', '01020438540', NULL, '2026-01-10 21:09:54'),
(14, 'ecommerce_store_address', 'Cairo', NULL, '2026-01-10 21:09:54'),
(15, 'ecommerce_store_state', 'Cairo', NULL, '2026-01-10 21:09:54'),
(16, 'ecommerce_store_city', 'cairo', NULL, '2026-01-10 21:09:54'),
(17, 'ecommerce_store_country', 'EG', NULL, '2026-01-10 21:09:54'),
(18, 'admin_favicon', 'myny-sharaa-aabd-alaazyz.jpg', NULL, '2026-01-10 21:09:54'),
(19, 'admin_logo', 'myny-sharaa-aabd-alaazyz.jpg', NULL, '2026-01-10 21:09:54'),
(22, 'payment_cod_description', 'Please pay money directly to the postman, if you choose cash on delivery method (COD).', NULL, '2026-01-10 21:09:54'),
(23, 'payment_bank_transfer_description', 'Please send money to our bank account: ACB - 69270 213 19.', NULL, '2026-01-10 21:09:54'),
(24, 'payment_stripe_payment_type', 'stripe_checkout', NULL, '2026-01-10 21:09:54'),
(25, 'plugins_ecommerce_customer_new_order_status', '0', NULL, '2026-01-10 21:09:54'),
(26, 'plugins_ecommerce_admin_new_order_status', '0', NULL, '2026-01-10 21:09:54'),
(27, 'ecommerce_is_enabled_support_digital_products', '1', NULL, '2026-01-10 21:09:54'),
(28, 'ecommerce_enable_license_codes_for_digital_products', '1', NULL, '2026-01-10 21:09:54'),
(29, 'ecommerce_auto_complete_digital_orders_after_payment', '1', NULL, '2026-01-10 21:09:54'),
(30, 'ecommerce_load_countries_states_cities_from_location_plugin', '0', NULL, '2026-01-10 21:09:54'),
(31, 'ecommerce_product_sku_format', 'SF-2443-%s%s%s%s', NULL, '2026-01-10 21:09:54'),
(32, 'ecommerce_store_order_prefix', 'SF', NULL, '2026-01-10 21:09:54'),
(33, 'ecommerce_enable_product_specification', '1', NULL, '2026-01-10 21:09:54'),
(34, 'payment_bank_transfer_display_bank_info_at_the_checkout_success_page', '1', NULL, '2026-01-10 21:09:54'),
(35, 'payment_cod_logo', 'payments/cod.png', NULL, '2026-01-10 21:09:54'),
(36, 'payment_bank_transfer_logo', 'payments/bank-transfer.png', NULL, '2026-01-10 21:09:54'),
(37, 'payment_stripe_logo', 'payments/stripe.webp', NULL, '2026-01-10 21:09:54'),
(38, 'payment_paypal_logo', 'payments/paypal.png', NULL, '2026-01-10 21:09:54'),
(39, 'payment_mollie_logo', 'payments/mollie.png', NULL, '2026-01-10 21:09:54'),
(40, 'payment_paystack_logo', 'payments/paystack.png', NULL, '2026-01-10 21:09:54'),
(41, 'payment_razorpay_logo', 'payments/razorpay.png', NULL, '2026-01-10 21:09:54'),
(42, 'payment_sslcommerz_logo', 'payments/sslcommerz.png', NULL, '2026-01-10 21:09:54'),
(43, 'permalink-botble-blog-models-post', 'blog', NULL, '2026-01-10 21:09:54'),
(44, 'permalink-botble-blog-models-category', 'blog', NULL, '2026-01-10 21:09:54'),
(45, 'theme-nest-site_title', 'Abdulaziz - Multivendor Electronics &amp; Home Appliances eCommerce', NULL, '2026-01-10 21:09:54'),
(46, 'theme-nest-seo_description', 'Mini Abdulaziz Street (abdulazizministreet) is a leading online electronics store from Abdulaziz Street, offering TVs, mobiles, washing machines, refrigerators, air conditioners, kitchen appliances, monitors, screens, and all home electronics at best prices. عبدالعزيز ميني ستريت أكبر مول إلكترونيات أونلاين من شارع عبدالعزيز، شاشات سامسونج وتوشيبا، موبايلات سامسونج وآيفون، غسالات، بوتاجازات، ثلاجات، تكييفات، وأجهزة كهربائية أصلية بأفضل الأسعار.', NULL, '2026-01-10 21:09:54'),
(143, 'theme-nest-en_US-hotline_subtitle_text', '01020438540', NULL, '2026-01-10 21:09:54'),
(47, 'theme-nest-copyright', 'Copyright © %Y Abdulaziz all rights reserved. Designed &amp; Developed by Elnakieb.', NULL, '2026-01-10 21:09:54'),
(48, 'theme-nest-favicon', 'myny-sharaa-aabd-alaazyz.jpg', NULL, '2026-01-10 21:09:54'),
(49, 'theme-nest-logo', 'logo-abdalazizsore-png.png', NULL, '2026-01-10 21:09:54'),
(50, 'theme-nest-seo_og_image', 'general/open-graph-image.png', NULL, '2026-01-10 21:09:54'),
(51, 'theme-nest-header_style', '', NULL, '2026-01-10 21:09:54'),
(52, 'theme-nest-color_brand', 'rgb(103, 78, 167)', NULL, '2026-01-10 21:09:54'),
(53, 'theme-nest-color_brand_dark', 'rgb(43, 24, 93)', NULL, '2026-01-10 21:09:54'),
(54, 'theme-nest-color_brand_2', '#FDC040', NULL, '2026-01-10 21:09:54'),
(55, 'theme-nest-color_primary', '#5a97fa', NULL, '2026-01-10 21:09:54'),
(56, 'theme-nest-color_secondary', '#3e5379', NULL, '2026-01-10 21:09:54'),
(57, 'theme-nest-color_warning', '#ff9900', NULL, '2026-01-10 21:09:55'),
(58, 'theme-nest-color_danger', '#FD6E6E', NULL, '2026-01-10 21:09:55'),
(59, 'theme-nest-color_success', '#81B13D', NULL, '2026-01-10 21:09:55'),
(60, 'theme-nest-color_info', '#2cc1d8', NULL, '2026-01-10 21:09:55'),
(61, 'theme-nest-color_text', '#4c4c4c', NULL, '2026-01-10 21:09:55'),
(62, 'theme-nest-color_heading', '#253D4E', NULL, '2026-01-10 21:09:55'),
(63, 'theme-nest-color_grey_1', '#253D4E', NULL, '2026-01-10 21:09:55'),
(64, 'theme-nest-color_grey_2', '#242424', NULL, '2026-01-10 21:09:55'),
(65, 'theme-nest-color_grey_4', '#adadad', NULL, '2026-01-10 21:09:55'),
(66, 'theme-nest-color_grey_9', '#f4f5f9', NULL, '2026-01-10 21:09:55'),
(67, 'theme-nest-color_muted', '#B6B6B6', NULL, '2026-01-10 21:09:55'),
(68, 'theme-nest-color_body', '#7E7E7E', NULL, '2026-01-10 21:09:55'),
(69, 'theme-nest-address', 'القاهرة، مصر - القاهرة', NULL, '2026-01-10 21:09:55'),
(70, 'theme-nest-hotline', '01020438540', NULL, '2026-01-10 21:09:55'),
(71, 'theme-nest-hotline_subtitle_text', '24/7 Support Center', NULL, '2026-01-10 21:09:55'),
(72, 'theme-nest-phone', '+20 01095646948', NULL, '2026-01-10 21:09:55'),
(73, 'theme-nest-working_hours', '10:00 - 18:00, Mon - Sat', NULL, '2026-01-10 21:09:55'),
(74, 'theme-nest-homepage_id', '1', NULL, '2026-01-10 21:09:55'),
(75, 'theme-nest-blog_page_id', '5', NULL, '2026-01-10 21:09:55'),
(76, 'theme-nest-cookie_consent_message', 'Your experience on this site will be improved by allowing cookies ', NULL, '2026-01-10 21:09:55'),
(77, 'theme-nest-cookie_consent_learn_more_url', '/cookie-policy', NULL, '2026-01-10 21:09:55'),
(78, 'theme-nest-cookie_consent_learn_more_text', 'Cookie Policy', NULL, '2026-01-10 21:09:55'),
(79, 'theme-nest-payment_methods', 'general/payment-methods.png', NULL, '2026-01-10 21:09:55'),
(80, 'theme-nest-number_of_cross_sale_product', '4', NULL, '2026-01-10 21:09:55'),
(81, 'theme-nest-mobile-header-message', '<span>Grand opening, <strong>up to 15%</strong> off all items. Only <strong>3 days</strong> left</span>', NULL, '2026-01-10 21:09:55'),
(82, 'theme-nest-blog_page_background', 'general/header-bg.png', NULL, '2026-01-10 21:09:55'),
(83, 'theme-nest-blog_page_icon', 'general/category-1.png', NULL, '2026-01-10 21:09:55'),
(84, 'theme-nest-login_background', 'general/login-1.png', NULL, '2026-01-10 21:09:55'),
(85, 'theme-nest-number_of_products_per_page', '12', NULL, '2026-01-10 21:09:55'),
(86, 'theme-nest-preloader_enabled', 'yes', NULL, '2026-01-10 21:09:55'),
(87, 'theme-nest-preloader_version', 'v2', NULL, '2026-01-10 21:09:55'),
(88, 'theme-nest-preloader_image', 'general/loading.gif', NULL, '2026-01-10 21:09:55'),
(89, 'theme-nest-sticky_header_content_position', 'middle', NULL, '2026-01-10 21:09:55'),
(90, 'theme-nest-social_links', '[[{\"key\":\"social-name\",\"value\":\"Facebook\"},{\"key\":\"social-icon\",\"value\":\"general\\/facebook.png\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.facebook.com\"}],[{\"key\":\"social-name\",\"value\":\"Twitter\"},{\"key\":\"social-icon\",\"value\":\"general\\/twitter.png\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.twitter.com\"}],[{\"key\":\"social-name\",\"value\":\"Instagram\"},{\"key\":\"social-icon\",\"value\":\"general\\/instagram.png\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.instagram.com\"}],[{\"key\":\"social-name\",\"value\":\"Pinterest\"},{\"key\":\"social-icon\",\"value\":\"general\\/pinterest.png\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.pinterest.com\"}],[{\"key\":\"social-name\",\"value\":\"Youtube\"},{\"key\":\"social-icon\",\"value\":\"general\\/youtube.png\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.youtube.com\"}]]', NULL, '2026-01-10 21:09:55'),
(91, 'theme-nest-header_messages', '[[{\"key\":\"icon\",\"value\":\"fi-rs-bell\"},{\"key\":\"message\",\"value\":\"<b class=\\\"text-success\\\"> Trendy 25<\\/b> silver jewelry, save up 35% off today\"},{\"key\":\"link\",\"value\":\"\\/products\"},{\"key\":\"link_text\",\"value\":\"Shop now\"}],[{\"key\":\"icon\",\"value\":\"fi-rs-asterisk\"},{\"key\":\"message\",\"value\":\"<b class=\\\"text-danger\\\">Super Value Deals<\\/b> - Save more with coupons\"},{\"key\":\"link\",\"value\":\"\\/products\"},{\"key\":\"link_text\",\"value\":null}],[{\"key\":\"icon\",\"value\":\"fi-rs-angle-double-right\"},{\"key\":\"message\",\"value\":\"Get great devices up to 50% off\"},{\"key\":\"link\",\"value\":\"\\/products\"},{\"key\":\"link_text\",\"value\":\"View details\"}]]', NULL, '2026-01-10 21:09:55'),
(92, 'theme-nest-contact_info_boxes', '[[{\"key\":\"name\",\"value\":\"\\u0627\\u0644\\u0645\\u0643\\u062a\\u0628 \\u0627\\u0644\\u0631\\u0626\\u064a\\u0633\\u064a\"},{\"key\":\"address\",\"value\":\"\\u0627\\u0644\\u0642\\u0627\\u0647\\u0631\\u0629\\u060c \\u0645\\u0635\\u0631 - \\u0627\\u0644\\u0642\\u0627\\u0647\\u0631\\u0629\"},{\"key\":\"phone\",\"value\":\"01020438540\"},{\"key\":\"email\",\"value\":\"ibrahimosha@gmail.com\"}],[{\"key\":\"name\",\"value\":\"\\u0641\\u0631\\u0639 \\u0627\\u0644\\u0645\\u0628\\u064a\\u0639\\u0627\\u062a\"},{\"key\":\"address\",\"value\":\"\\u0627\\u0644\\u0642\\u0627\\u0647\\u0631\\u0629\\u060c \\u0645\\u0635\\u0631 - \\u0627\\u0644\\u0642\\u0627\\u0647\\u0631\\u0629\"},{\"key\":\"phone\",\"value\":\"01020438540\"},{\"key\":\"email\",\"value\":\"ibrahimosha@gmail.com\"}],[{\"key\":\"name\",\"value\":\"\\u0627\\u0644\\u0645\\u062a\\u062c\\u0631\"},{\"key\":\"address\",\"value\":\"\\u0627\\u0644\\u0642\\u0627\\u0647\\u0631\\u0629\\u060c \\u0645\\u0635\\u0631 - \\u0627\\u0644\\u0642\\u0627\\u0647\\u0631\\u0629\"},{\"key\":\"phone\",\"value\":\"01020438540\"},{\"key\":\"email\",\"value\":\"ibrahimosha@gmail.com\"}]]', NULL, '2026-01-10 21:09:55'),
(93, 'theme-nest-number_of_products_per_row', '5', NULL, '2026-01-10 21:09:55'),
(94, 'membership_authorization_at', '2026-01-05 19:56:37', NULL, '2026-01-10 21:09:55'),
(95, 'admin_logo_max_height', '32', NULL, '2026-01-10 21:09:55'),
(96, 'admin_favicon_type', 'image/x-icon', NULL, '2026-01-10 21:09:55'),
(97, 'login_screen_backgrounds', '[]', NULL, '2026-01-10 21:09:55'),
(98, 'admin_title', 'Abdulaziz', NULL, '2026-01-10 21:09:55'),
(99, 'admin_appearance_locale', 'en', NULL, '2026-01-10 21:09:55'),
(100, 'rich_editor', 'ckeditor', NULL, '2026-01-10 21:09:55'),
(101, 'admin_appearance_layout', 'vertical', NULL, '2026-01-10 21:09:55'),
(102, 'admin_appearance_show_menu_item_icon', '1', NULL, '2026-01-10 21:09:55'),
(103, 'admin_appearance_container_width', 'container-xl', NULL, '2026-01-10 21:09:55'),
(104, 'admin_primary_font', 'Inter', NULL, '2026-01-10 21:09:55'),
(105, 'admin_primary_color', '#206bc4', NULL, '2026-01-10 21:09:55'),
(106, 'admin_secondary_color', '#6c7a91', NULL, '2026-01-10 21:09:55'),
(107, 'admin_heading_color', 'inherit', NULL, '2026-01-10 21:09:55'),
(108, 'admin_text_color', '#182433', NULL, '2026-01-10 21:09:55'),
(109, 'admin_link_color', '#206bc4', NULL, '2026-01-10 21:09:55'),
(110, 'admin_link_hover_color', '#1a569d', NULL, '2026-01-10 21:09:55'),
(111, 'admin_appearance_custom_css', '', NULL, '2026-01-10 21:09:55'),
(112, 'admin_appearance_custom_header_js', '', NULL, '2026-01-10 21:09:55'),
(113, 'admin_appearance_custom_body_js', '', NULL, '2026-01-10 21:09:55'),
(114, 'admin_appearance_custom_footer_js', '', NULL, '2026-01-10 21:09:55'),
(115, 'show_theme_guideline_link', '0', NULL, '2026-01-10 21:09:55'),
(116, 'admin_appearance_locale_direction', 'ltr', NULL, '2026-01-10 21:09:55'),
(117, 'ecommerce_store_company', 'ميني شارع عبدالعزيز', NULL, '2026-01-10 21:09:55'),
(118, 'ecommerce_store_email', '', NULL, '2026-01-10 21:09:55'),
(119, 'ecommerce_store_vat_number', '', NULL, '2026-01-10 21:09:55'),
(120, 'theme-nest-admin_logo', 'myny-sharaa-aabd-alaazyz.jpg', NULL, '2026-01-10 21:09:55'),
(121, 'theme-nest-admin_favicon', 'myny-sharaa-aabd-alaazyz.jpg', NULL, '2026-01-10 21:09:55'),
(122, 'is_completed_get_started', '1', NULL, '2026-01-10 21:09:55'),
(123, 'admin_email', '[]', NULL, '2026-01-10 21:09:55'),
(124, 'time_zone', 'Africa/Cairo', NULL, '2026-01-10 21:09:55'),
(125, 'locale_direction', 'rtl', NULL, '2026-01-10 21:09:55'),
(126, 'enable_send_error_reporting_via_email', '0', NULL, '2026-01-10 21:09:55'),
(127, 'redirect_404_to_homepage', '0', NULL, '2026-01-10 21:09:55'),
(128, 'audit_log_data_retention_period', '30', NULL, '2026-01-10 21:09:55'),
(129, 'locale', 'ar', NULL, '2026-01-10 21:09:55'),
(130, 'theme-nest-animation_enabled', 'yes', NULL, '2026-01-10 21:09:55'),
(131, 'theme-nest-enabled_sticky_header', 'yes', NULL, '2026-01-10 21:09:55'),
(132, 'theme-nest-show_site_name', '0', NULL, '2026-01-10 21:09:55'),
(133, 'theme-nest-site_title_separator', '-', NULL, '2026-01-10 21:09:55'),
(134, 'theme-nest-seo_title', 'Abdulaziz Mini Street - TVs, Mobiles &amp; Home Appliances Online', NULL, '2026-01-10 21:09:55'),
(135, 'theme-nest-seo_index', '1', NULL, '2026-01-10 21:09:55'),
(136, 'theme-nest-term_and_privacy_policy_url', '', NULL, '2026-01-10 21:09:55'),
(137, 'theme-nest-date_format', 'M d, Y', NULL, '2026-01-10 21:09:55'),
(139, 'theme-nest-en_US-preloader_version', 'v2', NULL, '2026-01-10 21:09:55'),
(140, 'theme-nest-en_US-preloader_image', 'general/loading.gif', NULL, '2026-01-10 21:09:55'),
(141, 'theme-nest-en_US-animation_enabled', 'yes', NULL, '2026-01-10 21:09:55'),
(142, 'theme-nest-en_US-hotline', '01020438540', NULL, '2026-01-10 21:09:55'),
(138, 'theme-nest-en_US-preloader_enabled', 'yes', NULL, '2026-01-10 21:09:55'),
(144, 'theme-nest-en_US-enabled_sticky_header', 'yes', NULL, '2026-01-10 21:09:55'),
(145, 'theme-nest-en_US-sticky_header_content_position', 'middle', NULL, '2026-01-10 21:09:55'),
(146, 'theme-nest-en_US-site_title', 'ميني شارع عبدالعزيز', NULL, '2026-01-10 21:09:55'),
(147, 'theme-nest-en_US-show_site_name', '0', NULL, '2026-01-10 21:09:55'),
(148, 'theme-nest-en_US-site_title_separator', '-', NULL, '2026-01-10 21:09:55'),
(149, 'theme-nest-en_US-seo_title', 'ميني شارع عبدالعزيز - شاشات، موبايلات وأجهزة كهربائية بأفضل الأسعار', NULL, '2026-01-10 21:09:55'),
(150, 'theme-nest-en_US-seo_description', 'ميني شارع عبدالعزيز أكبر مول إلكترونيات أونلاين من شارع عبدالعزيز، نوفر شاشات سامسونج وتوشيبا، موبايلات سامسونج وآيفون، غسالات، بوتاجازات، ثلاجات، تكييفات وأجهزة كهربائية وإلكترونيات أصلية بأفضل الأسعار.', NULL, '2026-01-10 21:09:55'),
(151, 'theme-nest-en_US-seo_index', '1', NULL, '2026-01-10 21:09:55'),
(152, 'theme-nest-en_US-seo_og_image', 'general/open-graph-image.png', NULL, '2026-01-10 21:09:55'),
(153, 'theme-nest-en_US-term_and_privacy_policy_url', '', NULL, '2026-01-10 21:09:55'),
(154, 'theme-nest-en_US-copyright', 'جميع الحقوق محفوظة © %Y ميني شارع عبدالعزيز. تصميم وتطوير النقيب.', NULL, '2026-01-10 21:09:55'),
(155, 'theme-nest-en_US-date_format', 'M d, Y', NULL, '2026-01-10 21:09:55');

-- --------------------------------------------------------

--
-- Table structure for table `simple_sliders`
--

CREATE TABLE `simple_sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `key` varchar(120) NOT NULL,
  `description` varchar(400) DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `simple_sliders`
--

INSERT INTO `simple_sliders` (`id`, `name`, `key`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Home slider 1', 'home-slider-1', NULL, 'published', '2026-01-06 00:55:47', '2026-01-06 00:55:47'),
(2, 'Home slider 2', 'home-slider-2', NULL, 'published', '2026-01-06 00:55:47', '2026-01-06 00:55:47'),
(3, 'Home slider 3', 'home-slider-3', NULL, 'published', '2026-01-06 00:55:47', '2026-01-06 00:55:47'),
(4, 'Home slider 4', 'home-slider-4', NULL, 'published', '2026-01-06 00:55:48', '2026-01-06 00:55:48'),
(5, 'Home slider 5', 'home-slider-5', NULL, 'published', '2026-01-06 00:55:48', '2026-01-06 00:55:48'),
(6, 'Home slider 6', 'home-slider-6', NULL, 'published', '2026-01-06 00:55:48', '2026-01-06 00:55:48'),
(7, 'Blog slider 1', 'blog-slider-1', NULL, 'published', '2026-01-06 00:55:48', '2026-01-06 00:55:48');

-- --------------------------------------------------------

--
-- Table structure for table `simple_slider_items`
--

CREATE TABLE `simple_slider_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `simple_slider_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) DEFAULT NULL,
  `image` varchar(191) NOT NULL,
  `link` varchar(191) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `order` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `simple_slider_items`
--

INSERT INTO `simple_slider_items` (`id`, `simple_slider_id`, `title`, `image`, `link`, `description`, `order`, `created_at`, `updated_at`) VALUES
(1, 1, 'لا تفون عروض اليوم<br> صفقات للتلاجات', 'home-appliances-ar.png', '/products', 'سجل لمزييد من الصفقات', 1, '2026-01-06 00:55:47', '2026-01-06 02:37:57'),
(2, 1, 'Fresh Vegetables<br>\n										Big discount', 'sliders/1-2.png', '/products', 'Save up to 50% off on your first order', 2, '2026-01-06 00:55:47', '2026-01-06 00:55:47'),
(3, 2, 'Don’t miss amazing<br> grocery deals', 'sliders/2-1.png', '/products', 'Sign up for the daily newsletter', 1, '2026-01-06 00:55:47', '2026-01-06 00:55:47'),
(4, 2, 'Fresh Vegetables<br>\n										Big discount', 'sliders/2-2.png', '/products', 'Save up to 50% off on your first order', 2, '2026-01-06 00:55:47', '2026-01-06 00:55:47'),
(5, 3, 'Don’t miss amazing<br> grocery deals', 'sliders/3-1.png', '/products', 'Sign up for the daily newsletter', 1, '2026-01-06 00:55:47', '2026-01-06 00:55:47'),
(6, 3, 'Fresh Vegetables<br>\n										Big discount', 'sliders/3-2.png', '/products', 'Save up to 50% off on your first order', 2, '2026-01-06 00:55:48', '2026-01-06 00:55:48'),
(7, 4, 'Don’t miss amazing<br> grocery deals', 'sliders/4-1.png', '/products', 'Sign up for the daily newsletter', 1, '2026-01-06 00:55:48', '2026-01-06 00:55:48'),
(8, 4, 'Fresh Vegetables<br>\n										Big discount', 'sliders/4-2.png', '/products', 'Save up to 50% off on your first order', 2, '2026-01-06 00:55:48', '2026-01-06 00:55:48'),
(9, 5, 'Don’t miss amazing<br> grocery deals', 'sliders/5-1.png', '/products', 'Sign up for the daily newsletter', 1, '2026-01-06 00:55:48', '2026-01-06 00:55:48'),
(10, 5, 'Fresh Vegetables<br>\n										Big discount', 'sliders/5-2.png', '/products', 'Save up to 50% off on your first order', 2, '2026-01-06 00:55:48', '2026-01-06 00:55:48'),
(11, 6, 'Don’t miss amazing<br> grocery deals', 'sliders/6-1.png', '/products', 'Sign up for the daily newsletter', 1, '2026-01-06 00:55:48', '2026-01-06 00:55:48'),
(12, 7, NULL, 'sliders/thumbnail-1.jpg', NULL, NULL, 1, '2026-01-06 00:55:48', '2026-01-06 00:55:48'),
(13, 7, NULL, 'sliders/thumbnail-2.jpg', NULL, NULL, 2, '2026-01-06 00:55:48', '2026-01-06 00:55:48'),
(14, 7, NULL, 'sliders/thumbnail-3.jpg', NULL, NULL, 3, '2026-01-06 00:55:48', '2026-01-06 00:55:48'),
(15, 7, NULL, 'sliders/thumbnail-4.jpg', NULL, NULL, 4, '2026-01-06 00:55:48', '2026-01-06 00:55:48'),
(16, 7, NULL, 'sliders/thumbnail-5.jpg', NULL, NULL, 5, '2026-01-06 00:55:48', '2026-01-06 00:55:48'),
(17, 7, NULL, 'sliders/thumbnail-6.jpg', NULL, NULL, 6, '2026-01-06 00:55:48', '2026-01-06 00:55:48');

-- --------------------------------------------------------

--
-- Table structure for table `slugs`
--

CREATE TABLE `slugs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(191) NOT NULL,
  `reference_id` bigint(20) UNSIGNED NOT NULL,
  `reference_type` varchar(191) NOT NULL,
  `prefix` varchar(120) DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slugs`
--

INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES
(1, 'samsung', 1, 'Botble\\Ecommerce\\Models\\Brand', 'brands', '2026-01-06 00:55:14', '2026-01-06 00:55:14'),
(2, 'lg', 2, 'Botble\\Ecommerce\\Models\\Brand', 'brands', '2026-01-06 00:55:14', '2026-01-06 00:55:14'),
(3, 'toshiba', 3, 'Botble\\Ecommerce\\Models\\Brand', 'brands', '2026-01-06 00:55:14', '2026-01-06 00:55:14'),
(4, 'sharp', 4, 'Botble\\Ecommerce\\Models\\Brand', 'brands', '2026-01-06 00:55:14', '2026-01-06 00:55:14'),
(5, 'tornado', 5, 'Botble\\Ecommerce\\Models\\Brand', 'brands', '2026-01-06 00:55:14', '2026-01-06 00:55:14'),
(6, 'fresh', 6, 'Botble\\Ecommerce\\Models\\Brand', 'brands', '2026-01-06 00:55:14', '2026-01-06 00:55:14'),
(7, 'olympic', 7, 'Botble\\Ecommerce\\Models\\Brand', 'brands', '2026-01-06 00:55:14', '2026-01-06 00:55:14'),
(96, 'electronics', 1, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2026-01-06 00:56:09', '2026-01-06 00:56:09'),
(97, 'home-appliances', 2, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2026-01-06 00:56:09', '2026-01-06 00:56:09'),
(98, 'kitchen-appliances', 3, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2026-01-06 00:56:09', '2026-01-06 00:56:09'),
(99, 'televisions', 4, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2026-01-06 00:56:09', '2026-01-06 00:56:09'),
(100, 'refrigerators', 5, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2026-01-06 00:56:09', '2026-01-06 00:56:09'),
(101, 'washing-machines', 6, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2026-01-06 00:56:09', '2026-01-06 00:56:09'),
(102, 'air-conditioners', 7, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2026-01-06 00:56:09', '2026-01-06 00:56:09'),
(103, 'gas-stoves-ovens', 8, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2026-01-06 00:56:09', '2026-01-06 00:56:09'),
(104, 'screens-monitors', 9, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2026-01-06 00:56:09', '2026-01-06 00:56:09'),
(105, 'dishwashers', 10, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2026-01-06 00:56:09', '2026-01-06 00:56:09'),
(106, 'water-heaters', 11, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2026-01-06 00:56:09', '2026-01-06 00:56:09'),
(107, 'built-in-appliances', 12, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2026-01-06 00:56:09', '2026-01-06 00:56:09'),
(108, 'microwaves', 13, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2026-01-06 00:56:09', '2026-01-06 00:56:09'),
(109, 'water-coolers', 14, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2026-01-06 00:56:09', '2026-01-06 00:56:09'),
(22, 'smart-tv', 1, 'Botble\\Ecommerce\\Models\\ProductTag', 'product-tags', '2026-01-06 00:55:18', '2026-01-06 00:55:18'),
(23, 'inverter', 2, 'Botble\\Ecommerce\\Models\\ProductTag', 'product-tags', '2026-01-06 00:55:18', '2026-01-06 00:55:18'),
(24, 'no-frost', 3, 'Botble\\Ecommerce\\Models\\ProductTag', 'product-tags', '2026-01-06 00:55:18', '2026-01-06 00:55:18'),
(25, 'digital', 4, 'Botble\\Ecommerce\\Models\\ProductTag', 'product-tags', '2026-01-06 00:55:18', '2026-01-06 00:55:18'),
(26, 'energy-saving', 5, 'Botble\\Ecommerce\\Models\\ProductTag', 'product-tags', '2026-01-06 00:55:18', '2026-01-06 00:55:18'),
(27, 'tlyfzyon-samsong-55-bos-smart-4k', 1, 'Botble\\Ecommerce\\Models\\Product', 'products', '2026-01-06 00:55:30', '2026-01-06 00:55:30'),
(28, 'thlag-al-gy-18-kdm-nofrost-sylfr', 2, 'Botble\\Ecommerce\\Models\\Product', 'products', '2026-01-06 00:55:30', '2026-01-06 00:55:30'),
(29, 'ghsal-toshyba-fok-atomatyk-10-kylo', 3, 'Botble\\Ecommerce\\Models\\Product', 'products', '2026-01-06 00:55:30', '2026-01-06 00:55:30'),
(30, 'tkyyf-sharb-15-hsan-bard-sakhn-anfrtr-digital', 4, 'Botble\\Ecommerce\\Models\\Product', 'products', '2026-01-06 00:55:30', '2026-01-06 00:56:09'),
(31, 'botagaz-frysh-5-shaal-stanls-styl', 5, 'Botble\\Ecommerce\\Models\\Product', 'products', '2026-01-06 00:55:30', '2026-01-06 00:55:30'),
(32, 'skhan-aolymbyk-khrbaaa-50-ltr', 6, 'Botble\\Ecommerce\\Models\\Product', 'products', '2026-01-06 00:55:30', '2026-01-06 00:55:30'),
(33, 'shash-al-gy-43-bos-smart-fhd', 7, 'Botble\\Ecommerce\\Models\\Product', 'products', '2026-01-06 00:55:30', '2026-01-06 00:55:30'),
(34, 'dyb-fryzr-toshyba-5-drg-nofrost-digital', 8, 'Botble\\Ecommerce\\Models\\Product', 'products', '2026-01-06 00:55:30', '2026-01-06 00:56:09'),
(35, 'ghsal-atbak-bosh-12-frd-stanls', 9, 'Botble\\Ecommerce\\Models\\Product', 'products', '2026-01-06 00:55:30', '2026-01-06 00:55:30'),
(36, 'mroh-tornydo-skf-56-bos-abyd', 10, 'Botble\\Ecommerce\\Models\\Product', 'products', '2026-01-06 00:55:30', '2026-01-06 00:55:30'),
(37, 'mykrooyf-samsong-40-ltr-dygytal', 11, 'Botble\\Ecommerce\\Models\\Product', 'products', '2026-01-06 00:55:30', '2026-01-06 00:55:30'),
(38, 'mbrd-myah-tornydo-2-hnfy-bard-sakhn-digital', 12, 'Botble\\Ecommerce\\Models\\Product', 'products', '2026-01-06 00:55:30', '2026-01-06 00:56:09'),
(39, 'shfat-mtbkh-frysh-90-sm-stanls', 13, 'Botble\\Ecommerce\\Models\\Product', 'products', '2026-01-06 00:55:31', '2026-01-06 00:55:31'),
(40, 'frn-khrbayy-tornydo-48-ltr', 14, 'Botble\\Ecommerce\\Models\\Product', 'products', '2026-01-06 00:55:31', '2026-01-06 00:55:31'),
(41, 'khlat-braon-600-oat-maa-mthn', 15, 'Botble\\Ecommerce\\Models\\Product', 'products', '2026-01-06 00:55:31', '2026-01-06 00:55:31'),
(42, 'tlyfzyon-al-gy-65-bos-oled-smart-digital', 16, 'Botble\\Ecommerce\\Models\\Product', 'products', '2026-01-06 00:55:31', '2026-01-06 00:56:09'),
(43, 'thlag-samsong-24-kdm-babyn-sylfr', 17, 'Botble\\Ecommerce\\Models\\Product', 'products', '2026-01-06 00:55:31', '2026-01-06 00:55:31'),
(44, 'ghsal-al-gy-fol-atomatyk-8-kylo', 18, 'Botble\\Ecommerce\\Models\\Product', 'products', '2026-01-06 00:55:31', '2026-01-06 00:55:31'),
(45, 'tkyyf-karyyr-225-hsan-bard-fkt', 19, 'Botble\\Ecommerce\\Models\\Product', 'products', '2026-01-06 00:55:31', '2026-01-06 00:55:31'),
(46, 'botagaz-yonyon-tk-4-shaal-abyd-digital', 20, 'Botble\\Ecommerce\\Models\\Product', 'products', '2026-01-06 00:55:31', '2026-01-06 00:56:09'),
(47, 'skhan-ghaz-aolymbyk-10-ltr-dygytal', 21, 'Botble\\Ecommerce\\Models\\Product', 'products', '2026-01-06 00:55:31', '2026-01-06 00:55:31'),
(48, 'shash-samsong-50-bos-krystal-uhd', 22, 'Botble\\Ecommerce\\Models\\Product', 'products', '2026-01-06 00:55:31', '2026-01-06 00:55:31'),
(49, 'thlag-sharb-16-kdm-nofrost-abyd', 23, 'Botble\\Ecommerce\\Models\\Product', 'products', '2026-01-06 00:55:32', '2026-01-06 00:55:32'),
(50, 'ghsal-zanosy-fol-atomatyk-7-kylo-digital', 24, 'Botble\\Ecommerce\\Models\\Product', 'products', '2026-01-06 00:55:32', '2026-01-06 00:56:09'),
(51, 'ecommerce', 1, 'Botble\\Blog\\Models\\Category', 'blog', '2026-01-06 00:55:50', '2026-01-06 00:55:57'),
(52, 'fashion', 2, 'Botble\\Blog\\Models\\Category', 'blog', '2026-01-06 00:55:50', '2026-01-06 00:55:57'),
(53, 'electronic', 3, 'Botble\\Blog\\Models\\Category', 'blog', '2026-01-06 00:55:50', '2026-01-06 00:55:57'),
(54, 'commercial', 4, 'Botble\\Blog\\Models\\Category', 'blog', '2026-01-06 00:55:50', '2026-01-06 00:55:57'),
(55, 'general', 1, 'Botble\\Blog\\Models\\Tag', 'tag', '2026-01-06 00:55:50', '2026-01-06 00:55:50'),
(56, 'design', 2, 'Botble\\Blog\\Models\\Tag', 'tag', '2026-01-06 00:55:50', '2026-01-06 00:55:50'),
(57, 'fashion', 3, 'Botble\\Blog\\Models\\Tag', 'tag', '2026-01-06 00:55:50', '2026-01-06 00:55:50'),
(58, 'branding', 4, 'Botble\\Blog\\Models\\Tag', 'tag', '2026-01-06 00:55:50', '2026-01-06 00:55:50'),
(59, 'modern', 5, 'Botble\\Blog\\Models\\Tag', 'tag', '2026-01-06 00:55:50', '2026-01-06 00:55:50'),
(60, '4-expert-tips-on-how-to-choose-the-right-mens-wallet', 1, 'Botble\\Blog\\Models\\Post', 'blog', '2026-01-06 00:55:50', '2026-01-06 00:55:57'),
(61, 'sexy-clutches-how-to-buy-wear-a-designer-clutch-bag', 2, 'Botble\\Blog\\Models\\Post', 'blog', '2026-01-06 00:55:50', '2026-01-06 00:55:57'),
(62, 'the-top-2020-handbag-trends-to-know', 3, 'Botble\\Blog\\Models\\Post', 'blog', '2026-01-06 00:55:50', '2026-01-06 00:55:57'),
(63, 'how-to-match-the-color-of-your-handbag-with-an-outfit', 4, 'Botble\\Blog\\Models\\Post', 'blog', '2026-01-06 00:55:50', '2026-01-06 00:55:57'),
(64, 'how-to-care-for-leather-bags', 5, 'Botble\\Blog\\Models\\Post', 'blog', '2026-01-06 00:55:50', '2026-01-06 00:55:57'),
(65, 'were-crushing-hard-on-summers-10-biggest-bag-trends', 6, 'Botble\\Blog\\Models\\Post', 'blog', '2026-01-06 00:55:50', '2026-01-06 00:55:57'),
(66, 'essential-qualities-of-highly-successful-music', 7, 'Botble\\Blog\\Models\\Post', 'blog', '2026-01-06 00:55:50', '2026-01-06 00:55:57'),
(67, '9-things-i-love-about-shaving-my-head', 8, 'Botble\\Blog\\Models\\Post', 'blog', '2026-01-06 00:55:50', '2026-01-06 00:55:57'),
(68, 'why-teamwork-really-makes-the-dream-work', 9, 'Botble\\Blog\\Models\\Post', 'blog', '2026-01-06 00:55:50', '2026-01-06 00:55:57'),
(69, 'the-world-caters-to-average-people', 10, 'Botble\\Blog\\Models\\Post', 'blog', '2026-01-06 00:55:50', '2026-01-06 00:55:57'),
(70, 'the-litigants-on-the-screen-are-not-actors', 11, 'Botble\\Blog\\Models\\Post', 'blog', '2026-01-06 00:55:50', '2026-01-06 00:55:57'),
(71, 'homepage', 1, 'Botble\\Page\\Models\\Page', '', '2026-01-06 00:55:50', '2026-01-06 00:55:50'),
(72, 'homepage-2', 2, 'Botble\\Page\\Models\\Page', '', '2026-01-06 00:55:50', '2026-01-06 00:55:50'),
(73, 'homepage-3', 3, 'Botble\\Page\\Models\\Page', '', '2026-01-06 00:55:50', '2026-01-06 00:55:50'),
(74, 'homepage-4', 4, 'Botble\\Page\\Models\\Page', '', '2026-01-06 00:55:50', '2026-01-06 00:55:50'),
(75, 'blog', 5, 'Botble\\Page\\Models\\Page', '', '2026-01-06 00:55:50', '2026-01-06 00:55:50'),
(76, 'contact', 6, 'Botble\\Page\\Models\\Page', '', '2026-01-06 00:55:50', '2026-01-06 00:55:50'),
(77, 'about-us', 7, 'Botble\\Page\\Models\\Page', '', '2026-01-06 00:55:50', '2026-01-06 00:55:50'),
(78, 'cookie-policy', 8, 'Botble\\Page\\Models\\Page', '', '2026-01-06 00:55:50', '2026-01-06 00:55:50'),
(79, 'terms-conditions', 9, 'Botble\\Page\\Models\\Page', '', '2026-01-06 00:55:50', '2026-01-06 00:55:50'),
(80, 'returns-exchanges', 10, 'Botble\\Page\\Models\\Page', '', '2026-01-06 00:55:50', '2026-01-06 00:55:50'),
(81, 'shipping-delivery', 11, 'Botble\\Page\\Models\\Page', '', '2026-01-06 00:55:50', '2026-01-06 00:55:50'),
(82, 'privacy-policy', 12, 'Botble\\Page\\Models\\Page', '', '2026-01-06 00:55:50', '2026-01-06 00:55:50'),
(83, 'blog-list', 13, 'Botble\\Page\\Models\\Page', '', '2026-01-06 00:55:50', '2026-01-06 00:55:50'),
(84, 'blog-big', 14, 'Botble\\Page\\Models\\Page', '', '2026-01-06 00:55:50', '2026-01-06 00:55:50'),
(85, 'blog-wide', 15, 'Botble\\Page\\Models\\Page', '', '2026-01-06 00:55:50', '2026-01-06 00:55:50'),
(86, 'homepage-5', 16, 'Botble\\Page\\Models\\Page', '', '2026-01-06 00:55:50', '2026-01-06 00:55:50'),
(87, 'homepage-6', 17, 'Botble\\Page\\Models\\Page', '', '2026-01-06 00:55:50', '2026-01-06 00:55:50'),
(88, 'faq', 18, 'Botble\\Page\\Models\\Page', '', '2026-01-06 00:55:50', '2026-01-06 00:55:50'),
(89, 'coming-soon', 19, 'Botble\\Page\\Models\\Page', '', '2026-01-06 00:55:50', '2026-01-06 00:55:50'),
(90, 'gopro', 1, 'Botble\\Marketplace\\Models\\Store', 'stores', '2026-01-06 00:56:07', '2026-01-06 00:56:07'),
(91, 'global-office', 2, 'Botble\\Marketplace\\Models\\Store', 'stores', '2026-01-06 00:56:07', '2026-01-06 00:56:07'),
(92, 'young-shop', 3, 'Botble\\Marketplace\\Models\\Store', 'stores', '2026-01-06 00:56:07', '2026-01-06 00:56:07'),
(93, 'global-store', 4, 'Botble\\Marketplace\\Models\\Store', 'stores', '2026-01-06 00:56:07', '2026-01-06 00:56:07'),
(94, 'roberts-store', 5, 'Botble\\Marketplace\\Models\\Store', 'stores', '2026-01-06 00:56:07', '2026-01-06 00:56:07'),
(95, 'stouffer', 6, 'Botble\\Marketplace\\Models\\Store', 'stores', '2026-01-06 00:56:07', '2026-01-06 00:56:07'),
(110, 'ghsal-toshyba-fok-atomatyk-10-kylo', 25, 'Botble\\Ecommerce\\Models\\Product', 'products', '2026-01-06 00:56:09', '2026-01-06 00:56:09'),
(111, 'ghsal-toshyba-fok-atomatyk-10-kylo', 26, 'Botble\\Ecommerce\\Models\\Product', 'products', '2026-01-06 00:56:09', '2026-01-06 00:56:09'),
(112, 'ghsal-toshyba-fok-atomatyk-10-kylo', 27, 'Botble\\Ecommerce\\Models\\Product', 'products', '2026-01-06 00:56:09', '2026-01-06 00:56:09'),
(113, 'ghsal-toshyba-fok-atomatyk-10-kylo', 28, 'Botble\\Ecommerce\\Models\\Product', 'products', '2026-01-06 00:56:09', '2026-01-06 00:56:09'),
(114, 'botagaz-frysh-5-shaal-stanls-styl', 29, 'Botble\\Ecommerce\\Models\\Product', 'products', '2026-01-06 00:56:09', '2026-01-06 00:56:09'),
(115, 'botagaz-frysh-5-shaal-stanls-styl', 30, 'Botble\\Ecommerce\\Models\\Product', 'products', '2026-01-06 00:56:09', '2026-01-06 00:56:09'),
(116, 'shash-al-gy-43-bos-smart-fhd', 31, 'Botble\\Ecommerce\\Models\\Product', 'products', '2026-01-06 00:56:09', '2026-01-06 00:56:09'),
(117, 'shash-al-gy-43-bos-smart-fhd', 32, 'Botble\\Ecommerce\\Models\\Product', 'products', '2026-01-06 00:56:09', '2026-01-06 00:56:09'),
(118, 'dyb-fryzr-toshyba-5-drg-nofrost-digital', 33, 'Botble\\Ecommerce\\Models\\Product', 'products', '2026-01-06 00:56:09', '2026-01-06 00:56:09'),
(119, 'dyb-fryzr-toshyba-5-drg-nofrost-digital', 34, 'Botble\\Ecommerce\\Models\\Product', 'products', '2026-01-06 00:56:09', '2026-01-06 00:56:09'),
(120, 'ghsal-atbak-bosh-12-frd-stanls', 35, 'Botble\\Ecommerce\\Models\\Product', 'products', '2026-01-06 00:56:09', '2026-01-06 00:56:09'),
(121, 'ghsal-atbak-bosh-12-frd-stanls', 36, 'Botble\\Ecommerce\\Models\\Product', 'products', '2026-01-06 00:56:09', '2026-01-06 00:56:09'),
(122, 'mykrooyf-samsong-40-ltr-dygytal', 37, 'Botble\\Ecommerce\\Models\\Product', 'products', '2026-01-06 00:56:09', '2026-01-06 00:56:09'),
(123, 'mbrd-myah-tornydo-2-hnfy-bard-sakhn-digital', 38, 'Botble\\Ecommerce\\Models\\Product', 'products', '2026-01-06 00:56:09', '2026-01-06 00:56:09'),
(124, 'mbrd-myah-tornydo-2-hnfy-bard-sakhn-digital', 39, 'Botble\\Ecommerce\\Models\\Product', 'products', '2026-01-06 00:56:09', '2026-01-06 00:56:09'),
(125, 'mbrd-myah-tornydo-2-hnfy-bard-sakhn-digital', 40, 'Botble\\Ecommerce\\Models\\Product', 'products', '2026-01-06 00:56:09', '2026-01-06 00:56:09'),
(126, 'mbrd-myah-tornydo-2-hnfy-bard-sakhn-digital', 41, 'Botble\\Ecommerce\\Models\\Product', 'products', '2026-01-06 00:56:09', '2026-01-06 00:56:09'),
(127, 'frn-khrbayy-tornydo-48-ltr', 42, 'Botble\\Ecommerce\\Models\\Product', 'products', '2026-01-06 00:56:09', '2026-01-06 00:56:09'),
(128, 'frn-khrbayy-tornydo-48-ltr', 43, 'Botble\\Ecommerce\\Models\\Product', 'products', '2026-01-06 00:56:09', '2026-01-06 00:56:09'),
(129, 'frn-khrbayy-tornydo-48-ltr', 44, 'Botble\\Ecommerce\\Models\\Product', 'products', '2026-01-06 00:56:09', '2026-01-06 00:56:09'),
(130, 'frn-khrbayy-tornydo-48-ltr', 45, 'Botble\\Ecommerce\\Models\\Product', 'products', '2026-01-06 00:56:09', '2026-01-06 00:56:09'),
(131, 'khlat-braon-600-oat-maa-mthn', 46, 'Botble\\Ecommerce\\Models\\Product', 'products', '2026-01-06 00:56:09', '2026-01-06 00:56:09'),
(132, 'khlat-braon-600-oat-maa-mthn', 47, 'Botble\\Ecommerce\\Models\\Product', 'products', '2026-01-06 00:56:09', '2026-01-06 00:56:09'),
(133, 'khlat-braon-600-oat-maa-mthn', 48, 'Botble\\Ecommerce\\Models\\Product', 'products', '2026-01-06 00:56:09', '2026-01-06 00:56:09'),
(134, 'khlat-braon-600-oat-maa-mthn', 49, 'Botble\\Ecommerce\\Models\\Product', 'products', '2026-01-06 00:56:09', '2026-01-06 00:56:09'),
(135, 'khlat-braon-600-oat-maa-mthn', 50, 'Botble\\Ecommerce\\Models\\Product', 'products', '2026-01-06 00:56:09', '2026-01-06 00:56:09'),
(136, 'tlyfzyon-al-gy-65-bos-oled-smart-digital', 51, 'Botble\\Ecommerce\\Models\\Product', 'products', '2026-01-06 00:56:09', '2026-01-06 00:56:09'),
(137, 'thlag-samsong-24-kdm-babyn-sylfr', 52, 'Botble\\Ecommerce\\Models\\Product', 'products', '2026-01-06 00:56:09', '2026-01-06 00:56:09'),
(138, 'thlag-samsong-24-kdm-babyn-sylfr', 53, 'Botble\\Ecommerce\\Models\\Product', 'products', '2026-01-06 00:56:09', '2026-01-06 00:56:09'),
(139, 'ghsal-al-gy-fol-atomatyk-8-kylo', 54, 'Botble\\Ecommerce\\Models\\Product', 'products', '2026-01-06 00:56:09', '2026-01-06 00:56:09'),
(140, 'ghsal-al-gy-fol-atomatyk-8-kylo', 55, 'Botble\\Ecommerce\\Models\\Product', 'products', '2026-01-06 00:56:09', '2026-01-06 00:56:09'),
(141, 'ghsal-al-gy-fol-atomatyk-8-kylo', 56, 'Botble\\Ecommerce\\Models\\Product', 'products', '2026-01-06 00:56:09', '2026-01-06 00:56:09'),
(142, 'ghsal-al-gy-fol-atomatyk-8-kylo', 57, 'Botble\\Ecommerce\\Models\\Product', 'products', '2026-01-06 00:56:09', '2026-01-06 00:56:09'),
(143, 'thlag-sharb-16-kdm-nofrost-abyd', 58, 'Botble\\Ecommerce\\Models\\Product', 'products', '2026-01-06 00:56:09', '2026-01-06 00:56:09'),
(144, 'thlag-sharb-16-kdm-nofrost-abyd', 59, 'Botble\\Ecommerce\\Models\\Product', 'products', '2026-01-06 00:56:09', '2026-01-06 00:56:09'),
(145, 'thlag-sharb-16-kdm-nofrost-abyd', 60, 'Botble\\Ecommerce\\Models\\Product', 'products', '2026-01-06 00:56:09', '2026-01-06 00:56:09');

-- --------------------------------------------------------

--
-- Table structure for table `slugs_translations`
--

CREATE TABLE `slugs_translations` (
  `lang_code` varchar(20) NOT NULL,
  `slugs_id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(191) DEFAULT NULL,
  `prefix` varchar(120) DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `social_logins`
--

CREATE TABLE `social_logins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_type` varchar(191) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `provider` varchar(50) NOT NULL,
  `provider_id` varchar(100) NOT NULL,
  `token` text DEFAULT NULL,
  `refresh_token` text DEFAULT NULL,
  `token_expires_at` timestamp NULL DEFAULT NULL,
  `provider_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`provider_data`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `slug` varchar(120) DEFAULT NULL,
  `abbreviation` varchar(10) DEFAULT NULL,
  `country_id` bigint(20) UNSIGNED DEFAULT NULL,
  `order` tinyint(4) NOT NULL DEFAULT 0,
  `image` varchar(191) DEFAULT NULL,
  `is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `states_translations`
--

CREATE TABLE `states_translations` (
  `lang_code` varchar(20) NOT NULL,
  `states_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) DEFAULT NULL,
  `slug` varchar(120) DEFAULT NULL,
  `abbreviation` varchar(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `author_id` bigint(20) UNSIGNED DEFAULT NULL,
  `author_type` varchar(191) NOT NULL,
  `description` varchar(400) DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `author_id`, `author_type`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'General', 1, 'Botble\\ACL\\Models\\User', NULL, 'published', '2026-01-06 00:55:50', '2026-01-06 00:55:50'),
(2, 'Design', 1, 'Botble\\ACL\\Models\\User', NULL, 'published', '2026-01-06 00:55:50', '2026-01-06 00:55:50'),
(3, 'Fashion', 1, 'Botble\\ACL\\Models\\User', NULL, 'published', '2026-01-06 00:55:50', '2026-01-06 00:55:50'),
(4, 'Branding', 1, 'Botble\\ACL\\Models\\User', NULL, 'published', '2026-01-06 00:55:50', '2026-01-06 00:55:50'),
(5, 'Modern', 1, 'Botble\\ACL\\Models\\User', NULL, 'published', '2026-01-06 00:55:50', '2026-01-06 00:55:50');

-- --------------------------------------------------------

--
-- Table structure for table `tags_translations`
--

CREATE TABLE `tags_translations` (
  `lang_code` varchar(20) NOT NULL,
  `tags_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(191) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(120) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `first_name` varchar(120) DEFAULT NULL,
  `last_name` varchar(120) DEFAULT NULL,
  `username` varchar(60) DEFAULT NULL,
  `avatar_id` bigint(20) UNSIGNED DEFAULT NULL,
  `super_user` tinyint(1) NOT NULL DEFAULT 0,
  `manage_supers` tinyint(1) NOT NULL DEFAULT 0,
  `permissions` text DEFAULT NULL,
  `last_login` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `phone`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `first_name`, `last_name`, `username`, `avatar_id`, `super_user`, `manage_supers`, `permissions`, `last_login`) VALUES
(1, 'info@abdulazizministreet.com', '01020438540', NULL, '$2y$12$VxrZ0mrh.OL0uAyDfkUMrejHGAZUhxJeX1pAm1jRdSgig/xZ9uoX2', 'NfK6skUYBv82nnUP9oaVhRZr4wJzu5wyE1FH21Mcr9TDvW1OLPIZt9IitjxO', '2026-01-06 00:55:51', '2026-01-18 20:29:27', 'Abdulaziz', 'Ministreet', 'admin', NULL, 1, 1, '{\"users.index\":true,\"users.create\":true,\"users.edit\":true,\"users.destroy\":true,\"roles.index\":true,\"roles.create\":true,\"roles.edit\":true,\"roles.destroy\":true,\"core.system\":true,\"core.cms\":true,\"core.manage.license\":true,\"systems.cronjob\":true,\"core.tools\":true,\"tools.data-synchronize\":true,\"media.index\":true,\"files.index\":true,\"files.create\":true,\"files.edit\":true,\"files.trash\":true,\"files.destroy\":true,\"folders.index\":true,\"folders.create\":true,\"folders.edit\":true,\"folders.trash\":true,\"folders.destroy\":true,\"settings.index\":true,\"settings.common\":true,\"settings.options\":true,\"settings.email\":true,\"settings.media\":true,\"settings.admin-appearance\":true,\"settings.cache\":true,\"settings.datatables\":true,\"settings.email.rules\":true,\"settings.others\":true,\"menus.index\":true,\"menus.create\":true,\"menus.edit\":true,\"menus.destroy\":true,\"optimize.settings\":true,\"pages.index\":true,\"pages.create\":true,\"pages.edit\":true,\"pages.destroy\":true,\"plugins.index\":true,\"plugins.edit\":true,\"plugins.remove\":true,\"plugins.marketplace\":true,\"sitemap.settings\":true,\"core.appearance\":true,\"theme.index\":true,\"theme.activate\":true,\"theme.remove\":true,\"theme.options\":true,\"theme.custom-css\":true,\"theme.custom-js\":true,\"theme.custom-html\":true,\"theme.robots-txt\":true,\"settings.website-tracking\":true,\"widgets.index\":true,\"ads.index\":true,\"ads.create\":true,\"ads.edit\":true,\"ads.destroy\":true,\"ads.settings\":true,\"analytics.general\":true,\"analytics.page\":true,\"analytics.browser\":true,\"analytics.referrer\":true,\"analytics.settings\":true,\"audit-log.index\":true,\"audit-log.destroy\":true,\"backups.index\":true,\"backups.create\":true,\"backups.restore\":true,\"backups.destroy\":true,\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"categories.index\":true,\"categories.create\":true,\"categories.edit\":true,\"categories.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"blog.settings\":true,\"posts.export\":true,\"posts.import\":true,\"captcha.settings\":true,\"contacts.index\":true,\"contacts.edit\":true,\"contacts.destroy\":true,\"contact.custom-fields\":true,\"contact.settings\":true,\"plugins.ecommerce\":true,\"ecommerce.report.index\":true,\"products.index\":true,\"products.create\":true,\"products.edit\":true,\"products.destroy\":true,\"products.duplicate\":true,\"ecommerce.product-prices.index\":true,\"ecommerce.product-prices.edit\":true,\"ecommerce.product-inventory.index\":true,\"ecommerce.product-inventory.edit\":true,\"product-categories.index\":true,\"product-categories.create\":true,\"product-categories.edit\":true,\"product-categories.destroy\":true,\"product-tag.index\":true,\"product-tag.create\":true,\"product-tag.edit\":true,\"product-tag.destroy\":true,\"brands.index\":true,\"brands.create\":true,\"brands.edit\":true,\"brands.destroy\":true,\"product-collections.index\":true,\"product-collections.create\":true,\"product-collections.edit\":true,\"product-collections.destroy\":true,\"product-attribute-sets.index\":true,\"product-attribute-sets.create\":true,\"product-attribute-sets.edit\":true,\"product-attribute-sets.destroy\":true,\"product-attributes.index\":true,\"product-attributes.create\":true,\"product-attributes.edit\":true,\"product-attributes.destroy\":true,\"tax.index\":true,\"tax.create\":true,\"tax.edit\":true,\"tax.destroy\":true,\"reviews.index\":true,\"reviews.create\":true,\"reviews.destroy\":true,\"reviews.publish\":true,\"reviews.reply\":true,\"ecommerce.shipments.index\":true,\"ecommerce.shipments.create\":true,\"ecommerce.shipments.edit\":true,\"ecommerce.shipments.destroy\":true,\"orders.index\":true,\"orders.create\":true,\"orders.edit\":true,\"orders.destroy\":true,\"discounts.index\":true,\"discounts.create\":true,\"discounts.edit\":true,\"discounts.destroy\":true,\"customers.index\":true,\"customers.create\":true,\"customers.edit\":true,\"customers.destroy\":true,\"ecommerce.customers.import\":true,\"ecommerce.customers.export\":true,\"flash-sale.index\":true,\"flash-sale.create\":true,\"flash-sale.edit\":true,\"flash-sale.destroy\":true,\"product-label.index\":true,\"product-label.create\":true,\"product-label.edit\":true,\"product-label.destroy\":true,\"ecommerce.import.products.index\":true,\"ecommerce.export.products.index\":true,\"order_returns.index\":true,\"order_returns.edit\":true,\"order_returns.destroy\":true,\"global-option.index\":true,\"global-option.create\":true,\"global-option.edit\":true,\"global-option.destroy\":true,\"ecommerce.invoice.index\":true,\"ecommerce.invoice.edit\":true,\"ecommerce.invoice.destroy\":true,\"ecommerce.settings\":true,\"ecommerce.settings.general\":true,\"ecommerce.invoice-template.index\":true,\"ecommerce.settings.currencies\":true,\"ecommerce.settings.products\":true,\"ecommerce.settings.product-search\":true,\"ecommerce.settings.digital-products\":true,\"ecommerce.settings.store-locators\":true,\"ecommerce.settings.invoices\":true,\"ecommerce.settings.product-reviews\":true,\"ecommerce.settings.customers\":true,\"ecommerce.settings.shopping\":true,\"ecommerce.settings.taxes\":true,\"ecommerce.settings.shipping\":true,\"ecommerce.shipping-rule-items.index\":true,\"ecommerce.shipping-rule-items.create\":true,\"ecommerce.shipping-rule-items.edit\":true,\"ecommerce.shipping-rule-items.destroy\":true,\"ecommerce.shipping-rule-items.bulk-import\":true,\"ecommerce.settings.tracking\":true,\"ecommerce.settings.standard-and-format\":true,\"ecommerce.settings.checkout\":true,\"ecommerce.settings.return\":true,\"ecommerce.settings.flash-sale\":true,\"ecommerce.settings.product-specification\":true,\"product-categories.export\":true,\"product-categories.import\":true,\"orders.export\":true,\"ecommerce.product-specification.index\":true,\"ecommerce.specification-groups.index\":true,\"ecommerce.specification-groups.create\":true,\"ecommerce.specification-groups.edit\":true,\"ecommerce.specification-groups.destroy\":true,\"ecommerce.specification-attributes.index\":true,\"ecommerce.specification-attributes.create\":true,\"ecommerce.specification-attributes.edit\":true,\"ecommerce.specification-attributes.destroy\":true,\"ecommerce.specification-tables.index\":true,\"ecommerce.specification-tables.create\":true,\"ecommerce.specification-tables.edit\":true,\"ecommerce.specification-tables.destroy\":true,\"plugin.faq\":true,\"faq.index\":true,\"faq.create\":true,\"faq.edit\":true,\"faq.destroy\":true,\"faq_category.index\":true,\"faq_category.create\":true,\"faq_category.edit\":true,\"faq_category.destroy\":true,\"faqs.settings\":true,\"languages.index\":true,\"languages.create\":true,\"languages.edit\":true,\"languages.destroy\":true,\"translations.import\":true,\"translations.export\":true,\"property-translations.import\":true,\"property-translations.export\":true,\"plugin.location\":true,\"country.index\":true,\"country.create\":true,\"country.edit\":true,\"country.destroy\":true,\"state.index\":true,\"state.create\":true,\"state.edit\":true,\"state.destroy\":true,\"city.index\":true,\"city.create\":true,\"city.edit\":true,\"city.destroy\":true,\"marketplace.index\":true,\"marketplace.store.index\":true,\"marketplace.store.create\":true,\"marketplace.store.edit\":true,\"marketplace.store.destroy\":true,\"marketplace.store.view\":true,\"marketplace.store.revenue.create\":true,\"marketplace.withdrawal.index\":true,\"marketplace.withdrawal.edit\":true,\"marketplace.withdrawal.destroy\":true,\"marketplace.withdrawal.invoice\":true,\"marketplace.vendors.index\":true,\"marketplace.unverified-vendors.index\":true,\"marketplace.vendors.control\":true,\"marketplace.unverified-vendors.edit\":true,\"marketplace.reports\":true,\"marketplace.settings\":true,\"marketplace.messages.index\":true,\"marketplace.messages.edit\":true,\"marketplace.messages.destroy\":true,\"newsletter.index\":true,\"newsletter.destroy\":true,\"newsletter.settings\":true,\"payment.index\":true,\"payments.settings\":true,\"payment.destroy\":true,\"payments.logs\":true,\"payments.logs.show\":true,\"payments.logs.destroy\":true,\"simple-slider.index\":true,\"simple-slider.create\":true,\"simple-slider.edit\":true,\"simple-slider.destroy\":true,\"simple-slider-item.index\":true,\"simple-slider-item.create\":true,\"simple-slider-item.edit\":true,\"simple-slider-item.destroy\":true,\"simple-slider.settings\":true,\"social-login.settings\":true,\"plugins.translation\":true,\"translations.locales\":true,\"translations.theme-translations\":true,\"translations.index\":true,\"theme-translations.export\":true,\"other-translations.export\":true,\"theme-translations.import\":true,\"other-translations.import\":true,\"api.settings\":true,\"api.sanctum-token.index\":true,\"api.sanctum-token.create\":true,\"api.sanctum-token.destroy\":true,\"superuser\":\"1\",\"manage_supers\":\"1\"}', '2026-01-18 20:29:02'),
(2, 'mostafa@gmail.com', '01030660989', NULL, '$2y$12$AwjIEGumev8/gBM92npQbukQF3K97eZhOJX6I01w4RsfzKD6s84m2', NULL, '2026-01-18 20:26:48', '2026-01-18 20:29:19', 'Mostafa', 'Abdulaziz', 'mostafa', NULL, 0, 0, '{\"users.index\":true,\"users.create\":true,\"users.edit\":true,\"users.destroy\":true,\"roles.index\":true,\"roles.create\":true,\"roles.edit\":true,\"roles.destroy\":true,\"core.system\":true,\"core.cms\":true,\"core.manage.license\":true,\"systems.cronjob\":true,\"core.tools\":true,\"tools.data-synchronize\":true,\"media.index\":true,\"files.index\":true,\"files.create\":true,\"files.edit\":true,\"files.trash\":true,\"files.destroy\":true,\"folders.index\":true,\"folders.create\":true,\"folders.edit\":true,\"folders.trash\":true,\"folders.destroy\":true,\"settings.index\":true,\"settings.common\":true,\"settings.options\":true,\"settings.email\":true,\"settings.media\":true,\"settings.admin-appearance\":true,\"settings.cache\":true,\"settings.datatables\":true,\"settings.email.rules\":true,\"settings.others\":true,\"menus.index\":true,\"menus.create\":true,\"menus.edit\":true,\"menus.destroy\":true,\"optimize.settings\":true,\"pages.index\":true,\"pages.create\":true,\"pages.edit\":true,\"pages.destroy\":true,\"plugins.index\":true,\"plugins.edit\":true,\"plugins.remove\":true,\"plugins.marketplace\":true,\"sitemap.settings\":true,\"core.appearance\":true,\"theme.index\":true,\"theme.activate\":true,\"theme.remove\":true,\"theme.options\":true,\"theme.custom-css\":true,\"theme.custom-js\":true,\"theme.custom-html\":true,\"theme.robots-txt\":true,\"settings.website-tracking\":true,\"widgets.index\":true,\"ads.index\":true,\"ads.create\":true,\"ads.edit\":true,\"ads.destroy\":true,\"ads.settings\":true,\"analytics.general\":true,\"analytics.page\":true,\"analytics.browser\":true,\"analytics.referrer\":true,\"analytics.settings\":true,\"audit-log.index\":true,\"audit-log.destroy\":true,\"backups.index\":true,\"backups.create\":true,\"backups.restore\":true,\"backups.destroy\":true,\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"categories.index\":true,\"categories.create\":true,\"categories.edit\":true,\"categories.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"blog.settings\":true,\"posts.export\":true,\"posts.import\":true,\"captcha.settings\":true,\"contacts.index\":true,\"contacts.edit\":true,\"contacts.destroy\":true,\"contact.custom-fields\":true,\"contact.settings\":true,\"plugins.ecommerce\":true,\"ecommerce.report.index\":true,\"products.index\":true,\"products.create\":true,\"products.edit\":true,\"products.destroy\":true,\"products.duplicate\":true,\"ecommerce.product-prices.index\":true,\"ecommerce.product-prices.edit\":true,\"ecommerce.product-inventory.index\":true,\"ecommerce.product-inventory.edit\":true,\"product-categories.index\":true,\"product-categories.create\":true,\"product-categories.edit\":true,\"product-categories.destroy\":true,\"product-tag.index\":true,\"product-tag.create\":true,\"product-tag.edit\":true,\"product-tag.destroy\":true,\"brands.index\":true,\"brands.create\":true,\"brands.edit\":true,\"brands.destroy\":true,\"product-collections.index\":true,\"product-collections.create\":true,\"product-collections.edit\":true,\"product-collections.destroy\":true,\"product-attribute-sets.index\":true,\"product-attribute-sets.create\":true,\"product-attribute-sets.edit\":true,\"product-attribute-sets.destroy\":true,\"product-attributes.index\":true,\"product-attributes.create\":true,\"product-attributes.edit\":true,\"product-attributes.destroy\":true,\"tax.index\":true,\"tax.create\":true,\"tax.edit\":true,\"tax.destroy\":true,\"reviews.index\":true,\"reviews.create\":true,\"reviews.destroy\":true,\"reviews.publish\":true,\"reviews.reply\":true,\"ecommerce.shipments.index\":true,\"ecommerce.shipments.create\":true,\"ecommerce.shipments.edit\":true,\"ecommerce.shipments.destroy\":true,\"orders.index\":true,\"orders.create\":true,\"orders.edit\":true,\"orders.destroy\":true,\"discounts.index\":true,\"discounts.create\":true,\"discounts.edit\":true,\"discounts.destroy\":true,\"customers.index\":true,\"customers.create\":true,\"customers.edit\":true,\"customers.destroy\":true,\"ecommerce.customers.import\":true,\"ecommerce.customers.export\":true,\"flash-sale.index\":true,\"flash-sale.create\":true,\"flash-sale.edit\":true,\"flash-sale.destroy\":true,\"product-label.index\":true,\"product-label.create\":true,\"product-label.edit\":true,\"product-label.destroy\":true,\"ecommerce.import.products.index\":true,\"ecommerce.export.products.index\":true,\"order_returns.index\":true,\"order_returns.edit\":true,\"order_returns.destroy\":true,\"global-option.index\":true,\"global-option.create\":true,\"global-option.edit\":true,\"global-option.destroy\":true,\"ecommerce.invoice.index\":true,\"ecommerce.invoice.edit\":true,\"ecommerce.invoice.destroy\":true,\"ecommerce.settings\":true,\"ecommerce.settings.general\":true,\"ecommerce.invoice-template.index\":true,\"ecommerce.settings.currencies\":true,\"ecommerce.settings.products\":true,\"ecommerce.settings.product-search\":true,\"ecommerce.settings.digital-products\":true,\"ecommerce.settings.store-locators\":true,\"ecommerce.settings.invoices\":true,\"ecommerce.settings.product-reviews\":true,\"ecommerce.settings.customers\":true,\"ecommerce.settings.shopping\":true,\"ecommerce.settings.taxes\":true,\"ecommerce.settings.shipping\":true,\"ecommerce.shipping-rule-items.index\":true,\"ecommerce.shipping-rule-items.create\":true,\"ecommerce.shipping-rule-items.edit\":true,\"ecommerce.shipping-rule-items.destroy\":true,\"ecommerce.shipping-rule-items.bulk-import\":true,\"ecommerce.settings.tracking\":true,\"ecommerce.settings.standard-and-format\":true,\"ecommerce.settings.checkout\":true,\"ecommerce.settings.return\":true,\"ecommerce.settings.flash-sale\":true,\"ecommerce.settings.product-specification\":true,\"product-categories.export\":true,\"product-categories.import\":true,\"orders.export\":true,\"ecommerce.product-specification.index\":true,\"ecommerce.specification-groups.index\":true,\"ecommerce.specification-groups.create\":true,\"ecommerce.specification-groups.edit\":true,\"ecommerce.specification-groups.destroy\":true,\"ecommerce.specification-attributes.index\":true,\"ecommerce.specification-attributes.create\":true,\"ecommerce.specification-attributes.edit\":true,\"ecommerce.specification-attributes.destroy\":true,\"ecommerce.specification-tables.index\":true,\"ecommerce.specification-tables.create\":true,\"ecommerce.specification-tables.edit\":true,\"ecommerce.specification-tables.destroy\":true,\"plugin.faq\":true,\"faq.index\":true,\"faq.create\":true,\"faq.edit\":true,\"faq.destroy\":true,\"faq_category.index\":true,\"faq_category.create\":true,\"faq_category.edit\":true,\"faq_category.destroy\":true,\"faqs.settings\":true,\"languages.index\":true,\"languages.create\":true,\"languages.edit\":true,\"languages.destroy\":true,\"translations.import\":true,\"translations.export\":true,\"property-translations.import\":true,\"property-translations.export\":true,\"plugin.location\":true,\"country.index\":true,\"country.create\":true,\"country.edit\":true,\"country.destroy\":true,\"state.index\":true,\"state.create\":true,\"state.edit\":true,\"state.destroy\":true,\"city.index\":true,\"city.create\":true,\"city.edit\":true,\"city.destroy\":true,\"marketplace.index\":true,\"marketplace.store.index\":true,\"marketplace.store.create\":true,\"marketplace.store.edit\":true,\"marketplace.store.destroy\":true,\"marketplace.store.view\":true,\"marketplace.store.revenue.create\":true,\"marketplace.withdrawal.index\":true,\"marketplace.withdrawal.edit\":true,\"marketplace.withdrawal.destroy\":true,\"marketplace.withdrawal.invoice\":true,\"marketplace.vendors.index\":true,\"marketplace.unverified-vendors.index\":true,\"marketplace.vendors.control\":true,\"marketplace.unverified-vendors.edit\":true,\"marketplace.reports\":true,\"marketplace.settings\":true,\"marketplace.messages.index\":true,\"marketplace.messages.edit\":true,\"marketplace.messages.destroy\":true,\"newsletter.index\":true,\"newsletter.destroy\":true,\"newsletter.settings\":true,\"payment.index\":true,\"payments.settings\":true,\"payment.destroy\":true,\"payments.logs\":true,\"payments.logs.show\":true,\"payments.logs.destroy\":true,\"simple-slider.index\":true,\"simple-slider.create\":true,\"simple-slider.edit\":true,\"simple-slider.destroy\":true,\"simple-slider-item.index\":true,\"simple-slider-item.create\":true,\"simple-slider-item.edit\":true,\"simple-slider-item.destroy\":true,\"simple-slider.settings\":true,\"social-login.settings\":true,\"plugins.translation\":true,\"translations.locales\":true,\"translations.theme-translations\":true,\"translations.index\":true,\"theme-translations.export\":true,\"other-translations.export\":true,\"theme-translations.import\":true,\"other-translations.import\":true,\"api.settings\":true,\"api.sanctum-token.index\":true,\"api.sanctum-token.create\":true,\"api.sanctum-token.destroy\":true,\"superuser\":false,\"manage_supers\":false}', NULL),
(3, 'ozoo@gmail.com', '01020304050', NULL, '$2y$12$nmco8DT4B5F6wWDUdOoPfOlWceb7DxvaM0T/GSwxjORh3qUk/.chW', 'jpK0GfU6ASzZjAbTQdP3lXFar5s1L11FcD9Au2FpMkGm10xLia1dNeZxqagG', '2026-01-18 20:28:13', '2026-01-18 20:28:28', 'Ahmed', 'Ozoo', 'ozoo', NULL, 0, 0, '{\"users.index\":true,\"users.create\":true,\"users.edit\":true,\"users.destroy\":true,\"roles.index\":true,\"roles.create\":true,\"roles.edit\":true,\"roles.destroy\":true,\"core.system\":true,\"core.cms\":true,\"core.manage.license\":true,\"systems.cronjob\":true,\"core.tools\":true,\"tools.data-synchronize\":true,\"media.index\":true,\"files.index\":true,\"files.create\":true,\"files.edit\":true,\"files.trash\":true,\"files.destroy\":true,\"folders.index\":true,\"folders.create\":true,\"folders.edit\":true,\"folders.trash\":true,\"folders.destroy\":true,\"settings.index\":true,\"settings.common\":true,\"settings.options\":true,\"settings.email\":true,\"settings.media\":true,\"settings.admin-appearance\":true,\"settings.cache\":true,\"settings.datatables\":true,\"settings.email.rules\":true,\"settings.others\":true,\"menus.index\":true,\"menus.create\":true,\"menus.edit\":true,\"menus.destroy\":true,\"optimize.settings\":true,\"pages.index\":true,\"pages.create\":true,\"pages.edit\":true,\"pages.destroy\":true,\"plugins.index\":true,\"plugins.edit\":true,\"plugins.remove\":true,\"plugins.marketplace\":true,\"sitemap.settings\":true,\"core.appearance\":true,\"theme.index\":true,\"theme.activate\":true,\"theme.remove\":true,\"theme.options\":true,\"theme.custom-css\":true,\"theme.custom-js\":true,\"theme.custom-html\":true,\"theme.robots-txt\":true,\"settings.website-tracking\":true,\"widgets.index\":true,\"ads.index\":true,\"ads.create\":true,\"ads.edit\":true,\"ads.destroy\":true,\"ads.settings\":true,\"analytics.general\":true,\"analytics.page\":true,\"analytics.browser\":true,\"analytics.referrer\":true,\"analytics.settings\":true,\"audit-log.index\":true,\"audit-log.destroy\":true,\"backups.index\":true,\"backups.create\":true,\"backups.restore\":true,\"backups.destroy\":true,\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"categories.index\":true,\"categories.create\":true,\"categories.edit\":true,\"categories.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"blog.settings\":true,\"posts.export\":true,\"posts.import\":true,\"captcha.settings\":true,\"contacts.index\":true,\"contacts.edit\":true,\"contacts.destroy\":true,\"contact.custom-fields\":true,\"contact.settings\":true,\"plugins.ecommerce\":true,\"ecommerce.report.index\":true,\"products.index\":true,\"products.create\":true,\"products.edit\":true,\"products.destroy\":true,\"products.duplicate\":true,\"ecommerce.product-prices.index\":true,\"ecommerce.product-prices.edit\":true,\"ecommerce.product-inventory.index\":true,\"ecommerce.product-inventory.edit\":true,\"product-categories.index\":true,\"product-categories.create\":true,\"product-categories.edit\":true,\"product-categories.destroy\":true,\"product-tag.index\":true,\"product-tag.create\":true,\"product-tag.edit\":true,\"product-tag.destroy\":true,\"brands.index\":true,\"brands.create\":true,\"brands.edit\":true,\"brands.destroy\":true,\"product-collections.index\":true,\"product-collections.create\":true,\"product-collections.edit\":true,\"product-collections.destroy\":true,\"product-attribute-sets.index\":true,\"product-attribute-sets.create\":true,\"product-attribute-sets.edit\":true,\"product-attribute-sets.destroy\":true,\"product-attributes.index\":true,\"product-attributes.create\":true,\"product-attributes.edit\":true,\"product-attributes.destroy\":true,\"tax.index\":true,\"tax.create\":true,\"tax.edit\":true,\"tax.destroy\":true,\"reviews.index\":true,\"reviews.create\":true,\"reviews.destroy\":true,\"reviews.publish\":true,\"reviews.reply\":true,\"ecommerce.shipments.index\":true,\"ecommerce.shipments.create\":true,\"ecommerce.shipments.edit\":true,\"ecommerce.shipments.destroy\":true,\"orders.index\":true,\"orders.create\":true,\"orders.edit\":true,\"orders.destroy\":true,\"discounts.index\":true,\"discounts.create\":true,\"discounts.edit\":true,\"discounts.destroy\":true,\"customers.index\":true,\"customers.create\":true,\"customers.edit\":true,\"customers.destroy\":true,\"ecommerce.customers.import\":true,\"ecommerce.customers.export\":true,\"flash-sale.index\":true,\"flash-sale.create\":true,\"flash-sale.edit\":true,\"flash-sale.destroy\":true,\"product-label.index\":true,\"product-label.create\":true,\"product-label.edit\":true,\"product-label.destroy\":true,\"ecommerce.import.products.index\":true,\"ecommerce.export.products.index\":true,\"order_returns.index\":true,\"order_returns.edit\":true,\"order_returns.destroy\":true,\"global-option.index\":true,\"global-option.create\":true,\"global-option.edit\":true,\"global-option.destroy\":true,\"ecommerce.invoice.index\":true,\"ecommerce.invoice.edit\":true,\"ecommerce.invoice.destroy\":true,\"ecommerce.settings\":true,\"ecommerce.settings.general\":true,\"ecommerce.invoice-template.index\":true,\"ecommerce.settings.currencies\":true,\"ecommerce.settings.products\":true,\"ecommerce.settings.product-search\":true,\"ecommerce.settings.digital-products\":true,\"ecommerce.settings.store-locators\":true,\"ecommerce.settings.invoices\":true,\"ecommerce.settings.product-reviews\":true,\"ecommerce.settings.customers\":true,\"ecommerce.settings.shopping\":true,\"ecommerce.settings.taxes\":true,\"ecommerce.settings.shipping\":true,\"ecommerce.shipping-rule-items.index\":true,\"ecommerce.shipping-rule-items.create\":true,\"ecommerce.shipping-rule-items.edit\":true,\"ecommerce.shipping-rule-items.destroy\":true,\"ecommerce.shipping-rule-items.bulk-import\":true,\"ecommerce.settings.tracking\":true,\"ecommerce.settings.standard-and-format\":true,\"ecommerce.settings.checkout\":true,\"ecommerce.settings.return\":true,\"ecommerce.settings.flash-sale\":true,\"ecommerce.settings.product-specification\":true,\"product-categories.export\":true,\"product-categories.import\":true,\"orders.export\":true,\"ecommerce.product-specification.index\":true,\"ecommerce.specification-groups.index\":true,\"ecommerce.specification-groups.create\":true,\"ecommerce.specification-groups.edit\":true,\"ecommerce.specification-groups.destroy\":true,\"ecommerce.specification-attributes.index\":true,\"ecommerce.specification-attributes.create\":true,\"ecommerce.specification-attributes.edit\":true,\"ecommerce.specification-attributes.destroy\":true,\"ecommerce.specification-tables.index\":true,\"ecommerce.specification-tables.create\":true,\"ecommerce.specification-tables.edit\":true,\"ecommerce.specification-tables.destroy\":true,\"plugin.faq\":true,\"faq.index\":true,\"faq.create\":true,\"faq.edit\":true,\"faq.destroy\":true,\"faq_category.index\":true,\"faq_category.create\":true,\"faq_category.edit\":true,\"faq_category.destroy\":true,\"faqs.settings\":true,\"languages.index\":true,\"languages.create\":true,\"languages.edit\":true,\"languages.destroy\":true,\"translations.import\":true,\"translations.export\":true,\"property-translations.import\":true,\"property-translations.export\":true,\"plugin.location\":true,\"country.index\":true,\"country.create\":true,\"country.edit\":true,\"country.destroy\":true,\"state.index\":true,\"state.create\":true,\"state.edit\":true,\"state.destroy\":true,\"city.index\":true,\"city.create\":true,\"city.edit\":true,\"city.destroy\":true,\"marketplace.index\":true,\"marketplace.store.index\":true,\"marketplace.store.create\":true,\"marketplace.store.edit\":true,\"marketplace.store.destroy\":true,\"marketplace.store.view\":true,\"marketplace.store.revenue.create\":true,\"marketplace.withdrawal.index\":true,\"marketplace.withdrawal.edit\":true,\"marketplace.withdrawal.destroy\":true,\"marketplace.withdrawal.invoice\":true,\"marketplace.vendors.index\":true,\"marketplace.unverified-vendors.index\":true,\"marketplace.vendors.control\":true,\"marketplace.unverified-vendors.edit\":true,\"marketplace.reports\":true,\"marketplace.settings\":true,\"marketplace.messages.index\":true,\"marketplace.messages.edit\":true,\"marketplace.messages.destroy\":true,\"newsletter.index\":true,\"newsletter.destroy\":true,\"newsletter.settings\":true,\"payment.index\":true,\"payments.settings\":true,\"payment.destroy\":true,\"payments.logs\":true,\"payments.logs.show\":true,\"payments.logs.destroy\":true,\"simple-slider.index\":true,\"simple-slider.create\":true,\"simple-slider.edit\":true,\"simple-slider.destroy\":true,\"simple-slider-item.index\":true,\"simple-slider-item.create\":true,\"simple-slider-item.edit\":true,\"simple-slider-item.destroy\":true,\"simple-slider.settings\":true,\"social-login.settings\":true,\"plugins.translation\":true,\"translations.locales\":true,\"translations.theme-translations\":true,\"translations.index\":true,\"theme-translations.export\":true,\"other-translations.export\":true,\"theme-translations.import\":true,\"other-translations.import\":true,\"api.settings\":true,\"api.sanctum-token.index\":true,\"api.sanctum-token.create\":true,\"api.sanctum-token.destroy\":true,\"superuser\":null,\"manage_supers\":null}', '2026-01-18 20:28:28'),
(4, 'osha@gmail.com', '01020438544', NULL, '$2y$12$rPXNyzSLlhqmL39tvu2QzeyZcjcF9cFgYszwh3q9Kt/1A0cqYHtRu', NULL, '2026-01-18 20:30:13', '2026-01-18 20:30:13', 'Ibrahim', 'Osha', 'osha', NULL, 0, 0, '{\"users.index\":true,\"users.create\":true,\"users.edit\":true,\"users.destroy\":true,\"roles.index\":true,\"roles.create\":true,\"roles.edit\":true,\"roles.destroy\":true,\"core.system\":true,\"core.cms\":true,\"core.manage.license\":true,\"systems.cronjob\":true,\"core.tools\":true,\"tools.data-synchronize\":true,\"media.index\":true,\"files.index\":true,\"files.create\":true,\"files.edit\":true,\"files.trash\":true,\"files.destroy\":true,\"folders.index\":true,\"folders.create\":true,\"folders.edit\":true,\"folders.trash\":true,\"folders.destroy\":true,\"settings.index\":true,\"settings.common\":true,\"settings.options\":true,\"settings.email\":true,\"settings.media\":true,\"settings.admin-appearance\":true,\"settings.cache\":true,\"settings.datatables\":true,\"settings.email.rules\":true,\"settings.others\":true,\"menus.index\":true,\"menus.create\":true,\"menus.edit\":true,\"menus.destroy\":true,\"optimize.settings\":true,\"pages.index\":true,\"pages.create\":true,\"pages.edit\":true,\"pages.destroy\":true,\"plugins.index\":true,\"plugins.edit\":true,\"plugins.remove\":true,\"plugins.marketplace\":true,\"sitemap.settings\":true,\"core.appearance\":true,\"theme.index\":true,\"theme.activate\":true,\"theme.remove\":true,\"theme.options\":true,\"theme.custom-css\":true,\"theme.custom-js\":true,\"theme.custom-html\":true,\"theme.robots-txt\":true,\"settings.website-tracking\":true,\"widgets.index\":true,\"ads.index\":true,\"ads.create\":true,\"ads.edit\":true,\"ads.destroy\":true,\"ads.settings\":true,\"analytics.general\":true,\"analytics.page\":true,\"analytics.browser\":true,\"analytics.referrer\":true,\"analytics.settings\":true,\"audit-log.index\":true,\"audit-log.destroy\":true,\"backups.index\":true,\"backups.create\":true,\"backups.restore\":true,\"backups.destroy\":true,\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"categories.index\":true,\"categories.create\":true,\"categories.edit\":true,\"categories.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"blog.settings\":true,\"posts.export\":true,\"posts.import\":true,\"captcha.settings\":true,\"contacts.index\":true,\"contacts.edit\":true,\"contacts.destroy\":true,\"contact.custom-fields\":true,\"contact.settings\":true,\"plugins.ecommerce\":true,\"ecommerce.report.index\":true,\"products.index\":true,\"products.create\":true,\"products.edit\":true,\"products.destroy\":true,\"products.duplicate\":true,\"ecommerce.product-prices.index\":true,\"ecommerce.product-prices.edit\":true,\"ecommerce.product-inventory.index\":true,\"ecommerce.product-inventory.edit\":true,\"product-categories.index\":true,\"product-categories.create\":true,\"product-categories.edit\":true,\"product-categories.destroy\":true,\"product-tag.index\":true,\"product-tag.create\":true,\"product-tag.edit\":true,\"product-tag.destroy\":true,\"brands.index\":true,\"brands.create\":true,\"brands.edit\":true,\"brands.destroy\":true,\"product-collections.index\":true,\"product-collections.create\":true,\"product-collections.edit\":true,\"product-collections.destroy\":true,\"product-attribute-sets.index\":true,\"product-attribute-sets.create\":true,\"product-attribute-sets.edit\":true,\"product-attribute-sets.destroy\":true,\"product-attributes.index\":true,\"product-attributes.create\":true,\"product-attributes.edit\":true,\"product-attributes.destroy\":true,\"tax.index\":true,\"tax.create\":true,\"tax.edit\":true,\"tax.destroy\":true,\"reviews.index\":true,\"reviews.create\":true,\"reviews.destroy\":true,\"reviews.publish\":true,\"reviews.reply\":true,\"ecommerce.shipments.index\":true,\"ecommerce.shipments.create\":true,\"ecommerce.shipments.edit\":true,\"ecommerce.shipments.destroy\":true,\"orders.index\":true,\"orders.create\":true,\"orders.edit\":true,\"orders.destroy\":true,\"discounts.index\":true,\"discounts.create\":true,\"discounts.edit\":true,\"discounts.destroy\":true,\"customers.index\":true,\"customers.create\":true,\"customers.edit\":true,\"customers.destroy\":true,\"ecommerce.customers.import\":true,\"ecommerce.customers.export\":true,\"flash-sale.index\":true,\"flash-sale.create\":true,\"flash-sale.edit\":true,\"flash-sale.destroy\":true,\"product-label.index\":true,\"product-label.create\":true,\"product-label.edit\":true,\"product-label.destroy\":true,\"ecommerce.import.products.index\":true,\"ecommerce.export.products.index\":true,\"order_returns.index\":true,\"order_returns.edit\":true,\"order_returns.destroy\":true,\"global-option.index\":true,\"global-option.create\":true,\"global-option.edit\":true,\"global-option.destroy\":true,\"ecommerce.invoice.index\":true,\"ecommerce.invoice.edit\":true,\"ecommerce.invoice.destroy\":true,\"ecommerce.settings\":true,\"ecommerce.settings.general\":true,\"ecommerce.invoice-template.index\":true,\"ecommerce.settings.currencies\":true,\"ecommerce.settings.products\":true,\"ecommerce.settings.product-search\":true,\"ecommerce.settings.digital-products\":true,\"ecommerce.settings.store-locators\":true,\"ecommerce.settings.invoices\":true,\"ecommerce.settings.product-reviews\":true,\"ecommerce.settings.customers\":true,\"ecommerce.settings.shopping\":true,\"ecommerce.settings.taxes\":true,\"ecommerce.settings.shipping\":true,\"ecommerce.shipping-rule-items.index\":true,\"ecommerce.shipping-rule-items.create\":true,\"ecommerce.shipping-rule-items.edit\":true,\"ecommerce.shipping-rule-items.destroy\":true,\"ecommerce.shipping-rule-items.bulk-import\":true,\"ecommerce.settings.tracking\":true,\"ecommerce.settings.standard-and-format\":true,\"ecommerce.settings.checkout\":true,\"ecommerce.settings.return\":true,\"ecommerce.settings.flash-sale\":true,\"ecommerce.settings.product-specification\":true,\"product-categories.export\":true,\"product-categories.import\":true,\"orders.export\":true,\"ecommerce.product-specification.index\":true,\"ecommerce.specification-groups.index\":true,\"ecommerce.specification-groups.create\":true,\"ecommerce.specification-groups.edit\":true,\"ecommerce.specification-groups.destroy\":true,\"ecommerce.specification-attributes.index\":true,\"ecommerce.specification-attributes.create\":true,\"ecommerce.specification-attributes.edit\":true,\"ecommerce.specification-attributes.destroy\":true,\"ecommerce.specification-tables.index\":true,\"ecommerce.specification-tables.create\":true,\"ecommerce.specification-tables.edit\":true,\"ecommerce.specification-tables.destroy\":true,\"plugin.faq\":true,\"faq.index\":true,\"faq.create\":true,\"faq.edit\":true,\"faq.destroy\":true,\"faq_category.index\":true,\"faq_category.create\":true,\"faq_category.edit\":true,\"faq_category.destroy\":true,\"faqs.settings\":true,\"languages.index\":true,\"languages.create\":true,\"languages.edit\":true,\"languages.destroy\":true,\"translations.import\":true,\"translations.export\":true,\"property-translations.import\":true,\"property-translations.export\":true,\"plugin.location\":true,\"country.index\":true,\"country.create\":true,\"country.edit\":true,\"country.destroy\":true,\"state.index\":true,\"state.create\":true,\"state.edit\":true,\"state.destroy\":true,\"city.index\":true,\"city.create\":true,\"city.edit\":true,\"city.destroy\":true,\"marketplace.index\":true,\"marketplace.store.index\":true,\"marketplace.store.create\":true,\"marketplace.store.edit\":true,\"marketplace.store.destroy\":true,\"marketplace.store.view\":true,\"marketplace.store.revenue.create\":true,\"marketplace.withdrawal.index\":true,\"marketplace.withdrawal.edit\":true,\"marketplace.withdrawal.destroy\":true,\"marketplace.withdrawal.invoice\":true,\"marketplace.vendors.index\":true,\"marketplace.unverified-vendors.index\":true,\"marketplace.vendors.control\":true,\"marketplace.unverified-vendors.edit\":true,\"marketplace.reports\":true,\"marketplace.settings\":true,\"marketplace.messages.index\":true,\"marketplace.messages.edit\":true,\"marketplace.messages.destroy\":true,\"newsletter.index\":true,\"newsletter.destroy\":true,\"newsletter.settings\":true,\"payment.index\":true,\"payments.settings\":true,\"payment.destroy\":true,\"payments.logs\":true,\"payments.logs.show\":true,\"payments.logs.destroy\":true,\"simple-slider.index\":true,\"simple-slider.create\":true,\"simple-slider.edit\":true,\"simple-slider.destroy\":true,\"simple-slider-item.index\":true,\"simple-slider-item.create\":true,\"simple-slider-item.edit\":true,\"simple-slider-item.destroy\":true,\"simple-slider.settings\":true,\"social-login.settings\":true,\"plugins.translation\":true,\"translations.locales\":true,\"translations.theme-translations\":true,\"translations.index\":true,\"theme-translations.export\":true,\"other-translations.export\":true,\"theme-translations.import\":true,\"other-translations.import\":true,\"api.settings\":true,\"api.sanctum-token.index\":true,\"api.sanctum-token.create\":true,\"api.sanctum-token.destroy\":true,\"superuser\":null,\"manage_supers\":null}', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_meta`
--

CREATE TABLE `user_meta` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(120) DEFAULT NULL,
  `value` text DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_meta`
--

INSERT INTO `user_meta` (`id`, `key`, `value`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'theme_mode', 'light', 1, '2026-01-06 01:57:58', '2026-01-06 01:58:03'),
(2, 'minimal_sidebar', 'no', 1, '2026-01-18 20:30:42', '2026-01-18 20:30:44');

-- --------------------------------------------------------

--
-- Table structure for table `user_settings`
--

CREATE TABLE `user_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_type` varchar(50) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(100) NOT NULL,
  `value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`value`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `widgets`
--

CREATE TABLE `widgets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `widget_id` varchar(120) NOT NULL,
  `sidebar_id` varchar(120) NOT NULL,
  `theme` varchar(120) NOT NULL,
  `position` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `data` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `widgets`
--

INSERT INTO `widgets` (`id`, `widget_id`, `sidebar_id`, `theme`, `position`, `data`, `created_at`, `updated_at`) VALUES
(56, 'CustomMenuWidget', 'footer_sidebar', 'nest-en_US', 0, '{\"id\":\"CustomMenuWidget\",\"name\":\"Information\",\"menu_id\":\"information\"}', '2026-01-10 21:06:50', '2026-01-10 21:06:50'),
(57, 'SiteInfoWidget', 'footer_sidebar', 'nest-en_US', 1, '{\"id\":\"SiteInfoWidget\",\"name\":\"Site information\",\"about\":\"Awesome grocery store website template\",\"address\":\"\\u0627\\u0644\\u0642\\u0627\\u0647\\u0631\\u0629\\u060c \\u0645\\u0635\\u0631 - \\u0627\\u0644\\u0642\\u0627\\u0647\\u0631\\u0629\",\"phone\":\"01020438540\",\"email\":\"ibrahimosha@gmail.com\",\"working_hours\":\"\"}', '2026-01-10 21:06:50', '2026-01-10 21:06:50'),
(58, 'CustomMenuWidget', 'footer_sidebar', 'nest-en_US', 2, '{\"id\":\"CustomMenuWidget\",\"name\":\"Categories\",\"menu_id\":\"product-categories\"}', '2026-01-10 21:06:50', '2026-01-10 21:06:50'),
(59, 'CustomMenuWidget', 'footer_sidebar', 'nest-en_US', 3, '{\"id\":\"CustomMenuWidget\",\"name\":\"Company\",\"menu_id\":\"company\"}', '2026-01-10 21:06:50', '2026-01-10 21:06:50'),
(60, 'InstallAppWidget', 'footer_sidebar', 'nest-en_US', 4, '{\"id\":\"InstallAppWidget\",\"name\":\"\\u062a\\u062d\\u064a\\u0644 \\u0627\\u0644\\u062a\\u0637\\u0628\\u064a\\u0642\",\"apps_description\":\"\\u0645\\u0646 \\u062c\\u0648\\u062c\\u0644 \\u0628\\u0644\\u0627\\u064a \\u0623\\u0648 \\u0627\\u0644\\u0623\\u0628 \\u0633\\u062a\\u0648\\u0631\",\"ios_app_url\":\"#\",\"ios_app_image\":\"general\\/app-store.jpg\",\"android_app_url\":\"#\",\"android_app_image\":\"general\\/google-play.jpg\",\"payment_gateway_description\":\"Secured Payment Gateways\",\"payment_gateway_image\":\"general\\/payment-methods.png\"}', '2026-01-10 21:06:50', '2026-01-10 21:06:50'),
(6, 'BlogSearchWidget', 'primary_sidebar', 'nest-en_US', 0, '{\"id\":\"BlogSearchWidget\",\"name\":\"Search\"}', '2026-01-06 00:56:02', '2026-01-10 19:58:39'),
(7, 'ProductCategoriesWidget', 'primary_sidebar', 'nest-en_US', 1, '{\"id\":\"ProductCategoriesWidget\",\"name\":\"Categories\"}', '2026-01-06 00:56:02', '2026-01-10 19:58:39'),
(8, 'TrendingProductsWidget', 'primary_sidebar', 'nest-en_US', 2, '{\"id\":\"TrendingProductsWidget\",\"name\":\"Trending Now\",\"number_display\":4}', '2026-01-06 00:56:02', '2026-01-10 19:58:39'),
(9, 'TagsWidget', 'primary_sidebar', 'nest-en_US', 4, '{\"id\":\"TagsWidget\",\"name\":\"Popular Tags\"}', '2026-01-06 00:56:02', '2026-01-10 19:58:39'),
(10, 'AdsWidget', 'primary_sidebar', 'nest-en_US', 5, '{\"id\":\"AdsWidget\",\"name\":\"Organic\",\"ads_key\":\"IZ6WU8KUALYI\"}', '2026-01-06 00:56:02', '2026-01-10 19:58:39'),
(63, 'AdsWidget', 'product_sidebar', 'nest-en_US', 2, '{\"id\":\"AdsWidget\",\"name\":\"\\u0627\\u0644\\u062a\\u0648\\u0635\\u064a\\u0644 \\u0644\\u0644\\u0645\\u0646\\u0632\\u0644 \\u0645\\u062c\\u0627\\u0646\\u0627\",\"ads_key\":\"IZ6WU8KUALYH\"}', '2026-01-10 21:07:57', '2026-01-10 21:07:57'),
(62, 'NewProductsWidget', 'product_sidebar', 'nest-en_US', 1, '{\"id\":\"NewProductsWidget\",\"name\":\"New products\",\"number_display\":\"3\"}', '2026-01-10 21:07:57', '2026-01-10 21:07:57'),
(14, 'NewsletterWidget', 'pre_footer_sidebar', 'nest-en_US', 0, '{\"id\":\"NewsletterWidget\",\"title\":\"Stay home & get your daily <br \\/>needs from our shop\",\"subtitle\":\"Start Your Daily Shopping with <span>Nest Mart<\\/span>\",\"image\":\"general\\/newsletter-image.png\",\"background_image\":\"general\\/newsletter-background-image.png\"}', '2026-01-06 00:56:02', '2026-01-10 19:58:39'),
(15, 'SiteFeaturesWidget', 'pre_footer_sidebar', 'nest-en_US', 1, '{\"id\":\"SiteFeaturesWidget\",\"title\":\"Site Features\",\"data\":{\"1\":{\"icon\":\"general\\/icon-1.png\",\"title\":\"Best prices & offers\",\"subtitle\":\"Orders $50 or more\"},\"2\":{\"icon\":\"general\\/icon-2.png\",\"title\":\"Free delivery\",\"subtitle\":\"24\\/7 amazing services\"},\"3\":{\"icon\":\"general\\/icon-3.png\",\"title\":\"Great daily deal\",\"subtitle\":\"When you sign up\"},\"4\":{\"icon\":\"general\\/icon-4.png\",\"title\":\"Wide assortment\",\"subtitle\":\"Mega Discounts\"},\"5\":{\"icon\":\"general\\/icon-5.png\",\"title\":\"Easy returns\",\"subtitle\":\"Within 30 days\"}}}', '2026-01-06 00:56:02', '2026-01-10 19:58:39'),
(68, 'InstallAppWidget', 'footer_sidebar', 'nest', 4, '{\"id\":\"InstallAppWidget\",\"name\":\"\\u062a\\u062b\\u0628\\u064a\\u062a \\u0627\\u0644\\u062a\\u0637\\u0628\\u064a\\u0642\",\"apps_description\":\"\\u0645\\u0646 \\u0645\\u062a\\u062c\\u0631 \\u0627\\u0644\\u062a\\u0637\\u0628\\u064a\\u0642\\u0627\\u062a \\u0623\\u0648 \\u062c\\u0648\\u062c\\u0644 \\u0628\\u0644\\u0627\\u064a\",\"ios_app_url\":\"#\",\"ios_app_image\":\"general\\/app-store.jpg\",\"android_app_url\":\"#\",\"android_app_image\":\"general\\/google-play.jpg\",\"payment_gateway_description\":\"\\u0628\\u0648\\u0627\\u0628\\u0627\\u062a \\u062f\\u0641\\u0639 \\u0622\\u0645\\u0646\\u0629\",\"payment_gateway_image\":\"general\\/payment-methods.png\"}', '2026-01-10 21:11:54', '2026-01-10 21:11:54'),
(67, 'CustomMenuWidget', 'footer_sidebar', 'nest', 3, '{\"id\":\"CustomMenuWidget\",\"name\":\"\\u0645\\u0639\\u0644\\u0648\\u0645\\u0627\\u062a\",\"menu_id\":\"information-ar\"}', '2026-01-10 21:11:54', '2026-01-10 21:11:54'),
(66, 'CustomMenuWidget', 'footer_sidebar', 'nest', 2, '{\"id\":\"CustomMenuWidget\",\"name\":\"\\u0627\\u0644\\u0641\\u0626\\u0627\\u062a\",\"menu_id\":\"product-categories-ar\"}', '2026-01-10 21:11:54', '2026-01-10 21:11:54'),
(65, 'CustomMenuWidget', 'footer_sidebar', 'nest', 1, '{\"id\":\"CustomMenuWidget\",\"name\":\"\\u0627\\u0644\\u0634\\u0631\\u0643\\u0629\",\"menu_id\":\"company-ar\"}', '2026-01-10 21:11:54', '2026-01-10 21:11:54'),
(64, 'SiteInfoWidget', 'footer_sidebar', 'nest', 0, '{\"id\":\"SiteInfoWidget\",\"name\":\"\\u0645\\u0639\\u0644\\u0648\\u0645\\u0627\\u062a \\u0627\\u0644\\u0645\\u0648\\u0642\\u0639\",\"about\":\"\\u0645\\u064a\\u0646\\u064a \\u0634\\u0627\\u0631\\u0639 \\u0639\\u0628\\u062f\\u0627\\u0644\\u0639\\u0632\\u064a\\u0632 - \\u0634\\u0627\\u0634\\u0627\\u062a\\u060c \\u0645\\u0648\\u0628\\u0627\\u064a\\u0644\\u0627\\u062a \\u0648\\u0623\\u062c\\u0647\\u0632\\u0629 \\u0643\\u0647\\u0631\\u0628\\u0627\\u0626\\u064a\\u0629 \\u0628\\u0623\\u0641\\u0636\\u0644 \\u0627\\u0644\\u0623\\u0633\\u0639\\u0627\\u0631\",\"address\":\"\\u0627\\u0644\\u0642\\u0627\\u0647\\u0631\\u0629\\u060c \\u0645\\u0635\\u0631 - \\u0627\\u0644\\u0642\\u0627\\u0647\\u0631\\u0629\",\"phone\":\"01020438540\",\"email\":\"ibrahimosha@gmail.com\",\"working_hours\":\"\"}', '2026-01-10 21:11:54', '2026-01-10 21:11:54'),
(36, 'BlogSearchWidget', 'primary_sidebar', 'nest', 0, '{\"id\":\"BlogSearchWidget\",\"name\":\"\\u0628\\u062d\\u062b\"}', '2026-01-10 19:58:39', '2026-01-10 19:58:39'),
(37, 'ProductCategoriesWidget', 'primary_sidebar', 'nest', 1, '{\"id\":\"ProductCategoriesWidget\",\"name\":\"\\u0627\\u0644\\u0641\\u0626\\u0627\\u062a\"}', '2026-01-10 19:58:39', '2026-01-10 19:58:39'),
(38, 'TrendingProductsWidget', 'primary_sidebar', 'nest', 2, '{\"id\":\"TrendingProductsWidget\",\"name\":\"\\u0627\\u0644\\u0631\\u0627\\u0626\\u062c \\u0627\\u0644\\u0622\\u0646\",\"number_display\":4}', '2026-01-10 19:58:39', '2026-01-10 19:58:39'),
(39, 'TagsWidget', 'primary_sidebar', 'nest', 4, '{\"id\":\"TagsWidget\",\"name\":\"\\u0627\\u0644\\u0648\\u0633\\u0648\\u0645 \\u0627\\u0644\\u0634\\u0627\\u0626\\u0639\\u0629\"}', '2026-01-10 19:58:39', '2026-01-10 19:58:39'),
(45, 'SiteFeaturesWidget', 'pre_footer_sidebar', 'nest', 1, '{\"id\":\"SiteFeaturesWidget\",\"title\":\"\\u0645\\u0645\\u064a\\u0632\\u0627\\u062a \\u0627\\u0644\\u0645\\u0648\\u0642\\u0639\",\"data\":{\"1\":{\"icon\":\"general\\/icon-1.png\",\"title\":\"\\u0623\\u0641\\u0636\\u0644 \\u0627\\u0644\\u0623\\u0633\\u0639\\u0627\\u0631 \\u0648\\u0627\\u0644\\u0639\\u0631\\u0648\\u0636\",\"subtitle\":\"\\u0637\\u0644\\u0628\\u0627\\u062a \\u0628\\u0642\\u064a\\u0645\\u0629 50 \\u062f\\u0648\\u0644\\u0627\\u0631 \\u0623\\u0648 \\u0623\\u0643\\u062b\\u0631\"},\"2\":{\"icon\":\"general\\/icon-2.png\",\"title\":\"\\u062a\\u0648\\u0635\\u064a\\u0644 \\u0645\\u062c\\u0627\\u0646\\u064a\",\"subtitle\":\"\\u062e\\u062f\\u0645\\u0627\\u062a \\u0645\\u0630\\u0647\\u0644\\u0629 \\u0639\\u0644\\u0649 \\u0645\\u062f\\u0627\\u0631 \\u0627\\u0644\\u0633\\u0627\\u0639\\u0629\"},\"3\":{\"icon\":\"general\\/icon-3.png\",\"title\":\"\\u0635\\u0641\\u0642\\u0629 \\u064a\\u0648\\u0645\\u064a\\u0629 \\u0631\\u0627\\u0626\\u0639\\u0629\",\"subtitle\":\"\\u0639\\u0646\\u062f \\u0627\\u0644\\u062a\\u0633\\u062c\\u064a\\u0644\"},\"4\":{\"icon\":\"general\\/icon-4.png\",\"title\":\"\\u062a\\u0634\\u0643\\u064a\\u0644\\u0629 \\u0648\\u0627\\u0633\\u0639\\u0629\",\"subtitle\":\"\\u062e\\u0635\\u0648\\u0645\\u0627\\u062a \\u0636\\u062e\\u0645\\u0629\"},\"5\":{\"icon\":\"general\\/icon-5.png\",\"title\":\"\\u0625\\u0631\\u062c\\u0627\\u0639 \\u0633\\u0647\\u0644\",\"subtitle\":\"\\u062e\\u0644\\u0627\\u0644 30 \\u064a\\u0648\\u0645\"}}}', '2026-01-10 19:58:39', '2026-01-10 19:58:39'),
(61, 'ProductCategoriesWidget', 'product_sidebar', 'nest-en_US', 0, '{\"id\":\"ProductCategoriesWidget\",\"name\":\"Categories\",\"number_display\":\"10\",\"categories\":[\"1\"]}', '2026-01-10 21:07:57', '2026-01-10 21:07:57'),
(40, 'AdsWidget', 'primary_sidebar', 'nest', 5, '{\"id\":\"AdsWidget\",\"name\":\"\\u0639\\u0636\\u0648\\u064a\",\"ads_key\":\"IZ6WU8KUALYI\"}', '2026-01-10 19:58:39', '2026-01-10 19:58:39'),
(41, 'ProductCategoriesWidget', 'product_sidebar', 'nest', 1, '{\"id\":\"ProductCategoriesWidget\",\"name\":\"\\u0627\\u0644\\u0641\\u0626\\u0627\\u062a\"}', '2026-01-10 19:58:39', '2026-01-10 19:58:39'),
(42, 'NewProductsWidget', 'product_sidebar', 'nest', 3, '{\"id\":\"NewProductsWidget\",\"name\":\"\\u0645\\u0646\\u062a\\u062c\\u0627\\u062a \\u062c\\u062f\\u064a\\u062f\\u0629\"}', '2026-01-10 19:58:39', '2026-01-10 19:58:39'),
(43, 'AdsWidget', 'product_sidebar', 'nest', 4, '{\"id\":\"AdsWidget\",\"name\":\"Oganic\",\"ads_key\":\"IZ6WU8KUALYI\"}', '2026-01-10 19:58:39', '2026-01-10 19:58:39'),
(44, 'NewsletterWidget', 'pre_footer_sidebar', 'nest', 0, '{\"id\":\"NewsletterWidget\",\"title\":\"\\u0627\\u0628\\u0642 \\u0641\\u064a \\u0627\\u0644\\u0645\\u0646\\u0632\\u0644 \\u0648\\u0627\\u062d\\u0635\\u0644 \\u0639\\u0644\\u0649 \\u0627\\u062d\\u062a\\u064a\\u0627\\u062c\\u0627\\u062a\\u0643 \\u0627\\u0644\\u064a\\u0648\\u0645\\u064a\\u0629 <br \\/>\\u0645\\u0646 \\u0645\\u062a\\u062c\\u0631\\u0646\\u0627\",\"subtitle\":\"\\u0627\\u0628\\u062f\\u0623 \\u062a\\u0633\\u0648\\u0642\\u0643 \\u0627\\u0644\\u064a\\u0648\\u0645\\u064a \\u0645\\u0639 <span>\\u0634\\u0627\\u0631\\u0639 \\u0639\\u0628\\u062f\\u0627\\u0644\\u0639\\u0632\\u064a\\u0632<\\/span>\",\"image\":\"general\\/newsletter-image.png\",\"background_image\":\"general\\/newsletter-background-image.png\"}', '2026-01-10 19:58:39', '2026-01-10 19:58:39');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activations`
--
ALTER TABLE `activations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activations_user_id_index` (`user_id`);

--
-- Indexes for table `admin_notifications`
--
ALTER TABLE `admin_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ads`
--
ALTER TABLE `ads`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ads_key_unique` (`key`);

--
-- Indexes for table `ads_translations`
--
ALTER TABLE `ads_translations`
  ADD PRIMARY KEY (`lang_code`,`ads_id`);

--
-- Indexes for table `audit_histories`
--
ALTER TABLE `audit_histories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `audit_histories_user_id_index` (`user_id`),
  ADD KEY `audit_histories_module_index` (`module`);

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
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_parent_id_index` (`parent_id`),
  ADD KEY `categories_status_index` (`status`),
  ADD KEY `categories_created_at_index` (`created_at`);

--
-- Indexes for table `categories_translations`
--
ALTER TABLE `categories_translations`
  ADD PRIMARY KEY (`lang_code`,`categories_id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cities_slug_unique` (`slug`),
  ADD KEY `idx_cities_name` (`name`),
  ADD KEY `idx_cities_state_status` (`state_id`,`status`),
  ADD KEY `idx_cities_status` (`status`),
  ADD KEY `idx_cities_state_id` (`state_id`);

--
-- Indexes for table `cities_translations`
--
ALTER TABLE `cities_translations`
  ADD PRIMARY KEY (`lang_code`,`cities_id`),
  ADD KEY `idx_cities_trans_city_lang` (`cities_id`,`lang_code`),
  ADD KEY `idx_cities_trans_name` (`name`),
  ADD KEY `idx_cities_trans_cities_id` (`cities_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_custom_fields`
--
ALTER TABLE `contact_custom_fields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_custom_fields_translations`
--
ALTER TABLE `contact_custom_fields_translations`
  ADD PRIMARY KEY (`lang_code`,`contact_custom_fields_id`);

--
-- Indexes for table `contact_custom_field_options`
--
ALTER TABLE `contact_custom_field_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_custom_field_options_translations`
--
ALTER TABLE `contact_custom_field_options_translations`
  ADD PRIMARY KEY (`lang_code`,`contact_custom_field_options_id`);

--
-- Indexes for table `contact_replies`
--
ALTER TABLE `contact_replies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_countries_name` (`name`),
  ADD KEY `idx_countries_status` (`status`);

--
-- Indexes for table `countries_translations`
--
ALTER TABLE `countries_translations`
  ADD PRIMARY KEY (`lang_code`,`countries_id`),
  ADD KEY `idx_countries_trans_country_lang` (`countries_id`,`lang_code`),
  ADD KEY `idx_countries_trans_name` (`name`),
  ADD KEY `idx_countries_trans_countries_id` (`countries_id`);

--
-- Indexes for table `dashboard_widgets`
--
ALTER TABLE `dashboard_widgets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dashboard_widget_settings`
--
ALTER TABLE `dashboard_widget_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dashboard_widget_settings_user_id_index` (`user_id`),
  ADD KEY `dashboard_widget_settings_widget_id_index` (`widget_id`);

--
-- Indexes for table `device_tokens`
--
ALTER TABLE `device_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `device_tokens_token_unique` (`token`),
  ADD KEY `device_tokens_user_type_user_id_index` (`user_type`,`user_id`),
  ADD KEY `device_tokens_platform_is_active_index` (`platform`,`is_active`),
  ADD KEY `device_tokens_is_active_index` (`is_active`);

--
-- Indexes for table `ec_abandoned_carts`
--
ALTER TABLE `ec_abandoned_carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ec_abandoned_carts_abandoned_at_is_recovered_index` (`abandoned_at`,`is_recovered`),
  ADD KEY `ec_abandoned_carts_created_at_is_recovered_index` (`created_at`,`is_recovered`),
  ADD KEY `ec_abandoned_carts_customer_id_index` (`customer_id`),
  ADD KEY `ec_abandoned_carts_session_id_index` (`session_id`),
  ADD KEY `ec_abandoned_carts_email_index` (`email`),
  ADD KEY `ec_abandoned_carts_recovered_order_id_index` (`recovered_order_id`);

--
-- Indexes for table `ec_brands`
--
ALTER TABLE `ec_brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_brands_translations`
--
ALTER TABLE `ec_brands_translations`
  ADD PRIMARY KEY (`lang_code`,`ec_brands_id`);

--
-- Indexes for table `ec_cart`
--
ALTER TABLE `ec_cart`
  ADD PRIMARY KEY (`identifier`,`instance`);

--
-- Indexes for table `ec_currencies`
--
ALTER TABLE `ec_currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_customers`
--
ALTER TABLE `ec_customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_customer_addresses`
--
ALTER TABLE `ec_customer_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_customer_deletion_requests`
--
ALTER TABLE `ec_customer_deletion_requests`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ec_customer_deletion_requests_token_unique` (`token`);

--
-- Indexes for table `ec_customer_password_resets`
--
ALTER TABLE `ec_customer_password_resets`
  ADD KEY `ec_customer_password_resets_email_index` (`email`),
  ADD KEY `ec_customer_password_resets_token_index` (`token`);

--
-- Indexes for table `ec_customer_recently_viewed_products`
--
ALTER TABLE `ec_customer_recently_viewed_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_customer_used_coupons`
--
ALTER TABLE `ec_customer_used_coupons`
  ADD PRIMARY KEY (`discount_id`,`customer_id`);

--
-- Indexes for table `ec_discounts`
--
ALTER TABLE `ec_discounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ec_discounts_code_unique` (`code`);

--
-- Indexes for table `ec_discount_customers`
--
ALTER TABLE `ec_discount_customers`
  ADD PRIMARY KEY (`discount_id`,`customer_id`);

--
-- Indexes for table `ec_discount_products`
--
ALTER TABLE `ec_discount_products`
  ADD PRIMARY KEY (`discount_id`,`product_id`);

--
-- Indexes for table `ec_discount_product_categories`
--
ALTER TABLE `ec_discount_product_categories`
  ADD PRIMARY KEY (`discount_id`,`product_category_id`);

--
-- Indexes for table `ec_discount_product_collections`
--
ALTER TABLE `ec_discount_product_collections`
  ADD PRIMARY KEY (`discount_id`,`product_collection_id`);

--
-- Indexes for table `ec_flash_sales`
--
ALTER TABLE `ec_flash_sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_flash_sales_translations`
--
ALTER TABLE `ec_flash_sales_translations`
  ADD PRIMARY KEY (`lang_code`,`ec_flash_sales_id`);

--
-- Indexes for table `ec_global_options`
--
ALTER TABLE `ec_global_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_global_options_translations`
--
ALTER TABLE `ec_global_options_translations`
  ADD PRIMARY KEY (`lang_code`,`ec_global_options_id`);

--
-- Indexes for table `ec_global_option_value`
--
ALTER TABLE `ec_global_option_value`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_global_option_value_translations`
--
ALTER TABLE `ec_global_option_value_translations`
  ADD PRIMARY KEY (`lang_code`,`ec_global_option_value_id`);

--
-- Indexes for table `ec_grouped_products`
--
ALTER TABLE `ec_grouped_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_invoices`
--
ALTER TABLE `ec_invoices`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ec_invoices_code_unique` (`code`),
  ADD KEY `ec_invoices_reference_type_reference_id_index` (`reference_type`,`reference_id`),
  ADD KEY `ec_invoices_payment_id_index` (`payment_id`),
  ADD KEY `ec_invoices_status_index` (`status`);

--
-- Indexes for table `ec_invoice_items`
--
ALTER TABLE `ec_invoice_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ec_invoice_items_reference_type_reference_id_index` (`reference_type`,`reference_id`);

--
-- Indexes for table `ec_options`
--
ALTER TABLE `ec_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_options_translations`
--
ALTER TABLE `ec_options_translations`
  ADD PRIMARY KEY (`lang_code`,`ec_options_id`);

--
-- Indexes for table `ec_option_value`
--
ALTER TABLE `ec_option_value`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_option_value_translations`
--
ALTER TABLE `ec_option_value_translations`
  ADD PRIMARY KEY (`lang_code`,`ec_option_value_id`);

--
-- Indexes for table `ec_orders`
--
ALTER TABLE `ec_orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ec_orders_code_unique` (`code`),
  ADD KEY `ec_orders_user_id_status_created_at_index` (`user_id`,`status`,`created_at`);

--
-- Indexes for table `ec_order_addresses`
--
ALTER TABLE `ec_order_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_order_histories`
--
ALTER TABLE `ec_order_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_order_product`
--
ALTER TABLE `ec_order_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_order_referrals`
--
ALTER TABLE `ec_order_referrals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ec_order_referrals_order_id_index` (`order_id`);

--
-- Indexes for table `ec_order_returns`
--
ALTER TABLE `ec_order_returns`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ec_order_returns_code_unique` (`code`);

--
-- Indexes for table `ec_order_return_histories`
--
ALTER TABLE `ec_order_return_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_order_return_items`
--
ALTER TABLE `ec_order_return_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_order_tax_information`
--
ALTER TABLE `ec_order_tax_information`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ec_order_tax_information_order_id_index` (`order_id`);

--
-- Indexes for table `ec_products`
--
ALTER TABLE `ec_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ec_products_brand_id_status_is_variation_created_at_index` (`brand_id`,`status`,`is_variation`,`created_at`),
  ADD KEY `sale_type_index` (`sale_type`),
  ADD KEY `start_date_index` (`start_date`),
  ADD KEY `end_date_index` (`end_date`),
  ADD KEY `sale_price_index` (`sale_price`),
  ADD KEY `is_variation_index` (`is_variation`),
  ADD KEY `ec_products_sku_index` (`sku`),
  ADD KEY `idx_products_export` (`id`,`is_variation`),
  ADD KEY `idx_variation_name_id` (`is_variation`,`name`,`id`),
  ADD KEY `ec_products_variations_count_index` (`variations_count`),
  ADD KEY `ec_products_reviews_count_index` (`reviews_count`),
  ADD KEY `ec_products_reviews_avg_index` (`reviews_avg`),
  ADD KEY `ec_products_slug_index` (`slug`),
  ADD KEY `idx_products_status_variation` (`status`,`is_variation`,`id`),
  ADD KEY `idx_products_price_sale` (`sale_type`,`sale_price`,`price`),
  ADD KEY `idx_products_order_created` (`order`,`created_at`),
  ADD KEY `idx_products_stock` (`with_storehouse_management`,`stock_status`,`quantity`),
  ADD KEY `idx_store_variation_status` (`store_id`,`is_variation`,`status`);

--
-- Indexes for table `ec_products_translations`
--
ALTER TABLE `ec_products_translations`
  ADD PRIMARY KEY (`lang_code`,`ec_products_id`);

--
-- Indexes for table `ec_product_attributes`
--
ALTER TABLE `ec_product_attributes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attribute_set_status_index` (`attribute_set_id`),
  ADD KEY `idx_attribute_set_id` (`attribute_set_id`),
  ADD KEY `idx_attribute_set_order_id` (`attribute_set_id`,`order`,`id`);

--
-- Indexes for table `ec_product_attributes_translations`
--
ALTER TABLE `ec_product_attributes_translations`
  ADD PRIMARY KEY (`lang_code`,`ec_product_attributes_id`);

--
-- Indexes for table `ec_product_attribute_sets`
--
ALTER TABLE `ec_product_attribute_sets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_order_id` (`order`,`id`);

--
-- Indexes for table `ec_product_attribute_sets_translations`
--
ALTER TABLE `ec_product_attribute_sets_translations`
  ADD PRIMARY KEY (`lang_code`,`ec_product_attribute_sets_id`);

--
-- Indexes for table `ec_product_categories`
--
ALTER TABLE `ec_product_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ec_product_categories_parent_id_status_created_at_index` (`parent_id`,`status`,`created_at`),
  ADD KEY `ec_product_categories_parent_id_status_index` (`parent_id`,`status`),
  ADD KEY `idx_categories_status_order` (`status`,`order`),
  ADD KEY `idx_categories_order` (`order`),
  ADD KEY `ec_product_categories_slug_index` (`slug`);

--
-- Indexes for table `ec_product_categories_translations`
--
ALTER TABLE `ec_product_categories_translations`
  ADD PRIMARY KEY (`lang_code`,`ec_product_categories_id`);

--
-- Indexes for table `ec_product_categorizables`
--
ALTER TABLE `ec_product_categorizables`
  ADD PRIMARY KEY (`category_id`,`reference_id`,`reference_type`),
  ADD KEY `ec_product_categorizables_category_id_index` (`category_id`),
  ADD KEY `ec_product_categorizables_reference_id_index` (`reference_id`),
  ADD KEY `ec_product_categorizables_reference_type_index` (`reference_type`);

--
-- Indexes for table `ec_product_category_product`
--
ALTER TABLE `ec_product_category_product`
  ADD PRIMARY KEY (`product_id`,`category_id`),
  ADD KEY `ec_product_category_product_category_id_index` (`category_id`),
  ADD KEY `ec_product_category_product_product_id_index` (`product_id`),
  ADD KEY `idx_product_category` (`product_id`,`category_id`),
  ADD KEY `idx_product_category_composite` (`product_id`,`category_id`);

--
-- Indexes for table `ec_product_collections`
--
ALTER TABLE `ec_product_collections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_product_collections_translations`
--
ALTER TABLE `ec_product_collections_translations`
  ADD PRIMARY KEY (`lang_code`,`ec_product_collections_id`);

--
-- Indexes for table `ec_product_collection_products`
--
ALTER TABLE `ec_product_collection_products`
  ADD PRIMARY KEY (`product_id`,`product_collection_id`),
  ADD KEY `ec_product_collection_products_product_collection_id_index` (`product_collection_id`),
  ADD KEY `ec_product_collection_products_product_id_index` (`product_id`);

--
-- Indexes for table `ec_product_cross_sale_relations`
--
ALTER TABLE `ec_product_cross_sale_relations`
  ADD PRIMARY KEY (`from_product_id`,`to_product_id`),
  ADD KEY `ec_product_cross_sale_relations_from_product_id_index` (`from_product_id`),
  ADD KEY `ec_product_cross_sale_relations_to_product_id_index` (`to_product_id`),
  ADD KEY `idx_product_cross_sale` (`from_product_id`,`to_product_id`);

--
-- Indexes for table `ec_product_files`
--
ALTER TABLE `ec_product_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ec_product_files_product_id_index` (`product_id`);

--
-- Indexes for table `ec_product_labels`
--
ALTER TABLE `ec_product_labels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_product_labels_translations`
--
ALTER TABLE `ec_product_labels_translations`
  ADD PRIMARY KEY (`lang_code`,`ec_product_labels_id`);

--
-- Indexes for table `ec_product_label_products`
--
ALTER TABLE `ec_product_label_products`
  ADD PRIMARY KEY (`product_label_id`,`product_id`),
  ADD KEY `ec_product_label_products_product_label_id_index` (`product_label_id`),
  ADD KEY `ec_product_label_products_product_id_index` (`product_id`);

--
-- Indexes for table `ec_product_license_codes`
--
ALTER TABLE `ec_product_license_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ec_product_license_codes_product_id_status_index` (`product_id`,`status`);

--
-- Indexes for table `ec_product_related_relations`
--
ALTER TABLE `ec_product_related_relations`
  ADD PRIMARY KEY (`from_product_id`,`to_product_id`),
  ADD KEY `ec_product_related_relations_from_product_id_index` (`from_product_id`),
  ADD KEY `ec_product_related_relations_to_product_id_index` (`to_product_id`);

--
-- Indexes for table `ec_product_specification_attribute`
--
ALTER TABLE `ec_product_specification_attribute`
  ADD PRIMARY KEY (`product_id`,`attribute_id`);

--
-- Indexes for table `ec_product_specification_attribute_translations`
--
ALTER TABLE `ec_product_specification_attribute_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `psat_unique` (`product_id`,`attribute_id`,`lang_code`),
  ADD KEY `psat_product_attribute_index` (`product_id`,`attribute_id`),
  ADD KEY `psat_product_id_index` (`product_id`),
  ADD KEY `psat_attribute_id_index` (`attribute_id`);

--
-- Indexes for table `ec_product_tags`
--
ALTER TABLE `ec_product_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_product_tags_translations`
--
ALTER TABLE `ec_product_tags_translations`
  ADD PRIMARY KEY (`lang_code`,`ec_product_tags_id`);

--
-- Indexes for table `ec_product_tag_product`
--
ALTER TABLE `ec_product_tag_product`
  ADD PRIMARY KEY (`product_id`,`tag_id`),
  ADD KEY `ec_product_tag_product_product_id_index` (`product_id`),
  ADD KEY `ec_product_tag_product_tag_id_index` (`tag_id`);

--
-- Indexes for table `ec_product_up_sale_relations`
--
ALTER TABLE `ec_product_up_sale_relations`
  ADD PRIMARY KEY (`from_product_id`,`to_product_id`),
  ADD KEY `ec_product_up_sale_relations_from_product_id_index` (`from_product_id`),
  ADD KEY `ec_product_up_sale_relations_to_product_id_index` (`to_product_id`);

--
-- Indexes for table `ec_product_variations`
--
ALTER TABLE `ec_product_variations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ec_product_variations_product_id_configurable_product_id_unique` (`product_id`,`configurable_product_id`),
  ADD KEY `configurable_product_index` (`product_id`,`configurable_product_id`),
  ADD KEY `idx_configurable_product_id` (`configurable_product_id`),
  ADD KEY `idx_product_variations_config` (`configurable_product_id`,`is_default`);

--
-- Indexes for table `ec_product_variation_items`
--
ALTER TABLE `ec_product_variation_items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ec_product_variation_items_attribute_id_variation_id_unique` (`attribute_id`,`variation_id`),
  ADD KEY `attribute_variation_index` (`attribute_id`,`variation_id`),
  ADD KEY `idx_variation_id` (`variation_id`),
  ADD KEY `idx_variation_attribute_covering` (`variation_id`,`attribute_id`);

--
-- Indexes for table `ec_product_views`
--
ALTER TABLE `ec_product_views`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ec_product_views_product_id_date_unique` (`product_id`,`date`),
  ADD KEY `ec_product_views_product_id_index` (`product_id`);

--
-- Indexes for table `ec_product_with_attribute_set`
--
ALTER TABLE `ec_product_with_attribute_set`
  ADD PRIMARY KEY (`product_id`,`attribute_set_id`);

--
-- Indexes for table `ec_reviews`
--
ALTER TABLE `ec_reviews`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ec_reviews_product_id_customer_id_unique` (`product_id`,`customer_id`),
  ADD KEY `ec_reviews_product_id_customer_id_status_created_at_index` (`product_id`,`customer_id`,`status`,`created_at`),
  ADD KEY `review_relation_index` (`product_id`,`customer_id`,`status`);

--
-- Indexes for table `ec_review_replies`
--
ALTER TABLE `ec_review_replies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ec_review_replies_review_id_user_id_unique` (`review_id`,`user_id`);

--
-- Indexes for table `ec_shared_wishlists`
--
ALTER TABLE `ec_shared_wishlists`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ec_shared_wishlists_code_unique` (`code`);

--
-- Indexes for table `ec_shipments`
--
ALTER TABLE `ec_shipments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_shipment_histories`
--
ALTER TABLE `ec_shipment_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_shipping`
--
ALTER TABLE `ec_shipping`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_shipping_rules`
--
ALTER TABLE `ec_shipping_rules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_shipping_rule_items`
--
ALTER TABLE `ec_shipping_rule_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_specification_attributes`
--
ALTER TABLE `ec_specification_attributes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ec_specification_attributes_author_type_author_id_index` (`author_type`,`author_id`);

--
-- Indexes for table `ec_specification_attributes_translations`
--
ALTER TABLE `ec_specification_attributes_translations`
  ADD PRIMARY KEY (`lang_code`,`ec_specification_attributes_id`);

--
-- Indexes for table `ec_specification_groups`
--
ALTER TABLE `ec_specification_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ec_specification_groups_author_type_author_id_index` (`author_type`,`author_id`);

--
-- Indexes for table `ec_specification_groups_translations`
--
ALTER TABLE `ec_specification_groups_translations`
  ADD PRIMARY KEY (`lang_code`,`ec_specification_groups_id`);

--
-- Indexes for table `ec_specification_tables`
--
ALTER TABLE `ec_specification_tables`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ec_specification_tables_author_type_author_id_index` (`author_type`,`author_id`);

--
-- Indexes for table `ec_specification_tables_translations`
--
ALTER TABLE `ec_specification_tables_translations`
  ADD PRIMARY KEY (`lang_code`,`ec_specification_tables_id`);

--
-- Indexes for table `ec_specification_table_group`
--
ALTER TABLE `ec_specification_table_group`
  ADD PRIMARY KEY (`table_id`,`group_id`);

--
-- Indexes for table `ec_store_locators`
--
ALTER TABLE `ec_store_locators`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_taxes`
--
ALTER TABLE `ec_taxes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_taxes_translations`
--
ALTER TABLE `ec_taxes_translations`
  ADD PRIMARY KEY (`lang_code`,`ec_taxes_id`);

--
-- Indexes for table `ec_tax_products`
--
ALTER TABLE `ec_tax_products`
  ADD PRIMARY KEY (`product_id`,`tax_id`),
  ADD KEY `ec_tax_products_tax_id_index` (`tax_id`),
  ADD KEY `ec_tax_products_product_id_index` (`product_id`);

--
-- Indexes for table `ec_tax_rules`
--
ALTER TABLE `ec_tax_rules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_wish_lists`
--
ALTER TABLE `ec_wish_lists`
  ADD PRIMARY KEY (`customer_id`,`product_id`),
  ADD KEY `wishlist_relation_index` (`product_id`,`customer_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqs_translations`
--
ALTER TABLE `faqs_translations`
  ADD PRIMARY KEY (`lang_code`,`faqs_id`);

--
-- Indexes for table `faq_categories`
--
ALTER TABLE `faq_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faq_categories_translations`
--
ALTER TABLE `faq_categories_translations`
  ADD PRIMARY KEY (`lang_code`,`faq_categories_id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`lang_id`),
  ADD KEY `lang_locale_index` (`lang_locale`),
  ADD KEY `lang_code_index` (`lang_code`),
  ADD KEY `lang_is_default_index` (`lang_is_default`);

--
-- Indexes for table `language_meta`
--
ALTER TABLE `language_meta`
  ADD PRIMARY KEY (`lang_meta_id`),
  ADD KEY `language_meta_reference_id_index` (`reference_id`),
  ADD KEY `meta_code_index` (`lang_meta_code`),
  ADD KEY `meta_origin_index` (`lang_meta_origin`),
  ADD KEY `meta_reference_type_index` (`reference_type`);

--
-- Indexes for table `media_files`
--
ALTER TABLE `media_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_files_user_id_index` (`user_id`),
  ADD KEY `media_files_index` (`folder_id`,`user_id`,`created_at`);

--
-- Indexes for table `media_folders`
--
ALTER TABLE `media_folders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_folders_user_id_index` (`user_id`),
  ADD KEY `media_folders_index` (`parent_id`,`user_id`,`created_at`);

--
-- Indexes for table `media_settings`
--
ALTER TABLE `media_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_slug_unique` (`slug`);

--
-- Indexes for table `menu_locations`
--
ALTER TABLE `menu_locations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_locations_menu_id_created_at_index` (`menu_id`,`created_at`);

--
-- Indexes for table `menu_nodes`
--
ALTER TABLE `menu_nodes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_nodes_menu_id_index` (`menu_id`),
  ADD KEY `menu_nodes_parent_id_index` (`parent_id`),
  ADD KEY `reference_id` (`reference_id`),
  ADD KEY `reference_type` (`reference_type`);

--
-- Indexes for table `meta_boxes`
--
ALTER TABLE `meta_boxes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `meta_boxes_reference_id_index` (`reference_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mp_category_sale_commissions`
--
ALTER TABLE `mp_category_sale_commissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mp_category_sale_commissions_product_category_id_unique` (`product_category_id`);

--
-- Indexes for table `mp_customer_revenues`
--
ALTER TABLE `mp_customer_revenues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mp_customer_withdrawals`
--
ALTER TABLE `mp_customer_withdrawals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mp_messages`
--
ALTER TABLE `mp_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mp_stores`
--
ALTER TABLE `mp_stores`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mp_stores_translations`
--
ALTER TABLE `mp_stores_translations`
  ADD PRIMARY KEY (`lang_code`,`mp_stores_id`);

--
-- Indexes for table `mp_vendor_info`
--
ALTER TABLE `mp_vendor_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletters`
--
ALTER TABLE `newsletters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pages_user_id_index` (`user_id`);

--
-- Indexes for table `pages_translations`
--
ALTER TABLE `pages_translations`
  ADD PRIMARY KEY (`lang_code`,`pages_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_logs`
--
ALTER TABLE `payment_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_status_index` (`status`),
  ADD KEY `posts_author_id_index` (`author_id`),
  ADD KEY `posts_author_type_index` (`author_type`),
  ADD KEY `posts_created_at_index` (`created_at`);

--
-- Indexes for table `posts_translations`
--
ALTER TABLE `posts_translations`
  ADD PRIMARY KEY (`lang_code`,`posts_id`);

--
-- Indexes for table `post_categories`
--
ALTER TABLE `post_categories`
  ADD KEY `post_categories_category_id_index` (`category_id`),
  ADD KEY `post_categories_post_id_index` (`post_id`);

--
-- Indexes for table `post_tags`
--
ALTER TABLE `post_tags`
  ADD KEY `post_tags_tag_id_index` (`tag_id`),
  ADD KEY `post_tags_post_id_index` (`post_id`);

--
-- Indexes for table `push_notifications`
--
ALTER TABLE `push_notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `push_notifications_type_created_at_index` (`type`,`created_at`),
  ADD KEY `push_notifications_status_scheduled_at_index` (`status`,`scheduled_at`),
  ADD KEY `push_notifications_created_by_index` (`created_by`);

--
-- Indexes for table `push_notification_recipients`
--
ALTER TABLE `push_notification_recipients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pnr_notification_user_index` (`push_notification_id`,`user_type`,`user_id`),
  ADD KEY `pnr_user_status_index` (`user_type`,`user_id`,`status`),
  ADD KEY `pnr_user_read_index` (`user_type`,`user_id`,`read_at`),
  ADD KEY `pnr_status_index` (`status`);

--
-- Indexes for table `revisions`
--
ALTER TABLE `revisions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `revisions_revisionable_id_revisionable_type_index` (`revisionable_id`,`revisionable_type`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_slug_unique` (`slug`),
  ADD KEY `roles_created_by_index` (`created_by`),
  ADD KEY `roles_updated_by_index` (`updated_by`);

--
-- Indexes for table `role_users`
--
ALTER TABLE `role_users`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `role_users_user_id_index` (`user_id`),
  ADD KEY `role_users_role_id_index` (`role_id`);

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
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `simple_sliders`
--
ALTER TABLE `simple_sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `simple_slider_items`
--
ALTER TABLE `simple_slider_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slugs`
--
ALTER TABLE `slugs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `slugs_reference_id_index` (`reference_id`),
  ADD KEY `slugs_key_index` (`key`),
  ADD KEY `slugs_prefix_index` (`prefix`),
  ADD KEY `slugs_reference_index` (`reference_id`,`reference_type`),
  ADD KEY `idx_slugs_reference` (`reference_type`,`reference_id`);

--
-- Indexes for table `slugs_translations`
--
ALTER TABLE `slugs_translations`
  ADD PRIMARY KEY (`lang_code`,`slugs_id`);

--
-- Indexes for table `social_logins`
--
ALTER TABLE `social_logins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `social_logins_provider_provider_id_unique` (`provider`,`provider_id`),
  ADD KEY `social_logins_user_type_user_id_index` (`user_type`,`user_id`),
  ADD KEY `social_logins_user_id_user_type_index` (`user_id`,`user_type`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `states_slug_unique` (`slug`),
  ADD KEY `idx_states_name` (`name`),
  ADD KEY `idx_states_status` (`status`),
  ADD KEY `idx_states_country_id` (`country_id`);

--
-- Indexes for table `states_translations`
--
ALTER TABLE `states_translations`
  ADD PRIMARY KEY (`lang_code`,`states_id`),
  ADD KEY `idx_states_trans_state_lang` (`states_id`,`lang_code`),
  ADD KEY `idx_states_trans_name` (`name`),
  ADD KEY `idx_states_trans_states_id` (`states_id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags_translations`
--
ALTER TABLE `tags_translations`
  ADD PRIMARY KEY (`lang_code`,`tags_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- Indexes for table `user_meta`
--
ALTER TABLE `user_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_meta_user_id_index` (`user_id`);

--
-- Indexes for table `user_settings`
--
ALTER TABLE `user_settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_settings_user_type_user_id_key_unique` (`user_type`,`user_id`,`key`),
  ADD KEY `user_settings_user_type_user_id_index` (`user_type`,`user_id`),
  ADD KEY `user_settings_key_index` (`key`);

--
-- Indexes for table `widgets`
--
ALTER TABLE `widgets`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activations`
--
ALTER TABLE `activations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `admin_notifications`
--
ALTER TABLE `admin_notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ads`
--
ALTER TABLE `ads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `audit_histories`
--
ALTER TABLE `audit_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `contact_custom_fields`
--
ALTER TABLE `contact_custom_fields`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact_custom_field_options`
--
ALTER TABLE `contact_custom_field_options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact_replies`
--
ALTER TABLE `contact_replies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dashboard_widgets`
--
ALTER TABLE `dashboard_widgets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `dashboard_widget_settings`
--
ALTER TABLE `dashboard_widget_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `device_tokens`
--
ALTER TABLE `device_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_abandoned_carts`
--
ALTER TABLE `ec_abandoned_carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_brands`
--
ALTER TABLE `ec_brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `ec_currencies`
--
ALTER TABLE `ec_currencies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ec_customers`
--
ALTER TABLE `ec_customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `ec_customer_addresses`
--
ALTER TABLE `ec_customer_addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `ec_customer_deletion_requests`
--
ALTER TABLE `ec_customer_deletion_requests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_customer_recently_viewed_products`
--
ALTER TABLE `ec_customer_recently_viewed_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_discounts`
--
ALTER TABLE `ec_discounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `ec_flash_sales`
--
ALTER TABLE `ec_flash_sales`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ec_global_options`
--
ALTER TABLE `ec_global_options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ec_global_option_value`
--
ALTER TABLE `ec_global_option_value`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `ec_grouped_products`
--
ALTER TABLE `ec_grouped_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_invoices`
--
ALTER TABLE `ec_invoices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_invoice_items`
--
ALTER TABLE `ec_invoice_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_options`
--
ALTER TABLE `ec_options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_option_value`
--
ALTER TABLE `ec_option_value`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_orders`
--
ALTER TABLE `ec_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ec_order_addresses`
--
ALTER TABLE `ec_order_addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_order_histories`
--
ALTER TABLE `ec_order_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_order_product`
--
ALTER TABLE `ec_order_product`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ec_order_referrals`
--
ALTER TABLE `ec_order_referrals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_order_returns`
--
ALTER TABLE `ec_order_returns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_order_return_histories`
--
ALTER TABLE `ec_order_return_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_order_return_items`
--
ALTER TABLE `ec_order_return_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_order_tax_information`
--
ALTER TABLE `ec_order_tax_information`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_products`
--
ALTER TABLE `ec_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `ec_product_attributes`
--
ALTER TABLE `ec_product_attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `ec_product_attribute_sets`
--
ALTER TABLE `ec_product_attribute_sets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ec_product_categories`
--
ALTER TABLE `ec_product_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `ec_product_collections`
--
ALTER TABLE `ec_product_collections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ec_product_files`
--
ALTER TABLE `ec_product_files`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `ec_product_labels`
--
ALTER TABLE `ec_product_labels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ec_product_license_codes`
--
ALTER TABLE `ec_product_license_codes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_product_specification_attribute_translations`
--
ALTER TABLE `ec_product_specification_attribute_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_product_tags`
--
ALTER TABLE `ec_product_tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ec_product_variations`
--
ALTER TABLE `ec_product_variations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `ec_product_variation_items`
--
ALTER TABLE `ec_product_variation_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `ec_product_views`
--
ALTER TABLE `ec_product_views`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT for table `ec_reviews`
--
ALTER TABLE `ec_reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=239;

--
-- AUTO_INCREMENT for table `ec_review_replies`
--
ALTER TABLE `ec_review_replies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_shared_wishlists`
--
ALTER TABLE `ec_shared_wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_shipments`
--
ALTER TABLE `ec_shipments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_shipment_histories`
--
ALTER TABLE `ec_shipment_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_shipping`
--
ALTER TABLE `ec_shipping`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ec_shipping_rules`
--
ALTER TABLE `ec_shipping_rules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ec_shipping_rule_items`
--
ALTER TABLE `ec_shipping_rule_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_specification_attributes`
--
ALTER TABLE `ec_specification_attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `ec_specification_groups`
--
ALTER TABLE `ec_specification_groups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ec_specification_tables`
--
ALTER TABLE `ec_specification_tables`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ec_store_locators`
--
ALTER TABLE `ec_store_locators`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ec_taxes`
--
ALTER TABLE `ec_taxes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ec_tax_rules`
--
ALTER TABLE `ec_tax_rules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `faq_categories`
--
ALTER TABLE `faq_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `lang_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `language_meta`
--
ALTER TABLE `language_meta`
  MODIFY `lang_meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `media_files`
--
ALTER TABLE `media_files`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=194;

--
-- AUTO_INCREMENT for table `media_folders`
--
ALTER TABLE `media_folders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `media_settings`
--
ALTER TABLE `media_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `menu_locations`
--
ALTER TABLE `menu_locations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `menu_nodes`
--
ALTER TABLE `menu_nodes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `meta_boxes`
--
ALTER TABLE `meta_boxes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=260;

--
-- AUTO_INCREMENT for table `mp_category_sale_commissions`
--
ALTER TABLE `mp_category_sale_commissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mp_customer_revenues`
--
ALTER TABLE `mp_customer_revenues`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mp_customer_withdrawals`
--
ALTER TABLE `mp_customer_withdrawals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mp_messages`
--
ALTER TABLE `mp_messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mp_stores`
--
ALTER TABLE `mp_stores`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `mp_vendor_info`
--
ALTER TABLE `mp_vendor_info`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `newsletters`
--
ALTER TABLE `newsletters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_logs`
--
ALTER TABLE `payment_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `push_notifications`
--
ALTER TABLE `push_notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `push_notification_recipients`
--
ALTER TABLE `push_notification_recipients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `revisions`
--
ALTER TABLE `revisions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=156;

--
-- AUTO_INCREMENT for table `simple_sliders`
--
ALTER TABLE `simple_sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `simple_slider_items`
--
ALTER TABLE `simple_slider_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `slugs`
--
ALTER TABLE `slugs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=146;

--
-- AUTO_INCREMENT for table `social_logins`
--
ALTER TABLE `social_logins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_meta`
--
ALTER TABLE `user_meta`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_settings`
--
ALTER TABLE `user_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `widgets`
--
ALTER TABLE `widgets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
