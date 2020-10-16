-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 16, 2020 at 12:33 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rythz-pos`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(150) NOT NULL,
  `category_created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `category_updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `category_status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`, `category_created_at`, `category_updated_at`, `category_status`) VALUES
(1, 'Coffee', '2020-08-13 08:14:00', '2020-09-14 22:31:51', 1),
(2, 'Cakes', '2020-08-14 23:22:44', '2020-09-14 22:32:10', 1),
(3, 'Foods', '2020-08-14 23:34:48', '2020-09-14 22:32:17', 1),
(4, 'Drinks', '2020-08-14 23:37:08', '2020-09-14 22:32:23', 1);

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `history_id` int(11) NOT NULL,
  `history_invoice` int(6) NOT NULL,
  `history_subtotal` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `history_created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `history_updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`history_id`, `history_invoice`, `history_subtotal`, `user_id`, `history_created_at`, `history_updated_at`) VALUES
(251, 501488, 16500, 1, '2020-10-13 18:17:17', '2020-10-13 18:17:17'),
(252, 946269, 63800, 1, '2020-10-13 18:17:50', '2020-10-13 18:17:50'),
(253, 659264, 58300, 15, '2020-10-13 18:21:23', '2020-10-13 18:21:23'),
(254, 507569, 103400, 15, '2020-10-13 18:21:34', '2020-10-13 18:21:34'),
(255, 672562, 75900, 1, '2020-10-13 18:24:33', '2020-10-13 18:24:33'),
(256, 829826, 66000, 1, '2020-10-13 18:25:00', '2020-10-13 18:25:00'),
(257, 830793, 66000, 1, '2020-10-13 18:27:29', '2020-10-13 18:27:29'),
(258, 613310, 19800, 1, '2020-10-13 18:28:39', '2020-10-13 18:28:39'),
(259, 134963, 30800, 1, '2020-10-13 18:29:51', '2020-10-13 18:29:51'),
(260, 670935, 11000, 1, '2020-10-13 18:31:12', '2020-10-13 18:31:12'),
(261, 158724, 36300, 1, '2020-10-13 18:34:52', '2020-10-13 18:34:52'),
(262, 994098, 33000, 1, '2020-10-13 18:35:34', '2020-10-13 18:35:34'),
(263, 617858, 16500, 1, '2020-10-13 18:39:16', '2020-10-13 18:39:16'),
(264, 381703, 36300, 1, '2020-10-13 18:49:20', '2020-10-13 18:49:20'),
(265, 465280, 11000, 1, '2020-10-13 18:52:20', '2020-10-13 18:52:20'),
(266, 862748, 63800, 1, '2020-10-14 03:32:08', '2020-10-14 03:32:08'),
(267, 171347, 106700, 1, '2020-10-15 01:43:24', '2020-10-15 01:43:24'),
(268, 930603, 66000, 1, '2020-10-15 01:44:33', '2020-10-15 01:44:33'),
(269, 308008, 66000, 1, '2020-10-15 01:49:54', '2020-10-15 01:49:54'),
(270, 408971, 66000, 1, '2020-10-15 02:02:44', '2020-10-15 02:02:44'),
(271, 503236, 36300, 1, '2020-10-15 02:17:44', '2020-10-15 02:17:44'),
(272, 767115, 36300, 1, '2020-10-15 02:21:58', '2020-10-15 02:21:58'),
(273, 697936, 36300, 1, '2020-10-15 02:41:37', '2020-10-15 02:41:37'),
(274, 119943, 36300, 1, '2020-10-15 02:42:15', '2020-10-15 02:42:15'),
(275, 635292, 36300, 1, '2020-10-15 02:50:15', '2020-10-15 02:50:15'),
(276, 209561, 5500, 1, '2020-10-15 02:54:57', '2020-10-15 02:54:57'),
(277, 795545, 5500, 1, '2020-10-15 03:06:41', '2020-10-15 03:06:41'),
(278, 672510, 5500, 1, '2020-10-15 03:07:31', '2020-10-15 03:07:31'),
(279, 697613, 22000, 1, '2020-10-15 03:10:19', '2020-10-15 03:10:19'),
(280, 431805, 16500, 1, '2020-10-15 03:21:26', '2020-10-15 03:21:26'),
(281, 733412, 27500, 1, '2020-10-15 03:23:34', '2020-10-15 03:23:34'),
(282, 378936, 27500, 1, '2020-10-15 03:25:19', '2020-10-15 03:25:19'),
(283, 806026, 27500, 1, '2020-10-15 03:32:54', '2020-10-15 03:32:54'),
(284, 978845, 27500, 1, '2020-10-15 03:34:02', '2020-10-15 03:34:02'),
(285, 674048, 55000, 1, '2020-10-15 03:37:54', '2020-10-15 03:37:54'),
(286, 153940, 27500, 1, '2020-10-15 03:38:01', '2020-10-15 03:38:01'),
(287, 212549, 27500, 1, '2020-10-15 03:38:31', '2020-10-15 03:38:31'),
(288, 777085, 27500, 1, '2020-10-15 03:46:06', '2020-10-15 03:46:06'),
(289, 189234, 27500, 1, '2020-10-15 03:51:15', '2020-10-15 03:51:15'),
(290, 714490, 27500, 1, '2020-10-15 03:51:35', '2020-10-15 03:51:35'),
(291, 499339, 55000, 1, '2020-10-15 03:52:05', '2020-10-15 03:52:05'),
(292, 550164, 27500, 1, '2020-10-15 03:56:38', '2020-10-15 03:56:38'),
(293, 413579, 27500, 1, '2020-10-15 03:57:39', '2020-10-15 03:57:39'),
(294, 762025, 27500, 1, '2020-10-15 04:01:44', '2020-10-15 04:01:44'),
(295, 774545, 27500, 1, '2020-10-15 04:03:13', '2020-10-15 04:03:13'),
(296, 306496, 27500, 1, '2020-10-15 04:03:59', '2020-10-15 04:03:59'),
(297, 891832, 27500, 1, '2020-10-15 04:05:21', '2020-10-15 04:05:21'),
(298, 588672, 27500, 1, '2020-10-15 06:14:58', '2020-10-15 06:14:58'),
(299, 992126, 27500, 1, '2020-10-15 06:15:51', '2020-10-15 06:15:51'),
(300, 163975, 55000, 1, '2020-10-15 06:15:56', '2020-10-15 06:15:56'),
(301, 574893, 27500, 1, '2020-10-15 06:16:14', '2020-10-15 06:16:14'),
(302, 623802, 27500, 1, '2020-10-15 06:17:49', '2020-10-15 06:17:49'),
(303, 322503, 27500, 1, '2020-10-15 06:18:52', '2020-10-15 06:18:52'),
(304, 612852, 27500, 1, '2020-10-15 06:23:44', '2020-10-15 06:23:44'),
(305, 151534, 27500, 1, '2020-10-15 06:24:28', '2020-10-15 06:24:28'),
(306, 832058, 55000, 1, '2020-10-15 06:24:28', '2020-10-15 06:24:28'),
(307, 161409, 27500, 1, '2020-10-15 06:25:11', '2020-10-15 06:25:11'),
(308, 828019, 27500, 1, '2020-10-15 06:27:23', '2020-10-15 06:27:23'),
(309, 297550, 27500, 1, '2020-10-15 06:30:15', '2020-10-15 06:30:15'),
(310, 155770, 27500, 1, '2020-10-15 06:31:08', '2020-10-15 06:31:08'),
(311, 560675, 27500, 1, '2020-10-15 06:32:55', '2020-10-15 06:32:55'),
(312, 783832, 27500, 1, '2020-10-15 06:33:08', '2020-10-15 06:33:08'),
(313, 784615, 27500, 1, '2020-10-15 06:34:05', '2020-10-15 06:34:05'),
(314, 164303, 27500, 1, '2020-10-15 06:36:31', '2020-10-15 06:36:31'),
(315, 631645, 27500, 1, '2020-10-15 06:41:33', '2020-10-15 06:41:33'),
(316, 945663, 27500, 1, '2020-10-15 06:42:35', '2020-10-15 06:42:35'),
(317, 895919, 27500, 1, '2020-10-15 06:42:59', '2020-10-15 06:42:59'),
(318, 335149, 27500, 1, '2020-10-15 06:43:18', '2020-10-15 06:43:18'),
(319, 494368, 27500, 1, '2020-10-15 06:53:53', '2020-10-15 06:53:53'),
(320, 520810, 47300, 1, '2020-10-15 06:54:30', '2020-10-15 06:54:30'),
(321, 413326, 27500, 1, '2020-10-15 06:55:45', '2020-10-15 06:55:45'),
(322, 375808, 27500, 1, '2020-10-15 06:58:11', '2020-10-15 06:58:11'),
(323, 484174, 27500, 1, '2020-10-15 06:59:40', '2020-10-15 06:59:40'),
(324, 418569, 27500, 1, '2020-10-15 07:00:17', '2020-10-15 07:00:17'),
(325, 174323, 27500, 1, '2020-10-15 07:09:48', '2020-10-15 07:09:48'),
(326, 567800, 27500, 1, '2020-10-15 07:10:48', '2020-10-15 07:10:48'),
(327, 913162, 27500, 1, '2020-10-15 07:11:42', '2020-10-15 07:11:42'),
(328, 214077, 27500, 1, '2020-10-15 07:12:08', '2020-10-15 07:12:08'),
(329, 500915, 27500, 1, '2020-10-15 07:12:27', '2020-10-15 07:12:27'),
(330, 642565, 27500, 1, '2020-10-15 07:12:43', '2020-10-15 07:12:43'),
(331, 457769, 27500, 1, '2020-10-15 07:14:14', '2020-10-15 07:14:14'),
(332, 682320, 27500, 1, '2020-10-15 07:14:53', '2020-10-15 07:14:53'),
(333, 299292, 27500, 1, '2020-10-15 07:19:45', '2020-10-15 07:19:45'),
(334, 984286, 55000, 1, '2020-10-15 07:20:30', '2020-10-15 07:20:30'),
(335, 612717, 27500, 1, '2020-10-15 07:20:33', '2020-10-15 07:20:33'),
(336, 353531, 27500, 1, '2020-10-15 07:23:00', '2020-10-15 07:23:00'),
(337, 226289, 27500, 1, '2020-10-15 07:24:47', '2020-10-15 07:24:47'),
(338, 355784, 27500, 1, '2020-10-15 07:26:23', '2020-10-15 07:26:23'),
(339, 994404, 27500, 1, '2020-10-15 07:27:01', '2020-10-15 07:27:01'),
(340, 504835, 27500, 1, '2020-10-15 07:28:38', '2020-10-15 07:28:38'),
(341, 227937, 27500, 1, '2020-10-15 07:35:30', '2020-10-15 07:35:30'),
(342, 892797, 27500, 1, '2020-10-15 07:44:17', '2020-10-15 07:44:17'),
(343, 360392, 27500, 1, '2020-10-15 07:45:03', '2020-10-15 07:45:03'),
(344, 227806, 27500, 1, '2020-10-15 07:45:25', '2020-10-15 07:45:25'),
(345, 729284, 63800, 1, '2020-10-15 07:46:52', '2020-10-15 07:46:52'),
(346, 117507, 132000, 1, '2020-10-15 07:47:55', '2020-10-15 07:47:55'),
(347, 870311, 30800, 1, '2020-10-15 07:48:23', '2020-10-15 07:48:23'),
(348, 181861, 45100, 1, '2020-10-15 07:51:50', '2020-10-15 07:51:50'),
(349, 466746, 56100, 1, '2020-10-15 07:54:27', '2020-10-15 07:54:27'),
(350, 723123, 69300, 1, '2020-10-15 07:56:21', '2020-10-15 07:56:21'),
(351, 784656, 41800, 1, '2020-10-15 08:00:38', '2020-10-15 08:00:38'),
(352, 854031, 78100, 1, '2020-10-15 08:05:18', '2020-10-15 08:05:18'),
(353, 574921, 52800, 1, '2020-10-15 08:08:22', '2020-10-15 08:08:22'),
(354, 779437, 63800, 1, '2020-10-15 08:09:00', '2020-10-15 08:09:00'),
(355, 310382, 91300, 1, '2020-10-15 08:12:41', '2020-10-15 08:12:41'),
(356, 772948, 91300, 1, '2020-10-15 08:14:07', '2020-10-15 08:14:07'),
(357, 237240, 91300, 1, '2020-10-15 08:15:24', '2020-10-15 08:15:24'),
(358, 223737, 132000, 1, '2020-10-15 08:17:09', '2020-10-15 08:17:09'),
(359, 437465, 30800, 1, '2020-10-15 08:18:57', '2020-10-15 08:18:57'),
(360, 782361, 259600, 1, '2020-10-15 08:20:02', '2020-10-15 08:20:02'),
(361, 867294, 547800, 1, '2020-10-15 08:21:11', '2020-10-15 08:21:12'),
(362, 224875, 547800, 1, '2020-10-15 08:22:34', '2020-10-15 08:22:34'),
(363, 897559, 547800, 1, '2020-10-15 08:24:17', '2020-10-15 08:24:17'),
(364, 915683, 106700, 1, '2020-10-15 08:26:22', '2020-10-15 08:26:22'),
(365, 180194, 524700, 1, '2020-10-15 08:26:31', '2020-10-15 08:26:31'),
(366, 612591, 247500, 1, '2020-10-15 08:28:57', '2020-10-15 08:28:57'),
(367, 715769, 469700, 1, '2020-10-15 08:30:54', '2020-10-15 08:30:54'),
(368, 619838, 30800, 1, '2020-10-15 08:32:47', '2020-10-15 08:32:47'),
(369, 940918, 132000, 1, '2020-10-15 08:33:16', '2020-10-15 08:33:16'),
(370, 374972, 291500, 1, '2020-10-15 08:34:18', '2020-10-15 08:34:18'),
(371, 658518, 550000, 1, '2020-10-15 08:35:45', '2020-10-15 08:35:45'),
(372, 729886, 322300, 1, '2020-10-15 08:40:32', '2020-10-15 08:40:32'),
(373, 519061, 322300, 1, '2020-10-15 08:44:29', '2020-10-15 08:44:29'),
(374, 858139, 224400, 1, '2020-10-15 08:45:23', '2020-10-15 08:45:23'),
(375, 604071, 386100, 1, '2020-10-15 08:47:11', '2020-10-15 08:47:11'),
(376, 240089, 449900, 1, '2020-10-15 08:47:32', '2020-10-15 08:47:32'),
(377, 437852, 49500, 1, '2020-10-15 08:48:32', '2020-10-15 08:48:32'),
(378, 109410, 63800, 1, '2020-10-15 08:49:23', '2020-10-15 08:49:23'),
(379, 987738, 449900, 1, '2020-10-15 08:49:53', '2020-10-15 08:49:53'),
(380, 104654, 386100, 1, '2020-10-15 08:51:01', '2020-10-15 08:51:01'),
(381, 529534, 449900, 1, '2020-10-15 08:51:21', '2020-10-15 08:51:21'),
(382, 460707, 386100, 1, '2020-10-15 08:52:06', '2020-10-15 08:52:06'),
(383, 514033, 469700, 1, '2020-10-15 08:52:26', '2020-10-15 08:52:26'),
(384, 268192, 533500, 1, '2020-10-15 10:02:34', '2020-10-15 10:02:34'),
(385, 162260, 580800, 1, '2020-10-15 10:05:16', '2020-10-15 10:05:16'),
(386, 435208, 628100, 1, '2020-10-15 10:07:51', '2020-10-15 10:07:51'),
(387, 311070, 655600, 1, '2020-10-15 10:09:04', '2020-10-15 10:09:04'),
(388, 400037, 63800, 1, '2020-10-15 10:09:37', '2020-10-15 10:09:37'),
(389, 670800, 94600, 1, '2020-10-15 10:11:27', '2020-10-15 10:11:27'),
(390, 390256, 47300, 1, '2020-10-15 10:12:24', '2020-10-15 10:12:24'),
(391, 666697, 366300, 1, '2020-10-15 10:13:35', '2020-10-15 10:13:36'),
(392, 919357, 258500, 1, '2020-10-15 10:19:00', '2020-10-15 10:19:00'),
(393, 993157, 45100, 1, '2020-10-15 10:22:07', '2020-10-15 10:22:07'),
(394, 774025, 302500, 1, '2020-10-15 10:23:19', '2020-10-15 10:23:19'),
(395, 388851, 397100, 1, '2020-10-15 10:25:38', '2020-10-15 10:25:38'),
(396, 668010, 723800, 1, '2020-10-15 10:26:10', '2020-10-15 10:26:10'),
(397, 500217, 36300, 1, '2020-10-15 15:33:30', '2020-10-15 15:33:30'),
(398, 235493, 72600, 1, '2020-10-15 15:34:05', '2020-10-15 15:34:05'),
(399, 430026, 127600, 1, '2020-10-16 01:21:56', '2020-10-16 01:21:56'),
(400, 557597, 47300, 1, '2020-10-16 01:28:39', '2020-10-16 01:28:39'),
(401, 939106, 74800, 1, '2020-10-16 01:46:00', '2020-10-16 01:46:00'),
(402, 392960, 47300, 1, '2020-10-16 03:05:43', '2020-10-16 03:05:43'),
(403, 820270, 455400, 1, '2020-10-16 03:06:33', '2020-10-16 03:06:33');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `history_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `order_qty` int(11) NOT NULL,
  `order_total_price` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `history_id`, `product_id`, `order_qty`, `order_total_price`) VALUES
(266, 251, 75, 1, 15000),
(267, 252, 79, 1, 30000),
(268, 252, 78, 1, 28000),
(269, 253, 75, 1, 15000),
(270, 253, 78, 1, 28000),
(271, 253, 76, 1, 10000),
(272, 254, 75, 1, 15000),
(273, 254, 78, 1, 28000),
(274, 254, 76, 1, 10000),
(275, 254, 97, 1, 23000),
(276, 254, 98, 1, 18000),
(277, 255, 82, 1, 69000),
(278, 256, 81, 1, 60000),
(279, 257, 80, 1, 60000),
(280, 258, 98, 1, 18000),
(281, 259, 78, 1, 28000),
(282, 260, 76, 1, 10000),
(283, 261, 77, 1, 33000),
(284, 262, 79, 1, 30000),
(285, 263, 83, 3, 15000),
(286, 264, 77, 1, 33000),
(287, 265, 76, 1, 10000),
(288, 266, 79, 1, 30000),
(289, 266, 78, 1, 28000),
(290, 267, 97, 1, 23000),
(291, 267, 83, 1, 5000),
(292, 267, 82, 1, 69000),
(293, 268, 81, 1, 60000),
(294, 269, 81, 1, 60000),
(295, 270, 81, 1, 60000),
(296, 271, 77, 1, 33000),
(297, 272, 77, 1, 33000),
(298, 273, 77, 1, 33000),
(299, 274, 77, 1, 33000),
(300, 275, 77, 1, 33000),
(301, 276, 83, 1, 5000),
(302, 277, 83, 1, 5000),
(303, 278, 83, 1, 5000),
(304, 279, 83, 1, 5000),
(305, 279, 83, 1, 5000),
(306, 279, 76, 1, 10000),
(307, 280, 83, 1, 5000),
(308, 280, 76, 1, 10000),
(309, 281, 76, 1, 10000),
(310, 281, 75, 1, 15000),
(311, 282, 76, 1, 10000),
(312, 282, 75, 1, 15000),
(313, 283, 76, 1, 10000),
(314, 283, 75, 1, 15000),
(315, 284, 76, 1, 10000),
(316, 284, 75, 1, 15000),
(317, 285, 76, 1, 10000),
(318, 285, 75, 1, 15000),
(319, 285, 75, 1, 15000),
(320, 285, 76, 1, 10000),
(321, 286, 75, 1, 15000),
(322, 286, 76, 1, 10000),
(323, 287, 75, 1, 15000),
(324, 287, 76, 1, 10000),
(325, 288, 75, 1, 15000),
(326, 288, 76, 1, 10000),
(327, 289, 76, 1, 10000),
(328, 289, 75, 1, 15000),
(329, 290, 76, 1, 10000),
(330, 290, 75, 1, 15000),
(331, 291, 76, 1, 10000),
(332, 291, 75, 1, 15000),
(333, 291, 76, 1, 10000),
(334, 291, 75, 1, 15000),
(335, 292, 76, 1, 10000),
(336, 292, 75, 1, 15000),
(337, 293, 76, 1, 10000),
(338, 293, 75, 1, 15000),
(339, 294, 76, 1, 10000),
(340, 294, 75, 1, 15000),
(341, 295, 75, 1, 15000),
(342, 295, 76, 1, 10000),
(343, 296, 75, 1, 15000),
(344, 296, 76, 1, 10000),
(345, 297, 75, 1, 15000),
(346, 297, 76, 1, 10000),
(347, 298, 76, 1, 10000),
(348, 298, 75, 1, 15000),
(349, 299, 76, 1, 10000),
(350, 299, 75, 1, 15000),
(351, 300, 76, 1, 10000),
(352, 300, 75, 1, 15000),
(353, 300, 76, 1, 10000),
(354, 300, 75, 1, 15000),
(355, 301, 76, 1, 10000),
(356, 301, 75, 1, 15000),
(357, 302, 76, 1, 10000),
(358, 302, 75, 1, 15000),
(359, 303, 75, 1, 15000),
(360, 303, 76, 1, 10000),
(361, 304, 76, 1, 10000),
(362, 304, 75, 1, 15000),
(363, 305, 76, 1, 10000),
(364, 306, 76, 1, 10000),
(365, 305, 75, 1, 15000),
(366, 306, 75, 1, 15000),
(367, 306, 76, 1, 10000),
(368, 306, 75, 1, 15000),
(369, 307, 76, 1, 10000),
(370, 307, 75, 1, 15000),
(371, 308, 75, 1, 15000),
(372, 308, 76, 1, 10000),
(373, 309, 75, 1, 15000),
(374, 309, 76, 1, 10000),
(375, 310, 75, 1, 15000),
(376, 310, 76, 1, 10000),
(377, 311, 75, 1, 15000),
(378, 311, 76, 1, 10000),
(379, 312, 75, 1, 15000),
(380, 312, 76, 1, 10000),
(381, 313, 75, 1, 15000),
(382, 313, 76, 1, 10000),
(383, 314, 75, 1, 15000),
(384, 314, 76, 1, 10000),
(385, 315, 75, 1, 15000),
(386, 315, 76, 1, 10000),
(387, 316, 75, 1, 15000),
(388, 316, 76, 1, 10000),
(389, 317, 75, 1, 15000),
(390, 317, 76, 1, 10000),
(391, 318, 75, 1, 15000),
(392, 318, 76, 1, 10000),
(393, 319, 75, 1, 15000),
(394, 319, 76, 1, 10000),
(395, 320, 76, 1, 10000),
(396, 320, 77, 1, 33000),
(397, 321, 76, 1, 10000),
(398, 321, 75, 1, 15000),
(399, 322, 76, 1, 10000),
(400, 322, 75, 1, 15000),
(401, 323, 76, 1, 10000),
(402, 323, 75, 1, 15000),
(403, 324, 75, 1, 15000),
(404, 324, 76, 1, 10000),
(405, 325, 76, 1, 10000),
(406, 325, 75, 1, 15000),
(407, 326, 75, 1, 15000),
(408, 326, 76, 1, 10000),
(409, 327, 75, 1, 15000),
(410, 327, 76, 1, 10000),
(411, 328, 75, 1, 15000),
(412, 328, 76, 1, 10000),
(413, 329, 75, 1, 15000),
(414, 329, 76, 1, 10000),
(415, 330, 75, 1, 15000),
(416, 330, 76, 1, 10000),
(417, 331, 75, 1, 15000),
(418, 331, 76, 1, 10000),
(419, 332, 76, 1, 10000),
(420, 332, 75, 1, 15000),
(421, 333, 76, 1, 10000),
(422, 333, 75, 1, 15000),
(423, 334, 76, 1, 10000),
(424, 334, 75, 1, 15000),
(425, 334, 75, 1, 15000),
(426, 334, 76, 1, 10000),
(427, 335, 75, 1, 15000),
(428, 335, 76, 1, 10000),
(429, 336, 75, 1, 15000),
(430, 336, 76, 1, 10000),
(431, 337, 76, 1, 10000),
(432, 337, 75, 1, 15000),
(433, 338, 76, 1, 10000),
(434, 338, 75, 1, 15000),
(435, 339, 75, 1, 15000),
(436, 339, 76, 1, 10000),
(437, 340, 76, 1, 10000),
(438, 340, 75, 1, 15000),
(439, 341, 76, 1, 10000),
(440, 341, 75, 1, 15000),
(441, 342, 76, 1, 10000),
(442, 342, 75, 1, 15000),
(443, 343, 75, 1, 15000),
(444, 343, 76, 1, 10000),
(445, 344, 76, 1, 10000),
(446, 344, 75, 1, 15000),
(447, 345, 79, 1, 30000),
(448, 345, 78, 1, 28000),
(449, 346, 80, 1, 60000),
(450, 346, 81, 1, 60000),
(451, 347, 97, 1, 23000),
(452, 347, 83, 1, 5000),
(453, 348, 97, 1, 23000),
(454, 348, 98, 1, 18000),
(455, 349, 98, 1, 18000),
(456, 349, 77, 1, 33000),
(457, 350, 77, 1, 33000),
(458, 350, 79, 1, 30000),
(459, 351, 76, 1, 10000),
(460, 351, 78, 1, 28000),
(461, 352, 76, 1, 10000),
(462, 352, 78, 1, 28000),
(463, 352, 77, 1, 33000),
(464, 353, 77, 1, 33000),
(465, 353, 75, 1, 15000),
(466, 354, 79, 1, 30000),
(467, 354, 78, 1, 28000),
(468, 355, 97, 1, 23000),
(469, 355, 80, 1, 60000),
(470, 356, 97, 1, 23000),
(471, 356, 80, 1, 60000),
(472, 357, 97, 1, 23000),
(473, 357, 80, 1, 60000),
(474, 358, 81, 1, 60000),
(475, 358, 80, 1, 60000),
(476, 359, 97, 1, 23000),
(477, 359, 83, 1, 5000),
(478, 360, 98, 5, 90000),
(479, 360, 79, 3, 90000),
(480, 360, 78, 2, 56000),
(481, 361, 80, 2, 120000),
(482, 361, 81, 4, 240000),
(483, 361, 82, 2, 138000),
(484, 362, 80, 2, 120000),
(485, 362, 81, 4, 240000),
(486, 362, 82, 2, 138000),
(487, 363, 80, 2, 120000),
(488, 363, 81, 4, 240000),
(489, 363, 82, 2, 138000),
(490, 364, 97, 1, 23000),
(491, 364, 83, 1, 5000),
(492, 364, 82, 1, 69000),
(493, 365, 97, 1, 23000),
(494, 365, 83, 1, 5000),
(495, 365, 82, 1, 69000),
(496, 365, 97, 6, 138000),
(497, 365, 83, 7, 35000),
(498, 365, 82, 3, 207000),
(499, 366, 98, 3, 54000),
(500, 366, 75, 3, 45000),
(501, 366, 76, 6, 60000),
(502, 366, 77, 2, 66000),
(503, 367, 80, 3, 180000),
(504, 367, 82, 3, 207000),
(505, 367, 83, 8, 40000),
(506, 368, 97, 1, 23000),
(507, 368, 83, 1, 5000),
(508, 369, 81, 1, 60000),
(509, 369, 80, 1, 60000),
(510, 370, 76, 3, 30000),
(511, 370, 79, 3, 90000),
(512, 370, 81, 2, 120000),
(513, 370, 83, 5, 25000),
(514, 371, 76, 3, 30000),
(515, 371, 79, 3, 90000),
(516, 371, 81, 2, 120000),
(517, 371, 83, 5, 25000),
(518, 371, 82, 1, 69000),
(519, 371, 81, 1, 60000),
(520, 371, 80, 1, 60000),
(521, 371, 83, 1, 5000),
(522, 371, 97, 1, 23000),
(523, 371, 98, 1, 18000),
(524, 372, 98, 1, 18000),
(525, 372, 83, 1, 5000),
(526, 372, 97, 1, 23000),
(527, 372, 80, 1, 60000),
(528, 372, 81, 1, 60000),
(529, 372, 82, 1, 69000),
(530, 372, 79, 1, 30000),
(531, 372, 78, 1, 28000),
(532, 373, 98, 1, 18000),
(533, 373, 83, 1, 5000),
(534, 373, 97, 1, 23000),
(535, 373, 80, 1, 60000),
(536, 373, 81, 1, 60000),
(537, 373, 82, 1, 69000),
(538, 373, 79, 1, 30000),
(539, 373, 78, 1, 28000),
(540, 374, 78, 1, 28000),
(541, 374, 79, 1, 30000),
(542, 374, 75, 1, 15000),
(543, 374, 76, 1, 10000),
(544, 374, 77, 1, 33000),
(545, 374, 83, 1, 5000),
(546, 374, 97, 1, 23000),
(547, 374, 80, 1, 60000),
(548, 375, 97, 1, 23000),
(549, 375, 83, 1, 5000),
(550, 375, 80, 1, 60000),
(551, 375, 81, 1, 60000),
(552, 375, 82, 1, 69000),
(553, 375, 98, 1, 18000),
(554, 375, 79, 1, 30000),
(555, 375, 78, 1, 28000),
(556, 375, 75, 1, 15000),
(557, 375, 76, 1, 10000),
(558, 375, 77, 1, 33000),
(559, 376, 97, 1, 23000),
(560, 376, 83, 1, 5000),
(561, 376, 80, 1, 60000),
(562, 376, 81, 1, 60000),
(563, 376, 82, 1, 69000),
(564, 376, 98, 1, 18000),
(565, 376, 79, 1, 30000),
(566, 376, 78, 1, 28000),
(567, 376, 75, 1, 15000),
(568, 376, 76, 1, 10000),
(569, 376, 77, 1, 33000),
(570, 376, 79, 1, 30000),
(571, 376, 78, 1, 28000),
(572, 377, 79, 1, 30000),
(573, 377, 75, 1, 15000),
(574, 378, 79, 1, 30000),
(575, 378, 78, 1, 28000),
(576, 379, 79, 1, 30000),
(577, 379, 78, 1, 28000),
(578, 379, 78, 1, 28000),
(579, 379, 79, 1, 30000),
(580, 379, 75, 1, 15000),
(581, 379, 76, 1, 10000),
(582, 379, 77, 1, 33000),
(583, 379, 83, 1, 5000),
(584, 379, 97, 1, 23000),
(585, 379, 80, 1, 60000),
(586, 379, 81, 1, 60000),
(587, 379, 82, 1, 69000),
(588, 379, 98, 1, 18000),
(589, 380, 98, 1, 18000),
(590, 380, 97, 1, 23000),
(591, 380, 83, 1, 5000),
(592, 380, 80, 1, 60000),
(593, 380, 81, 1, 60000),
(594, 380, 82, 1, 69000),
(595, 380, 78, 1, 28000),
(596, 380, 79, 1, 30000),
(597, 380, 75, 1, 15000),
(598, 380, 76, 1, 10000),
(599, 380, 77, 1, 33000),
(600, 381, 98, 1, 18000),
(601, 381, 97, 1, 23000),
(602, 381, 83, 1, 5000),
(603, 381, 80, 1, 60000),
(604, 381, 81, 1, 60000),
(605, 381, 82, 1, 69000),
(606, 381, 78, 1, 28000),
(607, 381, 79, 1, 30000),
(608, 381, 75, 1, 15000),
(609, 381, 76, 1, 10000),
(610, 381, 77, 1, 33000),
(611, 381, 79, 1, 30000),
(612, 381, 78, 1, 28000),
(613, 382, 75, 1, 15000),
(614, 382, 76, 1, 10000),
(615, 382, 77, 1, 33000),
(616, 382, 78, 1, 28000),
(617, 382, 79, 1, 30000),
(618, 382, 80, 1, 60000),
(619, 382, 81, 1, 60000),
(620, 382, 82, 1, 69000),
(621, 382, 83, 1, 5000),
(622, 382, 97, 1, 23000),
(623, 382, 98, 1, 18000),
(624, 383, 75, 1, 15000),
(625, 383, 76, 1, 10000),
(626, 383, 77, 1, 33000),
(627, 383, 78, 1, 28000),
(628, 383, 79, 1, 30000),
(629, 383, 80, 1, 60000),
(630, 383, 81, 1, 60000),
(631, 383, 82, 1, 69000),
(632, 383, 83, 1, 5000),
(633, 383, 97, 1, 23000),
(634, 383, 98, 1, 18000),
(635, 383, 98, 1, 18000),
(636, 383, 79, 1, 30000),
(637, 383, 78, 1, 28000),
(638, 384, 75, 1, 15000),
(639, 384, 76, 1, 10000),
(640, 384, 77, 1, 33000),
(641, 384, 78, 1, 28000),
(642, 384, 79, 1, 30000),
(643, 384, 80, 1, 60000),
(644, 384, 81, 1, 60000),
(645, 384, 82, 1, 69000),
(646, 384, 83, 1, 5000),
(647, 384, 97, 1, 23000),
(648, 384, 98, 1, 18000),
(649, 384, 98, 1, 18000),
(650, 384, 79, 1, 30000),
(651, 384, 78, 1, 28000),
(652, 384, 78, 1, 28000),
(653, 384, 79, 1, 30000),
(654, 385, 75, 1, 15000),
(655, 385, 76, 1, 10000),
(656, 385, 77, 1, 33000),
(657, 385, 78, 1, 28000),
(658, 385, 79, 1, 30000),
(659, 385, 80, 1, 60000),
(660, 385, 81, 1, 60000),
(661, 385, 82, 1, 69000),
(662, 385, 83, 1, 5000),
(663, 385, 97, 1, 23000),
(664, 385, 98, 1, 18000),
(665, 385, 98, 1, 18000),
(666, 385, 79, 1, 30000),
(667, 385, 78, 1, 28000),
(668, 385, 78, 1, 28000),
(669, 385, 79, 1, 30000),
(670, 385, 77, 1, 33000),
(671, 385, 76, 1, 10000),
(672, 386, 75, 1, 15000),
(673, 386, 76, 1, 10000),
(674, 386, 77, 1, 33000),
(675, 386, 78, 1, 28000),
(676, 386, 79, 1, 30000),
(677, 386, 80, 1, 60000),
(678, 386, 81, 1, 60000),
(679, 386, 82, 1, 69000),
(680, 386, 83, 1, 5000),
(681, 386, 97, 1, 23000),
(682, 386, 98, 1, 18000),
(683, 386, 98, 1, 18000),
(684, 386, 79, 1, 30000),
(685, 386, 78, 1, 28000),
(686, 386, 78, 1, 28000),
(687, 386, 79, 1, 30000),
(688, 386, 77, 1, 33000),
(689, 386, 76, 1, 10000),
(690, 386, 77, 1, 33000),
(691, 386, 76, 1, 10000),
(692, 387, 75, 1, 15000),
(693, 387, 76, 1, 10000),
(694, 387, 77, 1, 33000),
(695, 387, 78, 1, 28000),
(696, 387, 79, 1, 30000),
(697, 387, 80, 1, 60000),
(698, 387, 81, 1, 60000),
(699, 387, 82, 1, 69000),
(700, 387, 83, 1, 5000),
(701, 387, 97, 1, 23000),
(702, 387, 98, 1, 18000),
(703, 387, 98, 1, 18000),
(704, 387, 79, 1, 30000),
(705, 387, 78, 1, 28000),
(706, 387, 78, 1, 28000),
(707, 387, 79, 1, 30000),
(708, 387, 77, 1, 33000),
(709, 387, 76, 1, 10000),
(710, 387, 77, 1, 33000),
(711, 387, 76, 1, 10000),
(712, 387, 75, 1, 15000),
(713, 387, 76, 1, 10000),
(714, 388, 79, 1, 30000),
(715, 388, 78, 1, 28000),
(716, 389, 79, 1, 30000),
(717, 389, 78, 1, 28000),
(718, 389, 97, 1, 23000),
(719, 389, 83, 1, 5000),
(720, 390, 78, 1, 28000),
(721, 390, 75, 1, 15000),
(722, 391, 75, 1, 15000),
(723, 391, 76, 1, 10000),
(724, 391, 77, 1, 33000),
(725, 391, 78, 1, 28000),
(726, 391, 79, 1, 30000),
(727, 391, 83, 1, 5000),
(728, 391, 97, 1, 23000),
(729, 391, 80, 1, 60000),
(730, 391, 81, 1, 60000),
(731, 391, 82, 1, 69000),
(732, 392, 82, 1, 69000),
(733, 392, 80, 1, 60000),
(734, 392, 81, 1, 60000),
(735, 392, 97, 1, 23000),
(736, 392, 83, 1, 5000),
(737, 392, 98, 1, 18000),
(738, 393, 98, 1, 18000),
(739, 393, 97, 1, 23000),
(740, 394, 80, 1, 60000),
(741, 394, 81, 1, 60000),
(742, 394, 82, 1, 69000),
(743, 394, 97, 1, 23000),
(744, 394, 83, 1, 5000),
(745, 394, 79, 1, 30000),
(746, 394, 78, 1, 28000),
(747, 395, 80, 1, 60000),
(748, 395, 81, 1, 60000),
(749, 395, 82, 1, 69000),
(750, 395, 97, 1, 23000),
(751, 395, 83, 1, 5000),
(752, 395, 79, 1, 30000),
(753, 395, 78, 1, 28000),
(754, 395, 77, 2, 66000),
(755, 395, 76, 2, 20000),
(756, 396, 80, 1, 60000),
(757, 396, 81, 1, 60000),
(758, 396, 82, 1, 69000),
(759, 396, 97, 1, 23000),
(760, 396, 83, 1, 5000),
(761, 396, 79, 1, 30000),
(762, 396, 78, 1, 28000),
(763, 396, 77, 2, 66000),
(764, 396, 76, 2, 20000),
(765, 396, 77, 9, 297000),
(766, 397, 77, 1, 33000),
(767, 398, 77, 1, 33000),
(768, 398, 77, 1, 33000),
(769, 399, 101, 4, 80000),
(770, 399, 98, 2, 36000),
(771, 400, 76, 1, 10000),
(772, 400, 77, 1, 33000),
(773, 401, 78, 1, 28000),
(774, 401, 79, 1, 30000),
(775, 401, 76, 1, 10000),
(776, 402, 77, 1, 33000),
(777, 402, 76, 1, 10000),
(778, 403, 77, 1, 33000),
(779, 403, 76, 1, 10000),
(780, 403, 75, 1, 15000),
(781, 403, 76, 1, 10000),
(782, 403, 77, 1, 33000),
(783, 403, 79, 1, 30000),
(784, 403, 78, 1, 28000),
(785, 403, 80, 1, 60000),
(786, 403, 81, 1, 60000),
(787, 403, 82, 1, 69000),
(788, 403, 97, 1, 23000),
(789, 403, 83, 1, 5000),
(790, 403, 101, 1, 20000),
(791, 403, 98, 1, 18000);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_name` varchar(150) NOT NULL,
  `product_price` int(15) NOT NULL,
  `product_image` varchar(200) NOT NULL,
  `product_created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `product_updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `product_status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `category_id`, `product_name`, `product_price`, `product_image`, `product_created_at`, `product_updated_at`, `product_status`) VALUES
(75, 1, 'Coffe Latte', 15000, '2020-09-11T02-38-43.964Z-coffelatte.jpg', '2020-09-11 02:38:44', '2020-10-13 18:46:39', 0),
(76, 1, 'Espresso', 10000, '2020-09-11T02-39-11.134Z-espresso.jpg', '2020-09-11 02:39:11', '2020-09-11 02:39:11', 1),
(77, 1, 'Red Velvet Latte', 33000, '2020-09-11T02-51-31.513Z-redvelvet.jpg', '2020-09-11 02:51:31', '2020-09-11 02:51:32', 1),
(78, 1, 'Choco Rhum', 28000, '2020-09-11T02-52-44.222Z-chocorum.jpg', '2020-09-11 02:52:44', '2020-09-11 02:52:44', 1),
(79, 1, 'Black Forest', 30000, '2020-09-11T02-53-42.277Z-blackforest.jpg', '2020-09-11 02:53:42', '2020-09-11 02:53:42', 1),
(80, 3, 'Chicken Katsu', 60000, '2020-09-11T02-54-48.648Z-chickenkatsu.jpg', '2020-09-11 02:54:48', '2020-10-12 14:55:06', 1),
(81, 3, 'Salmon Truffle', 60000, '2020-09-11T02-57-41.474Z-salmon.jpg', '2020-09-11 02:57:41', '2020-10-12 14:54:58', 1),
(82, 3, 'Wiener Schnitzel', 69000, '2020-09-11T03-01-10.282Z-wiener.jpg', '2020-09-11 03:01:10', '2020-10-12 14:54:50', 1),
(83, 1, 'Cappucino', 5000, '2020-09-11T03-02-22.716Z-cappucino.jpg', '2020-09-11 03:02:23', '2020-09-11 03:02:23', 1),
(97, 2, 'Cupcake Chocolate', 23000, '2020-10-12T14-54-24.709Z-cupcake-2.jpeg', '2020-10-12 14:54:25', '2020-10-12 14:56:26', 1),
(98, 2, 'Sweet Chocolate', 18000, '2020-10-12T14-56-07.358Z-sweets-3.jpeg', '2020-10-12 14:56:07', '2020-10-13 18:46:31', 1),
(101, 3, 'Doughnut', 20000, '2020-10-16T01-20-35.797Z-doughnut-2.jpeg', '2020-10-16 01:20:35', '2020-10-16 01:20:52', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `user_email` varchar(150) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `user_role` int(1) NOT NULL,
  `user_status` int(1) NOT NULL,
  `user_key` varchar(20) NOT NULL,
  `user_created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `user_updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_email`, `user_password`, `user_name`, `user_role`, `user_status`, `user_key`, `user_created_at`, `user_updated_at`) VALUES
(1, 'ardhikarn@gmail.com', '$2b$10$dWzyymmb1XFy/FKLGmMpt.UnBivtPp0FPJyYltIN..FRxviaD.04G', 'Ardhika Ryzha', 1, 1, '', '2020-09-01 04:05:58', '2020-09-01 04:05:58'),
(2, 'adminkhusus@caffeshop.com', '$2b$10$N7fmUilLGAGjaodiBd/MruB7ekN5K41q3jNneswz04f6Mvb.R0N3O', 'adminkhusus', 1, 1, '', '2020-09-02 01:22:17', '2020-09-06 05:02:59'),
(3, 'cashier1@caffeshop.com', '$2b$10$IuP7vfUUSl6ejKseQAKZju3VXISyO0dRcqbVyDb06mpEqkKAB6WVW', 'Cashier', 2, 1, '', '2020-09-02 01:27:34', '2020-10-16 01:19:06'),
(4, 'admin2@caffeshop.com', '$2b$10$mCf7/3OAPmlyMaqzvQl9Y.qzTsus07n2.5hpFXBJN22kpCQ2zhEfe', 'admin', 1, 0, '', '2020-09-02 02:06:39', '2020-10-16 03:05:34'),
(5, 'admin3@caffeshop.com', '$2b$10$OJlQfYgRGhgruzCy7wD4wOD37rVsae0Vy9M.Ue7BVzE.QCu85Y7qK', 'admin', 1, 1, '', '2020-09-02 02:07:29', '2020-10-12 11:45:29'),
(6, 'admin4@caffeshop.com', '$2b$10$IuixREfL5QYE98RJrs8mFOQWwhh4PB.vcdHuB4QVs7ALz0DRPgt7C', 'admin', 2, 0, '', '2020-09-02 02:19:24', '2020-09-02 02:19:24'),
(7, 'admin5@caffeshop.com', '$2b$10$AJ/6jNSlFPIaU1/ffC1uuuzHiyD7b9drsDAUuWarZucHvYeEyB0tu', 'admin', 2, 0, '', '2020-09-02 06:15:42', '2020-09-02 06:15:42'),
(8, 'admin6@caffeshop.com', '$2b$10$2TjpO6xey5pSL2fxdIj.Ue9cAvtM3DXYdfwKiN.KHqsNqrx/6oodO', 'admin', 2, 0, '', '2020-09-02 06:16:47', '2020-09-02 06:16:47'),
(9, 'admin7@caffeshop.com', '$2b$10$WethvZRTG9oFJZXwwd0XFeTewQGmjXRY/Uj/U2igIDW3aVJTB0s4q', 'admin', 2, 0, '', '2020-09-02 06:21:38', '2020-09-02 06:21:38'),
(10, 'admin8@caffeshop.com', '$2b$10$024HpJ8K8K.R39vZ8xTfMuHrCRuQ0lEanZa/kAZWCj2Dljq13Ao0.', 'admin', 2, 0, '', '2020-09-02 06:21:54', '2020-09-02 06:21:54'),
(11, 'admin9@caffeshop.com', '$2b$10$OqRUsgWwnIYTRiJI0ceE0uUqa1gwL5KmuvIPX9yd6RJe5G0Y46Xdy', 'admin', 2, 0, '', '2020-09-02 07:39:16', '2020-09-02 07:39:16'),
(12, 'admincaffeshop@gmail.com', '$2b$10$3wxrXLNEHBXMRz8CTh5zY.KxxUcCpzP5S3lBTJKXlI7TUrYmQI856', 'admin caffeshop', 1, 0, '', '2020-09-05 13:12:27', '2020-09-05 13:12:27'),
(13, 'cashier10@caffeshop.com', '$2b$10$QS6xVENOIIt8/N8R2yN0ZOdTwTtA7KrJ9kwIU83e3xr4XW/D4Icxm', 'Cashier#10', 2, 1, '', '2020-09-06 07:52:33', '2020-09-06 07:52:33'),
(14, 'admin11@caffeshop.com', '$2b$10$efkLTEs5uMJTBffq1.tU8OeBDzCAzw4j9eo1UsEroHcKyrdYwJpoW', 'admin11', 2, 0, '', '2020-09-06 07:53:21', '2020-09-06 07:53:21'),
(15, 'cashier7@caffeshop.com', '$2b$10$pvkGpf.v/xxb2cgm0aec6uYWoX2.B5/JMKcayYYdlhy92AfydQCV6', 'Cashier#7', 2, 1, '', '2020-09-07 01:47:38', '2020-09-07 01:54:02'),
(16, 'admin100@caffeshop.com', '$2b$10$uqvyGAuS1cO7yeruq2OZt..wswKDxcmgRiXrwwQF/T8gYDosmJmz.', 'Admin100', 1, 1, '', '2020-09-07 02:52:30', '2020-09-07 04:59:56'),
(17, 'user100@caffeshop.com', '$2b$10$lIETOhThx/Ztd9AIFfHF2OgNaZsKoR9HSI1kMu7eQynaNLN7oGkze', 'User100', 2, 1, '', '2020-09-07 04:57:33', '2020-09-07 04:57:33'),
(18, 'admin101@caffeshop.com', '$2b$10$wQykUJp4wgAyVSsw36v1HevqTutKy.y7jxde3M5w3PtOrmXBcv1dm', 'Admin101', 2, 1, '', '2020-09-07 05:18:47', '2020-10-12 11:29:18'),
(19, 'contoh1@gmail.com', '$2b$10$YHk.H161FKNqh6hasv4IbO1d5XWxEjOT/MGDQObwBex/1YtSoa7hi', 'contoh1', 2, 1, '', '2020-09-07 05:23:22', '2020-09-07 05:23:22'),
(20, 'ardhikaaa@gmail.com', '$2b$10$ftw4J6iRyAL8kxafmF9E8uSLLatcqY4pfcO2mEh/VJe3O2FMeRIHu', 'ardhikarr', 2, 0, '', '2020-09-10 13:10:20', '2020-09-10 13:10:21'),
(21, 'arn@gmail.com', '$2b$10$Uu7kJju9F1JTX6cQfRwEleWqro/wDAXYkjuJJJ8wkUc0uES6ZS.ua', 'ardhika ryzha nurmawan', 2, 0, '', '2020-09-10 13:11:17', '2020-09-10 13:11:17'),
(22, 'arn10@gmail.com', '$2b$10$lQOzofGicrcZTM/2jMkWt.b/E3ZULjlaxMypSpcLomWwlYq/vfbh.', 'arn', 2, 0, '', '2020-09-10 13:11:47', '2020-09-10 13:11:47'),
(23, 'register1@gmail.com', '$2b$10$ti3xpgE3wqO9fMktaez5cOmRZuADwY3sECtM34cqebBaVqmFHxc42', 'register1', 2, 0, '', '2020-09-11 06:18:00', '2020-09-11 06:18:01'),
(24, 'ardhika@gmail.com', '$2b$10$EV2Ba46IQIm24Q1mmEpteO/IK4B51BNdawYXOBOgdJhT85O0gswmG', 'ardhika', 2, 0, '', '2020-09-13 00:52:07', '2020-09-13 00:52:07'),
(25, 'acak@gmail.com', '$2b$10$7glIXCB3TIOlPJSoso0NzO7Zq.9QuqSZi5JbaN5G2NnmqyeHJTVv2', 'acak', 2, 0, '', '2020-09-14 01:57:10', '2020-09-14 01:57:10'),
(26, 'acakcaak@gmail.com', '$2b$10$ad0N7AZbsE.rWD9TGqWE1.2YJgNeAAryw1PVhNbhb51LX1BWhprLW', 'aa', 2, 0, '', '2020-09-14 02:47:14', '2020-09-14 02:47:14'),
(27, 'qwerty@gmail.com', '$2b$10$.qkzDgiTfbCRBVgZDmltwO5IcMMfwdIRfca.n3QeVPOxoYBlJuAyS', 'qwerty', 2, 0, '', '2020-09-14 04:59:52', '2020-09-14 04:59:53'),
(28, 'aa@gmail.com', '$2b$10$ftH.hfBET1bwi6pvGDZXUeFgPG42wfM3R6XZedfslGlnnYWrekxyy', '1', 2, 0, '', '2020-09-14 06:33:25', '2020-09-14 06:33:25'),
(29, 'admin@gmail.com', '$2b$10$.KuaPWXBVIsdwpzE6fBxqensZsGZPF1s8ZynTiHgY3ceBynMbqftW', 'admin', 2, 0, '', '2020-09-14 06:46:25', '2020-09-14 06:46:25'),
(30, 'ryzha@gmail.com', '$2b$10$CRvq40/pZyGSeQfyZeqtz.CLNyE7DLtOZttYblnQRV5Nf4RLr.Vjy', 'ryzha', 2, 0, '', '2020-09-14 07:05:04', '2020-09-14 07:05:04'),
(31, 'ads@gmail.com', '$2b$10$fn6gR5Y8PrbVN4PXd8Zx/Ov3DkDSYQMByg.GJLFjuUpPh3JVmETu.', 'ads', 2, 0, '', '2020-09-14 07:06:37', '2020-09-14 07:06:37'),
(32, 'aaa@gmail.com', '$2b$10$uyEKoY/s4u3ZvzE3PCnnyukY0/iUUSnNb.IgHBj4lX5vy3EPyW0Da', 'aaa', 2, 0, '', '2020-09-14 07:07:06', '2020-09-14 07:07:06'),
(33, 'a@gmail.com', '$2b$10$FgdhFMIC8EoNI65lqlBOvuc3ATeOOSJtj.7vOhE9o3HKZHCONKhy.', 'a', 2, 0, '', '2020-09-14 07:07:53', '2020-09-14 07:07:53'),
(34, 'aaaa@gmail.com', '$2b$10$wYcnJHGmshdFzglTJ5fIxuPUtwC5nlb3HiNKZJLd2RgYe0YTZV5JO', 'aaaa', 2, 0, '', '2020-09-14 07:09:29', '2020-09-14 07:09:29'),
(35, 'aaaaaa@gmail.com', '$2b$10$yIY15tp7BHP8/ddeOWObaefCD1cXXWqG7zJtbjFMNIMwpTIKG2G/a', 'aaaaaa', 2, 0, '', '2020-09-14 07:10:06', '2020-09-14 07:10:06'),
(36, 'aaaaaaa@gmail.com', '$2b$10$4rFvbibjjhYk6/BGuLyLYOf2S5SYBHcPZPNFFlHwz7JHxIDgc483e', 'aaaaaaa', 2, 0, '', '2020-09-14 07:11:51', '2020-09-14 07:11:51'),
(37, 'aaabbb@gmail.com', '$2b$10$xcBXpn0GKkaaw8UqQ3W1IuuYhxJSN28ky8T2ydLEHjz9ZVjBopyjC', 'aaabbb', 2, 0, '', '2020-10-06 14:01:44', '2020-10-06 14:01:44'),
(38, 'qwertyzxcvb@gmail.com', '$2b$10$bSQ6BMeBTTTkAU/ftQKeYODsioqZmrf/aKb0I4esn44msU5/ItPKe', 'qwerty', 2, 0, '', '2020-10-06 14:07:15', '2020-10-06 14:07:16'),
(39, 'zzz@gmail.com', '$2b$10$YE4EyqQlUJARs5BMhL/rIeQMc0tuNInvHUniAecmc.Yxjtkz8i1Xy', 'zzz', 2, 0, '', '2020-10-06 14:12:54', '2020-10-06 14:12:54'),
(40, 'sss@gmail.com', '$2b$10$sKmOMsXLnuJxvgxEkgLy1.zh3s63ypS2WCa29L1z7PudRZnnYmZgy', 'sss', 2, 0, '', '2020-10-06 14:22:40', '2020-10-06 14:22:40'),
(41, 'tess@gmail.com', '$2b$10$Np6SlK/qJecv5eyk0g30Wu6RV9GMdh1eUCss3/ekUYenHaKY5NZw6', 'tess', 2, 0, '', '2020-10-11 14:49:22', '2020-10-11 14:49:22'),
(42, 'tes@gmail.com', '$2b$10$ocLMo8Q/VmWbXtyExe4ySe67otHHGhCxUQaE/e0gtuKn22vEIsyeG', 'tes', 2, 0, '', '2020-10-11 14:53:55', '2020-10-11 14:53:55'),
(43, 'tesss@gmail.com', '$2b$10$318y3RZc3tDyh778mkuvKuKCx.1Qd/.FIQ5w1ZpLL0908W0YAbozC', 'tesss', 2, 0, '', '2020-10-11 14:55:26', '2020-10-11 14:55:26'),
(44, 'tes2@gmail.com', '$2b$10$V8dEQO9Mwo1CUXaAPMjvjusR5ZrjVZxAg5lyu6Ql43ybX9u5KxeGC', 'tes2', 2, 0, '', '2020-10-11 14:56:06', '2020-10-11 14:56:06'),
(45, 'tes1@gmail.com', '$2b$10$j/3zt.T.WOYtGOWzdh6SVe2i.r0eGqoQwRqVdtxj.zA.DKAc/SrtG', 'tes1', 2, 0, '', '2020-10-11 14:57:11', '2020-10-11 14:57:11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`history_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `history_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=404;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=792;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;