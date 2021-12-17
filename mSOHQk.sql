-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 15, 2021 at 04:02 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pakrealtors`
--

-- --------------------------------------------------------

--
-- Table structure for table `activities`
--

CREATE TABLE `activities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `p_id` bigint(20) NOT NULL,
  `u_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `likes` bigint(20) DEFAULT 0,
  `views` bigint(20) NOT NULL DEFAULT 0,
  `eng` bigint(20) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `thumbnail` varchar(5000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `p_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `office_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `agencies`
--

CREATE TABLE `agencies` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `verified` int(11) DEFAULT NULL,
  `major_area` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `minor_area` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area_one_id` int(11) DEFAULT NULL,
  `area_two_id` int(11) DEFAULT NULL,
  `area_three_id` int(11) DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `agencies`
--

INSERT INTO `agencies` (`id`, `user_id`, `name`, `status`, `verified`, `major_area`, `minor_area`, `location`, `area_one_id`, `area_two_id`, `area_three_id`, `latitude`, `longitude`, `image`, `created_at`, `updated_at`) VALUES
(1, 2, 'ESTATE INN', 1, 1, NULL, NULL, NULL, 1, 17, 6, NULL, NULL, NULL, '2021-09-13 18:44:20', '2021-09-16 15:48:44');

-- --------------------------------------------------------

--
-- Table structure for table `agents`
--

CREATE TABLE `agents` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `agency_id` int(11) DEFAULT NULL,
  `position_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `agents`
--

INSERT INTO `agents` (`id`, `user_id`, `agency_id`, `position_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, '2021-09-16 15:50:03', '2021-09-16 15:50:03'),
(2, 6, 1, NULL, '2021-09-16 16:01:26', '2021-09-16 16:01:26');

-- --------------------------------------------------------

--
-- Table structure for table `agent_areas`
--

CREATE TABLE `agent_areas` (
  `id` int(11) NOT NULL,
  `agent_id` int(11) DEFAULT NULL,
  `area_one_id` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `agent_areas`
--

INSERT INTO `agent_areas` (`id`, `agent_id`, `area_one_id`, `created_at`, `updated_at`) VALUES
(1, 2, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `agent_specialities`
--

CREATE TABLE `agent_specialities` (
  `id` int(11) NOT NULL,
  `agent_id` int(11) DEFAULT NULL,
  `speciality_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `agent_specialities`
--

INSERT INTO `agent_specialities` (`id`, `agent_id`, `speciality_id`, `created_at`, `updated_at`) VALUES
(1, 2, 1, '2021-09-16 16:01:26', '2021-09-16 16:01:26'),
(2, 2, 3, '2021-09-16 16:01:26', '2021-09-16 16:01:26');

-- --------------------------------------------------------

--
-- Table structure for table `areas`
--

CREATE TABLE `areas` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `area_one`
--

CREATE TABLE `area_one` (
  `id` int(11) NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `area_one`
--

INSERT INTO `area_one` (`id`, `name`, `city_id`, `latitude`, `longitude`, `created_at`, `updated_at`) VALUES
(1, 'DHA Defence', 1, NULL, NULL, '2021-09-06 18:56:05', '2021-09-06 18:56:05'),
(2, 'Bahria Town', 1, NULL, NULL, '2021-09-10 05:27:00', '2021-09-21 04:20:51'),
(3, 'DHA City', 1, NULL, NULL, '2021-09-10 05:27:56', '2021-09-10 05:27:56');

-- --------------------------------------------------------

--
-- Table structure for table `area_three`
--

CREATE TABLE `area_three` (
  `id` int(11) NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area_one_id` int(11) DEFAULT NULL,
  `area_two_id` int(11) DEFAULT NULL,
  `latitude` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `area_three`
--

INSERT INTO `area_three` (`id`, `name`, `area_one_id`, `area_two_id`, `latitude`, `longitude`, `created_at`, `updated_at`) VALUES
(1, '13 East St', 1, 1, '24.842925 67.065821', '24.842925 67.065821', '2021-09-06 19:46:23', '2021-09-06 19:46:23'),
(2, '14 East st', 1, 1, NULL, NULL, '2021-09-08 11:31:09', '2021-09-08 11:31:30'),
(3, 'Khayaban E Aziz Bhatti Shaheed', 1, 16, NULL, NULL, '2021-09-10 05:41:05', '2021-09-10 05:41:05'),
(4, 'Tariq Street 6', 1, 16, NULL, NULL, '2021-09-10 05:45:08', '2021-09-10 05:45:08'),
(5, 'Tariq Street 7', 1, 16, NULL, NULL, '2021-09-10 10:00:26', '2021-09-10 10:00:26'),
(6, 'Khayaban e Sehar', 1, 17, NULL, NULL, '2021-09-13 12:34:06', '2021-09-13 12:34:06'),
(7, 'Commercial Avenue', 1, 17, NULL, NULL, '2021-09-13 12:35:15', '2021-09-13 12:35:15'),
(8, 'Sehar Lane 8', 1, 17, NULL, NULL, '2021-09-13 12:35:55', '2021-09-13 14:26:38'),
(9, 'Sehar Lane no 2', 1, 17, NULL, NULL, '2021-09-13 15:14:26', '2021-09-13 15:14:26'),
(10, 'Khayaban E Hafiz', 1, 25, NULL, NULL, '2021-09-13 15:16:06', '2021-09-15 15:25:36'),
(11, '8 Street', 1, 25, NULL, NULL, '2021-09-13 15:16:07', '2021-09-15 15:24:32'),
(12, 'Sehar Lane 6', 1, 17, NULL, NULL, '2021-09-13 15:20:19', '2021-09-13 15:20:19'),
(13, 'Sehar Lane 7', 1, 17, NULL, NULL, '2021-09-13 15:21:13', '2021-09-13 15:21:13'),
(14, 'Sehar Lane 5', 1, 17, NULL, NULL, '2021-09-13 15:23:40', '2021-09-13 15:23:40'),
(15, 'Sehar Lane 4', 1, 17, NULL, NULL, '2021-09-13 15:25:03', '2021-09-13 15:25:03'),
(16, 'Sehar Lane 3', 1, 17, NULL, NULL, '2021-09-13 15:25:46', '2021-09-13 15:25:46'),
(17, 'Sehar Lane 9', 1, 17, NULL, NULL, '2021-09-13 15:28:50', '2021-09-13 15:28:50'),
(18, 'Khayaban e Shahbaz', 1, 25, NULL, NULL, '2021-09-15 11:56:26', '2021-09-15 11:56:26'),
(19, 'Street 1', 1, 25, NULL, NULL, '2021-09-15 12:00:24', '2021-09-15 16:03:47'),
(20, 'Street no 2', 1, 25, NULL, NULL, '2021-09-15 12:00:59', '2021-09-15 15:18:34'),
(21, '10th street', 1, 25, NULL, NULL, '2021-09-15 12:01:41', '2021-09-15 12:01:41'),
(22, 'Khayaban E Hafiz', 1, 25, NULL, NULL, '2021-09-15 12:02:52', '2021-09-15 15:21:29'),
(23, 'Khayaban E Sehar', 1, 25, NULL, NULL, '2021-09-15 12:03:37', '2021-09-15 15:19:48'),
(24, '28 Street', 1, 28, NULL, NULL, '2021-09-15 15:41:06', '2021-09-15 15:41:06'),
(25, '28 Street', 1, 26, NULL, NULL, '2021-09-15 15:42:14', '2021-09-15 15:42:14'),
(26, 'Lane 18', 1, 4, NULL, NULL, '2021-09-15 15:43:31', '2021-09-15 15:43:59'),
(27, 'Lane 1', 1, 28, NULL, NULL, '2021-09-15 16:18:44', '2021-09-15 16:18:44'),
(28, 'Lane 2', 1, 28, NULL, NULL, '2021-09-15 16:19:57', '2021-09-15 16:19:57'),
(29, 'Lane 3', 1, 28, NULL, NULL, '2021-09-15 16:21:40', '2021-09-15 16:21:40'),
(30, 'Lane 4', 1, 28, NULL, NULL, '2021-09-15 16:22:14', '2021-09-15 16:22:14'),
(31, 'Lane 2A', 1, 28, NULL, NULL, '2021-09-15 16:24:06', '2021-09-15 16:24:06'),
(32, 'Lane 3', 1, 26, NULL, NULL, '2021-09-15 16:25:02', '2021-09-15 16:25:02'),
(33, 'Lane 5', 1, 26, NULL, NULL, '2021-09-15 16:25:46', '2021-09-15 16:25:46'),
(34, 'Lane 6', 1, 26, NULL, NULL, '2021-09-15 16:26:44', '2021-09-15 16:26:44'),
(35, 'Lane 6B', 1, 26, NULL, NULL, '2021-09-15 16:29:24', '2021-09-15 16:29:24'),
(36, 'Lane 6B', 1, 26, NULL, NULL, '2021-09-15 16:29:24', '2021-09-15 16:29:24'),
(37, 'Lane2', 1, 26, NULL, NULL, '2021-09-15 16:30:14', '2021-09-15 16:30:14'),
(38, 'Lane1', 1, 26, NULL, NULL, '2021-09-15 16:30:56', '2021-09-15 16:30:56'),
(39, 'Lane10', 1, 26, NULL, NULL, '2021-09-15 16:31:33', '2021-09-15 16:31:33'),
(40, 'Lane11', 1, 26, NULL, NULL, '2021-09-15 16:32:00', '2021-09-15 16:32:00'),
(41, '12', 1, 26, NULL, NULL, '2021-09-15 16:32:33', '2021-09-15 16:32:33'),
(42, 'Lane13', 1, 26, NULL, NULL, '2021-09-15 16:33:09', '2021-09-15 16:33:09'),
(43, 'Lane18', 1, 26, NULL, NULL, '2021-09-15 16:33:51', '2021-09-15 16:33:51'),
(44, 'Lane19', 1, 26, NULL, NULL, '2021-09-15 16:34:17', '2021-09-15 16:34:17'),
(45, 'Saba Avenue', 1, 26, NULL, NULL, '2021-09-15 16:38:01', '2021-09-15 16:38:01'),
(46, '34th Street', 1, 28, NULL, NULL, '2021-09-15 16:38:58', '2021-09-15 16:38:58'),
(47, 'Khayaban E Faisal', 1, 29, NULL, NULL, '2021-09-15 16:40:44', '2021-09-15 16:40:44'),
(48, 'Khayaban E faisal', 1, 26, NULL, NULL, '2021-09-15 16:42:38', '2021-09-15 16:42:38'),
(49, 'Lane 14', 1, 26, NULL, NULL, '2021-09-15 16:44:04', '2021-09-15 16:44:04'),
(50, 'Lane 15', 1, 26, NULL, NULL, '2021-09-15 17:04:57', '2021-09-15 17:04:57'),
(51, 'Lane 15B', 1, 29, NULL, NULL, '2021-09-15 17:05:35', '2021-09-15 17:05:35'),
(52, 'Lane 4', 1, 27, NULL, NULL, '2021-09-15 17:14:21', '2021-09-15 17:14:21'),
(53, 'Lane 3', 1, 27, NULL, NULL, '2021-09-15 17:15:55', '2021-09-15 17:15:55'),
(54, 'Lane. 2', 1, 27, NULL, NULL, '2021-09-15 17:16:35', '2021-09-15 17:16:35'),
(55, 'Lane 1', 1, 27, NULL, NULL, '2021-09-15 17:17:10', '2021-09-15 17:17:10'),
(56, '28 Street', 1, 27, NULL, NULL, '2021-09-15 17:17:45', '2021-09-15 18:44:11'),
(57, 'Coral Tower 1', 1, 30, NULL, NULL, '2021-09-15 19:03:44', '2021-09-15 19:03:44'),
(58, 'Coral Tower 2', 1, 30, NULL, NULL, '2021-09-15 19:04:03', '2021-09-15 19:04:03'),
(59, 'Reef Tower 1', 1, 30, NULL, NULL, '2021-09-15 19:04:23', '2021-09-15 19:04:23'),
(60, 'Reef Tower 2', 1, 30, NULL, NULL, '2021-09-15 19:04:48', '2021-09-15 19:04:48'),
(61, 'Pearl Tower 1', 1, 30, NULL, NULL, '2021-09-15 19:05:34', '2021-09-15 19:05:34'),
(62, '33 Street', 1, 42, NULL, NULL, '2021-09-16 13:40:45', '2021-09-16 13:40:45'),
(63, 'Street 5', 1, 42, NULL, NULL, '2021-09-16 13:41:35', '2021-09-16 13:41:35'),
(64, 'Khayaban E Shamsheer', 1, 42, NULL, NULL, '2021-09-16 13:42:53', '2021-09-16 13:42:53'),
(65, 'Street 1', 1, 42, NULL, NULL, '2021-09-16 13:43:45', '2021-09-16 13:43:45'),
(66, 'Street 2', 1, 42, NULL, NULL, '2021-09-16 13:44:19', '2021-09-16 13:44:19'),
(67, 'Street 3', 1, 42, NULL, NULL, '2021-09-16 13:45:06', '2021-09-16 13:45:06'),
(68, 'Street A', 1, 42, NULL, NULL, '2021-09-16 13:45:52', '2021-09-16 13:45:52'),
(69, 'Saba Avenue', 1, 42, NULL, NULL, '2021-09-16 13:47:43', '2021-09-16 13:47:43'),
(70, 'Khayaban E Shamsheer', 1, 43, NULL, NULL, '2021-09-16 13:52:58', '2021-09-16 13:52:58'),
(71, 'Lane 1', 1, 43, NULL, NULL, '2021-09-16 13:53:33', '2021-09-16 13:53:33'),
(72, '10th Street', 1, 43, NULL, NULL, '2021-09-16 13:54:32', '2021-09-16 13:54:32'),
(73, 'Lane 2', 1, 43, NULL, NULL, '2021-09-16 13:54:56', '2021-09-16 13:54:56'),
(74, 'Khayaban E mujahid', 1, 43, NULL, NULL, '2021-09-16 13:55:42', '2021-09-16 13:55:42'),
(75, 'Lane 3', 1, 43, NULL, NULL, '2021-09-16 13:56:18', '2021-09-16 13:56:18'),
(76, 'Lane 4', 1, 43, NULL, NULL, '2021-09-16 13:56:46', '2021-09-16 13:56:46'),
(77, '14th street', 1, 43, NULL, NULL, '2021-09-16 13:57:28', '2021-09-16 13:57:28'),
(78, 'Lane 1', 1, 23, NULL, NULL, '2021-09-16 14:07:31', '2021-09-16 14:07:31'),
(79, 'Lane 2', 1, 23, NULL, NULL, '2021-09-16 14:09:01', '2021-09-16 14:09:01'),
(80, 'Lane 4', 1, 23, NULL, NULL, '2021-09-16 14:09:27', '2021-09-16 14:09:27'),
(81, 'Lane 3', 1, 23, NULL, NULL, '2021-09-16 14:10:02', '2021-09-16 14:10:02'),
(82, '10th street', 1, 23, NULL, NULL, '2021-09-16 14:10:50', '2021-09-16 14:10:50'),
(83, '11th Street', 1, 23, NULL, NULL, '2021-09-16 14:11:31', '2021-09-16 14:11:31'),
(84, 'Khayaban E Nishat', 1, 23, NULL, NULL, '2021-09-16 14:12:33', '2021-09-16 14:12:33'),
(85, 'Khayaban E Bukhari', 1, 23, NULL, NULL, '2021-09-16 14:13:20', '2021-09-16 14:13:20'),
(86, '17th Street', 1, 23, NULL, NULL, '2021-09-16 14:16:37', '2021-09-16 14:16:37'),
(87, 'Khayaban E Nishat', 1, 23, NULL, NULL, '2021-09-16 14:17:14', '2021-09-16 14:17:14'),
(88, 'Lane 7', 1, 23, NULL, NULL, '2021-09-16 14:17:43', '2021-09-16 14:17:43'),
(89, 'Lane 8', 1, 23, NULL, NULL, '2021-09-16 14:18:21', '2021-09-16 14:18:21'),
(90, 'Lane 9', 1, 23, NULL, NULL, '2021-09-16 14:19:09', '2021-09-16 14:19:09'),
(91, 'Lane 10', 1, 23, NULL, NULL, '2021-09-16 14:19:40', '2021-09-16 14:19:40'),
(92, 'Lane 11', 1, 23, NULL, NULL, '2021-09-16 14:20:19', '2021-09-16 14:20:19'),
(93, 'Lane 12', 1, 23, NULL, NULL, '2021-09-16 14:20:48', '2021-09-16 14:20:48'),
(94, '21 Street', 1, 23, NULL, NULL, '2021-09-16 14:21:50', '2021-09-16 14:21:50'),
(95, '10th Lane', 1, 21, NULL, NULL, '2021-09-16 14:24:41', '2021-09-16 14:24:41'),
(96, '9th Lane', 1, 21, NULL, NULL, '2021-09-16 14:25:16', '2021-09-16 14:25:16'),
(98, '8th Lane', 1, 21, NULL, NULL, '2021-09-16 14:26:45', '2021-09-16 14:26:45'),
(99, '7th Lane', 1, 21, NULL, NULL, '2021-09-16 14:27:52', '2021-09-16 14:27:52'),
(100, '6th Lane', 1, 21, NULL, NULL, '2021-09-16 14:28:24', '2021-09-16 14:28:24'),
(101, '5th Lane', 1, 21, NULL, NULL, '2021-09-16 14:28:54', '2021-09-16 14:28:54'),
(102, '4th Lane', 1, 21, NULL, NULL, '2021-09-16 14:29:21', '2021-09-16 14:29:21'),
(103, '3rd Lane', 1, 21, NULL, NULL, '2021-09-16 14:30:32', '2021-09-16 14:30:32'),
(104, '2nd Lane', 1, 21, NULL, NULL, '2021-09-16 14:31:12', '2021-09-16 14:31:12'),
(105, 'Zamzama Boulevard', 1, 21, NULL, NULL, '2021-09-16 14:41:33', '2021-09-16 14:41:33'),
(106, '15th Street', 1, 21, NULL, NULL, '2021-09-16 14:42:09', '2021-09-16 14:42:09'),
(107, 'E Street', 1, 38, NULL, NULL, '2021-09-16 14:42:50', '2021-09-16 18:01:05'),
(108, '12 Lane', 1, 10, NULL, NULL, '2021-09-16 17:56:30', '2021-09-16 17:56:30'),
(109, '13 Lane', 1, 10, NULL, NULL, '2021-09-16 17:56:49', '2021-09-16 17:56:49'),
(110, '14 Lane', 1, 10, NULL, NULL, '2021-09-16 17:57:04', '2021-09-16 17:57:04'),
(111, '15 Lane', 1, 10, NULL, NULL, '2021-09-16 17:57:20', '2021-09-16 17:57:20'),
(112, '16 Lane', 1, 10, NULL, NULL, '2021-09-16 17:57:46', '2021-09-16 17:57:46'),
(113, '17 Lane', 1, 10, NULL, NULL, '2021-09-16 19:13:46', '2021-09-16 19:14:13'),
(114, '18 Lane', 1, 10, NULL, NULL, '2021-09-16 19:14:36', '2021-09-16 19:15:08'),
(115, '19 Lane', 1, 10, NULL, NULL, '2021-09-16 19:15:45', '2021-09-16 19:15:45'),
(116, '20 Lane', 1, 10, NULL, NULL, '2021-09-16 19:16:00', '2021-09-16 19:16:00'),
(117, '21 Lane', 1, 10, NULL, NULL, '2021-09-16 19:16:24', '2021-09-16 19:16:24'),
(118, '22 Lane', 1, 10, NULL, NULL, '2021-09-16 19:16:40', '2021-09-16 19:16:40'),
(119, '23 Lane', 1, 10, NULL, NULL, '2021-09-16 19:16:54', '2021-09-16 19:16:54'),
(120, '24 Lane', 1, 10, NULL, NULL, '2021-09-16 19:17:22', '2021-09-16 19:17:22'),
(121, 'Khayaban E Nishat', 1, 9, NULL, NULL, '2021-09-16 19:28:48', '2021-09-16 19:28:48'),
(122, 'Khayaban E Sehar', 1, 10, NULL, NULL, '2021-09-16 19:29:30', '2021-09-16 19:29:30'),
(123, 'Khayaban E Hilal', 1, 10, NULL, NULL, '2021-09-16 19:29:51', '2021-09-16 19:29:51'),
(124, 'Khayaban E Badar', 1, 10, NULL, NULL, '2021-09-16 19:30:21', '2021-09-16 19:30:21'),
(125, 'Khayaban E Bharia', 1, 10, NULL, NULL, '2021-09-16 19:30:40', '2021-09-16 19:30:40'),
(126, 'Khayaban E Badban', 1, 10, NULL, NULL, '2021-09-16 19:31:15', '2021-09-16 19:31:15'),
(127, 'Khayaban E Ittehad', 1, 10, NULL, NULL, '2021-09-16 19:31:42', '2021-09-16 19:31:42'),
(128, 'Khayaban E Ittehad', 1, 9, NULL, NULL, '2021-09-16 19:32:01', '2021-09-16 19:32:01'),
(129, 'Khayaban E Shahbaz', 1, 10, NULL, NULL, '2021-09-16 19:32:24', '2021-09-16 19:32:24'),
(130, 'Khayaban E Rahat', 1, 10, NULL, NULL, '2021-09-16 19:32:45', '2021-09-16 19:32:45'),
(131, 'Khayaban E Muhafiz', 1, 10, NULL, NULL, '2021-09-16 19:33:03', '2021-09-16 19:33:03'),
(132, 'Commercial Avenue', 1, 10, NULL, NULL, '2021-09-16 19:33:28', '2021-09-16 19:33:28'),
(133, 'Khayaban E Saadi', 1, 10, NULL, NULL, '2021-09-16 19:34:40', '2021-09-16 19:34:40'),
(134, 'Khayaban E Rizwan', 1, 10, NULL, NULL, '2021-09-16 19:34:58', '2021-09-16 19:34:58'),
(135, 'Khayaban E Abassi', 1, 10, NULL, NULL, '2021-09-16 19:35:19', '2021-09-16 19:35:54'),
(136, 'Khayaban E Hilal', 1, 9, NULL, NULL, '2021-09-16 19:37:16', '2021-09-16 19:37:16'),
(137, 'Khayaban E Badar', 1, 9, NULL, NULL, '2021-09-16 19:37:40', '2021-09-16 19:37:40'),
(138, 'Khayaban E Shahbaz', 1, 9, NULL, NULL, '2021-09-16 19:38:09', '2021-09-16 19:38:09'),
(139, 'Khayaban E Sehar', 1, 9, NULL, NULL, '2021-09-16 19:38:31', '2021-09-16 19:38:31'),
(140, 'Khayaban E Rahat', 1, 9, NULL, NULL, '2021-09-16 19:38:53', '2021-09-16 19:38:53'),
(141, 'Khayaban E Muhafiz', 1, 9, NULL, NULL, '2021-09-16 19:39:19', '2021-09-16 19:39:19'),
(142, 'Khayaban E Bukhari', 1, 9, NULL, NULL, '2021-09-16 19:40:13', '2021-09-16 19:40:13'),
(143, 'Khayaban E Ittehad', 1, 9, NULL, NULL, '2021-09-16 19:41:05', '2021-09-17 09:55:54'),
(144, 'Khayaban E Muslim', 1, 9, NULL, NULL, '2021-09-16 19:41:07', '2021-09-16 19:41:07'),
(145, 'Khayaban E Shujat', 1, 9, NULL, NULL, '2021-09-16 19:41:37', '2021-09-16 19:41:37'),
(146, 'Khayaban E Hafiz', 1, 9, NULL, NULL, '2021-09-16 19:42:03', '2021-09-16 19:42:03'),
(147, 'Khayaban E Shaheen', 1, 9, NULL, NULL, '2021-09-16 19:42:27', '2021-09-16 19:42:27'),
(149, 'Khayaban E Saba Avenue', 1, 9, NULL, NULL, '2021-09-16 19:44:08', '2021-09-16 19:44:08'),
(150, '11 Lane', 1, 10, NULL, NULL, '2021-09-16 19:45:14', '2021-09-16 19:45:14'),
(151, '10 Lane', 1, 10, NULL, NULL, '2021-09-16 19:45:29', '2021-09-16 19:45:29'),
(152, '9 Lane', 1, 10, NULL, NULL, '2021-09-16 19:45:42', '2021-09-16 19:45:42'),
(153, '8 Lane', 1, 10, NULL, NULL, '2021-09-16 19:46:00', '2021-09-16 19:46:00'),
(154, '7 Lane', 1, 10, NULL, NULL, '2021-09-16 19:46:15', '2021-09-16 19:46:15'),
(155, '5 Lane', 1, 10, NULL, NULL, '2021-09-16 19:46:37', '2021-09-16 19:46:37'),
(156, '6 Lane', 1, 10, NULL, NULL, '2021-09-16 19:46:57', '2021-09-16 19:46:57'),
(157, 'Khayaban E Tariq', 1, 9, NULL, NULL, '2021-09-17 09:56:24', '2021-09-17 09:56:24'),
(158, 'Khayaban E Ammir Khusro', 1, 9, NULL, NULL, '2021-09-17 09:57:59', '2021-09-17 09:57:59'),
(159, 'Khayaban E Shamsheer', 1, 8, NULL, NULL, '2021-09-17 09:59:30', '2021-09-17 09:59:30'),
(160, 'Khayaban E Hafiz', 1, 8, NULL, NULL, '2021-09-17 09:59:55', '2021-09-17 09:59:55'),
(161, 'Khayaban E Shaheen', 1, 8, NULL, NULL, '2021-09-17 10:00:27', '2021-09-17 10:00:27'),
(162, 'Khayaban E Shujat', 1, 8, NULL, NULL, '2021-09-17 10:00:49', '2021-09-17 10:00:49'),
(163, '26 Street', 1, 8, NULL, NULL, '2021-09-17 10:01:25', '2021-09-17 10:01:25'),
(164, '27 Street', 1, 8, NULL, NULL, '2021-09-17 10:01:46', '2021-09-17 10:01:46'),
(165, '28 Street', 1, 8, NULL, NULL, '2021-09-17 10:02:00', '2021-09-17 10:02:00'),
(166, '29 Street', 1, 8, NULL, NULL, '2021-09-17 10:02:25', '2021-09-17 10:02:25'),
(167, '30 Street', 1, 8, NULL, NULL, '2021-09-17 10:02:43', '2021-09-17 10:02:43'),
(168, 'Central Drive North', 3, 44, NULL, NULL, '2021-09-20 19:45:39', '2021-09-20 19:45:39'),
(169, 'Central Drive East', 3, 44, NULL, NULL, '2021-09-20 19:45:40', '2021-09-20 19:46:21');

-- --------------------------------------------------------

--
-- Table structure for table `area_two`
--

CREATE TABLE `area_two` (
  `id` int(11) NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area_one_id` int(11) DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `latlong` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `area_two`
--

INSERT INTO `area_two` (`id`, `name`, `area_one_id`, `latitude`, `longitude`, `latlong`, `created_at`, `updated_at`) VALUES
(4, 'Please 1', 1, NULL, NULL, NULL, '2021-09-10 05:28:36', '2021-09-10 05:28:36'),
(5, 'Phase 2', 1, NULL, NULL, NULL, '2021-09-10 05:29:28', '2021-09-10 05:29:28'),
(6, 'Phase 3', 1, NULL, NULL, NULL, '2021-09-10 05:29:53', '2021-09-10 05:29:53'),
(7, 'Phase 4', 1, NULL, NULL, NULL, '2021-09-10 05:30:04', '2021-09-10 05:30:04'),
(8, 'Phase 5', 1, NULL, NULL, NULL, '2021-09-10 05:30:18', '2021-09-10 05:30:18'),
(9, 'Phase 6', 1, NULL, NULL, NULL, '2021-09-10 05:30:36', '2021-09-10 05:30:36'),
(10, 'Phase 7', 1, NULL, NULL, NULL, '2021-09-10 05:30:53', '2021-09-10 05:30:53'),
(11, 'A Zone Phase 8', 1, NULL, NULL, NULL, '2021-09-10 05:31:07', '2021-09-15 19:37:12'),
(13, 'C Zone Phase 8', 1, NULL, NULL, NULL, '2021-09-10 05:32:49', '2021-09-15 19:37:52'),
(14, 'D Zone Phase 8', 1, NULL, NULL, NULL, '2021-09-10 05:33:09', '2021-09-15 19:36:44'),
(15, 'E Zone Phase 8', 1, NULL, NULL, NULL, '2021-09-10 05:33:25', '2021-09-15 19:36:19'),
(16, 'Phase 7 Extension', 1, NULL, NULL, NULL, '2021-09-10 05:34:11', '2021-09-10 05:34:11'),
(17, 'Sehar Commercial phase 7', 1, NULL, NULL, NULL, '2021-09-10 09:56:56', '2021-09-11 05:46:38'),
(18, 'Ayoubiya Commercial Phase 7 ext', 1, NULL, NULL, NULL, '2021-09-11 05:42:22', '2021-09-11 05:47:34'),
(19, 'Khalid Commercial Phase 7 ext', 1, NULL, NULL, NULL, '2021-09-11 05:48:38', '2021-09-11 05:48:38'),
(20, 'Tariq Commercial Phase 7 ext', 1, NULL, NULL, NULL, '2021-09-11 05:49:18', '2021-09-11 05:49:18'),
(21, 'Zamzama Commercial Phase 5', 1, NULL, NULL, NULL, '2021-09-13 12:38:18', '2021-09-15 19:17:06'),
(22, 'Jami Commercial Phase 7', 1, NULL, NULL, NULL, '2021-09-13 12:38:56', '2021-09-15 19:16:18'),
(23, 'Nishat Commercial Phase 6', 1, NULL, NULL, NULL, '2021-09-13 12:40:54', '2021-09-15 19:15:57'),
(24, 'Ittehad Commercial Phase 6', 1, NULL, NULL, NULL, '2021-09-13 12:43:21', '2021-09-15 19:15:33'),
(25, 'Shahbaz Commercial Phase 6', 1, NULL, NULL, NULL, '2021-09-15 11:53:17', '2021-09-15 15:35:32'),
(26, 'Peninsula Commercial Phase 8', 1, NULL, NULL, NULL, '2021-09-15 15:35:09', '2021-09-15 15:35:09'),
(27, 'Tipu Sultan Commercial Phase 8', 1, NULL, NULL, NULL, '2021-09-15 15:36:32', '2021-09-15 15:36:32'),
(28, 'Iqbal Commercial Phase 8', 1, NULL, NULL, NULL, '2021-09-15 15:37:07', '2021-09-15 15:37:07'),
(29, 'Faisal Commercial Phase 8', 1, NULL, NULL, NULL, '2021-09-15 15:37:42', '2021-09-15 15:37:42'),
(30, 'Emmar Phase 8', 1, NULL, NULL, NULL, '2021-09-15 19:02:34', '2021-09-15 19:02:34'),
(31, 'Phase 2 Commercial', 1, NULL, NULL, NULL, '2021-09-15 19:09:57', '2021-09-15 19:09:57'),
(32, 'Phase 1 Commercial', 1, NULL, NULL, NULL, '2021-09-15 19:21:18', '2021-09-15 19:21:37'),
(33, 'Bukhari Commercial Phase 6', 1, NULL, NULL, NULL, '2021-09-15 19:23:05', '2021-09-15 19:23:05'),
(34, 'Muslim commercial Phase 6', 1, NULL, NULL, NULL, '2021-09-15 19:24:03', '2021-09-15 19:24:03'),
(35, 'Rahat Commercial Phase 6', 1, NULL, NULL, NULL, '2021-09-15 19:26:04', '2021-09-15 19:26:04'),
(36, 'Badar Commercial Phase 5', 1, NULL, NULL, NULL, '2021-09-15 19:29:07', '2021-09-15 19:29:07'),
(37, 'Tuheed Commercial Phase 5', 1, NULL, NULL, NULL, '2021-09-15 19:29:29', '2021-09-15 19:29:29'),
(38, 'Zamzama Commercial phase 5', 1, NULL, NULL, NULL, '2021-09-15 19:30:09', '2021-09-15 19:30:09'),
(39, 'Phase 4 Commercial', 1, NULL, NULL, NULL, '2021-09-15 19:34:48', '2021-09-15 19:34:48'),
(40, 'Sahil Commercial Phase 8', 1, NULL, NULL, NULL, '2021-09-15 19:35:26', '2021-09-15 19:35:26'),
(41, 'Creek Vista Phase 8', 1, NULL, NULL, NULL, '2021-09-15 19:39:28', '2021-09-15 19:39:28'),
(42, 'Saba Commercial Phase 5', 1, NULL, NULL, NULL, '2021-09-16 13:36:43', '2021-09-16 13:36:43'),
(43, 'Stadium Commercial Phase 5', 1, NULL, NULL, NULL, '2021-09-16 13:50:29', '2021-09-16 13:50:29'),
(44, 'Sector 3A', 3, NULL, NULL, NULL, '2021-09-20 19:43:01', '2021-09-20 19:43:01');

-- --------------------------------------------------------

--
-- Table structure for table `call_status`
--

CREATE TABLE `call_status` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` int(11) NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `name`, `state_id`, `created_at`, `updated_at`) VALUES
(1, 'Karachi', 1, '2021-09-06 15:54:43', '2021-09-06 15:54:43'),
(2, 'Hyderabad', 1, '2021-09-06 18:56:54', '2021-09-06 18:56:54'),
(4, 'Lahore', 2, '2021-09-21 04:24:22', '2021-09-21 04:24:22');

-- --------------------------------------------------------

--
-- Table structure for table `clicks`
--

CREATE TABLE `clicks` (
  `id` int(11) NOT NULL,
  `count` int(11) NOT NULL,
  `attribute_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `u_id` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `office_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `p_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `d_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isonline` bigint(20) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `w_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rew` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `lead_id` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `leads`
--

CREATE TABLE `leads` (
  `id` int(11) NOT NULL,
  `area_one_id` int(11) DEFAULT NULL,
  `area_two_id` int(11) DEFAULT NULL,
  `area_three_id` int(11) DEFAULT NULL,
  `project_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `budget` int(11) DEFAULT NULL,
  `lead_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `how_soon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `family_members` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `property_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `leadsource` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT 0,
  `call_status` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `response_status` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visit_date` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lead_assign`
--

CREATE TABLE `lead_assign` (
  `id` int(11) NOT NULL,
  `agent_id` int(11) DEFAULT NULL,
  `lead_id` int(11) DEFAULT NULL,
  `client_feedback` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `realtor_feedback` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lead_projects`
--

CREATE TABLE `lead_projects` (
  `id` int(11) NOT NULL,
  `lead_id` int(11) DEFAULT NULL,
  `project_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `lead_status` int(11) DEFAULT NULL,
  `call_status` int(11) DEFAULT NULL,
  `chat_status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lead_properties`
--

CREATE TABLE `lead_properties` (
  `id` int(11) NOT NULL,
  `lead_id` int(11) DEFAULT NULL,
  `property_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `lead_status` int(11) DEFAULT NULL,
  `call_status` int(11) DEFAULT NULL,
  `chat_status` int(11) DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lead_sources`
--

CREATE TABLE `lead_sources` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `lead_types`
--

CREATE TABLE `lead_types` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `newsletter`
--

CREATE TABLE `newsletter` (
  `id` int(11) NOT NULL,
  `email` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `newsletter`
--

INSERT INTO `newsletter` (`id`, `email`) VALUES
(1, 'yasirpervez07@gmail.com');

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
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `package_id` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `expires_at` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_packages`
--

CREATE TABLE `payment_packages` (
  `id` int(11) NOT NULL,
  `name` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
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
-- Table structure for table `positions`
--

CREATE TABLE `positions` (
  `id` int(11) NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `User_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `office_id` int(11) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `post_click` int(255) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `soft_delete` tinyint(1) DEFAULT 0,
  `post_sold` tinyint(1) NOT NULL DEFAULT 0,
  `user_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_detail_id` int(11) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Pakistan',
  `region` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'South',
  `state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '4',
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `web_post` int(11) DEFAULT 0,
  `post_descrip` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latlng` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `latitude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `major_area` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'DHA',
  `minor_area` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `street` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `house` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `apu` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bath` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bed` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cat_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double DEFAULT NULL,
  `p_type` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `s_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `corner` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amunities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `squ` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `plt` int(11) DEFAULT NULL,
  `p_for` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `listtype` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumbnail` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `ext_a` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ext_b` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `features` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `free_txt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facing` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `likes` int(11) DEFAULT 0,
  `views` int(11) DEFAULT 0,
  `view_id` int(11) DEFAULT NULL,
  `user_posted` tinyint(4) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `post_details`
--

CREATE TABLE `post_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Pakistan',
  `region` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'South',
  `state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '4',
  `city` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latlng` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `latitude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `major_area` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'DHA',
  `minor_area` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `area_three_id` int(11) DEFAULT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `project_click` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumbnail` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `project_buyers`
--

CREATE TABLE `project_buyers` (
  `id` int(11) NOT NULL,
  `project_id` int(11) DEFAULT NULL,
  `name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact` int(11) DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cnic` int(11) DEFAULT NULL,
  `dob` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `project_features`
--

CREATE TABLE `project_features` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `project_sales`
--

CREATE TABLE `project_sales` (
  `id` int(11) NOT NULL,
  `project_id` int(11) DEFAULT NULL,
  `shop_id` int(11) DEFAULT NULL,
  `buyer_id` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `project_sales_installments`
--

CREATE TABLE `project_sales_installments` (
  `id` int(11) NOT NULL,
  `project_id` int(11) DEFAULT NULL,
  `shop_id` int(11) DEFAULT NULL,
  `buyer_id` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `down_payment` int(11) DEFAULT NULL,
  `installment_rate` int(11) DEFAULT NULL,
  `paid` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `project_shops`
--

CREATE TABLE `project_shops` (
  `id` int(11) NOT NULL,
  `project_id` int(11) DEFAULT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `floor` int(11) DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `size_type` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `project_users`
--

CREATE TABLE `project_users` (
  `id` int(11) NOT NULL,
  `project_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `properties`
--

CREATE TABLE `properties` (
  `id` int(11) NOT NULL,
  `category` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `agency_id` int(11) DEFAULT NULL,
  `property_for` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `area_one_id` int(11) DEFAULT NULL,
  `area_two_id` int(11) DEFAULT NULL,
  `area_three_id` int(11) DEFAULT NULL,
  `property_type` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `size_type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bed` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bath` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `chamber` double DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `images1` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `advertised` int(11) DEFAULT NULL,
  `featured` int(11) DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `status` int(11) DEFAULT 1,
  `formatted` int(11) DEFAULT 1,
  `deleted` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `properties`
--

INSERT INTO `properties` (`id`, `category`, `user_id`, `agency_id`, `property_for`, `city_id`, `area_one_id`, `area_two_id`, `area_three_id`, `property_type`, `name`, `address`, `price`, `size`, `size_type`, `type`, `bed`, `bath`, `chamber`, `image`, `images1`, `description`, `priority`, `advertised`, `featured`, `latitude`, `longitude`, `status`, `formatted`, `deleted`, `created_at`, `updated_at`) VALUES
(1, NULL, 2, NULL, 'For Rent', 1, 1, 19, 71, 'Apartment', 'Brian White', 'Atque fugiat commodo', 524, 93, 'Yards', 'Commercial', '5', '3', NULL, NULL, NULL, 'Facere magna esse d', 1, 1, 0, NULL, NULL, 1, 1, 0, '2021-09-22 01:10:47', '2021-11-01 16:06:34');

-- --------------------------------------------------------

--
-- Table structure for table `property_for`
--

CREATE TABLE `property_for` (
  `id` int(11) NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `property_for`
--

INSERT INTO `property_for` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'For Sale', NULL, NULL),
(2, 'For Rent', NULL, NULL),
(3, 'For Booking', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `property_images`
--

CREATE TABLE `property_images` (
  `id` int(11) NOT NULL,
  `property_id` int(11) DEFAULT NULL,
  `name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sort_order` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `property_images`
--

INSERT INTO `property_images` (`id`, `property_id`, `name`, `sort_order`, `created_at`, `updated_at`) VALUES
(1, 1, '1632258647-23628732.jpg', '0', '2021-09-22 01:10:51', '2021-09-22 01:10:51'),
(2, 1, '1632258651-onlylogo.png', '1', '2021-09-22 01:10:51', '2021-09-22 01:10:51');

-- --------------------------------------------------------

--
-- Table structure for table `property_social`
--

CREATE TABLE `property_social` (
  `id` int(11) NOT NULL,
  `property_id` int(11) DEFAULT NULL,
  `likes` int(11) DEFAULT NULL,
  `views` int(11) DEFAULT NULL,
  `clicks` int(11) DEFAULT NULL,
  `impressions` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `property_sub_types`
--

CREATE TABLE `property_sub_types` (
  `id` int(11) NOT NULL,
  `name` varchar(55) DEFAULT NULL,
  `property_type_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `property_types`
--

CREATE TABLE `property_types` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `property_types`
--

INSERT INTO `property_types` (`id`, `name`) VALUES
(1, 'Apartment'),
(2, 'Bungalow'),
(3, 'Office'),
(4, 'Shop');

-- --------------------------------------------------------

--
-- Table structure for table `public_notices`
--

CREATE TABLE `public_notices` (
  `id` int(11) NOT NULL,
  `agency_id` int(11) DEFAULT NULL,
  `area_one_id` int(11) DEFAULT NULL,
  `area_two_id` int(11) DEFAULT NULL,
  `area_three_id` int(11) DEFAULT NULL,
  `property_number` varchar(50) DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `size_type` varchar(30) DEFAULT NULL,
  `number` bigint(15) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `response_status`
--

CREATE TABLE `response_status` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', NULL, NULL),
(2, 'Agency', NULL, NULL),
(3, 'Agents', NULL, NULL),
(4, 'General', NULL, NULL),
(5, 'Project Owner', '2021-04-13 10:46:10', '2021-04-13 10:46:10'),
(6, 'Project Lead Staff', '2021-04-13 10:46:19', '2021-04-13 10:46:19'),
(7, 'General Lead Staff', '2021-04-13 10:48:54', '2021-04-13 10:48:54'),
(8, 'User', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `specialities`
--

CREATE TABLE `specialities` (
  `id` int(11) NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `specialities`
--

INSERT INTO `specialities` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'DHA Apartment For Rent', '2021-09-16 15:50:56', '2021-09-16 15:50:56'),
(2, 'DHA Apartment For Sale', '2021-09-16 15:51:09', '2021-09-16 15:51:09'),
(3, 'DHA Office For Rent', '2021-09-16 15:51:27', '2021-09-16 15:51:27');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` int(11) NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Sindh Pakistan', '2021-09-06 15:54:30', '2021-09-21 04:21:19'),
(2, 'Punjab Pakistan', '2021-09-06 18:58:47', '2021-09-21 04:21:40'),
(3, 'Balochistan Pakistan', '2021-09-06 19:00:48', '2021-09-21 04:21:52'),
(4, 'Khayber Pakhtunkhwa Pakistan', '2021-09-06 19:30:06', '2021-09-21 04:22:09');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `firebase_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_id` int(11) DEFAULT 8,
  `status` int(11) DEFAULT NULL,
  `phone` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `office_address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumbnail` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dp` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isonline` int(11) DEFAULT NULL,
  `locked` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firebase_id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `role_id`, `status`, `phone`, `mobile`, `address`, `office_address`, `thumbnail`, `image`, `dp`, `isonline`, `locked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Pakrealtors.pk', 'admin@pakrealtors.pk', NULL, '$2y$10$fWM8rHYUbc/R8157YBkObuP5LMUGO/7pSMaYsIpMvHZZg.4FtI9Oy', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2021-09-05 21:17:12', '2021-09-05 21:17:12'),
(2, NULL, 'Estate Inn', 'estateinn01@gmail.com', NULL, '$2y$10$NXUvEIBgFztx6xJ428EiJuoP/NX1cNPNv9uNSmXDDIX7xikvcqleu', NULL, 2, 1, '03218241114', '03412377722', 'C23c main khayaban e sehar , sehar Commercial ph 7 DHA karachi', NULL, NULL, NULL, NULL, NULL, 0, '2021-09-06 17:37:41', '2021-09-06 17:37:41'),
(3, NULL, 'Umair Sardar', 'umairsardar.inn@gmail.com', NULL, '$2y$10$ywNX3iBzY/hnjVxA.mMYv.psx2.yxg.XOGBunL3X7p2GDAhpeHE.q', NULL, 3, 1, '03332810709', '03332810709', 'Karachi', NULL, NULL, NULL, NULL, NULL, 0, '2021-09-07 10:36:18', '2021-09-07 10:36:18'),
(4, NULL, 'Khannan', 'khannan@gmail.com', NULL, '$2y$10$7QFsU8De9G3dydevFTOvu.o7HJB.rNqzn4oHLXR3ligoCiB5EE2L2', NULL, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2021-09-10 10:10:30', '2021-09-10 10:10:30'),
(5, NULL, 'Umair Sardar', 'umilala@hotmail.com', NULL, '$2y$10$Qygm1DDDDBtvNvMyJKWE8efWFSagzaWLKB65GUKY4/enIZm6KsQqK', NULL, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2021-09-10 10:14:51', '2021-09-10 10:14:51'),
(6, NULL, 'Noor Muhammad', 'noormuhammad.inn@gmail.com', NULL, '$2y$10$OYMsZVweQgB2CYPpX1uRvuNKGHGnLTSjWK2wSGjmEOREWg.RjNYVu', NULL, 3, 1, '03330326953', '03330326953', 'Estate Inn', NULL, NULL, NULL, NULL, NULL, 0, '2021-09-16 15:58:21', '2021-09-16 15:58:21');

-- --------------------------------------------------------

--
-- Table structure for table `user_listings`
--

CREATE TABLE `user_listings` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `super_hot` int(11) DEFAULT 0,
  `hot` int(11) DEFAULT 0,
  `normal` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_listings`
--

INSERT INTO `user_listings` (`id`, `user_id`, `super_hot`, `hot`, `normal`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 1, 0, '2021-10-06 05:50:27', '2021-10-08 07:52:18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agencies`
--
ALTER TABLE `agencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `agents`
--
ALTER TABLE `agents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `agent_areas`
--
ALTER TABLE `agent_areas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `agent_specialities`
--
ALTER TABLE `agent_specialities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `area_one`
--
ALTER TABLE `area_one`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `area_three`
--
ALTER TABLE `area_three`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `area_two`
--
ALTER TABLE `area_two`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `call_status`
--
ALTER TABLE `call_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leads`
--
ALTER TABLE `leads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lead_assign`
--
ALTER TABLE `lead_assign`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lead_projects`
--
ALTER TABLE `lead_projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lead_properties`
--
ALTER TABLE `lead_properties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lead_sources`
--
ALTER TABLE `lead_sources`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lead_types`
--
ALTER TABLE `lead_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletter`
--
ALTER TABLE `newsletter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_packages`
--
ALTER TABLE `payment_packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `positions`
--
ALTER TABLE `positions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_details`
--
ALTER TABLE `post_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_buyers`
--
ALTER TABLE `project_buyers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_features`
--
ALTER TABLE `project_features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_sales`
--
ALTER TABLE `project_sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_sales_installments`
--
ALTER TABLE `project_sales_installments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_shops`
--
ALTER TABLE `project_shops`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_users`
--
ALTER TABLE `project_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `properties`
--
ALTER TABLE `properties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `property_for`
--
ALTER TABLE `property_for`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `property_images`
--
ALTER TABLE `property_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `property_social`
--
ALTER TABLE `property_social`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `property_sub_types`
--
ALTER TABLE `property_sub_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `property_types`
--
ALTER TABLE `property_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `public_notices`
--
ALTER TABLE `public_notices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `response_status`
--
ALTER TABLE `response_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `specialities`
--
ALTER TABLE `specialities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_listings`
--
ALTER TABLE `user_listings`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agencies`
--
ALTER TABLE `agencies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `agents`
--
ALTER TABLE `agents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `agent_areas`
--
ALTER TABLE `agent_areas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `agent_specialities`
--
ALTER TABLE `agent_specialities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `area_one`
--
ALTER TABLE `area_one`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `area_three`
--
ALTER TABLE `area_three`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=170;

--
-- AUTO_INCREMENT for table `area_two`
--
ALTER TABLE `area_two`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `call_status`
--
ALTER TABLE `call_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `leads`
--
ALTER TABLE `leads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lead_assign`
--
ALTER TABLE `lead_assign`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lead_projects`
--
ALTER TABLE `lead_projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lead_properties`
--
ALTER TABLE `lead_properties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lead_sources`
--
ALTER TABLE `lead_sources`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lead_types`
--
ALTER TABLE `lead_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `newsletter`
--
ALTER TABLE `newsletter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_packages`
--
ALTER TABLE `payment_packages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `positions`
--
ALTER TABLE `positions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `post_details`
--
ALTER TABLE `post_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `project_buyers`
--
ALTER TABLE `project_buyers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `project_features`
--
ALTER TABLE `project_features`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `project_sales`
--
ALTER TABLE `project_sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `project_sales_installments`
--
ALTER TABLE `project_sales_installments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `project_shops`
--
ALTER TABLE `project_shops`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `project_users`
--
ALTER TABLE `project_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `properties`
--
ALTER TABLE `properties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `property_for`
--
ALTER TABLE `property_for`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `property_images`
--
ALTER TABLE `property_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `property_social`
--
ALTER TABLE `property_social`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `property_sub_types`
--
ALTER TABLE `property_sub_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `property_types`
--
ALTER TABLE `property_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `public_notices`
--
ALTER TABLE `public_notices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `response_status`
--
ALTER TABLE `response_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `specialities`
--
ALTER TABLE `specialities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user_listings`
--
ALTER TABLE `user_listings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
