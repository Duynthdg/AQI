-- phpMyAdmin SQL Dump
-- version 4.4.13.1deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 13, 2017 at 11:22 AM
-- Server version: 5.6.31-0ubuntu0.15.10.1
-- PHP Version: 5.6.11-1ubuntu3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aqi`
--

-- --------------------------------------------------------

--
-- Table structure for table `aqi_daily`
--

CREATE TABLE IF NOT EXISTS `aqi_daily` (
  `id` int(10) unsigned NOT NULL,
  `location_id` int(11) NOT NULL,
  `aqi` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `aqi_hourly`
--

CREATE TABLE IF NOT EXISTS `aqi_hourly` (
  `id` int(10) unsigned NOT NULL,
  `aqi` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `aqi_hourly`
--

INSERT INTO `aqi_hourly` (`id`, `aqi`, `created_at`) VALUES
(1, 28, '2017-05-28 04:47:43'),
(2, 27, '2017-05-28 05:47:48'),
(3, 27, '2017-05-28 06:47:53'),
(4, 27, '2017-05-28 07:48:00'),
(5, 27, '2017-05-28 08:48:18'),
(6, 26, '2017-05-28 09:48:18');

-- --------------------------------------------------------

--
-- Table structure for table `aqi_sensor`
--

CREATE TABLE IF NOT EXISTS `aqi_sensor` (
  `id` int(10) unsigned NOT NULL,
  `sensor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `aqi` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `aqi_sensor`
--

INSERT INTO `aqi_sensor` (`id`, `sensor`, `aqi`, `created_at`) VALUES
(1, 'co', 24, '2017-05-28 04:47:43'),
(2, 'dust', 28, '2017-05-28 04:47:43'),
(3, 'co', 18, '2017-05-28 05:47:48'),
(4, 'dust', 27, '2017-05-28 05:47:48'),
(5, 'co', 10, '2017-05-28 06:47:53'),
(6, 'dust', 27, '2017-05-28 06:47:53'),
(7, 'co', 12, '2017-05-28 07:48:00'),
(8, 'dust', 27, '2017-05-28 07:48:00'),
(9, 'co', 18, '2017-05-28 08:48:00'),
(10, 'dust', 27, '2017-05-28 08:48:00'),
(11, 'co', 19, '2017-05-28 09:48:00'),
(12, 'dust', 26, '2017-05-28 09:48:00');

-- --------------------------------------------------------

--
-- Table structure for table `data_sensor`
--

CREATE TABLE IF NOT EXISTS `data_sensor` (
  `id` int(10) unsigned NOT NULL,
  `sensor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=584 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_sensor`
--

INSERT INTO `data_sensor` (`id`, `sensor`, `data`, `status`, `created_at`) VALUES
(1, 'co', 9000, 1, '2017-05-28 03:48:29'),
(2, 'dust', 84, 1, '2017-05-28 03:48:29'),
(3, 'co', 9000, 1, '2017-05-28 03:49:29'),
(4, 'dust', 84, 1, '2017-05-28 03:49:29'),
(5, 'co', 9000, 1, '2017-05-28 03:50:29'),
(6, 'dust', 84, 1, '2017-05-28 03:50:29'),
(7, 'co', 9000, 1, '2017-05-28 03:51:29'),
(8, 'dust', 84, 1, '2017-05-28 03:51:29'),
(9, 'co', 8000, 1, '2017-05-28 03:52:29'),
(10, 'dust', 84, 1, '2017-05-28 03:52:29'),
(11, 'co', 8000, 1, '2017-05-28 03:53:29'),
(12, 'dust', 84, 1, '2017-05-28 03:53:29'),
(13, 'co', 8000, 1, '2017-05-28 03:54:29'),
(14, 'dust', 84, 1, '2017-05-28 03:54:29'),
(15, 'co', 8000, 1, '2017-05-28 03:55:29'),
(16, 'dust', 84, 1, '2017-05-28 03:55:29'),
(17, 'co', 8000, 1, '2017-05-28 03:56:29'),
(18, 'dust', 84, 1, '2017-05-28 03:56:30'),
(19, 'co', 8000, 1, '2017-05-28 03:57:30'),
(20, 'dust', 84, 1, '2017-05-28 03:57:30'),
(21, 'co', 8000, 1, '2017-05-28 03:58:29'),
(22, 'dust', 84, 1, '2017-05-28 03:58:30'),
(23, 'co', 8000, 1, '2017-05-28 03:59:30'),
(24, 'dust', 84, 1, '2017-05-28 03:59:30'),
(25, 'co', 7000, 1, '2017-05-28 04:00:30'),
(26, 'dust', 84, 1, '2017-05-28 04:00:30'),
(27, 'co', 7000, 1, '2017-05-28 04:01:30'),
(28, 'dust', 84, 1, '2017-05-28 04:01:30'),
(29, 'co', 8000, 1, '2017-05-28 04:02:30'),
(30, 'dust', 84, 1, '2017-05-28 04:02:30'),
(31, 'co', 8000, 1, '2017-05-28 04:03:30'),
(32, 'dust', 84, 1, '2017-05-28 04:03:30'),
(33, 'co', 8000, 1, '2017-05-28 04:04:30'),
(34, 'dust', 84, 1, '2017-05-28 04:04:30'),
(35, 'co', 8000, 1, '2017-05-28 04:05:30'),
(36, 'dust', 84, 1, '2017-05-28 04:05:30'),
(37, 'co', 8000, 1, '2017-05-28 04:06:30'),
(38, 'dust', 84, 1, '2017-05-28 04:06:30'),
(39, 'co', 8000, 1, '2017-05-28 04:07:30'),
(40, 'dust', 84, 1, '2017-05-28 04:07:30'),
(41, 'co', 8000, 1, '2017-05-28 04:08:30'),
(42, 'dust', 84, 1, '2017-05-28 04:08:30'),
(43, 'co', 8000, 1, '2017-05-28 04:09:30'),
(44, 'dust', 84, 1, '2017-05-28 04:09:31'),
(45, 'co', 8000, 1, '2017-05-28 04:10:30'),
(46, 'dust', 84, 1, '2017-05-28 04:10:31'),
(47, 'co', 7000, 1, '2017-05-28 04:11:31'),
(48, 'dust', 84, 1, '2017-05-28 04:11:31'),
(49, 'co', 7000, 1, '2017-05-28 04:12:31'),
(50, 'dust', 84, 1, '2017-05-28 04:12:31'),
(51, 'co', 7000, 1, '2017-05-28 04:13:31'),
(52, 'dust', 84, 1, '2017-05-28 04:13:31'),
(53, 'co', 7000, 1, '2017-05-28 04:14:31'),
(54, 'dust', 84, 1, '2017-05-28 04:14:31'),
(55, 'co', 7000, 1, '2017-05-28 04:15:31'),
(56, 'dust', 84, 1, '2017-05-28 04:15:31'),
(57, 'co', 7000, 1, '2017-05-28 04:16:31'),
(58, 'dust', 84, 1, '2017-05-28 04:16:31'),
(59, 'co', 7000, 1, '2017-05-28 04:17:31'),
(60, 'dust', 84, 1, '2017-05-28 04:17:31'),
(61, 'co', 7000, 1, '2017-05-28 04:18:31'),
(62, 'dust', 84, 1, '2017-05-28 04:18:31'),
(63, 'co', 8000, 1, '2017-05-28 04:19:31'),
(64, 'dust', 84, 1, '2017-05-28 04:19:31'),
(65, 'co', 8000, 1, '2017-05-28 04:20:32'),
(66, 'dust', 84, 1, '2017-05-28 04:20:32'),
(67, 'co', 7000, 1, '2017-05-28 04:21:32'),
(68, 'dust', 84, 1, '2017-05-28 04:21:32'),
(69, 'co', 7000, 1, '2017-05-28 04:22:32'),
(70, 'dust', 84, 1, '2017-05-28 04:22:32'),
(71, 'co', 7000, 1, '2017-05-28 04:23:32'),
(72, 'dust', 84, 1, '2017-05-28 04:23:32'),
(73, 'co', 7000, 1, '2017-05-28 04:24:32'),
(74, 'dust', 84, 1, '2017-05-28 04:24:32'),
(75, 'co', 6000, 1, '2017-05-28 04:25:32'),
(76, 'dust', 84, 1, '2017-05-28 04:25:32'),
(77, 'co', 7000, 1, '2017-05-28 04:26:32'),
(78, 'dust', 84, 1, '2017-05-28 04:26:32'),
(79, 'co', 7000, 1, '2017-05-28 04:27:32'),
(80, 'dust', 84, 1, '2017-05-28 04:27:32'),
(81, 'co', 7000, 1, '2017-05-28 04:28:32'),
(82, 'dust', 84, 1, '2017-05-28 04:28:32'),
(83, 'co', 7000, 1, '2017-05-28 04:29:33'),
(84, 'dust', 84, 1, '2017-05-28 04:29:33'),
(85, 'co', 7000, 1, '2017-05-28 04:30:32'),
(86, 'dust', 84, 1, '2017-05-28 04:30:33'),
(87, 'co', 7000, 1, '2017-05-28 04:31:33'),
(88, 'dust', 84, 1, '2017-05-28 04:31:33'),
(89, 'co', 7000, 1, '2017-05-28 04:32:33'),
(90, 'dust', 84, 1, '2017-05-28 04:32:33'),
(91, 'co', 7000, 1, '2017-05-28 04:33:33'),
(92, 'dust', 84, 1, '2017-05-28 04:33:33'),
(93, 'co', 7000, 1, '2017-05-28 04:34:33'),
(94, 'dust', 84, 1, '2017-05-28 04:34:33'),
(95, 'co', 7000, 1, '2017-05-28 04:35:33'),
(96, 'dust', 84, 1, '2017-05-28 04:35:33'),
(97, 'co', 7000, 1, '2017-05-28 04:36:33'),
(98, 'dust', 84, 1, '2017-05-28 04:36:33'),
(99, 'co', 7000, 1, '2017-05-28 04:37:33'),
(100, 'dust', 84, 1, '2017-05-28 04:37:33'),
(101, 'co', 6000, 1, '2017-05-28 04:38:33'),
(102, 'dust', 84, 1, '2017-05-28 04:38:33'),
(103, 'co', 6000, 1, '2017-05-28 04:39:33'),
(104, 'dust', 84, 1, '2017-05-28 04:39:33'),
(105, 'co', 6000, 1, '2017-05-28 04:40:33'),
(106, 'dust', 84, 1, '2017-05-28 04:40:33'),
(107, 'co', 6000, 1, '2017-05-28 04:41:33'),
(108, 'dust', 84, 1, '2017-05-28 04:41:34'),
(109, 'co', 5000, 1, '2017-05-28 04:42:34'),
(110, 'dust', 84, 1, '2017-05-28 04:42:34'),
(111, 'co', 6000, 1, '2017-05-28 04:43:34'),
(112, 'dust', 84, 1, '2017-05-28 04:43:34'),
(113, 'co', 5000, 1, '2017-05-28 04:44:34'),
(114, 'dust', 84, 1, '2017-05-28 04:44:34'),
(115, 'co', 6000, 1, '2017-05-28 04:45:34'),
(116, 'dust', 84, 1, '2017-05-28 04:45:34'),
(117, 'co', 6000, 1, '2017-05-28 04:46:34'),
(118, 'dust', 84, 1, '2017-05-28 04:46:34'),
(119, 'co', 6000, 1, '2017-05-28 04:47:34'),
(120, 'dust', 84, 1, '2017-05-28 04:47:34'),
(121, 'dust', 28, 1, '2017-05-28 04:47:43'),
(122, 'co', 6000, 1, '2017-05-28 04:48:34'),
(123, 'dust', 84, 1, '2017-05-28 04:48:34'),
(124, 'co', 6000, 1, '2017-05-28 04:49:34'),
(125, 'dust', 84, 1, '2017-05-28 04:49:34'),
(126, 'co', 6000, 1, '2017-05-28 04:50:34'),
(127, 'dust', 84, 1, '2017-05-28 04:50:34'),
(128, 'co', 6000, 1, '2017-05-28 04:51:34'),
(129, 'dust', 84, 1, '2017-05-28 04:51:34'),
(130, 'co', 6000, 1, '2017-05-28 04:52:34'),
(131, 'dust', 84, 1, '2017-05-28 04:52:34'),
(132, 'co', 6000, 1, '2017-05-28 04:53:35'),
(133, 'dust', 84, 1, '2017-05-28 04:53:35'),
(134, 'co', 6000, 1, '2017-05-28 04:54:35'),
(135, 'dust', 84, 1, '2017-05-28 04:54:35'),
(136, 'co', 6000, 1, '2017-05-28 04:55:35'),
(137, 'dust', 84, 1, '2017-05-28 04:55:35'),
(138, 'co', 6000, 1, '2017-05-28 04:56:35'),
(139, 'dust', 84, 1, '2017-05-28 04:56:35'),
(140, 'co', 6000, 1, '2017-05-28 04:57:35'),
(141, 'dust', 84, 1, '2017-05-28 04:57:35'),
(142, 'co', 6000, 1, '2017-05-28 04:58:35'),
(143, 'dust', 84, 1, '2017-05-28 04:58:35'),
(144, 'co', 6000, 1, '2017-05-28 04:59:35'),
(145, 'dust', 84, 1, '2017-05-28 04:59:35'),
(146, 'co', 5000, 1, '2017-05-28 05:00:35'),
(147, 'dust', 84, 1, '2017-05-28 05:00:35'),
(148, 'co', 6000, 1, '2017-05-28 05:01:35'),
(149, 'dust', 84, 1, '2017-05-28 05:01:35'),
(150, 'co', 6000, 1, '2017-05-28 05:02:35'),
(151, 'dust', 84, 1, '2017-05-28 05:02:35'),
(152, 'co', 6000, 1, '2017-05-28 05:03:35'),
(153, 'dust', 84, 1, '2017-05-28 05:03:35'),
(154, 'co', 6000, 1, '2017-05-28 05:04:35'),
(155, 'dust', 84, 1, '2017-05-28 05:04:36'),
(156, 'co', 6000, 1, '2017-05-28 05:05:36'),
(157, 'dust', 84, 1, '2017-05-28 05:05:36'),
(158, 'co', 6000, 1, '2017-05-28 05:06:36'),
(159, 'dust', 84, 1, '2017-05-28 05:06:36'),
(160, 'co', 6000, 1, '2017-05-28 05:07:36'),
(161, 'dust', 84, 1, '2017-05-28 05:07:36'),
(162, 'co', 6000, 1, '2017-05-28 05:08:36'),
(163, 'dust', 84, 1, '2017-05-28 05:08:36'),
(164, 'co', 6000, 1, '2017-05-28 05:09:36'),
(165, 'dust', 84, 1, '2017-05-28 05:09:36'),
(166, 'co', 5000, 1, '2017-05-28 05:10:36'),
(167, 'dust', 84, 1, '2017-05-28 05:10:36'),
(168, 'co', 6000, 1, '2017-05-28 05:11:36'),
(169, 'dust', 84, 1, '2017-05-28 05:11:36'),
(170, 'co', 6000, 1, '2017-05-28 05:12:36'),
(171, 'dust', 84, 1, '2017-05-28 05:12:36'),
(172, 'co', 5000, 1, '2017-05-28 05:13:36'),
(173, 'dust', 84, 1, '2017-05-28 05:13:36'),
(174, 'co', 5000, 1, '2017-05-28 05:14:36'),
(175, 'dust', 84, 1, '2017-05-28 05:14:36'),
(176, 'co', 5000, 1, '2017-05-28 05:15:37'),
(177, 'dust', 84, 1, '2017-05-28 05:15:37'),
(178, 'co', 5000, 1, '2017-05-28 05:16:37'),
(179, 'dust', 84, 1, '2017-05-28 05:16:37'),
(180, 'co', 5000, 1, '2017-05-28 05:17:37'),
(181, 'dust', 84, 1, '2017-05-28 05:17:37'),
(182, 'co', 6000, 1, '2017-05-28 05:18:37'),
(183, 'dust', 84, 1, '2017-05-28 05:18:37'),
(184, 'co', 5000, 1, '2017-05-28 05:19:37'),
(185, 'dust', 84, 1, '2017-05-28 05:19:37'),
(186, 'co', 5000, 1, '2017-05-28 05:20:37'),
(187, 'dust', 84, 1, '2017-05-28 05:20:37'),
(188, 'co', 5000, 1, '2017-05-28 05:21:37'),
(189, 'dust', 84, 1, '2017-05-28 05:21:37'),
(190, 'co', 6000, 1, '2017-05-28 05:22:37'),
(191, 'dust', 84, 1, '2017-05-28 05:22:37'),
(192, 'co', 5000, 1, '2017-05-28 05:23:37'),
(193, 'dust', 84, 1, '2017-05-28 05:23:37'),
(194, 'co', 6000, 1, '2017-05-28 05:24:37'),
(195, 'dust', 84, 1, '2017-05-28 05:24:37'),
(196, 'co', 6000, 1, '2017-05-28 05:25:37'),
(197, 'dust', 84, 1, '2017-05-28 05:25:37'),
(198, 'co', 6000, 1, '2017-05-28 05:26:37'),
(199, 'dust', 84, 1, '2017-05-28 05:26:37'),
(200, 'co', 5000, 1, '2017-05-28 05:27:38'),
(201, 'dust', 84, 1, '2017-05-28 05:27:38'),
(202, 'co', 5000, 1, '2017-05-28 05:28:38'),
(203, 'dust', 84, 1, '2017-05-28 05:28:38'),
(204, 'co', 5000, 1, '2017-05-28 05:29:38'),
(205, 'dust', 84, 1, '2017-05-28 05:29:38'),
(206, 'co', 5000, 1, '2017-05-28 05:30:38'),
(207, 'dust', 84, 1, '2017-05-28 05:30:38'),
(208, 'co', 6000, 1, '2017-05-28 05:31:38'),
(209, 'dust', 84, 1, '2017-05-28 05:31:38'),
(210, 'co', 5000, 1, '2017-05-28 05:32:38'),
(211, 'dust', 84, 1, '2017-05-28 05:32:38'),
(212, 'co', 5000, 1, '2017-05-28 05:33:38'),
(213, 'dust', 84, 1, '2017-05-28 05:33:38'),
(214, 'co', 5000, 1, '2017-05-28 05:34:38'),
(215, 'dust', 84, 1, '2017-05-28 05:34:38'),
(216, 'co', 5000, 1, '2017-05-28 05:35:39'),
(217, 'dust', 84, 1, '2017-05-28 05:35:39'),
(218, 'co', 5000, 1, '2017-05-28 05:36:38'),
(219, 'dust', 84, 1, '2017-05-28 05:36:38'),
(220, 'co', 5000, 1, '2017-05-28 05:37:38'),
(221, 'dust', 84, 1, '2017-05-28 05:37:38'),
(222, 'co', 5000, 1, '2017-05-28 05:38:39'),
(223, 'dust', 84, 1, '2017-05-28 05:38:39'),
(224, 'co', 5000, 1, '2017-05-28 05:39:39'),
(225, 'dust', 84, 1, '2017-05-28 05:39:39'),
(226, 'co', 6000, 1, '2017-05-28 05:40:39'),
(227, 'dust', 84, 1, '2017-05-28 05:40:39'),
(228, 'co', 6000, 1, '2017-05-28 05:41:39'),
(229, 'dust', 84, 1, '2017-05-28 05:41:39'),
(230, 'co', 6000, 1, '2017-05-28 05:42:39'),
(231, 'dust', 84, 1, '2017-05-28 05:42:39'),
(232, 'co', 6000, 1, '2017-05-28 05:43:39'),
(233, 'dust', 84, 1, '2017-05-28 05:43:39'),
(234, 'co', 6000, 1, '2017-05-28 05:44:39'),
(235, 'dust', 84, 1, '2017-05-28 05:44:39'),
(236, 'co', 6000, 1, '2017-05-28 05:45:39'),
(237, 'dust', 84, 1, '2017-05-28 05:45:39'),
(238, 'co', 6000, 1, '2017-05-28 05:46:39'),
(239, 'dust', 84, 1, '2017-05-28 05:46:39'),
(240, 'co', 6000, 1, '2017-05-28 05:47:39'),
(241, 'dust', 84, 1, '2017-05-28 05:47:39'),
(242, 'dust', 27, 1, '2017-05-28 05:47:48'),
(243, 'co', 6000, 1, '2017-05-28 05:48:39'),
(244, 'dust', 84, 1, '2017-05-28 05:48:39'),
(245, 'co', 6000, 1, '2017-05-28 05:49:40'),
(246, 'dust', 84, 1, '2017-05-28 05:49:40'),
(247, 'co', 6000, 1, '2017-05-28 05:50:40'),
(248, 'dust', 84, 1, '2017-05-28 05:50:40'),
(249, 'co', 4000, 1, '2017-05-28 05:51:40'),
(250, 'dust', 84, 1, '2017-05-28 05:51:40'),
(251, 'co', 4000, 1, '2017-05-28 05:52:40'),
(252, 'dust', 84, 1, '2017-05-28 05:52:40'),
(253, 'co', 4000, 1, '2017-05-28 05:53:40'),
(254, 'dust', 84, 1, '2017-05-28 05:53:40'),
(255, 'co', 3000, 1, '2017-05-28 05:54:40'),
(256, 'dust', 84, 1, '2017-05-28 05:54:40'),
(257, 'co', 3000, 1, '2017-05-28 05:55:40'),
(258, 'dust', 84, 1, '2017-05-28 05:55:40'),
(259, 'co', 3000, 1, '2017-05-28 05:56:40'),
(260, 'dust', 84, 1, '2017-05-28 05:56:40'),
(261, 'co', 3000, 1, '2017-05-28 05:57:40'),
(262, 'dust', 84, 1, '2017-05-28 05:57:40'),
(263, 'co', 3000, 1, '2017-05-28 05:58:40'),
(264, 'dust', 84, 1, '2017-05-28 05:58:40'),
(265, 'co', 3000, 1, '2017-05-28 05:59:40'),
(266, 'dust', 84, 1, '2017-05-28 05:59:40'),
(267, 'co', 3000, 1, '2017-05-28 06:00:40'),
(268, 'dust', 84, 1, '2017-05-28 06:00:41'),
(269, 'co', 4000, 1, '2017-05-28 06:01:41'),
(270, 'dust', 84, 1, '2017-05-28 06:01:41'),
(271, 'co', 3000, 1, '2017-05-28 06:02:41'),
(272, 'dust', 84, 1, '2017-05-28 06:02:41'),
(273, 'co', 3000, 1, '2017-05-28 06:03:41'),
(274, 'dust', 84, 1, '2017-05-28 06:03:41'),
(275, 'co', 4000, 1, '2017-05-28 06:04:41'),
(276, 'dust', 84, 1, '2017-05-28 06:04:41'),
(277, 'co', 3000, 1, '2017-05-28 06:05:41'),
(278, 'dust', 84, 1, '2017-05-28 06:05:41'),
(279, 'co', 3000, 1, '2017-05-28 06:06:44'),
(280, 'dust', 84, 1, '2017-05-28 06:06:44'),
(281, 'co', 3000, 1, '2017-05-28 06:07:41'),
(282, 'dust', 83, 1, '2017-05-28 06:07:41'),
(283, 'co', 3000, 1, '2017-05-28 06:08:41'),
(284, 'dust', 84, 1, '2017-05-28 06:08:41'),
(285, 'co', 3000, 1, '2017-05-28 06:09:41'),
(286, 'dust', 84, 1, '2017-05-28 06:09:41'),
(287, 'co', 3000, 1, '2017-05-28 06:10:41'),
(288, 'dust', 83, 1, '2017-05-28 06:10:41'),
(289, 'co', 3000, 1, '2017-05-28 06:11:41'),
(290, 'dust', 83, 1, '2017-05-28 06:11:42'),
(291, 'co', 3000, 1, '2017-05-28 06:12:42'),
(292, 'dust', 83, 1, '2017-05-28 06:12:42'),
(293, 'co', 3000, 1, '2017-05-28 06:13:42'),
(294, 'dust', 83, 1, '2017-05-28 06:13:42'),
(295, 'co', 3000, 1, '2017-05-28 06:14:42'),
(296, 'dust', 83, 1, '2017-05-28 06:14:42'),
(297, 'co', 3000, 1, '2017-05-28 06:15:42'),
(298, 'dust', 83, 1, '2017-05-28 06:15:42'),
(299, 'co', 3000, 1, '2017-05-28 06:16:42'),
(300, 'dust', 83, 1, '2017-05-28 06:16:42'),
(301, 'co', 3000, 1, '2017-05-28 06:17:42'),
(302, 'dust', 83, 1, '2017-05-28 06:17:42'),
(303, 'co', 3000, 1, '2017-05-28 06:18:42'),
(304, 'dust', 83, 1, '2017-05-28 06:18:42'),
(305, 'co', 3000, 1, '2017-05-28 06:19:42'),
(306, 'dust', 83, 1, '2017-05-28 06:19:42'),
(307, 'co', 3000, 1, '2017-05-28 06:20:42'),
(308, 'dust', 83, 1, '2017-05-28 06:20:42'),
(309, 'co', 3000, 1, '2017-05-28 06:21:42'),
(310, 'dust', 83, 1, '2017-05-28 06:21:42'),
(311, 'co', 4000, 1, '2017-05-28 06:22:42'),
(312, 'dust', 83, 1, '2017-05-28 06:22:43'),
(313, 'co', 3000, 1, '2017-05-28 06:23:43'),
(314, 'dust', 83, 1, '2017-05-28 06:23:43'),
(315, 'co', 3000, 1, '2017-05-28 06:24:43'),
(316, 'dust', 83, 1, '2017-05-28 06:24:43'),
(317, 'co', 3000, 1, '2017-05-28 06:25:43'),
(318, 'dust', 83, 1, '2017-05-28 06:25:43'),
(319, 'co', 3000, 1, '2017-05-28 06:26:43'),
(320, 'dust', 82, 1, '2017-05-28 06:26:43'),
(321, 'co', 3000, 1, '2017-05-28 06:27:43'),
(322, 'dust', 83, 1, '2017-05-28 06:27:43'),
(323, 'co', 3000, 1, '2017-05-28 06:28:43'),
(324, 'dust', 83, 1, '2017-05-28 06:28:43'),
(325, 'co', 3000, 1, '2017-05-28 06:29:43'),
(326, 'dust', 82, 1, '2017-05-28 06:29:43'),
(327, 'co', 3000, 1, '2017-05-28 06:30:43'),
(328, 'dust', 83, 1, '2017-05-28 06:30:43'),
(329, 'co', 3000, 1, '2017-05-28 06:31:43'),
(330, 'dust', 83, 1, '2017-05-28 06:31:43'),
(331, 'co', 3000, 1, '2017-05-28 06:32:43'),
(332, 'dust', 83, 1, '2017-05-28 06:32:43'),
(333, 'co', 3000, 1, '2017-05-28 06:33:43'),
(334, 'dust', 82, 1, '2017-05-28 06:33:44'),
(335, 'co', 3000, 1, '2017-05-28 06:34:44'),
(336, 'dust', 83, 1, '2017-05-28 06:34:44'),
(337, 'co', 3000, 1, '2017-05-28 06:35:44'),
(338, 'dust', 82, 1, '2017-05-28 06:35:44'),
(339, 'co', 3000, 1, '2017-05-28 06:36:44'),
(340, 'dust', 82, 1, '2017-05-28 06:36:44'),
(341, 'co', 3000, 1, '2017-05-28 06:37:44'),
(342, 'dust', 82, 1, '2017-05-28 06:37:44'),
(343, 'co', 3000, 1, '2017-05-28 06:38:44'),
(344, 'dust', 82, 1, '2017-05-28 06:38:44'),
(345, 'co', 3000, 1, '2017-05-28 06:39:44'),
(346, 'dust', 82, 1, '2017-05-28 06:39:44'),
(347, 'co', 3000, 1, '2017-05-28 06:40:44'),
(348, 'dust', 83, 1, '2017-05-28 06:40:44'),
(349, 'co', 3000, 1, '2017-05-28 06:41:45'),
(350, 'dust', 83, 1, '2017-05-28 06:41:45'),
(351, 'co', 3000, 1, '2017-05-28 06:42:45'),
(352, 'dust', 82, 1, '2017-05-28 06:42:45'),
(353, 'co', 3000, 1, '2017-05-28 06:43:44'),
(354, 'dust', 83, 1, '2017-05-28 06:43:44'),
(355, 'co', 3000, 1, '2017-05-28 06:44:45'),
(356, 'dust', 83, 1, '2017-05-28 06:44:45'),
(357, 'co', 3000, 1, '2017-05-28 06:45:45'),
(358, 'dust', 83, 1, '2017-05-28 06:45:45'),
(359, 'co', 3000, 1, '2017-05-28 06:46:45'),
(360, 'dust', 83, 1, '2017-05-28 06:46:45'),
(361, 'co', 3000, 1, '2017-05-28 06:47:46'),
(362, 'dust', 83, 1, '2017-05-28 06:47:46'),
(363, 'dust', 27, 1, '2017-05-28 06:47:54'),
(364, 'co', 3000, 1, '2017-05-28 06:48:50'),
(365, 'dust', 84, 1, '2017-05-28 06:48:50'),
(366, 'co', 3000, 1, '2017-05-28 06:49:45'),
(367, 'dust', 84, 1, '2017-05-28 06:49:45'),
(368, 'co', 3000, 1, '2017-05-28 06:50:45'),
(369, 'dust', 84, 1, '2017-05-28 06:50:45'),
(370, 'co', 3000, 1, '2017-05-28 06:51:45'),
(371, 'dust', 84, 1, '2017-05-28 06:51:45'),
(372, 'co', 3000, 1, '2017-05-28 06:52:45'),
(373, 'dust', 84, 1, '2017-05-28 06:52:45'),
(374, 'co', 3000, 1, '2017-05-28 06:53:45'),
(375, 'dust', 84, 1, '2017-05-28 06:53:45'),
(376, 'co', 3000, 1, '2017-05-28 06:54:45'),
(377, 'dust', 84, 1, '2017-05-28 06:54:45'),
(378, 'co', 3000, 1, '2017-05-28 06:55:45'),
(379, 'dust', 84, 1, '2017-05-28 06:55:45'),
(380, 'co', 3000, 1, '2017-05-28 06:56:46'),
(381, 'dust', 84, 1, '2017-05-28 06:56:46'),
(382, 'co', 3000, 1, '2017-05-28 06:57:46'),
(383, 'dust', 84, 1, '2017-05-28 06:57:46'),
(384, 'co', 3000, 1, '2017-05-28 06:58:46'),
(385, 'dust', 84, 1, '2017-05-28 06:58:46'),
(386, 'co', 3000, 1, '2017-05-28 06:59:46'),
(387, 'dust', 84, 1, '2017-05-28 06:59:46'),
(388, 'co', 3000, 1, '2017-05-28 07:00:46'),
(389, 'dust', 84, 1, '2017-05-28 07:00:46'),
(390, 'co', 3000, 1, '2017-05-28 07:01:46'),
(391, 'dust', 84, 1, '2017-05-28 07:01:46'),
(392, 'co', 3000, 1, '2017-05-28 07:02:46'),
(393, 'dust', 84, 1, '2017-05-28 07:02:46'),
(394, 'co', 3000, 1, '2017-05-28 07:03:46'),
(395, 'dust', 84, 1, '2017-05-28 07:03:46'),
(396, 'co', 3000, 1, '2017-05-28 07:04:46'),
(397, 'dust', 84, 1, '2017-05-28 07:04:46'),
(398, 'co', 3000, 1, '2017-05-28 07:05:46'),
(399, 'dust', 84, 1, '2017-05-28 07:05:46'),
(400, 'co', 3000, 1, '2017-05-28 07:06:46'),
(401, 'dust', 84, 1, '2017-05-28 07:06:46'),
(402, 'co', 3000, 1, '2017-05-28 07:07:47'),
(403, 'dust', 84, 1, '2017-05-28 07:07:47'),
(404, 'co', 3000, 1, '2017-05-28 07:08:47'),
(405, 'dust', 84, 1, '2017-05-28 07:08:47'),
(406, 'co', 3000, 1, '2017-05-28 07:10:47'),
(407, 'dust', 84, 1, '2017-05-28 07:10:47'),
(408, 'co', 3000, 1, '2017-05-28 07:11:47'),
(409, 'dust', 84, 1, '2017-05-28 07:11:47'),
(410, 'co', -7536, 1, '2017-05-28 07:12:47'),
(411, 'dust', 84, 1, '2017-05-28 07:12:47'),
(412, 'co', 9000, 1, '2017-05-28 07:13:47'),
(413, 'dust', 84, 1, '2017-05-28 07:13:47'),
(414, 'co', 6000, 1, '2017-05-28 07:14:47'),
(415, 'dust', 84, 1, '2017-05-28 07:14:47'),
(416, 'co', 4000, 1, '2017-05-28 07:15:47'),
(417, 'dust', 84, 1, '2017-05-28 07:15:47'),
(418, 'co', 4000, 1, '2017-05-28 07:16:47'),
(419, 'dust', 84, 1, '2017-05-28 07:16:47'),
(420, 'co', 3000, 1, '2017-05-28 07:17:47'),
(421, 'dust', 84, 1, '2017-05-28 07:17:47'),
(422, 'co', 3000, 1, '2017-05-28 07:18:48'),
(423, 'dust', 84, 1, '2017-05-28 07:18:48'),
(424, 'co', 3000, 1, '2017-05-28 07:19:48'),
(425, 'dust', 84, 1, '2017-05-28 07:19:48'),
(426, 'co', 3000, 1, '2017-05-28 07:20:48'),
(427, 'dust', 84, 1, '2017-05-28 07:20:48'),
(428, 'co', 3000, 1, '2017-05-28 07:21:48'),
(429, 'dust', 84, 1, '2017-05-28 07:21:48'),
(430, 'co', 3000, 1, '2017-05-28 07:22:48'),
(431, 'dust', 84, 1, '2017-05-28 07:22:48'),
(432, 'co', 3000, 1, '2017-05-28 07:23:48'),
(433, 'dust', 84, 1, '2017-05-28 07:23:48'),
(434, 'co', 3000, 1, '2017-05-28 07:24:48'),
(435, 'dust', 84, 1, '2017-05-28 07:24:48'),
(436, 'co', 2000, 1, '2017-05-28 07:25:48'),
(437, 'dust', 84, 1, '2017-05-28 07:25:48'),
(438, 'co', 3000, 1, '2017-05-28 07:26:48'),
(439, 'dust', 84, 1, '2017-05-28 07:26:48'),
(440, 'co', 3000, 1, '2017-05-28 07:27:48'),
(441, 'dust', 84, 1, '2017-05-28 07:27:48'),
(442, 'co', 3000, 1, '2017-05-28 07:28:48'),
(443, 'dust', 84, 1, '2017-05-28 07:28:49'),
(444, 'co', 3000, 1, '2017-05-28 07:29:49'),
(445, 'dust', 84, 1, '2017-05-28 07:29:49'),
(446, 'co', 3000, 1, '2017-05-28 07:30:49'),
(447, 'dust', 84, 1, '2017-05-28 07:30:49'),
(448, 'co', 3000, 1, '2017-05-28 07:31:49'),
(449, 'dust', 84, 1, '2017-05-28 07:31:49'),
(450, 'co', 2000, 1, '2017-05-28 07:32:49'),
(451, 'dust', 84, 1, '2017-05-28 07:32:49'),
(452, 'co', 2000, 1, '2017-05-28 07:33:49'),
(453, 'dust', 84, 1, '2017-05-28 07:33:49'),
(454, 'co', 3000, 1, '2017-05-28 07:34:49'),
(455, 'dust', 84, 1, '2017-05-28 07:34:49'),
(456, 'co', 2000, 1, '2017-05-28 07:35:49'),
(457, 'dust', 84, 1, '2017-05-28 07:35:49'),
(458, 'co', 10000, 1, '2017-05-28 07:36:49'),
(459, 'dust', 84, 1, '2017-05-28 07:36:50'),
(460, 'co', 8000, 1, '2017-05-28 07:37:49'),
(461, 'dust', 84, 1, '2017-05-28 07:37:50'),
(462, 'co', 7000, 1, '2017-05-28 07:38:49'),
(463, 'dust', 84, 1, '2017-05-28 07:38:49'),
(464, 'co', 7000, 1, '2017-05-28 07:39:49'),
(465, 'dust', 84, 1, '2017-05-28 07:39:50'),
(466, 'co', 6000, 1, '2017-05-28 07:40:50'),
(467, 'dust', 84, 1, '2017-05-28 07:40:50'),
(468, 'co', 6000, 1, '2017-05-28 07:41:50'),
(469, 'dust', 84, 1, '2017-05-28 07:41:50'),
(470, 'co', 5000, 1, '2017-05-28 07:42:23'),
(471, 'dust', 84, 1, '2017-05-28 07:42:23'),
(472, 'co', 5000, 1, '2017-05-28 07:42:23'),
(473, 'dust', 84, 1, '2017-05-28 07:42:23'),
(474, 'co', 5000, 1, '2017-05-28 07:42:23'),
(475, 'dust', 84, 1, '2017-05-28 07:42:23'),
(476, 'co', 5000, 1, '2017-05-28 07:43:13'),
(477, 'dust', 84, 1, '2017-05-28 07:43:13'),
(478, 'co', 12000, 1, '2017-05-28 07:44:13'),
(479, 'dust', 84, 1, '2017-05-28 07:44:13'),
(480, 'co', 8000, 1, '2017-05-28 07:45:14'),
(481, 'dust', 84, 1, '2017-05-28 07:45:14'),
(482, 'co', 6000, 1, '2017-05-28 07:46:14'),
(483, 'dust', 84, 1, '2017-05-28 07:46:14'),
(484, 'co', 6000, 1, '2017-05-28 07:47:14'),
(485, 'dust', 84, 1, '2017-05-28 07:47:14'),
(486, 'co', 5000, 1, '2017-05-28 07:48:14'),
(487, 'dust', 84, 1, '2017-05-28 07:48:14'),
(488, 'dust', 27, 1, '2017-05-28 07:48:15'),
(489, 'co', 5000, 1, '2017-05-28 07:49:14'),
(490, 'dust', 84, 1, '2017-05-28 07:49:14'),
(491, 'co', 5000, 1, '2017-05-28 07:50:14'),
(492, 'dust', 84, 1, '2017-05-28 07:50:14'),
(493, 'co', 4000, 1, '2017-05-28 07:51:14'),
(494, 'dust', 84, 1, '2017-05-28 07:51:14'),
(495, 'co', 4000, 1, '2017-05-28 07:52:14'),
(496, 'dust', 84, 1, '2017-05-28 07:52:14'),
(497, 'co', 4000, 1, '2017-05-28 07:53:14'),
(498, 'dust', 84, 1, '2017-05-28 07:53:14'),
(499, 'co', 4000, 1, '2017-05-28 07:54:14'),
(500, 'dust', 84, 1, '2017-05-28 07:54:14'),
(501, 'co', 8000, 1, '2017-05-28 07:55:14'),
(502, 'dust', 84, 1, '2017-05-28 07:55:14'),
(503, 'co', -5072, 1, '2017-05-28 07:56:15'),
(504, 'dust', 84, 1, '2017-05-28 07:56:15'),
(505, 'co', 10464, 1, '2017-05-28 07:57:15'),
(506, 'dust', 84, 1, '2017-05-28 07:57:15'),
(507, 'co', -11536, 1, '2017-05-28 07:58:15'),
(508, 'dust', 84, 1, '2017-05-28 07:58:15'),
(509, 'co', -23536, 1, '2017-05-28 07:59:15'),
(510, 'dust', 84, 1, '2017-05-28 07:59:15'),
(511, 'co', 11000, 1, '2017-05-28 08:00:15'),
(512, 'dust', 84, 1, '2017-05-28 08:00:15'),
(513, 'co', 8000, 1, '2017-05-28 08:01:15'),
(514, 'dust', 84, 1, '2017-05-28 08:01:15'),
(515, 'co', 7000, 1, '2017-05-28 08:02:15'),
(516, 'dust', 84, 1, '2017-05-28 08:02:15'),
(517, 'co', 6000, 1, '2017-05-28 08:03:15'),
(518, 'dust', 84, 1, '2017-05-28 08:03:15'),
(519, 'co', 10000, 1, '2017-05-28 08:04:15'),
(520, 'dust', 84, 1, '2017-05-28 08:04:15'),
(521, 'co', 7000, 1, '2017-05-28 08:05:15'),
(522, 'dust', 84, 1, '2017-05-28 08:05:15'),
(523, 'co', 6000, 1, '2017-05-28 08:06:16'),
(524, 'dust', 84, 1, '2017-05-28 08:06:16'),
(525, 'co', 5000, 1, '2017-05-28 08:07:16'),
(526, 'dust', 84, 1, '2017-05-28 08:07:16'),
(527, 'co', 5000, 1, '2017-05-28 08:08:16'),
(528, 'dust', 84, 1, '2017-05-28 08:08:16'),
(529, 'co', 5000, 1, '2017-05-28 08:09:16'),
(530, 'dust', 84, 1, '2017-05-28 08:09:16'),
(531, 'co', 4000, 1, '2017-05-28 08:10:16'),
(532, 'dust', 80, 1, '2017-05-28 08:10:16'),
(533, 'co', 4000, 1, '2017-05-28 08:11:16'),
(534, 'dust', 84, 1, '2017-05-28 08:11:16'),
(535, 'co', 4000, 1, '2017-05-28 08:12:16'),
(536, 'dust', 84, 1, '2017-05-28 08:12:16'),
(537, 'co', 4000, 1, '2017-05-28 08:13:16'),
(538, 'dust', 94, 1, '2017-05-28 08:13:16'),
(539, 'co', 4000, 1, '2017-05-28 08:14:16'),
(540, 'dust', 84, 1, '2017-05-28 08:14:16'),
(541, 'co', 4000, 1, '2017-05-28 08:15:16'),
(542, 'dust', 84, 1, '2017-05-28 08:15:16'),
(543, 'dust', 27, 1, '2017-05-28 08:48:18'),
(544, 'co', 6127, 0, '2017-06-01 21:37:56'),
(545, 'dust', 84, 0, '2017-06-01 21:37:56'),
(546, 'co', 5842, 0, '2017-06-01 21:37:58'),
(547, 'dust', 84, 0, '2017-06-01 21:37:58'),
(548, 'co', 5842, 0, '2017-06-01 21:38:01'),
(549, 'dust', 84, 0, '2017-06-01 21:38:01'),
(550, 'co', 5984, 0, '2017-06-01 21:38:04'),
(551, 'dust', 84, 0, '2017-06-01 21:38:04'),
(552, 'co', 5984, 0, '2017-06-01 21:38:07'),
(553, 'dust', 84, 0, '2017-06-01 21:38:07'),
(554, 'co', 6127, 0, '2017-06-01 21:38:10'),
(555, 'dust', 84, 0, '2017-06-01 21:38:10'),
(556, 'co', 5984, 0, '2017-06-01 21:38:13'),
(557, 'dust', 84, 0, '2017-06-01 21:38:14'),
(558, 'co', 5984, 0, '2017-06-01 21:38:17'),
(559, 'dust', 84, 0, '2017-06-01 21:38:17'),
(560, 'co', 5984, 0, '2017-06-01 21:38:20'),
(561, 'dust', 84, 0, '2017-06-01 21:38:20'),
(562, 'co', 6127, 0, '2017-06-01 21:38:23'),
(563, 'dust', 84, 0, '2017-06-01 21:38:23'),
(564, 'co', 5984, 0, '2017-06-01 21:38:26'),
(565, 'dust', 84, 0, '2017-06-01 21:38:26'),
(566, 'co', 5842, 0, '2017-06-01 21:38:29'),
(567, 'dust', 84, 0, '2017-06-01 21:38:29'),
(568, 'co', 5984, 0, '2017-06-01 21:38:32'),
(569, 'dust', 84, 0, '2017-06-01 21:38:32'),
(570, 'co', 5842, 0, '2017-06-01 21:38:35'),
(571, 'dust', 84, 0, '2017-06-01 21:38:35'),
(572, 'co', 5842, 0, '2017-06-01 21:38:38'),
(573, 'dust', 84, 0, '2017-06-01 21:38:38'),
(574, 'co', 5984, 0, '2017-06-01 21:38:41'),
(575, 'dust', 84, 0, '2017-06-01 21:38:42'),
(576, 'co', 7302, 0, '2017-06-01 21:38:45'),
(577, 'dust', 84, 0, '2017-06-01 21:38:45'),
(578, 'co', 5984, 0, '2017-06-01 21:38:48'),
(579, 'dust', 84, 0, '2017-06-01 21:38:48'),
(580, 'co', 5984, 0, '2017-06-01 21:38:51'),
(581, 'dust', 84, 0, '2017-06-01 21:38:51'),
(582, 'co', 5984, 0, '2017-06-01 21:38:54'),
(583, 'dust', 84, 0, '2017-06-01 21:38:54');

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE IF NOT EXISTS `locations` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `latitude` double(8,2) NOT NULL,
  `longitude` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(14, '2014_10_12_000000_create_users_table', 1),
(15, '2014_10_12_100000_create_password_resets_table', 1),
(22, '2017_02_26_040638_create_aqi_hourly_table', 2),
(23, '2017_02_26_041344_create_aqi_daily_table', 2),
(24, '2017_02_26_041558_create_area_table', 2),
(25, '2017_05_15_172834_create_data_sensor_table', 2),
(26, '2017_05_21_115859_add_aqi_sensor_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birthday` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` int(11) NOT NULL,
  `group` int(11) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aqi_daily`
--
ALTER TABLE `aqi_daily`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aqi_hourly`
--
ALTER TABLE `aqi_hourly`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aqi_sensor`
--
ALTER TABLE `aqi_sensor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_sensor`
--
ALTER TABLE `data_sensor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aqi_daily`
--
ALTER TABLE `aqi_daily`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `aqi_hourly`
--
ALTER TABLE `aqi_hourly`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `aqi_sensor`
--
ALTER TABLE `aqi_sensor`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `data_sensor`
--
ALTER TABLE `data_sensor`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=584;
--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
