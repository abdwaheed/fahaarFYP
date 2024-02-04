-- phpMyAdmin SQL Dump
-- version 4.9.11
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 13, 2023 at 06:14 AM
-- Server version: 5.7.41
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `thesurfingweek_tsw`
--

-- --------------------------------------------------------

--
-- Table structure for table `addons`
--

CREATE TABLE `addons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price_hour` int(11) NOT NULL DEFAULT '0',
  `price_130hour` int(11) NOT NULL DEFAULT '0',
  `price_2hours` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `addon_bookings`
--

CREATE TABLE `addon_bookings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `booking_id` bigint(20) UNSIGNED DEFAULT NULL,
  `addon_id` bigint(20) UNSIGNED DEFAULT NULL,
  `addon_price` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `boats`
--

CREATE TABLE `boats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider_id` bigint(20) UNSIGNED DEFAULT NULL,
  `image` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `capacity` int(11) NOT NULL DEFAULT '0',
  `price_hour` int(11) NOT NULL DEFAULT '0',
  `price_130hour` int(11) NOT NULL DEFAULT '0',
  `price_2hours` int(11) NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `boats`
--

INSERT INTO `boats` (`id`, `name`, `provider_id`, `image`, `location`, `capacity`, `price_hour`, `price_130hour`, `price_2hours`, `description`, `created_at`, `updated_at`) VALUES
(1, 'BOAT ONE', 1, 'uploads/304ba645706dad956edbe6b83b91bbb4.jpg', 'Dubai marina', 10, 100, 150, 200, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh\r\neuismod tincidunt ut laoreet dolore magna aliquam erat volutpat.\r\nUt wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl\r\nut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in\r\nvulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero.', '2022-05-27 11:04:14', '2022-05-27 11:04:14'),
(2, 'Boat 2', 1, 'uploads/d39d6bb2e7a9dc638be046659865aa34.jpg', 'Dubai JBR', 10, 100, 120, 170, 'Second Boat', '2022-05-29 18:59:50', '2022-05-29 18:59:50');

-- --------------------------------------------------------

--
-- Table structure for table `boat_bookings`
--

CREATE TABLE `boat_bookings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `boat_id` bigint(20) UNSIGNED DEFAULT NULL,
  `price` int(11) NOT NULL DEFAULT '0',
  `duration` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `starts_at` datetime DEFAULT NULL,
  `ends_at` datetime DEFAULT NULL,
  `number_of_guests` int(11) NOT NULL DEFAULT '0',
  `addons_remarks` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_code` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_status` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `receipt_url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_token` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `boat_bookings`
--

INSERT INTO `boat_bookings` (`id`, `boat_id`, `price`, `duration`, `starts_at`, `ends_at`, `number_of_guests`, `addons_remarks`, `transaction_code`, `transaction_status`, `receipt_url`, `stripe_token`, `ip`, `created_at`, `updated_at`) VALUES
(1, 1, 250, 'price_hour', '2022-05-29 08:00:00', '2022-05-29 09:00:00', 2, 'yes', NULL, NULL, '', NULL, '87.200.155.253', '2022-05-28 18:00:41', '2022-05-28 18:00:41'),
(2, 1, 250, 'price_hour', '2022-05-29 09:00:00', '2022-05-29 10:00:00', 3, 'yes', 'ch_3L4U51JdtK2FWISI0soNZSA9', 'succeeded', 'https://pay.stripe.com/receipts/acct_1L2XTMJdtK2FWISI/ch_3L4U51JdtK2FWISI0soNZSA9/rcpt_Lm29ojah4xGYGclAi7IK2yiMvRGMDR3', 'tok_1L4U4zJdtK2FWISI0TbdWCAB', '87.200.155.253', '2022-05-28 18:09:00', '2022-05-28 18:09:10'),
(3, 1, 250, 'price_hour', '2022-05-30 07:00:00', '2022-05-30 08:00:00', 1, 'yes', 'ch_3L4g4mJdtK2FWISI0ROvzR9J', 'succeeded', 'https://pay.stripe.com/receipts/acct_1L2XTMJdtK2FWISI/ch_3L4g4mJdtK2FWISI0ROvzR9J/rcpt_LmEXjpsxBPgKRvAVtOpCOjivREpYp9I', 'tok_1L4g4lJdtK2FWISIstKDOn75', '87.200.155.253', '2022-05-29 06:57:35', '2022-05-29 06:57:43'),
(4, 1, 250, 'price_hour', '2022-05-30 10:00:00', '2022-05-30 11:00:00', 1, 'yes', NULL, NULL, '', NULL, '87.200.155.253', '2022-05-29 11:21:16', '2022-05-29 11:21:16'),
(5, 1, 250, 'price_hour', '2022-06-03 07:00:00', '2022-06-03 08:00:00', 1, 'yes', 'ch_3L6FGAJdtK2FWISI1CzU4NLV', 'succeeded', 'https://pay.stripe.com/receipts/acct_1L2XTMJdtK2FWISI/ch_3L6FGAJdtK2FWISI1CzU4NLV/rcpt_LnqyVQ2DGBmSvWvUi2AddsICm07Dn9Y', 'tok_1L6FG9JdtK2FWISIA51S0JXK', '87.200.155.253', '2022-06-02 10:43:47', '2022-06-02 10:43:57'),
(6, 1, 300, 'price_130hour', '2022-06-10 09:00:00', '2022-06-10 10:30:00', 1, 'yes', 'ch_3L6FwxJdtK2FWISI0r6DczgI', 'succeeded', 'https://pay.stripe.com/receipts/acct_1L2XTMJdtK2FWISI/ch_3L6FwxJdtK2FWISI0r6DczgI/rcpt_LnrgI4zrmkWAZSnjaYj3evjXwcr1szm', 'tok_1L6FwwJdtK2FWISImCa6OlKR', '87.200.155.253', '2022-06-02 11:28:01', '2022-06-02 11:28:11'),
(7, 1, 250, 'price_hour', '2022-06-11 09:00:00', '2022-06-11 10:00:00', 2, 'yes', 'ch_3L8kzhJdtK2FWISI1513DOoh', 'succeeded', 'https://pay.stripe.com/receipts/acct_1L2XTMJdtK2FWISI/ch_3L8kzhJdtK2FWISI1513DOoh/rcpt_LqRtnZ3zJC8mj7hHEPNSBxlwDqhdUOP', 'tok_1L8kzgJdtK2FWISIPl9o4GAp', '213.132.47.210', '2022-06-09 09:01:29', '2022-06-09 09:01:50');

-- --------------------------------------------------------

--
-- Table structure for table `boat_guests`
--

CREATE TABLE `boat_guests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `booking_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `boat_guests`
--

INSERT INTO `boat_guests` (`id`, `booking_id`, `name`, `mobile`, `email`, `created_at`, `updated_at`) VALUES
(1, 1, 'omar omar', '0529332012', 'omar@omarnas.com', '2022-05-28 18:00:41', '2022-05-28 18:00:41'),
(2, 2, 'omar omar', '0529332012', 'omar@omar.com', '2022-05-28 18:09:00', '2022-05-28 18:09:00'),
(3, 3, 'omar omar', '0529332012', 'omar@omarnas.com', '2022-05-29 06:57:35', '2022-05-29 06:57:35'),
(4, 4, 'omar omar', '0529332012', 'omar@omarnas.com', '2022-05-29 11:21:16', '2022-05-29 11:21:16'),
(5, 5, 'omar nas', '0529932012', 'omar@omarnas.com', '2022-06-02 10:43:47', '2022-06-02 10:43:47'),
(6, 6, 'omar nas', '0529332012', 'omar@omarnas.com', '2022-06-02 11:28:01', '2022-06-02 11:28:01'),
(7, 7, 'Omar Abusafiyah', '0529332012', 'omarabusafieh@gmail.com', '2022-06-09 09:01:29', '2022-06-09 09:01:29');

-- --------------------------------------------------------

--
-- Table structure for table `boat_providers`
--

CREATE TABLE `boat_providers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `boat_providers`
--

INSERT INTO `boat_providers` (`id`, `name`, `logo`, `description`, `created_at`, `updated_at`, `user_id`) VALUES
(1, 'TSW', 'uploads/701b7cf19c5f86e7a2d3aadb67084b09.jpg', 'Main Provider', '2022-05-27 10:36:50', '2022-05-27 10:36:50', 1);

-- --------------------------------------------------------

--
-- Table structure for table `booked_lessons`
--

CREATE TABLE `booked_lessons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `lesson_id` bigint(20) UNSIGNED DEFAULT NULL,
  `starts_at` datetime DEFAULT NULL,
  `attendance_status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `booked_lessons`
--

INSERT INTO `booked_lessons` (`id`, `user_id`, `lesson_id`, `starts_at`, `attendance_status`, `created_at`, `updated_at`) VALUES
(4, 6, 1, '2022-08-31 16:12:57', NULL, '2022-08-11 08:12:39', '2022-08-11 08:12:39'),
(5, 6, 1, NULL, NULL, '2022-08-11 08:16:55', '2022-08-11 08:16:55'),
(6, 6, 1, '2022-08-12 07:00:00', NULL, '2022-08-11 08:17:31', '2022-08-11 08:17:31'),
(7, 9, 1, '2022-08-08 07:00:00', NULL, '2022-08-11 09:47:12', '2022-08-11 09:47:12'),
(8, 6, 1, '2022-08-14 07:00:00', NULL, '2022-08-12 05:49:52', '2022-08-12 05:49:52'),
(9, 6, 1, '2022-08-08 07:00:00', NULL, '2022-08-12 05:51:00', '2022-08-12 05:51:00'),
(10, 6, 1, '2022-08-15 07:00:00', NULL, '2022-08-12 07:38:27', '2022-08-12 07:38:27'),
(11, 6, 1, '2022-08-15 07:00:00', NULL, '2022-08-12 07:38:41', '2022-08-12 07:38:41');

-- --------------------------------------------------------

--
-- Table structure for table `booked_rooms`
--

CREATE TABLE `booked_rooms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `booking_id` bigint(20) UNSIGNED DEFAULT NULL,
  `room_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `booked_rooms`
--

INSERT INTO `booked_rooms` (`id`, `booking_id`, `room_id`, `created_at`, `updated_at`) VALUES
(54, 54, 7, '2022-06-10 14:38:46', '2022-06-10 14:38:46'),
(75, 75, 6, '2022-06-14 07:38:39', '2022-06-14 07:38:39'),
(97, 97, 6, '2022-06-20 14:23:19', '2022-06-20 14:23:19'),
(98, 98, 6, '2022-07-01 08:04:54', '2022-07-01 08:04:54'),
(99, 99, 18, '2022-08-21 13:57:26', '2022-08-21 13:57:26'),
(100, 100, 18, '2022-08-22 04:47:04', '2022-08-22 04:47:04'),
(101, 101, 18, '2022-09-28 12:47:14', '2022-09-28 12:47:14'),
(102, 102, 20, '2022-11-23 06:12:42', '2022-11-23 06:12:42'),
(103, 103, 20, '2023-01-18 05:06:47', '2023-01-18 05:06:47');

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `destination_id` bigint(20) UNSIGNED DEFAULT NULL,
  `trip_id` bigint(20) UNSIGNED DEFAULT NULL,
  `price` int(11) NOT NULL DEFAULT '0',
  `number_of_surfers` int(11) NOT NULL DEFAULT '0',
  `rooms_remarks` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_code` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_status` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT 'incomplete',
  `ip` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `receipt_url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_token` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `room_option_id` bigint(20) UNSIGNED DEFAULT NULL,
  `final_price` int(11) NOT NULL DEFAULT '0',
  `regular_price` int(11) NOT NULL DEFAULT '0',
  `promo_code` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount` int(11) NOT NULL DEFAULT '0',
  `invoice_id` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `membership` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referedby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tracking_code` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `destination_id`, `trip_id`, `price`, `number_of_surfers`, `rooms_remarks`, `transaction_code`, `transaction_status`, `ip`, `created_at`, `updated_at`, `receipt_url`, `stripe_token`, `room_option_id`, `final_price`, `regular_price`, `promo_code`, `discount_type`, `discount`, `invoice_id`, `membership`, `referedby`, `tracking_code`) VALUES
(54, 19, 5, 700, 1, '7', 'ch_3L9CtPJdtK2FWISI0GE3uGvl', 'succeeded', '156.34.3.44', '2022-06-10 14:38:46', '2022-06-10 14:49:12', 'https://pay.stripe.com/receipts/acct_1L2XTMJdtK2FWISI/ch_3L9CtPJdtK2FWISI0GE3uGvl/rcpt_Lquia3RNsUsorjmWvgOsLzgw1TvUEu6', 'tok_1L9CtOJdtK2FWISIjad1y7ec', NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, ''),
(75, 19, 5, 11900, 2, '6', 'ch_3LAYAtJdtK2FWISI1hBCiOHO', 'succeeded', '142.67.71.34', '2022-06-14 07:38:39', '2022-06-14 07:44:47', 'https://pay.stripe.com/receipts/acct_1L2XTMJdtK2FWISI/ch_3LAYAtJdtK2FWISI1hBCiOHO/rcpt_LsImC7g9gWcemzAuXSGQGncUxjJk7Cg', 'tok_1LAYAsJdtK2FWISIdrxGEr5N', 4, 10710, 11900, 'WELLFIT2022', 'percent', 10, NULL, NULL, NULL, ''),
(97, 19, 5, 5950, 1, '6', NULL, 'incomplete', '87.200.155.253', '2022-06-20 14:23:19', '2022-06-20 14:23:19', '', NULL, 4, 5950, 5950, NULL, '', 0, NULL, '123', 'Ali', 'Tarcking1'),
(98, 19, 5, 5950, 1, '6', NULL, 'incomplete', '87.200.34.219', '2022-07-01 08:04:54', '2022-07-01 08:04:54', '', NULL, 4, 5950, 5950, NULL, '', 0, NULL, NULL, NULL, NULL),
(99, 12, 8, 6995, 1, '18', NULL, 'incomplete', '94.58.185.171', '2022-08-21 13:57:26', '2022-08-21 13:57:26', '', NULL, 28, 6995, 6995, NULL, '', 0, NULL, NULL, NULL, NULL),
(100, 12, 8, 6995, 1, '18', NULL, 'incomplete', '94.204.212.11', '2022-08-22 04:47:04', '2022-08-22 04:47:04', '', NULL, 28, 6995, 6995, NULL, '', 0, NULL, NULL, NULL, NULL),
(101, 12, 8, 6995, 1, '18', NULL, 'incomplete', '142.67.71.34', '2022-09-28 12:47:13', '2022-09-28 12:47:13', '', NULL, 28, 6995, 6995, NULL, '', 0, NULL, NULL, NULL, NULL),
(102, 18, 9, 7250, 1, '20', NULL, 'incomplete', '94.204.71.65', '2022-11-23 06:12:41', '2022-11-23 06:12:41', '', NULL, 30, 7250, 7250, NULL, '', 0, NULL, NULL, NULL, NULL),
(103, 18, 9, 7250, 1, '20', NULL, 'incomplete', '94.204.237.149', '2023-01-18 05:06:47', '2023-01-18 05:06:47', '', NULL, 30, 7250, 7250, NULL, '', 0, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `club_contacts`
--

CREATE TABLE `club_contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(90) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `club_contacts`
--

INSERT INTO `club_contacts` (`id`, `name`, `email`, `mobile`, `ip`, `created_at`, `updated_at`) VALUES
(1, 'omar', 'omar@omarnas.com', '0529332012', '87.200.34.219', '2022-07-01 13:42:00', '2022-07-01 13:42:00'),
(2, 'Test', 'revision@zianetwork.com', 'd', '156.34.3.44', '2022-07-05 08:43:29', '2022-07-05 08:43:29'),
(3, 'wewew', 'omar@omarnas.com', 'dssd', '87.200.34.219', '2022-07-05 08:46:56', '2022-07-05 08:46:56'),
(4, 'Dmitry', 'molke@ya.ru', '586806578', '92.98.5.16', '2022-08-08 12:02:17', '2022-08-08 12:02:17'),
(5, 'Khaled', 'Oceandubai1908@gmail.com', '502861863', '37.245.211.108', '2022-08-10 06:17:03', '2022-08-10 06:17:03'),
(6, 'Ulkar Mammadzada', 'ulkamxg@gmail.com', '543252592', '87.200.23.85', '2022-08-10 06:19:57', '2022-08-10 06:19:57'),
(7, 'Ophelie Rejl', 'ophelie.rejl@gmail.com', '0504963791', '81.51.252.197', '2022-08-10 06:23:43', '2022-08-10 06:23:43'),
(8, 'Omar Abusafiyah', 'omarabusafieh@gmail.com', '0529332012', '213.132.47.210', '2022-08-10 06:23:44', '2022-08-10 06:23:44'),
(9, 'Maria Martins', 'maria.dias.martinss@gmail.com', '+351919774576', '197.16.114.73', '2022-08-10 06:26:05', '2022-08-10 06:26:05'),
(10, 'Ivanna Fedurtso', 'j.fedurtso@gmail.com', '+971563969675', '102.163.24.212', '2022-08-10 06:28:38', '2022-08-10 06:28:38'),
(11, 'Abbas El ali', 'abbas.elali@gmail.com', '0559965998', '91.73.21.53', '2022-08-10 06:37:06', '2022-08-10 06:37:06'),
(12, 'Anna Szmidt', 'amka.szmidt@gmail.com', '+48668198674', '2.49.34.74', '2022-08-10 06:43:02', '2022-08-10 06:43:02'),
(13, 'Denisse buen sanchez', 'denissebuensanchez@gmail.com', '0551784806', '91.73.163.54', '2022-08-10 08:03:22', '2022-08-10 08:03:22'),
(14, 'Maksim Mershiev', 'maxmershiev@gmail.com', '+971506412775', '5.192.144.64', '2022-08-10 10:25:23', '2022-08-10 10:25:23'),
(15, 'Chris', 'chris.pinto@live.com', '0501711297', '31.219.159.44', '2022-08-10 10:44:06', '2022-08-10 10:44:06'),
(16, 'Pamela', 'pamlarouge@gmail.com', '0563727902', '2.50.43.142', '2022-08-11 02:30:41', '2022-08-11 02:30:41'),
(17, 'Marivi Duarte', 'duarteperezm@gmail.com', '+971585223046', '91.73.115.47', '2022-08-12 13:42:24', '2022-08-12 13:42:24'),
(18, 'Ala Lababidi', 'ala@mytribex.co', '0585191688', '5.30.199.79', '2022-08-29 09:27:15', '2022-08-29 09:27:15'),
(19, 'Hassine Farhat', 'hassinef@gmail.com', '0509507147', '176.204.112.145', '2022-08-30 11:24:25', '2022-08-30 11:24:25'),
(20, 'Steph Pots', '97150a@gmail.com', '+971 58 532 4432', '5.30.199.79', '2022-08-31 08:07:09', '2022-08-31 08:07:09'),
(21, 'Henry Baggs', 'hcbaggs@gmail.com', '0585732206', '109.69.107.90', '2022-09-11 09:35:03', '2022-09-11 09:35:03'),
(22, 'Jobin joy', 'jobinjoyy88@gmail.com', '0504072763', '2.49.0.131', '2022-09-20 15:20:27', '2022-09-20 15:20:27'),
(23, 'Jobin joy', 'jobinjoyy88@gmail.com', '0504072763', '2.49.0.131', '2022-09-20 15:21:26', '2022-09-20 15:21:26'),
(24, 'Ahmed Younis', 'ahmedyounis@bluewin.ch', '0508910404', '37.245.173.168', '2022-09-21 12:15:09', '2022-09-21 12:15:09'),
(25, 'Hayat Nabbouh', 'Hayatnabbouh@gmail.com', '0585027992', '5.30.193.203', '2022-09-24 23:00:15', '2022-09-24 23:00:15'),
(26, 'Abdalla Gehad Abdalla', 'abdullah3jehad@gmail.com', '0544957871', '5.38.68.150', '2022-10-03 12:26:48', '2022-10-03 12:26:48'),
(27, 'Estelle Galloway', 'stella.g.sound@gmail.com', '0562161937', '94.207.240.153', '2022-10-24 14:22:12', '2022-10-24 14:22:12'),
(28, 'Danielle Cloe Lacanilao', 'dcflacanilao@gmail.com', '0565550397', '2.51.33.94', '2022-11-08 03:52:41', '2022-11-08 03:52:41'),
(29, 'Katherine', 'k.fuenmayor@yahoo.com', '00971552255041', '94.205.29.110', '2022-11-14 06:54:27', '2022-11-14 06:54:27'),
(30, 'Hello World! https://fs99d4.com?hs=ed66db45dbab65b55fe7c49fd6a9e566&', 'x01mp3rx0z@mailto.plus', '865040443391', '185.220.101.57', '2022-11-24 18:31:38', '2022-11-24 18:31:38'),
(31, 'Arnold Szepesi', 'arnold_szepesi@yahoo.ca', '+41795962906', '178.197.205.16', '2022-11-30 18:53:49', '2022-11-30 18:53:49'),
(32, 'Tom riddle', 'pallavi_krishna@hotmail.com', '+971558893791', '86.99.247.198', '2022-12-16 20:57:50', '2022-12-16 20:57:50'),
(33, 'Rob Silsbury', 'robsilsbury@gmail.com', '+971543990253', '91.75.91.37', '2022-12-23 04:22:41', '2022-12-23 04:22:41'),
(34, 'Frederico Zaniol', 'zaniolf@hotmail.com', '971505768267', '91.75.40.13', '2023-01-03 06:51:51', '2023-01-03 06:51:51'),
(35, 'Oliver Burt', 'oliver-john-burt@hotmail.co.uk', '+971 52 297 2719', '94.203.63.135', '2023-01-09 02:50:53', '2023-01-09 02:50:53'),
(36, 'Naweed Hoosenmia', 'sayednaweed@gmail.com', '0826542717', '41.216.202.223', '2023-01-12 02:36:40', '2023-01-12 02:36:40'),
(37, 'admin', 'admin', '123456', '181.41.206.67', '2023-01-15 11:42:10', '2023-01-15 11:42:10'),
(38, 'admin', 'admin', '123456', '181.41.206.67', '2023-01-15 11:42:11', '2023-01-15 11:42:11'),
(39, 'admin', 'admin', '123456', '181.41.206.67', '2023-01-15 11:42:11', '2023-01-15 11:42:11'),
(40, 'admin', 'admin', '123456\nexpr 925293821 + 937214265', '181.41.206.67', '2023-01-15 11:42:11', '2023-01-15 11:42:11'),
(41, 'admin', '${837200744+947363346}', '123456', '181.41.206.67', '2023-01-15 11:42:11', '2023-01-15 11:42:11'),
(42, 'admin', '${@var_dump(md5(315349379))};', '123456', '181.41.206.67', '2023-01-15 11:42:11', '2023-01-15 11:42:11'),
(43, 'admin', 'admin', '123456', '181.41.206.67', '2023-01-15 11:42:11', '2023-01-15 11:42:11'),
(44, 'admin', 'admin', '123456', '181.41.206.67', '2023-01-15 11:42:12', '2023-01-15 11:42:12'),
(45, 'admin', 'admin', '123456', '181.41.206.67', '2023-01-15 11:42:12', '2023-01-15 11:42:12'),
(46, '${937855917+972303617}', 'admin', '123456', '181.41.206.67', '2023-01-15 11:42:12', '2023-01-15 11:42:12'),
(47, 'admin', 'admin', '123456|expr 938730611 + 965907049', '181.41.206.67', '2023-01-15 11:42:12', '2023-01-15 11:42:12'),
(48, 'admin', 'admin', '123456', '181.41.206.67', '2023-01-15 11:42:12', '2023-01-15 11:42:12'),
(49, 'admin', '\'-var_dump(md5(467713381))-\'', '123456', '181.41.206.67', '2023-01-15 11:42:12', '2023-01-15 11:42:12'),
(50, 'admin', 'admin', '123456', '181.41.206.67', '2023-01-15 11:42:12', '2023-01-15 11:42:12'),
(51, 'admin', 'admin', '123456', '181.41.206.67', '2023-01-15 11:42:13', '2023-01-15 11:42:13'),
(52, 'admin', 'admin', '123456$(expr 905888698 + 879693066)', '181.41.206.67', '2023-01-15 11:42:13', '2023-01-15 11:42:13'),
(53, 'admin', 'admin', '${914043605+866973150}', '181.41.206.67', '2023-01-15 11:42:13', '2023-01-15 11:42:13'),
(54, 'admin', 'admin', '123456', '181.41.206.67', '2023-01-15 11:42:13', '2023-01-15 11:42:13'),
(55, '${@var_dump(md5(237180455))};', 'admin', '123456', '181.41.206.67', '2023-01-15 11:42:14', '2023-01-15 11:42:14'),
(56, 'admin', 'admin\'and\'y\'=\'y', '123456', '181.41.206.67', '2023-01-15 11:42:14', '2023-01-15 11:42:14'),
(57, 'admin', 'admin', '123456\'and/**/extractvalue(1,concat(char(126),md5(1743940602)))and\'', '181.41.206.67', '2023-01-15 11:42:14', '2023-01-15 11:42:14'),
(58, 'admin', 'admin', '123456&set /A 837823403+881477480', '181.41.206.67', '2023-01-15 11:42:14', '2023-01-15 11:42:14'),
(59, 'admin', 'admin', '123456', '181.41.206.67', '2023-01-15 11:42:14', '2023-01-15 11:42:14'),
(60, '\'-var_dump(md5(413103245))-\'', 'admin', '123456', '181.41.206.67', '2023-01-15 11:42:15', '2023-01-15 11:42:15'),
(61, 'admin', 'admin', '123456\"and/**/extractvalue(1,concat(char(126),md5(1929345425)))and\"', '181.41.206.67', '2023-01-15 11:42:16', '2023-01-15 11:42:16'),
(62, 'admin', 'admin\'and\'m\'=\'i', '123456', '181.41.206.67', '2023-01-15 11:42:16', '2023-01-15 11:42:16'),
(63, 'admin', 'admin', 'expr 932652498 + 944307109', '181.41.206.67', '2023-01-15 11:42:16', '2023-01-15 11:42:16'),
(64, 'admin', 'admin', '123456', '181.41.206.67', '2023-01-15 11:42:17', '2023-01-15 11:42:17'),
(65, 'admin', 'admin', '${@var_dump(md5(424712628))};', '181.41.206.67', '2023-01-15 11:42:18', '2023-01-15 11:42:18'),
(66, 'admin', 'admin', 'extractvalue(1,concat(char(126),md5(1000442413)))', '181.41.206.67', '2023-01-15 11:42:18', '2023-01-15 11:42:18'),
(67, 'admin', 'admin\"and\"x\"=\"x', '123456', '181.41.206.67', '2023-01-15 11:42:18', '2023-01-15 11:42:18'),
(68, 'admin', 'admin', '123456', '181.41.206.67', '2023-01-15 11:42:19', '2023-01-15 11:42:19'),
(69, 'admin', 'admin', '\'-var_dump(md5(730215788))-\'', '181.41.206.67', '2023-01-15 11:42:20', '2023-01-15 11:42:20'),
(70, 'admin', 'admin', '123456\'and(select\'1\'from/**/cast(md5(1708959703)as/**/int))>\'0', '181.41.206.67', '2023-01-15 11:42:20', '2023-01-15 11:42:20'),
(71, 'admin', '/*1*/{{854758442+874117370}}', '123456', '181.41.206.67', '2023-01-15 11:42:20', '2023-01-15 11:42:20'),
(72, 'admin', 'admin\"and\"u\"=\"i', '123456', '181.41.206.67', '2023-01-15 11:42:21', '2023-01-15 11:42:21'),
(73, 'admin', 'admin', '123456', '181.41.206.67', '2023-01-15 11:42:21', '2023-01-15 11:42:21'),
(74, 'admin', 'admin', '123456/**/and/**/cast(md5(\'1875645345\')as/**/int)>0', '181.41.206.67', '2023-01-15 11:42:23', '2023-01-15 11:42:23'),
(75, 'admin', 'admin', '123456', '181.41.206.67', '2023-01-15 11:42:23', '2023-01-15 11:42:23'),
(76, 'admin', '${880118852+873110435}', '123456', '181.41.206.67', '2023-01-15 11:42:23', '2023-01-15 11:42:23'),
(77, 'admin', 'admin', '123456', '181.41.206.67', '2023-01-15 11:42:23', '2023-01-15 11:42:23'),
(78, 'admin', 'admin', '123456', '181.41.206.67', '2023-01-15 11:42:25', '2023-01-15 11:42:25'),
(79, 'admin', 'admin', 'convert(int,sys.fn_sqlvarbasetostr(HashBytes(\'MD5\',\'1996373940\')))', '181.41.206.67', '2023-01-15 11:42:25', '2023-01-15 11:42:25'),
(80, 'admin', '${(901480633+968122769)?c}', '123456', '181.41.206.67', '2023-01-15 11:42:25', '2023-01-15 11:42:25'),
(81, 'admin', 'admin', '123456', '181.41.206.67', '2023-01-15 11:42:25', '2023-01-15 11:42:25'),
(82, 'admin', 'admin', '123456', '181.41.206.67', '2023-01-15 11:42:27', '2023-01-15 11:42:27'),
(83, 'admin', '#set($c=977484569+880776870)${c}$c', '123456', '181.41.206.67', '2023-01-15 11:42:27', '2023-01-15 11:42:27'),
(84, 'admin', 'admin', '123456', '181.41.206.67', '2023-01-15 11:42:27', '2023-01-15 11:42:27'),
(85, 'admin', 'admin', '123456鎈\'\"\\(', '181.41.206.67', '2023-01-15 11:42:29', '2023-01-15 11:42:29'),
(86, 'admin', 'admin\'and(select*from(select+sleep(0))a/**/union/**/select+1)=\'', '123456', '181.41.206.67', '2023-01-15 11:42:29', '2023-01-15 11:42:29'),
(87, 'admin', 'admin\nexpr 826825098 + 842195138', '123456', '181.41.206.67', '2023-01-15 11:42:29', '2023-01-15 11:42:29'),
(88, 'admin', '<%- 802874024+938825744 %>', '123456', '181.41.206.67', '2023-01-15 11:42:30', '2023-01-15 11:42:30'),
(89, 'admin', 'admin', '123456', '181.41.206.67', '2023-01-15 11:42:30', '2023-01-15 11:42:30'),
(90, 'admin', 'admin', '123456\'\"\\(', '181.41.206.67', '2023-01-15 11:42:31', '2023-01-15 11:42:31'),
(91, 'admin', 'admin\'and(select*from(select+sleep(2))a/**/union/**/select+1)=\'', '123456', '181.41.206.67', '2023-01-15 11:42:31', '2023-01-15 11:42:31'),
(92, 'admin', 'admin|expr 846133303 + 830358148', '123456', '181.41.206.67', '2023-01-15 11:42:31', '2023-01-15 11:42:31'),
(93, '/*1*/{{904740057+914917736}}', 'admin', '123456', '181.41.206.67', '2023-01-15 11:42:32', '2023-01-15 11:42:32'),
(94, 'admin', 'admin', '123456', '181.41.206.67', '2023-01-15 11:42:32', '2023-01-15 11:42:32'),
(95, 'admin', 'admin\"and(select*from(select+sleep(0))a/**/union/**/select+1)=\"', '123456', '181.41.206.67', '2023-01-15 11:42:33', '2023-01-15 11:42:33'),
(96, 'admin', 'admin$(expr 879896789 + 929410605)', '123456', '181.41.206.67', '2023-01-15 11:42:34', '2023-01-15 11:42:34'),
(97, '${995133369+865412438}', 'admin', '123456', '181.41.206.67', '2023-01-15 11:42:34', '2023-01-15 11:42:34'),
(98, 'admin', 'admin\"and(select*from(select+sleep(2))a/**/union/**/select+1)=\"', '123456', '181.41.206.67', '2023-01-15 11:42:36', '2023-01-15 11:42:36'),
(99, 'admin', 'admin&set /A 876799247+988466295', '123456', '181.41.206.67', '2023-01-15 11:42:36', '2023-01-15 11:42:36'),
(100, '${(912680687+825734413)?c}', 'admin', '123456', '181.41.206.67', '2023-01-15 11:42:36', '2023-01-15 11:42:36'),
(101, 'admin', 'admin\'/**/and(select\'1\'from/**/pg_sleep(0))::text>\'0', '123456', '181.41.206.67', '2023-01-15 11:42:38', '2023-01-15 11:42:38'),
(102, 'admin', 'expr 922514001 + 842702078', '123456', '181.41.206.67', '2023-01-15 11:42:38', '2023-01-15 11:42:38'),
(103, '#set($c=843394024+903033567)${c}$c', 'admin', '123456', '181.41.206.67', '2023-01-15 11:42:38', '2023-01-15 11:42:38'),
(104, 'admin', 'admin\'/**/and(select\'1\'from/**/pg_sleep(2))::text>\'0', '123456', '181.41.206.67', '2023-01-15 11:42:40', '2023-01-15 11:42:40'),
(105, 'admin\nexpr 818623209 + 942927056', 'admin', '123456', '181.41.206.67', '2023-01-15 11:42:40', '2023-01-15 11:42:40'),
(106, '<%- 830342699+910206382 %>', 'admin', '123456', '181.41.206.67', '2023-01-15 11:42:41', '2023-01-15 11:42:41'),
(107, 'admin', 'admin\'and(select+1)>0waitfor/**/delay\'0:0:0', '123456', '181.41.206.67', '2023-01-15 11:42:42', '2023-01-15 11:42:42'),
(108, 'admin|expr 923719881 + 904310368', 'admin', '123456', '181.41.206.67', '2023-01-15 11:42:42', '2023-01-15 11:42:42'),
(109, 'admin', 'admin', '/*1*/{{883636884+804996873}}', '181.41.206.67', '2023-01-15 11:42:43', '2023-01-15 11:42:43'),
(110, 'admin', 'admin\'and(select+1)>0waitfor/**/delay\'0:0:2', '123456', '181.41.206.67', '2023-01-15 11:42:45', '2023-01-15 11:42:45'),
(111, 'admin$(expr 990030653 + 999214525)', 'admin', '123456', '181.41.206.67', '2023-01-15 11:42:45', '2023-01-15 11:42:45'),
(112, 'admin', 'admin', '${929454955+823496870}', '181.41.206.67', '2023-01-15 11:42:45', '2023-01-15 11:42:45'),
(113, 'admin', 'admin\'/**/and/**/DBMS_PIPE.RECEIVE_MESSAGE(\'k\',0)=\'k', '123456', '181.41.206.67', '2023-01-15 11:42:46', '2023-01-15 11:42:46'),
(114, 'admin&set /A 914263964+899214151', 'admin', '123456', '181.41.206.67', '2023-01-15 11:42:46', '2023-01-15 11:42:46'),
(115, 'admin', 'admin', '${(997713066+870448856)?c}', '181.41.206.67', '2023-01-15 11:42:47', '2023-01-15 11:42:47'),
(116, 'admin', 'admin\'/**/and/**/DBMS_PIPE.RECEIVE_MESSAGE(\'b\',2)=\'b', '123456', '181.41.206.67', '2023-01-15 11:42:48', '2023-01-15 11:42:48'),
(117, 'expr 863444750 + 985352320', 'admin', '123456', '181.41.206.67', '2023-01-15 11:42:49', '2023-01-15 11:42:49'),
(118, 'admin', 'admin', '#set($c=936283454+993369074)${c}$c', '181.41.206.67', '2023-01-15 11:42:49', '2023-01-15 11:42:49'),
(119, 'admin\'and\'h\'=\'h', 'admin', '123456', '181.41.206.67', '2023-01-15 11:42:51', '2023-01-15 11:42:51'),
(120, 'admin', 'admin', '<%- 823382128+948940577 %>', '181.41.206.67', '2023-01-15 11:42:51', '2023-01-15 11:42:51'),
(121, 'admin', 'admin\'and/**/extractvalue(1,concat(char(126),md5(1854841942)))and\'', '123456', '181.41.206.67', '2023-01-15 11:42:52', '2023-01-15 11:42:52'),
(122, 'admin\'and\'q\'=\'h', 'admin', '123456', '181.41.206.67', '2023-01-15 11:42:52', '2023-01-15 11:42:52'),
(123, 'admin', 'admin\"and/**/extractvalue(1,concat(char(126),md5(1680125106)))and\"', '123456', '181.41.206.67', '2023-01-15 11:42:54', '2023-01-15 11:42:54'),
(124, 'admin\"and\"x\"=\"x', 'admin', '123456', '181.41.206.67', '2023-01-15 11:42:54', '2023-01-15 11:42:54'),
(125, 'admin', 'extractvalue(1,concat(char(126),md5(1030247685)))', '123456', '181.41.206.67', '2023-01-15 11:42:55', '2023-01-15 11:42:55'),
(126, 'admin\"and\"d\"=\"d', 'admin', '123456', '181.41.206.67', '2023-01-15 11:42:55', '2023-01-15 11:42:55'),
(127, 'admin', 'admin\'and(select\'1\'from/**/cast(md5(1014165187)as/**/int))>\'0', '123456', '181.41.206.67', '2023-01-15 11:42:57', '2023-01-15 11:42:57'),
(128, 'admin\'and(select*from(select+sleep(0))a/**/union/**/select+1)=\'', 'admin', '123456', '181.41.206.67', '2023-01-15 11:42:57', '2023-01-15 11:42:57'),
(129, 'admin', 'admin/**/and/**/cast(md5(\'1541062798\')as/**/int)>0', '123456', '181.41.206.67', '2023-01-15 11:42:58', '2023-01-15 11:42:58'),
(130, 'admin\'and(select*from(select+sleep(2))a/**/union/**/select+1)=\'', 'admin', '123456', '181.41.206.67', '2023-01-15 11:42:58', '2023-01-15 11:42:58'),
(131, 'admin', 'convert(int,sys.fn_sqlvarbasetostr(HashBytes(\'MD5\',\'1555512920\')))', '123456', '181.41.206.67', '2023-01-15 11:42:59', '2023-01-15 11:42:59'),
(132, 'admin\"and(select*from(select+sleep(0))a/**/union/**/select+1)=\"', 'admin', '123456', '181.41.206.67', '2023-01-15 11:42:59', '2023-01-15 11:42:59'),
(133, 'admin', 'admin\'and/**/convert(int,sys.fn_sqlvarbasetostr(HashBytes(\'MD5\',\'1398955099\')))>\'0', '123456', '181.41.206.67', '2023-01-15 11:43:00', '2023-01-15 11:43:00'),
(134, 'admin\"and(select*from(select+sleep(2))a/**/union/**/select+1)=\"', 'admin', '123456', '181.41.206.67', '2023-01-15 11:43:00', '2023-01-15 11:43:00'),
(135, 'admin', 'admin鎈\'\"\\(', '123456', '181.41.206.67', '2023-01-15 11:43:01', '2023-01-15 11:43:01'),
(136, 'admin\'/**/and(select\'1\'from/**/pg_sleep(0))::text>\'0', 'admin', '123456', '181.41.206.67', '2023-01-15 11:43:02', '2023-01-15 11:43:02'),
(137, 'admin', 'admin\'\"\\(', '123456', '181.41.206.67', '2023-01-15 11:43:02', '2023-01-15 11:43:02'),
(138, 'admin\'/**/and(select\'1\'from/**/pg_sleep(2))::text>\'0', 'admin', '123456', '181.41.206.67', '2023-01-15 11:43:03', '2023-01-15 11:43:03'),
(139, 'admin\'and/**/extractvalue(1,concat(char(126),md5(1439496674)))and\'', 'admin', '123456', '181.41.206.67', '2023-01-15 11:43:03', '2023-01-15 11:43:03'),
(140, 'admin\'and(select+1)>0waitfor/**/delay\'0:0:0', 'admin', '123456', '181.41.206.67', '2023-01-15 11:43:04', '2023-01-15 11:43:04'),
(141, 'admin\"and/**/extractvalue(1,concat(char(126),md5(1745695097)))and\"', 'admin', '123456', '181.41.206.67', '2023-01-15 11:43:05', '2023-01-15 11:43:05'),
(142, 'admin\'and(select+1)>0waitfor/**/delay\'0:0:2', 'admin', '123456', '181.41.206.67', '2023-01-15 11:43:05', '2023-01-15 11:43:05'),
(143, 'extractvalue(1,concat(char(126),md5(1291779510)))', 'admin', '123456', '181.41.206.67', '2023-01-15 11:43:06', '2023-01-15 11:43:06'),
(144, 'admin\'/**/and/**/DBMS_PIPE.RECEIVE_MESSAGE(\'s\',0)=\'s', 'admin', '123456', '181.41.206.67', '2023-01-15 11:43:06', '2023-01-15 11:43:06'),
(145, 'admin\'and(select\'1\'from/**/cast(md5(1072328337)as/**/int))>\'0', 'admin', '123456', '181.41.206.67', '2023-01-15 11:43:07', '2023-01-15 11:43:07'),
(146, 'admin\'/**/and/**/DBMS_PIPE.RECEIVE_MESSAGE(\'g\',2)=\'g', 'admin', '123456', '181.41.206.67', '2023-01-15 11:43:07', '2023-01-15 11:43:07'),
(147, 'admin/**/and/**/cast(md5(\'1871264972\')as/**/int)>0', 'admin', '123456', '181.41.206.67', '2023-01-15 11:43:08', '2023-01-15 11:43:08'),
(148, 'admin', 'admin', '123456/**/and+4=4', '181.41.206.67', '2023-01-15 11:43:08', '2023-01-15 11:43:08'),
(149, 'convert(int,sys.fn_sqlvarbasetostr(HashBytes(\'MD5\',\'1760762481\')))', 'admin', '123456', '181.41.206.67', '2023-01-15 11:43:09', '2023-01-15 11:43:09'),
(150, 'admin', 'admin', '123456/**/and+3=8', '181.41.206.67', '2023-01-15 11:43:09', '2023-01-15 11:43:09'),
(151, 'admin\'and/**/convert(int,sys.fn_sqlvarbasetostr(HashBytes(\'MD5\',\'1550114458\')))>\'0', 'admin', '123456', '181.41.206.67', '2023-01-15 11:43:10', '2023-01-15 11:43:10'),
(152, 'admin', 'admin', '123456\'and\'p\'=\'p', '181.41.206.67', '2023-01-15 11:43:11', '2023-01-15 11:43:11'),
(153, 'admin鎈\'\"\\(', 'admin', '123456', '181.41.206.67', '2023-01-15 11:43:12', '2023-01-15 11:43:12'),
(154, 'admin', 'admin', '123456\'and\'t\'=\'p', '181.41.206.67', '2023-01-15 11:43:12', '2023-01-15 11:43:12'),
(155, 'admin\'\"\\(', 'admin', '123456', '181.41.206.67', '2023-01-15 11:43:13', '2023-01-15 11:43:13'),
(156, 'admin', 'admin', '123456\"and\"s\"=\"s', '181.41.206.67', '2023-01-15 11:43:14', '2023-01-15 11:43:14'),
(157, 'admin', 'admin', '123456\"and\"n\"=\"w', '181.41.206.67', '2023-01-15 11:43:15', '2023-01-15 11:43:15'),
(158, 'admin', 'admin', '(select*from(select+sleep(0)union/**/select+1)a)', '181.41.206.67', '2023-01-15 11:43:16', '2023-01-15 11:43:16'),
(159, 'admin', 'admin', '(select*from(select+sleep(2)union/**/select+1)a)', '181.41.206.67', '2023-01-15 11:43:17', '2023-01-15 11:43:17'),
(160, 'admin', 'admin', '123456\'and(select*from(select+sleep(0))a/**/union/**/select+1)=\'', '181.41.206.67', '2023-01-15 11:43:18', '2023-01-15 11:43:18'),
(161, 'admin', 'admin', '123456\'and(select*from(select+sleep(2))a/**/union/**/select+1)=\'', '181.41.206.67', '2023-01-15 11:43:20', '2023-01-15 11:43:20'),
(162, 'admin', 'admin', '123456\"and(select*from(select+sleep(0))a/**/union/**/select+1)=\"', '181.41.206.67', '2023-01-15 11:43:21', '2023-01-15 11:43:21'),
(163, 'admin', 'admin', '123456\"and(select*from(select+sleep(2))a/**/union/**/select+1)=\"', '181.41.206.67', '2023-01-15 11:43:22', '2023-01-15 11:43:22'),
(164, 'admin', 'admin', '123456/**/and(select+1/**/from/**/pg_sleep(0))>0/**/', '181.41.206.67', '2023-01-15 11:43:24', '2023-01-15 11:43:24'),
(165, 'admin', 'admin', '123456/**/and(select+1/**/from/**/pg_sleep(2))>0/**/', '181.41.206.67', '2023-01-15 11:43:25', '2023-01-15 11:43:25'),
(166, 'admin', 'admin', '123456\'/**/and(select\'1\'from/**/pg_sleep(0))::text>\'0', '181.41.206.67', '2023-01-15 11:43:26', '2023-01-15 11:43:26'),
(167, 'admin', 'admin', '123456\'/**/and(select\'1\'from/**/pg_sleep(2))::text>\'0', '181.41.206.67', '2023-01-15 11:43:27', '2023-01-15 11:43:27'),
(168, 'admin', 'admin', '123456/**/and(select+1)>0waitfor/**/delay\'0:0:0\'/**/', '181.41.206.67', '2023-01-15 11:43:27', '2023-01-15 11:43:27'),
(169, 'admin', 'admin', '123456/**/and(select+1)>0waitfor/**/delay\'0:0:2\'/**/', '181.41.206.67', '2023-01-15 11:43:28', '2023-01-15 11:43:28'),
(170, 'admin', 'admin', '123456\'and(select+1)>0waitfor/**/delay\'0:0:0', '181.41.206.67', '2023-01-15 11:43:29', '2023-01-15 11:43:29'),
(171, 'admin', 'admin', '123456\'and(select+1)>0waitfor/**/delay\'0:0:2', '181.41.206.67', '2023-01-15 11:43:30', '2023-01-15 11:43:30'),
(172, 'admin', 'admin', '123456/**/and/**/3=DBMS_PIPE.RECEIVE_MESSAGE(\'z\',0)', '181.41.206.67', '2023-01-15 11:43:31', '2023-01-15 11:43:31'),
(173, 'admin', 'admin', '123456/**/and/**/3=DBMS_PIPE.RECEIVE_MESSAGE(\'r\',2)', '181.41.206.67', '2023-01-15 11:43:32', '2023-01-15 11:43:32'),
(174, 'admin', 'admin', '123456\'/**/and/**/DBMS_PIPE.RECEIVE_MESSAGE(\'f\',0)=\'f', '181.41.206.67', '2023-01-15 11:43:33', '2023-01-15 11:43:33'),
(175, 'admin', 'admin', '123456\'/**/and/**/DBMS_PIPE.RECEIVE_MESSAGE(\'i\',2)=\'i', '181.41.206.67', '2023-01-15 11:43:34', '2023-01-15 11:43:34'),
(176, 'Anna Balint', 'lazy_angie@hotmail.com', '0585697942', '200.214.0.179', '2023-01-22 21:06:42', '2023-01-22 21:06:42'),
(177, 'Aleksandra Goro', 'aleksandra.goro@gmail.com', '+971582974640', '217.165.193.91', '2023-04-03 23:49:41', '2023-04-03 23:49:41');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(90) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reason` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `mobile`, `reason`, `message`, `ip`, `created_at`, `updated_at`) VALUES
(1, 'test test', 'omar@omarnas.com', '0529332012', 'Media Inquiry', 'sdsdsdsd', '87.200.155.253', '2022-06-06 10:24:33', '2022-06-06 10:24:33'),
(2, 'Omar Abusafiyah', 'omarabusafieh@gmail.com', '0529332012', 'General Inquiry', 'Test', '213.132.47.210', '2022-06-16 01:52:58', '2022-06-16 01:52:58'),
(3, 'Omar Abusafiyah', 'omarabusafieh@gmail.com', '0529332012', 'General Inquiry', 'test', '213.132.47.210', '2022-06-16 01:54:09', '2022-06-16 01:54:09'),
(4, 'Omar Abusafiyah', 'omarabusafieh@gmail.com', '0529332012', 'General Inquiry', 'Test test test Fill up the form below to get in touch with us.', '213.132.47.210', '2022-06-16 02:31:31', '2022-06-16 02:31:31'),
(5, 'Omar Abusafiyah', 'omarabusafieh@gmail.com', '0529332012', 'General Inquiry', 'Fill up the form below to get in touch with us.\n\ntest test test', '213.132.47.210', '2022-06-16 02:32:38', '2022-06-16 02:32:38'),
(6, 'Omar Abusafiyah', 'omarabusafieh@gmail.com', '0529332012', 'Media Inquiry', 'Test test test Fill up the form below to get in touch with us.', '213.132.47.210', '2022-06-16 02:33:32', '2022-06-16 02:33:32'),
(7, 'Omar Abusafiyah', 'omarabusafieh@gmail.com', '0529332012', 'General Inquiry', 'Fill up the form below to get in touch with us.\n\nFill up the form below to get in touch with us.\n\nTest test', '213.132.47.210', '2022-06-16 02:35:27', '2022-06-16 02:35:27'),
(8, 'Omar Abusafiyah', 'omarabusafieh@gmail.com', '0529332012', 'General Inquiry', 'Fill up the form below to get in touch with us.\n\n test etst test', '213.132.47.210', '2022-06-16 02:37:22', '2022-06-16 02:37:22'),
(9, 'test test', 'revision@zianetwork.com', '044221134', 'General Inquiry', 'f', '156.34.3.44', '2022-06-16 09:20:45', '2022-06-16 09:20:45'),
(10, 'Omar nas', 'omar@omarnas.com', '0529332012', 'General Inquiry', 'Test test test Fill up the form below to get in touch with us.', '87.200.155.253', '2022-06-16 13:57:54', '2022-06-16 13:57:54');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount` int(6) NOT NULL DEFAULT '10',
  `coupon_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `max_usage` int(11) NOT NULL DEFAULT '10',
  `max_discount` int(11) NOT NULL DEFAULT '0',
  `starts_at` datetime DEFAULT NULL,
  `ends_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `code`, `discount`, `coupon_type`, `description`, `max_usage`, `max_discount`, `starts_at`, `ends_at`, `created_at`, `updated_at`) VALUES
(2, 'ZIA', 10, 'percent', 'ZiA discount', 100, 1000, NULL, NULL, '2022-06-13 13:33:24', '2022-06-13 13:33:24'),
(3, 'TestPayment99', 99, 'percent', 'For testing only', 10, 1000000, NULL, NULL, '2022-06-14 11:04:04', '2022-06-14 11:08:35');

-- --------------------------------------------------------

--
-- Table structure for table `destinations`
--

CREATE TABLE `destinations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `vertical_image` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cover_image` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner_image` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner_title` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_title` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `full_description` text COLLATE utf8mb4_unicode_ci,
  `banner_video` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_title` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `display_order` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `destinations`
--

INSERT INTO `destinations` (`id`, `name`, `image`, `short_description`, `status`, `deleted_at`, `created_at`, `updated_at`, `vertical_image`, `cover_image`, `banner_image`, `banner_title`, `sub_title`, `full_description`, `banner_video`, `slug`, `meta_description`, `meta_title`, `display_order`) VALUES
(12, 'Maldives', 'uploads/9fa6ca496e22e9b4c3c689860592eeda.jpg', 'The island of Thulusdhoo features the best of what the Maldives offers: a crystal, clear turquoise lagoon and white sandy beaches.', '1', NULL, '2022-05-22 09:55:27', '2023-02-23 10:04:32', 'uploads/qYxLsc5nCtj17hFQrZFmFZuJeaOX1b-metaTWFsZGl2ZXMtVmVydGljYWwuanBn-.jpg', 'uploads/faa751b6e76638ba08b74eb879971740.jpg', 'uploads/e8aRGEynsx4aP49VfJJI6VtdLG44iQ-metaZGVzdGluYXRpb24tZGV0YWlscy1iYW5uZXItYmcuanBn-.jpg', 'SURF, RELAX, UNWIND', 'A SURFER’S PARADISE', 'The island of Thulusdhoo features the best of what the Maldives offers: a crystal, clear turquoise lagoon and white sandy beaches. The soft sand and calm waters make the island’s beaches perfect for sunbathing and relaxing.\r\n\r\nMost famous for being close to two of the Maldives’ best surf breaks, Cokes and Chickens, it’s safe to say that Thulusdhoo is a surfer’s paradise. Surf can be done throughout the year but is best between the months of April and November. The North Male’ atoll is also home to a number of other surf breaks, including Honkeys, Jailbreaks and Sultans, which are easily accessible by a short speedboat ride.', 'uploads/FUwyScS053yBngKufqhQ6iExUyDQ9J-metaTWFsZGl2ZXNfMTAgU2VjLm1wNA==-.mp4', 'maldives', 'Book your Maldives Surfing Week Trip Early Bird Special and win a chance to buy 1 Rusty Surfboard and get another 1 for FREE!\r\n\r\nMaldives Surfing Week: September 24 - October 1, 2022', 'The Surfing\r\nWeek - Maldives', 2),
(13, 'test 2', NULL, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.\n', '1', '2022-06-01 12:39:30', '2022-05-31 02:04:08', '2022-05-31 02:06:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(14, 'Test', 'q9hMyiaoIb1B9jlcA6Td7Iqh3tWVvv-metacGctaW0tMy5qcGc=-.jpg', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.\n', '1', '2022-06-01 12:39:30', '2022-05-31 02:32:10', '2022-06-01 12:39:30', '4tHS6q7eYogdNXcZstqWmWiwfT9rY4-metad3QtaW1nLTIuanBn-.jpg', 'IyY1ZNiYgRuAsIurVtfwRuBeBAoNjw-metad3NhLWltLTQuanBn-.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(15, 'Test2', 'uploads/5vrclb49RNlUV5x8L9TLB6LMWviyDR-metac2xpZGUtZHMtaW0tMi5qcGc=-.jpg', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.\n', '1', '2022-06-01 12:39:30', '2022-05-31 02:42:42', '2022-06-01 12:39:30', 'uploads/27tBpgfFlh660twmeA6ENoaaE7XNrJ-metad3QtaW1nLTIuanBn-.jpg', 'uploads/pfykVCVaYTqPPwj3HESeq3glrjErq6-metad3NhLWltLTQuanBn-.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(16, 'Test3', 'uploads/Ge9gzgzdvacgl1TA69B3WOWBdQzs31-metac2xpZGUtZHMtaW0tMi5qcGc=-.jpg', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.\n', '1', '2022-06-01 12:39:30', '2022-05-31 04:23:53', '2022-05-31 04:29:04', 'uploads/d4Gn2S5COp1yAQlWZUW6axIZuS4MMq-metad3QtaW1nLTEuanBn-.jpg', 'uploads/dIx3BhYmEqfgVuNLqCOu8uswSjcSRy-metad3NhLWltLTMuanBn-.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(17, 'Test3', 'uploads/KxOlXNNDsc2HYabD43VMs0zcyInF5y-metac2NsLTQuanBn-.jpg', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.\n', '1', '2022-06-01 12:39:30', '2022-05-31 04:29:36', '2022-06-01 12:39:30', 'uploads/CEdb8KntZkCOzSjSx4zC3WTyMj1444-metac3JpbGFua2EtYmcuanBn-.jpg', 'uploads/BICSFD32d8Qy8L7rc0BC1Z9FI78QLn-metad2hlcmUtdG8tYmcuanBn-.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(18, 'Sri Lanka', 'uploads/dZ4TOvsQiqmE6q7tYw7m6j81OPLRTx-metac3JpbGFua2EuanBn-.jpg', 'Bathed in warm Indian Ocean current, and with nearly 1600 kilometres of palm-fringed coastline, Sri Lanka is an incredible surf destination. The East Coast’s surf hub is centred around the legendary point break of Arugam Bay,', '1', NULL, '2022-06-01 12:45:13', '2023-02-23 10:05:02', 'uploads/3scLXbeL3H5CfyLznyVmIU4QlPFMvI-metaU3JpLUxhbmthLVZlcnRpY2FsLmpwZw==-.jpg', 'uploads/yOwJBeWGMmjacslOfd87PVkSsylyv9-metac2h1dHRlcnN0b2NrXzE2MjUwNDk3Ny5qcGc=-.jpg', 'uploads/oUhYz2eckcRROos0o5cUJ1q7YavwYs-metaYmFubmVyLWltZy0xLmpwZw==-.jpg', 'SURF, RELAX, UNWIND', 'A PLACE OF AWAKENING', 'Bathed in warm Indian Ocean current, and with nearly 1600 kilometres of palm-fringed coastline, Sri Lanka is an incredible surf destination. The East Coast’s surf hub is centred around the legendary point break of Arugam Bay, which is best in the Southern Hemisphere winter. The opposite coast, and its best waves near the town of Hikkaduwa, light up in summer. The great surf is accessorised by fertile wetlands, mysterious forests, mountains, rivers, wildlife and cascading waterfalls. Add the inspiring food, historical and religious sites and a culture rich in tradition and Sri Lanka becomes less of a surf trip and more of an awakening.', 'uploads/eOwvKdvF2UnK2MiwCldcjGx3Bd5SaD-metaU3JpTGFua2FfMTAgc2VjLm1wNA==-.mp4', 'sri-lanka', 'Bathed in warm Indian Ocean current, and with nearly 1600 kilometres of palm-fringed coastline, Sri Lanka is an incredible surf destination. The East Coast’s surf hub is centred around the legendary point break of Arugam Bay,', 'The Surfing Week - Sri Lanka', 1),
(19, 'Indonesia', 'uploads/9GH7KE4jkGLytA96pwdS01tG9FJqjY-metacG9ydHVnYWwuanBn-.jpg', 'Bali is a mecca for travelling surfers because of the sunny weather, warm waters and over 60 surf spots across its coastline.', '1', NULL, '2022-06-01 12:53:42', '2023-04-05 11:33:12', 'uploads/7xlokI2JfT1OExwv5ZjbD9GqMKfEcP-metaQmFsaS1WZXJ0aWNhbC5qcGc=-.jpg', 'uploads/G9rVbTSmt1y9EGNEotJE5H9npchDnu-metac2h1dHRlcnN0b2NrXzIwNDE1MzI5MjQuanBn-.jpg', 'uploads/zkkkDgpU1rpqos9rLWZrZsp31qZzkr-metaZGVzdGluYXRpb24tZGV0YWlscy1iYW5uZXItYmcuanBn-.jpg', 'SURF, RELAX, UNWIND', 'MECCA FOR TRAVELLING SURFERS', 'Bali is a mecca for travelling surfers because of the sunny weather, warm waters and over 60 surf spots across its coastline. The long list of surf spots and a vast range of wave types offers plenty of options for all levels of surfer from mellow beach breaks for beginners to barreling reef breaks for the well-seasoned tube rider. Surfing in Bali is most commonly known for its perfect barreling left-hand reef breaks, with the most famous being Uluwatu. There is also plenty of world-class right-handers with Kermas being a firm favourite.', 'uploads/V1B41MCgWdA7TryP7tIIliXCj2Vv1U-metaYmFsaVNob3J0Lm1wNA==-.mp4', 'indonesia', 'Bali is the place to disconnect, relax and focus on what you love the most, surfing. Travel with us for an unbelievable surf experience packed with loads of fun-filled adventure and water sports activities.', 'The Surfing\r\nWeek - Bali', 4),
(20, 'Thailand', 'uploads/MnzFINpRPcfvZCCYNSwfRz8mtNX5H7-metac3JpbGFua2EuanBn-.jpg', 'The tropical resort island of Phuket Thailand has exotic beaches, a dynamic tourism economy, and a distinct new surfing culture.', '1', '2022-06-01 12:39:30', '2022-06-09 04:24:08', '2022-06-21 03:00:22', 'uploads/9lPXyGF5ogS5u4vHhMeyTv498q7bBt-metadGhhaWxhbmQuanBn-.jpg', 'uploads/dm6CUYEWRr6uPYbw6Cv5BJ3dmMcSWS-metaZGVzdGluYXRpb24tZGV0YWlscy1iYW5uZXItYmcuanBn-.jpg', 'uploads/xr1qDn0N4RKlNUF4yYlT55fnLSZMiS-metaZGVzdGluYXRpb24tZGV0YWlscy1iYW5uZXItYmcuanBn-.jpg', 'SURF, RELAX, UNWIND', 'DISTINCT SURFING CULTURE', 'The tropical resort island of Phuket Thailand has exotic beaches, a dynamic tourism economy, and a distinct new surfing culture. A world of extremes, where noisy cities meet authentic street markets and luxury seaside resorts are intertwined with deserted beaches, Thailand is a popular travel destination for many reasons.', 'uploads/6ymAUNFuygYFmc2RjM3LU29CXxEAce-metaVGhhaWxhbmRfMTAgU2VjLm1wNA==-.mp4', 'thailand', 'Travel with us to live your surfing dream in Thailand, one of the most stunning surf destinations on the planet. Spend a week full of surfing, adventure and meeting with like-minded people', 'The Surfing\r\nWeek - Thailand', 5),
(25, 'Maldives', 'uploads/MnzFINpRPcfvZCCYNSwfRz8mtNX5H7-metac3JpbGFua2EuanBn-.jpg', 'The tropical resort island of Phuket Thailand has exotic beaches, a dynamic tourism economy, and a distinct new surfing culture.', '1', '2022-06-01 12:39:30', '2023-04-06 14:06:33', '2023-04-06 15:06:33', 'uploads/9lPXyGF5ogS5u4vHhMeyTv498q7bBt-metadGhhaWxhbmQuanBn-.jpg', 'uploads/dm6CUYEWRr6uPYbw6Cv5BJ3dmMcSWS-metaZGVzdGluYXRpb24tZGV0YWlscy1iYW5uZXItYmcuanBn-.jpg', 'uploads/xr1qDn0N4RKlNUF4yYlT55fnLSZMiS-metaZGVzdGluYXRpb24tZGV0YWlscy1iYW5uZXItYmcuanBn-.jpg', 'SURF, RELAX, UNWIND', 'DISTINCT SURFING CULTURE', 'The tropical resort island of Phuket Thailand has exotic beaches, a dynamic tourism economy, and a distinct new surfing culture. A world of extremes, where noisy cities meet authentic street markets and luxury seaside resorts are intertwined with deserted beaches, Thailand is a popular travel destination for many reasons.', 'uploads/6ymAUNFuygYFmc2RjM3LU29CXxEAce-metaVGhhaWxhbmRfMTAgU2VjLm1wNA==-.mp4', 'maldives', 'Travel with us to live your surfing dream in Thailand, one of the most stunning surf destinations on the planet. Spend a week full of surfing, adventure and meeting with like-minded people', 'The Surfing\r\nWeek - Maldives', 3);

-- --------------------------------------------------------

--
-- Table structure for table `destination_images`
--

CREATE TABLE `destination_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `destination_id` bigint(20) UNSIGNED DEFAULT NULL,
  `image` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `destination_images`
--

INSERT INTO `destination_images` (`id`, `destination_id`, `image`, `created_at`, `updated_at`) VALUES
(2, 12, 'uploads/kjS5ZfmqfcsQW9lCWIjjRMCsmBvd4K-metacHJlbWl1bS5qcGc=-.jpg', '2022-05-30 09:11:03', '2022-05-30 09:11:03'),
(4, 12, 'uploads/kjS5ZfmqfcsQW9lCWIjjRMCsmBvd4K-metacHJlbWl1bS5qcGc=-.jpg', '2022-05-31 02:32:10', '2022-06-01 05:53:03'),
(6, 12, 'uploads/kjS5ZfmqfcsQW9lCWIjjRMCsmBvd4K-metacHJlbWl1bS5qcGc=-.jpg', '2022-05-31 02:42:42', '2022-06-01 05:41:54'),
(23, 18, 'uploads/kjS5ZfmqfcsQW9lCWIjjRMCsmBvd4K-metacHJlbWl1bS5qcGc=-.jpg', '2022-06-01 12:47:53', '2022-06-01 12:47:53'),
(24, 18, 'uploads/m6HbCMtS8l4fOEtfYF9vy9fCqzw2oh-metacHJlbWl1bS5qcGc=-.jpg', '2022-06-01 12:47:53', '2022-06-01 12:47:53'),
(25, 19, NULL, '2022-06-01 12:53:42', '2022-06-01 12:53:42'),
(26, 20, NULL, '2022-06-09 04:24:08', '2022-06-09 04:24:08');

-- --------------------------------------------------------

--
-- Table structure for table `dymantic_instagram_basic_profiles`
--

CREATE TABLE `dymantic_instagram_basic_profiles` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `identity_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dymantic_instagram_basic_profiles`
--

INSERT INTO `dymantic_instagram_basic_profiles` (`id`, `username`, `identity_token`, `created_at`, `updated_at`) VALUES
(1, 'thesurfingweek', 'XqAyfi3Y0zivFKQZ', '2022-06-20 03:18:11', '2022-06-20 03:41:39');

-- --------------------------------------------------------

--
-- Table structure for table `dymantic_instagram_feed_tokens`
--

CREATE TABLE `dymantic_instagram_feed_tokens` (
  `id` int(10) UNSIGNED NOT NULL,
  `profile_id` int(10) UNSIGNED NOT NULL,
  `access_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_fullname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_profile_picture` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `guests`
--

CREATE TABLE `guests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `booking_id` bigint(20) UNSIGNED DEFAULT NULL,
  `bookedroom_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `guests`
--

INSERT INTO `guests` (`id`, `booking_id`, `bookedroom_id`, `name`, `mobile`, `email`, `created_at`, `updated_at`) VALUES
(83, 54, 54, 'Testq Tetst', NULL, 'chasyobando@gmail.com', '2022-06-10 14:38:46', '2022-06-10 14:38:46'),
(108, 75, 75, 'John Doe', '0504586055', 'revision@zianetwork.com', '2022-06-14 07:38:39', '2022-06-14 07:38:39'),
(109, 75, 75, 'Jane Smith', '0504586055', 'revision@zianetwork.com', '2022-06-14 07:38:39', '2022-06-14 07:38:39'),
(139, 97, 97, 'Omar nas', '0529932012', 'omar@omarnas.com', '2022-06-20 14:23:19', '2022-06-20 14:23:19'),
(140, 98, 98, 'test test', '0529332012', 'omar@omarnas.com', '2022-07-01 08:04:54', '2022-07-01 08:04:54'),
(141, 99, 99, 'Rohit Sharma', '052248241', 'Rohit@gmail.com', '2022-08-21 13:57:26', '2022-08-21 13:57:26'),
(142, 100, 100, 'zehra laraib', '+971522386721', 'zehra@yahoo.com', '2022-08-22 04:47:05', '2022-08-22 04:47:05'),
(143, 101, 101, 'test test', '903875982385', 'chasy@zianetwork.com', '2022-09-28 12:47:14', '2022-09-28 12:47:14'),
(144, 102, 102, 'khuram khan', '0502504989', 'khuram@gmail.com', '2022-11-23 06:12:42', '2022-11-23 06:12:42'),
(145, 103, 103, 'umer khan', '0502504988', 'umer@zianetwork.com', '2023-01-18 05:06:47', '2023-01-18 05:06:47');

-- --------------------------------------------------------

--
-- Table structure for table `highlights`
--

CREATE TABLE `highlights` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `destination_id` bigint(20) UNSIGNED DEFAULT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `highlights`
--

INSERT INTO `highlights` (`id`, `destination_id`, `title`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, 12, 'Warm Waters', 'Stunning underwater life', 'uploads/sGuqaS5hwAXjNB8Dy2C1TVlRVbC2sD-metac3BsYS1pbS0xLnBuZw==-.png', '2022-06-01 12:22:07', '2022-06-01 12:22:07'),
(2, 12, 'Uncrowded Waves', 'Intermediate to advanced surfers', 'uploads/LVtkH8kjAp59pISV2TASENNqm7nFhd-metac3BsYS1pbS0yLnBuZw==-.png', '2022-06-01 12:24:47', '2022-06-01 12:24:47'),
(3, 12, 'Diverse Accommodation', 'High end lux to B&B\'s', 'uploads/m2ucKywStfSFiZHLSm1NbwKayLMrPt-metaRGl2ZXJzZSBBY2NvbW1vZGF0aW9uLmpwZWc=-.jpg', '2022-06-01 12:26:31', '2022-06-06 10:49:09'),
(4, 12, 'Diving & Fishing', 'Amazing opportunities', 'uploads/LFM6d7DbuGkPlnaBcTgOuA6bxO7M0r-metac3BsYS1pbS0zLnBuZw==-.png', '2022-06-01 12:26:31', '2022-06-01 12:26:31'),
(5, 18, 'Tropical', 'Warm waters and waves', 'uploads/nSoLAnVk8uCaAefdSOfoiHj3CYKaxt-metac3BsYS1pbS0xLnBuZw==-.png', '2022-06-01 12:45:13', '2022-06-01 12:45:13'),
(6, 18, 'Diverse waves', 'Beginner to intermediate', 'uploads/Qfqe9iwMATsN9QEj536eMLRy7uBBsz-metac3BsYS1pbS0yLnBuZw==-.png', '2022-06-01 12:45:13', '2022-06-01 12:45:13'),
(7, 18, 'Cuisine & culture', 'Fantastic landscape to explore', 'uploads/ZDPmz3ssbY9Bfv43ZyNQpwymAEUKCK-metac3BsYS1pbS00LnBuZw==-.png', '2022-06-01 12:45:13', '2022-06-01 12:45:13'),
(8, 18, 'Amazing wildlife', 'Inland and on the coast', 'uploads/P45cr9MKjPVPmoR1hAJjTuIbcVIEbF-metac3BsYS1pbS0zLnBuZw==-.png', '2022-06-01 12:45:13', '2022-06-01 12:45:13'),
(9, 19, 'Magical Place', 'People & culture', 'uploads/7115vBN8oRaP2DlU8siOD83g3V7KTZ-metabWFnaWNhbFBsYWNlLnBuZw==-.png', '2022-06-01 12:53:42', '2022-06-09 08:32:43'),
(10, 19, 'Amazing landscape', 'From ricefields to rainforest to beaches', 'uploads/wWsHlNEeYZlOyxFUZokgeCcgP37wto-metaTGFuZHNjYXBlLnBuZw==-.png', '2022-06-01 12:53:42', '2022-06-09 08:32:43'),
(11, 19, 'Adventure', 'Found everywhere', 'uploads/2YmjkMgVXg2UQSteK0wjPApC490WQQ-metaQWR2ZW50dXJlLnBuZw==-.png', '2022-06-01 12:53:42', '2022-06-09 08:32:43'),
(12, 19, 'SURF SPOTS', 'Simply the best', 'uploads/EINSGhtxDIjCaA7WbUlTe1glZZm6we-metaYmFsaXN1cmZpbmcucG5n-.png', '2022-06-01 12:53:42', '2022-06-16 01:30:33'),
(13, 20, 'Sun-kissed Beaches', 'Exotic', 'uploads/ubNE4aQCaA26MBwkKae8zlY9GJbeeP-metaYmVhY2gucG5n-.png', '2022-06-01 12:53:42', '2022-06-14 03:36:42'),
(14, 20, 'Combat Sports', 'Kickboxing', 'uploads/rQwdkKQQstk9TQ2LS8GJPJR8fxegHv-metaYm94aW5nLnBuZw==-.png', '2022-06-01 12:53:42', '2022-06-15 12:47:45'),
(15, 20, 'Waves', 'Rideable', 'uploads/gYqQRgbh9xa1IF7lVNCU732gRTredf-metad2F2ZS5wbmc=-.png', '2022-06-01 12:53:42', '2022-06-14 03:36:42'),
(16, 20, 'Landscape', 'Stunning', 'uploads/xroGbA6EAn3aX4UQceXQZ1mpom8pDH-metabGFuZHNjYXBlLnBuZw==-.png', '2022-06-01 12:53:42', '2022-06-14 03:36:42');

-- --------------------------------------------------------

--
-- Table structure for table `instagram_feeds`
--

CREATE TABLE `instagram_feeds` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `feed_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `media_url` text COLLATE utf8mb4_unicode_ci,
  `post_permalink` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `local_image` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `publish` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `instagram_feeds`
--

INSERT INTO `instagram_feeds` (`id`, `feed_id`, `post_id`, `image_url`, `media_url`, `post_permalink`, `local_image`, `publish`, `created_at`, `updated_at`) VALUES
(10, 'hm33571', '17865743522697341', 'https://scontent-iad3-2.cdninstagram.com/v/t51.29350-15/289023920_555141966245790_5071529486491630294_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=8ae9d6&_nc_ohc=QgIPnSQZqHsAX8hd2QU&_nc_ht=scontent-iad3-2.cdninstagram.com&edm=AL-3X8kEAAAA&oh=00_AT9wdWVHwNfEzQVVHpAXF072Sw95Vw9blw3CyYCusKEApw&oe=62B498A9', 'https://scontent-iad3-2.cdninstagram.com/v/t51.29350-15/289023920_555141966245790_5071529486491630294_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=8ae9d6&_nc_ohc=QgIPnSQZqHsAX8hd2QU&_nc_ht=scontent-iad3-2.cdninstagram.com&edm=AL-3X8kEAAAA&oh=00_AT9wdWVHwNfEzQVVHpAXF072Sw95Vw9blw3CyYCusKEApw&oe=62B498A9', 'https://www.instagram.com/p/CfB6z-IJo2J/', 'uploads/17865743522697341.jpg', 1, '2022-06-20 11:10:45', '2022-06-20 11:10:45'),
(11, 'hm33571', '17974931236602048', 'https://scontent-iad3-2.cdninstagram.com/v/t51.29350-15/288857794_552740796306832_2989367016800294173_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=8ae9d6&_nc_ohc=99Q-fZkk-9MAX_uibdd&_nc_ht=scontent-iad3-2.cdninstagram.com&edm=AL-3X8kEAAAA&oh=00_AT_IbIQgVSv4rd8JMXKIJtpgFqMh4fT0Sg8-TVF95YBX3A&oe=62B49632', 'https://scontent-iad3-2.cdninstagram.com/v/t51.29350-15/288857794_552740796306832_2989367016800294173_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=8ae9d6&_nc_ohc=99Q-fZkk-9MAX_uibdd&_nc_ht=scontent-iad3-2.cdninstagram.com&edm=AL-3X8kEAAAA&oh=00_AT_IbIQgVSv4rd8JMXKIJtpgFqMh4fT0Sg8-TVF95YBX3A&oe=62B49632', 'https://www.instagram.com/p/CfB6uZYprpF/', 'uploads/17974931236602048.jpg', 1, '2022-06-20 11:10:46', '2022-06-20 11:10:46'),
(12, 'hm33571', '17924414966399833', 'https://scontent-iad3-2.cdninstagram.com/v/t51.29350-15/288884803_745833380101112_4042568098444887422_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=8ae9d6&_nc_ohc=Z4oGfMMkmhgAX9ofkkr&_nc_ht=scontent-iad3-2.cdninstagram.com&edm=AL-3X8kEAAAA&oh=00_AT99frNHqxUV-9DYnBxMNLxhwNN8pvjEWIUhoEtNPLk24w&oe=62B4FB42', 'https://scontent-iad3-2.cdninstagram.com/v/t51.29350-15/288884803_745833380101112_4042568098444887422_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=8ae9d6&_nc_ohc=Z4oGfMMkmhgAX9ofkkr&_nc_ht=scontent-iad3-2.cdninstagram.com&edm=AL-3X8kEAAAA&oh=00_AT99frNHqxUV-9DYnBxMNLxhwNN8pvjEWIUhoEtNPLk24w&oe=62B4FB42', 'https://www.instagram.com/p/CfB6orwp4D7/', 'uploads/17924414966399833.jpg', 1, '2022-06-20 11:10:46', '2022-06-20 11:10:46'),
(13, 'hm33571', '18032255938367833', 'https://scontent-iad3-2.cdninstagram.com/v/t51.29350-15/288914976_342756141268129_8879411708093258506_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=8ae9d6&_nc_ohc=weWImomNQ-8AX9Mx94p&_nc_ht=scontent-iad3-2.cdninstagram.com&edm=AL-3X8kEAAAA&oh=00_AT_8bF3RU3kePf8B7EqdzxnTy0xHIHueOTx6Sqx_LXp7HA&oe=62B57EB4', 'https://scontent-iad3-2.cdninstagram.com/v/t51.29350-15/288914976_342756141268129_8879411708093258506_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=8ae9d6&_nc_ohc=weWImomNQ-8AX9Mx94p&_nc_ht=scontent-iad3-2.cdninstagram.com&edm=AL-3X8kEAAAA&oh=00_AT_8bF3RU3kePf8B7EqdzxnTy0xHIHueOTx6Sqx_LXp7HA&oe=62B57EB4', 'https://www.instagram.com/p/CfB6WswJISc/', 'uploads/18032255938367833.jpg', 1, '2022-06-20 11:10:47', '2022-06-20 11:10:47'),
(14, 'hm33571', '17918432285496688', 'https://scontent-iad3-2.cdninstagram.com/v/t51.29350-15/277954821_2161983113939963_310243444996934432_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=8ae9d6&_nc_ohc=D_5BlDggDvwAX_9myo9&_nc_ht=scontent-iad3-2.cdninstagram.com&edm=AL-3X8kEAAAA&oh=00_AT9BZsX3W13TnBbXMtE1KXjiGQYw9R9C5Sz0CxHmfMrKYg&oe=62B5761E', 'https://scontent-iad3-2.cdninstagram.com/v/t51.29350-15/277954821_2161983113939963_310243444996934432_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=8ae9d6&_nc_ohc=D_5BlDggDvwAX_9myo9&_nc_ht=scontent-iad3-2.cdninstagram.com&edm=AL-3X8kEAAAA&oh=00_AT9BZsX3W13TnBbXMtE1KXjiGQYw9R9C5Sz0CxHmfMrKYg&oe=62B5761E', 'https://www.instagram.com/p/Cb_3vfgLjvA/', 'uploads/17918432285496688.jpg', 1, '2022-06-20 11:10:47', '2022-06-20 11:10:47'),
(15, 'hm33571', '18301880503041198', 'https://scontent.cdninstagram.com/v/t51.2885-15/289472807_345812704379162_2569820853338603252_n.jpg?stp=dst-jpg_e35_s640x640_sh0.08&_nc_ht=scontent.cdninstagram.com&_nc_cat=102&_nc_ohc=h2G1RQev4TMAX_BFSok&edm=AMO9-JQAAAAA&ccb=7-5&oh=00_AT_xQKeyWtgjNisg3GJ8l1B-6ovgFQUbAwhb3nXWmq7wZw&oe=62B3D5BC&_nc_sid=b9f2ee', 'https://video-iad3-2.cdninstagram.com/v/t50.16885-16/289508818_508069421075470_5056532767350219803_n.mp4?_nc_cat=108&vs=568408178054126_2688740729&_nc_vs=HBksFQAYJEdOS05RUkVPVEYwaEZzNEJBQnRrQ09IQ2FTeEdidlZCQUFBRhUAAsgBABUAGCRHQ0xET2hGejU2Zno0bDRCQUdIWkNrcDB3U1lmYnZWQkFBQUYVAgLIAQAoABgAGwGIB3VzZV9vaWwBMRUAACbYroGA08XfPxUCKAJDMywXQFAFHrhR64UYEmRhc2hfYmFzZWxpbmVfMV92MREAdewHAA%3D%3D&ccb=1-7&_nc_sid=59939d&efg=eyJ2ZW5jb2RlX3RhZyI6InZ0c192b2RfdXJsZ2VuLjEyODAuaWd0diJ9&_nc_ohc=y1ySZBigL2AAX_nuGSJ&_nc_ht=video-iad3-2.cdninstagram.com&edm=AL-3X8kEAAAA&oh=00_AT9_daJf32E0LzUEwwxoK23GUx36i0UtqLJPsJVdwZ8XWg&oe=62B3E0E1&_nc_rid=2dd3e24288', 'https://www.instagram.com/tv/CfHJzLOpPJq/', 'uploads/18301880503041198.jpg', 1, '2022-06-22 13:30:02', '2022-06-22 13:30:02'),
(16, 'hm33571', '18023648035378401', 'https://scontent-iad3-2.cdninstagram.com/v/t51.29350-15/289316902_3221886241460272_4773082069438891261_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=8ae9d6&_nc_ohc=2qvY8t20qVEAX_IuoPo&_nc_ht=scontent-iad3-2.cdninstagram.com&edm=AL-3X8kEAAAA&oh=00_AT8g_OF_FQkPt53Mxy9kFEbUNAOG8fPCgfg94k2LaLAgTA&oe=62B844E2', 'https://scontent-iad3-2.cdninstagram.com/v/t51.29350-15/289316902_3221886241460272_4773082069438891261_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=8ae9d6&_nc_ohc=2qvY8t20qVEAX_IuoPo&_nc_ht=scontent-iad3-2.cdninstagram.com&edm=AL-3X8kEAAAA&oh=00_AT8g_OF_FQkPt53Mxy9kFEbUNAOG8fPCgfg94k2LaLAgTA&oe=62B844E2', 'https://www.instagram.com/p/CfB653YpJWs/', 'uploads/18023648035378401.jpg', 1, '2022-06-22 13:45:02', '2022-06-22 13:45:02'),
(17, 'hm33571', '17973125581614890', 'https://scontent-iad3-2.cdninstagram.com/v/t51.29350-15/289705793_594968415255639_7781261939451068341_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=8ae9d6&_nc_ohc=aCBq17DzHVEAX8FwHZO&_nc_ht=scontent-iad3-2.cdninstagram.com&edm=AL-3X8kEAAAA&oh=00_AT9IIBA3vCoNlR9GhVShYKyw3jxXucc653Te8xjelpBR5Q&oe=62BAA487', 'https://scontent-iad3-2.cdninstagram.com/v/t51.29350-15/289705793_594968415255639_7781261939451068341_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=8ae9d6&_nc_ohc=aCBq17DzHVEAX8FwHZO&_nc_ht=scontent-iad3-2.cdninstagram.com&edm=AL-3X8kEAAAA&oh=00_AT9IIBA3vCoNlR9GhVShYKyw3jxXucc653Te8xjelpBR5Q&oe=62BAA487', 'https://www.instagram.com/p/CfMcVGlvBPt/', 'uploads/17973125581614890.jpg', 1, '2022-06-24 13:12:05', '2022-06-24 13:12:05'),
(18, 'hm33571', '17845577855792883', 'https://scontent.cdninstagram.com/v/t51.2885-15/289691927_183435140698802_831076921144009813_n.jpg?stp=dst-jpg_e35_p640x640_sh0.08&_nc_ht=scontent.cdninstagram.com&_nc_cat=102&_nc_ohc=XsJV_riWG4EAX_yn_cE&edm=AMO9-JQAAAAA&ccb=7-5&oh=00_AT-LoW3UiwAN6B5J7Lu7G_FZpoFx0Yrg6F0QRC_T3JJOtg&oe=62B7A919&_nc_sid=b9f2ee', 'https://video-iad3-2.cdninstagram.com/v/t50.16885-16/288728866_1085153912084065_1944834899266093138_n.mp4?_nc_cat=108&vs=708794456888275_3265941804&_nc_vs=HBksFQAYJEdDS25OUkZoMW5RVjhkb0RBRkxBaVdVSmNmMGFidlZCQUFBRhUAAsgBABUAGCRHSXdIUVJHSnR5Nlp6NDhCQUJ4em5KajlJQTA2YnZWQkFBQUYVAgLIAQAoABgAGwGIB3VzZV9vaWwBMRUAACaapYfF742EQBUCKAJDMywXQEEgAAAAAAAYEmRhc2hfYmFzZWxpbmVfMV92MREAdewHAA%3D%3D&ccb=1-7&_nc_sid=59939d&efg=eyJ2ZW5jb2RlX3RhZyI6InZ0c192b2RfdXJsZ2VuLjcyMC5pZ3R2In0%3D&_nc_ohc=EYsdl77uwUMAX-IJFJ5&_nc_ht=video-iad3-2.cdninstagram.com&edm=AL-3X8kEAAAA&oh=00_AT-PTlGw2ivkPV4Qp-6ZRvYxpGtSYBB13JJt_WiNvLSjzw&oe=62B7A608&_nc_rid=ac6828c95e', 'https://www.instagram.com/tv/CfOp4vlFdPC/', 'uploads/17845577855792883.jpg', 1, '2022-06-25 09:49:41', '2022-06-25 09:49:41'),
(19, 'hm33571', '17930255849469501', 'https://scontent-iad3-2.cdninstagram.com/v/t51.29350-15/290000878_554214173040800_2399784504841800718_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=8ae9d6&_nc_ohc=TsW0QNDcs5gAX-Ozvj9&_nc_ht=scontent-iad3-2.cdninstagram.com&edm=AL-3X8kEAAAA&oh=00_AT_yY2rbm8I-9uifE5mgfD0d00Cift7OQiW9li0NxeozaA&oe=62BC9EF4', 'https://scontent-iad3-2.cdninstagram.com/v/t51.29350-15/290000878_554214173040800_2399784504841800718_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=8ae9d6&_nc_ohc=TsW0QNDcs5gAX-Ozvj9&_nc_ht=scontent-iad3-2.cdninstagram.com&edm=AL-3X8kEAAAA&oh=00_AT_yY2rbm8I-9uifE5mgfD0d00Cift7OQiW9li0NxeozaA&oe=62BC9EF4', 'https://www.instagram.com/p/CfRXIrhNWzy/', 'uploads/17930255849469501.jpg', 1, '2022-06-26 10:09:47', '2022-06-26 10:09:47'),
(20, 'hm33571', '17989958482464481', 'https://scontent-iad3-2.cdninstagram.com/v/t51.29350-15/290185791_560856522208063_4416541958229976133_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=8ae9d6&_nc_ohc=y47T9lE5rpQAX8NuDe7&_nc_ht=scontent-iad3-2.cdninstagram.com&edm=AL-3X8kEAAAA&oh=00_AT9Ea6niISxeudBdBNyY0Zx1Hof6TiddV_D1k4Wgeuw25g&oe=62BE27F4', 'https://scontent-iad3-2.cdninstagram.com/v/t51.29350-15/290185791_560856522208063_4416541958229976133_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=8ae9d6&_nc_ohc=y47T9lE5rpQAX8NuDe7&_nc_ht=scontent-iad3-2.cdninstagram.com&edm=AL-3X8kEAAAA&oh=00_AT9Ea6niISxeudBdBNyY0Zx1Hof6TiddV_D1k4Wgeuw25g&oe=62BE27F4', 'https://www.instagram.com/p/CfUE5idPj4z/', 'uploads/17989958482464481.jpg', 1, '2022-06-27 11:35:55', '2022-06-27 11:35:55'),
(21, 'hm33571', '17955994579819777', 'https://scontent.cdninstagram.com/v/t51.2885-15/290590291_430543665646762_8779486505259574731_n.jpg?stp=dst-jpg_e35_p640x640_sh0.08&_nc_ht=scontent.cdninstagram.com&_nc_cat=110&_nc_ohc=4Hd-ihAilIYAX_1uwLm&edm=AMO9-JQAAAAA&ccb=7-5&oh=00_AT_lWFlnobRrsy5VCVnoNnxIfPkcmT_n-uzj60bo73tksg&oe=62BCF192&_nc_sid=b9f2ee', 'https://video-iad3-2.cdninstagram.com/v/t50.33967-16/290951627_527669775807832_4835256240581710748_n.mp4?_nc_cat=100&vs=397916998974429_523360141&_nc_vs=HBksFQAYJEdNdVJWeEZZdFl1eDZkOEJBSndUM2JudVJ4cERicV9FQUFBRhUAAsgBABUAGCRHSVBKWFJGa3FGd2hhSEVBQUxTdVB5clVCVkF1YnFfRUFBQUYVAgLIAQAoABgAGwGIB3VzZV9vaWwBMRUAACbajMTgq8HiPxUCKAJDMywXQC4o9cKPXCkYEmRhc2hfYmFzZWxpbmVfMV92MREAdQAA&ccb=1-7&_nc_sid=59939d&efg=eyJ2ZW5jb2RlX3RhZyI6InZ0c192b2RfdXJsZ2VuLjcyMC5jbGlwcyJ9&_nc_ohc=B5H6CT0g1dsAX_We7lL&_nc_ht=video-iad3-2.cdninstagram.com&edm=AL-3X8kEAAAA&oh=00_AT9Ao6qcAxAlv1w9C--mBwH5wGLLgRvAofPqIQ99cKF7nA&oe=62BCD6C5&_nc_rid=c5bfdfd560', 'https://www.instagram.com/reel/CfZGue_FVkL/', 'uploads/17955994579819777.jpg', 1, '2022-06-29 10:23:47', '2022-06-29 10:23:47'),
(22, 'hm33571', '18013947217417069', 'https://scontent.cdninstagram.com/v/t51.2885-15/290972146_553377836242179_2909253902645789344_n.jpg?stp=dst-jpg_e15_p640x640&_nc_ht=scontent.cdninstagram.com&_nc_cat=103&_nc_ohc=vTVf-nZ8G4YAX8PK2Rj&edm=AMO9-JQAAAAA&ccb=7-5&oh=00_AT80LDxqFDj29FF60nimShPgVZnAy6irH5yLQGuLZNN8Tg&oe=62BCE4A6&_nc_sid=b9f2ee', NULL, 'https://www.instagram.com/reel/CfWb8DOF9mr/', 'uploads/18013947217417069.jpg', 1, '2022-06-29 10:25:35', '2022-06-29 10:25:35'),
(23, 'hm33571', '17925609740280178', 'https://scontent.cdninstagram.com/v/t51.2885-15/289268916_375033877879613_6457093937171042444_n.jpg?stp=dst-jpg_e35_p640x640_sh0.08&_nc_ht=scontent.cdninstagram.com&_nc_cat=105&_nc_ohc=HK-N2qSsPPYAX8YHxW6&edm=AMO9-JQAAAAA&ccb=7-5&oh=00_AT9EV_9DfmEfrAz894D6SQPwFWJBm6KHhtBcXxzng536jw&oe=62BCEC9F&_nc_sid=b9f2ee', 'https://video-iad3-2.cdninstagram.com/v/t50.33967-16/10000000_570579251244511_4438415869902962745_n.mp4?_nc_cat=103&vs=705534657187781_2521407049&_nc_vs=HBksFQAYJEdJQ1dtQURmTFpaVjhBWUNBRG5BQmN1M2E1ZzlicV9FQUFBRhUAAsgBABUAGCRHRnZJTVJFZ1lZQk9SR2tCQVBTUjVMcl96V01tYnFfRUFBQUYVAgLIAQAoABgAGwGIB3VzZV9vaWwBMRUAACaAnema0N7FPxUCKAJDMywXQE4AAAAAAAAYEmRhc2hfYmFzZWxpbmVfMV92MREAdQAA&ccb=1-7&_nc_sid=59939d&efg=eyJ2ZW5jb2RlX3RhZyI6InZ0c192b2RfdXJsZ2VuLjcyMC5jbGlwcyJ9&_nc_ohc=2pJvxHRC2ssAX9bRwsU&_nc_ht=video-iad3-2.cdninstagram.com&edm=AL-3X8kEAAAA&oh=00_AT-PIQ_FXWvud_J1Ypr0C8BxgtUobiMkfxG3-bkcN4OwPQ&oe=62BCE79E&_nc_rid=e5645b99fb', 'https://www.instagram.com/reel/CfHMgAfJ3TH/', 'uploads/17925609740280178.jpg', 1, '2022-06-29 10:25:36', '2022-06-29 10:25:36'),
(24, 'hm33571', '17895193442635941', 'https://scontent.cdninstagram.com/v/t51.2885-15/290624819_800586934437924_2349040377782420801_n.jpg?stp=dst-jpg_e15_p640x640&_nc_ht=scontent.cdninstagram.com&_nc_cat=100&_nc_ohc=erjhUOzTgAsAX8_GZJK&edm=AMO9-JQAAAAA&ccb=7-5&oh=00_AT9W5oLcoLyBgHvR0-YhiljsQt2Njn01FIn-IAX99rv13A&oe=62BE843A&_nc_sid=b9f2ee', 'https://video-iad3-2.cdninstagram.com/v/t50.33967-16/10000000_711952596566589_4859581058288549223_n.mp4?_nc_cat=111&vs=460601565449063_2512883183&_nc_vs=HBksFQAYJEdJQ1dtQUE5Z3AxaGhJY0NBR2Q5Z2JBNXMzQkRicV9FQUFBRhUAAsgBABUAGCRHUEhrVkJFcGVRZW1yU2tGQUxtTjhDOTJCVUVFYnFfRUFBQUYVAgLIAQAoABgAGwGIB3VzZV9vaWwBMRUAACbsnJ%2FMoLHhPxUCKAJDMywXQDrMzMzMzM0YEmRhc2hfYmFzZWxpbmVfMV92MREAdQAA&ccb=1-7&_nc_sid=59939d&efg=eyJ2ZW5jb2RlX3RhZyI6InZ0c192b2RfdXJsZ2VuLjcyMC5jbGlwcyJ9&_nc_ohc=JcZlO3bSnKYAX9005KL&_nc_ht=video-iad3-2.cdninstagram.com&edm=AL-3X8kEAAAA&oh=00_AT916g4MsTyXcYBRwaNUjrQnt_hXrRAq_bckzjn5xXnh5w&oe=62BE50E8&_nc_rid=3210798807', 'https://www.instagram.com/reel/Cfbw53RlY5-/', 'uploads/17895193442635941.jpg', 1, '2022-06-30 13:26:31', '2022-06-30 13:26:31'),
(25, 'hm33571', '17958456442862814', 'https://scontent.cdninstagram.com/v/t51.2885-15/291471600_785549782605318_5083184296225272630_n.jpg?stp=dst-jpg_e15_p640x640&_nc_ht=scontent.cdninstagram.com&_nc_cat=106&_nc_ohc=MI29BH1HY58AX80Vjqo&edm=AMO9-JQAAAAA&ccb=7-5&oh=00_AT-55QxTH0xH7GjIj6Ph4WWTmb2HlOlmTby1jtamdLbjtA&oe=62C0D4EC&_nc_sid=b9f2ee', NULL, 'https://www.instagram.com/reel/CfgrLqUlBig/', 'uploads/17958456442862814.jpg', 1, '2022-07-02 10:00:02', '2022-07-02 10:00:02'),
(26, 'hm33571', '18039140083361830', 'https://scontent-iad3-2.cdninstagram.com/v/t51.29350-15/290891353_1085776605363315_4545984219915277688_n.jpg?_nc_cat=103&ccb=1-7&_nc_sid=8ae9d6&_nc_ohc=pRNpeABLoa0AX-3LkFe&_nc_ht=scontent-iad3-2.cdninstagram.com&edm=AL-3X8kEAAAA&oh=00_AT9ET9vna_iXuq04KIDjFpXIwr7bhxbXrdtnAYUULB6pyQ&oe=62C5454A', 'https://scontent-iad3-2.cdninstagram.com/v/t51.29350-15/290891353_1085776605363315_4545984219915277688_n.jpg?_nc_cat=103&ccb=1-7&_nc_sid=8ae9d6&_nc_ohc=pRNpeABLoa0AX-3LkFe&_nc_ht=scontent-iad3-2.cdninstagram.com&edm=AL-3X8kEAAAA&oh=00_AT9ET9vna_iXuq04KIDjFpXIwr7bhxbXrdtnAYUULB6pyQ&oe=62C5454A', 'https://www.instagram.com/p/CfeOjUyvfTB/', 'uploads/18039140083361830.jpg', 1, '2022-07-02 10:00:03', '2022-07-02 10:00:03'),
(27, 'hm33571', '17993455369489778', 'https://scontent.cdninstagram.com/v/t51.2885-15/290976381_421446146550570_3575066899619153928_n.jpg?stp=dst-jpg_e15_p640x640&_nc_ht=scontent.cdninstagram.com&_nc_cat=106&_nc_ohc=GQpQUrvk-MYAX9spZMx&edm=AMO9-JQAAAAA&ccb=7-5&oh=00_AT-ov15GzIb-pd3adxI-thw6AtpVNMTeMcBR0OaMtthkjA&oe=62C0CEDD&_nc_sid=b9f2ee', 'https://video-iad3-2.cdninstagram.com/v/t50.33967-16/10000000_545431563990697_3678544452099235409_n.mp4?_nc_cat=101&vs=569132368008208_1741193622&_nc_vs=HBksFQAYJEdJQ1dtQUNwOXA0dUVmQUJBRkhlMjMydzBBd3picV9FQUFBRhUAAsgBABUAGCRHUG9VWFJILTA3bTYyOWdEQU1OOVpMa0lsdkZOYnFfRUFBQUYVAgLIAQAoABgAGwGIB3VzZV9vaWwBMRUAACboxpWMwPvrPxUCKAJDMywXQDrMzMzMzM0YEmRhc2hfYmFzZWxpbmVfMV92MREAdQAA&ccb=1-7&_nc_sid=59939d&efg=eyJ2ZW5jb2RlX3RhZyI6InZ0c192b2RfdXJsZ2VuLjcyMC5jbGlwcyJ9&_nc_ohc=XM9V-6hw9e0AX-dXSZ9&_nc_ht=video-iad3-2.cdninstagram.com&edm=AL-3X8kEAAAA&oh=00_AT9Kng65_a01oTVhuLpOWACr1PH02USTZMpzDgpzD_yS5A&oe=62C0E155&_nc_rid=963ef97b79', 'https://www.instagram.com/reel/CfeAOKDljBC/', 'uploads/17993455369489778.jpg', 1, '2022-07-02 10:00:03', '2022-07-02 10:00:03'),
(28, 'hm33571', '17880498488695170', 'https://scontent-iad3-2.cdninstagram.com/v/t51.29350-15/291979982_2005549209632979_5420049098471165419_n.jpg?_nc_cat=103&ccb=1-7&_nc_sid=8ae9d6&_nc_ohc=X5YK5mvyf1sAX-evtJB&_nc_ht=scontent-iad3-2.cdninstagram.com&edm=AL-3X8kEAAAA&oh=00_AT_Q3NtgJfun39AIrlrMG5bHdLrp1qWD2zy4axTZ7Dp5HQ&oe=62CB5F5B', 'https://scontent-iad3-2.cdninstagram.com/v/t51.29350-15/291979982_2005549209632979_5420049098471165419_n.jpg?_nc_cat=103&ccb=1-7&_nc_sid=8ae9d6&_nc_ohc=X5YK5mvyf1sAX-evtJB&_nc_ht=scontent-iad3-2.cdninstagram.com&edm=AL-3X8kEAAAA&oh=00_AT_Q3NtgJfun39AIrlrMG5bHdLrp1qWD2zy4axTZ7Dp5HQ&oe=62CB5F5B', 'https://www.instagram.com/p/CfrVXC0vCds/', 'uploads/17880498488695170.jpg', 1, '2022-07-06 12:45:03', '2022-07-06 12:45:03'),
(29, 'hm33571', '17983258111530233', 'https://scontent-iad3-2.cdninstagram.com/v/t51.29350-15/291673011_1028861917812789_3121995358657758428_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=8ae9d6&_nc_ohc=T9cC1oaD3TkAX8ClVAD&_nc_ht=scontent-iad3-2.cdninstagram.com&edm=AL-3X8kEAAAA&oh=00_AT-NeXd3vgF04HFhdorItM5a7oW3DMLh_EirzvHHiqAQdQ&oe=62CA2D37', 'https://scontent-iad3-2.cdninstagram.com/v/t51.29350-15/291673011_1028861917812789_3121995358657758428_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=8ae9d6&_nc_ohc=T9cC1oaD3TkAX8ClVAD&_nc_ht=scontent-iad3-2.cdninstagram.com&edm=AL-3X8kEAAAA&oh=00_AT-NeXd3vgF04HFhdorItM5a7oW3DMLh_EirzvHHiqAQdQ&oe=62CA2D37', 'https://www.instagram.com/p/CfoeqnfvTUH/', 'uploads/17983258111530233.jpg', 1, '2022-07-06 12:45:04', '2022-07-06 12:45:04'),
(30, 'hm33571', '17910273920498008', 'https://scontent.cdninstagram.com/v/t51.2885-15/291677548_383858800377129_186000070436789113_n.jpg?stp=dst-jpg_e15_p640x640&_nc_ht=scontent.cdninstagram.com&_nc_cat=109&_nc_ohc=ID9uQOEKjhEAX9v63Ej&edm=AMO9-JQAAAAA&ccb=7-5&oh=00_AT9PJQhjYuRe9ibTKrf1Dgzo3hKEsed4iBC6DA7Yi1X1eA&oe=62C64A52&_nc_sid=b9f2ee', NULL, 'https://www.instagram.com/reel/Cfl6IMbl4z9/', 'uploads/17910273920498008.jpg', 1, '2022-07-06 12:45:04', '2022-07-06 12:45:04'),
(31, 'hm33571', '17948281790010580', 'https://scontent.cdninstagram.com/v/t51.2885-15/291624450_572299507624056_4373037893085254878_n.jpg?stp=dst-jpg_e15_p640x640&_nc_ht=scontent.cdninstagram.com&_nc_cat=100&_nc_ohc=ruhe_eo3IN4AX9A5sIa&edm=AMO9-JQAAAAA&ccb=7-5&oh=00_AT9IOIN9P8tnkFJaTUg1f6rdZD6QcXnc199AYDSph9o0hQ&oe=62C65CB3&_nc_sid=b9f2ee', 'https://video-iad3-2.cdninstagram.com/v/t50.33967-16/10000000_3436782999943375_5159876166869705134_n.mp4?_nc_cat=107&vs=1386414798505065_620544943&_nc_vs=HBksFQAYJEdJQ1dtQURQdU9GbHZEVU1BSzdoUlJzSmtKdEhicV9FQUFBRhUAAsgBABUAGCRHSUhKYUJHWWxYM1hkRzRBQU8tdzZ6NzAwaU5OYnFfRUFBQUYVAgLIAQAoABgAGwGIB3VzZV9vaWwBMRUAACaI%2FM7M7sfGPxUCKAJDMywXQEIPXCj1wo8YEmRhc2hfYmFzZWxpbmVfMV92MREAdQAA&ccb=1-7&_nc_sid=59939d&efg=eyJ2ZW5jb2RlX3RhZyI6InZ0c192b2RfdXJsZ2VuLjcyMC5jbGlwcyJ9&_nc_ohc=R6GKU2WUd78AX88LYnr&_nc_ht=video-iad3-2.cdninstagram.com&edm=AL-3X8kEAAAA&oh=00_AT-nuYmhTyTKjkzC-XBeU0AAZ_UoY7WQQJfebitVDF4qkQ&oe=62C64585&_nc_rid=0c8811457d', 'https://www.instagram.com/reel/CfjqLIRFtY6/', 'uploads/17948281790010580.jpg', 1, '2022-07-06 12:45:05', '2022-07-06 12:45:05'),
(32, 'hm33571', '18145833880258865', 'https://scontent.cdninstagram.com/v/t51.2885-15/292441572_731408931427367_9015274417494339640_n.jpg?stp=dst-jpg_e35_p640x640_sh0.08&_nc_ht=scontent.cdninstagram.com&_nc_cat=111&_nc_ohc=FttCup4rf8sAX-6HLGg&edm=AMO9-JQAAAAA&ccb=7-5&oh=00_AT9jRi-33ANWtsaH7NTuZk8oN6fnHfJ4VdIykFBYGKuM2Q&oe=62C783B9&_nc_sid=b9f2ee', 'https://video-iad3-2.cdninstagram.com/v/t50.33967-16/292303614_740223503992374_7188143352485600403_n.mp4?_nc_cat=105&vs=412233200862183_1431036161&_nc_vs=HBksFQAYJEdQNHliQkUyaGdLM09xRUNBSk5jZlc5TGFzRmpicV9FQUFBRhUAAsgBABUAGCRHTzBiWmhFdHdlQS1ySE1TQUh4WEtPd2YxNzhSYnFfRUFBQUYVAgLIAQAoABgAGwGIB3VzZV9vaWwBMRUAACaIpI3dkYHcPxUCKAJDMywXQDoo9cKPXCkYEmRhc2hfYmFzZWxpbmVfMV92MREAdQAA&ccb=1-7&_nc_sid=59939d&efg=eyJ2ZW5jb2RlX3RhZyI6InZ0c192b2RfdXJsZ2VuLjcyMC5jbGlwcyJ9&_nc_ohc=lKneEqFoiwgAX8mqo9N&_nc_ht=video-iad3-2.cdninstagram.com&edm=AL-3X8kEAAAA&oh=00_AT-RkUFs5EirUl6HoEWC084MW8Z7uvL4O2_vL0S81RvNKg&oe=62C77C00&_nc_rid=d039485db4', 'https://www.instagram.com/reel/Cftov_klS0x/', 'uploads/18145833880258865.jpg', 1, '2022-07-07 10:13:31', '2022-07-07 10:13:31'),
(33, 'hm33571', '17941564523180321', 'https://scontent-iad3-2.cdninstagram.com/v/t51.29350-15/293241237_1461107797668997_4662388406379102320_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=8ae9d6&_nc_ohc=6KGhBQ8BKvEAX8jfuj4&_nc_ht=scontent-iad3-2.cdninstagram.com&edm=AL-3X8kEAAAA&oh=00_AT8EXrabp8T10qzsNXSxrzpWXAtrx4QxymDMpvf01Y8Kmg&oe=62D51B7C', 'https://scontent-iad3-2.cdninstagram.com/v/t51.29350-15/293241237_1461107797668997_4662388406379102320_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=8ae9d6&_nc_ohc=6KGhBQ8BKvEAX8jfuj4&_nc_ht=scontent-iad3-2.cdninstagram.com&edm=AL-3X8kEAAAA&oh=00_AT8EXrabp8T10qzsNXSxrzpWXAtrx4QxymDMpvf01Y8Kmg&oe=62D51B7C', 'https://www.instagram.com/p/Cf_oj5ipen-/', 'uploads/17941564523180321.jpg', 1, '2022-07-14 15:48:26', '2022-07-14 15:48:26'),
(34, 'hm33571', '17947034027098257', 'https://scontent.cdninstagram.com/v/t51.2885-15/292987263_426977906007196_8107913397384405215_n.jpg?stp=dst-jpg_e15_p640x640&_nc_ht=scontent.cdninstagram.com&_nc_cat=104&_nc_ohc=dS-mZgS25YkAX-JsluK&edm=AMO9-JQAAAAA&ccb=7-5&oh=00_AT-Xq7A_7btSylal73dJtzZU7Knq5f41RDeO7v48JxVhug&oe=62D10225&_nc_sid=b9f2ee', 'https://video-iad3-2.cdninstagram.com/v/t50.33967-16/10000000_766611574689517_3867758030114480859_n.mp4?_nc_cat=102&vs=2111319529041644_3328427218&_nc_vs=HBksFQAYJEdJQ1dtQUR0RHBlcU9ya0NBTnRpSTZadkNhMDFicV9FQUFBRhUAAsgBABUAGCRHS3hOZ2hIZnBLclZnWklTQUpsc19HX094N0VDYnFfRUFBQUYVAgLIAQAoABgAGwGIB3VzZV9vaWwBMRUAACb%2BqdCV4Y%2FKQBUCKAJDMywXQEHHrhR64UgYEmRhc2hfYmFzZWxpbmVfMV92MREAdQAA&ccb=1-7&_nc_sid=59939d&efg=eyJ2ZW5jb2RlX3RhZyI6InZ0c192b2RfdXJsZ2VuLjcyMC5jbGlwcyJ9&_nc_ohc=2AxjtEZATWEAX9PzON4&_nc_oc=AQk0qDVOJIq8Z7nGC22jeYm6WWICuq94Oc3eQpHt-YQyKJwVso1t5oGoLgBIGg0zUds&_nc_ht=video-iad3-2.cdninstagram.com&edm=AL-3X8kEAAAA&oh=00_AT-Oe-0sMx08F99edSTT6QLxXkFqy5UivjGg1rGax3ap3w&oe=62D10811&_nc_rid=30d2189677', 'https://www.instagram.com/reel/Cf9FH9Npraz/', 'uploads/17947034027098257.jpg', 1, '2022-07-14 15:48:26', '2022-07-14 15:48:26'),
(35, 'hm33571', '17920965659370836', 'https://scontent-iad3-2.cdninstagram.com/v/t51.29350-15/292954414_584389669935134_277982328484464608_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=8ae9d6&_nc_ohc=ZjnAXcbKTyAAX_-UKWM&_nc_ht=scontent-iad3-2.cdninstagram.com&edm=AL-3X8kEAAAA&oh=00_AT_hS5bmjwees9IxyHlV9rKmo1D4LBXsyZjuvTL_lKVqrQ&oe=62D5EDFC', 'https://scontent-iad3-2.cdninstagram.com/v/t51.29350-15/292954414_584389669935134_277982328484464608_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=8ae9d6&_nc_ohc=ZjnAXcbKTyAAX_-UKWM&_nc_ht=scontent-iad3-2.cdninstagram.com&edm=AL-3X8kEAAAA&oh=00_AT_hS5bmjwees9IxyHlV9rKmo1D4LBXsyZjuvTL_lKVqrQ&oe=62D5EDFC', 'https://www.instagram.com/p/Cf6gyUWrQ0D/', 'uploads/17920965659370836.jpg', 1, '2022-07-14 15:48:27', '2022-07-14 15:48:27'),
(36, 'hm33571', '18225316804123361', 'https://scontent.cdninstagram.com/v/t51.2885-15/294433050_589679212704580_5950889458656220460_n.jpg?stp=dst-jpg_e15_p640x640&_nc_ht=scontent.cdninstagram.com&_nc_cat=104&_nc_ohc=7ha2Cx8Gb0YAX-0S2Sj&edm=AMO9-JQAAAAA&ccb=7-5&oh=00_AT-aPns1FiWLawDwn2_OMuC1V8XEgmdd6QfmuSHHk4j91g&oe=62DA5658&_nc_sid=b9f2ee', 'https://video-ord5-1.cdninstagram.com/v/t50.33967-16/295028408_458748829058685_6530994381097590298_n.mp4?_nc_cat=102&vs=1045183862804736_3104790991&_nc_vs=HBksFQAYJEdMakdsUkY5UnYtSU9xRUJBQnJlWkhQSndLSmFicV9FQUFBRhUAAsgBABUAGCRHS0pDa2hHWlpMclJzNGtBQUFZZ2czdnB4SjExYnFfRUFBQUYVAgLIAQAoABgAGwGIB3VzZV9vaWwBMRUAACaYneSsnMTpPxUCKAJDMywXQDu4UeuFHrgYEmRhc2hfYmFzZWxpbmVfMV92MREAdQAA&ccb=1-7&_nc_sid=59939d&efg=eyJ2ZW5jb2RlX3RhZyI6InZ0c192b2RfdXJsZ2VuLjcyMC5jbGlwcyJ9&_nc_ohc=1KY3ufsRJFAAX-OaN37&_nc_ht=video-ord5-1.cdninstagram.com&edm=AL-3X8kEAAAA&oh=00_AT_14l4SMVwqZilxYPM8wMfyJraxr23q0pfmS11bKYL7Cg&oe=62DA4E46&_nc_rid=0087d2e251', 'https://www.instagram.com/reel/CgRs71iJNQ4/', 'uploads/18225316804123361.jpg', 1, '2022-07-21 17:45:02', '2022-07-21 17:45:02'),
(37, 'hm33571', '17851033439782711', 'https://scontent-ord5-1.cdninstagram.com/v/t51.29350-15/294295939_1179210599314955_7049619374640921331_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=8ae9d6&_nc_ohc=rFhEyP6kVRIAX82_aGc&_nc_ht=scontent-ord5-1.cdninstagram.com&edm=AL-3X8kEAAAA&oh=00_AT--4PPBeUW7ZRrRXzwan_s5xvBkz0DzaoTx4Hs2Y5g5Dw&oe=62DE8816', 'https://scontent-ord5-1.cdninstagram.com/v/t51.29350-15/294295939_1179210599314955_7049619374640921331_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=8ae9d6&_nc_ohc=rFhEyP6kVRIAX82_aGc&_nc_ht=scontent-ord5-1.cdninstagram.com&edm=AL-3X8kEAAAA&oh=00_AT--4PPBeUW7ZRrRXzwan_s5xvBkz0DzaoTx4Hs2Y5g5Dw&oe=62DE8816', 'https://www.instagram.com/p/CgPbQ9oJVxn/', 'uploads/17851033439782711.jpg', 1, '2022-07-21 17:45:03', '2022-07-21 17:45:03'),
(38, 'hm33571', '18185243611173660', 'https://scontent-ord5-1.cdninstagram.com/v/t51.29350-15/294365623_1731468757224657_2546368197742859806_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=8ae9d6&_nc_ohc=8UyJ04AM5-EAX-JO6FW&_nc_ht=scontent-ord5-1.cdninstagram.com&edm=AL-3X8kEAAAA&oh=00_AT9SXjvR7F3PcPF_LlzaDxGiXDnUsOoV7orayck1U0FQJA&oe=62DF5967', 'https://scontent-ord5-1.cdninstagram.com/v/t51.29350-15/294365623_1731468757224657_2546368197742859806_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=8ae9d6&_nc_ohc=8UyJ04AM5-EAX-JO6FW&_nc_ht=scontent-ord5-1.cdninstagram.com&edm=AL-3X8kEAAAA&oh=00_AT9SXjvR7F3PcPF_LlzaDxGiXDnUsOoV7orayck1U0FQJA&oe=62DF5967', 'https://www.instagram.com/p/CgMik07phra/', 'uploads/18185243611173660.jpg', 1, '2022-07-21 17:45:03', '2022-07-21 17:45:03'),
(39, 'hm33571', '17917560119446388', 'https://scontent-ord5-1.cdninstagram.com/v/t51.29350-15/294356110_1185767838937106_699430322620760611_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=8ae9d6&_nc_ohc=7v_h2nBD2HYAX-VYbTz&_nc_ht=scontent-ord5-1.cdninstagram.com&edm=AL-3X8kEAAAA&oh=00_AT8EynzXyKbtSiuHllU9bLkJbrRwrtibP5YjtpYXcXa_IQ&oe=62DECC42', 'https://scontent-ord5-1.cdninstagram.com/v/t51.29350-15/294356110_1185767838937106_699430322620760611_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=8ae9d6&_nc_ohc=7v_h2nBD2HYAX-VYbTz&_nc_ht=scontent-ord5-1.cdninstagram.com&edm=AL-3X8kEAAAA&oh=00_AT8EynzXyKbtSiuHllU9bLkJbrRwrtibP5YjtpYXcXa_IQ&oe=62DECC42', 'https://www.instagram.com/p/CgKG9-yJuR0/', 'uploads/17917560119446388.jpg', 1, '2022-07-21 17:45:04', '2022-07-21 17:45:04'),
(40, 'hm33571', '18310142455015589', 'https://scontent.cdninstagram.com/v/t51.2885-15/294186885_165967445943170_4866889038154202260_n.jpg?stp=dst-jpg_e15_p640x640&_nc_ht=scontent.cdninstagram.com&_nc_cat=102&_nc_ohc=lGoyCXD5FowAX9tc0sd&edm=AMO9-JQAAAAA&ccb=7-5&oh=00_AT_RnRORKEnPSteqGK4rPmakNq_hTtWM4xNMyx7bCtuOhg&oe=62DA5A9F&_nc_sid=b9f2ee', 'https://video-ord5-1.cdninstagram.com/v/t50.33967-16/293472985_859170881719427_5940892481745629402_n.mp4?_nc_cat=108&vs=365625255717752_1638797465&_nc_vs=HBksFQAYJEdOa0tmaEdEekRSUGFRMERBTnF3UEdjOFNuSlNicV9FQUFBRhUAAsgBABUAGCRHUEJwakJISF9nQmJNSllBQUw4N2pPeEpuOXdfYnFfRUFBQUYVAgLIAQAoABgAGwGIB3VzZV9vaWwBMRUAACaKpOuOy9X5PxUCKAJDMywXQD8AAAAAAAAYEmRhc2hfYmFzZWxpbmVfMV92MREAdQAA&ccb=1-7&_nc_sid=59939d&efg=eyJ2ZW5jb2RlX3RhZyI6InZ0c192b2RfdXJsZ2VuLjcyMC5jbGlwcyJ9&_nc_ohc=dEDE54JmjLIAX-QmX_A&_nc_ht=video-ord5-1.cdninstagram.com&edm=AL-3X8kEAAAA&oh=00_AT8I7mW6iV7gmuitoDh5xd46VcUg5Eq7YT7Vhph_Y_NiIQ&oe=62DA411E&_nc_rid=5e744396e4', 'https://www.instagram.com/reel/CgHTFqbpHRo/', 'uploads/18310142455015589.jpg', 1, '2022-07-21 17:45:04', '2022-07-21 17:45:04'),
(41, 'hm33571', '17932641335344693', 'https://scontent-ord5-1.cdninstagram.com/v/t51.29350-15/293637065_358656753089413_8247311250473307818_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=8ae9d6&_nc_ohc=qEERmiKnSKUAX8eT4tq&_nc_ht=scontent-ord5-1.cdninstagram.com&edm=AL-3X8kEAAAA&oh=00_AT9friyo0D-ghkcB3Sxlbbmi_-EP72UWTiKebONwuUpqkg&oe=62DF4378', 'https://scontent-ord5-1.cdninstagram.com/v/t51.29350-15/293637065_358656753089413_8247311250473307818_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=8ae9d6&_nc_ohc=qEERmiKnSKUAX8eT4tq&_nc_ht=scontent-ord5-1.cdninstagram.com&edm=AL-3X8kEAAAA&oh=00_AT9friyo0D-ghkcB3Sxlbbmi_-EP72UWTiKebONwuUpqkg&oe=62DF4378', 'https://www.instagram.com/p/CgFC8B-J93x/', 'uploads/17932641335344693.jpg', 1, '2022-07-21 17:45:04', '2022-07-21 17:45:04'),
(42, 'hm33571', '17862030164731234', 'https://scontent-ord5-1.cdninstagram.com/v/t51.29350-15/293556180_1767493840277232_4051799109267229991_n.jpg?_nc_cat=103&ccb=1-7&_nc_sid=8ae9d6&_nc_ohc=jxOBQSV5B5EAX-JPAYX&_nc_ht=scontent-ord5-1.cdninstagram.com&edm=AL-3X8kEAAAA&oh=00_AT_0tovt6sWlKmxAAGAwN39vd07tqoHmkp8p5VAQtcrfjA&oe=62DE83A7', 'https://scontent-ord5-1.cdninstagram.com/v/t51.29350-15/293556180_1767493840277232_4051799109267229991_n.jpg?_nc_cat=103&ccb=1-7&_nc_sid=8ae9d6&_nc_ohc=jxOBQSV5B5EAX-JPAYX&_nc_ht=scontent-ord5-1.cdninstagram.com&edm=AL-3X8kEAAAA&oh=00_AT_0tovt6sWlKmxAAGAwN39vd07tqoHmkp8p5VAQtcrfjA&oe=62DE83A7', 'https://www.instagram.com/p/CgCg2cOJ_f6/', 'uploads/17862030164731234.jpg', 1, '2022-07-21 17:45:05', '2022-07-21 17:45:05'),
(43, 'hm33571', '17895755600590659', 'https://scontent-ord5-1.cdninstagram.com/v/t51.29350-15/294963528_128265143237757_9189931598133014168_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=8ae9d6&_nc_ohc=FOgR4UbadqwAX_Ny1wc&_nc_ht=scontent-ord5-1.cdninstagram.com&edm=AL-3X8kEAAAA&oh=00_AT_ge1TS6KaM0MSOY7no0neejHwYmG7zVL797vTdZSvk8g&oe=62E170B8', 'https://scontent-ord5-1.cdninstagram.com/v/t51.29350-15/294963528_128265143237757_9189931598133014168_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=8ae9d6&_nc_ohc=FOgR4UbadqwAX_Ny1wc&_nc_ht=scontent-ord5-1.cdninstagram.com&edm=AL-3X8kEAAAA&oh=00_AT_ge1TS6KaM0MSOY7no0neejHwYmG7zVL797vTdZSvk8g&oe=62E170B8', 'https://www.instagram.com/p/CgWuzH7Fa9H/', 'uploads/17895755600590659.jpg', 1, '2022-07-23 13:21:14', '2022-07-23 13:21:14'),
(44, 'hm33571', '17858658185777175', 'https://scontent-ord5-1.cdninstagram.com/v/t51.29350-15/295068512_112068338154715_5221728120077061189_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=8ae9d6&_nc_ohc=w_K3hiqfhA0AX86xpBp&_nc_ht=scontent-ord5-1.cdninstagram.com&edm=AL-3X8kEAAAA&oh=00_AT_Cv3P6k8J6jBrwCFDZChn8I1LQ9lOW6fCbw7qhL1Vf2g&oe=62E19B9B', 'https://scontent-ord5-1.cdninstagram.com/v/t51.29350-15/295068512_112068338154715_5221728120077061189_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=8ae9d6&_nc_ohc=w_K3hiqfhA0AX86xpBp&_nc_ht=scontent-ord5-1.cdninstagram.com&edm=AL-3X8kEAAAA&oh=00_AT_Cv3P6k8J6jBrwCFDZChn8I1LQ9lOW6fCbw7qhL1Vf2g&oe=62E19B9B', 'https://www.instagram.com/p/CgUQA_gJg6R/', 'uploads/17858658185777175.jpg', 1, '2022-07-23 13:21:14', '2022-07-23 13:21:14'),
(45, 'hm33571', '18041657464327421', 'https://scontent-iad3-2.cdninstagram.com/v/t51.29350-15/296189756_436115915101221_5087671102617351564_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=8ae9d6&_nc_ohc=kgoxEp1D6t8AX8Fh95L&_nc_ht=scontent-iad3-2.cdninstagram.com&edm=AL-3X8kEAAAA&oh=00_AT_igE-jwnYQN7T2ZYuw0PRsxz6gXLqkM86Uq9fanjmSUg&oe=62E9AE34', 'https://scontent-iad3-2.cdninstagram.com/v/t51.29350-15/296189756_436115915101221_5087671102617351564_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=8ae9d6&_nc_ohc=kgoxEp1D6t8AX8Fh95L&_nc_ht=scontent-iad3-2.cdninstagram.com&edm=AL-3X8kEAAAA&oh=00_AT_igE-jwnYQN7T2ZYuw0PRsxz6gXLqkM86Uq9fanjmSUg&oe=62E9AE34', 'https://www.instagram.com/p/CgmO-NqJeUA/', 'uploads/18041657464327421.jpg', 1, '2022-07-30 14:54:53', '2022-07-30 14:54:53'),
(46, 'hm33571', '17968974574689038', 'https://scontent-iad3-2.cdninstagram.com/v/t51.29350-15/295886837_2968348673473878_6876115894204837296_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=8ae9d6&_nc_ohc=_VyGrOHOhvUAX_LrHmO&_nc_ht=scontent-iad3-2.cdninstagram.com&edm=AL-3X8kEAAAA&oh=00_AT9GrDkoMwFzMzAd4HJAn0Qrtv9syi5l0Vw3jNWTilT6HA&oe=62EB412D', 'https://scontent-iad3-2.cdninstagram.com/v/t51.29350-15/295886837_2968348673473878_6876115894204837296_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=8ae9d6&_nc_ohc=_VyGrOHOhvUAX_LrHmO&_nc_ht=scontent-iad3-2.cdninstagram.com&edm=AL-3X8kEAAAA&oh=00_AT9GrDkoMwFzMzAd4HJAn0Qrtv9syi5l0Vw3jNWTilT6HA&oe=62EB412D', 'https://www.instagram.com/p/CghG8ikp_aa/', 'uploads/17968974574689038.jpg', 1, '2022-07-30 14:54:54', '2022-07-30 14:54:54'),
(47, 'hm33571', '18175193419232877', 'https://scontent-iad3-2.cdninstagram.com/v/t51.29350-15/295472586_1496412590808586_3879405085867415116_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=8ae9d6&_nc_ohc=Bq1GY8HuyxAAX95QLy5&_nc_ht=scontent-iad3-2.cdninstagram.com&edm=AL-3X8kEAAAA&oh=00_AT_XfFfyH0agAv7M-86RAgJvucq9qTDO1rBppLjsNFkSmw&oe=62EA37E0', 'https://scontent-iad3-2.cdninstagram.com/v/t51.29350-15/295472586_1496412590808586_3879405085867415116_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=8ae9d6&_nc_ohc=Bq1GY8HuyxAAX95QLy5&_nc_ht=scontent-iad3-2.cdninstagram.com&edm=AL-3X8kEAAAA&oh=00_AT_XfFfyH0agAv7M-86RAgJvucq9qTDO1rBppLjsNFkSmw&oe=62EA37E0', 'https://www.instagram.com/p/Cgb_FQJpHRu/', 'uploads/18175193419232877.jpg', 1, '2022-07-30 14:54:54', '2022-07-30 14:54:54'),
(48, 'hm33571', '17916893222470414', 'https://scontent-iad3-2.cdninstagram.com/v/t51.29350-15/295610051_190891243281798_3254723117819333603_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=8ae9d6&_nc_ohc=WhTXFHibb2gAX8RfKGs&_nc_ht=scontent-iad3-2.cdninstagram.com&edm=AL-3X8kEAAAA&oh=00_AT8FNEscRAtt6ZjLIN_vtEAO1egn0MA_7OgWzICWqGoMUw&oe=62E9ABAB', 'https://scontent-iad3-2.cdninstagram.com/v/t51.29350-15/295610051_190891243281798_3254723117819333603_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=8ae9d6&_nc_ohc=WhTXFHibb2gAX8RfKGs&_nc_ht=scontent-iad3-2.cdninstagram.com&edm=AL-3X8kEAAAA&oh=00_AT8FNEscRAtt6ZjLIN_vtEAO1egn0MA_7OgWzICWqGoMUw&oe=62E9ABAB', 'https://www.instagram.com/p/CgZTTg5pPWF/', 'uploads/17916893222470414.jpg', 1, '2022-07-30 14:54:55', '2022-07-30 14:54:55'),
(49, 'hm33571', '17950896818067883', 'https://scontent-iad3-2.cdninstagram.com/v/t51.29350-15/296304464_604452234411519_5410023172395703400_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=8ae9d6&_nc_ohc=1nezR91eRF8AX8PF1ls&_nc_ht=scontent-iad3-2.cdninstagram.com&edm=AL-3X8kEAAAA&oh=00_AT8f2RTjJAjmlTs5GCsBUR-ju4_MJ65GeLy22Urkh6gzew&oe=62EB99EC', 'https://scontent-iad3-2.cdninstagram.com/v/t51.29350-15/296304464_604452234411519_5410023172395703400_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=8ae9d6&_nc_ohc=1nezR91eRF8AX8PF1ls&_nc_ht=scontent-iad3-2.cdninstagram.com&edm=AL-3X8kEAAAA&oh=00_AT8f2RTjJAjmlTs5GCsBUR-ju4_MJ65GeLy22Urkh6gzew&oe=62EB99EC', 'https://www.instagram.com/p/CgrVsqsp8D0/', 'uploads/17950896818067883.jpg', 1, '2022-07-31 15:45:02', '2022-07-31 15:45:02'),
(50, 'hm33571', '18172469452217799', 'https://scontent.cdninstagram.com/v/t51.2885-15/298385184_114459734695193_6615141944711840835_n.jpg?stp=dst-jpg_e15_p640x640&_nc_ht=scontent.cdninstagram.com&_nc_cat=105&_nc_ohc=qW5qr2d9A9gAX8wShWW&edm=AMO9-JQAAAAA&ccb=7-5&oh=00_AT90UqAKPzA9efz6VHRaXPnSuZvepbFEcpK8BVad9P73Qw&oe=62F5831D&_nc_sid=b9f2ee', 'https://video-iad3-2.cdninstagram.com/v/t50.33967-16/298510886_725726635198975_360373478075147923_n.mp4?_nc_cat=108&vs=812592026776997_1518959892&_nc_vs=HBksFQAYJEdDYnF5aEgtaVV0bUM1UUNBSk1tSk52RVRRQUZicV9FQUFBRhUAAsgBABUAGCRHR3l2eXhHckZLdXhpeU1DQUNpOGdvN1lzMTVjYnFfRUFBQUYVAgLIAQAoABgAGwGIB3VzZV9vaWwBMRUAACbYgoa32%2FW5QBUCKAJDMywXQC7MzMzMzM0YEmRhc2hfYmFzZWxpbmVfMV92MREAdQAA&ccb=1-7&_nc_sid=59939d&efg=eyJ2ZW5jb2RlX3RhZyI6InZ0c192b2RfdXJsZ2VuLjcyMC5jbGlwcyJ9&_nc_ohc=BjmU2vSDXeMAX-CuO1D&_nc_ht=video-iad3-2.cdninstagram.com&edm=AL-3X8kEAAAA&oh=00_AT92S8NeZfIHuWXajbW1yNE0DKzEkw9JkLsZgde6c89APA&oe=62F59FF2&_nc_rid=12d1aaa7b5', 'https://www.instagram.com/reel/ChFIC46pjIc/', 'uploads/18172469452217799.jpg', 1, '2022-08-11 09:15:03', '2022-08-11 09:15:03'),
(51, 'hm33571', '17924501588354141', 'https://scontent-iad3-2.cdninstagram.com/v/t51.29350-15/297778027_129745876216236_8864837378390090989_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=8ae9d6&_nc_ohc=vcOgnRBXXXcAX-zNZL3&_nc_ht=scontent-iad3-2.cdninstagram.com&edm=AL-3X8kEAAAA&oh=00_AT_5Qi1TrA0XDPFX-SORg9vKS8dDwdFIQnrexH86X2xftw&oe=62F9AF94', 'https://scontent-iad3-2.cdninstagram.com/v/t51.29350-15/297778027_129745876216236_8864837378390090989_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=8ae9d6&_nc_ohc=vcOgnRBXXXcAX-zNZL3&_nc_ht=scontent-iad3-2.cdninstagram.com&edm=AL-3X8kEAAAA&oh=00_AT_5Qi1TrA0XDPFX-SORg9vKS8dDwdFIQnrexH86X2xftw&oe=62F9AF94', 'https://www.instagram.com/p/Cg__uNNJOlK/', 'uploads/17924501588354141.jpg', 1, '2022-08-11 09:15:03', '2022-08-11 09:15:03'),
(52, 'hm33571', '18205251106160496', 'https://scontent-iad3-2.cdninstagram.com/v/t51.29350-15/297834846_839644810254840_4333293976284361227_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=8ae9d6&_nc_ohc=FgS-V6uoEfcAX9j1vDo&_nc_ht=scontent-iad3-2.cdninstagram.com&edm=AL-3X8kEAAAA&oh=00_AT9Ow6srPXItC54WB_PwsZmXPngKCYHKzdprA7SIXylWBw&oe=62F9787C', 'https://scontent-iad3-2.cdninstagram.com/v/t51.29350-15/297834846_839644810254840_4333293976284361227_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=8ae9d6&_nc_ohc=FgS-V6uoEfcAX9j1vDo&_nc_ht=scontent-iad3-2.cdninstagram.com&edm=AL-3X8kEAAAA&oh=00_AT9Ow6srPXItC54WB_PwsZmXPngKCYHKzdprA7SIXylWBw&oe=62F9787C', 'https://www.instagram.com/p/Cg9YzLulVMh/', 'uploads/18205251106160496.jpg', 1, '2022-08-11 09:15:04', '2022-08-11 09:15:04'),
(53, 'hm33571', '17934246965360740', 'https://scontent.cdninstagram.com/v/t51.2885-15/297635014_124974330274714_4415141448932468500_n.jpg?stp=dst-jpg_e15&_nc_ht=scontent.cdninstagram.com&_nc_cat=110&_nc_ohc=47TfLcUBswgAX-hTVSH&edm=AMO9-JQAAAAA&ccb=7-5&oh=00_AT8hOtn2MdIlPymNjxTuvRTnHeaG2-ojGfwr6K0Xjnof2g&oe=62F5865F&_nc_sid=b9f2ee', 'https://video-iad3-2.cdninstagram.com/v/t50.33967-16/297080673_163592106223562_4112581697008756975_n.mp4?_nc_cat=110&vs=753539289213773_1382619598&_nc_vs=HBksFQAYJEdHRVh0UkhLSjJGQnlaUUFBTy1vX3BkRDB4STVicV9FQUFBRhUAAsgBABUAGCRHRlV5dXhFOHNpUE1NcjBDQUh1c0NiMkVfS2dyYnFfRUFBQUYVAgLIAQAoABgAGwGIB3VzZV9vaWwBMRUAACaEutixif3dPxUCKAJDMywXQCTMzMzMzM0YEmRhc2hfYmFzZWxpbmVfMV92MREAdQAA&ccb=1-7&_nc_sid=59939d&efg=eyJ2ZW5jb2RlX3RhZyI6InZ0c192b2RfdXJsZ2VuLjcyMC5jbGlwcyJ9&_nc_ohc=8nXJVWMeBtEAX90094N&_nc_ht=video-iad3-2.cdninstagram.com&edm=AL-3X8kEAAAA&oh=00_AT8ZODYI1ZcqfLV5oqqZLtI8ckLCwvSXM0HIoIgAOGsdbw&oe=62F589B2&_nc_rid=038eaaccf9', 'https://www.instagram.com/reel/Cg4QZ-fJLe9/', 'uploads/17934246965360740.jpg', 1, '2022-08-11 09:15:04', '2022-08-11 09:15:04'),
(54, 'hm33571', '17952677330002747', 'https://scontent-iad3-2.cdninstagram.com/v/t51.29350-15/297390144_597015368471045_4960395984799377172_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=8ae9d6&_nc_ohc=xUzrnrZLRdkAX9aDkut&_nc_ht=scontent-iad3-2.cdninstagram.com&edm=AL-3X8kEAAAA&oh=00_AT8E5WnjDSSVzkdqbHUcTFrLZqmXlEQUWJFTgNDGNoInoA&oe=62FA7C0A', 'https://scontent-iad3-2.cdninstagram.com/v/t51.29350-15/297390144_597015368471045_4960395984799377172_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=8ae9d6&_nc_ohc=xUzrnrZLRdkAX9aDkut&_nc_ht=scontent-iad3-2.cdninstagram.com&edm=AL-3X8kEAAAA&oh=00_AT8E5WnjDSSVzkdqbHUcTFrLZqmXlEQUWJFTgNDGNoInoA&oe=62FA7C0A', 'https://www.instagram.com/p/CgzHRrDp4ex/', 'uploads/17952677330002747.jpg', 1, '2022-08-11 09:15:05', '2022-08-11 09:15:05'),
(55, 'hm33571', '17918024960540381', 'https://scontent-iad3-2.cdninstagram.com/v/t51.29350-15/297332058_744025576830748_7936124460890609916_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=8ae9d6&_nc_ohc=9HvwdNyTHosAX9n4zRk&_nc_ht=scontent-iad3-2.cdninstagram.com&edm=AL-3X8kEAAAA&oh=00_AT_qd4NSTNWn3XhxBzcSenh5qheVZgl8dxTunieH_qUecg&oe=62F99236', 'https://scontent-iad3-2.cdninstagram.com/v/t51.29350-15/297332058_744025576830748_7936124460890609916_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=8ae9d6&_nc_ohc=9HvwdNyTHosAX9n4zRk&_nc_ht=scontent-iad3-2.cdninstagram.com&edm=AL-3X8kEAAAA&oh=00_AT_qd4NSTNWn3XhxBzcSenh5qheVZgl8dxTunieH_qUecg&oe=62F99236', 'https://www.instagram.com/p/Cgwh5KkJKJ8/', 'uploads/17918024960540381.jpg', 1, '2022-08-11 09:15:05', '2022-08-11 09:15:05'),
(56, 'hm33571', '18047321869354569', 'https://scontent.cdninstagram.com/v/t51.2885-15/296593526_765127171300195_7234298361606389355_n.jpg?stp=dst-jpg_e15_p640x640&_nc_ht=scontent.cdninstagram.com&_nc_cat=107&_nc_ohc=nhEhbyOE4t0AX-9_V8v&edm=AMO9-JQAAAAA&ccb=7-5&oh=00_AT98_xAD-CQMQwiDBq_DzSsCvv7ux0C9lIPHN8zduvL4LA&oe=62F59A4C&_nc_sid=b9f2ee', 'https://video-iad3-2.cdninstagram.com/v/t50.33967-16/297267098_2123596731148068_3118857608731844446_n.mp4?_nc_cat=101&vs=1837626099962886_662295606&_nc_vs=HBksFQAYJEdKcnZ0eEVrWjg1a1pvc0hBRjVmZklGNGFFZ3JicV9FQUFBRhUAAsgBABUAGCRHSWw4dEJIUFNKZVluZnNEQU01V2dBTUlwcHg2YnFfRUFBQUYVAgLIAQAoABgAGwGIB3VzZV9vaWwBMRUAACbC4%2Bn0wOvMPxUCKAJDMywXQC4AAAAAAAAYEmRhc2hfYmFzZWxpbmVfMV92MREAdQAA&ccb=1-7&_nc_sid=59939d&efg=eyJ2ZW5jb2RlX3RhZyI6InZ0c192b2RfdXJsZ2VuLjcyMC5jbGlwcyJ9&_nc_ohc=TrZpd2kkMGYAX8oR1VW&_nc_ht=video-iad3-2.cdninstagram.com&edm=AL-3X8kEAAAA&oh=00_AT9RtkUUrZ69K8o-_lfR0j4wbRKIUZqO7zmbiNl_1tlkeg&oe=62F58D41&_nc_rid=451f2c04c8', 'https://www.instagram.com/reel/Cgt9eyiJDBF/', 'uploads/18047321869354569.jpg', 1, '2022-08-11 09:15:06', '2022-08-11 09:15:06'),
(57, 'hm33571', '18159235813247327', 'https://scontent.cdninstagram.com/v/t51.2885-15/299377323_126524269924216_7414533653776072375_n.jpg?stp=dst-jpg_e15_p640x640&_nc_ht=scontent.cdninstagram.com&_nc_cat=104&_nc_ohc=26CYM3g567AAX-DkKFR&edm=AMO9-JQAAAAA&ccb=7-5&oh=00_AT_vfGJ7BeRCEXJELXib4qY-FvKXBBXrgCa200Z4Fjdo0w&oe=62FB14B4&_nc_sid=b9f2ee', 'https://video-atl3-1.cdninstagram.com/v/t50.33967-16/299788473_628767578555948_3339509718491873935_n.mp4?_nc_cat=108&vs=1954989971367441_3080448139&_nc_vs=HBksFQAYJEdMbG8zaEVzaGlwYzNEc0NBSTlDckQ1bFVsZ3VicV9FQUFBRhUAAsgBABUAGCRHQk5VM3hISDVYOGcxUm9DQUlNS3JuWkNBUlIzYnFfRUFBQUYVAgLIAQAoABgAGwGIB3VzZV9vaWwBMRUAACbIpaf49bPjPxUCKAJDMywXQC6j1wo9cKQYEmRhc2hfYmFzZWxpbmVfMV92MREAdQAA&ccb=1-7&_nc_sid=59939d&efg=eyJ2ZW5jb2RlX3RhZyI6InZ0c192b2RfdXJsZ2VuLjcyMC5jbGlwcyJ9&_nc_ohc=RDqq0UuRczsAX_GT-i0&_nc_ht=video-atl3-1.cdninstagram.com&edm=AL-3X8kEAAAA&oh=00_AT8AVQPHdpLO98BmNICj9zIDt3a0FeXHHYVyzL7KelUjHQ&oe=62FB1685&_nc_rid=e47525833f', 'https://www.instagram.com/reel/ChRdBpiJgZw/', 'uploads/18159235813247327.jpg', 1, '2022-08-15 14:15:02', '2022-08-15 14:15:02'),
(58, 'hm33571', '17928438500330809', 'https://scontent-atl3-1.cdninstagram.com/v/t51.29350-15/299764786_626278968808381_1652213736553547841_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=8ae9d6&_nc_ohc=sTHWIhWYA0MAX-z_MCn&_nc_ht=scontent-atl3-1.cdninstagram.com&edm=AL-3X8kEAAAA&oh=00_AT-L5aDHq-tk219ORZ0J297TxLezRyn5lqld7P4sYuKAlg&oe=62FF7FF4', 'https://scontent-atl3-1.cdninstagram.com/v/t51.29350-15/299764786_626278968808381_1652213736553547841_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=8ae9d6&_nc_ohc=sTHWIhWYA0MAX-z_MCn&_nc_ht=scontent-atl3-1.cdninstagram.com&edm=AL-3X8kEAAAA&oh=00_AT-L5aDHq-tk219ORZ0J297TxLezRyn5lqld7P4sYuKAlg&oe=62FF7FF4', 'https://www.instagram.com/p/ChRUCXPpxCI/', 'uploads/17928438500330809.jpg', 1, '2022-08-15 14:15:02', '2022-08-15 14:15:02'),
(59, 'hm33571', '18311093902057836', 'https://scontent-atl3-1.cdninstagram.com/v/t51.29350-15/299188985_633111317967852_124311369388167959_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=8ae9d6&_nc_ohc=TukindDmYEAAX-VkJBa&_nc_ht=scontent-atl3-1.cdninstagram.com&edm=AL-3X8kEAAAA&oh=00_AT8hI090_FATxBXubS6YithS_TR3ENW9N9aZ4JRxgtvcwA&oe=63002B50', 'https://scontent-atl3-1.cdninstagram.com/v/t51.29350-15/299188985_633111317967852_124311369388167959_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=8ae9d6&_nc_ohc=TukindDmYEAAX-VkJBa&_nc_ht=scontent-atl3-1.cdninstagram.com&edm=AL-3X8kEAAAA&oh=00_AT8hI090_FATxBXubS6YithS_TR3ENW9N9aZ4JRxgtvcwA&oe=63002B50', 'https://www.instagram.com/p/ChKZB5GJirI/', 'uploads/18311093902057836.jpg', 1, '2022-08-15 14:15:03', '2022-08-15 14:15:03'),
(60, 'hm33571', '17873600525741273', 'https://scontent.cdninstagram.com/v/t51.2885-15/299739600_182537064243788_2535197136552178136_n.jpg?stp=dst-jpg_e15_p640x640&_nc_ht=scontent.cdninstagram.com&_nc_cat=108&_nc_ohc=N1S9Q2JAvAUAX8RoJ27&edm=AMO9-JQAAAAA&ccb=7-5&oh=00_AT908WdrBNTX7nmXJ1ziHCM867fSk2W6nYmdvvRlcK9VOw&oe=62FD7202&_nc_sid=b9f2ee', 'https://video-atl3-1.cdninstagram.com/v/t50.33967-16/10000000_139679361811120_7450747589367667840_n.mp4?_nc_cat=103&vs=3086095968367802_3276699094&_nc_vs=HBksFQAYJEdJQ1dtQUN3UXI2aUNYOEFBSUNjV185MFgyWm5icV9FQUFBRhUAAsgBABUAGCRHT3E3MmhGSFVPVzBNT0FTQUtxeVlRbjBzaTRzYnFfRUFBQUYVAgLIAQAoABgAGwGIB3VzZV9vaWwBMRUAACb2p9%2B5poDnPxUCKAJDMywXQE4FHrhR64UYEmRhc2hfYmFzZWxpbmVfMV92MREAdQAA&ccb=1-7&_nc_sid=59939d&efg=eyJ2ZW5jb2RlX3RhZyI6InZ0c192b2RfdXJsZ2VuLjcyMC5jbGlwcyJ9&_nc_ohc=oAxBYiPyi28AX9Vr1_x&_nc_ht=video-atl3-1.cdninstagram.com&edm=AL-3X8kEAAAA&oh=00_AT8-4J35dGbBXxNchbZG1e7Dvb3f3fXDBNZVQIdVjF2oWA&oe=62FD6F32&_nc_rid=c901727af1', 'https://www.instagram.com/reel/ChUwuVfJU21/', 'uploads/17873600525741273.jpg', 1, '2022-08-17 08:15:02', '2022-08-17 08:15:02'),
(61, 'hm33571', '18104974141293170', 'https://scontent-iad3-2.cdninstagram.com/v/t51.29350-15/300379619_1230771757698172_4562141370934453474_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=8ae9d6&_nc_ohc=2O0Woat8Wr4AX_MFu2-&_nc_ht=scontent-iad3-2.cdninstagram.com&edm=AL-3X8kEAAAA&oh=00_AT8SicUWo5vCbAzWaf3CExxXKZEymot3Ao1XwHXuM2BKvg&oe=63073F39', 'https://scontent-iad3-2.cdninstagram.com/v/t51.29350-15/300379619_1230771757698172_4562141370934453474_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=8ae9d6&_nc_ohc=2O0Woat8Wr4AX_MFu2-&_nc_ht=scontent-iad3-2.cdninstagram.com&edm=AL-3X8kEAAAA&oh=00_AT8SicUWo5vCbAzWaf3CExxXKZEymot3Ao1XwHXuM2BKvg&oe=63073F39', 'https://www.instagram.com/p/ChhbJucpkUZ/', 'uploads/18104974141293170.jpg', 1, '2022-08-21 13:30:03', '2022-08-21 13:30:03'),
(62, 'hm33571', '17951575880091391', 'https://scontent-iad3-2.cdninstagram.com/v/t51.29350-15/300098842_477136767570282_3377207281266663404_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=8ae9d6&_nc_ohc=mBFuuGIWE24AX9XwgR7&_nc_ht=scontent-iad3-2.cdninstagram.com&edm=AL-3X8kEAAAA&oh=00_AT9plKz9_SFeFrF64rATebImT2aL0gqMnYzVAiX1ALRoMg&oe=63084910', 'https://scontent-iad3-2.cdninstagram.com/v/t51.29350-15/300098842_477136767570282_3377207281266663404_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=8ae9d6&_nc_ohc=mBFuuGIWE24AX9XwgR7&_nc_ht=scontent-iad3-2.cdninstagram.com&edm=AL-3X8kEAAAA&oh=00_AT9plKz9_SFeFrF64rATebImT2aL0gqMnYzVAiX1ALRoMg&oe=63084910', 'https://www.instagram.com/p/Che3MW5paLX/', 'uploads/17951575880091391.jpg', 1, '2022-08-21 13:30:03', '2022-08-21 13:30:03'),
(63, 'hm33571', '17924843177381117', 'https://scontent-iad3-2.cdninstagram.com/v/t51.29350-15/299874910_190960576699652_6874683025503246634_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=8ae9d6&_nc_ohc=s0JnzfzC4m4AX8kdZTZ&_nc_ht=scontent-iad3-2.cdninstagram.com&edm=AL-3X8kEAAAA&oh=00_AT-V5hjs3QGy9Ip4MINMP7g9hqcjhVxVGHP1IQVylm05aQ&oe=6306E0C9', 'https://scontent-iad3-2.cdninstagram.com/v/t51.29350-15/299874910_190960576699652_6874683025503246634_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=8ae9d6&_nc_ohc=s0JnzfzC4m4AX8kdZTZ&_nc_ht=scontent-iad3-2.cdninstagram.com&edm=AL-3X8kEAAAA&oh=00_AT-V5hjs3QGy9Ip4MINMP7g9hqcjhVxVGHP1IQVylm05aQ&oe=6306E0C9', 'https://www.instagram.com/p/ChcSS5VJyAG/', 'uploads/17924843177381117.jpg', 1, '2022-08-21 13:30:04', '2022-08-21 13:30:04'),
(64, 'hm33571', '18240258439185804', 'https://scontent.cdninstagram.com/v/t51.2885-15/299664685_630799865079957_3696348661145238913_n.jpg?stp=dst-jpg_e15_p640x640&_nc_ht=scontent.cdninstagram.com&_nc_cat=109&_nc_ohc=5ZpTe6ikS9EAX8fLNgi&edm=AMO9-JQAAAAA&ccb=7-5&oh=00_AT88-cf-jJpmrVWhF-o8d3rwxgQyqF3WOZ-A9wJy2vCMMg&oe=6302F07A&_nc_sid=b9f2ee', 'https://video-iad3-2.cdninstagram.com/v/t50.33967-16/300049186_459159412771375_4816755847914545315_n.mp4?_nc_cat=107&vs=598304705085129_1955346808&_nc_vs=HBksFQAYJEdDSmo0aEV2aXJGaG1xRUJBS05ndTJUc2pkaENicV9FQUFBRhUAAsgBABUAGCRHT3A3NlJGUGZmUDVXQklNQUt4dml1b3F4a0pxYnFfRUFBQUYVAgLIAQAoABgAGwGIB3VzZV9vaWwBMRUAACaIo%2F%2BMsZnjPxUCKAJDMywXQEGPXCj1wo8YEmRhc2hfYmFzZWxpbmVfMV92MREAdQAA&ccb=1-7&_nc_sid=59939d&efg=eyJ2ZW5jb2RlX3RhZyI6InZ0c192b2RfdXJsZ2VuLjcyMC5jbGlwcyJ9&_nc_ohc=GWHREmRF6cEAX9ThCCX&_nc_ht=video-iad3-2.cdninstagram.com&edm=AL-3X8kEAAAA&oh=00_AT-xHGJfYd5m-9ox_TLJ4Q6BpHimYqC-Yjtl7qzNzpzGqw&oe=63030D74&_nc_rid=af748b3524', 'https://www.instagram.com/reel/ChZtladpF7I/', 'uploads/18240258439185804.jpg', 1, '2022-08-21 13:30:04', '2022-08-21 13:30:04'),
(65, 'hm33571', '18053400814336979', 'https://scontent.cdninstagram.com/v/t51.2885-15/299991340_2047125108828700_6996347967228570621_n.jpg?stp=dst-jpg_e15_p640x640&_nc_ht=scontent.cdninstagram.com&_nc_cat=104&_nc_ohc=YHOI1kMxL2EAX_HwnQO&edm=AMO9-JQAAAAA&ccb=7-5&oh=00_AT_sdhDaJ6N2_8PnnkrPvz-B_wEcAlC8G3kShzrB4hkk7g&oe=63030773&_nc_sid=b9f2ee', 'https://video-iad3-2.cdninstagram.com/v/t50.33967-16/299498286_157275493565914_2559695032506183033_n.mp4?_nc_cat=101&vs=641945300867262_1298448235&_nc_vs=HBksFQAYJEdDNzcyUkhhQmUyTkNvOEFBSG50M1BrUjNZVWpicV9FQUFBRhUAAsgBABUAGCRHSk05NXhIUlJOY0o2Zm9CQU1YZGtBM0pLZ2dWYnFfRUFBQUYVAgLIAQAoABgAGwGIB3VzZV9vaWwBMRUAACbIjcfLj8THQBUCKAJDMywXQCzhR64UeuEYEmRhc2hfYmFzZWxpbmVfMV92MREAdQAA&ccb=1-7&_nc_sid=59939d&efg=eyJ2ZW5jb2RlX3RhZyI6InZ0c192b2RfdXJsZ2VuLjcyMC5jbGlwcyJ9&_nc_ohc=e1cmN0qdRxkAX8tOJiZ&_nc_ht=video-iad3-2.cdninstagram.com&edm=AL-3X8kEAAAA&oh=00_AT8TJJEw9eW0MZVwGyVjbU_fUOmsQsxzY-VTvxXZd6-bUw&oe=630308B5&_nc_rid=adf1083cd1', 'https://www.instagram.com/reel/ChXLbLQpog7/', 'uploads/18053400814336979.jpg', 1, '2022-08-21 13:30:05', '2022-08-21 13:30:05'),
(66, 'hm33571', '18019720540417737', 'https://scontent.cdninstagram.com/v/t51.2885-15/301144287_202717408756729_8703555522152632190_n.jpg?stp=dst-jpg_e15_p640x640&_nc_ht=scontent.cdninstagram.com&_nc_cat=101&_nc_ohc=cJexzhzeffcAX8AKA-R&edm=AMO9-JQAAAAA&ccb=7-5&oh=00_AT9avTIKM1uBG1V3fDW1qsSEbjsThqsFk7l_zT2zNjxt-Q&oe=6308C588&_nc_sid=b9f2ee', 'https://video-iad3-2.cdninstagram.com/v/t50.33967-16/301771137_1257377664821488_7333015162755474858_n.mp4?_nc_cat=105&vs=870435183931918_3051744502&_nc_vs=HBksFQAYJEdJR3AtQkh3YUE4TmxIY0VBS3JsbDBSd0dzUmxicV9FQUFBRhUAAsgBABUAGCRHQ0wxNmhIUGo0cXRfV3NFQUdmRlJSVURiSllwYnFfRUFBQUYVAgLIAQAoABgAGwGIB3VzZV9vaWwBMRUAACbc%2BZzYqZDiPxUCKAJDMywXQDbCj1wo9cMYEmRhc2hfYmFzZWxpbmVfMV92MREAdQAA&ccb=1-7&_nc_sid=59939d&efg=eyJ2ZW5jb2RlX3RhZyI6InZ0c192b2RfdXJsZ2VuLjcyMC5jbGlwcyJ9&_nc_ohc=XLY-M6nBEkMAX_jvhlA&_nc_ht=video-iad3-2.cdninstagram.com&edm=AL-3X8kEAAAA&oh=00_AT90jxmAfuNYRM56R_LPoDCBrA8JD_jf0pfIsY2xpM7cQA&oe=63089BA8&_nc_rid=ceeea51f56', 'https://www.instagram.com/reel/ChrvY7JJWpl/', 'uploads/18019720540417737.jpg', 1, '2022-08-25 21:30:03', '2022-08-25 21:30:03');
INSERT INTO `instagram_feeds` (`id`, `feed_id`, `post_id`, `image_url`, `media_url`, `post_permalink`, `local_image`, `publish`, `created_at`, `updated_at`) VALUES
(67, 'hm33571', '18006551356463192', 'https://scontent.cdninstagram.com/v/t51.2885-15/301152975_191429786637675_4667327951954221722_n.jpg?stp=dst-jpg_e15_p640x640&_nc_ht=scontent.cdninstagram.com&_nc_cat=103&_nc_ohc=Q6SK4T0k6tAAX99gHXC&edm=AMO9-JQAAAAA&ccb=7-5&oh=00_AT94gKuUURi59ICMRgClvK1vjC5XLLvyWwq6Oc2bVtVDeA&oe=6308C7EF&_nc_sid=b9f2ee', 'https://video-iad3-2.cdninstagram.com/v/t50.33967-16/10000000_390918723113291_7132255141703126236_n.mp4?_nc_cat=103&vs=1093697881522905_2348002880&_nc_vs=HBksFQAYJEdJQ1dtQUJMa2FEYmlXTUJBTndNcTFoRDNQcGlicV9FQUFBRhUAAsgBABUAGCRHTVE5NnhGUklHVklzMklCQU9ucDh5cE9GdFVTYnFfRUFBQUYVAgLIAQAoABgAGwGIB3VzZV9vaWwBMRUAACbe0ePn17fLQBUCKAJDMywXQD8o9cKPXCkYEmRhc2hfYmFzZWxpbmVfMV92MREAdQAA&ccb=1-7&_nc_sid=59939d&efg=eyJ2ZW5jb2RlX3RhZyI6InZ0c192b2RfdXJsZ2VuLjcyMC5jbGlwcyJ9&_nc_ohc=OqaOSZD_J9gAX9SBoeq&_nc_ht=video-iad3-2.cdninstagram.com&edm=AL-3X8kEAAAA&oh=00_AT_QJyFp3BCmTF1FOGg6UAz4JYLxxCKFyFVdnpA6JfIWyQ&oe=6308911B&_nc_rid=8cdcfdb378', 'https://www.instagram.com/reel/ChpLUVOpLpf/', 'uploads/18006551356463192.jpg', 1, '2022-08-25 21:30:04', '2022-08-25 21:30:04'),
(68, 'hm33571', '17938488047172803', 'https://scontent-iad3-2.cdninstagram.com/v/t51.29350-15/300573704_3296755253870954_2240783733489155655_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=8ae9d6&_nc_ohc=R9av6bx3XpMAX-VBYFp&_nc_ht=scontent-iad3-2.cdninstagram.com&edm=AL-3X8kEAAAA&oh=00_AT_H8XPEkDfSWdm0vMOyCMvV7-CDmxVzCbvJnqnQYePNxQ&oe=630C63C4', 'https://scontent-iad3-2.cdninstagram.com/v/t51.29350-15/300573704_3296755253870954_2240783733489155655_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=8ae9d6&_nc_ohc=R9av6bx3XpMAX-VBYFp&_nc_ht=scontent-iad3-2.cdninstagram.com&edm=AL-3X8kEAAAA&oh=00_AT_H8XPEkDfSWdm0vMOyCMvV7-CDmxVzCbvJnqnQYePNxQ&oe=630C63C4', 'https://www.instagram.com/p/ChmlJxMp1B9/', 'uploads/17938488047172803.jpg', 1, '2022-08-25 21:30:04', '2022-08-25 21:30:04'),
(69, 'hm33571', '17986621984517627', 'https://scontent.cdninstagram.com/v/t51.2885-15/300236551_758921058734610_3029474156178092596_n.jpg?stp=dst-jpg_e15_p640x640&_nc_ht=scontent.cdninstagram.com&_nc_cat=106&_nc_ohc=NHI-vZls8ywAX_dtO77&edm=AMO9-JQAAAAA&ccb=7-5&oh=00_AT9J9ELIMDzs5nKSBiZHFeHC7wHupyqPF10o0Qe8o5nJQw&oe=6308ADBA&_nc_sid=b9f2ee', 'https://video-iad3-2.cdninstagram.com/v/t50.33967-16/300976089_631138301776655_7229689825767597421_n.mp4?_nc_cat=108&vs=1255775415236340_1687695407&_nc_vs=HBksFQAYJEdObUg4QkVQRTBoV0JENENBRzBsSW8yWEJGVmticV9FQUFBRhUAAsgBABUAGCRHSnQ3MlJHc04zbzFwcWdCQUZYdjBETk1FMmN2YnFfRUFBQUYVAgLIAQAoABgAGwGIB3VzZV9vaWwBMRUAACbslP2uk7PnPxUCKAJDMywXQDmuFHrhR64YEmRhc2hfYmFzZWxpbmVfMV92MREAdQAA&ccb=1-7&_nc_sid=59939d&efg=eyJ2ZW5jb2RlX3RhZyI6InZ0c192b2RfdXJsZ2VuLjcyMC5jbGlwcyJ9&_nc_ohc=IE6FiS0bX6sAX_BXIUc&_nc_ht=video-iad3-2.cdninstagram.com&edm=AL-3X8kEAAAA&oh=00_AT8439jGaRXHTxrS0Ad6eXDsqHaamqE2YtI4bzDpXM-uvA&oe=6308B88F&_nc_rid=a373168491', 'https://www.instagram.com/reel/ChkPlf7Jyqg/', 'uploads/17986621984517627.jpg', 1, '2022-08-25 21:30:05', '2022-08-25 21:30:05'),
(70, 'hm33571', '17969147206763297', 'https://scontent-iad3-2.cdninstagram.com/v/t51.29350-15/302246227_601834394884306_6033743238074110646_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=8ae9d6&_nc_ohc=y2m0yOGbSxoAX-YnIRx&_nc_ht=scontent-iad3-2.cdninstagram.com&edm=AL-3X8kEAAAA&oh=00_AT_22TD0UNBQoLe0U1sgIetfLbuWvzeQVMVFL-Czq-rT5A&oe=6313BDC8', 'https://scontent-iad3-2.cdninstagram.com/v/t51.29350-15/302246227_601834394884306_6033743238074110646_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=8ae9d6&_nc_ohc=y2m0yOGbSxoAX-YnIRx&_nc_ht=scontent-iad3-2.cdninstagram.com&edm=AL-3X8kEAAAA&oh=00_AT_22TD0UNBQoLe0U1sgIetfLbuWvzeQVMVFL-Czq-rT5A&oe=6313BDC8', 'https://www.instagram.com/p/Ch4nhK-J8YD/', 'uploads/17969147206763297.jpg', 1, '2022-08-31 04:38:58', '2022-08-31 04:38:58'),
(71, 'hm33571', '17921057819541774', 'https://scontent-iad3-2.cdninstagram.com/v/t51.29350-15/301794881_1491078407980041_4380219016237601369_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=8ae9d6&_nc_ohc=TQmGLl08zs0AX8PI2Fw&_nc_ht=scontent-iad3-2.cdninstagram.com&edm=AL-3X8kEAAAA&oh=00_AT9pQ_mwk8RWOspq4VCEzT7lXbC4OeNDnmU7IT5tSp0wyQ&oe=6313E730', 'https://scontent-iad3-2.cdninstagram.com/v/t51.29350-15/301794881_1491078407980041_4380219016237601369_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=8ae9d6&_nc_ohc=TQmGLl08zs0AX8PI2Fw&_nc_ht=scontent-iad3-2.cdninstagram.com&edm=AL-3X8kEAAAA&oh=00_AT9pQ_mwk8RWOspq4VCEzT7lXbC4OeNDnmU7IT5tSp0wyQ&oe=6313E730', 'https://www.instagram.com/p/Ch2Ckkvp0SH/', 'uploads/17921057819541774.jpg', 1, '2022-08-31 04:38:58', '2022-08-31 04:38:58'),
(72, 'hm33571', '17926556537523411', 'https://scontent.cdninstagram.com/v/t51.2885-15/301723930_814567082890914_2062558294056614889_n.jpg?stp=dst-jpg_e15_p640x640&_nc_ht=scontent.cdninstagram.com&_nc_cat=106&_nc_ohc=vULnVw6pCWUAX-T8kSY&edm=AMO9-JQAAAAA&ccb=7-5&oh=00_AT-O9WZAxywt7HmtJjFC5w7CKfMvJ9gQsdNBguWaSA75Yg&oe=630FC4C8&_nc_sid=b9f2ee', 'https://video-iad3-2.cdninstagram.com/v/t50.33967-16/10000000_592946145856014_2261080451816822556_n.mp4?_nc_cat=111&vs=641436127199064_17373612&_nc_vs=HBksFQAYJEdJQ1dtQUFPQ21VSVNCc0NBQndYSC1Pd19HQWZicV9FQUFBRhUAAsgBABUAGCRHQ2xKQnhKakktWW9HbXdCQURuaXBYZzZsVXBxYnFfRUFBQUYVAgLIAQAoABgAGwGIB3VzZV9vaWwBMRUAACbc3IPkpZzpPxUCKAJDMywXQE4AAAAAAAAYEmRhc2hfYmFzZWxpbmVfMV92MREAdQAA&ccb=1-7&_nc_sid=59939d&efg=eyJ2ZW5jb2RlX3RhZyI6InZ0c192b2RfdXJsZ2VuLjcyMC5jbGlwcyJ9&_nc_ohc=4dUXN_5xCoUAX_81Nbf&_nc_ht=video-iad3-2.cdninstagram.com&edm=AL-3X8kEAAAA&oh=00_AT8_8ZnOJQ8orf0s3Q4d-I4WDhy85BNpSTxlC7lgCuZNLw&oe=630FAC2E&_nc_rid=39613dcdbd', 'https://www.instagram.com/reel/Ch1dDZ5JX5E/', 'uploads/17926556537523411.jpg', 1, '2022-08-31 04:38:59', '2022-08-31 04:38:59'),
(73, 'hm33571', '17942854646105089', 'https://scontent.cdninstagram.com/v/t51.2885-15/301229384_770144157630658_1751033330961704898_n.jpg?stp=dst-jpg_e15_p640x640&_nc_ht=scontent.cdninstagram.com&_nc_cat=110&_nc_ohc=hrgnGVdCoWYAX9GmUzg&edm=AMO9-JQAAAAA&ccb=7-5&oh=00_AT-b46WYB7PSsXKGG_tsEBQXSlE3maciUI92NUwBh6KFDA&oe=630FBD2B&_nc_sid=b9f2ee', 'https://video-iad3-2.cdninstagram.com/v/t50.33967-16/10000000_1085602312375639_5510073341928593590_n.mp4?_nc_cat=101&vs=614318963584346_3280528734&_nc_vs=HBksFQAYJEdJQ1dtQUJYVFRKOFdkc0RBTGJZQU1pQ3RuZE1icV9FQUFBRhUAAsgBABUAGCRHRWtCNkJFR3h3eW1EbmdCQVBOVjdLX0hQMEE1YnFfRUFBQUYVAgLIAQAoABgAGwGIB3VzZV9vaWwBMRUAACbMpIK6%2F9LtQBUCKAJDMywXQEI9cKPXCj0YEmRhc2hfYmFzZWxpbmVfMV92MREAdQAA&ccb=1-7&_nc_sid=59939d&efg=eyJ2ZW5jb2RlX3RhZyI6InZ0c192b2RfdXJsZ2VuLjcyMC5jbGlwcyJ9&_nc_ohc=N-YV-BOuqUkAX8NPfSw&_nc_oc=AQmDaFUiKfa5-s6o4V9Je9hCRxVqRdaBgGUDbsyhfCF6eVVldke1rzt3AfEpc39GeW0&_nc_ht=video-iad3-2.cdninstagram.com&edm=AL-3X8kEAAAA&oh=00_AT-HHpOQJqwmuvnqChQEgQUmC50Jbdubj4mjk4BqSuwRgA&oe=630F8FE8&_nc_rid=d8571e06d3', 'https://www.instagram.com/reel/Chw3wqypjHh/', 'uploads/17942854646105089.jpg', 1, '2022-08-31 04:39:00', '2022-08-31 04:39:00'),
(74, 'hm33571', '17945501330190974', 'https://scontent-iad3-2.cdninstagram.com/v/t51.29350-15/301792622_157670096858389_5079915884278316162_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=8ae9d6&_nc_ohc=iL8OLG8fnnUAX91xJUf&_nc_ht=scontent-iad3-2.cdninstagram.com&edm=AL-3X8kEAAAA&oh=00_AT96xU-ZBrPNnss-2ykS2UxigJgXwaFc_rsFpAYjdDOuLA&oe=63143E46', 'https://scontent-iad3-2.cdninstagram.com/v/t51.29350-15/301792622_157670096858389_5079915884278316162_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=8ae9d6&_nc_ohc=iL8OLG8fnnUAX91xJUf&_nc_ht=scontent-iad3-2.cdninstagram.com&edm=AL-3X8kEAAAA&oh=00_AT96xU-ZBrPNnss-2ykS2UxigJgXwaFc_rsFpAYjdDOuLA&oe=63143E46', 'https://www.instagram.com/p/ChuVr7xpSbR/', 'uploads/17945501330190974.jpg', 1, '2022-08-31 04:39:00', '2022-08-31 04:39:00'),
(75, 'hm33571', '18230206468121252', 'https://scontent.cdninstagram.com/v/t51.2885-15/301805599_806641153690934_5516446851265876652_n.jpg?stp=dst-jpg_e15_p640x640&_nc_ht=scontent.cdninstagram.com&_nc_cat=102&_nc_ohc=nlK_9dyaTwEAX-Dfvx7&edm=AMO9-JQAAAAA&ccb=7-5&oh=00_AT95911OA2EjMdIioOuIsEvn0Ifd1j8cWv5rshEdR6dxfA&oe=630FB604&_nc_sid=b9f2ee', 'https://video-iad3-2.cdninstagram.com/o1/v/t16/f1/m81/794563E2FF591B473CC80476376F82B9_video_dashinit.mp4?efg=eyJ2ZW5jb2RlX3RhZyI6InZ0c192b2RfdXJsZ2VuLjcyMC5jbGlwcyJ9&_nc_ht=video-iad3-2.cdninstagram.com&vs=759521341774154_1448356042&_nc_vs=HBksFQIYU2lnX3hwdl9ub25fc3RvcnlfZXBoZW1lcmFsX3Byb2QvNzk0NTYzRTJGRjU5MUI0NzNDQzgwNDc2Mzc2RjgyQjlfdmlkZW9fZGFzaGluaXQubXA0FQACyAEAFQAYJEdOdFg4QkdkN2N4RHQ3c0NBTndzM1pPYW96cENicV9FQUFBRhUCAsgBACgAGAAbAYgHdXNlX29pbAExFQAAJsCY7YH1tuNAFQIoAkMzLBdANsKPXCj1wxgXZGFzaF9iYXNlbGluZW9pbHIxXzFfdjERAHUAAA%3D%3D&ccb=9-4&oh=00_AT82pg0sC_kDP62GVxCYuEpTRZgqqOVPFFPh4_t2OdoBng&oe=631074E5&_nc_sid=ea0b6e&_nc_rid=c4a9d0f307', 'https://www.instagram.com/reel/ChttwhcJDbW/', 'uploads/18230206468121252.jpg', 1, '2022-08-31 04:39:00', '2022-08-31 04:39:00'),
(76, 'hm33571', '17940822797505653', 'https://scontent-iad3-2.cdninstagram.com/v/t51.29350-15/302159930_803134710709612_4500166120586533971_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=8ae9d6&_nc_ohc=IkuVnyi0mcQAX9lZ4XL&_nc_ht=scontent-iad3-2.cdninstagram.com&edm=AL-3X8kEAAAA&oh=00_AT_oFrzcRNPhQf1DQmHYnQi-L29ZfeRhWgmthpgQf_ttUA&oe=63166E19', 'https://scontent-iad3-2.cdninstagram.com/v/t51.29350-15/302159930_803134710709612_4500166120586533971_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=8ae9d6&_nc_ohc=IkuVnyi0mcQAX9lZ4XL&_nc_ht=scontent-iad3-2.cdninstagram.com&edm=AL-3X8kEAAAA&oh=00_AT_oFrzcRNPhQf1DQmHYnQi-L29ZfeRhWgmthpgQf_ttUA&oe=63166E19', 'https://www.instagram.com/p/Ch9wvpBp5HR/', 'uploads/17940822797505653.jpg', 1, '2022-09-01 09:15:04', '2022-09-01 09:15:04'),
(77, 'hm33571', '18151181167267873', 'https://scontent.cdninstagram.com/v/t51.2885-15/301853867_2259362704244323_8579538975476227953_n.jpg?stp=dst-jpg_e15_p640x640&_nc_ht=scontent.cdninstagram.com&_nc_cat=107&_nc_ohc=6IAYv16AAv4AX81Dzqe&edm=AMO9-JQAAAAA&ccb=7-5&oh=00_AT8wjh7zntcWIhssSJJd8oHhvhcMwy_OEFSf2pxqsVg69A&oe=63113B32&_nc_sid=b9f2ee', 'https://video-iad3-2.cdninstagram.com/v/t50.33967-16/303465868_898018651601643_3061079487712807888_n.mp4?_nc_cat=104&vs=1438150056662939_3915589505&_nc_vs=HBksFQAYJEdJeUZGaExyX3JwQ3ZqQURBTkJMVzJhVEkzc3FicV9FQUFBRhUAAsgBABUAGCRHQ0xSQWhKRUliTzkyYkVDQUtCQThyWEJzLUExYnFfRUFBQUYVAgLIAQAoABgAGwGIB3VzZV9vaWwBMRUAACbM9tubwr73PxUCKAJDMywXQDEo9cKPXCkYEmRhc2hfYmFzZWxpbmVfMV92MREAdQAA&ccb=1-7&_nc_sid=59939d&efg=eyJ2ZW5jb2RlX3RhZyI6InZ0c192b2RfdXJsZ2VuLjcyMC5jbGlwcyJ9&_nc_ohc=v3S9mVK8JFkAX9UIFCx&_nc_ht=video-iad3-2.cdninstagram.com&edm=AL-3X8kEAAAA&oh=00_AT_YTTFgFgyC31EMrXgCYjrlZXzxCTjsLZCApGUXP7qBYw&oe=63114B5D&_nc_rid=31a23e4471', 'https://www.instagram.com/reel/Ch7MOzaJclZ/', 'uploads/18151181167267873.jpg', 1, '2022-09-01 09:15:04', '2022-09-01 09:15:04'),
(78, 'hm33571', '17904949574644740', 'https://scontent-ort2-2.cdninstagram.com/v/t51.29350-15/304198807_487814519463845_614195339344329828_n.jpg?_nc_cat=103&ccb=1-7&_nc_sid=8ae9d6&_nc_ohc=cuWn3niUip8AX8MFH68&_nc_ht=scontent-ort2-2.cdninstagram.com&edm=AL-3X8kEAAAA&oh=00_AT-tmIyxqKntP1Q8UAaKybTYIGDKPJfSwSv6ateTPmjtRw&oe=631A0200', 'https://scontent-ort2-2.cdninstagram.com/v/t51.29350-15/304198807_487814519463845_614195339344329828_n.jpg?_nc_cat=103&ccb=1-7&_nc_sid=8ae9d6&_nc_ohc=cuWn3niUip8AX8MFH68&_nc_ht=scontent-ort2-2.cdninstagram.com&edm=AL-3X8kEAAAA&oh=00_AT-tmIyxqKntP1Q8UAaKybTYIGDKPJfSwSv6ateTPmjtRw&oe=631A0200', 'https://www.instagram.com/p/CiFd6yjpufZ/', 'uploads/17904949574644740.jpg', 1, '2022-09-04 09:01:44', '2022-09-04 09:01:44'),
(79, 'hm33571', '17961423283824265', 'https://scontent-ort2-2.cdninstagram.com/v/t51.29350-15/305018958_1221724968667220_5790345508857977394_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=8ae9d6&_nc_ohc=ATUDeApx2hcAX-SaYQJ&_nc_ht=scontent-ort2-2.cdninstagram.com&edm=AL-3X8kEAAAA&oh=00_AT-SqF-iEwBeJgVIT_dA3MGBL1Sd1GmaP3VphsbQgGxrqQ&oe=6318B6AD', 'https://scontent-ort2-2.cdninstagram.com/v/t51.29350-15/305018958_1221724968667220_5790345508857977394_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=8ae9d6&_nc_ohc=ATUDeApx2hcAX-SaYQJ&_nc_ht=scontent-ort2-2.cdninstagram.com&edm=AL-3X8kEAAAA&oh=00_AT-SqF-iEwBeJgVIT_dA3MGBL1Sd1GmaP3VphsbQgGxrqQ&oe=6318B6AD', 'https://www.instagram.com/p/CiC5U7VpYO0/', 'uploads/17961423283824265.jpg', 1, '2022-09-04 09:01:45', '2022-09-04 09:01:45'),
(80, 'hm33571', '17966438218736095', 'https://scontent.cdninstagram.com/v/t51.2885-15/303102405_1129641057951897_2797947881468860986_n.jpg?stp=dst-jpg_e15_p640x640&_nc_ht=scontent.cdninstagram.com&_nc_cat=109&_nc_ohc=C0YHYGenCQgAX_kJzZ5&edm=AMO9-JQAAAAA&ccb=7-5&oh=00_AT958kyLV92Ne4PviE2U0pLClHLJkCp2fZJ-pNwQrnYk7A&oe=63153538&_nc_sid=b9f2ee', 'https://video-ort2-2.cdninstagram.com/v/t50.33967-16/304978209_451814957000859_4728570012014055621_n.mp4?_nc_cat=102&vs=1348214682652307_3899135695&_nc_vs=HBksFQAYJEdDR1pMUktiS0FSZTdKb0JBTVdRcVhWZlFaOUJicV9FQUFBRhUAAsgBABUAGCRHRU4zTVJKc1huNXMycjBDQU8wcEx1MjVvWDFSYnFfRUFBQUYVAgLIAQAoABgAGwGIB3VzZV9vaWwBMRUAACbIiOCMt9nkPxUCKAJDMywXQDaZmZmZmZoYEmRhc2hfYmFzZWxpbmVfMV92MREAdQAA&ccb=1-7&_nc_sid=59939d&_nc_aid=0&efg=eyJ2ZW5jb2RlX3RhZyI6InZ0c192b2RfdXJsZ2VuLjcyMC5jbGlwcyJ9&_nc_ohc=dezGX-kmmIQAX94TpJq&_nc_ht=video-ort2-2.cdninstagram.com&edm=AL-3X8kEAAAA&oh=00_AT-BrRA0SZ8TWfTfZSX1Txa45Ni2urpQWJ3w29LUjxm9aA&oe=6315195F&_nc_rid=8644cc63ef', 'https://www.instagram.com/reel/CiAWiObJ4db/', 'uploads/17966438218736095.jpg', 1, '2022-09-04 09:01:45', '2022-09-04 09:01:45'),
(81, 'hm33571', '17977800808629928', 'https://scontent-ort2-2.cdninstagram.com/v/t51.29350-15/304868042_1113661216191428_5747390437013768626_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=8ae9d6&_nc_ohc=cFOhrs03j-8AX8zSFW7&_nc_ht=scontent-ort2-2.cdninstagram.com&edm=AL-3X8kEAAAA&oh=00_AT8Yk2RD-sC0ZDaww8A5qnimao8hisoxc15Bz7uTfQxwWg&oe=631A6FC5', 'https://scontent-ort2-2.cdninstagram.com/v/t51.29350-15/304868042_1113661216191428_5747390437013768626_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=8ae9d6&_nc_ohc=cFOhrs03j-8AX8zSFW7&_nc_ht=scontent-ort2-2.cdninstagram.com&edm=AL-3X8kEAAAA&oh=00_AT8Yk2RD-sC0ZDaww8A5qnimao8hisoxc15Bz7uTfQxwWg&oe=631A6FC5', 'https://www.instagram.com/p/CiIEeSApi5Y/', 'uploads/17977800808629928.jpg', 1, '2022-09-05 17:15:04', '2022-09-05 17:15:04'),
(82, 'hm33571', '17910915287624520', 'https://scontent-ort2-2.cdninstagram.com/v/t51.29350-15/305347021_1558623321207689_2201695979223229017_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=8ae9d6&_nc_ohc=EcRz9Hn95vIAX9p5Cop&_nc_ht=scontent-ort2-2.cdninstagram.com&edm=AL-3X8kEAAAA&oh=00_AT85DngThbG8KR7kOwreOCaXKEM4QshCKbnkHfY_42QQmA&oe=631DF329', 'https://scontent-ort2-2.cdninstagram.com/v/t51.29350-15/305347021_1558623321207689_2201695979223229017_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=8ae9d6&_nc_ohc=EcRz9Hn95vIAX9p5Cop&_nc_ht=scontent-ort2-2.cdninstagram.com&edm=AL-3X8kEAAAA&oh=00_AT85DngThbG8KR7kOwreOCaXKEM4QshCKbnkHfY_42QQmA&oe=631DF329', 'https://www.instagram.com/p/CiNR33epaQ8/', 'uploads/17910915287624520.jpg', 1, '2022-09-08 06:45:03', '2022-09-08 06:45:03'),
(83, 'hm33571', '17940175277168893', 'https://scontent-ort2-2.cdninstagram.com/v/t51.29350-15/305561615_146039131122366_3314276507995487390_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=8ae9d6&_nc_ohc=3JM9z50jZjAAX8fsAQY&_nc_ht=scontent-ort2-2.cdninstagram.com&edm=AL-3X8kEAAAA&oh=00_AT8-lzhMl3929V8Uge7Oz3LMuaBYHrpk0ndy7DNEKOhMKg&oe=631DEDA7', 'https://scontent-ort2-2.cdninstagram.com/v/t51.29350-15/305561615_146039131122366_3314276507995487390_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=8ae9d6&_nc_ohc=3JM9z50jZjAAX8fsAQY&_nc_ht=scontent-ort2-2.cdninstagram.com&edm=AL-3X8kEAAAA&oh=00_AT8-lzhMl3929V8Uge7Oz3LMuaBYHrpk0ndy7DNEKOhMKg&oe=631DEDA7', 'https://www.instagram.com/p/CiKob0-p-G7/', 'uploads/17940175277168893.jpg', 1, '2022-09-08 06:45:03', '2022-09-08 06:45:03'),
(84, 'hm33571', '17982719410612697', 'https://scontent-iad3-2.cdninstagram.com/v/t51.29350-15/306133446_1539557576490221_8319586674957682208_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=8ae9d6&_nc_ohc=3TtKAvcjLtIAX_chJym&_nc_oc=AQkBAAz7w6HKy45Ika9I0sRdGNDHMTd5jdgoNFKiPcAxFy2SgPf77kiFoB_BZNSHzaM&_nc_ht=scontent-iad3-2.cdninstagram.com&edm=AL-3X8kEAAAA&oh=00_AT9C9BCCIfMDJTXn7qdSlkjHNLhryQCZa9gZWB3i5YztVA&oe=63242162', 'https://scontent-iad3-2.cdninstagram.com/v/t51.29350-15/306133446_1539557576490221_8319586674957682208_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=8ae9d6&_nc_ohc=3TtKAvcjLtIAX_chJym&_nc_oc=AQkBAAz7w6HKy45Ika9I0sRdGNDHMTd5jdgoNFKiPcAxFy2SgPf77kiFoB_BZNSHzaM&_nc_ht=scontent-iad3-2.cdninstagram.com&edm=AL-3X8kEAAAA&oh=00_AT9C9BCCIfMDJTXn7qdSlkjHNLhryQCZa9gZWB3i5YztVA&oe=63242162', 'https://www.instagram.com/p/CiaLfs7pe-l/', 'uploads/17982719410612697.jpg', 1, '2022-09-13 01:00:03', '2022-09-13 01:00:03'),
(85, 'hm33571', '17985477943598622', 'https://scontent.cdninstagram.com/v/t51.2885-15/306105522_5498167770298079_4256713820841171360_n.jpg?stp=dst-jpg_e15_p640x640&_nc_ht=scontent.cdninstagram.com&_nc_cat=111&_nc_ohc=wCuAgpX4MbAAX--IOsN&edm=AMO9-JQAAAAA&ccb=7-5&oh=00_AT9GStX7hJVk2JeA9OpWh--jPuwHXpfB0-Y8W6X9C4bhbw&oe=6320A1BE&_nc_sid=b9f2ee', 'https://video-iad3-2.cdninstagram.com/o1/v/t16/f1/m81/A34EEC72D25DA2243DA380BDB8B8A697_video_dashinit.mp4?efg=eyJ2ZW5jb2RlX3RhZyI6InZ0c192b2RfdXJsZ2VuLjcyMC5jbGlwcyJ9&_nc_ht=video-iad3-2.cdninstagram.com&_nc_cat=106&vs=989730858512574_2939710275&_nc_vs=HBksFQIYU2lnX3hwdl9ub25fc3RvcnlfZXBoZW1lcmFsX3Byb2QvQTM0RUVDNzJEMjVEQTIyNDNEQTM4MEJEQjhCOEE2OTdfdmlkZW9fZGFzaGluaXQubXA0FQACyAEAFQAYJEdEWXBPQklXNENYZk52Z0RBTHhsSDdnZUZjZ1BicV9FQUFBRhUCAsgBACgAGAAbAYgHdXNlX29pbAExFQAAJoD86eWP%2FNk%2FFQIoAkMzLBdAOhR64UeuFBgXZGFzaF9iYXNlbGluZW9pbHIxXzFfdjERAHUAAA%3D%3D&ccb=9-4&oh=00_AT-K0HkULoFd9PjzUBEsBY_J7wF7x9KPv_q7rK_7E_zpog&oe=6321E98F&_nc_sid=ea0b6e&_nc_rid=3bce47540f', 'https://www.instagram.com/reel/CiXgJNxJ6jc/', 'uploads/17985477943598622.jpg', 1, '2022-09-13 01:00:03', '2022-09-13 01:00:03'),
(86, 'hm33571', '18319186354042516', 'https://scontent.cdninstagram.com/v/t51.2885-15/306011492_623472535833808_3601810618008292702_n.jpg?stp=dst-jpg_e15_p640x640&_nc_ht=scontent.cdninstagram.com&_nc_cat=104&_nc_ohc=jO_iAxvO1GsAX89wbe1&edm=AMO9-JQAAAAA&ccb=7-5&oh=00_AT8JEUDUSK5aCLko30OfaKnDvrJoNGJZMdXUHqCTcw8ivA&oe=63208F34&_nc_sid=b9f2ee', 'https://video-iad3-2.cdninstagram.com/v/t50.33967-16/306368183_1354730061966848_2147035458542029318_n.mp4?_nc_cat=111&vs=892031175108468_3354143597&_nc_vs=HBksFQAYJEdMZk9RaElBTGh5c0h0QUVBQWJLa01KZnpjc2RicV9FQUFBRhUAAsgBABUAGCRHT1VCUXhKSTkzNG1EUXNGQUo3RDVyeldqdlZhYnFfRUFBQUYVAgLIAQAoABgAGwGIB3VzZV9vaWwBMRUAACaUtObB3L3mPxUCKAJDMywXQDAAAAAAAAAYEmRhc2hfYmFzZWxpbmVfMV92MREAdQAA&ccb=1-7&_nc_sid=59939d&efg=eyJ2ZW5jb2RlX3RhZyI6InZ0c192b2RfdXJsZ2VuLjcyMC5jbGlwcyJ9&_nc_ohc=T3KhJF_ZTPYAX-f5UIC&_nc_ht=video-iad3-2.cdninstagram.com&edm=AL-3X8kEAAAA&oh=00_AT-FpsvxmZvBL7i2F3Y7NBP91W1FOvxvwmLKKiQb0kVnPQ&oe=632097E5&_nc_rid=4bfa79c017', 'https://www.instagram.com/reel/CiU6-btpsWW/', 'uploads/18319186354042516.jpg', 1, '2022-09-13 01:00:04', '2022-09-13 01:00:04'),
(87, 'hm33571', '18226843321145431', 'https://scontent-iad3-2.cdninstagram.com/v/t51.29350-15/305643937_487563329549446_2649424685741894489_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=8ae9d6&_nc_ohc=OZO6IeyvnuQAX9Lmnu9&_nc_ht=scontent-iad3-2.cdninstagram.com&edm=AL-3X8kEAAAA&oh=00_AT8DLYUvbmNptuQR1MS4JIKKoJntFiLdE2dIkUlyBVOQ_w&oe=6325846C', 'https://scontent-iad3-2.cdninstagram.com/v/t51.29350-15/305643937_487563329549446_2649424685741894489_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=8ae9d6&_nc_ohc=OZO6IeyvnuQAX9Lmnu9&_nc_ht=scontent-iad3-2.cdninstagram.com&edm=AL-3X8kEAAAA&oh=00_AT8DLYUvbmNptuQR1MS4JIKKoJntFiLdE2dIkUlyBVOQ_w&oe=6325846C', 'https://www.instagram.com/p/CiSXnSQJMhr/', 'uploads/18226843321145431.jpg', 1, '2022-09-13 01:00:04', '2022-09-13 01:00:04'),
(88, 'hm33571', '17899179401656397', 'https://scontent.cdninstagram.com/v/t51.2885-15/306002384_3209901232607761_1288573277478553704_n.jpg?stp=dst-jpg_e15_p640x640&_nc_ht=scontent.cdninstagram.com&_nc_cat=101&_nc_ohc=RZBS3z3mViQAX9Yet5E&edm=AMO9-JQAAAAA&ccb=7-5&oh=00_AT_y8iZRfCWTZASK9oD5yBFy5Ko_uzwjRDze7bhEf6JtLw&oe=63208C68&_nc_sid=b9f2ee', 'https://video-iad3-2.cdninstagram.com/v/t50.33967-16/10000000_621745606279790_6341132006780999383_n.mp4?_nc_cat=111&vs=1735424736822703_1530856303&_nc_vs=HBksFQAYJEdJQ1dtQUJ1d2dCdWVUVUNBTmVXQ3FMMk9RQllicV9FQUFBRhUAAsgBABUAGCRHTnJsT0JKS1oyMVFGYk1DQURWVXhZTEpMWWx4YnFfRUFBQUYVAgLIAQAoABgAGwGIB3VzZV9vaWwBMRUAACaY47Dc4sPfPxUCKAJDMywXQD4o9cKPXCkYEmRhc2hfYmFzZWxpbmVfMV92MREAdQAA&ccb=1-7&_nc_sid=59939d&efg=eyJ2ZW5jb2RlX3RhZyI6InZ0c192b2RfdXJsZ2VuLjcyMC5jbGlwcyJ9&_nc_ohc=lZNiwhY0KooAX8Lf6O2&_nc_ht=video-iad3-2.cdninstagram.com&edm=AL-3X8kEAAAA&oh=00_AT-ELrKldiygBEKtgVK3duj7Rp7-W6aqaFXaawOxU5UMAA&oe=6320B565&_nc_rid=9430e35f27', 'https://www.instagram.com/reel/CiPy8-PpPHW/', 'uploads/17899179401656397.jpg', 1, '2022-09-13 01:00:05', '2022-09-13 01:00:05'),
(89, 'hm33571', '17972060308796150', 'https://scontent-iad3-2.cdninstagram.com/v/t51.29350-15/307764743_1630755063986264_8429564133468465453_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=8ae9d6&_nc_ohc=zWYKueYZ3-8AX9kUHC8&_nc_ht=scontent-iad3-2.cdninstagram.com&edm=AL-3X8kEAAAA&oh=00_AT8jaQg3LfQHalyfXTgWseBj_AnIdXWmrp8JhXyoSXejIg&oe=6330E5EE', 'https://scontent-iad3-2.cdninstagram.com/v/t51.29350-15/307764743_1630755063986264_8429564133468465453_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=8ae9d6&_nc_ohc=zWYKueYZ3-8AX9kUHC8&_nc_ht=scontent-iad3-2.cdninstagram.com&edm=AL-3X8kEAAAA&oh=00_AT8jaQg3LfQHalyfXTgWseBj_AnIdXWmrp8JhXyoSXejIg&oe=6330E5EE', 'https://www.instagram.com/p/CixRObgrB_U/', 'uploads/17972060308796150.jpg', 1, '2022-09-21 12:15:03', '2022-09-21 12:15:03'),
(90, 'hm33571', '17923154618536174', 'https://scontent-iad3-2.cdninstagram.com/v/t51.29350-15/308039953_811331506971035_782926093041287551_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=8ae9d6&_nc_ohc=celzI-Oa3TAAX8QY1ip&_nc_ht=scontent-iad3-2.cdninstagram.com&edm=AL-3X8kEAAAA&oh=00_AT_RPZSkSN89zfHSOOmcGHUmkVMl3Erm-fkyIsxELVF8-Q&oe=632FD62D', 'https://scontent-iad3-2.cdninstagram.com/v/t51.29350-15/308039953_811331506971035_782926093041287551_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=8ae9d6&_nc_ohc=celzI-Oa3TAAX8QY1ip&_nc_ht=scontent-iad3-2.cdninstagram.com&edm=AL-3X8kEAAAA&oh=00_AT_RPZSkSN89zfHSOOmcGHUmkVMl3Erm-fkyIsxELVF8-Q&oe=632FD62D', 'https://www.instagram.com/p/Ciurh0xLa6h/', 'uploads/17923154618536174.jpg', 1, '2022-09-21 12:15:03', '2022-09-21 12:15:03'),
(91, 'hm33571', '17951460908152533', 'https://scontent.cdninstagram.com/v/t51.2885-15/307807752_618984109626985_4988185932456106783_n.jpg?stp=dst-jpg_e15_p640x640&_nc_ht=scontent.cdninstagram.com&_nc_cat=101&_nc_ohc=tC0IDTEPY54AX-dYVMI&edm=AMO9-JQAAAAA&ccb=7-5&oh=00_AT9nqPurrgFq4JR4Mwtt8FlSkiu0pmGakjSpr9raoru5HQ&oe=632BD167&_nc_sid=b9f2ee', NULL, 'https://www.instagram.com/reel/CisGd6vLF4Y/', 'uploads/17951460908152533.jpg', 1, '2022-09-21 12:15:04', '2022-09-21 12:15:04'),
(92, 'hm33571', '17875564538749985', 'https://scontent-iad3-2.cdninstagram.com/v/t51.29350-15/307721256_625477879088552_1098937359983575294_n.jpg?_nc_cat=103&ccb=1-7&_nc_sid=8ae9d6&_nc_ohc=uoYHVv2H_OEAX9Tt7s0&_nc_ht=scontent-iad3-2.cdninstagram.com&edm=AL-3X8kEAAAA&oh=00_AT_uJbLLKEcCOY5Hsh8z2brwkLEF-THxjvhOhCFYSy4_Ow&oe=63310A60', 'https://scontent-iad3-2.cdninstagram.com/v/t51.29350-15/307721256_625477879088552_1098937359983575294_n.jpg?_nc_cat=103&ccb=1-7&_nc_sid=8ae9d6&_nc_ohc=uoYHVv2H_OEAX9Tt7s0&_nc_ht=scontent-iad3-2.cdninstagram.com&edm=AL-3X8kEAAAA&oh=00_AT_uJbLLKEcCOY5Hsh8z2brwkLEF-THxjvhOhCFYSy4_Ow&oe=63310A60', 'https://www.instagram.com/p/CiphRonpc5c/', 'uploads/17875564538749985.jpg', 1, '2022-09-21 12:15:04', '2022-09-21 12:15:04'),
(93, 'hm33571', '18316568185028519', 'https://scontent-iad3-2.cdninstagram.com/v/t51.29350-15/307663539_5216441758464366_5946369410078330314_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=8ae9d6&_nc_ohc=4FMBpbOEi1wAX8pX865&_nc_ht=scontent-iad3-2.cdninstagram.com&edm=AL-3X8kEAAAA&oh=00_AT91ZdrTHA6RzliZBP_KUYtrvrlgyylyu4AiMY25BSLp5w&oe=632F8CEF', 'https://scontent-iad3-2.cdninstagram.com/v/t51.29350-15/307663539_5216441758464366_5946369410078330314_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=8ae9d6&_nc_ohc=4FMBpbOEi1wAX8pX865&_nc_ht=scontent-iad3-2.cdninstagram.com&edm=AL-3X8kEAAAA&oh=00_AT91ZdrTHA6RzliZBP_KUYtrvrlgyylyu4AiMY25BSLp5w&oe=632F8CEF', 'https://www.instagram.com/p/Cim7Mvcpf80/', 'uploads/18316568185028519.jpg', 1, '2022-09-21 12:15:05', '2022-09-21 12:15:05'),
(94, 'hm33571', '17977779238713990', 'https://scontent-iad3-2.cdninstagram.com/v/t51.29350-15/306974942_607762877459842_5746665345627432155_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=8ae9d6&_nc_ohc=b-Xc2lO0GMEAX9GmRWl&_nc_ht=scontent-iad3-2.cdninstagram.com&edm=AL-3X8kEAAAA&oh=00_AT-yKrGnvwZIISKGUXGGEIZHhaHLnLax3VcCcNdIWREnBw&oe=6330598C', 'https://scontent-iad3-2.cdninstagram.com/v/t51.29350-15/306974942_607762877459842_5746665345627432155_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=8ae9d6&_nc_ohc=b-Xc2lO0GMEAX9GmRWl&_nc_ht=scontent-iad3-2.cdninstagram.com&edm=AL-3X8kEAAAA&oh=00_AT-yKrGnvwZIISKGUXGGEIZHhaHLnLax3VcCcNdIWREnBw&oe=6330598C', 'https://www.instagram.com/p/CikZCWtJI9B/', 'uploads/17977779238713990.jpg', 1, '2022-09-21 12:15:05', '2022-09-21 12:15:05'),
(95, 'hm33571', '17966534719745959', 'https://scontent.cdninstagram.com/v/t51.2885-15/306620030_606210944382710_3145653573066040552_n.jpg?stp=dst-jpg_e15_p640x640&_nc_ht=scontent.cdninstagram.com&_nc_cat=102&_nc_ohc=Aq_JZuXR-mEAX_TB-DZ&edm=AMO9-JQAAAAA&ccb=7-5&oh=00_AT94qqG7ZXBrbhFfjDWyMv7bP0yBm7TkU7_eD_h4UFhy2w&oe=632BD226&_nc_sid=b9f2ee', 'https://video-iad3-2.cdninstagram.com/v/t50.33967-16/307444842_191875529884544_3596352467823356583_n.mp4?_nc_cat=109&vs=1726316574393436_783285923&_nc_vs=HBksFQAYJEdHbzhVeEtBdzh5QWdxNEFBS2ZxdGVPRHpfZ3hicV9FQUFBRhUAAsgBABUAGCRHTE4xT0JKTnpPU3pyR1VFQUpvcGV3RTRPdEFCYnFfRUFBQUYVAgLIAQAoABgAGwGIB3VzZV9vaWwBMRUAACayjfnLuYGEQBUCKAJDMywXQEBhJul41P4YEmRhc2hfYmFzZWxpbmVfMV92MREAdQAA&ccb=1-7&_nc_sid=59939d&efg=eyJ2ZW5jb2RlX3RhZyI6InZ0c192b2RfdXJsZ2VuLjcyMC5jbGlwcyJ9&_nc_ohc=DpvdYZ7NNHsAX-sR0Wi&_nc_ht=video-iad3-2.cdninstagram.com&edm=AL-3X8kEAAAA&oh=00_AT_dhpuR5lr4NWPsO1MRASQAYR9UVcYI5Pvf57CcYLiW3A&oe=632BB70D&_nc_rid=b3e35cf2b1', 'https://www.instagram.com/reel/Cihy_anIa6c/', 'uploads/17966534719745959.jpg', 1, '2022-09-21 12:15:06', '2022-09-21 12:15:06'),
(96, 'hm33571', '17909266262540050', 'https://scontent-iad3-2.cdninstagram.com/v/t51.29350-15/306463703_602650464895404_6741723707443504839_n.webp?stp=dst-jpg&_nc_cat=108&ccb=1-7&_nc_sid=8ae9d6&_nc_ohc=rFQnz0O8FDEAX_K92mR&_nc_ht=scontent-iad3-2.cdninstagram.com&edm=AL-3X8kEAAAA&oh=00_AT_-6ZbFoCF-HC8LMhV4Z5nBzAwZHbsS2czvtugr2wM5Zg&oe=63306513', 'https://scontent-iad3-2.cdninstagram.com/v/t51.29350-15/306463703_602650464895404_6741723707443504839_n.webp?stp=dst-jpg&_nc_cat=108&ccb=1-7&_nc_sid=8ae9d6&_nc_ohc=rFQnz0O8FDEAX_K92mR&_nc_ht=scontent-iad3-2.cdninstagram.com&edm=AL-3X8kEAAAA&oh=00_AT_-6ZbFoCF-HC8LMhV4Z5nBzAwZHbsS2czvtugr2wM5Zg&oe=63306513', 'https://www.instagram.com/p/CifPjJLI-Hh/', 'uploads/17909266262540050.jpg', 1, '2022-09-21 12:15:06', '2022-09-21 12:15:06'),
(97, 'hm33571', '18210255679160319', 'https://scontent-iad3-2.cdninstagram.com/v/t51.29350-15/306396179_630243152067600_2281266259857081717_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=8ae9d6&_nc_ohc=hjmrBtSg4ZAAX9Ks6Rv&_nc_ht=scontent-iad3-2.cdninstagram.com&edm=AL-3X8kEAAAA&oh=00_AT8M6v2_zYcjAhz987kOfKp8wGbIJaRz1gpvnMMJZcqFUQ&oe=632F2B32', 'https://scontent-iad3-2.cdninstagram.com/v/t51.29350-15/306396179_630243152067600_2281266259857081717_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=8ae9d6&_nc_ohc=hjmrBtSg4ZAAX9Ks6Rv&_nc_ht=scontent-iad3-2.cdninstagram.com&edm=AL-3X8kEAAAA&oh=00_AT8M6v2_zYcjAhz987kOfKp8wGbIJaRz1gpvnMMJZcqFUQ&oe=632F2B32', 'https://www.instagram.com/p/CicqUZkoHy_/', 'uploads/18210255679160319.jpg', 1, '2022-09-21 12:15:07', '2022-09-21 12:15:07'),
(98, 'hm33571', '17950691828178852', 'https://scontent-ord5-1.cdninstagram.com/v/t51.29350-15/309301831_515681213723488_2493158839800985156_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=8ae9d6&_nc_ohc=w0bnPdP_Lb4AX_VOx-i&_nc_ht=scontent-ord5-1.cdninstagram.com&edm=AL-3X8kEAAAA&oh=00_AT9p1dPCfRD60bB_IN5UgnbctCN1QUpyDfxE15OAGIlahQ&oe=633901D5', 'https://scontent-ord5-1.cdninstagram.com/v/t51.29350-15/309301831_515681213723488_2493158839800985156_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=8ae9d6&_nc_ohc=w0bnPdP_Lb4AX_VOx-i&_nc_ht=scontent-ord5-1.cdninstagram.com&edm=AL-3X8kEAAAA&oh=00_AT9p1dPCfRD60bB_IN5UgnbctCN1QUpyDfxE15OAGIlahQ&oe=633901D5', 'https://www.instagram.com/p/CjDQzUXIzkS/', 'uploads/17950691828178852.jpg', 1, '2022-09-28 11:30:03', '2022-09-28 11:30:03'),
(99, 'hm33571', '17925938330533552', 'https://scontent.cdninstagram.com/v/t51.2885-15/309213584_2123341967854937_826149414672272243_n.jpg?stp=dst-jpg_e15_p640x640&_nc_ht=scontent.cdninstagram.com&_nc_cat=105&_nc_ohc=HqAdjj3BJ0QAX85lpF_&edm=AMO9-JQAAAAA&ccb=7-5&oh=00_AT8dj6x5-JF5GkbKqh7mo3omiDJY23EdBDWboskXswJTWA&oe=63350E29&_nc_sid=b9f2ee', 'https://video-ord5-1.cdninstagram.com/v/t50.33967-16/309223649_522138496390456_2699387211700999680_n.mp4?_nc_cat=101&vs=1111951802767436_776930703&_nc_vs=HBksFQAYJEdPRmdiaEk0MVpuWDRkb0JBQUNXcS1oZEpuWWxicV9FQUFBRhUAAsgBABUAGCRHSjBXV3hLY1hIeTR0cU1BQUlCdUlwYmZHeUl0YnFfRUFBQUYVAgLIAQAoABgAGwGIB3VzZV9vaWwBMRUAACbC38KHk8O2PxUCKAJDMywXQC4AAAAAAAAYEmRhc2hfYmFzZWxpbmVfMV92MREAdQAA&ccb=1-7&_nc_sid=59939d&efg=eyJ2ZW5jb2RlX3RhZyI6InZ0c192b2RfdXJsZ2VuLjcyMC5jbGlwcyJ9&_nc_ohc=_sfzF5TM98IAX_EcF1z&_nc_ht=video-ord5-1.cdninstagram.com&edm=AL-3X8kEAAAA&oh=00_AT_nHQHzZ0UWTiXQJoYw_cuxxQaIgQoCm32TQ8Wszh75nw&oe=6334FB38&_nc_rid=ebbdd244b1', 'https://www.instagram.com/reel/Ci-IEyop16X/', 'uploads/17925938330533552.jpg', 1, '2022-09-28 11:30:03', '2022-09-28 11:30:03'),
(100, 'hm33571', '17859520697801494', 'https://scontent-ord5-1.cdninstagram.com/v/t51.29350-15/308706056_2942304139399759_9160586022687291575_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=8ae9d6&_nc_ohc=18xtz4lsqcgAX_GQKFB&_nc_oc=AQmRwKtBC_G9LGxMIDoc0d2DLoaMHELxC1qLqP5xkEmudmZzbuWepHiOwrt2nsh1B2g&_nc_ht=scontent-ord5-1.cdninstagram.com&edm=AL-3X8kEAAAA&oh=00_AT89p7r-P-j7GbcFQ8_Ke0DlSy_AxVBeymzIoIFkEPfREg&oe=6338BE1B', 'https://scontent-ord5-1.cdninstagram.com/v/t51.29350-15/308706056_2942304139399759_9160586022687291575_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=8ae9d6&_nc_ohc=18xtz4lsqcgAX_GQKFB&_nc_oc=AQmRwKtBC_G9LGxMIDoc0d2DLoaMHELxC1qLqP5xkEmudmZzbuWepHiOwrt2nsh1B2g&_nc_ht=scontent-ord5-1.cdninstagram.com&edm=AL-3X8kEAAAA&oh=00_AT89p7r-P-j7GbcFQ8_Ke0DlSy_AxVBeymzIoIFkEPfREg&oe=6338BE1B', 'https://www.instagram.com/p/Ci7lC7xpFhE/', 'uploads/17859520697801494.jpg', 1, '2022-09-28 11:30:04', '2022-09-28 11:30:04'),
(101, 'hm33571', '17922265238558401', 'https://scontent-ord5-1.cdninstagram.com/v/t51.29350-15/308807876_177717038120020_2180818457591595070_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=8ae9d6&_nc_ohc=dK_gbSO3I7YAX-ZtqIc&_nc_oc=AQn0GH-hotnSbxxcoZQf9cLwFNq3g02x7OygzKzdl630eETePaVDrjP-w-730RngRyM&_nc_ht=scontent-ord5-1.cdninstagram.com&edm=AL-3X8kEAAAA&oh=00_AT8hM_G5cMyytdDUyqGXi4xTXumEFO6UOIq1XMRZ-fAZ5g&oe=6338B39E', 'https://scontent-ord5-1.cdninstagram.com/v/t51.29350-15/308807876_177717038120020_2180818457591595070_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=8ae9d6&_nc_ohc=dK_gbSO3I7YAX-ZtqIc&_nc_oc=AQn0GH-hotnSbxxcoZQf9cLwFNq3g02x7OygzKzdl630eETePaVDrjP-w-730RngRyM&_nc_ht=scontent-ord5-1.cdninstagram.com&edm=AL-3X8kEAAAA&oh=00_AT8hM_G5cMyytdDUyqGXi4xTXumEFO6UOIq1XMRZ-fAZ5g&oe=6338B39E', 'https://www.instagram.com/p/Ci4_ucnJeS-/', 'uploads/17922265238558401.jpg', 1, '2022-09-28 11:30:04', '2022-09-28 11:30:04'),
(102, 'hm33571', '17942274980166749', 'https://scontent-ord5-1.cdninstagram.com/v/t51.29350-15/308811443_945095656448215_878901192077861347_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=8ae9d6&_nc_ohc=cvSFtHRpLe4AX-kXa-5&_nc_ht=scontent-ord5-1.cdninstagram.com&edm=AL-3X8kEAAAA&oh=00_AT8GleHY7xbqhVWfDJZggX_cg121Py4VsMdMBlqVNKYNjg&oe=63396521', 'https://scontent-ord5-1.cdninstagram.com/v/t51.29350-15/308811443_945095656448215_878901192077861347_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=8ae9d6&_nc_ohc=cvSFtHRpLe4AX-kXa-5&_nc_ht=scontent-ord5-1.cdninstagram.com&edm=AL-3X8kEAAAA&oh=00_AT8GleHY7xbqhVWfDJZggX_cg121Py4VsMdMBlqVNKYNjg&oe=63396521', 'https://www.instagram.com/p/Ci2aMV8JiwT/', 'uploads/17942274980166749.jpg', 1, '2022-09-28 11:30:04', '2022-09-28 11:30:04'),
(103, 'hm33571', '18232218493182793', 'https://scontent-ord5-1.cdninstagram.com/v/t51.29350-15/308242005_809474170193257_5339667012791554952_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=8ae9d6&_nc_ohc=KZe0CqqSyBkAX_Pg_z-&_nc_ht=scontent-ord5-1.cdninstagram.com&edm=AL-3X8kEAAAA&oh=00_AT-jDsuGvAmeqxs7gmqvQ0ADx0D7bb59lJHxNw_YsqbuLg&oe=63387A8B', 'https://scontent-ord5-1.cdninstagram.com/v/t51.29350-15/308242005_809474170193257_5339667012791554952_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=8ae9d6&_nc_ohc=KZe0CqqSyBkAX_Pg_z-&_nc_ht=scontent-ord5-1.cdninstagram.com&edm=AL-3X8kEAAAA&oh=00_AT-jDsuGvAmeqxs7gmqvQ0ADx0D7bb59lJHxNw_YsqbuLg&oe=63387A8B', 'https://www.instagram.com/p/Ciz0cL_J64t/', 'uploads/18232218493182793.jpg', 1, '2022-09-28 11:30:05', '2022-09-28 11:30:05'),
(104, 'hm33571', '18007366708486727', 'https://scontent-iad3-2.cdninstagram.com/v/t51.29350-15/309344403_2277277919088234_789777867380623934_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=8ae9d6&_nc_ohc=SRrDK7RI3-QAX8h1NJv&_nc_ht=scontent-iad3-2.cdninstagram.com&edm=AL-3X8kEAAAA&oh=00_AT_L8lCh4WaJXovNa7l-88q1A_a0fs04OVgTSLwj7FFQYg&oe=633E8C1E', 'https://scontent-iad3-2.cdninstagram.com/v/t51.29350-15/309344403_2277277919088234_789777867380623934_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=8ae9d6&_nc_ohc=SRrDK7RI3-QAX8h1NJv&_nc_ht=scontent-iad3-2.cdninstagram.com&edm=AL-3X8kEAAAA&oh=00_AT_L8lCh4WaJXovNa7l-88q1A_a0fs04OVgTSLwj7FFQYg&oe=633E8C1E', 'https://www.instagram.com/p/CjNlR9VpdWt/', 'uploads/18007366708486727.jpg', 1, '2022-10-02 14:00:04', '2022-10-02 14:00:04'),
(105, 'hm33571', '18223396672152751', 'https://scontent.cdninstagram.com/v/t51.2885-15/309356155_666846881208387_265291451787921644_n.jpg?stp=dst-jpg_e15_p640x640&_nc_ht=scontent.cdninstagram.com&_nc_cat=103&_nc_ohc=t8sViCxLRQsAX_gugbH&edm=AMO9-JQAAAAA&ccb=7-5&oh=00_AT9hu7ARhXUN1ss-IvQBAXufUm1Q6kR6SkYXCAFRiJh72g&oe=633A6B5B&_nc_sid=b9f2ee', 'https://video-iad3-2.cdninstagram.com/v/t50.33967-16/310110424_486259296729263_5317026411139941917_n.mp4?_nc_cat=106&vs=1059680134748981_2499363684&_nc_vs=HBksFQAYJEdOam9leEt2ZUtZUVFMb0JBQjNHWGFGWjM4bEpicV9FQUFBRhUAAsgBABUAGCRHR18wY2hMR252d0NWY2NDQUk2RnJGSVlVZXBMYnFfRUFBQUYVAgLIAQAoABgAGwGIB3VzZV9vaWwBMRUAACaE5pLGlNeRQBUCKAJDMywXQDUAAAAAAAAYEmRhc2hfYmFzZWxpbmVfMV92MREAdQAA&ccb=1-7&_nc_sid=59939d&efg=eyJ2ZW5jb2RlX3RhZyI6InZ0c192b2RfdXJsZ2VuLjcyMC5jbGlwcyJ9&_nc_ohc=RG05AIYYghYAX-JyzkR&_nc_ht=video-iad3-2.cdninstagram.com&edm=AL-3X8kEAAAA&oh=00_AT-CVj4kbxoieuRXoWKDCyDxYASBjzntxbdwazAMJEIUzw&oe=633A76CB&_nc_rid=3779400327', 'https://www.instagram.com/reel/CjIfv1QIYjf/', 'uploads/18223396672152751.jpg', 1, '2022-10-02 14:00:04', '2022-10-02 14:00:04');

-- --------------------------------------------------------

--
-- Table structure for table `lessons`
--

CREATE TABLE `lessons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `class_id` bigint(20) UNSIGNED DEFAULT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `weekdays` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lessons`
--

INSERT INTO `lessons` (`id`, `class_id`, `start_date`, `end_date`, `weekdays`, `start_time`, `end_time`, `created_at`, `updated_at`) VALUES
(1, 1, '2022-08-01', '2022-12-31', 'Mon,Sun,Fri', '07:00:00', '08:00:00', '2022-08-09 06:10:26', '2022-08-09 09:28:31');

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
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_05_22_084301_create_destinations_table', 2),
(6, '2022_05_22_110127_create_trips_table', 3),
(7, '2022_05_22_130420_create_rooms_table', 4),
(8, '2022_05_22_155631_add_details_to_rooms', 5),
(9, '2022_05_25_193204_create_bookings_table', 6),
(10, '2022_05_26_045104_create_booked_rooms_table', 7),
(11, '2022_05_26_051301_create_guests_table', 8),
(12, '2022_05_26_102826_add_payment_to_bookings_table', 9),
(13, '2022_05_27_083156_create_boat_providers_table', 10),
(14, '2022_05_27_084243_create_boats_table', 11),
(15, '2022_05_27_084954_create_boat_bookings_table', 12),
(16, '2022_05_27_091628_create_boat_guests_table', 13),
(18, '2022_05_27_093414_create_addons_table', 14),
(20, '2022_05_27_101925_create_addon_bookings_table', 15),
(21, '2022_05_30_081437_create_destination_images_table', 16),
(22, '2022_05_30_100732_add_images_to_distinations_table', 17),
(23, '2022_05_31_071357_add_display_label_to_trip_table', 18),
(25, '2022_05_31_103939_create_contacts_table', 19),
(26, '2022_06_01_090826_add_banner_to_destinations_table', 20),
(28, '2022_06_01_160017_create_highlights_table', 21),
(29, '2022_06_05_165945_add_userid_to_providers_table', 22),
(30, '2022_06_06_063531_add_filament_to_users_table', 23),
(32, '2022_06_06_064710_create_permission_tables', 24),
(33, '2022_06_08_172738_create_room_details_table', 25),
(34, '2022_06_09_171724_create_room_images_table', 26),
(35, '2022_06_11_162804_create_room_options_table', 27),
(36, '2022_06_11_163340_add_roomoptions_to_booking_table', 27),
(38, '2022_06_13_134008_add_membership_to_bookings_table', 28),
(39, '2022_06_13_171820_create_coupons_table', 29),
(40, '2022_06_14_074403_create_pages_table', 30),
(41, '2022_06_16_160355_create_newsletter_emails_table', 31),
(42, '2022_06_16_185231_add_roommincapacity_to_room_table', 32),
(43, '2022_06_20_070959_create_instagram_basic_profile_table', 33),
(44, '2022_06_20_070959_create_instagram_feed_token_table', 33),
(46, '2022_06_20_105512_create_instagram_feeds_table', 34),
(49, '2022_06_20_164653_create_options_table', 35),
(50, '2022_06_20_175731_add_trackingcode_to_booking_table', 36),
(52, '2022_06_21_045108_create_strip_images_table', 37),
(53, '2022_06_21_061129_add_videobanner_to_destinations_table', 38),
(54, '2022_06_21_071138_create_slider_images_table', 39),
(55, '2022_06_21_092439_add__page_field_to_strip_mages_table', 40),
(56, '2022_06_25_072658_create_room_option_details_table', 41),
(57, '2022_06_27_073411_create_package_details_table', 42),
(58, '2022_07_01_173654_create_club_contacts_table', 43),
(59, '2022_07_02_144411_create_surfit_taps_table', 44),
(60, '2022_07_17_185854_add__slug_to_destinations_table', 45),
(61, '2022_07_17_192830_add_meta_to_destinations_table', 46),
(62, '2022_07_24_151223_add_roletype_to_users_table', 47),
(63, '2019_05_03_000001_create_customer_columns', 48),
(64, '2019_05_03_000002_create_subscriptions_table', 48),
(65, '2019_05_03_000003_create_subscription_items_table', 48),
(66, '2022_07_25_102830_create_plans_table', 49),
(67, '2022_07_31_165250_add_product_id_to_plans_table', 50),
(68, '2022_08_01_161427_add_display_order_to_destinations_table', 51),
(71, '2022_08_08_110233_create_program_classes_table', 52),
(72, '2022_08_08_115912_create_lessons_table', 52),
(74, '2022_08_11_075902_create_booked_lessons_table', 53),
(75, '2022_08_12_065623_add_plans_to_program_classes_table', 54),
(76, '2022_08_12_091411_add_mobile_to_users_table', 55),
(77, '2022_08_12_160305_add_soft_deletes_to_trips_table', 56),
(78, '2023_04_12_204026_create_sessions_table', 57);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(2, 'App\\Models\\User', 1),
(1, 'App\\Models\\User', 3),
(1, 'App\\Models\\User', 5);

-- --------------------------------------------------------

--
-- Table structure for table `newsletter_emails`
--

CREATE TABLE `newsletter_emails` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `newsletter_emails`
--

INSERT INTO `newsletter_emails` (`id`, `email`, `name`, `ip`, `created_at`, `updated_at`) VALUES
(1, 'omar@omarnas.com', 'omar nas', '87.200.155.253', '2022-06-16 13:41:22', '2022-06-16 13:41:22'),
(2, 'omar@omarnas.com', 'omar nas', '87.200.155.253', '2022-06-16 13:42:45', '2022-06-16 13:42:45'),
(3, 'revision@zianetwork.com', 'h k', '156.34.3.44', '2022-06-17 07:40:44', '2022-06-17 07:40:44'),
(4, 'omar@omarnas.com', 'omar na', '87.200.155.253', '2022-06-17 07:50:40', '2022-06-17 07:50:40'),
(5, 'omar@omarnas.com', 'omar nas', '87.200.155.253', '2022-06-17 07:55:45', '2022-06-17 07:55:45'),
(6, 'revision@zianetwork.com', 'l l', '156.34.3.44', '2022-06-17 13:12:57', '2022-06-17 13:12:57'),
(7, 'nassm11@gmail.com', 'Mohamed Nass', '77.69.163.73', '2022-06-22 12:07:58', '2022-06-22 12:07:58'),
(8, 'nozimjon271099@gmail.com', 'Nozimjon Kamalov', '217.165.129.71', '2022-07-23 14:31:39', '2022-07-23 14:31:39'),
(9, 'jasukaur2000@gmail.com', 'Jasleen Kaur', '5.192.137.14', '2022-08-07 11:11:23', '2022-08-07 11:11:23'),
(10, 'ahilmansoor@gmail.com', 'Ahil Mansoor', '5.195.231.173', '2022-08-15 10:53:34', '2022-08-15 10:53:34'),
(11, 'georgieclohessy@hotmail.com', 'Georgie Clohessy', '87.200.201.219', '2022-08-19 19:46:43', '2022-08-19 19:46:43'),
(12, 'blinkstem@gmail.com', 'Shafiq Ali', '5.31.188.252', '2022-08-29 15:12:04', '2022-08-29 15:12:04'),
(13, 'estemailnoesimportante@gmail.com', 'David Ortega Franco', '92.97.128.247', '2022-09-16 09:21:07', '2022-09-16 09:21:07'),
(14, 'robsilsbury@gmail.com', 'Rob Silsbury', '91.75.91.37', '2022-12-23 04:21:57', '2022-12-23 04:21:57'),
(15, 'mariamrousan@gmail.com', 'Mariam Rousan', '80.227.78.84', '2023-01-03 10:53:34', '2023-01-03 10:53:34'),
(16, 'kkmda555@gmail.com', 'Khalifa Almazroui', '86.99.165.42', '2023-01-31 19:07:01', '2023-01-31 19:07:01');

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `option_value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `option_boolean` tinyint(1) NOT NULL,
  `option_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `option_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `option_group` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`id`, `option_name`, `slug`, `option_value`, `option_boolean`, `option_type`, `option_description`, `option_group`, `created_at`, `updated_at`) VALUES
(1, 'Coupons', 'coupon', '.', 0, 'toggle', 'Disable or enable coupon section', 'booking', '2022-06-20 13:10:37', '2022-06-20 13:18:11');

-- --------------------------------------------------------

--
-- Table structure for table `package_details`
--

CREATE TABLE `package_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `destination_id` bigint(20) UNSIGNED DEFAULT NULL,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `class` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `style` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `display_order` int(11) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `package_details`
--

INSERT INTO `package_details` (`id`, `destination_id`, `title`, `description`, `image`, `icon`, `class`, `style`, `display_order`, `created_at`, `updated_at`) VALUES
(2, 19, 'TRAVEL INFO', '<p><strong>Flights</strong><br>We will always recommend the flight options, however, you are free to choose your own and catch us up on the meeting time. Upon<br>arrival, The Surfing Week team will arrange your airport transfers.</p><p class=\"p2\">If you are already there, or you wish to manage your flights on your own, you need to pick a suitable time to fly, and keep us in your plans to arrange your airport transfer.<br>Note: *Flights are not included in our packages</p><p class=\"p1\"><strong>Visa</strong><br>Before departing for your adventure, you need to prepare yourself with the information about the Visa and requirements to enter your destination country.<br>Note: *Visas are not included in our package</p><p class=\"p1\"><strong>COVID-19 Protocols</strong><br>Rules around COVID-19 are still in place in many countries around the world. Based on the destination, we will advise on the rules &amp;<br>regulations and try to stay up to date, however, please do your checks always with your airlines carriers.<br>Note: *Tests, vaccinations, etc are not included in our package</p><p class=\"p1\"><strong>Travel Insurance</strong><br>Travel insurance is mandatory, please make sure you have a travel insurance which covers action sports as well as COVID-19.<br>Note: *Travel insurance is not included in our package</p><p class=\"p2\"><strong>Recommended insurance provider:</strong><br><a href=\"https://www.worldnomads.com/travel-insurance\" target=\"_blank\">https://www.worldnomads.com/travel-insurance</a></p>', NULL, 'disclamer', NULL, NULL, 1, '2022-06-29 10:21:01', '2022-06-29 10:32:02'),
(3, 19, 'Location', '<p><strong>Hidden Valley by S Resorts</strong><br><strong>Jl Nabor 29 Pecatu, Uluwatu, Bali, Indonesia, 80361</strong></p><p class=\"p3\">One of a kind, Hidden Valley Resort is truly a place like no other. Nestled into an idyllic location on the Bukit peninsula, Hidden Valley Resort is the ideal accommodation to explore the best of Bali.</p><p class=\"p3\">With some of Bali’s most renowned surfing, restaurants, cliff-top day clubs and attractions just moments away, an award-winning surf guiding team and tropical gardens encompassing the resort, Hidden Valley is the perfect choice for discerning guests searching for peace, tranquility, and perfect waves.</p>', NULL, 'map', NULL, NULL, 2, '2022-06-29 10:40:10', '2022-06-29 10:40:10'),
(4, 19, 'ACCOMMODATION', '<p><strong>All Rooms feature</strong></p><ul><li><p>Air-conditioning</p></li><li><p>Mini Fridge</p></li><li><p class=\"p2\">Ensuite bathrooms with luxury, organic amenities</p></li><li><p class=\"p2\">Flat screen television with cable channels</p></li><li><p class=\"p2\">WIFI</p></li><li><p class=\"p2\">In room safe</p></li><li><p class=\"p2\">Coffee &amp; tea making facilities</p></li></ul><p class=\"p2\"><strong>Room Types</strong></p><ul class=\"checked-list\"><li><p class=\"p2\"><strong>Standard Room</strong><br>Enjoy great views over our two main pools and lush tropical gardens. Located on the ground floor of our main building complex, choose between single twin and double bed configurations, as well as interconnecting rooms.</p></li><li><p class=\"p2\"><strong>Superior Room</strong><br>Located on the second floor of our main building complex, these rooms feature expansive views over the resort, picturesque valley and treetops towards the ocean. Rooms allow easy access to our gardens and tropical pool below.</p></li><li><p class=\"p2\"><strong>VIP Room</strong><br>Become a VIP legend when staying in one of our best suites, with plenty of room to relax. Located in the centre of the main resort complex, just a short stroll to the main swimming pool &amp; restaurant, the VIP suites are spacious &amp; modern in design.</p></li></ul><p class=\"p2\"><strong>Room Configuration &amp; Packages</strong></p><p style=\"text-align: center\" class=\"p2\"><img src=\"https://thesurfingweek.com/storage/images/78dba724-a3c8-4fb3-a229-be2382e8facb.png\"></p>', NULL, 'bed', 'roomlist', NULL, 4, '2022-06-29 10:48:20', '2023-02-16 12:39:01'),
(5, 19, 'WHAT’S INCLUDED', '<ul><li><p>Airport Transfers</p></li><li><p class=\"p1\">10 x Surf sessions with pro coaching</p></li><li><p class=\"p1\">Beginner surfboards</p></li><li><p class=\"p1\">Photos/videos analysis</p></li><li><p class=\"p1\">Choose food option</p></li><li><p class=\"p1\">3 x Yoga</p></li><li><p class=\"p1\">1 x Surf Fit</p></li><li><p class=\"p1\">1 x BBQ Party</p></li><li><p class=\"p1\">Daily use of all yoga &amp; fitness equipment</p></li><li><p class=\"p1\">Daily resort shuttle transfers to local beaches on predetermined route &amp; resort timetable</p></li><li><p class=\"p1\">Unlimited WIFI</p></li><li><p class=\"p1\">Assistance with your extra plans &amp; activities</p></li><li><p class=\"p1\">Full use of all resort facilities</p></li><li><p class=\"p1\">All prevailing government taxes &amp; service charges</p></li></ul>', NULL, 'checkmark', 'roomlist', NULL, 3, '2022-07-01 03:35:46', '2022-07-01 03:35:46'),
(6, 19, 'WHAT’S NOT INCLUDED', '<ul><li><p>Flights</p></li><li><p class=\"p1\">Travel Insurance</p></li><li><p class=\"p1\">Covid-19 Protocols (tests, vaccinations, etc)</p></li><li><p class=\"p1\">Surf transport outside of “The Surfing Week” surf session transport</p></li><li><p class=\"p1\">Alcohol and meals outside of chosen food option</p></li></ul>', NULL, 'circle', 'notIncludeList', NULL, 5, '2022-07-01 03:37:00', '2022-07-01 03:37:59'),
(7, 19, 'ADD-ONS', '<p style=\"text-align: center\"><img src=\"https://thesurfingweek.com/storage/images/7db5b0c5-05f3-4667-8e80-2d99452e1998.png\"></p>', NULL, 'plus', NULL, NULL, 6, '2022-07-01 03:40:12', '2023-02-16 12:39:01'),
(8, 19, 'SCHEDULE OF ACTIVITIES', '<p style=\"text-align: center\"><img src=\"https://thesurfingweek.com/storage/images/234e7202-59d6-4e6f-b271-869ffd99c08a.png\"></p>', NULL, 'calander', NULL, NULL, 0, '2022-07-01 03:43:41', '2023-02-16 12:39:01'),
(9, 20, 'SCHEDULE OF ACTIVITIES', '<p style=\"text-align: center\"><img src=\"https://thesurfingweek.com/storage/images/a78f16f7-3fe8-465f-820b-632d0bdc6bc6.png\"  style=\"max-width:1007px;width:100%\"></p>', NULL, 'calander', NULL, NULL, 0, '2022-07-01 06:37:57', '2022-07-01 06:37:57'),
(10, 20, 'TRAVEL INFO', '<p><strong>Flights</strong><br>We will always recommend the flight options, however, you are free to choose your own and catch us up on the meeting time. Upon<br>arrival, The Surfing Week team will arrange your airport transfers.</p><p class=\"p2\">If you are already there, or you wish to manage your flights on your own, you need to pick a suitable time to fly, and keep us in your plans to arrange your airport transfer.<br>Note: *Flights are not included in our packages</p><p class=\"p1\"><strong>Visa</strong><br>Before departing for your adventure, you need to prepare yourself with the information about the Visa and requirements to enter your destination country.<br>Note: *Visas are not included in our package</p><p class=\"p1\"><strong>COVID-19 Protocols</strong><br>Rules around COVID-19 are still in place in many countries around the world. Based on the destination, we will advise on the rules &amp;<br>regulations and try to stay up to date, however, please do your checks always with your airlines carriers.<br>Note: *Tests, vaccinations, etc are not included in our package</p><p class=\"p1\"><strong>Travel Insurance</strong><br>Travel insurance is mandatory, please make sure you have a travel insurance which covers action sports as well as COVID-19.<br>Note: *Travel insurance is not included in our package</p><p class=\"p2\"><strong>Recommended insurance provider:</strong><br><a href=\"https://www.worldnomads.com/travel-insurance\" target=\"_blank\">https://www.worldnomads.com/travel-insurance</a></p>', NULL, 'disclamer', NULL, NULL, 1, '2022-07-01 06:37:57', '2022-07-01 06:50:26'),
(11, 20, 'Location', '<p><strong>STAY Wellbeing and Lifestyle Resort</strong><br><strong>80/56 Moo 4, Soi Suksan 2, Wiset Rd., Rawai, Mueang, Phuket, Thailand, 83130</strong></p><p>STAY Wellbeing &amp; Lifestyle Resort is Phuket’s premier fitness inclusive resort and home to STAY FIT, LeSpa by Stay, Fresca Kitchens &amp; Deli and STAY Green Café.</p><p>STAY FIT during your holidays with our 1,000 sqm fitness center. Considered as one of the best gyms in Asia, STAY Fit is comprised of three floors of top-of-the-line Life Fitness equipment. Choose from group classes daily, ranging from Yoga &amp; Strength training to Station 10 HIIT classes, a program exclusive to STAY Wellbeing &amp; Lifestyle Resort. Group classes are taught by our professional trainers &amp; accessible to all levels.</p><p>Reawaken your senses at LeSpa by STAY with the gentle touch and exceptional attention provided by highly-trained therapists, along with the use of Panpuri treatments. Or simply enjoy our wide range of Onsen baths and facilities. Guests will enjoy a 5 Star dining experience at our restaurants, Fresca Kitchens &amp; Deli which features a wide array of international food with carefully selected products. Lounge around one of our four swimming pools during your off-time and enjoy one of your favorite drinks at STAY Green.</p><p>Unlock true relaxation on your vacation on our wonderful island, in an SHA EXTRA+ Phuket Sandbox Hotel. STAY Wellbeing &amp; Lifestyle Resort features 162 private suites and villas with top-of-the-range facilities. Decorated with a modern perspective, and designed to cater the best possible comfort and experiences for peace seekers. The resort is located in the Southern part of Phuket, situated within minutes from the hidden gem Rawai and Nai Harn beaches.</p><p>Discover Paradise at STAY Wellbeing &amp; Lifestyle Resort in Phuket; SHA EXTRA+ Phuket Sandbox Hotel Certified resort.</p>', NULL, 'map', NULL, NULL, 2, '2022-07-01 06:48:57', '2022-07-01 06:50:26'),
(12, 20, 'ACCOMMODATION', '<p><strong>All Rooms feature</strong></p><ul><li><p>Free WiFi</p></li><li><p class=\"p1\">Satellite &amp; SMART Television</p></li><li><p class=\"p1\">Bedside USB socket</p></li><li><p class=\"p1\">Safe deposit box</p></li><li><p class=\"p1\">Coffee machine</p></li><li><p class=\"p1\">Kettle</p></li><li><p class=\"p1\">Air conditioning</p></li><li><p class=\"p1\">Slippers &amp; bathroom amenities</p></li><li><p class=\"p1\">Hairdryer</p></li><li><p class=\"p1\">Umbrella</p></li><li><p class=\"p1\">Daily maid service</p></li></ul><p class=\"p1\"><strong>Room Types</strong></p><ul class=\"checked-list\"><li><p class=\"p1\"><strong>Junior Suite (Garden View)</strong><br>A 35 sqm unit with a maximum capacity to comfortably accommodate 2 adults. The suite features modern in-room technology, including electronic and atmospheric control units, a large balcony offering seamless indoor and outdoor living. Twin bedding is available upon request. Guests will have views of the Resort’s gardens.</p></li><li><p class=\"p1\"><strong>One Bedroom Suite (Garden View)</strong><br>A 45 sqm unit with king-size bedding. The suite conveniently accommodates maximum 2 adults and 1 child. All units feature modern in-room technology, including electronic and atmospheric control units. Guests will have views of the Resort’s gardens. Designed by an award winning architect features a comfortable living room area with 1 bedroom ensuite bathroom. The living area and the bedroom are separated with a sliding partition. All one bedroom suites feature a large balcony offering seamless indoor and outdoor living. All units feature modern in-room technology, including electronic and atmospheric control units. Guests will have views of the Resort’s gardens.</p></li></ul><p class=\"p1\"><strong>Room Configuration &amp; Packages</strong></p><p style=\"text-align: center\" class=\"p1\"><img src=\"https://thesurfingweek.com/storage/images/f9f60ef8-56f4-4e05-9ac0-ddacb33ef7cf.png\"  style=\"max-width:1021;width:100%\"></p>', NULL, 'bed', 'roomlist', NULL, 3, '2022-07-01 06:48:57', '2022-07-01 06:54:26'),
(13, 20, 'WHAT’S INCLUDED', '<ul><li><p>8 x Surf sessions with pro coaching</p></li><li><p class=\"p1\">2 x Yoga</p></li><li><p class=\"p1\">6 x Kickboxing</p></li><li><p class=\"p1\">1 x Boat trip</p></li><li><p class=\"p1\">Airport transfers</p></li><li><p class=\"p1\">Beginner surfboards</p></li><li><p class=\"p1\">Photos/videos analysis</p></li><li><p class=\"p1\">Chosen food option</p></li><li><p class=\"p1\">Complimentary high speed internet</p></li><li><p class=\"p1\">Complimentary access to STAYFIT fitness (1,000 sq.m.)</p></li><li><p class=\"p1\">Assistance with your extra plans &amp; activities</p></li></ul>', NULL, 'checkmark', 'roomlist', NULL, 4, '2022-07-01 06:54:26', '2022-07-01 06:54:26'),
(14, 20, 'WHAT’S NOT INCLUDED', '<ul><li><p>Flights</p></li><li><p class=\"p1\">Travel Insurance</p></li><li><p class=\"p1\">Covid-19 Protocols (tests, vaccinations, etc)</p></li><li><p class=\"p1\">Surf transport outside of “The Surfing Week” surf session transport</p></li><li><p class=\"p1\">Alcohol and meals outside of chosen food option</p></li></ul>', NULL, 'circle', 'notIncludeList', NULL, 5, '2022-07-01 06:54:26', '2022-07-01 06:54:26'),
(15, 20, 'ADD-ONS', '<p style=\"text-align: center\"><img src=\"https://thesurfingweek.com/storage/images/e702058c-19b6-4aec-8f6c-f08e91077612.png\"   style=\"max-width:1045px;width:100%\"></p><p style=\"text-align: center\"></p><p><strong>LESPA by STAY - ONSEN AREA</strong></p><p>The ultimate way to relax the mind, body and spirit. Leave your stress and worries behind as you soak into the warm, therapeutic waters of our LeSpa Onsen.</p><ul><li><p>Infrared Sauna with Himalayan Salt Wall - Reduces stress and improves ageing of skin.</p></li><li><p class=\"p1\">Steam Room - Improves cardiovascular system, reduce pain and preserve muscle strength, reduce stress .</p></li><li><p class=\"p1\">Ice Wall - Constriction of blood vessels, reduces nervous tension, muscular relaxation, stimulates circulation.</p></li><li><p class=\"p1\">Cold Plunge Pool at 17 degrees - Blood circulation to alternate with hot water bath, steam or sauna.</p></li><li><p class=\"p1\">Badu Jet - High pressure ring body and foot massage bath: reduce anxiety level, improve skin, better circulation, healthier heart function, and pain relief.</p></li><li><p class=\"p1\">Hot Mineral Bath - The sodium bicarbonate and calcium found in mineral hot springs help with good circulation in the body. This can have numerous positive impacts, including lower blood pressure.</p></li><li><p class=\"p1\">Micro Bubble Bath - The microbubbles form a cloud of oxygen in your bath and give you a delightful, effervescent sensation.</p></li></ul><p style=\"text-align: center\" class=\"p1\"><img src=\"https://thesurfingweek.com/storage/images/fd28ca5c-6504-4cce-b2cf-d480f19dd663.png\"    style=\"max-width:1045px;width:100%\"></p><p class=\"p1\"><strong>FLOATING THERAPY</strong></p><p class=\"p1\">Experience greater relaxation while floating in a private floating pod, The Dreampod Cabin. Zero-Gravity Relaxation at its Finest in a Floating Pod. Floating therapy is The Art of Doing Nothing, and, aims at reaching a state of Sensory Deprivation. Floating therapy is a scientifically proven method of reducing stress, speeding up recovery, and has the potential to rewire your brain. It trains your mind to enter a prolonged Theta. Theta state gives us access to unconscious material, free association, sudden insight, and creative inspiration.</p><p style=\"text-align: center\" class=\"p1\"><img src=\"https://thesurfingweek.com/storage/images/c6f3c698-61a8-492c-b58d-9435dafe7441.png\"    style=\"max-width:1045;width:100%\" ></p><p class=\"p1\"><strong>LESPA by STAY - TREATMENTS</strong></p><p class=\"p1\">Experience greater relaxation while floating in a private floating pod, The Dreampod Cabin. Zero-Gravity Relaxation at its Finest in a Floating Pod. Floating therapy is The Art of Doing Nothing, and, aims at reaching a state of Sensory Deprivation. Floating therapy is a scientifically proven method of reducing stress, speeding up recovery, and has the potential to rewire your brain. It trains your mind to enter a prolonged Theta. Theta state gives us access to unconscious material, free association, sudden insight, and creative inspiration.</p><p style=\"text-align: center\" class=\"p1\"><img src=\"https://thesurfingweek.com/storage/images/68c7130d-4d05-48fe-a6f9-07fff23a0623.png\"    style=\"max-width:1045px;width:100%\"></p>', NULL, 'plus', NULL, NULL, 6, '2022-07-01 07:04:40', '2022-07-01 07:04:40'),
(16, 12, 'SCHEDULE OF ACTIVITIES', '<p style=\"text-align: center\"><img src=\"https://thesurfingweek.com/storage/images/4385c48b-e98e-44fc-a925-ca0c11a5ef01.png\"></p>', NULL, 'calander', NULL, NULL, 0, '2022-07-01 06:37:57', '2023-02-23 10:04:32'),
(17, 12, 'TRAVEL INFO', '<p><strong>Flights</strong><br>We will always recommend the flight options, however, you are free to choose your own and catch us up on the meeting time. Upon<br>arrival, The Surfing Week team will arrange your airport transfers.</p><p class=\"p2\">If you are already there, or you wish to manage your flights on your own, you need to pick a suitable time to fly, and keep us in your plans to arrange your airport transfer.<br>Note: *Flights are not included in our packages</p><p class=\"p1\"><strong>Visa</strong><br>Before departing for your adventure, you need to prepare yourself with the information about the Visa and requirements to enter your destination country.<br>Note: *Visas are not included in our package</p><p class=\"p1\"><strong>COVID-19 Protocols</strong><br>Rules around COVID-19 are still in place in many countries around the world. Based on the destination, we will advise on the rules &amp;<br>regulations and try to stay up to date, however, please do your checks always with your airlines carriers.<br>Note: *Tests, vaccinations, etc are not included in our package</p><p class=\"p1\"><strong>Travel Insurance</strong><br>Travel insurance is mandatory, please make sure you have a travel insurance which covers action sports as well as COVID-19.<br>Note: *Travel insurance is not included in our package</p><p class=\"p2\"><strong>Recommended insurance provider:</strong><br><a href=\"https://www.worldnomads.com/travel-insurance\" target=\"_blank\">https://www.worldnomads.com/travel-insurance</a></p>', NULL, 'disclamer', NULL, NULL, 1, '2022-07-01 06:37:57', '2022-07-01 06:50:26'),
(18, 12, 'Location', '<p><strong>Canopus Retreats</strong><br><strong>Amaaz, Athiri Magu, North Male Atoll, Thulusdhoo Island, 08040, Maldives</strong></p><p>Situated on what is arguably the best location on the island, Canopus Retreat is right on the beachfront of Thulusdhoo island, and a short walk away from the tourist \'bikini beach\'.</p><p>The two-storey guesthouse boasts magnificent views of the turquoise lagoon and Chickens and Cokes surf breaks, making the property a surfer\'s paradise. Step out of the guesthouse and roam the island to explore its powdery, white sand beaches and warm, tropical waters.</p><p>There is much to see and do on and around the island and you will surely leave with unforgettable memories. Mingle with friendly locals and experience Maldivian island life at reasonable rates.</p><p></p>', NULL, 'map', NULL, NULL, 2, '2022-07-01 06:48:57', '2023-02-23 10:04:32'),
(19, 12, 'ACCOMMODATION', '<p><strong>All Rooms feature</strong></p><ul><li><p>Free WiFi</p></li><li><p class=\"p1\">Air conditioning</p></li><li><p class=\"p1\">Private bathroom</p></li><li><p class=\"p1\">Ocean view</p></li><li><p class=\"p1\">Balcony with view</p></li><li><p class=\"p1\">Twin or Double Bed</p></li></ul><p class=\"p1\"><strong>Room Types</strong></p><ul class=\"checked-list\"><li><p class=\"p1\"><strong>Ocean View Room</strong><br>A 35 sqm unit with a maximum capacity to comfortably accommodate 2 adults. The suite features modern in-room technology, including electronic and atmospheric control units, a large balcony offering seamless indoor and outdoor living. Twin bedding is available upon request. Guests will have views of the Resort’s gardens.</p><p class=\"p1\"></p></li></ul><p class=\"p1\"><strong>Room Configuration &amp; Packages</strong></p><p style=\"text-align: center\" class=\"p1\"><img src=\"https://thesurfingweek.com/storage/images/5b0fc1fb-e027-489f-a93b-a931aabf921b.png\"></p>', NULL, 'bed', 'roomlist', NULL, 3, '2022-07-01 06:48:57', '2023-02-23 10:04:32'),
(20, 12, 'WHAT’S INCLUDED', '<ul><li><p>Board Offer: Buy 1 Get 1 FREE</p></li><li><p>13 x 2 hr Surf sessions</p></li><li><p>6 x Boat trips</p></li><li><p>In-water photographer</p></li><li><p>Video analysis + Surf program</p></li><li><p>Social media content package</p></li><li><p>Surf trip video</p></li><li><p>All inclusive (3 meals a day)</p></li><li><p>Airport transfers</p></li><li><p>Snorkeling gear</p></li><li><p>Free WIFI</p></li></ul><p></p>', NULL, 'checkmark', 'roomlist', NULL, 4, '2022-07-01 06:54:26', '2023-02-23 10:04:32'),
(21, 12, 'WHAT’S NOT INCLUDED', '<ul><li><p>Flights</p></li><li><p class=\"p1\">Travel Insurance</p></li><li><p class=\"p1\">Covid-19 Protocols (tests, vaccinations, etc)</p></li><li><p class=\"p1\">Surf transport outside of “The Surfing Week” surf session</p></li><li><p class=\"p1\">Drinks and meals outside of full board</p></li></ul>', NULL, 'circle', 'notIncludeList', NULL, 5, '2022-07-01 06:54:26', '2022-07-01 06:54:26'),
(22, 18, 'SCHEDULE OF ACTIVITIES', '<p style=\"text-align: center\"><img src=\"https://thesurfingweek.com/storage/images/5154d2be-c1c6-40a5-a413-989f8341d6c3.png\" width=\"100%\"></p>', NULL, 'calander', NULL, NULL, 0, '2022-07-01 06:37:57', '2023-02-16 12:35:35'),
(23, 18, 'TRAVEL INFO', '<p><strong>Flights</strong><br>We will always recommend the flight options, however, you are free to choose your own and catch us up on the meeting time. Upon<br>arrival, The Surfing Week team will arrange your airport transfers.</p><p class=\"p2\">If you are already there, or you wish to manage your flights on your own, you need to pick a suitable time to fly, and keep us in your plans to arrange your airport transfer.<br>Note: *Flights are not included in our packages</p><p class=\"p1\"><strong>Visa</strong><br>Before departing for your adventure, you need to prepare yourself with the information about the Visa and requirements to enter your destination country.<br>Note: *Visas are not included in our package</p><p class=\"p1\"><strong>COVID-19 Protocols</strong><br>Rules around COVID-19 are still in place in many countries around the world. Based on the destination, we will advise on the rules &amp;<br>regulations and try to stay up to date, however, please do your checks always with your airlines carriers.<br>Note: *Tests, vaccinations, etc are not included in our package</p><p class=\"p1\"><strong>Travel Insurance</strong><br>Travel insurance is mandatory, please make sure you have a travel insurance which covers action sports as well as COVID-19.<br>Note: *Travel insurance is not included in our package</p><p class=\"p2\"><strong>Recommended insurance provider:</strong><br><a href=\"https://www.worldnomads.com/travel-insurance\" target=\"_blank\">https://www.worldnomads.com/travel-insurance</a></p>', NULL, 'disclamer', NULL, NULL, 1, '2022-07-01 06:37:57', '2022-07-01 06:50:26'),
(24, 18, 'Location', '<p><strong>Soul &amp; Surf - Tekanda Retreat</strong><br><strong>Ahangama, South West Coast</strong></p><p>Tekanda offers a special soulful all-inclusive surf, yoga &amp; therapy experience for our guests. The retreat has amazing architecture and is set in a jaw-dropping location only 5 mins ride to the the surfing beach. The team love the beach, love to surf and spend as much time as they can covered in sand and salt.</p><p>But it is also really, really nice to get a little change of scenery after our beach times and see the other side of this lush, biodiverse country. And you do not need to go very far to see it.</p><p>Head inland from Kabalana Beach and in a few minutes you are surrounded by the trees, paddy fields and nature. Palm trees, yes, but the other, diverse tropical rainforest lowlands too.</p><p>From the retreat, you can see one of our favourite places, Koggala Lake, and even spy the Indian Ocean.</p>', NULL, 'map', NULL, NULL, 2, '2022-07-01 06:48:57', '2022-10-18 15:04:03'),
(25, 18, 'ACCOMMODATION', '<p><strong>All Rooms feature</strong></p><ul><li><p>AC</p></li><li><p>En-suite</p></li><li><p>Private verandas</p></li><li><p>Shard lounge area</p></li></ul><p class=\"p1\"><strong>Room Types</strong></p><ul class=\"checked-list\"><li><p class=\"p1\"><strong>Twin and Double Rooms</strong><br>The four large bedrooms within the main house have a lounge area, hand-made wardrobes, AC, en-suite bathrooms and private verandas with views over the surrounding lowlands and paddy fields, plus a gorgeous central courtyard. <br>There is also direct access to a shared day-room with day-beds. These rooms sleep two and can be arranged as a double or a twin. If you’re traveling alone we offer these as shared rooms, or you can pay extra to have it to yourself. There’s also plenty of room to add a spare bed for kids or friends that would like to share.</p></li><li><p class=\"p1\"></p><p class=\"p1\"><strong>Cabana Suite</strong><br>The two spacious cabana suites come complete with private verandahs overlooking the paddy fields. The cabana suites are set away from the other rooms, offering a little more privacy and space. They come with an AC &amp; ensuite bathroom. <br>They are both enormous with a lounge and living area and are perfect for bringing the family or friends along – contact us directly if that’s your plan – or just having a lot of space and privacy for yourselves.</p></li></ul><p class=\"p1\"><strong>Room Configuration &amp; Packages</strong></p><p style=\"text-align: center\" class=\"p1\"><img src=\"https://thesurfingweek.com/storage/images/9a5d377a-865f-4bd5-b90a-8da036fa689e.png\" width=\"100%\"></p>', NULL, 'bed', 'roomlist', NULL, 3, '2022-07-01 06:48:57', '2023-02-16 12:35:35'),
(26, 18, 'WHAT’S INCLUDED', '<ul><li><p>5 x surf lessons across the week</p></li><li><p class=\"p1\">5 x guided ‘free-surf sessions’</p></li><li><p class=\"p1\">5 x surfing workshops</p></li><li><p class=\"p1\">4 x surf video analysis sessions</p></li><li><p class=\"p1\">7 x yoga classes</p></li><li><p class=\"p1\">Surfboards and surfing equipment</p></li><li><p class=\"p1\">Lux accommodation and towels</p></li><li><p class=\"p1\">3 x meals a day</p></li><li><p class=\"p1\">Extra fruit, snacks, tea &amp; coffee available throughout the day</p></li><li><p class=\"p1\">Free flowing filtered drinking water, fruit + coconuts</p></li><li><p class=\"p1\">Wi-fi</p></li><li><p class=\"p1\">1 x cooking demo</p></li><li><p class=\"p1\">1 x guided nature walk on the estate</p></li><li><p class=\"p1\">1 x welcome cocktail</p></li><li><p class=\"p1\">1 x cocktail @ BBQ party night</p></li><li><p class=\"p1\">1 x beer, wine, or soft-drink with evening meal</p></li><li><p class=\"p1\">2 x Group sri lanka airport transfers (fixed time)</p></li><li><p class=\"p1\">Two trees planted per person (via Mossy Earth)</p></li></ul><p></p>', NULL, 'checkmark', 'roomlist', NULL, 4, '2022-07-01 06:54:26', '2022-10-18 15:04:03'),
(27, 18, 'WHAT’S NOT INCLUDED', '<ul><li><p>Flights</p></li><li><p class=\"p1\">Travel Insurance</p></li><li><p class=\"p1\">Covid-19 Protocols (tests, vaccinations, etc)</p></li><li><p class=\"p1\">Surf transport outside of “The Surfing Week” surf session transport</p></li><li><p class=\"p1\">Alcohol and meals outside of chosen food option</p></li></ul>', NULL, 'circle', 'notIncludeList', NULL, 5, '2022-07-01 06:54:26', '2022-10-18 15:04:03');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner_title` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `slug`, `image`, `banner`, `banner_title`, `subtitle`, `short_description`, `content`, `created_at`, `updated_at`) VALUES
(1, 'TERMS & CONDITIONS', 'terms', NULL, NULL, 'TERMS & CONDITIONS', 'This website is owned and operated by The Surfing Week and will be referred to as “We”, “Our” and “Us” in this Terms & Conditions Policy.', 'Terms', '<p><strong>The Surfing Week Booking Conditions</strong></p><p>When booking surf experience or programs with us, you acknowledge that you have read, understood and agree to be bound by our Terms and Conditions. The booking contract is valid when booking has been received and confirmed, together with the full payment per person. In the case of a group booking the group organizer must have the authority to sign on behalf of everyone in the group. The group organizer will be responsible for the full cost of the experience or program including insurance premiums, cancellations and amendment charges. We reserve the right to refuse to accept bookings in our absolute discretion without stating the reason for doing so. Please inform us immediately if there are any discrepancies in the costs or details of your booking.</p><p><strong>Price and Payment</strong></p><p>The booking is a preliminary reservation until payment is received, and can be subjected to cancellation. An entitlement to participate does not arise until the money has been received. The participant subsequently receives a booking confirmation with all necessary details. Once confirmation has been dispatched the full payment is non-refundable. All prices are in United Arab Emirates Dirhams (AED). A full payment of the package’s total amount is required at the time of booking. Payment can be made by credit/debit card.</p><p><strong>Covid-19 Cancellation Policy</strong></p><p>In case you will not be able to participate at the surfing week experience or program due to Covid-19 government related issues (f.e. border closures), you can use your payment for other trips, activities and events to replace your surf trips, lessons and events. Please make sure to contact us immediately. We do not offer refunds.</p><p><strong>Cancellation of The Surfing Week Trips by the Client (not Covid-19 related)</strong></p><p>If you are obliged to cancel your booking you should contact us immediately. The following sliding scale determines if your Surfing Week trip booking is refundable (Cancellation in days before departure &amp; percentage of total refund): • From 61 days or more prior to arrival – 50% • Cancellation from 60 days and less prior to arrival – 0% (you will be charged 100% of the total amount)</p><p><strong>Cancellation of Trip by The Surfing Week</strong></p><p>We reserve the right to cancel your Surfing Week trip in any circumstance. Nevertheless, in no case will we cancel your holiday less than 15 days before the scheduled departure except for reasons of ‘Force Majeure’ which include war, political unrest, strikes, epidemics, natural and technical disaster, closure or congestion of airports, terrorist activity, natural or nuclear disaster industrial dispute, and unavoidable technical problems with transport, fire and adverse weather conditions. No compensation will be paid where the change or cancellation is due to Force Majeure.</p><p><strong>Early Holiday Termination</strong></p><p>While staying with The Surfing Week, clients are expected to behave in an orderly and acceptable manner and are expected to accept responsibility for the conduct of themselves and their party. Should their behaviour threaten the condition of the accommodation, vehicles or seriously impair the enjoyment of other guests, we reserve the right to refuse to further accommodate the guilty party and contractual obligations will be terminated. The guilty party will be liable for the cost of any damage caused.</p><p><strong>Insurance</strong></p><p>We advise bookings should not be made without adequate personal insurance. It is the responsibility of the client to have adequate travel and accident insurance to cover the following: all medical expenses, including treatment, transport, and evacuation; repatriation expenses; loss or delay of luggage; and cancellation or curtailment of a product or service. The client’s insurance should not exclude any planned adventure activities from the time of booking and for the full duration of their stay. Consequently, clients are fully responsible for arranging their own travel insurance that covers surfing, watersports, non-motorised extreme sports and other activities, and they should not book without it. All personal belongings are the client’s sole responsibility. It is also the sole responsibility of the person booking to inform and make sure all members of their party have read, understood, and agree to these terms.</p><p><strong>Liability</strong></p><p>The Surfing Week services and products can contain an element of risk. By accepting our service or product under these provided booking conditions, clients are aware of the inherent risks and potential dangers of their chosen travel / activity. We are not liable for any incidents that may arise and are outside our control. Clients should be aware of regulations and laws in the countries they travel to. We accept no liability for personal injury, death, or damages by the client if the reason for the claimed damages were either the client’s fault or a result of circumstances beyond our control. We accept no liability for additional costs to the client that may occur through delay, accident or disruption of the service or product beyond our control. The client agrees to pay for any damages caused by the client to our facilities or equipment, our employees, and any third parties that provide services for us. The client is obligated to pay the expenses, by whatever means possible, before departure of the site.</p><p><strong>Surf and Weather Conditions</strong></p><p>Under no circumstances can The Surfing Week be held responsible for unsatisfactory surf conditions, including weather, adverse climate conditions, or other natural conditions out of our control. We provide details of surf and weather conditions upon request but it is your responsibility to ensure that all conditions are researched by you and that you are happy with the selected trip.</p><p><strong>Lost and Stolen Property</strong></p><p>We will not be held responsible for any theft or loss of personal possessions from our premises or vehicles. Again, it is the responsibility of the client to be in possession of, and be responsible for money, valid passports, visa permits, vaccinations and preventative medicines, and any other necessary travel documents.</p><p><strong>Transportation</strong></p><p>We provide transportation services to certain destinations for your convenience. The use of these vehicles is taken entirely at your own risk. We take no responsibility for death or personal injury caused through the use of this service.</p><p><strong>Activities &amp; Tours</strong></p><p>We organise a variety of optional activities and tours. Activities, tours and their prices can be subject to change, without prior notice. Clients partake in activities and tours on a voluntary basis and always at their own risk. We are not liable for damages caused whilst on, or participating in, activities and tours.</p><p><strong>Surf Trips, Surf Lessons &amp; Organised Events</strong></p><p>Depending on weather and wave conditions, surf trips, lessons and organised events sometimes cannot take place. We will try to organise other trips, activities and events to replace cancelled surf trips, lessons and events. The cancellation of surf trips, lessons and organised events due to circumstances beyond our control cannot result in complaints. All surf trips, other sports adventures and field trips are provided along with experienced surfers and professionals, but clients participate in all activities at their own risk.</p><p><strong>Photography and Video</strong></p><p>Most of our services include video analysis and photo sessions. By agreeing to these terms and conditions, The Surfing Week reserves the right to use video and photo material for any advertising activity without obtaining further consent. We also reserve the right to use any comments clients make, questionnaires or complimentary letters with respect to our services and products in promotional literature without obtaining further consent.</p><p><strong>Flight arrangements</strong></p><p>Clients are expected to book their owns flights and insurance for the trips. We cannot be held responsible for any delays or other problems, which may arise with your flights.</p><p><strong>Travel Info</strong></p><ul><li>Travel insurance are not included and are mandatory</li><li>Your passport must be valid for 6 months beyond your date of entry</li><li>Plane tickets are not included</li><li>Airport transfers – please check each package for details</li><li>Check and prepare all the travel and health documents required for each country you’re visiting</li></ul><p><strong>Changing your Booking</strong></p><p>We will make every effort to arrange any changes you request after the booking has been confirmed. However, any changes to dates or courses are subject to availability of accommodation and course places. Please contact us for more information.</p><p><strong>Special Requirements and Conditions</strong></p><p>If the client has extraordinary requirements or special medical conditions, such as allergies, physical or mental inability, etc., then please let us know before the start of your Surfing Week trip or activity. We cannot be held responsible for any injury, death, accident or any other form of irregularity which may occur as a result of client’s special requirement or condition.</p><p><strong>Contact:</strong></p><p>Tony Small<br>M: +971 54 4327003<br>WhatsApp: +971 50 2895842<br>Email: tony@thesurfingweek.com<br>or<br>info@thesurfingweek.com</p>', '2022-06-14 04:23:12', '2022-06-14 04:36:29'),
(2, 'RELEASE AGREEMENT', 'release', NULL, NULL, 'RELEASE AGREEMENT', NULL, 'RELEASE OF LIABILITY, WAIVER OF CLAIMS,ASSUMPTION OF RISKS AND INDEMNITY AGREEMENT (hereinafter referred to as the “Release Agreement”) \n\n', '<p><strong>RELEASE OF LIABILITY, WAIVER OF CLAIMS,ASSUMPTION OF RISKS AND INDEMNITY AGREEMENT (hereinafter referred to as the “Release Agreement”)&nbsp;</strong></p><p><strong>BY AGREEING TO THIS DOCUMENT YOU WILL WAIVE OR GIVE UP CERTAIN LEGAL RIGHTS, INCLUDING THE RIGHT TO SUE OR CLAIM COMPENSATION FOLLOWING AN ACCIDENT</strong></p><p><strong>PLEASE READ CAREFULLY</strong></p><p><strong>TO</strong><strong><em>&nbsp;</em></strong></p><p><strong>THE SURFING WEEK</strong> and its directors, officers, employees, instructors, guides, agents, representatives, independent contractors, subcontractors, suppliers, sponsors, successors and assigns (all of whom are hereinafter referred as “<strong>THE RELEASEES</strong>”</p><p><strong>DEFINITION&nbsp;</strong></p><p>In this Release Agreement, the term “<strong>THE ACTIVITIES</strong>” means all trips, activities, events or services provided, arranged, organized, conducted, sponsored or authorized by the Releasees including but not limited to: The Surfing Week Trips; Surfit, Surf-Skate, Wakesurf , Skateboard and other equipment; orientation and instructional courses, tours, seminars, fitness and recreational sessions; and all travel, transport and accommodation and other such activities, events and services in any way connected with or related the Activities.</p><p><br></p><p><strong>REQUIRED EQUIPMENT AND REFUSAL TO LEND TO OTHERS</strong><strong><em>&nbsp;</em></strong></p><p>I have been provided with, and advised to wear at all times, an approved PFD (personal floatation device). I acknowledge that the use of the surfboards, wakeboards, surf-skates, skateboards, etc requires familiarity and training with the equipment. I agree to not permit any person who has not agreed to this Release Agreement with the Releasees to use any equipment provided by the Releasees including but not limited to surfboards, wakeboards, surf-skates, skateboards.</p><p><br></p><p><strong>ASSUMPTION OF RISKS&nbsp;</strong></p><p>I am aware that the Activities involve many risks, dangers and hazards. The risks, dangers and hazards include but are not limited to: accidents which occur during transportation or travel to and from the put in; slip and falls while getting onto or off of the boats; falling off the boards; overturning the boards; loss of balance; impact, collision with or entrapment by trees, logs, deadfall, boats, other boards, paddles or equipment; hypothermia; changing and inclement weather conditions including storms, high wind, high waves, and lightning; encounters with domestic or wild animals; negligence on the part of other participants; and NEGLIGENCE ON THE PART THE RELEASEES, INCLUDING THE FAILURE ON THE PART OF THE RELEASEES TO SAFEGUARD OR PROTECT ME FROM THE RISKS, DANGERS AND HAZARDS OF PARTICIPATING IN THE ACTIVITIES. Communication in the remote terrain which is sometimes used for the Activities is difficult and in the event of an accident, rescue and medical treatment may not be readily available.&nbsp;</p><p><br></p><p><strong>I AM AWARE OF THE RISKS, DANGERS AND HAZARDS ASSOCIATED WITH THE ACTIVITIES AND I FREELY ACCEPT AND FULLY ASSUME ALL SUCH RISKS, DANGERS AND HAZARDS AND THE POSSIBILITY OF PERSONAL INJURY, DEATH, PROPERTY DAMAGE OR LOSS RESULTING THEREFROM.</strong></p><p>In consideration of <strong>THE</strong> <strong>RELEASEES</strong> agreeing to my participation in the Activities and permitting my use of their services, equipment and other facilities, and for other good and valuable consideration, the receipt and sufficiency of which is acknowledged, I hereby agree as follows:</p><p><br></p><ol><li>TO WAIVE ANY AND ALL CLAIMS that I have or may in the future have against the RELEASEES AND TO RELEASE THE RELEASEES from any and all liability for any loss, damage, expense or injury, including death, that I or any other person may suffer or that my next of kin may suffer, as a result of my participation in the Activities, DUE TO ANY CAUSE WHATSOEVER, INCLUDING NEGLIGENCE, BREACH OF CONTRACT, OR BREACH OF ANY STATUTORY OR OTHER DUTY OF CARE, ON THE PART OF THE RELEASEES, AND FURTHER INCLUDING THE FAILURE ON THE PART OF THE RELEASEES TO SAFEGUARD OR PROTECT ME FROM THE MANY RISKS, DANGERS AND HAZARDS OF PARTICIPATING IN THE ACTIVITIES.</li><li>TO HOLD HARMLESS AND INDEMNIFY THE RELEASEES for any and all liability for any property damage, loss or bodily injury to any third party resulting from my participation in the Activities or the use of any of the Releasees’ equipment, including surfboards and wakeboards;&nbsp;</li><li>This Release Agreement shall be effective and binding upon my heirs, next of kin, executors, administrators, assigns and representatives, in the event of my death or incapacity;&nbsp;</li><li>This Release Agreement and any rights, duties and obligations as between the parties to this Release Agreement shall be governed by and interpreted solely in accordance with the laws of the United Arab Emirates and no other jurisdiction; and&nbsp;</li><li>Any litigation involving the parties to this Release Agreement shall be brought solely within the United Arab Emirates and shall be within the exclusive jurisdiction of the Courts the country.</li></ol><p><br></p><p>In entering into this Release Agreement I am not relying on any oral or written representations or statements made by the Releasees with respect to the safety of participating in the Activities, other than what is set forth in this Release Agreement.&nbsp;</p><p><br></p><p><strong>I CONFIRM THAT I HAVE READ AND UNDERSTOOD THIS RELEASE AGREEMENT PRIOR TO BOOKING ANY ACTIVITY, AND I AM AWARE THAT BY BOOKING ANY ACTIVITY OFFERED BY THE SURFING WEEK I AM WAIVING CERTAIN LEGAL RIGHTS WHICH I MAY HAVE AGAINST THE RELEASEES.</strong></p><p><br></p>', '2022-06-14 12:20:01', '2022-06-14 12:20:01');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'view_boatbooking', 'web', '2022-06-06 02:50:15', '2022-06-06 02:50:15'),
(2, 'view_any_boatbooking', 'web', '2022-06-06 02:50:15', '2022-06-06 02:50:15'),
(3, 'create_boatbooking', 'web', '2022-06-06 02:50:15', '2022-06-06 02:50:15'),
(4, 'delete_boatbooking', 'web', '2022-06-06 02:50:15', '2022-06-06 02:50:15'),
(5, 'delete_any_boatbooking', 'web', '2022-06-06 02:50:15', '2022-06-06 02:50:15'),
(6, 'update_boatbooking', 'web', '2022-06-06 02:50:15', '2022-06-06 02:50:15'),
(7, 'export_boatbooking', 'web', '2022-06-06 02:50:15', '2022-06-06 02:50:15'),
(8, 'view_boatguest', 'web', '2022-06-06 02:50:15', '2022-06-06 02:50:15'),
(9, 'view_any_boatguest', 'web', '2022-06-06 02:50:15', '2022-06-06 02:50:15'),
(10, 'create_boatguest', 'web', '2022-06-06 02:50:15', '2022-06-06 02:50:15'),
(11, 'delete_boatguest', 'web', '2022-06-06 02:50:15', '2022-06-06 02:50:15'),
(12, 'delete_any_boatguest', 'web', '2022-06-06 02:50:15', '2022-06-06 02:50:15'),
(13, 'update_boatguest', 'web', '2022-06-06 02:50:15', '2022-06-06 02:50:15'),
(14, 'export_boatguest', 'web', '2022-06-06 02:50:15', '2022-06-06 02:50:15'),
(15, 'view_boat', 'web', '2022-06-06 02:50:15', '2022-06-06 02:50:15'),
(16, 'view_any_boat', 'web', '2022-06-06 02:50:15', '2022-06-06 02:50:15'),
(17, 'create_boat', 'web', '2022-06-06 02:50:15', '2022-06-06 02:50:15'),
(18, 'delete_boat', 'web', '2022-06-06 02:50:15', '2022-06-06 02:50:15'),
(19, 'delete_any_boat', 'web', '2022-06-06 02:50:15', '2022-06-06 02:50:15'),
(20, 'update_boat', 'web', '2022-06-06 02:50:15', '2022-06-06 02:50:15'),
(21, 'export_boat', 'web', '2022-06-06 02:50:15', '2022-06-06 02:50:15'),
(22, 'view_booking', 'web', '2022-06-06 02:50:15', '2022-06-06 02:50:15'),
(23, 'view_any_booking', 'web', '2022-06-06 02:50:15', '2022-06-06 02:50:15'),
(24, 'create_booking', 'web', '2022-06-06 02:50:15', '2022-06-06 02:50:15'),
(25, 'delete_booking', 'web', '2022-06-06 02:50:15', '2022-06-06 02:50:15'),
(26, 'delete_any_booking', 'web', '2022-06-06 02:50:15', '2022-06-06 02:50:15'),
(27, 'update_booking', 'web', '2022-06-06 02:50:15', '2022-06-06 02:50:15'),
(28, 'export_booking', 'web', '2022-06-06 02:50:15', '2022-06-06 02:50:15'),
(29, 'view_contact', 'web', '2022-06-06 02:50:15', '2022-06-06 02:50:15'),
(30, 'view_any_contact', 'web', '2022-06-06 02:50:15', '2022-06-06 02:50:15'),
(31, 'create_contact', 'web', '2022-06-06 02:50:15', '2022-06-06 02:50:15'),
(32, 'delete_contact', 'web', '2022-06-06 02:50:15', '2022-06-06 02:50:15'),
(33, 'delete_any_contact', 'web', '2022-06-06 02:50:15', '2022-06-06 02:50:15'),
(34, 'update_contact', 'web', '2022-06-06 02:50:15', '2022-06-06 02:50:15'),
(35, 'export_contact', 'web', '2022-06-06 02:50:15', '2022-06-06 02:50:15'),
(36, 'view_destinationimage', 'web', '2022-06-06 02:50:15', '2022-06-06 02:50:15'),
(37, 'view_any_destinationimage', 'web', '2022-06-06 02:50:15', '2022-06-06 02:50:15'),
(38, 'create_destinationimage', 'web', '2022-06-06 02:50:15', '2022-06-06 02:50:15'),
(39, 'delete_destinationimage', 'web', '2022-06-06 02:50:15', '2022-06-06 02:50:15'),
(40, 'delete_any_destinationimage', 'web', '2022-06-06 02:50:15', '2022-06-06 02:50:15'),
(41, 'update_destinationimage', 'web', '2022-06-06 02:50:15', '2022-06-06 02:50:15'),
(42, 'export_destinationimage', 'web', '2022-06-06 02:50:15', '2022-06-06 02:50:15'),
(43, 'view_destination', 'web', '2022-06-06 02:50:15', '2022-06-06 02:50:15'),
(44, 'view_any_destination', 'web', '2022-06-06 02:50:15', '2022-06-06 02:50:15'),
(45, 'create_destination', 'web', '2022-06-06 02:50:15', '2022-06-06 02:50:15'),
(46, 'delete_destination', 'web', '2022-06-06 02:50:15', '2022-06-06 02:50:15'),
(47, 'delete_any_destination', 'web', '2022-06-06 02:50:15', '2022-06-06 02:50:15'),
(48, 'update_destination', 'web', '2022-06-06 02:50:15', '2022-06-06 02:50:15'),
(49, 'export_destination', 'web', '2022-06-06 02:50:15', '2022-06-06 02:50:15'),
(50, 'view_guest', 'web', '2022-06-06 02:50:15', '2022-06-06 02:50:15'),
(51, 'view_any_guest', 'web', '2022-06-06 02:50:15', '2022-06-06 02:50:15'),
(52, 'create_guest', 'web', '2022-06-06 02:50:15', '2022-06-06 02:50:15'),
(53, 'delete_guest', 'web', '2022-06-06 02:50:15', '2022-06-06 02:50:15'),
(54, 'delete_any_guest', 'web', '2022-06-06 02:50:15', '2022-06-06 02:50:15'),
(55, 'update_guest', 'web', '2022-06-06 02:50:15', '2022-06-06 02:50:15'),
(56, 'export_guest', 'web', '2022-06-06 02:50:15', '2022-06-06 02:50:15'),
(57, 'view_highlight', 'web', '2022-06-06 02:50:15', '2022-06-06 02:50:15'),
(58, 'view_any_highlight', 'web', '2022-06-06 02:50:15', '2022-06-06 02:50:15'),
(59, 'create_highlight', 'web', '2022-06-06 02:50:15', '2022-06-06 02:50:15'),
(60, 'delete_highlight', 'web', '2022-06-06 02:50:15', '2022-06-06 02:50:15'),
(61, 'delete_any_highlight', 'web', '2022-06-06 02:50:15', '2022-06-06 02:50:15'),
(62, 'update_highlight', 'web', '2022-06-06 02:50:15', '2022-06-06 02:50:15'),
(63, 'export_highlight', 'web', '2022-06-06 02:50:15', '2022-06-06 02:50:15'),
(64, 'view_room', 'web', '2022-06-06 02:50:15', '2022-06-06 02:50:15'),
(65, 'view_any_room', 'web', '2022-06-06 02:50:15', '2022-06-06 02:50:15'),
(66, 'create_room', 'web', '2022-06-06 02:50:15', '2022-06-06 02:50:15'),
(67, 'delete_room', 'web', '2022-06-06 02:50:15', '2022-06-06 02:50:15'),
(68, 'delete_any_room', 'web', '2022-06-06 02:50:15', '2022-06-06 02:50:15'),
(69, 'update_room', 'web', '2022-06-06 02:50:15', '2022-06-06 02:50:15'),
(70, 'export_room', 'web', '2022-06-06 02:50:15', '2022-06-06 02:50:15'),
(71, 'view_role', 'web', '2022-06-06 02:50:15', '2022-06-06 02:50:15'),
(72, 'view_any_role', 'web', '2022-06-06 02:50:15', '2022-06-06 02:50:15'),
(73, 'create_role', 'web', '2022-06-06 02:50:15', '2022-06-06 02:50:15'),
(74, 'delete_role', 'web', '2022-06-06 02:50:15', '2022-06-06 02:50:15'),
(75, 'delete_any_role', 'web', '2022-06-06 02:50:15', '2022-06-06 02:50:15'),
(76, 'update_role', 'web', '2022-06-06 02:50:15', '2022-06-06 02:50:15'),
(77, 'export_role', 'web', '2022-06-06 02:50:15', '2022-06-06 02:50:15'),
(78, 'view_trip', 'web', '2022-06-06 02:50:15', '2022-06-06 02:50:15'),
(79, 'view_any_trip', 'web', '2022-06-06 02:50:15', '2022-06-06 02:50:15'),
(80, 'create_trip', 'web', '2022-06-06 02:50:15', '2022-06-06 02:50:15'),
(81, 'delete_trip', 'web', '2022-06-06 02:50:15', '2022-06-06 02:50:15'),
(82, 'delete_any_trip', 'web', '2022-06-06 02:50:15', '2022-06-06 02:50:15'),
(83, 'update_trip', 'web', '2022-06-06 02:50:15', '2022-06-06 02:50:15'),
(84, 'export_trip', 'web', '2022-06-06 02:50:15', '2022-06-06 02:50:15'),
(85, 'view_stats_overview', 'web', '2022-06-06 02:50:15', '2022-06-06 02:50:15'),
(86, 'view_booking_chart', 'web', '2022-06-06 02:50:15', '2022-06-06 02:50:15'),
(87, 'view_boat_booking_chart', 'web', '2022-06-06 02:50:15', '2022-06-06 02:50:15'),
(88, 'view_latest_boat_bookings', 'web', '2022-06-06 02:50:15', '2022-06-06 02:50:15'),
(89, 'view_latest_bookings', 'web', '2022-06-06 02:50:15', '2022-06-06 02:50:15'),
(90, 'view_dashboard', 'web', '2022-06-07 06:44:19', '2022-06-07 06:44:19'),
(91, 'view_user', 'web', '2022-06-07 06:57:37', '2022-06-07 06:57:37'),
(92, 'view_any_user', 'web', '2022-06-07 06:57:37', '2022-06-07 06:57:37'),
(93, 'create_user', 'web', '2022-06-07 06:57:37', '2022-06-07 06:57:37'),
(94, 'delete_user', 'web', '2022-06-07 06:57:37', '2022-06-07 06:57:37'),
(95, 'delete_any_user', 'web', '2022-06-07 06:57:37', '2022-06-07 06:57:37'),
(96, 'update_user', 'web', '2022-06-07 06:57:37', '2022-06-07 06:57:37'),
(97, 'export_user', 'web', '2022-06-07 06:57:37', '2022-06-07 06:57:37');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plans`
--

CREATE TABLE `plans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `monthly_price` int(11) NOT NULL DEFAULT '0',
  `quarterly_price` int(11) NOT NULL DEFAULT '0',
  `yearly_price` int(11) NOT NULL DEFAULT '0',
  `display_order` int(11) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `monthly_stripe_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quarterly_stripe_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `yearly_stripe_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `plans`
--

INSERT INTO `plans` (`id`, `title`, `description`, `image`, `icon`, `monthly_price`, `quarterly_price`, `yearly_price`, `display_order`, `created_at`, `updated_at`, `monthly_stripe_id`, `quarterly_stripe_id`, `yearly_stripe_id`) VALUES
(1, 'Basic', '<ul><li><p>4 x Surf-Skate Sessions</p></li><li><p>2 x WellFit Surfit Sessions</p></li><li><p>10% off Surf-Skates</p></li><li><p>10% off Custom Boards</p></li></ul>', 'uploads/SEeJfqwz5CQVp0lVG2hgRoOikqRzKK-metaYmFzaWMucG5n-.png', NULL, 250, 200, 180, 1, '2022-07-26 11:39:27', '2022-07-31 12:46:30', 'price_1LRfRhJdtK2FWISIGUC3ReA7', 'price_1LRfS1JdtK2FWISIGyNhIIze', NULL),
(2, 'Intermediate', '<ul><li><p>8 x Surf-Skate Sessions</p></li><li><p>2 x Indoor Sessions (RollerDXB)</p></li><li><p>2 x WellFit Surfit Sessions</p></li><li><p>1 x Video Analysis Session</p></li><li><p>1 x Heal Hub Session</p></li><li><p>15% off Surf-Skates</p></li><li><p>15% off Custom Boards</p></li></ul>', 'uploads/OdOyXQnPVwOUPh70Gu74ICZS4wfjBz-metaQXJ0Ym9hcmQgMzYucG5n-.png', NULL, 500, 400, 380, 2, '2022-07-26 11:54:50', '2022-07-31 12:46:57', 'price_1LRfT9JdtK2FWISIOGyl7jfU', 'price_1LRfTPJdtK2FWISIEk18lXth', NULL),
(3, 'All Inclusive', '<ul><li><p>8 x Surf-Skate Sessions</p></li><li><p>4 x WellFit Surfit Sessions</p></li><li><p>2 x Indoor Sessions (RollerDXB)</p></li><li><p>2 x Video Analysis Sessions</p></li><li><p>2 x Heal Hub Sessions</p></li><li><p>1 x Wake Session (20min group)</p></li><li><p>Content on Demand</p></li><li><p>True Coach</p></li><li><p>20% off Surf Skates</p></li><li><p>20% of Custom Boards</p></li></ul>', 'uploads/DteghNdz0otSmcpyvcumN7QQx56CXs-metaQXJ0Ym9hcmQgMSBjb3B5IDgucG5n-.png', NULL, 1000, 900, 850, 3, '2022-07-26 11:55:57', '2022-07-31 12:47:27', 'price_1LRfUWJdtK2FWISIYGloMBN0', 'price_1LRfUWJdtK2FWISI1ZjgVt5F', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `program_classes`
--

CREATE TABLE `program_classes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trainer` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `basic` int(11) DEFAULT '0',
  `intermediate` int(11) DEFAULT '0',
  `all_inclusive` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `program_classes`
--

INSERT INTO `program_classes` (`id`, `title`, `category`, `location`, `trainer`, `description`, `created_at`, `updated_at`, `basic`, `intermediate`, `all_inclusive`) VALUES
(1, 'Youga', 'all', 'Dubai', 'Ahmad', 'Test ', '2022-08-09 05:56:16', '2022-08-09 05:56:16', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'super_admin', 'web', '2022-06-06 02:50:05', '2022-06-06 02:50:05'),
(2, 'provider', 'web', '2022-06-06 03:04:36', '2022-06-06 03:04:36'),
(3, 'filament_user', 'web', '2022-06-07 06:44:19', '2022-06-07 06:44:19');

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
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(86, 1),
(87, 1),
(88, 1),
(89, 1),
(90, 1),
(91, 1),
(92, 1),
(93, 1),
(94, 1),
(95, 1),
(96, 1),
(97, 1),
(15, 2),
(16, 2),
(17, 2),
(18, 2),
(19, 2),
(20, 2),
(21, 2),
(1, 3),
(2, 3),
(3, 3),
(4, 3),
(5, 3),
(6, 3),
(7, 3),
(8, 3),
(9, 3),
(10, 3),
(11, 3),
(12, 3),
(13, 3),
(14, 3),
(15, 3),
(16, 3),
(17, 3),
(18, 3),
(19, 3),
(20, 3),
(21, 3),
(22, 3),
(23, 3),
(24, 3),
(25, 3),
(26, 3),
(27, 3),
(28, 3),
(29, 3),
(30, 3),
(31, 3),
(32, 3),
(33, 3),
(34, 3),
(35, 3),
(36, 3),
(37, 3),
(38, 3),
(39, 3),
(40, 3),
(41, 3),
(42, 3),
(43, 3),
(44, 3),
(45, 3),
(46, 3),
(47, 3),
(48, 3),
(49, 3),
(50, 3),
(51, 3),
(52, 3),
(53, 3),
(54, 3),
(55, 3),
(56, 3),
(57, 3),
(58, 3),
(59, 3),
(60, 3),
(61, 3),
(62, 3),
(63, 3),
(64, 3),
(65, 3),
(66, 3),
(67, 3),
(68, 3),
(69, 3),
(70, 3),
(71, 3),
(72, 3),
(73, 3),
(74, 3),
(75, 3),
(76, 3),
(77, 3),
(78, 3),
(79, 3),
(80, 3),
(81, 3),
(82, 3),
(83, 3),
(84, 3),
(85, 3),
(86, 3),
(87, 3),
(88, 3),
(89, 3),
(90, 3),
(91, 3),
(92, 3),
(93, 3),
(94, 3),
(95, 3),
(96, 3),
(97, 3);

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `trip_id` bigint(20) UNSIGNED DEFAULT NULL,
  `image` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` int(11) NOT NULL DEFAULT '0',
  `number_of_rooms` int(11) NOT NULL DEFAULT '0',
  `rooms_booked` int(11) NOT NULL DEFAULT '0',
  `short_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `capacity` int(11) NOT NULL DEFAULT '0',
  `available` int(11) NOT NULL DEFAULT '0',
  `beds` int(11) NOT NULL DEFAULT '1',
  `sofa_beds` int(11) NOT NULL DEFAULT '1',
  `inner_rooms` int(11) NOT NULL DEFAULT '1',
  `bathrooms` int(11) NOT NULL DEFAULT '1',
  `bed_decription` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `what_is_include` text COLLATE utf8mb4_unicode_ci,
  `accommodation_details` text COLLATE utf8mb4_unicode_ci,
  `any_extra_costs` text COLLATE utf8mb4_unicode_ci,
  `refundable_deposit` text COLLATE utf8mb4_unicode_ci,
  `refundable_before` date DEFAULT NULL,
  `none_refundable` tinyint(1) NOT NULL DEFAULT '0',
  `price_per` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'person',
  `minimum_guests` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `name`, `trip_id`, `image`, `price`, `number_of_rooms`, `rooms_booked`, `short_description`, `created_at`, `updated_at`, `capacity`, `available`, `beds`, `sofa_beds`, `inner_rooms`, `bathrooms`, `bed_decription`, `what_is_include`, `accommodation_details`, `any_extra_costs`, `refundable_deposit`, `refundable_before`, `none_refundable`, `price_per`, `minimum_guests`) VALUES
(6, 'Superior Room', 5, 'uploads/pVFzHodySQf60tcvBUahIdoSvM5CKj-metaMTY0NTM5NDM2LmpwZWc=-.jpg', 5950, 10, 0, 'Up to 2 guests (Shared)', '2022-06-09 01:43:34', '2022-07-05 08:40:29', 2, 0, 2, 0, 1, 0, '1 king bed', '<p><strong>Resort facilities:</strong></p><ul><li>Three swimming pools + Children’s swimming pool with decks and sun lounges</li><li>Restaurant, bar and room service</li><li>Large yoga shala overlooking the pool and manicured gardens</li><li>Fully equipped indoor functional fitness centre</li><li>Vast manicured lawns &amp; gardens</li><li>Day spa and boutique</li><li>Complimentary hi-speed WIFI throughout the resort</li><li>Tour and transportation services</li><li>24-hour front desk</li><li>Airport shuttle service</li><li>Free shuttle to local beaches on resort schedule - Padang, Uluwatu, Blue Point, Bingin,</li><li>Balangan and Dreamland.</li><li>Yoga and fitness classes with our on-site instructors</li><li>Surf lessons and surf guiding with fully qualified surf instructors</li><li>Surfboard &amp; SUP hire</li><li>Dry cleaning / laundry service</li><li>Complimentary On-site parking</li></ul><p><strong>Restaurant and Bar:</strong></p><p>Authentic taste sensations from the Spice Isles blends a variety of Traditional, Western and Indonesian cuisine into an extensive menu. Our creative menus are a highlight for our guests.</p><p>Ingredients are seasonally sourced from our organic garden, highlighting an adaptable and sustainable menu. Room service, pool side dining and cocktails are also available each day.</p><p>&nbsp;<strong>Day Spa:&nbsp;</strong></p><p>Like all of Hidden Valley Resort, the spa is secluded, peaceful and surrounded by our luscious grounds. We offer a variety of therapeutic massages and pampering beauty treatments to help soothe the body, mind and soul. We invite each guest to spoil themselves with a deeply relaxing massage using timeless traditional Balinese techniques, reflexology or western styles.</p><p>Our spa menu is extensive and adds the exclamation mark to each guest’s stay.</p><p><strong>The Perfect Wave:</strong></p><p>No trip to Bali is complete without surfing. Surfing is such a fun activity and there is no better place than the pristine beaches of Bali to give it a go.</p><p>We are located close to some of the area\'s best beaches and our team of onsite, vastly experienced, qualified guides and instructors offer tuition for all levels. No matter each guests’ surf ability, our guide’s expert knowledge will get them onto the perfect wave.</p><p>&nbsp;<strong>Sustainability:</strong></p><p>With sustainability at our core, our guests relax their body and soul as they enjoy a green getaway at our eco-friendly tropical Bali resort. Sustainability is important at Hidden Valley Resort and we recognise the responsibility of taking care of this beautiful little piece of paradise.</p><p>The goal is to help protect these stretches of coastline and its waves, establishing a set of green development guidelines. Some of the eco initiatives we have introduced at the resort are: Organic Gardens providing a garden to plate culinary journey, Composting and Recycling with Eco-Bali, No Single Use Plastics Bottles or Straws, Recycled Construction Materials, Local Village Employment and Bio Water Irrigation.</p><p>We also offer a water refill station for guests and people in the vicinity that want to refill their water bottles to eliminate the need to purchase a single use plastic water bottle.</p>', '<p>Located on the second floor of our main building complex, these rooms feature expansive views over the resort, picturesque valley and treetops towards the ocean. Rooms allow easy access to our gardens and tropical pool below.</p><p>&nbsp;</p><p>All rooms feature:</p><ul><li>Air-conditioning</li><li>Mini Fridge</li><li>Ensuite bathrooms with luxury, organic amenities</li><li>Flat screen television with cable channels</li><li>WIFI</li><li>In room safe</li><li>Coffee &amp; tea making facilities</li></ul>', NULL, NULL, NULL, 0, 'person', 1),
(7, 'VIP Room', 5, 'uploads/35xeBtWozuyGRSquD4KNoI3TLbX1cw-metaMTY0NjIyNjQwLmpwZWc=-.jpg', 6850, 5, 0, 'Up to 2 guests (Shared)', '2022-06-09 03:48:05', '2022-07-05 08:40:50', 2, 0, 1, 0, 1, 1, '1 king bed', '<p><strong>Resort facilities:</strong></p><ul><li>Three swimming pools + Children’s swimming pool with decks and sun lounges</li><li>Restaurant, bar and room service</li><li>Large yoga shala overlooking the pool and manicured gardens</li><li>Fully equipped indoor functional fitness center</li><li>Vast manicured lawns &amp; gardens</li><li>Day spa and boutique</li><li>Complimentary hi-speed WIFI throughout the resort</li><li>Tour and transportation services</li><li>24-hour front desk</li><li>Airport shuttle service</li><li>Free shuttle to local beaches on resort schedule - Padang, Uluwatu, Blue Point, Bingin,</li><li>Balangan and Dreamland.</li><li>Yoga and fitness classes with our on-site instructors</li><li>Surf lessons and surf guiding with fully qualified surf instructors</li><li>Surfboard &amp; SUP hire</li><li>Dry cleaning / laundry service</li><li>Complimentary On-site parking</li></ul><p><strong>Restaurant and Bar:</strong></p><p>Authentic taste sensations from the Spice Isles blends a variety of Traditional, Western and Indonesian cuisine into an extensive menu. Our creative menus are a highlight for our guests.</p><p>Ingredients are seasonally sourced from our organic garden, highlighting an adaptable and sustainable menu. Room service, pool side dining and cocktails are also available each day.</p><p><strong>Day Spa:</strong></p><p>Like all of Hidden Valley Resort, the spa is secluded, peaceful and surrounded by our luscious grounds. We offer a variety of therapeutic massages and pampering beauty treatments to help soothe the body, mind and soul. We invite each guest to spoil themselves with a deeply relaxing massage using timeless traditional Balinese techniques, reflexology or western styles.</p><p>Our spa menu is extensive and adds the exclamation mark to each guest’s stay.</p><p><strong>The Perfect Wave:</strong></p><p>No trip to Bali is complete without surfing. Surfing is such a fun activity and there is no better place than the pristine beaches of Bali to give it a go.</p><p>We are located close to some of the area\'s best beaches and our team of onsite, vastly experienced, qualified guides and instructors offer tuition for all levels. No matter each guests’ surf ability, our guide’s expert knowledge will get them onto the perfect wave.</p><p><strong>Sustainability:</strong></p><p>With sustainability at our core, our guests relax their body and soul as they enjoy a green getaway at our eco-friendly tropical Bali resort. Sustainability is important at Hidden Valley Resort and we recognise the responsibility of taking care of this beautiful little piece of paradise.</p><p>The goal is to help protect these stretches of coastline and its waves, establishing a set of green development guidelines. Some of the eco initiatives we have introduced at the resort are: Organic Gardens providing a garden to plate culinary journey, Composting and Recycling with Eco-Bali, No Single Use Plastics Bottles or Straws, Recycled Construction Materials, Local Village Employment and Bio Water Irrigation.</p><p>We also offer a water refill station for guests and people in the vicinity that want to refill their water bottles to eliminate the need to purchase a single use plastic water bottle.</p>', '<p>Located on the second floor of our main building complex, these rooms feature expansive views over the resort, picturesque valley and treetops towards the ocean. Rooms allow easy access to our gardens and tropical pool below.</p><p>All rooms feature:</p><ul><li>Air-conditioning</li><li>Mini Fridge</li><li>Ensuite bathrooms with luxury, organic amenities</li><li>Flat screen television with cable channels</li><li>WIFI</li><li>In room safe</li><li>Coffee &amp; tea making facilities</li></ul>', NULL, NULL, NULL, 0, 'person', 1),
(14, 'Junior Suite (Garden View)', 7, 'uploads/L4AL69HpvJGQdjAXf8rl2V6PUFtUfG-metaQVBQLUhELTcuanBn-.jpg', 6900, 10, 0, 'Up to 2 guests', '2022-06-09 08:18:44', '2022-07-01 05:45:54', 2, 0, 2, 0, 1, 1, '1 King Bed', '<p><strong>Resort facilities:</strong></p><ul><li>FREE WiFi</li><li>Satellite &amp; SMART Television</li><li>Coffee machine</li><li>Slippers &amp; Bathroom Amenities</li><li>Daily Maid service</li><li>Pool Access* Junior Suite Pool Access category only</li><li>Balcony / Terrace</li><li>Safe Deposit Box</li><li>Mini Fridge</li><li>Hairdryer</li></ul>', '<p>Designed by an award winning architect comprises spacious modern suites that all feature a large balcony offering seamless indoor and outdoor living.</p><p><br></p><p>The 35 square meter Junior Suites at our wellness hotel in Phuket not only provides great comfort but also top of the range and modern in-room technology, including smart TVs and atmospheric control units. Twin-bedding option available upon request.</p><p><br></p><p>Stay at the best fitness hotel in Phuket and enjoy complimentary access to the best gym in Phuket, STAYFIT gym!</p><p><br></p>', NULL, NULL, NULL, 0, 'person', 1),
(16, 'Standard Room', 5, 'uploads/032xGKe0YfqNMeKYTUAR9uDD8ecK7Q-metaNzNiMmY1NzUtZWQ3Ny00ZGQ2LWE3OTYtZDg3MTE4ZWEzYjFkLmpwZWc=-.jpg', 5800, 999, 0, 'Up to 2 guests (Shared)', '2022-06-20 14:36:34', '2022-07-05 08:41:09', 2, 0, 2, 0, 1, 1, 'King bed', NULL, NULL, NULL, NULL, NULL, 0, 'person', 1),
(17, 'One Bedroom Suite (Garden View)', 7, 'uploads/p94R70fe1B6Iy00AMau8lZ0IekQU4E-metaMzAwMCBTVEFZIC0gcm9vbS12aWV3LTEgKDIpLmpwZw==-.jpg', 7100, 10, 0, 'Up to 2 guests', '2022-06-28 07:48:19', '2022-07-04 09:21:15', 2, 0, 1, 0, 1, 1, '1 King Bed', NULL, NULL, NULL, NULL, NULL, 0, 'person', 1),
(18, 'Ocean View Room', 8, 'uploads/8fYsiAJ9sNgEcKJCpfS2ZbMYgCLyaz-metaMTAyNHg3NjgtQ2FtZXJlLTAwMy5qcGVn-.jpg', 6995, 20, 0, 'Ocean View Room\nUp to 2 guests', '2022-08-12 12:10:44', '2022-08-15 14:17:17', 2, 0, 2, 0, 1, 1, 'Single bed', NULL, NULL, NULL, NULL, NULL, 0, 'person', 1),
(20, 'Twin or Double Room', 9, 'uploads/QjjJJrf2cXefngR4PXPud1IdRRhys9-metaQ29weSBvZiBAZW1hbnVlbHNpZGRoYXJ0aGFfVGVrYW5kYUxvZGdlXzU4LmpwZw==-.jpg', 7250, 999, 0, 'Up to 4 guests\n', '2022-10-18 14:44:35', '2022-10-20 10:56:18', 4, 0, 2, 0, 2, 1, '1 Double Bed or 2 x Single Beds', NULL, NULL, NULL, NULL, NULL, 0, 'person', 1),
(21, 'Cabana Suite', 9, 'uploads/W68eIdZko9vbtNe8aest8zHb7GnV7w-metac3JpLWxhbmthcm9vbS5qcGc=-.jpg', 8250, 999, 0, 'Up to 4 guests ', '2022-10-18 14:44:35', '2022-10-20 10:56:25', 4, 0, 2, 0, 2, 1, '2 x Single Bed', NULL, NULL, NULL, NULL, NULL, 0, 'person', 1);

-- --------------------------------------------------------

--
-- Table structure for table `room_details`
--

CREATE TABLE `room_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `room_id` bigint(20) UNSIGNED DEFAULT NULL,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_order` bigint(20) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `room_details`
--

INSERT INTO `room_details` (`id`, `room_id`, `title`, `description`, `display_order`, `created_at`, `updated_at`) VALUES
(3, 6, 'Location', '<p>Nestled in the heart of the Bukit Peninsula, many of the area’s main attractions are just a short drive away from the resort. Located in Uluwatu, Jl. Nabor No.29, Pecatu, South Kuta, Badung Regency, Bali 80361, Indonesia</p><p>S Resorts Hidden Valley Bali is approximately 30-35 minutes from Denpasar International Airport.</p>', 0, '2022-06-09 01:43:34', '2022-06-13 15:43:13'),
(5, 7, 'Location', '<p>Nestled in the heart of the Bukit Peninsula, many of the area’s main attractions are just a short drive away from the resort. Located in Uluwatu, Jl. Nabor No.29, Pecatu, South Kuta, Badung Regency, Bali 80361, Indonesia</p><p>S Resorts Hidden Valley Bali is approximately 30-35 minutes from Denpasar International Airport.</p>', 0, '2022-06-09 03:48:05', '2022-06-13 15:42:43'),
(9, 14, 'Location', '<p>STAY Wellbeing &amp; Lifestyle Resort is Phuket’s premier fitness inclusive resort. Located in: 56/80 Moo 4, Soi Suksan 2, Wiset Rd., Rawai, Mueang, Phuket 83130</p>', 0, '2022-06-13 16:31:15', '2022-06-13 16:31:15'),
(11, 16, 'Location', '<p>Nestled in the heart of the Bukit Peninsula, many of the area’s main attractions are just a short drive away from the resort. Located in Uluwatu, Jl. Nabor No.29, Pecatu, South Kuta, Badung Regency, Bali 80361, Indonesia</p><p>S Resorts Hidden Valley Bali is approximately 30-35 minutes from Denpasar International Airport.</p>', 0, '2022-06-20 14:36:34', '2022-06-20 14:36:34'),
(13, 14, 'What’s not included', '<ul><li>Flights</li><li>Travel Insurance</li><li>Covid-19 Protocols (tests, vaccinations, etc)</li><li>Surf transport outside of “The Surfing Week” surf session transport</li><li>Alcohol and meals outside of chosen food option</li></ul>', 0, '2022-06-21 01:44:34', '2022-06-21 01:44:34'),
(14, 16, 'What’s not included', '<ul><li>Flights</li><li>Travel Insurance</li><li>Covid-19 Protocols (tests, vaccinations, etc)</li><li>Surf transport outside of “The Surfing Week” surf session transport</li><li>Alcohol and meals outside of chosen food option</li></ul><p><br></p>', 0, '2022-06-21 08:44:31', '2022-06-21 08:44:31'),
(15, 7, 'What’s not included', '<ul><li>Flights</li><li>Travel Insurance</li><li>Covid-19 Protocols (tests, vaccinations, etc)</li><li>Surf transport outside of “The Surfing Week” surf session transport</li><li>Alcohol and meals outside of chosen food option</li></ul><p><br></p>', 0, '2022-06-21 08:44:36', '2022-06-21 08:44:36'),
(16, 6, 'What’s not included', '<ul><li>Flights</li><li>Travel Insurance</li><li>Covid-19 Protocols (tests, vaccinations, etc)</li><li>Surf transport outside of “The Surfing Week” surf session transport</li><li>Alcohol and meals outside of chosen food option</li></ul>', 0, '2022-06-21 08:44:43', '2022-06-24 09:31:12');

-- --------------------------------------------------------

--
-- Table structure for table `room_images`
--

CREATE TABLE `room_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `room_id` bigint(20) UNSIGNED DEFAULT NULL,
  `image` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `room_images`
--

INSERT INTO `room_images` (`id`, `room_id`, `image`, `created_at`, `updated_at`) VALUES
(43, 6, 'uploads/acH9sW6Q8els1wA3UVokpfOwnJGZle-metaMTY0NTM5NDM2LmpwZWc=-.jpg', NULL, '2022-06-21 01:56:51'),
(51, 14, 'uploads/XydQZJoOp2UPbRgVLYJr608ZX08UqM-metaMzAwMCBPcmlnaW5hbC1TaXplLTI0LmpwZw==-.jpg', NULL, NULL),
(52, 14, 'uploads/rpWs06bM3bC6RDyRfK5ODhMNsQNIyR-metaQVBQLUhELTEuanBn-.jpg', NULL, NULL),
(53, 14, 'uploads/cKckdWGBA4MarEJhsbXxehss6JCYAm-metaQVBQLUhELTIuanBn-.jpg', NULL, NULL),
(54, 14, 'uploads/UNZTPqrZpuyQEI40NrHrg427pd4u7z-metaQVBQLUhELTMgKDEpLmpwZw==-.jpg', NULL, NULL),
(55, 14, 'uploads/IVf3PgyGEcchPBO9CSwb7sSLmxiwDE-metaQVBQLUhELTQgKDQpLmpwZw==-.jpg', NULL, NULL),
(56, 14, 'uploads/X5TRn7dGnIXMBqXRTI2FyTzkYwfOQR-metaQVBQLUhELTYuanBn-.jpg', NULL, NULL),
(66, 6, 'uploads/DycuU7JPxDiwPaV5F2T274Ra8YVISF-metaMTY0NjIxNTY5LmpwZWc=-.jpg', '2022-06-14 10:53:31', '2022-06-21 01:56:51'),
(70, 16, 'uploads/K295nraedelkjyE2TLPHquCu4CwyEB-metaNzNiMmY1NzUtZWQ3Ny00ZGQ2LWE3OTYtZDg3MTE4ZWEzYjFkLmpwZWc=-.jpg', '2022-06-20 14:36:34', '2022-06-20 14:36:34'),
(71, 16, 'uploads/xTjFQ2VB26qsEzpAV6WPUbzw0udcBb-metaNDk2MThhOTUtMjQ1MS00NmNlLTg3ODYtOTRiMmNlOGU4NjQ5LmpwZWc=-.jpg', '2022-06-20 14:36:34', '2022-06-20 14:36:34'),
(72, 7, 'uploads/Deo6KK5M1gMvRSDKpjE3aRjyjem7u2-metaOTI5MzIxMTguanBlZw==-.jpg', '2022-06-21 02:02:06', '2022-06-21 02:02:06'),
(73, 7, 'uploads/nqRI7Ibut1x9x1Of3KUIo1aI8vI7DO-metaOTI5MzIxMjAuanBlZw==-.jpg', '2022-06-21 02:02:06', '2022-06-21 02:02:06'),
(74, 7, 'uploads/fjFvqLjPC7rueFeCg3jpbBBrzQeFRt-metaMTY0NjIxNTAyLmpwZWc=-.jpg', '2022-06-21 02:02:06', '2022-06-21 02:02:06'),
(75, 7, 'uploads/hONJ0YJbWq9m40YDBc5SX9Bw0u3OBb-metaMTY0NjIxNTkxLmpwZWc=-.jpg', '2022-06-21 02:02:06', '2022-06-21 02:02:06'),
(76, 7, 'uploads/D3OdMm6vZNOGntY3PTC8ev6QNFt2As-metaMTY0NjIyNjQwLmpwZWc=-.jpg', '2022-06-21 02:02:07', '2022-06-21 02:02:07'),
(77, 7, 'uploads/yfvSpAuLxOAH8jYdCeAYwKBZfrduDB-metaMTY0NjIyNjg1LmpwZWc=-.jpg', '2022-06-21 02:02:07', '2022-06-21 02:02:07'),
(78, 7, 'uploads/OYz6uBB9ESvkwi5AcfGmbcwjPVhsVw-metaMTY0NjIyNzA3LmpwZWc=-.jpg', '2022-06-21 02:02:07', '2022-06-21 02:02:07'),
(79, 7, 'uploads/iSgeQLjMvmPm3glmKK828rdEu7F2wF-metaMTY3MzUxMDE1LmpwZWc=-.jpg', '2022-06-21 02:02:07', '2022-06-21 02:02:07'),
(80, 17, 'uploads/kQaGtSYYHiiR80a10hxdKf4Bpn0Z4z-metaMzAwMCBTdGF5IFdlbGxiZWluZyBfIExpZmVzdHlsZSBSZXNvcnQgLSAxOSBOb3YgMjAxOS04LTAyLmpwZw==-.jpg', '2022-06-28 07:48:20', '2022-06-28 08:56:40'),
(81, 17, 'uploads/yAAKKjebO5k5xvlv6ebKtMtPCYTPBy-metaQVBQLUhELTIgKDMpLmpwZw==-.jpg', '2022-06-28 07:48:20', '2022-06-28 08:56:40'),
(82, 17, 'uploads/dPvkqgAAzayHkhTVJ1hwoXa66W2AvK-metaQVBQLUhELTMgKDQpLmpwZw==-.jpg', '2022-06-28 07:48:20', '2022-06-28 08:56:40'),
(83, 17, 'uploads/Z6oOrQ8TRc150tXhaBKaWbYkzUV1tq-metaQVBQLUhELTQgKDcpLmpwZw==-.jpg', '2022-06-28 07:48:20', '2022-06-28 08:56:40'),
(84, 17, 'uploads/sOmIrilDcvXeyVpc6svkrS6ggkI7fS-metaQVBQLUhELTExICgyKS5qcGc=-.jpg', '2022-06-28 07:48:20', '2022-06-28 08:56:40'),
(85, 17, 'uploads/ynIq5LQkZN4rL5jBr86kbukkDKDxmH-metaU1AtNzMgKDEpLmpwZw==-.jpg', '2022-06-28 07:48:20', '2022-06-28 08:56:40'),
(86, 17, 'uploads/Xe22dqfSkvjXgB0KqK2X2lhq38CbXz-metaU1RBWSAxQlItMyAoMikuanBn-.jpg', '2022-06-28 07:48:20', '2022-06-28 08:56:40'),
(87, 18, 'uploads/aQVt77KuNRCiEV6wg1m7NEw0FcYEPh-metaMTAyNHg3NjgtQ2FtZXJlLTAwNC5qcGVn-.jpg', '2022-08-12 12:10:44', '2022-08-12 12:10:44'),
(88, 18, 'uploads/w5SI3FiBNDuPkoVn0DhZ1rbqHKfsds-metaMTAyNHg3NjgtSW5ncmVzc28tMDAxLmpwZWc=-.jpg', '2022-08-12 12:10:44', '2022-08-12 12:10:44'),
(89, 18, 'uploads/sW83BxGCuzjKtydTfnVaCwNWISgeBW-metaU2NyZWVuIFNob3QgMjAyMi0wOC0xMiBhdCAzLjQ4LjE3IFBNLnBuZw==-.png', '2022-08-12 12:10:44', '2022-08-12 12:10:44'),
(92, 21, 'uploads/SPSwqq1E99K2RA1Giu23U37MroabJs-metac3JpLWxhbmthcm9vbS5qcGc=-.jpg', '2022-10-18 14:44:35', '2022-10-18 14:44:35'),
(93, 20, 'uploads/f9b9tCFQYmM2qykWSDp9PWwFanb9mT-metaQ29weSBvZiBAZW1hbnVlbHNpZGRoYXJ0aGFfVGVrYW5kYUxvZGdlXzU2LmpwZw==-.jpg', '2022-10-19 11:46:36', '2022-10-19 11:46:36'),
(94, 20, 'uploads/q8sqNvhHqlVsTC7iST63uhGvHRKNsM-metaQ29weSBvZiBAZW1hbnVlbHNpZGRoYXJ0aGFfVGVrYW5kYUxvZGdlXzU4LmpwZw==-.jpg', '2022-10-19 11:46:36', '2022-10-19 11:46:36');

-- --------------------------------------------------------

--
-- Table structure for table `room_options`
--

CREATE TABLE `room_options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `room_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL DEFAULT '0',
  `what_is_include` text COLLATE utf8mb4_unicode_ci,
  `accommodation_details` text COLLATE utf8mb4_unicode_ci,
  `short_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `room_options`
--

INSERT INTO `room_options` (`id`, `room_id`, `name`, `price`, `what_is_include`, `accommodation_details`, `short_description`, `created_at`, `updated_at`) VALUES
(4, 6, 'Bed & Breakfast', 5950, '<ul><li>Surf Lessons</li><li>Surfboards</li><li>Photo and Video analysis</li><li>Yoga</li><li>Fitness</li><li>BBQ Party</li><li>Airport Transfers</li></ul><p><a href=\"https://thesurfingweek.com/pdf/TSW-Package-Inclusions-informations-page.pdf\">View full trip details</a></p>', '<p>Located on the second floor of our main building complex, these rooms features expansive views over the valley and tree tops towards the ocean. On a clear day it’s possible to see right across to the Kintamani and Mount Batur Volcano’s. Offering ocean and mountain views, yet easy access to our gardens &amp; pool below, the Superior rooms compliment all needs.</p>', 'Bed & Breakfast', '2022-06-12 13:10:58', '2022-06-24 09:31:12'),
(5, 6, 'Half Board', 6750, '<ul><li>Surf Lessons</li><li>Surfboards</li><li>Photo and Video analysis</li><li>Yoga</li><li>Fitness</li><li>BBQ Party</li><li>Airport Transfers</li></ul><p><a href=\"https://thesurfingweek.com/pdf/TSW-Package-Inclusions-informations-page.pdf\">View full trip details</a></p>', '<p>Located on the second floor of our main building complex, these rooms features expansive views over the valley and tree tops towards the ocean. On a clear day it’s possible to see right across to the Kintamani and Mount Batur Volcano’s. Offering ocean and mountain views, yet easy access to our gardens &amp; pool below, the Superior rooms compliment all needs.</p>', 'Half Board', '2022-06-12 13:10:58', '2022-06-24 09:31:12'),
(6, 6, 'Full Board', 7500, '<ul><li>Surf Lessons</li><li>Surfboards</li><li>Photo and Video analysis</li><li>Yoga</li><li>Fitness</li><li>BBQ Party</li><li>Airport Transfers</li></ul><p><a href=\"https://thesurfingweek.com/pdf/TSW-Package-Inclusions-informations-page.pdf\">View full trip details</a></p>', '<p>Located on the second floor of our main building complex, these rooms features expansive views over the valley and tree tops towards the ocean. On a clear day it’s possible to see right across to the Kintamani and Mount Batur Volcano’s. Offering ocean and mountain views, yet easy access to our gardens &amp; pool below, the Superior rooms compliment all needs.</p>', 'Full Board', '2022-06-12 13:10:58', '2022-06-24 09:31:12'),
(7, 7, 'Bed & Breakfast', 6850, '<ul><li>Surf Lessons</li><li>Surfboards</li><li>Photo and Video analysis</li><li>Yoga</li><li>Fitness</li><li>BBQ Party</li><li>Airport Transfers</li></ul><p><a href=\"https://thesurfingweek.com/pdf/TSW-Package-Inclusions-informations-page.pdf\">View full trip details</a></p>', '<p>Become a VIP legend when staying in one of our best suites. Featuring a luxury pocketspring Super King mattress and luxuries such as a minibar, flat-screen TV, and a large lounge room with a four seater couch &amp; coffee table – you’ll feel like absolute royalty. The crowning glory in our Legends Suite are the stunning, modern and large bathroomsfeaturing a private Jacuzzi and large stone décor.</p>', 'Bed & Breakfast', '2022-06-12 13:13:27', '2022-06-24 09:31:48'),
(8, 7, 'Half Board', 7650, '<ul><li>Surf Lessons</li><li>Surfboards</li><li>Photo and Video analysis</li><li>Yoga</li><li>Fitness</li><li>BBQ Party</li><li>Airport Transfers</li></ul><p><a href=\"https://thesurfingweek.com/pdf/TSW-Package-Inclusions-informations-page.pdf\">View full trip details</a></p><p><br></p>', '<p>Become a VIP legend when staying in one of our best suites. Featuring a luxury pocketspring Super King mattress and luxuries such as a minibar, flat-screen TV, and a large lounge room with a four seater couch &amp; coffee table – you’ll feel like absolute royalty. The crowning glory in our Legends Suite are the stunning, modern and large bathroomsfeaturing a private Jacuzzi and large stone décor.</p>', 'Half Board', '2022-06-12 13:13:27', '2022-06-24 09:31:48'),
(9, 7, 'Full Board', 8400, '<ul><li>Surf Lessons</li><li>Surfboards</li><li>Photo and Video analysis</li><li>Yoga</li><li>Fitness</li><li>BBQ Party</li><li>Airport Transfers</li></ul><p><a href=\"https://thesurfingweek.com/pdf/TSW-Package-Inclusions-informations-page.pdf\">View full trip details</a></p><p><br></p>', '<p>Become a VIP legend when staying in one of our best suites. Featuring a luxury pocketspring Super King mattress and luxuries such as a minibar, flat-screen TV, and a large lounge room with a four seater couch &amp; coffee table – you’ll feel like absolute royalty. The crowning glory in our Legends Suite are the stunning, modern and large bathroomsfeaturing a private Jacuzzi and large stone décor.</p>', 'Full Board', '2022-06-12 13:13:27', '2022-06-24 09:31:48'),
(16, 14, 'Bed & Breakfast', 6900, '<ul><li>Surf Lessons</li><li>Surfboards</li><li>Photo and Video analysis</li><li>Yoga</li><li>Kickboxing</li><li>BBQ Party</li><li>Airport Transfers</li></ul>', '<p>A 35 sqm unit with a maximum capacity to comfortably accommodate 2 adults. The suite features modern in-room technology, including electronic and atmospheric control units, a large balcony offering seamless indoor and outdoor living. Twin bedding is available upon request.&nbsp;</p><p>Guests will have views of the Resort’s gardens.</p>', 'Bed & Breakfast', '2022-06-13 16:31:15', '2022-06-13 16:31:15'),
(17, 14, 'Half Board', 7200, '<ul><li>Surf Lessons</li><li>Surfboards</li><li>Photo and Video analysis</li><li>Yoga</li><li>Kickboxing</li><li>BBQ Party</li><li>Airport Transfers</li></ul><p><br></p>', '<p>A 35 sqm unit with a maximum capacity to comfortably accommodate 2 adults. The suite features modern in-room technology, including electronic and atmospheric control units, a large balcony offering seamless indoor and outdoor living. Twin bedding is available upon request.&nbsp;</p><p>Guests will have views of the Resort’s gardens.</p>', 'Half Board', '2022-06-13 16:31:15', '2022-06-13 16:31:15'),
(18, 14, 'Full Board', 7995, '<ul><li>Surf Lessons</li><li>Surfboards</li><li>Photo and Video analysis</li><li>Yoga</li><li>Kickboxing</li><li>BBQ Party</li><li>Airport Transfers</li></ul><p><br></p>', '<p>A 35 sqm unit with a maximum capacity to comfortably accommodate 2 adults. The suite features modern in-room technology, including electronic and atmospheric control units, a large balcony offering seamless indoor and outdoor living. Twin bedding is available upon request.&nbsp;</p><p>Guests will have views of the Resort’s gardens.</p>', 'Full Board', '2022-06-13 16:31:15', '2022-06-13 16:31:15'),
(22, 16, 'Bed & Breakfast', 5800, '<ul><li>Airport Transfers</li><li>10 x Surf sessions with pro coaching</li><li>Beginner surfboards</li><li>Photos/videos analysis</li><li>Choose food option</li><li>3 x Yoga</li><li>1 x Surf Fit</li><li>1 x BBQ Party</li><li>Daily use of all yoga &amp; fitness equipment</li><li>Daily resort shuttle transfers to local beaches on predetermined route &amp; resort timetable</li><li>Unlimited WIFI</li><li>Assistance with your extra plans &amp; activities</li><li>Full use of all resort facilities</li><li>All prevailing government taxes &amp; service charges</li></ul><p><a href=\"https://thesurfingweek.com/pdf/TSW-Package-Inclusions-informations-page.pdf\">View full trip details</a></p>', '<p>Enjoy great views over our two main pools and lush tropical gardens. Located on the ground floor of our main building complex, choose between single twin and double bed configurations, as well as interconnecting rooms.</p>', 'Bed & Breakfast', '2022-06-20 14:36:34', '2022-06-24 09:32:46'),
(23, 16, 'Half Board', 6550, '<ul><li>Airport Transfers</li><li>10 x Surf sessions with pro coaching</li><li>Beginner surfboards</li><li>Photos/videos analysis</li><li>Choose food option</li><li>3 x Yoga</li><li>1 x Surf Fit</li><li>1 x BBQ Party</li><li>Daily use of all yoga &amp; fitness equipment</li><li>Daily resort shuttle transfers to local beaches on predetermined route &amp; resort timetable</li><li>Unlimited WIFI</li><li>Assistance with your extra plans &amp; activities</li><li>Full use of all resort facilities</li><li>All prevailing government taxes &amp; service charges</li></ul><p><a href=\"https://thesurfingweek.com/pdf/TSW-Package-Inclusions-informations-page.pdf\">View full trip details</a></p>', '<p>Enjoy great views over our two main pools and lush tropical gardens. Located on the ground floor of our main building complex, choose between single twin and double bed configurations, as well as interconnecting rooms.</p>', 'Half Board', '2022-06-20 14:36:35', '2022-06-24 09:32:46'),
(24, 16, 'Full Board', 7350, '<ul><li>Airport Transfers</li><li>10 x Surf sessions with pro coaching</li><li>Beginner surfboards</li><li>Photos/videos analysis</li><li>Choose food option</li><li>3 x Yoga</li><li>1 x Surf Fit</li><li>1 x BBQ Party</li><li>Daily use of all yoga &amp; fitness equipment</li><li>Daily resort shuttle transfers to local beaches on predetermined route &amp; resort timetable</li><li>Unlimited WIFI</li><li>Assistance with your extra plans &amp; activities</li><li>Full use of all resort facilities</li><li>All prevailing government taxes &amp; service charges</li></ul><p><a href=\"https://thesurfingweek.com/pdf/TSW-Package-Inclusions-informations-page.pdf\">View full trip details</a></p>', '<p>Enjoy great views over our two main pools and lush tropical gardens. Located on the ground floor of our main building complex, choose between single twin and double bed configurations, as well as interconnecting rooms.</p>', 'Full Board', '2022-06-20 14:36:35', '2022-06-24 09:32:46'),
(25, 17, 'Bed & Breakfast', 7100, NULL, NULL, 'Bed & Breakfast', '2022-06-28 09:08:33', '2022-06-28 09:08:33'),
(26, 17, 'Half Board', 7450, NULL, NULL, 'Half Board', '2022-06-28 09:12:40', '2022-06-28 09:12:40'),
(27, 17, 'Full Board', 8200, NULL, NULL, 'Full Board', '2022-06-28 09:12:40', '2022-07-04 09:21:15'),
(28, 18, 'Full Board', 6995, NULL, NULL, 'Ocean View Room', '2022-08-12 12:10:44', '2022-08-12 12:10:44'),
(30, 20, 'Full Board', 7250, NULL, NULL, 'Twin or Double Room', '2022-10-18 14:44:35', '2022-10-20 08:56:44'),
(31, 21, 'Full Board', 8250, NULL, NULL, 'Cabana Suite', '2022-10-18 14:44:35', '2022-10-20 08:54:57');

-- --------------------------------------------------------

--
-- Table structure for table `room_option_details`
--

CREATE TABLE `room_option_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `room_option_id` bigint(20) UNSIGNED DEFAULT NULL,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_order` bigint(20) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `room_option_details`
--

INSERT INTO `room_option_details` (`id`, `room_option_id`, `title`, `description`, `display_order`, `created_at`, `updated_at`) VALUES
(1, 4, 'What is included', '<ul><li><p>Airport Transfers</p></li><li><p>10 x Surf sessions with pro coaching</p></li><li><p>Beginner surfboards </p></li><li><p>Photos/videos analysis</p></li><li><p>Choose food option</p></li><li><p>3 x Yoga</p></li><li><p>1 x Surf Fit</p></li><li><p>1 x BBQ Party</p></li><li><p>Daily use of all yoga &amp; fitness equipment</p></li><li><p>Daily resort shuttle transfers to local beaches on predetermined route &amp; resort timetable</p></li><li><p>Unlimited WIFI</p></li><li><p>Assistance with your extra plans &amp; activities</p></li><li><p>Full use of all resort facilities</p></li><li><p>All prevailing government taxes &amp; service charges</p></li></ul><p><a href=\"https://thesurfingweek.com/pdf/TSW-Package-Inclusions-informations-page.pdf\">View full trip details</a></p><p><br></p>', 0, '2022-06-25 03:47:10', '2022-07-05 08:40:29'),
(2, 4, 'What’s not included', '<ul><li><p>Flights</p></li><li><p>Travel Insurance</p></li><li><p>Covid-19 Protocols (tests, vaccinations, etc)</p></li><li><p>Surf transport outside of “The Surfing Week” surf session transport</p></li><li><p>Alcohol and meals outside of chosen food option</p></li></ul><p><br></p>', 0, '2022-06-25 03:47:10', '2022-06-29 09:36:45'),
(3, 4, 'Accommodation details', '<p>Located on the second floor of our main building complex, these rooms features expansive views over the valley and tree tops towards the ocean. On a clear day it’s possible to see right across to the Kintamani and Mount Batur Volcano’s. Offering ocean and mountain views, yet easy access to our gardens &amp; pool below, the Superior rooms compliment all needs.</p>', 0, '2022-06-25 03:47:10', '2022-06-25 03:47:10'),
(4, 4, 'Location', '<p>Nestled in the heart of the Bukit Peninsula, many of the area’s main attractions are just a short drive away from the resort. Located in Uluwatu, Jl. Nabor No.29, Pecatu, South Kuta, Badung Regency, Bali 80361, Indonesia</p><p>S Resorts Hidden Valley Bali is approximately 30-35 minutes from Denpasar International Airport.</p>', 0, '2022-06-25 03:47:10', '2022-06-25 03:47:10'),
(5, 16, 'What is included', '<ul><li><p>8 x Surf sessions with pro coaching</p></li><li><p>2 x Yoga</p></li><li><p>6 x kickboxing</p></li><li><p>1 x Boat trip</p></li><li><p>Airport Transfers</p></li><li><p>Beginner surfboards&nbsp;</p></li><li><p>Photos/videos analysis</p></li><li><p>Chosen food option</p></li><li><p>Complimentary high speed internet</p></li><li><p>Complimentary access to STAYFIT fitness (1,000 sq.m.)&nbsp;</p></li><li><p>Assistance with your extra plans &amp; activities</p></li></ul><p><a href=\"https://thesurfingweek.com/pdf/TSW-website-Package-Inclusions-Thailand-page.pdf\" target=\"_blank\">View full trip details</a></p>', 0, '2022-06-25 03:51:23', '2022-07-01 05:45:53'),
(6, 16, 'What’s not included', '<ul><li><p>Flights</p></li><li><p>Travel Insurance</p></li><li><p>Covid-19 Protocols (tests, vaccinations, etc)</p></li><li><p>Surf transport outside of “The Surfing Week” surf session transport</p></li><li><p>Alcohol and meals outside of chosen food option</p></li></ul>', 0, '2022-06-25 03:51:23', '2022-07-01 05:45:53'),
(7, 16, 'Accommodation details', '<p>A 35 sqm unit with a maximum capacity to comfortably accommodate 2 adults. The suite features modern in-room technology, including electronic and atmospheric control units, a large balcony offering seamless indoor and outdoor living. Twin bedding is available upon request.&nbsp;</p><p>Guests will have views of the Resort’s gardens.</p>', 0, '2022-06-25 03:51:23', '2022-06-25 03:51:23'),
(8, 16, 'Location', '<p>STAY Wellbeing &amp; Lifestyle Resort is Phuket’s premier fitness inclusive resort. Located in: 56/80 Moo 4, Soi Suksan 2, Wiset Rd., Rawai, Mueang, Phuket 83130</p>', 0, '2022-06-25 03:51:23', '2022-06-25 03:51:23'),
(9, 5, 'What is included', '<ul><li><p>Airport Transfers</p></li><li><p>10 x Surf sessions with pro coaching</p></li><li><p>Beginner surfboards </p></li><li><p>Photos/videos analysis</p></li><li><p>Choose food option</p></li><li><p>3 x Yoga</p></li><li><p>1 x Surf Fit</p></li><li><p>1 x BBQ Party</p></li><li><p>Daily use of all yoga &amp; fitness equipment</p></li><li><p>Daily resort shuttle transfers to local beaches on predetermined route &amp; resort timetable</p></li><li><p>Unlimited WIFI</p></li><li><p>Assistance with your extra plans &amp; activities</p></li><li><p>Full use of all resort facilities</p></li><li><p>All prevailing government taxes &amp; service charges</p></li></ul><p><a href=\"https://thesurfingweek.com/pdf/TSW-Package-Inclusions-informations-page.pdf\">View full trip details</a></p><p><br></p>', 0, NULL, '2022-07-05 08:40:29'),
(10, 5, 'What’s not included', '<ul><li><p>Flights</p></li><li><p>Travel Insurance</p></li><li><p>Covid-19 Protocols (tests, vaccinations, etc)</p></li><li><p>Surf transport outside of “The Surfing Week” surf session transport</p></li><li><p>Alcohol and meals outside of chosen food option</p></li></ul><p><br></p>', 0, NULL, '2022-06-29 09:36:45'),
(11, 5, 'Accommodation details', '<p>Located on the second floor of our main building complex, these rooms features expansive views over the valley and tree tops towards the ocean. On a clear day it’s possible to see right across to the Kintamani and Mount Batur Volcano’s. Offering ocean and mountain views, yet easy access to our gardens &amp; pool below, the Superior rooms compliment all needs.</p>', 0, NULL, NULL),
(12, 5, 'Location', '<p>Nestled in the heart of the Bukit Peninsula, many of the area’s main attractions are just a short drive away from the resort. Located in Uluwatu, Jl. Nabor No.29, Pecatu, South Kuta, Badung Regency, Bali 80361, Indonesia</p><p>S Resorts Hidden Valley Bali is approximately 30-35 minutes from Denpasar International Airport.</p>', 0, NULL, NULL),
(13, 6, 'What is included', '<ul><li><p>Airport Transfers</p></li><li><p>10 x Surf sessions with pro coaching</p></li><li><p>Beginner surfboards </p></li><li><p>Photos/videos analysis</p></li><li><p>Choose food option</p></li><li><p>3 x Yoga</p></li><li><p>1 x Surf Fit</p></li><li><p>1 x BBQ Party</p></li><li><p>Daily use of all yoga &amp; fitness equipment</p></li><li><p>Daily resort shuttle transfers to local beaches on predetermined route &amp; resort timetable</p></li><li><p>Unlimited WIFI</p></li><li><p>Assistance with your extra plans &amp; activities</p></li><li><p>Full use of all resort facilities</p></li><li><p>All prevailing government taxes &amp; service charges</p></li></ul><p><a href=\"https://thesurfingweek.com/pdf/TSW-Package-Inclusions-informations-page.pdf\">View full trip details</a></p><p><br></p>', 0, NULL, '2022-07-05 08:40:29'),
(14, 6, 'What’s not included', '<ul><li><p>Flights</p></li><li><p>Travel Insurance</p></li><li><p>Covid-19 Protocols (tests, vaccinations, etc)</p></li><li><p>Surf transport outside of “The Surfing Week” surf session transport</p></li><li><p>Alcohol and meals outside of chosen food option</p></li></ul><p><br></p>', 0, NULL, '2022-06-29 09:36:45'),
(15, 6, 'Accommodation details', '<p>Located on the second floor of our main building complex, these rooms features expansive views over the valley and tree tops towards the ocean. On a clear day it’s possible to see right across to the Kintamani and Mount Batur Volcano’s. Offering ocean and mountain views, yet easy access to our gardens &amp; pool below, the Superior rooms compliment all needs.</p>', 0, NULL, NULL),
(16, 6, 'Location', '<p>Nestled in the heart of the Bukit Peninsula, many of the area’s main attractions are just a short drive away from the resort. Located in Uluwatu, Jl. Nabor No.29, Pecatu, South Kuta, Badung Regency, Bali 80361, Indonesia</p><p>S Resorts Hidden Valley Bali is approximately 30-35 minutes from Denpasar International Airport.</p>', 0, NULL, '2022-06-29 10:00:41'),
(17, 7, 'What is included', '<ul><li><p>Airport Transfers</p></li><li><p>10 x Surf sessions with pro coaching</p></li><li><p>Beginner surfboards </p></li><li><p>Photos/videos analysis</p></li><li><p>Choose food option</p></li><li><p>3 x Yoga</p></li><li><p>1 x Surf Fit</p></li><li><p>1 x BBQ Party</p></li><li><p>Daily use of all yoga &amp; fitness equipment</p></li><li><p>Daily resort shuttle transfers to local beaches on predetermined route &amp; resort timetable</p></li><li><p>Unlimited WIFI</p></li><li><p>Assistance with your extra plans &amp; activities</p></li><li><p>Full use of all resort facilities</p></li><li><p>All prevailing government taxes &amp; service charges</p></li></ul><p><a href=\"https://thesurfingweek.com/pdf/TSW-Package-Inclusions-informations-page.pdf\">View full trip details</a></p><p><br></p>', 0, NULL, '2022-07-05 08:40:49'),
(18, 7, 'What’s not included', '<ul><li><p>Flights</p></li><li><p>Travel Insurance</p></li><li><p>Covid-19 Protocols (tests, vaccinations, etc)</p></li><li><p>Surf transport outside of “The Surfing Week” surf session transport</p></li><li><p>Alcohol and meals outside of chosen food option</p></li></ul><p><br></p>', 0, NULL, '2022-07-05 08:40:49'),
(19, 7, 'Accommodation details', '<p>Located on the second floor of our main building complex, these rooms features expansive views over the valley and tree tops towards the ocean. On a clear day it’s possible to see right across to the Kintamani and Mount Batur Volcano’s. Offering ocean and mountain views, yet easy access to our gardens &amp; pool below, the Superior rooms compliment all needs.</p>', 0, NULL, NULL),
(20, 7, 'Location', '<p>Nestled in the heart of the Bukit Peninsula, many of the area’s main attractions are just a short drive away from the resort. Located in Uluwatu, Jl. Nabor No.29, Pecatu, South Kuta, Badung Regency, Bali 80361, Indonesia</p><p>S Resorts Hidden Valley Bali is approximately 30-35 minutes from Denpasar International Airport.</p>', 0, NULL, NULL),
(21, 8, 'What is included', '<ul><li><p>Airport Transfers</p></li><li><p>10 x Surf sessions with pro coaching</p></li><li><p>Beginner surfboards </p></li><li><p>Photos/videos analysis</p></li><li><p>Choose food option</p></li><li><p>3 x Yoga</p></li><li><p>1 x Surf Fit</p></li><li><p>1 x BBQ Party</p></li><li><p>Daily use of all yoga &amp; fitness equipment</p></li><li><p>Daily resort shuttle transfers to local beaches on predetermined route &amp; resort timetable</p></li><li><p>Unlimited WIFI</p></li><li><p>Assistance with your extra plans &amp; activities</p></li><li><p>Full use of all resort facilities</p></li><li><p>All prevailing government taxes &amp; service charges</p></li></ul><p><a href=\"https://thesurfingweek.com/pdf/TSW-Package-Inclusions-informations-page.pdf\">View full trip details</a></p><p><br></p>', 0, NULL, '2022-07-05 08:40:50'),
(22, 8, 'What’s not included', '<ul><li><p>Flights</p></li><li><p>Travel Insurance</p></li><li><p>Covid-19 Protocols (tests, vaccinations, etc)</p></li><li><p>Surf transport outside of “The Surfing Week” surf session transport</p></li><li><p>Alcohol and meals outside of chosen food option</p></li></ul><p><br></p>', 0, NULL, '2022-07-05 08:40:50'),
(23, 8, 'Accommodation details', '<p>Located on the second floor of our main building complex, these rooms features expansive views over the valley and tree tops towards the ocean. On a clear day it’s possible to see right across to the Kintamani and Mount Batur Volcano’s. Offering ocean and mountain views, yet easy access to our gardens &amp; pool below, the Superior rooms compliment all needs.</p>', 0, NULL, NULL),
(24, 8, 'Location', '<p>Nestled in the heart of the Bukit Peninsula, many of the area’s main attractions are just a short drive away from the resort. Located in Uluwatu, Jl. Nabor No.29, Pecatu, South Kuta, Badung Regency, Bali 80361, Indonesia</p><p>S Resorts Hidden Valley Bali is approximately 30-35 minutes from Denpasar International Airport.</p>', 0, NULL, NULL),
(25, 9, 'What is included', '<ul><li><p>Airport Transfers</p></li><li><p>10 x Surf sessions with pro coaching</p></li><li><p>Beginner surfboards </p></li><li><p>Photos/videos analysis</p></li><li><p>Choose food option</p></li><li><p>3 x Yoga</p></li><li><p>1 x Surf Fit</p></li><li><p>1 x BBQ Party</p></li><li><p>Daily use of all yoga &amp; fitness equipment</p></li><li><p>Daily resort shuttle transfers to local beaches on predetermined route &amp; resort timetable</p></li><li><p>Unlimited WIFI</p></li><li><p>Assistance with your extra plans &amp; activities</p></li><li><p>Full use of all resort facilities</p></li><li><p>All prevailing government taxes &amp; service charges</p></li></ul><p><a href=\"https://thesurfingweek.com/pdf/TSW-Package-Inclusions-informations-page.pdf\">View full trip details</a></p><p><br></p>', 0, NULL, '2022-07-05 08:40:50'),
(26, 9, 'What’s not included', '<ul><li><p>Flights</p></li><li><p>Travel Insurance</p></li><li><p>Covid-19 Protocols (tests, vaccinations, etc)</p></li><li><p>Surf transport outside of “The Surfing Week” surf session transport</p></li><li><p>Alcohol and meals outside of chosen food option</p></li></ul><p><br></p>', 0, NULL, '2022-07-05 08:40:50'),
(27, 9, 'Accommodation details', '<p>Located on the second floor of our main building complex, these rooms features expansive views over the valley and tree tops towards the ocean. On a clear day it’s possible to see right across to the Kintamani and Mount Batur Volcano’s. Offering ocean and mountain views, yet easy access to our gardens &amp; pool below, the Superior rooms compliment all needs.</p>', 0, NULL, NULL),
(28, 9, 'Location', '<p>Nestled in the heart of the Bukit Peninsula, many of the area’s main attractions are just a short drive away from the resort. Located in Uluwatu, Jl. Nabor No.29, Pecatu, South Kuta, Badung Regency, Bali 80361, Indonesia</p><p>S Resorts Hidden Valley Bali is approximately 30-35 minutes from Denpasar International Airport.</p>', 0, NULL, NULL),
(29, 22, 'What is included', '<ul><li><p>Airport Transfers</p></li><li><p>10 x Surf sessions with pro coaching</p></li><li><p>Beginner surfboards </p></li><li><p>Photos/videos analysis</p></li><li><p>Choose food option</p></li><li><p>3 x Yoga</p></li><li><p>1 x Surf Fit</p></li><li><p>1 x BBQ Party</p></li><li><p>Daily use of all yoga &amp; fitness equipment</p></li><li><p>Daily resort shuttle transfers to local beaches on predetermined route &amp; resort timetable</p></li><li><p>Unlimited WIFI</p></li><li><p>Assistance with your extra plans &amp; activities</p></li><li><p>Full use of all resort facilities</p></li><li><p>All prevailing government taxes &amp; service charges</p></li></ul><p><a href=\"https://thesurfingweek.com/pdf/TSW-Package-Inclusions-informations-page.pdf\">View full trip details</a></p><p><br></p>', 0, NULL, '2022-07-05 08:41:09'),
(30, 22, 'What’s not included', '<ul><li><p>Flights</p></li><li><p>Travel Insurance</p></li><li><p>Covid-19 Protocols (tests, vaccinations, etc)</p></li><li><p>Surf transport outside of “The Surfing Week” surf session transport</p></li><li><p>Alcohol and meals outside of chosen food option</p></li></ul><p><br></p>', 0, NULL, '2022-07-05 08:41:09'),
(31, 22, 'Accommodation details', '<p>Located on the second floor of our main building complex, these rooms features expansive views over the valley and tree tops towards the ocean. On a clear day it’s possible to see right across to the Kintamani and Mount Batur Volcano’s. Offering ocean and mountain views, yet easy access to our gardens &amp; pool below, the Superior rooms compliment all needs.</p>', 0, NULL, NULL),
(32, 22, 'Location', '<p>Nestled in the heart of the Bukit Peninsula, many of the area’s main attractions are just a short drive away from the resort. Located in Uluwatu, Jl. Nabor No.29, Pecatu, South Kuta, Badung Regency, Bali 80361, Indonesia</p><p>S Resorts Hidden Valley Bali is approximately 30-35 minutes from Denpasar International Airport.</p>', 0, NULL, NULL),
(33, 23, 'What is included', '<ul><li><p>Airport Transfers</p></li><li><p>10 x Surf sessions with pro coaching</p></li><li><p>Beginner surfboards </p></li><li><p>Photos/videos analysis</p></li><li><p>Choose food option</p></li><li><p>3 x Yoga</p></li><li><p>1 x Surf Fit</p></li><li><p>1 x BBQ Party</p></li><li><p>Daily use of all yoga &amp; fitness equipment</p></li><li><p>Daily resort shuttle transfers to local beaches on predetermined route &amp; resort timetable</p></li><li><p>Unlimited WIFI</p></li><li><p>Assistance with your extra plans &amp; activities</p></li><li><p>Full use of all resort facilities</p></li><li><p>All prevailing government taxes &amp; service charges</p></li></ul><p><a href=\"https://thesurfingweek.com/pdf/TSW-Package-Inclusions-informations-page.pdf\">View full trip details</a></p><p><br></p>', 0, NULL, '2022-07-05 08:41:09'),
(34, 23, 'What’s not included', '<ul><li><p>Flights</p></li><li><p>Travel Insurance</p></li><li><p>Covid-19 Protocols (tests, vaccinations, etc)</p></li><li><p>Surf transport outside of “The Surfing Week” surf session transport</p></li><li><p>Alcohol and meals outside of chosen food option</p></li></ul><p><br></p>', 0, NULL, '2022-07-05 08:41:09'),
(35, 23, 'Accommodation details', '<p>Located on the second floor of our main building complex, these rooms features expansive views over the valley and tree tops towards the ocean. On a clear day it’s possible to see right across to the Kintamani and Mount Batur Volcano’s. Offering ocean and mountain views, yet easy access to our gardens &amp; pool below, the Superior rooms compliment all needs.</p>', 0, NULL, NULL),
(36, 23, 'Location', '<p>Nestled in the heart of the Bukit Peninsula, many of the area’s main attractions are just a short drive away from the resort. Located in Uluwatu, Jl. Nabor No.29, Pecatu, South Kuta, Badung Regency, Bali 80361, Indonesia</p><p>S Resorts Hidden Valley Bali is approximately 30-35 minutes from Denpasar International Airport.</p>', 0, NULL, NULL),
(37, 24, 'What is included', '<ul><li><p>Airport Transfers</p></li><li><p>10 x Surf sessions with pro coaching</p></li><li><p>Beginner surfboards </p></li><li><p>Photos/videos analysis</p></li><li><p>Choose food option</p></li><li><p>3 x Yoga</p></li><li><p>1 x Surf Fit</p></li><li><p>1 x BBQ Party</p></li><li><p>Daily use of all yoga &amp; fitness equipment</p></li><li><p>Daily resort shuttle transfers to local beaches on predetermined route &amp; resort timetable</p></li><li><p>Unlimited WIFI</p></li><li><p>Assistance with your extra plans &amp; activities</p></li><li><p>Full use of all resort facilities</p></li><li><p>All prevailing government taxes &amp; service charges</p></li></ul><p><a href=\"https://thesurfingweek.com/pdf/TSW-Package-Inclusions-informations-page.pdf\">View full trip details</a></p><p><br></p>', 0, NULL, '2022-07-05 08:41:09'),
(38, 24, 'What’s not included', '<ul><li><p>Flights</p></li><li><p>Travel Insurance</p></li><li><p>Covid-19 Protocols (tests, vaccinations, etc)</p></li><li><p>Surf transport outside of “The Surfing Week” surf session transport</p></li><li><p>Alcohol and meals outside of chosen food option</p></li></ul><p><br></p>', 0, NULL, '2022-07-05 08:41:09'),
(39, 24, 'Accommodation details', '<p>Located on the second floor of our main building complex, these rooms features expansive views over the valley and tree tops towards the ocean. On a clear day it’s possible to see right across to the Kintamani and Mount Batur Volcano’s. Offering ocean and mountain views, yet easy access to our gardens &amp; pool below, the Superior rooms compliment all needs.</p>', 0, NULL, NULL),
(40, 24, 'Location', '<p>Nestled in the heart of the Bukit Peninsula, many of the area’s main attractions are just a short drive away from the resort. Located in Uluwatu, Jl. Nabor No.29, Pecatu, South Kuta, Badung Regency, Bali 80361, Indonesia</p><p>S Resorts Hidden Valley Bali is approximately 30-35 minutes from Denpasar International Airport.</p>', 0, NULL, NULL),
(41, 17, 'What is included', '<ul><li><p>8 x Surf sessions with pro coaching</p></li><li><p>2 x Yoga</p></li><li><p>6 x kickboxing</p></li><li><p>1 x Boat trip</p></li><li><p>Airport Transfers</p></li><li><p>Beginner surfboards&nbsp;</p></li><li><p>Photos/videos analysis</p></li><li><p>Chosen food option</p></li><li><p>Complimentary high speed internet</p></li><li><p>Complimentary access to STAYFIT fitness (1,000 sq.m.)&nbsp;</p></li><li><p>Assistance with your extra plans &amp; activities</p></li></ul><p><a href=\"https://thesurfingweek.com/pdf/TSW-website-Package-Inclusions-Thailand-page.pdf\" target=\"_blank\">View full trip details</a></p>', 0, NULL, '2022-07-01 05:45:53'),
(42, 17, 'What’s not included', '<ul><li><p>Flights</p></li><li><p>Travel Insurance</p></li><li><p>Covid-19 Protocols (tests, vaccinations, etc)</p></li><li><p>Surf transport outside of “The Surfing Week” surf session transport</p></li><li><p>Alcohol and meals outside of chosen food option</p></li></ul>', 0, NULL, '2022-07-01 05:45:53'),
(43, 17, 'Accommodation details', '<p>A 35 sqm unit with a maximum capacity to comfortably accommodate 2 adults. The suite features modern in-room technology, including electronic and atmospheric control units, a large balcony offering seamless indoor and outdoor living. Twin bedding is available upon request.&nbsp;</p><p>Guests will have views of the Resort’s gardens.</p>', 0, NULL, NULL),
(44, 17, 'Location', '<p>STAY Wellbeing &amp; Lifestyle Resort is Phuket’s premier fitness inclusive resort. Located in: 56/80 Moo 4, Soi Suksan 2, Wiset Rd., Rawai, Mueang, Phuket 83130</p>', 0, NULL, NULL),
(45, 18, 'What is included', '<ul><li><p>8 x Surf sessions with pro coaching</p></li><li><p>2 x Yoga</p></li><li><p>6 x kickboxing</p></li><li><p>1 x Boat trip</p></li><li><p>Airport Transfers</p></li><li><p>Beginner surfboards&nbsp;</p></li><li><p>Photos/videos analysis</p></li><li><p>Chosen food option</p></li><li><p>Complimentary high speed internet</p></li><li><p>Complimentary access to STAYFIT fitness (1,000 sq.m.)&nbsp;</p></li><li><p>Assistance with your extra plans &amp; activities</p></li></ul><p><a href=\"https://thesurfingweek.com/pdf/TSW-website-Package-Inclusions-Thailand-page.pdf\" target=\"_blank\">View full trip details</a></p>', 0, NULL, '2022-07-01 05:45:53'),
(46, 18, 'What’s not included', '<ul><li><p>Flights</p></li><li><p>Travel Insurance</p></li><li><p>Covid-19 Protocols (tests, vaccinations, etc)</p></li><li><p>Surf transport outside of “The Surfing Week” surf session transport</p></li><li><p>Alcohol and meals outside of chosen food option</p></li></ul>', 0, NULL, '2022-07-01 05:45:53'),
(47, 18, 'Accommodation details', '<p>A 35 sqm unit with a maximum capacity to comfortably accommodate 2 adults. The suite features modern in-room technology, including electronic and atmospheric control units, a large balcony offering seamless indoor and outdoor living. Twin bedding is available upon request.&nbsp;</p><p>Guests will have views of the Resort’s gardens.</p>', 0, NULL, NULL),
(48, 18, 'Location', '<p>STAY Wellbeing &amp; Lifestyle Resort is Phuket’s premier fitness inclusive resort. Located in: 56/80 Moo 4, Soi Suksan 2, Wiset Rd., Rawai, Mueang, Phuket 83130</p>', 0, NULL, NULL),
(49, 25, 'What is included', '<ul><li><p>8 x Surf sessions with pro coaching</p></li><li><p>2 x Yoga</p></li><li><p>6 x Kickboxing</p></li><li><p>1 x Boat trip</p></li><li><p>Airport transfers</p></li><li><p>Beginner surfboards&nbsp;</p></li><li><p>Photos/videos analysis</p></li><li><p>Chosen food option</p></li><li><p>Complimentary high speed internet</p></li><li><p>Complimentary access to STAYFIT fitness (1,000 sq.m.)&nbsp;</p></li><li><p>Assistance with your extra plans &amp; activities</p></li></ul><p><a href=\"https://thesurfingweek.com/pdf/TSW-website-Package-Inclusions-Thailand-page.pdf\" target=\"_blank\">View full trip details</a></p>', 0, '2022-06-28 09:09:40', '2022-07-01 05:45:18'),
(50, 25, 'What is not included', '<ul><li><p><span style=\"color: rgb(0, 0, 0)\">Flights</span></p></li><li><p><span style=\"color: rgb(0, 0, 0)\">Travel Insurance</span></p></li><li><p><span style=\"color: rgb(0, 0, 0)\">Covid-19 Protocols (tests, vaccinations, etc)</span></p></li><li><p><span style=\"color: rgb(0, 0, 0)\">Surf transport outside of \"The Surfing Week\" surf session transport</span></p></li><li><p><span style=\"color: rgb(0, 0, 0)\">Alcohol and meals outside of chosen food option</span></p></li></ul>', 0, '2022-06-28 09:27:48', '2022-06-28 09:27:48'),
(51, 25, 'Accommodation details', '<p><span style=\"color: rgb(0, 0, 0)\">A 45 sqm unit with king-size bedding. The suite conveniently accommodates maximum 2 adults and 1 child. All units feature modern in-room technology, including electronic and atmospheric control units. Guests will have views of the Resort’s gardens. Designed by an award winning architect features a comfortable living room area with 1 bedroom ensuite bathroom. The living area and the bedroom are separated with a sliding partition. All one bedroom suites feature a large balcony offering seamless indoor and outdoor living. All units feature modern in-room technology, including electronic and atmospheric control units.</span></p><p><span style=\"color: rgb(0, 0, 0)\">Guests will have views of the Resort’s gardens.</span></p>', 0, '2022-06-28 09:28:30', '2022-06-28 09:28:30'),
(52, 25, 'Location', '<p><span style=\"color: rgb(0, 0, 0)\">STAY Wellbeing &amp; Lifestyle Resort is Phuket’s premier fitness inclusive resort. Located in: 56/80 Moo 4, Soi Suksan 2, Wiset Rd., Rawai, Mueang, Phuket 83130</span></p>', 0, '2022-06-28 09:28:30', '2022-06-28 09:28:30'),
(53, 26, 'What is included', '<ul><li><p>8 x Surf sessions with pro coaching</p></li><li><p>2 x Yoga</p></li><li><p>6 x Kickboxing</p></li><li><p>1 x Boat trip</p></li><li><p>Airport transfers</p></li><li><p>Beginner surfboards&nbsp;</p></li><li><p>Photos/videos analysis</p></li><li><p>Chosen food option</p></li><li><p>Complimentary high speed internet</p></li><li><p>Complimentary access to STAYFIT fitness (1,000 sq.m.)&nbsp;</p></li><li><p>Assistance with your extra plans &amp; activities</p></li></ul><p><a href=\"https://thesurfingweek.com/pdf/TSW-website-Package-Inclusions-Thailand-page.pdf\" target=\"_blank\">View full trip details</a></p>', 0, NULL, '2022-07-01 05:45:18'),
(54, 26, 'What is not included', '<ul><li><p><span style=\"color: rgb(0, 0, 0)\">Flights</span></p></li><li><p><span style=\"color: rgb(0, 0, 0)\">Travel Insurance</span></p></li><li><p><span style=\"color: rgb(0, 0, 0)\">Covid-19 Protocols (tests, vaccinations, etc)</span></p></li><li><p><span style=\"color: rgb(0, 0, 0)\">Surf transport outside of \"The Surfing Week\" surf session transport</span></p></li><li><p><span style=\"color: rgb(0, 0, 0)\">Alcohol and meals outside of chosen food option</span></p></li></ul>', 0, NULL, '2022-06-29 07:25:35'),
(55, 26, 'Accommodation details', '<p><span style=\"color: rgb(0, 0, 0)\">A 45 sqm unit with king-size bedding. The suite conveniently accommodates maximum 2 adults and 1 child. All units feature modern in-room technology, including electronic and atmospheric control units. Guests will have views of the Resort’s gardens. Designed by an award winning architect features a comfortable living room area with 1 bedroom ensuite bathroom. The living area and the bedroom are separated with a sliding partition. All one bedroom suites feature a large balcony offering seamless indoor and outdoor living. All units feature modern in-room technology, including electronic and atmospheric control units.</span></p><p><span style=\"color: rgb(0, 0, 0)\">Guests will have views of the Resort’s gardens.</span></p>', 0, NULL, '2022-06-29 07:25:35'),
(56, 26, 'Location', '<p><span style=\"color: rgb(0, 0, 0)\">STAY Wellbeing &amp; Lifestyle Resort is Phuket’s premier fitness inclusive resort. Located in: 56/80 Moo 4, Soi Suksan 2, Wiset Rd., Rawai, Mueang, Phuket 83130</span></p>', 0, NULL, '2022-06-29 07:25:35'),
(57, 27, 'What is included', '<ul><li><p>8 x Surf sessions with pro coaching</p></li><li><p>2 x Yoga</p></li><li><p>6 x kickboxing</p></li><li><p>1 x Boat trip</p></li><li><p>Airport Transfers</p></li><li><p>Beginner surfboards&nbsp;</p></li><li><p>Photos/videos analysis</p></li><li><p>Chosen food option</p></li><li><p>Complimentary high speed internet</p></li><li><p>Complimentary access to STAYFIT fitness (1,000 sq.m.)&nbsp;</p></li><li><p>Assistance with your extra plans &amp; activities</p></li></ul><p><a href=\"https://thesurfingweek.com/pdf/TSW-website-Package-Inclusions-Thailand-page.pdf\" target=\"_blank\">View full trip details</a></p>', 0, NULL, '2022-07-01 05:45:18'),
(58, 27, 'What is not included', '<ul><li><p><span style=\"color: rgb(0, 0, 0)\">Flights</span></p></li><li><p><span style=\"color: rgb(0, 0, 0)\">Travel Insurance</span></p></li><li><p><span style=\"color: rgb(0, 0, 0)\">Covid-19 Protocols (tests, vaccinations, etc)</span></p></li><li><p><span style=\"color: rgb(0, 0, 0)\">Surf transport outside of \"The Surfing Week\" surf session transport</span></p></li><li><p><span style=\"color: rgb(0, 0, 0)\">Alcohol and meals outside of chosen food option</span></p></li></ul>', 0, NULL, '2022-06-29 07:26:57'),
(59, 27, 'Accommodation details', '<p><span style=\"color: rgb(0, 0, 0)\">A 45 sqm unit with king-size bedding. The suite conveniently accommodates maximum 2 adults and 1 child. All units feature modern in-room technology, including electronic and atmospheric control units. Guests will have views of the Resort’s gardens. Designed by an award winning architect features a comfortable living room area with 1 bedroom ensuite bathroom. The living area and the bedroom are separated with a sliding partition. All one bedroom suites feature a large balcony offering seamless indoor and outdoor living. All units feature modern in-room technology, including electronic and atmospheric control units.</span></p><p><span style=\"color: rgb(0, 0, 0)\">Guests will have views of the Resort’s gardens.</span></p>', 0, NULL, '2022-06-29 07:26:57'),
(60, 27, 'Location', '<p><span style=\"color: rgb(0, 0, 0)\">STAY Wellbeing &amp; Lifestyle Resort is Phuket’s premier fitness inclusive resort. Located in: 56/80 Moo 4, Soi Suksan 2, Wiset Rd., Rawai, Mueang, Phuket 83130</span></p>', 0, NULL, '2022-06-29 07:26:57'),
(61, 28, 'What is included:', '<ul><li><p>Board Offer: Buy 1 Get 1 FREE</p></li><li><p>13 x 2 hr Surf sessions</p></li><li><p>6 x Boat trips</p></li><li><p>In-water photographer</p></li><li><p>Video analysis + Surf program</p></li><li><p>Social media content package</p></li><li><p>Surf trip video</p></li><li><p>All inclusive (3 meals a day)</p></li><li><p>Airport transfers</p></li><li><p>Snorkeling gear</p></li><li><p>Free WIFI</p></li></ul><p><a href=\"https://thesurfingweek.com/pdf/TSW-website-Package-Inclusions-Maldives-page.pdf\" target=\"_blank\">View full trip details </a></p>', 0, '2022-08-12 12:10:44', '2022-08-15 14:17:17'),
(62, 28, 'What is not included:', '<ul><li><p>Flights</p></li><li><p>Travel Insurance</p></li><li><p>Covid-19 Protocols (tests, vaccinations, etc)</p></li><li><p>Surf transport outside of \"The Surfing Week\" surf session transport</p></li><li><p>Alcohol and meals outside of chosen food option</p></li></ul>', 2, '2022-08-12 12:10:44', '2022-08-12 12:10:44'),
(63, 28, 'Accommodation details:', '<p>Spacious room with a view of the ocean and beach.&nbsp;Spacious and modern with a touch of luxury. These rooms are equipped with floor to ceiling glass doors that lead to a private balcony, offering a stunning view of the ocean and Cokes and Chickens surf breaks.<br>The Ocean View room is ideal for almost anyone: couples on a romantic holiday, surfers who want to wake up to check the surf from their room, or even a small family.</p>', 3, '2022-08-12 12:10:44', '2022-08-12 12:10:44'),
(64, 28, 'Location:', '<p>Situated on what is arguably the best location on the island, Canopus Retreat is right on the beachfront of Thulusdhoo island, and a short walk away from the tourist \'bikini beach\'. Located in: Amaaz, Athiri Magu, North Male Atoll, Thulusdhoo Island, 08040, Maldives</p>', 0, '2022-08-12 12:10:44', '2022-08-12 12:10:44'),
(67, 30, 'What is included:', '<ul><li><p>5 x surf lessons across the week</p></li><li><p class=\"p1\">5 x guided ‘free-surf sessions’</p></li><li><p class=\"p1\">5 x surfing workshops</p></li><li><p class=\"p1\">4 x surf video analysis sessions</p></li><li><p class=\"p1\">7 x yoga classes</p></li><li><p class=\"p1\">Surfboards and surfing equipment</p></li><li><p class=\"p1\">Lux accommodation and towels</p></li><li><p class=\"p1\">3 x meals a day</p></li><li><p class=\"p1\">Extra fruit, snacks, tea &amp; coffee available throughout the day</p></li><li><p class=\"p1\">Free flowing filtered drinking water, fruit + coconuts</p></li><li><p class=\"p1\">Wi-fi</p></li><li><p class=\"p1\">1 x cooking demo</p></li><li><p class=\"p1\">1 x guided nature walk on the estate</p></li><li><p class=\"p1\">1 x welcome cocktail</p></li><li><p class=\"p1\">1 x cocktail @ BBQ party night</p></li><li><p class=\"p1\">1 x beer, wine, or soft-drink with evening meal</p></li><li><p class=\"p1\">2 x Group sri lanka airport transfers (fixed time)</p></li><li><p class=\"p1\">Two trees planted per person (via Mossy Earth)<br><a href=\"https://thesurfingweek.com/pdf/TSW-website-Package-Inclusions-SriLankapage.pdf\">View full trip details</a></p><p></p></li></ul>', 0, '2022-10-18 14:44:35', '2022-10-20 10:56:18'),
(68, 30, 'What is not included:', '<ul><li><p>Flights</p></li><li><p class=\"p1\">Travel Insurance</p></li><li><p class=\"p1\">Covid-19 Protocols (tests, vaccinations, etc)</p></li><li><p class=\"p1\">Surf transport outside of “The Surfing Week” surf session transport</p></li><li><p class=\"p1\">Alcohol and meals outside of chosen food option</p></li></ul>', 0, '2022-10-18 14:44:35', '2022-10-20 08:53:42'),
(69, 31, 'What\'s included:', '<ul><li><p>5 x surf lessons across the week</p></li><li><p class=\"p1\">5 x guided ‘free-surf sessions’</p></li><li><p class=\"p1\">5 x surfing workshops</p></li><li><p class=\"p1\">4 x surf video analysis sessions</p></li><li><p class=\"p1\">7 x yoga classes</p></li><li><p class=\"p1\">Surfboards and surfing equipment</p></li><li><p class=\"p1\">Lux accommodation and towels</p></li><li><p class=\"p1\">3 x meals a day</p></li><li><p class=\"p1\">Extra fruit, snacks, tea &amp; coffee available throughout the day</p></li><li><p class=\"p1\">Free flowing filtered drinking water, fruit + coconuts</p></li><li><p class=\"p1\">Wi-fi</p></li><li><p class=\"p1\">1 x cooking demo</p></li><li><p class=\"p1\">1 x guided nature walk on the estate</p></li><li><p class=\"p1\">1 x welcome cocktail</p></li><li><p class=\"p1\">1 x cocktail @ BBQ party night</p></li><li><p class=\"p1\">1 x beer, wine, or soft-drink with evening meal</p></li><li><p class=\"p1\">2 x Group sri lanka airport transfers (fixed time)</p></li><li><p class=\"p1\">Two trees planted per person (via Mossy Earth)<br><a href=\"https://thesurfingweek.com/pdf/TSW-website-Package-Inclusions-SriLankapage.pdf\">View full trip details</a></p></li></ul>', 0, '2022-10-18 14:44:35', '2022-10-20 10:56:25'),
(70, 31, 'What is not included:', '<ul><li><p>Flights</p></li><li><p class=\"p1\">Travel Insurance</p></li><li><p class=\"p1\">Covid-19 Protocols (tests, vaccinations, etc)</p></li><li><p class=\"p1\">Surf transport outside of “The Surfing Week” surf session transport</p></li><li><p class=\"p1\">Alcohol and meals outside of chosen food option</p></li></ul>', 0, '2022-10-18 14:44:35', '2022-10-20 08:54:57'),
(71, 30, 'Accommodation details:', '<p>The four large bedrooms within the main house have a lounge area, hand-made wardrobes, AC, en-suite bathrooms and private verandas with views over the surrounding lowlands and paddy fields, plus a gorgeous central courtyard.</p>', 3, '2022-10-20 08:53:42', '2022-10-20 08:53:42'),
(72, 30, 'Location:', '<p><span style=\"color: rgb(33, 37, 41)\">Tekanda offers a special </span><em><span style=\"color: rgb(33, 37, 41)\">soulful</span></em><span style=\"color: rgb(33, 37, 41)\"> all-inclusive surf, yoga &amp; therapy experience for our guests. The retreat has amazing architecture and is set in a jaw-dropping location only 5 mins ride to the the surfing beach. The team love the beach, love to surf and spend as much time as they can covered in sand and salt.</span></p><p style=\"text-align: start\" class=\"MsoNormal\"><span style=\"color: rgb(33, 37, 41)\">Head inland from Kabalana Beach and in a few minutes you are surrounded by the trees, paddy fields and nature. Palm trees, yes, but the other, diverse tropical rainforest lowlands too.&nbsp;From the retreat, you can see one of our favourite places, Koggala Lake, and even spy the Indian Ocean.&nbsp;</span></p>', 4, '2022-10-20 08:53:42', '2022-10-20 08:56:44'),
(73, 31, 'Accommodation details:', '<p>The two spacious cabana suites come complete with private verandahs overlooking the paddy fields. The cabana suites are set away from the other rooms, offering a little more privacy and space. They come with an</p><p>AC &amp; ensuite bathroom. They are both enormous with a lounge and living area and are perfect for bringing the family or friends along – contact us directly if that’s your plan – or just having a lot of space and privacy for yourselves.</p>', 3, '2022-10-20 08:54:57', '2022-10-20 08:54:57'),
(74, 31, 'Location:', '<p><span style=\"color: rgb(33, 37, 41)\">Tekanda offers a special </span><em><span style=\"color: rgb(33, 37, 41)\">soulful</span></em><span style=\"color: rgb(33, 37, 41)\"> all-inclusive surf, yoga &amp; therapy experience for our guests. The retreat has amazing architecture and is set in a jaw-dropping location only 5 mins ride to the the surfing beach. The team love the beach, love to surf and spend as much time as they can covered in sand and salt.</span></p><p style=\"text-align: start\" class=\"MsoNormal\"><span style=\"color: rgb(33, 37, 41)\">Head inland from Kabalana Beach and in a few minutes you are surrounded by the trees, paddy fields and nature. Palm trees, yes, but the other, diverse tropical rainforest lowlands too.&nbsp;From the retreat, you can see one of our favourite places, Koggala Lake, and even spy the Indian Ocean.&nbsp;</span></p>', 4, '2022-10-20 08:54:57', '2022-10-20 10:56:25'),
(75, 27, '27 What is included', '<ul><li><p>8 x Surf sessions with pro coaching</p></li><li><p>2 x Yoga</p></li><li><p>6 x Kickboxing</p></li><li><p>1 x Boat trip</p></li><li><p>Airport transfers</p></li><li><p>Beginner surfboards&nbsp;</p></li><li><p>Photos/videos analysis</p></li><li><p>Chosen food option</p></li><li><p>Complimentary high speed internet</p></li><li><p>Complimentary access to STAYFIT fitness (1,000 sq.m.)&nbsp;</p></li><li><p>Assistance with your extra plans &amp; activities</p></li></ul><p><a href=\"https://thesurfingweek.com/pdf/TSW-website-Package-Inclusions-Thailand-page.pdf\" target=\"_blank\">View full trip details</a></p>', 0, NULL, NULL),
(76, 27, '27 What is not included', '<ul><li><p><span style=\"color: rgb(0, 0, 0)\">Flights</span></p></li><li><p><span style=\"color: rgb(0, 0, 0)\">Travel Insurance</span></p></li><li><p><span style=\"color: rgb(0, 0, 0)\">Covid-19 Protocols (tests, vaccinations, etc)</span></p></li><li><p><span style=\"color: rgb(0, 0, 0)\">Surf transport outside of \"The Surfing Week\" surf session transport</span></p></li><li><p><span style=\"color: rgb(0, 0, 0)\">Alcohol and meals outside of chosen food option</span></p></li></ul>', 0, NULL, NULL),
(77, 27, '27 Accommodation details', '<p><span style=\"color: rgb(0, 0, 0)\">A 45 sqm unit with king-size bedding. The suite conveniently accommodates maximum 2 adults and 1 child. All units feature modern in-room technology, including electronic and atmospheric control units. Guests will have views of the Resort’s gardens. Designed by an award winning architect features a comfortable living room area with 1 bedroom ensuite bathroom. The living area and the bedroom are separated with a sliding partition. All one bedroom suites feature a large balcony offering seamless indoor and outdoor living. All units feature modern in-room technology, including electronic and atmospheric control units.</span></p><p><span style=\"color: rgb(0, 0, 0)\">Guests will have views of the Resort’s gardens.</span></p>', 0, NULL, NULL),
(78, 27, '27 Location', '<p><span style=\"color: rgb(0, 0, 0)\">STAY Wellbeing &amp; Lifestyle Resort is Phuket’s premier fitness inclusive resort. Located in: 56/80 Moo 4, Soi Suksan 2, Wiset Rd., Rawai, Mueang, Phuket 83130</span></p>', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('0kypM9T4MFeSR2DrAkHEvpsBIVNnWGLAPZ1AyC3s', NULL, '137.59.227.113', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaUEwc0NGd0FmZWNEZllSSEhORHdYeDhMMjlPZm9QTHhVMlgwZVpSTSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHBzOi8vdGhlc3VyZmluZ3dlZWsuY29tL2ZpbGFtZW50L2Fzc2V0cy8wLmpzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1681333181),
('13ma9NtZbiZqsEIp6lmTFa4YfYYZyt3HmHVkylQf', NULL, '137.59.227.113', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUWhaaTVJMkIzV01RT3hMTTRmVFlzOU5HZDhNTDM0cG13aHdsR2g0SSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHBzOi8vdGhlc3VyZmluZ3dlZWsuY29tL2FkbWluL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1681333665),
('1mi40bqZAPsfsOUtSFOlszaoo5EhPpP02MPScXl0', NULL, '137.59.227.113', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNDJ3MW9TU3RtY2NhTFZhU0tpakpwVTVITU5qTkVpQjNHZ0VaaXhaeSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHBzOi8vdGhlc3VyZmluZ3dlZWsuY29tL2luZGV4LnBocCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1681333652),
('2jI7iUs1s5Ztkf8PFI5pmcVEfM2XaMNhjNAK29r7', NULL, '117.102.63.206', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRktUQkhqbzNFT0swTkxkbVlKV2VwSE9tMXRvb2dma1BTMkZHbWt4UCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHBzOi8vdGhlc3VyZmluZ3dlZWsuY29tL2FkbWluL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1681333216),
('3XWBpz68eWrbI7IpXoeIQKXj1TVQzxUCyXZfymnr', NULL, '137.59.227.113', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiN0pLWjVEckFlczhRc0xrV1UwUkIwTFZrSnFzTUhGRkNoZlBtbGtNNCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDg6Imh0dHBzOi8vdGhlc3VyZmluZ3dlZWsuY29tL2ZpbGFtZW50L2Fzc2V0cy8wLmNzcyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1681332122),
('3y41ymcACzQFm12XIZxevvLKqpf5FmLjKW5zbjhe', NULL, '137.59.227.113', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNFJxZWM3VXRIdFNXOHFoS2tVaXVEeG5sa0s3cGtuZVRaaGxhZTZYOSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NzY6Imh0dHBzOi8vdGhlc3VyZmluZ3dlZWsuY29tL2ZpbGFtZW50L2Fzc2V0cy9maWxhbWVudC10aXB0YXAtZWRpdG9yLXNjcmlwdHMuanMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1681332548),
('4l9J4AhiJkUMVMrevYn9txXqe2w52tzfjOUxuac1', NULL, '137.59.227.113', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVmpkbE55dXYxelp3WkloRGhyRm1wZjBIeHdqaG5JeG5yWGwzbEVjNyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODU6Imh0dHBzOi8vdGhlc3VyZmluZ3dlZWsuY29tL2ZpbGFtZW50L2Fzc2V0cy9hcHAuanM/aWQ9MDU3OGE3YmVhNzNiMDc2NDc5MWU1YzY3MWJhODdkM2EiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1681332548),
('4OKLLcnAmehUqBrwqoiwU1W3Sj1M4yAH1RBVitOb', NULL, '117.102.63.206', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQm9Wc3ZhaUdJYXFrY1RYRjlvY0g0ZXJGOU9zbno0TVhXdlVLZ0J3YyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDg6Imh0dHBzOi8vdGhlc3VyZmluZ3dlZWsuY29tL2ZpbGFtZW50L2Fzc2V0cy8wLmNzcyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1681333259),
('4xVCqpw3W6hNPLDvj6lQRbGCA51uj7UCXdjNCe8p', NULL, '117.102.63.206', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiN0dQbU5VWkJsQ3BJalA1NzVuZmJnWThzTEUxWk1HVzVhdXNuSXVmVyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHBzOi8vdGhlc3VyZmluZ3dlZWsuY29tL2ZpbGFtZW50L2Fzc2V0cy8wLmpzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1681333217),
('5Op7e9KS3ZFEExsTZgYQqdbR4nuz8661eQhPxiWR', NULL, '137.59.227.113', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicjlOQkFjRU1sOWY1ZnVzcUxUSDgwTGl6V29PcGFyZ2tGS0tBcDNDViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHBzOi8vdGhlc3VyZmluZ3dlZWsuY29tL2ZpbGFtZW50L2Fzc2V0cy8wLmpzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1681333643),
('5TP2zC8b4ws3MBxNcVU4kcJgWVgGmLXmT9FeyJwY', NULL, '137.59.227.113', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiSmc0OTNZZ1hQWFBlc0tEUjVSMTVqeGJRT0FObFV4R3ZnODJnZnJyQSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1681332487),
('5YR3M09ayTN5hOgvz4ZMUvQoWPkXSCxuPf0rDk1V', NULL, '137.59.227.113', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTFRKWUVYc3phYjV5dTdyUldDZTFrNUR4bENQWWZIbENESjRUdjlCWSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NzY6Imh0dHBzOi8vdGhlc3VyZmluZ3dlZWsuY29tL2ZpbGFtZW50L2Fzc2V0cy9maWxhbWVudC10aXB0YXAtZWRpdG9yLXN0eWxlcy5jc3MiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1681333093),
('6ip2oHW3iDqfF4DRV1qwtHq2w2nDTw4bk3UPe2rB', NULL, '117.102.63.206', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYm5wUHdsTUVJNVZNNGdSd2FqZ3hpSlJBUjd4Mml0QmpPWVk1cFhCYSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NzY6Imh0dHBzOi8vdGhlc3VyZmluZ3dlZWsuY29tL2ZpbGFtZW50L2Fzc2V0cy9maWxhbWVudC10aXB0YXAtZWRpdG9yLXNjcmlwdHMuanMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1681333217),
('6WMUyD7ASumDpHYdffiTyH7WpjVB38fTYLaT1bmi', NULL, '137.59.227.113', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiN3JxOTdFVTRESlZhWEpRMjdUZDkzN25zZVdUVGFZT1hsYkxxb3VaRSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHBzOi8vdGhlc3VyZmluZ3dlZWsuY29tL2ZpbGFtZW50L2Fzc2V0cy8wLmpzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1681332548),
('7j5WCVcsPcybIMZiVcHrgAcjWfMzjIJ8AJ1sQI9x', NULL, '137.59.227.113', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZU53eTcwdnpRdXoxaE1MMVVwaU1WOWFyZzN0OTFIdnB5VXI0RlhmSyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODU6Imh0dHBzOi8vdGhlc3VyZmluZ3dlZWsuY29tL2ZpbGFtZW50L2Fzc2V0cy9hcHAuanM/aWQ9MDU3OGE3YmVhNzNiMDc2NDc5MWU1YzY3MWJhODdkM2EiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1681333201),
('7jGjO4Koqzsddfx8yOjBt1DvznMjmUOFE2a5y0dx', NULL, '137.59.227.113', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNG12R1k4anloTWxyb1VsaDg0RTVHZWpqZDFkbzEzcTVSSG9pSlB0aiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NzY6Imh0dHBzOi8vdGhlc3VyZmluZ3dlZWsuY29tL2ZpbGFtZW50L2Fzc2V0cy9maWxhbWVudC10aXB0YXAtZWRpdG9yLXNjcmlwdHMuanMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1681333093),
('8TynSUhpK9PxRgMoysQcrtlVh4UkMENpVQIWu4Lu', NULL, '137.59.227.113', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSTlSbDFhSmsxaE41T0NkODFRbnU1QmhtYndpRFZmZlc0TUY5YndHWCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHBzOi8vdGhlc3VyZmluZ3dlZWsuY29tL2ZpbGFtZW50L2Fzc2V0cy8wLmpzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1681333093),
('9DTuRlEmZDtYjml4gE681Q1k79b5nph0oJ9dSY4Q', NULL, '137.59.227.113', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiT0JrU2FNcDdXMXR3ejNQRENDT3A2UHM5QTljSGxaQU9wNlViT05vQyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDg6Imh0dHBzOi8vdGhlc3VyZmluZ3dlZWsuY29tL2ZpbGFtZW50L2Fzc2V0cy8wLmNzcyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1681333666),
('9R4Zonei2dkM2sJezlE13BrUJp3rx5XsGOyVNOm5', NULL, '137.59.227.113', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaWJYRDVMRkJHUVRYMVU0WXlqM2RSUUN0VFkyTDJDU0R4ckVkSXd1QyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NzY6Imh0dHBzOi8vdGhlc3VyZmluZ3dlZWsuY29tL2ZpbGFtZW50L2Fzc2V0cy9maWxhbWVudC10aXB0YXAtZWRpdG9yLXNjcmlwdHMuanMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1681333203),
('9zKNat8qY0eDznJlrCQ06nxlVPXMu59hrSWzQfmB', NULL, '137.59.227.113', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQ2Y5bXNDd2FnazZUUHB3OG1hMjFSd2xmZVNicjJvd2MyOHpXaGpDcCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDg6Imh0dHBzOi8vdGhlc3VyZmluZ3dlZWsuY29tL2ZpbGFtZW50L2Fzc2V0cy8wLmNzcyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1681333093),
('aGBKJJbjLKAlEX1s0Ss5sVGcLVKcmILzHhkKy2sR', NULL, '137.59.227.113', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/111.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNzBtd1lJUE5HNEJIclM1RXptVnlBM2E0YmR3eWNxSk94ZHFDNkg2ayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NzY6Imh0dHBzOi8vdGhlc3VyZmluZ3dlZWsuY29tL2ZpbGFtZW50L2Fzc2V0cy9maWxhbWVudC10aXB0YXAtZWRpdG9yLXN0eWxlcy5jc3MiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1681332176),
('aiP9eL8tkqrnqPrVgSKfkwLfBcsojvL7Ok7wxQbb', NULL, '137.59.227.113', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVk94WExudFhWNFAxaXVqMmRWd2lTMFcyNEJvSVMxak9kUFVZVnBrYiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NzY6Imh0dHBzOi8vdGhlc3VyZmluZ3dlZWsuY29tL2ZpbGFtZW50L2Fzc2V0cy9maWxhbWVudC10aXB0YXAtZWRpdG9yLXN0eWxlcy5jc3MiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1681333643),
('AW1xwEB6e8Yfu01rgNUTngEy0SvMFqyVPOmPFsXX', NULL, '137.59.227.113', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaHpJTFE0WHdaWjNseFhBVjF3UWZGWmp3b1hDVXFqTXNxUWttUjFlUSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHBzOi8vdGhlc3VyZmluZ3dlZWsuY29tL2ZpbGFtZW50L2Fzc2V0cy8wLmpzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1681333666),
('aydTpeJdMPiGQp6hgYQEMGQxzCrm0YmeMkMn6qDh', NULL, '137.59.227.113', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiY2JFMmhwcll6dUo3ZjZxS0JNbVJ2ZzRkUkZkNWpmWllHSmtrNEZlSSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NzY6Imh0dHBzOi8vdGhlc3VyZmluZ3dlZWsuY29tL2ZpbGFtZW50L2Fzc2V0cy9maWxhbWVudC10aXB0YXAtZWRpdG9yLXN0eWxlcy5jc3MiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1681333179),
('AZcdDSZ4TfmYrMSudsiZQpm6hJsBESYaGBnnUZk1', NULL, '137.59.227.113', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/111.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTlN3Q2JCd09taDdYTXNUU2ZqekpDOEM1NTdYdE1PNFpXNzFPVHh6TiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODU6Imh0dHBzOi8vdGhlc3VyZmluZ3dlZWsuY29tL2ZpbGFtZW50L2Fzc2V0cy9hcHAuanM/aWQ9MDU3OGE3YmVhNzNiMDc2NDc5MWU1YzY3MWJhODdkM2EiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1681332177),
('BxMeWdN5gsbx1SeciQ7xlOytHtksW4PeEKIq0kvF', NULL, '137.59.227.113', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQ2NFSzEya2tNcWFiOXNjOURqakF5d29JdlNMNkVBYzFmc0o1WnQ3UCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHBzOi8vdGhlc3VyZmluZ3dlZWsuY29tL2ZpbGFtZW50L2Fzc2V0cy8wLmpzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1681332122),
('Cwmr01MRYHKmjjqVwMl2AJ7RuAHkbL5NUmgPnmbL', NULL, '137.59.227.113', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNGdLa3lsemYyZHBpYmtUR3V6NjYwcmswQ2hxVFExMmNpWjlTeWRnMiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODU6Imh0dHBzOi8vdGhlc3VyZmluZ3dlZWsuY29tL2ZpbGFtZW50L2Fzc2V0cy9hcHAuanM/aWQ9MDU3OGE3YmVhNzNiMDc2NDc5MWU1YzY3MWJhODdkM2EiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1681333179),
('dnShfJHYStUMxqKt9GWk80Dv5DY7jcmebR8RfbPS', NULL, '117.102.63.206', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaHZYNk9zUnh3U1ZBSDFRYjJ3QjZrYk1taHRVRWdsbWhyaE9UM1RBZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTM6Imh0dHBzOi8vdGhlc3VyZmluZ3dlZWsuY29tL2ZpbGFtZW50L2Fzc2V0cy9hcHAuanMubWFwIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1681333259),
('dT7dXJYMJzLRQ2axRz9SX1liuGikoiZYUeKGT8dc', NULL, '137.59.227.113', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNnRLTWU1ZGtvbzMwUVhuRE1SNVhuOTh5ZVRSakRTTDFVUlJ4N3BuWSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODU6Imh0dHBzOi8vdGhlc3VyZmluZ3dlZWsuY29tL2ZpbGFtZW50L2Fzc2V0cy9hcHAuanM/aWQ9MDU3OGE3YmVhNzNiMDc2NDc5MWU1YzY3MWJhODdkM2EiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1681332122),
('dWojMS9n3b1v4NP0OnfoB1DQg8mhipImaYjLZ1Ip', NULL, '137.59.227.113', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTzVoa0N3RkdyRG5XZWNPSU1objJTWkJMV21rWHdtZEozTThrcjZuTSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDg6Imh0dHBzOi8vdGhlc3VyZmluZ3dlZWsuY29tL2ZpbGFtZW50L2Fzc2V0cy8wLmNzcyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1681333200),
('E2oXCSaAeRiBhYRMxwgjyjHxs0qxGKRiZPSdGFjU', NULL, '137.59.227.113', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOXp5dXRSYklIbnhpWWFsSWhVOWRUajEwbGh0ck03dXhvaGNBVE5sbCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHBzOi8vdGhlc3VyZmluZ3dlZWsuY29tL2FkbWluL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1681333199),
('E499nqoSaBZjYhNcSS7zvigxyeqe6aFRZGnezuoN', NULL, '137.59.227.113', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibDE3Q0F6ZnZDVlBPRXhXZmh4bkowQm5CV1QxYlNmZFNTQXlVdHgxTyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTM6Imh0dHBzOi8vdGhlc3VyZmluZ3dlZWsuY29tL2ZpbGFtZW50L2Fzc2V0cy9hcHAuanMubWFwIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1681333203),
('Ea84nnbUtmF72PupjeDGUG48NtZBFXV62HR5r17B', NULL, '137.59.227.113', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaHBIZWxXRFhVRkp5TFd0djNNTTB3Sm9xd1V2aDRCMDMxcTdoTHh6MyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHBzOi8vdGhlc3VyZmluZ3dlZWsuY29tL2FkbWluL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1681333333),
('Ek4wskAfx4n8UFRX0tCbNTtunaQTvGCSxngvw5jK', NULL, '137.59.227.113', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSzQydnk1ZW1LRFFWZE1RbkNFVjVWbUgzY1NuOWFkOXE3QVQyZWxwZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDg6Imh0dHBzOi8vdGhlc3VyZmluZ3dlZWsuY29tL2ZpbGFtZW50L2Fzc2V0cy8wLmNzcyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1681332547),
('EqEGfkOZ4ybKvpBMvRZx1uCkhIPlcqDjokUdXnjZ', NULL, '137.59.227.113', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYU1FVHJZMzFJYjdJZ3A1TVZJZDFsWTd3UDVVbU1JaFFBbXJBUVhDWiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHBzOi8vdGhlc3VyZmluZ3dlZWsuY29tL2FkbWluL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1681332546),
('Ex288YnlAfFpHmmaufJ7MmFRqU44kAVSEc5dQYRl', NULL, '137.59.227.113', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoic2xhOHNwSTQzR0tsSFFWNDZXc0huZU1qNkF6VWdTeWdmUG1HWVJiNCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTM6Imh0dHBzOi8vdGhlc3VyZmluZ3dlZWsuY29tL2ZpbGFtZW50L2Fzc2V0cy9hcHAuanMubWFwIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1681332125),
('FfFVMjxAwxiawbVQzQvv9hXOOPuN9Ohhv8N0pYmB', NULL, '137.59.227.113', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiM0JUeWc2eWJXbHNCWmdsV2o2YXNqdzZIaEJQUlhhVGhJblVuclN5aiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NzY6Imh0dHBzOi8vdGhlc3VyZmluZ3dlZWsuY29tL2ZpbGFtZW50L2Fzc2V0cy9maWxhbWVudC10aXB0YXAtZWRpdG9yLXN0eWxlcy5jc3MiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1681333200),
('fxQSXKFVtGqzsFYl5FEW3zmpRkrfNHzuNb2oHhYA', NULL, '137.59.227.113', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWUtXUHJ4YUFRMkU3Z0o1WlpLNmZwWWZTOG1mYjBMUGRuR0VWZFJ3YyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODU6Imh0dHBzOi8vdGhlc3VyZmluZ3dlZWsuY29tL2ZpbGFtZW50L2Fzc2V0cy9hcHAuanM/aWQ9MDU3OGE3YmVhNzNiMDc2NDc5MWU1YzY3MWJhODdkM2EiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1681333334),
('g1LQvMq3OiA9UbZVwutTWKEbFv0CtTpoaYlM1kDZ', NULL, '137.59.227.113', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZUl1RHhOeHNucm9WTTdRc0YyR1FvcFhOc1lxeWhSOEppRjIyNDBERyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHBzOi8vdGhlc3VyZmluZ3dlZWsuY29tL2FkbWluL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1681332121),
('GjXF15CPVinYdpIRmt2tqmNfPKh1LvUGbT17LZlt', NULL, '137.59.227.113', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTzRXNDdRcXN2QzB2aGM1b21PeU1YQkJNYllib1VDZ3lxOEVLMEtjaSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTM6Imh0dHBzOi8vdGhlc3VyZmluZ3dlZWsuY29tL2ZpbGFtZW50L2Fzc2V0cy9hcHAuanMubWFwIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1681333646),
('i0viwOgcrYh0g1rI0e2XG795DDdQELRlJV7RL2Uu', NULL, '137.59.227.113', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNFQxa1ZleEZGbFdtZHlGUks2S2owd3pNZlVHN1U1VjRPb2xwZGtuSyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODU6Imh0dHBzOi8vdGhlc3VyZmluZ3dlZWsuY29tL2ZpbGFtZW50L2Fzc2V0cy9hcHAuanM/aWQ9MDU3OGE3YmVhNzNiMDc2NDc5MWU1YzY3MWJhODdkM2EiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1681333096),
('Ijhy3HzYKuHQZtkZHRc7hWdQM6IKh0lo5C4Co9B5', NULL, '137.59.227.113', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOEVkd3EybWRDUTVpNHBOV1BBTmJaRXdpVGEwOURtZFJrc0ZIbmp0SyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDg6Imh0dHBzOi8vdGhlc3VyZmluZ3dlZWsuY29tL2ZpbGFtZW50L2Fzc2V0cy8wLmNzcyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1681333643),
('iJM9Y5iUMCXO9itA0rdzHoPc5I2Hha0bdmLuv2C5', NULL, '117.102.63.206', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiZ3YybVVUS2l2RllKRWF6ZVlBR2NuQVFFc2k2ZHJsRUhDUW1uazlUSiI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozMjoiaHR0cHM6Ly90aGVzdXJmaW5nd2Vlay5jb20vYWRtaW4iO31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czozMjoiaHR0cHM6Ly90aGVzdXJmaW5nd2Vlay5jb20vYWRtaW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1681332962),
('Izzdv8WyhxUZXRiHxmcbr4rbQjSp7HLBgXCRD4NE', NULL, '137.59.227.113', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/111.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiT013N2VoaWZTdE5XdHlyZjMxdUxucU5qZ3FhaG0ycWdzUTJrWk01MSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDg6Imh0dHBzOi8vdGhlc3VyZmluZ3dlZWsuY29tL2ZpbGFtZW50L2Fzc2V0cy8wLmNzcyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1681332176),
('J1LuqMe73xTAEdGBR61jcFCnZ9Iq9Sl720axe7pS', NULL, '137.59.227.113', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoib0MwMWFraU1nWTZoMVJqVllzZTdnWE5WSmdDcU1VYkIzSjFrd0hvUiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTM6Imh0dHBzOi8vdGhlc3VyZmluZ3dlZWsuY29tL2ZpbGFtZW50L2Fzc2V0cy9hcHAuanMubWFwIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1681333182),
('jpFo3LSIze1jJwCZ9NG9q3dGDrVw30LAljH7uQyI', NULL, '137.59.227.113', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidnRwT0VpdVRFWHBlODlNdWVhamZkUTd2Z01kMElqalY0MlRETkdyaSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDg6Imh0dHBzOi8vdGhlc3VyZmluZ3dlZWsuY29tL2ZpbGFtZW50L2Fzc2V0cy8wLmNzcyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1681333179),
('KaGYmRW69E0ExdnkAVjeAo66uonWnF3P2eQF0DtA', NULL, '117.102.63.206', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRTRxQTlhbFNOb2JTMW5ocjZUcnhHMXVpSDR4aHZkVkJ2OUNZNGN3NyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NzY6Imh0dHBzOi8vdGhlc3VyZmluZ3dlZWsuY29tL2ZpbGFtZW50L2Fzc2V0cy9maWxhbWVudC10aXB0YXAtZWRpdG9yLXN0eWxlcy5jc3MiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1681333259),
('KGuhPDvURT5eAuBTZggVCk14bspSP9tc1Wzb36l8', NULL, '137.59.227.113', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoic2RBT1Ywd0JpZzFFUWxRVFpCckJjRzVlS2k4cGJpSUc3NnoyM1cyVCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHBzOi8vdGhlc3VyZmluZ3dlZWsuY29tL2FkbWluL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1681333642),
('KlEiKgOZkxSzyLqDuWxFzZjIQpaEngCWp2MKtMfW', NULL, '137.59.227.113', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTWpMYWNES2FBaEl2ZjJkUUs0SDNoeDY1WW5ocmpjaUxKejRJclNDaiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NzY6Imh0dHBzOi8vdGhlc3VyZmluZ3dlZWsuY29tL2ZpbGFtZW50L2Fzc2V0cy9maWxhbWVudC10aXB0YXAtZWRpdG9yLXN0eWxlcy5jc3MiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1681333334),
('KoDSJM278w3Z70bnEaOFcJ9eGuNw7kSNKzef3aqD', NULL, '137.59.227.113', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZnhzN2dpSjkwRU5IOUFqc0NnR1RDTEt1NXV4T0NXRnVTYW1GRkdtSSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTM6Imh0dHBzOi8vdGhlc3VyZmluZ3dlZWsuY29tL2ZpbGFtZW50L2Fzc2V0cy9hcHAuanMubWFwIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1681333669),
('LgGt6OXj1kKlTkeBfdFffCJ2lgrMNZoV9tkdP5W5', NULL, '117.102.63.206', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiajFFRTJjdWNTZ2ZVNHJPUUZGS2pUbGxMREtTMW9DNjV4QnpFOXNvZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NzY6Imh0dHBzOi8vdGhlc3VyZmluZ3dlZWsuY29tL2ZpbGFtZW50L2Fzc2V0cy9maWxhbWVudC10aXB0YXAtZWRpdG9yLXN0eWxlcy5jc3MiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1681333216),
('LhQOkm5XN004MWqHcUfJcEDb5m9D2lTHiHfZ7LDj', NULL, '137.59.227.113', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiT2txY0VaNTNQamJmbm0yZE9GRXBnRGp3MGpmekFaVmpycnZSZGZqTSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NzY6Imh0dHBzOi8vdGhlc3VyZmluZ3dlZWsuY29tL2ZpbGFtZW50L2Fzc2V0cy9maWxhbWVudC10aXB0YXAtZWRpdG9yLXNjcmlwdHMuanMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1681333201),
('lXQgvZ4aahDGrgCuMAW6ZUZwoIpZe17LdPj3QaeE', NULL, '137.59.227.113', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZjNuVG5YU1BtWDJTZE5xS3ZVQ1o0ZHQ0VGFENHdpVkJ6STVFNUdWNSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NzY6Imh0dHBzOi8vdGhlc3VyZmluZ3dlZWsuY29tL2ZpbGFtZW50L2Fzc2V0cy9maWxhbWVudC10aXB0YXAtZWRpdG9yLXN0eWxlcy5jc3MiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1681332122),
('mA8oTyYTIfCcXzsbKEN0nKt2kYj4htAHXzVDl7YN', NULL, '117.102.63.206', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVGdnVDEwOUpEQzZGSFhQWE5CbnBaVFFUQWxlclpvYmh3MmZXUmlBdiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHBzOi8vdGhlc3VyZmluZ3dlZWsuY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1681332953),
('mGBxJyWif19t71mcF8ZljtjnCs77AUKhYVJ2F03Q', NULL, '137.59.227.113', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMXVFUzRUWXMxdGduR2phZWhSVno3NHZKUE5QZGpDa3BHUFYwYjVZUCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHBzOi8vdGhlc3VyZmluZ3dlZWsuY29tL2ZpbGFtZW50L2Fzc2V0cy8wLmpzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1681333334),
('oesWgqDRc3LFtxpOkLW7R3Kq7Bh0o7Q3oFLbmTIB', NULL, '137.59.227.113', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNGhma1FlQU83UkhjOEpCTDNPVEFyV0Z3WDFDUERHTm41cmRzeEZaTiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHBzOi8vdGhlc3VyZmluZ3dlZWsuY29tL2FkbWluL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1681333092),
('oh9Wkn24CAlxnrucYv2Ck2qzuHHCumT4cXdnmW3u', NULL, '137.59.227.113', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiclJINnIyNmszTDdrVkM2MkdmQUJGd1MxSmtDTHQySndHUjNhc3ZkNSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODU6Imh0dHBzOi8vdGhlc3VyZmluZ3dlZWsuY29tL2ZpbGFtZW50L2Fzc2V0cy9hcHAuanM/aWQ9MDU3OGE3YmVhNzNiMDc2NDc5MWU1YzY3MWJhODdkM2EiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1681333093),
('P4UBhcw9KCJWR32nIZlovngBfPjQWnbioWkzOD1J', NULL, '137.59.227.113', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/111.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiV05qbmpzRkVCNldxYzBlSWpmNnFkZTdoR3NiQ2FBbnN5cGNUU3lxMSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHBzOi8vdGhlc3VyZmluZ3dlZWsuY29tL2ZpbGFtZW50L2Fzc2V0cy8wLmpzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1681332176),
('POf2ePnPSTbAAwC1AS5VsF7QYAx5grZqXXOKmnlS', NULL, '137.59.227.113', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSGlCWkQxdU0zT2lDbzN1TFZFelp5OUpPNHJ0c1VpRXRKNVlQWW8xayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODU6Imh0dHBzOi8vdGhlc3VyZmluZ3dlZWsuY29tL2ZpbGFtZW50L2Fzc2V0cy9hcHAuanM/aWQ9MDU3OGE3YmVhNzNiMDc2NDc5MWU1YzY3MWJhODdkM2EiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1681333666),
('PYBwg1zIheqJMxXjohksLhKD6VGb0qVZphhgEBHr', NULL, '137.59.227.113', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiM0xHQldLcDFCYzI3SUpRNnZCR1NMWDE1QmxhMXg0a3dHQ0o1bmxQOSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NzY6Imh0dHBzOi8vdGhlc3VyZmluZ3dlZWsuY29tL2ZpbGFtZW50L2Fzc2V0cy9maWxhbWVudC10aXB0YXAtZWRpdG9yLXNjcmlwdHMuanMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1681333095),
('Q3IFZvmlcexlABUoTqhniRl1DuW8rKjFW0EqiPqK', NULL, '137.59.227.113', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMkJjSG5TdkptVVljMWpzdllpeE5YTUFIRU1CYTVlQjFLdTVQNUQ3RiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NzY6Imh0dHBzOi8vdGhlc3VyZmluZ3dlZWsuY29tL2ZpbGFtZW50L2Fzc2V0cy9maWxhbWVudC10aXB0YXAtZWRpdG9yLXNjcmlwdHMuanMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1681332122),
('qHGKKqZNf6tyoYRBA3IzN3v9ta6FWT33c0QuOzDh', NULL, '137.59.227.113', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicWxHR2VVYUtZTzBlWW1zSFk2djZCTktLVUJBVUdPcWlHQU5kcGRGNSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NzY6Imh0dHBzOi8vdGhlc3VyZmluZ3dlZWsuY29tL2ZpbGFtZW50L2Fzc2V0cy9maWxhbWVudC10aXB0YXAtZWRpdG9yLXN0eWxlcy5jc3MiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1681332547),
('QkUrzgmy9pfSzcKkRPClwx0nzeTcEzdnM9dAyDF8', NULL, '137.59.227.113', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoicVU3TUJUMUtCRUNkMjdySGJ6dGt0azk5VnhsUllOaXNqZGs3M1ZYWCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1681332567),
('Qnu7HSXASSCEawq2RRtUsuRAIBuHA3YtWvDElQX4', NULL, '117.102.63.206', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMEdJc1kyZUVUOGtNbEN3d0F5Y1dQR1lya3FZT2dqeDdYUGVaQUNQOSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDg6Imh0dHBzOi8vdGhlc3VyZmluZ3dlZWsuY29tL2ZpbGFtZW50L2Fzc2V0cy8wLmNzcyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1681333216),
('rHWXHv4JLRXWTwSyqD1gOAz87r01MGpgRr9pOU0a', NULL, '137.59.227.113', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTzQycndQSlZoWnhWSEhaZUthQVEyR1VEdkdWRUdWZU1saW93cG02SCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTM6Imh0dHBzOi8vdGhlc3VyZmluZ3dlZWsuY29tL2ZpbGFtZW50L2Fzc2V0cy9hcHAuanMubWFwIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1681333096),
('Rir5sM19bjvXynjSopEoEIR2kOGLnRaHb97v568K', NULL, '137.59.227.113', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoic0RyWXdtZ1hhbmRIb3NtRnhVS0tkd2ZiOEdnZmlWVjVEaGcxU3RzYSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODU6Imh0dHBzOi8vdGhlc3VyZmluZ3dlZWsuY29tL2ZpbGFtZW50L2Fzc2V0cy9hcHAuanM/aWQ9MDU3OGE3YmVhNzNiMDc2NDc5MWU1YzY3MWJhODdkM2EiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1681333190),
('rxHyWVqYdGsbb0HHCRJzY0WAPlmxW9ODWnqHTAt9', NULL, '137.59.227.113', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiRmxvZEhEdlQ2T3JaYURpVVNlR2xsVEVSOThHaEdlUzQzNEJia2cxeiI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozMjoiaHR0cHM6Ly90aGVzdXJmaW5nd2Vlay5jb20vYWRtaW4iO31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czozMjoiaHR0cHM6Ly90aGVzdXJmaW5nd2Vlay5jb20vYWRtaW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1681333661),
('s4DU4PZ8td3fFuQeV4C5dvVGPEajALYXiW1EHkHS', NULL, '162.215.212.183', 'curl/7.29.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiS2UyNzdoamdiOENmZHZyMU85OWhHUFZyR1JlOFFwS3R0bHZkbkpXaCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHBzOi8vdGhlc3VyZmluZ3dlZWsuY29tL2lnY3JvbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1681333202),
('sXP5hMvEhmSrbJaKB9BFhQz0KKLyA0rKUZddCoQ7', NULL, '137.59.227.113', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNFhnbUdBWDc1cGR1RzFncVRtWDZTVFFwbHhENnFIbjdsdm5rVFBUSSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHBzOi8vdGhlc3VyZmluZ3dlZWsuY29tL2ZpbGFtZW50L2Fzc2V0cy8wLmpzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1681333201),
('SY1jX5cT0w4ePPMwJspeuPHI65NOgjtzIWA4kLYP', NULL, '117.102.63.206', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUXg5WGh2eVlQQjBlaTJXQWJ3Q1Q0MFNmVzJMQXo4YWNUcjRlMlROYyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODU6Imh0dHBzOi8vdGhlc3VyZmluZ3dlZWsuY29tL2ZpbGFtZW50L2Fzc2V0cy9hcHAuanM/aWQ9MDU3OGE3YmVhNzNiMDc2NDc5MWU1YzY3MWJhODdkM2EiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1681333217),
('Tez1XuonJbhMg0OvyeJn3mOlPhLZOae35AJijVl7', NULL, '137.59.227.113', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWDg3QkFDSkZWUzlWc29vSUM3MVNTbDNna1FGTU1kb1l0Mlh5elBvYSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODU6Imh0dHBzOi8vdGhlc3VyZmluZ3dlZWsuY29tL2ZpbGFtZW50L2Fzc2V0cy9hcHAuanM/aWQ9MDU3OGE3YmVhNzNiMDc2NDc5MWU1YzY3MWJhODdkM2EiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1681333643),
('TwRVeyR0VVPjKzzGIAB77DkcWFHpAxX36Uo5izxH', NULL, '117.102.63.206', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiR3drcGRTRVBoaDFTamppZ2V2Q2dOb21kSENlVkVBTmhxdmlVa1RwbyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1681333261),
('UbXod8mV6HFBwh4qR4FgnxWP9gsY4BCNxwyLlmBe', NULL, '137.59.227.113', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZm5GYXFhcUpKazB1OU00aUxLNWtaUHAxc2FUcEFyRHd2NjFocHkyQyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHBzOi8vdGhlc3VyZmluZ3dlZWsuY29tL2ZpbGFtZW50L2Fzc2V0cy8wLmpzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1681333180),
('ueQ4bpTYGTJONObG1c9OSLdLaIXjsrnvFUn7h9aB', NULL, '137.59.227.113', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVzN2RFhoZkpWTlNkQ3FDaFAwVTNCWUMwNEdhcU5vYUFxVXhYY05aYiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NzY6Imh0dHBzOi8vdGhlc3VyZmluZ3dlZWsuY29tL2ZpbGFtZW50L2Fzc2V0cy9maWxhbWVudC10aXB0YXAtZWRpdG9yLXNjcmlwdHMuanMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1681333179),
('UUJkm2yG65dZFrNL0CmIJetJgqbDYIi26XKROyd6', NULL, '137.59.227.113', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/111.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWkhlTUZwVkdvdUNpNzk0WWprQ1JPTWFodUJxeTFaQmVhMUFUOHF6NyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHBzOi8vdGhlc3VyZmluZ3dlZWsuY29tL2FkbWluL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1681332175),
('v1wWvDyEdXz5OSIhUv4tGxQhqxngGayxswUdZl4s', NULL, '137.59.227.113', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiWEYyUkFkQVg1OWZWRXVTb3pwTTh5WktkcHE2QUFiWkFaV1BTeUZBVyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1681332133),
('vQZ8tVIylGbOm8eKWOkieFETGN2iXim8qyKFSOB2', NULL, '137.59.227.113', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/111.0', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiUHp1amNReXR2cWwydUppbjBoY0hqNnd5dU85ZlRTaHZTYnp6Q0tXUSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1681332199),
('vXOuLPW4Mqw7yzMcFgjAiWXH5wDT365ZH2FnaS24', NULL, '137.59.227.113', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSjMzd1FMenVxUm1WYmh6OEpzUkFndHZ2Z3Z3UWNWM0JYRVlvMHlPSCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NzY6Imh0dHBzOi8vdGhlc3VyZmluZ3dlZWsuY29tL2ZpbGFtZW50L2Fzc2V0cy9maWxhbWVudC10aXB0YXAtZWRpdG9yLXNjcmlwdHMuanMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1681333643),
('wiAn1fpmTd8uS5Hg727Rj1WTFirhIg0S6emtxmbT', NULL, '137.59.227.113', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoic25iODZ6MVFQa1JDcjcwNFNrSm4ydDUyaEV5VVRUZDBvdnA3clZSTCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTM6Imh0dHBzOi8vdGhlc3VyZmluZ3dlZWsuY29tL2ZpbGFtZW50L2Fzc2V0cy9hcHAuanMubWFwIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1681332550),
('wLafWVsg2GkRzy34NQSMR8BJb0NuKx9KLSpxkcwJ', NULL, '162.215.212.183', 'curl/7.29.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWGJOT0xOOTJDdVlZOWV6TjI4Z0JvcVN0c1VNdzdidnFkSkI3cDNOMyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHBzOi8vdGhlc3VyZmluZ3dlZWsuY29tL2lnY3JvbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1681332302),
('wM8w67cf4YrdiceZOVFBMEMKO35IfLNmaXQ5gdfr', NULL, '137.59.227.113', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibmVyTVkxNlNmaHBZWTFjVkx1SWFKc0pWN1d1MEp3Q2NaR29Hb3BYaSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHBzOi8vdGhlc3VyZmluZ3dlZWsuY29tL2FkbWluL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1681332546),
('XcUMuXiQea7TtEpkXvRKRkgLY6ll3wAufStridYc', NULL, '137.59.227.113', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibGZ1ajlKVWVQd1lhc1JlSEtDejAzbFRwVGczakFWMHpGamRyTWtvUyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHBzOi8vdGhlc3VyZmluZ3dlZWsuY29tL2FkbWluL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1681333178),
('XMu71uZ3r7UwrCVA5aybEOJGuAECpr7W5VnAjnK8', NULL, '137.59.227.113', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZWZ4NzY1RUd2dUt0eHZlR0ZWN0lsZ3Q4VWxpbUdXbmpvTnVPYzZXVCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDg6Imh0dHBzOi8vdGhlc3VyZmluZ3dlZWsuY29tL2ZpbGFtZW50L2Fzc2V0cy8wLmNzcyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1681333334),
('xuYKdiQJ7fCDh1p4RftT5qObbPiGFZjrA4pQ6iug', NULL, '137.59.227.113', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieTlpRU5rQ05yYjhSREo5U2Z4Rlg4MEFOOVo1Mmc2SmFFbWhDbmJmTiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHBzOi8vdGhlc3VyZmluZ3dlZWsuY29tL2ZpbGFtZW50L2Fzc2V0cy8wLmpzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1681333095),
('xwzrSKFgaVyhq3Jdd0k2lcZ9KosUFPx0Y9V2eCGC', NULL, '137.59.227.113', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoib3ZmNjc3Y3hIMjhRZ1l5dkhIaUMyZHprTkxaakttSFdYMHJldnBXQSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NzY6Imh0dHBzOi8vdGhlc3VyZmluZ3dlZWsuY29tL2ZpbGFtZW50L2Fzc2V0cy9maWxhbWVudC10aXB0YXAtZWRpdG9yLXN0eWxlcy5jc3MiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1681333666),
('Y55QBOMt8E8g1bkz2D0lhwxSr8adujhuzNj8NQH5', NULL, '137.59.227.113', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieHVsdlAyWWxkd3ZaWktRS2M4NGpVZldod09RWWZwS0g3MTJMTmFDbSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTM6Imh0dHBzOi8vdGhlc3VyZmluZ3dlZWsuY29tL2ZpbGFtZW50L2Fzc2V0cy9hcHAuanMubWFwIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1681333337),
('YDmh5NN1dNxqklAW32TBo64LakMx2cWLodnm5Agc', NULL, '137.59.227.113', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOHpzMjMyTXhPV0RFbnFFSlpkMVBrWUFGekQxMU5icE5HTDRrVmNxbCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NzY6Imh0dHBzOi8vdGhlc3VyZmluZ3dlZWsuY29tL2ZpbGFtZW50L2Fzc2V0cy9maWxhbWVudC10aXB0YXAtZWRpdG9yLXNjcmlwdHMuanMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1681333181),
('yjBUMBgpEWsB0uiRGhqQhvxL5mq5RRRkAT32ryT8', NULL, '137.59.227.113', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQWw1M3NYODVNV2FNUHlHdXoyc3BsSkFSa0xKaGgxS1ZuY2IzQWNESyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHBzOi8vdGhlc3VyZmluZ3dlZWsuY29tL2ZpbGFtZW50L2Fzc2V0cy8wLmpzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1681333203),
('YkQPU4Rfhrr9zcmvwba0q38B4BkeFKrI2FxgSUOQ', NULL, '137.59.227.113', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiU2NVYUhrUXV5TVdqcGF3RFdBZ2hhTEpMR2dlTkFicnhIblZDQXhrViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NzY6Imh0dHBzOi8vdGhlc3VyZmluZ3dlZWsuY29tL2ZpbGFtZW50L2Fzc2V0cy9maWxhbWVudC10aXB0YXAtZWRpdG9yLXNjcmlwdHMuanMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1681333666),
('YVBh70dNgwc9oFS7qeWdDm1NqhYSlMFq7xcn1XHH', NULL, '137.59.227.113', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVTE3RzJwSUFmeTAxbHBZdlBQQlJsemp2Q0t6emU1UVdvNWhjeHFTeCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NzY6Imh0dHBzOi8vdGhlc3VyZmluZ3dlZWsuY29tL2ZpbGFtZW50L2Fzc2V0cy9maWxhbWVudC10aXB0YXAtZWRpdG9yLXNjcmlwdHMuanMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1681333334),
('ZMcC7EWbUSDZDSsTEt0YkVoZeIxgqFqjhZ9oQNmF', NULL, '137.59.227.113', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/111.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSXlVeHM3UENFZzdSeE94VWI4T1lNVXR6MXBZT01SeW5kOVdXM0RLbSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NzY6Imh0dHBzOi8vdGhlc3VyZmluZ3dlZWsuY29tL2ZpbGFtZW50L2Fzc2V0cy9maWxhbWVudC10aXB0YXAtZWRpdG9yLXNjcmlwdHMuanMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1681332176);

-- --------------------------------------------------------

--
-- Table structure for table `slider_images`
--

CREATE TABLE `slider_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `destination_id` bigint(20) UNSIGNED DEFAULT NULL,
  `small_image` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `large_image` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slider_images`
--

INSERT INTO `slider_images` (`id`, `destination_id`, `small_image`, `large_image`, `created_at`, `updated_at`) VALUES
(1, 19, 'uploads/O0PbeToCsEWkkdns7yKCRILzOtcpYx-metaMTY0NTM5OTc1LmpwZWc=-.jpg', 'uploads/bYoop67GAkHHz8kn3YYEWX6GGCw1O1-metaMTY0NTM3MzYzLmpwZWc=-.jpg', '2022-06-21 04:09:44', '2022-06-21 04:12:11'),
(2, 19, 'uploads/uYeZUT4NucVMbzgi4GprlOFsBzadOI-metaMTY0NTM4MTE2LmpwZWc=-.jpg', 'uploads/osUlDKHtcIKZ7VcpZNmygfACyd3Q5m-metaMTY0NTQ3Njc0LmpwZWc=-.jpg', '2022-06-21 04:09:44', '2022-06-21 04:09:44'),
(3, 19, 'uploads/DekiVYMzgXUM50j3gPvDVtRAblbBMN-metaMTczMzc4NDQ3LmpwZWc=-.jpg', 'uploads/XLnIrzCfmVEi36o7ACx4FHvR7ASnAx-metaMTcxNTYxNTg5LmpwZWc=-.jpg', '2022-06-21 04:09:44', '2022-06-21 04:09:44'),
(4, 19, 'uploads/bQcET20ATSYhZLJp8CSmVbohTV7i1A-metaMTY0NjIyNTE0LmpwZWc=-.jpg', 'uploads/8IPhuRzC1TZNSmNXpWAJGJf6eCCiNk-metaMTczMzc4MzQwLmpwZWc=-.jpg', '2022-06-21 04:09:44', '2022-06-21 04:09:44'),
(5, 19, 'uploads/WIh4LcDzcCXiwgRsYpvsGOw8a9F1z5-metaMTczMzc4NTE1LmpwZWc=-.jpg', 'uploads/Bp4moAuOHCCLxKB2oTNsthyAdOTCSc-metaMTczMzc4NDUxLmpwZWc=-.jpg', '2022-06-21 04:09:44', '2022-06-21 04:09:44'),
(6, 12, 'uploads/J2XeY92H3HjLYCtTVuXc8gGXcsYfWH-metaMTAyNHg3NjgtQ2FtZXJlLTAwMy5qcGVn-.jpg', 'uploads/5NvCFyZb6GyFjNZRLWvEpo9TDhiKd7-metaMTAyNHg3NjgtRWF0LTAwMS5qcGVn-.jpg', '2022-08-12 12:29:50', '2022-08-12 12:29:50'),
(7, 12, 'uploads/Y2FUGJjviFzq1825FYQbS5ibSUSxKR-metaMTAyNHg3NjgtSW5ncmVzc28tMDAxLmpwZWc=-.jpg', 'uploads/GWaYF0jXHWN9guP00yNWAiVb9nkvR9-metaMTAyNHg3NjgtUmVjZXB0aW9uLTAwMS5qcGVn-.jpg', '2022-08-12 12:30:18', '2022-08-12 12:30:18'),
(8, 12, 'uploads/kW0UlHJVXmbIUQXtWfBKDqF6TQXq6i-metaU2NyZWVuIFNob3QgMjAyMi0wOC0xMiBhdCAzLjQ5LjM4IFBNLnBuZw==-.png', 'uploads/5CTg6N5GmcIg94UfB19Ejvj6tHQlSJ-metaU2NyZWVuIFNob3QgMjAyMi0wOC0xMiBhdCAzLjQ4LjE3IFBNLnBuZw==-.png', '2022-08-12 12:30:56', '2022-08-12 12:30:56'),
(9, 18, 'uploads/cTy4BGOf9jdHkCvdha04UKEE5d1gNX-metaQ29weSBvZiBAZW1hbnVlbHNpZGRoYXJ0aGFfVGVrYW5kYUxvZGdlXzU2LmpwZw==-.jpg', 'uploads/SlZAxNw3ztgySquTzFnPf1JYw8GqNH-metaQ29weSBvZiBAZW1hbnVlbHNpZGRoYXJ0aGFfVGVrYW5kYUxvZGdlXzU4LmpwZw==-.jpg', '2022-10-19 12:31:51', '2022-10-19 12:31:51'),
(10, 18, 'uploads/XJqdrwVoUX5Ea8KQiPpIg1Lkb1jy35-metaQ29weSBvZiBAZW1hbnVlbHNpZGRoYXJ0aGFfIF8gU3VyZiBQb3AgVXAgRGF5Mi0xMy5qcGc=-.jpg', 'uploads/parRhqaUuUoShf4s1MQU2BBBCyfaWg-metaQ29weSBvZiBAZHJlYW1iZWFjaG1lZGlhX1Rla2FuZGFfMTAuSlBH-.jpg', '2022-10-19 12:31:51', '2022-10-19 12:31:51');

-- --------------------------------------------------------

--
-- Table structure for table `strip_images`
--

CREATE TABLE `strip_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `destination_id` bigint(20) UNSIGNED DEFAULT NULL,
  `strip_img_1` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `strip_img_2` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `strip_img_3` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `strip_img_4` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `youtube_vid_1` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `youtube_vid_2` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `youtube_vid_3` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `youtube_vid_4` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `extra_1` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `extra_2` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `extra_3` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `extra_4` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `linked_page` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `strip_images`
--

INSERT INTO `strip_images` (`id`, `destination_id`, `strip_img_1`, `strip_img_2`, `strip_img_3`, `strip_img_4`, `youtube_vid_1`, `youtube_vid_2`, `youtube_vid_3`, `youtube_vid_4`, `extra_1`, `extra_2`, `extra_3`, `extra_4`, `created_at`, `updated_at`, `linked_page`) VALUES
(1, 19, 'uploads/zWflRaj3WMTwxNAn1VwULLndapfYUp-metaYmFsaS1zdHJpcDEuanBlZw==-.jpg', 'uploads/1xqBdap86NZ7lJflZiqkLj1Aca7lKF-metaYmFsaS1zdHJpcDIuanBlZw==-.jpg', 'uploads/42Cd4nnbuAW0YoT4oVYuOUlRvnNWww-metaYmFsaS1zdHJpcDMuanBlZw==-.jpg', 'uploads/HOyaULHI6F27ux9JeANML5KP0Sq0aQ-metaYmFsaS1zdHJpcDQuanBlZw==-.jpg', NULL, NULL, NULL, '_OOtB_7tRRU', '', '', '', '', '2022-06-21 01:39:41', '2022-06-21 05:14:52', ''),
(2, NULL, 'uploads/ulzf1ye6ZSzRTnY2MRtR4pglLUNPby-metadGhhaWxhbmQtc3RyaXAxLmpwZWc=-.jpg', 'uploads/SvRddZt751eXbb6koT6JzyNvZphAim-metadGhhaWxhbmQtc3RyaXAyLmpwZWc=-.jpg', 'uploads/iQvxsOMBuaRiSUlKuWPSPZiEAqKpSs-metadGhhaWxhbmQtc3RyaXAzLmpwZWc=-.jpg', 'uploads/ZsLSpCGdFBTeiY5ms0irgiAzHMnEGb-metadGhhaWxhbmQtc3RyaXA0LmpwZWc=-.jpg', NULL, NULL, NULL, 'wdt2OViYIDI', '', '', '', '', '2022-06-21 05:16:26', '2022-10-19 12:40:16', NULL),
(3, NULL, 'uploads/Y9jXCRyPbYKVkc2Qeg58D4agfmnNBr-metad3MtaW0tMS5qcGVn-.jpg', 'uploads/wUpS1TLhc2FD5bCxfjT4BQkLZnrNlM-metaVW50aXRsZWQtMS5qcGc=-.jpg', 'uploads/iI6Et4ZEtOV4xLcSo7k1RLW5Mzb3rC-metad3MtaW0tMy5qcGVn-.jpg', 'uploads/WBYYDZzQXEFt2f5wdOQX7266pRRJky-metad3MtaW0tNC5qcGVn-.jpg', NULL, NULL, NULL, NULL, '', '', '', '', '2022-06-21 05:54:42', '2022-06-23 04:13:04', 'home'),
(4, NULL, 'uploads/RAdiMmOlMdedDFbvNKOYZ2jEm1cmn1-metaMS5qcGc=-.jpg', 'uploads/smwlIMOi1OoKa3tIz0i9vsMJqKVx0M-metaMi5qcGc=-.jpg', 'uploads/ruyArNPSfhCAF798qgIDypN7FPNA67-metaMy5qcGc=-.jpg', 'uploads/D4F6V4VfBRKxhhovIEMnkx7aZNm7MY-metaNC5wbmc=-.png', NULL, NULL, NULL, 'Sw4iZgv7_iw', '', '', '', '', '2022-06-21 06:14:26', '2022-06-21 06:14:26', 'program'),
(5, 12, 'uploads/SoxH8JdeRTOfPHzfDp0mDDvhxj4kLT-metabWFsLTEuanBn-.jpg', 'uploads/mp5iVz1yKx72AzE20H5H0bEoBMrYwX-metabWFsLTIuanBn-.jpg', 'uploads/VBOGH4Db0ERV8FBOEfLFGPclSupCQA-metabWFsLTMuanBn-.jpg', 'uploads/u7aUoB47xBqWwAoCCmtEg8aoGoGdDy-metabWFsLTQuanBn-.jpg', NULL, NULL, NULL, NULL, '', '', '', '', '2022-08-12 12:28:49', '2022-08-12 12:28:49', NULL),
(6, 18, 'uploads/77xuqiEEDaA6486sfV3QrKvM3fO5fH-metac2h1dHRlcnN0b2NrXzE2MjUwNDk3Ny5qcGc=-.jpg', 'uploads/v9GiwXRlH2zBykypPic0mnjpsdZtof-metac2h1dHRlcnN0b2NrXzEzODI2OTAyMjIuanBn-.jpg', 'uploads/m3qHcpQhb0oRrJ346eDjd4tqfGYBWJ-metac2h1dHRlcnN0b2NrXzEwNDU3Mzk4NDguanBn-.jpg', 'uploads/1ML5LPJTLOsf1OsN3qgaaeflejmwEr-metac2h1dHRlcnN0b2NrXzY3NjY2NTY0Ni5qcGc=-.jpg', NULL, NULL, NULL, NULL, '', '', '', '', '2022-10-19 12:41:35', '2022-10-19 12:45:23', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL,
  `ends_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscriptions`
--

INSERT INTO `subscriptions` (`id`, `user_id`, `name`, `stripe_id`, `stripe_status`, `stripe_price`, `quantity`, `trial_ends_at`, `ends_at`, `created_at`, `updated_at`) VALUES
(4, 6, 'test', 'sub_1LRgRcJdtK2FWISIT8J3SEDR', 'active', 'price_1LRfRhJdtK2FWISIGUC3ReA7', 1, NULL, NULL, '2022-07-31 14:00:55', '2022-07-31 14:00:55'),
(5, 6, 'test', 'sub_1LSeTYJdtK2FWISIX9Y8jnUH', 'active', 'price_1LRfRhJdtK2FWISIGUC3ReA7', 1, NULL, NULL, '2022-08-03 06:06:54', '2022-08-03 06:06:54'),
(6, 9, 'test', 'sub_1LVbg7JdtK2FWISIsej6znSU', 'active', 'price_1LRfT9JdtK2FWISIOGyl7jfU', 1, NULL, NULL, '2022-08-11 09:44:05', '2022-08-11 09:44:05');

-- --------------------------------------------------------

--
-- Table structure for table `subscription_items`
--

CREATE TABLE `subscription_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subscription_id` bigint(20) UNSIGNED NOT NULL,
  `stripe_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_product` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscription_items`
--

INSERT INTO `subscription_items` (`id`, `subscription_id`, `stripe_id`, `stripe_product`, `stripe_price`, `quantity`, `created_at`, `updated_at`) VALUES
(4, 4, 'si_MA0SIvQ37opgBr', 'prod_M8Y3FoHkdY49zp', 'price_1LRfRhJdtK2FWISIGUC3ReA7', 1, '2022-07-31 14:00:55', '2022-07-31 14:00:55'),
(5, 5, 'si_MB0UAOYhiMetOs', 'prod_M8Y3FoHkdY49zp', 'price_1LRfRhJdtK2FWISIGUC3ReA7', 1, '2022-08-03 06:06:54', '2022-08-03 06:06:54'),
(6, 6, 'si_ME3nhYxJXSJ0cI', 'prod_M9eyho3Aemvnau', 'price_1LRfT9JdtK2FWISIOGyl7jfU', 1, '2022-08-11 09:44:05', '2022-08-11 09:44:05');

-- --------------------------------------------------------

--
-- Table structure for table `surfit_taps`
--

CREATE TABLE `surfit_taps` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `display_order` int(11) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `surfit_taps`
--

INSERT INTO `surfit_taps` (`id`, `title`, `description`, `image`, `display_order`, `created_at`, `updated_at`) VALUES
(1, 'Surfing', '<p>We provide surf coaching across the globe and our partner instructors are all International Surfing Association (ISA) accredited.</p><p>Our surfing and performance coaches with over 15+ years\' experience, training beginners to pro athletes will assist you if you are new to the sport or an experienced surfer, they can design a program to help you achieve your surfing goals.</p>', 'uploads/aQupirjlMwERH873ZPtxwyqkdDJku9-metaQXJ0Ym9hcmQgMjJAMngucG5n-.png', 1, '2022-07-21 17:57:15', '2022-08-08 11:38:59'),
(2, 'Surf-Skate', '<p>Surf-skating, is a sport that helps surfers to hone their skills when there are no waves, using boards that are much nimbler than skateboards. Think skateboarding but with surfing maneuvers.</p><p>Similar to surfing, you can pump a surf-skate side to side to generate speed, without pushing your foot on the street. A fantastic tool to enhance your balance and surfing skills.</p><p>Our program has been designed with our Surf-skate brand and partner \'Cutback\' who have over 10+ years of experience in the sport.</p><p>Make sure to check our Surf-Skate weekly training schedule.</p><p></p>', 'uploads/3ultnYrCn4yWAFWw9KO0wvZvGGj0lz-metaQXJ0Ym9hcmQgMThAMngucG5n-.png', 3, '2022-07-25 10:14:32', '2022-08-08 11:39:26'),
(3, 'Wakesurfing', '<p>When there are no waves and you are looking for your surfing fix, Wakesurfing is a fun option. You can achieve long riding times and get instant feedback on your technique. We see wakesurfing as a great platform to practice your surfing fundamentals and try new tricks.</p><p>With our wake boat partners across the UAE we offer wake surfing coaching with Rusty wakesurf boards. Sessions are available 7 days a week from 6am to 6pm in multiple locations all over UAE.</p><p></p>', 'uploads/qSDFw9gZKsZDT7kuM3OagvtoIXWhtW-metaQXJ0Ym9hcmQgMjBAMngucG5n-.png', 4, '2022-07-25 12:07:47', '2022-08-08 11:35:37'),
(4, 'Surfit', '<p>The purpose of the program is to prepare our club members’ bodies and minds so they are surf ready for their surf experience.</p><p><img src=\"https://thesurfingweek.com/storage/images/037f69e7-f57f-4729-becc-ae3d5bd4d14b.png\" width=\"100%\"></p>', 'uploads/oZEpczbun7oNpiZTZis5CQ5r515ww7-metaQXJ0Ym9hcmQgMTdAMngucG5n-.png', 1, '2022-07-25 12:09:11', '2022-08-08 11:35:54'),
(5, 'Yoga', '<p>Surfing is a sport that will challenge your body in many different ways and requires a good level of flexibility and mobility to perform maneuvers and avoid injury. Our program is designed for the needs of surfers.</p>', 'uploads/DVhGIYviDrQtEhHB3iovR7k15Rb6Wy-metaQXJ0Ym9hcmQgMTlAMngucG5n-.png', 5, '2022-07-25 12:12:07', '2022-08-08 11:36:17'),
(6, 'Combat', '<p>A combination of different exercises for building lean muscles, quick fat blasting, intense full-body cardio workout that is mentally challenging.</p>', 'uploads/y1abS7TjSi8KceYn3V83LCwGjMkIT3-metaQXJ0Ym9hcmQgMjFAMngucG5n-.png', 7, '2022-07-25 12:14:06', '2022-08-08 11:36:34');

-- --------------------------------------------------------

--
-- Table structure for table `trips`
--

CREATE TABLE `trips` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `destination_id` bigint(20) UNSIGNED DEFAULT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `short_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `display_label` varchar(191) COLLATE utf8mb4_unicode_ci GENERATED ALWAYS AS (concat(`start_date`,' ',`short_description`)) VIRTUAL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `trips`
--

INSERT INTO `trips` (`id`, `destination_id`, `start_date`, `end_date`, `short_description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(5, 19, '2023-10-08', '2023-10-18', 'From AED 5,800 / person', '2022-05-22 11:24:17', '2023-04-05 09:06:12', NULL),
(7, 20, '2022-08-20', '2022-08-27', 'From AED 6,900 / person', '2022-06-09 08:06:35', '2022-06-13 16:27:00', '2022-08-12 16:04:43'),
(8, 12, '2023-03-25', '2023-04-01', 'From AED 6,995 / person', '2022-08-12 11:57:00', '2022-09-29 07:01:58', NULL),
(9, 18, '2023-11-22', '2023-12-02', 'From AED 7,250 / person', '2022-08-12 11:57:00', '2023-04-05 09:05:22', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `filament_role` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `filament_access` tinyint(1) NOT NULL DEFAULT '0',
  `roletype` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT 'normal',
  `stripe_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pm_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pm_last_four` varchar(4) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL,
  `mobile` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wellfit` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `filament_role`, `filament_access`, `roletype`, `stripe_id`, `pm_type`, `pm_last_four`, `trial_ends_at`, `mobile`, `wellfit`) VALUES
(1, 'omar', 'omar@omarnas.com', NULL, '$2y$10$ylHGO3ja.oiXhaVevf7h3eDG.bC5wQObrsWhzQ7vfxMAWVdAPQdh2', 'NQ5x3HwuKuxUYAPExSy67cRxd6oQvoFbgTuHdu03gSnX81AbYUQNhBwufjI2', NULL, '2022-06-01 14:00:34', '', 1, 'admin', NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'provider', 'omarabusafieh@gmail.com', NULL, '$2y$10$Y0pdaa6kDLC./jR7yOEVOeqEv2iZjCT70hwTVJAzkJwJaW19pk3nm', NULL, '2022-05-30 18:07:20', '2022-05-30 18:07:20', '', 0, 'provider', NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'TSW', 'admin@zianetwork.com', NULL, '$2y$10$NyZNAbhD8vLCR0yt8kyLOe82Dkp7aJmDCXcAWz5y3Trj.8U8S1c/O', 'ZXSgiIIFLyahWVkRlXx46DpJdvbdnbpIob2fE45EfYRq4mDxySDUKITVHP11', '2022-06-05 13:44:54', '2022-06-05 13:44:54', '', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'Test', 'test@omarnas.com', NULL, '123456', NULL, '2022-06-07 07:00:01', '2022-06-07 07:00:01', '', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'TSW Admin', 'admin@thesurfingweek.com', NULL, '$2y$10$qB.CkNriI.JF8TzbJ5hsB.u6JfBi//1BH84efwpIKj/W7nCnXdHTm', 'f6HDK1lSWc7oKNLfqZe6iTZW3bpy6Qrq342YnzN62waFafdLWAKWmboThkDq', '2022-06-20 08:16:16', '2022-06-20 08:16:16', '', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'omar2', 'omar@apps.ps', NULL, '$2y$10$LHwvMmSLHXuWi9roI2qVjukwt4wh6O64tk7OZjGcKbwgNeY9OovFG', NULL, '2022-07-23 13:40:44', '2022-08-12 05:16:00', '', 0, 'normal', 'cus_M8XE5bg5SkuixR', 'mastercard', '4444', NULL, '0529332012', 'Wellfit1222'),
(7, 'Test App', 'test@apps.ps', NULL, '$2y$10$O3QlCNAXHXIIMb4eULZmg.gCy.LYxtUBxQM87RIxkTGC4kgQHIZuW', NULL, '2022-07-28 12:30:54', '2022-07-28 12:30:54', '', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'Test Test', 'test2@apps.ps', NULL, '$2y$10$kG60dIfA7O9jCO5LEAjPUeWY6uBsRUZ7xksnC7SYywnWmTbH2QL06', NULL, '2022-08-03 10:47:15', '2022-08-03 10:47:15', '', 0, 'normal', NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'omar', 'omar3@apps.com', NULL, '$2y$10$z4n4d31mLYkB70A780KLXOczeTXTWoPaIHW4LhBtSDee2l20OuH4y', NULL, '2022-08-11 09:43:18', '2022-08-11 09:44:01', '', 0, 'normal', 'cus_ME3nbQq2G5yoEt', NULL, NULL, NULL, NULL, NULL),
(10, 'wewe', 'wewewe@wwww.com', NULL, '$2y$10$J16rrL8aVMfGnF8N/8010.wmUOkvxMdnaBejzGT80c9PCyHXd5tPK', NULL, '2022-09-18 07:07:31', '2022-09-18 07:07:31', '', 0, 'normal', NULL, NULL, NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addons`
--
ALTER TABLE `addons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `addon_bookings`
--
ALTER TABLE `addon_bookings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `addon_bookings_booking_id_index` (`booking_id`),
  ADD KEY `addon_bookings_addon_id_index` (`addon_id`);

--
-- Indexes for table `boats`
--
ALTER TABLE `boats`
  ADD PRIMARY KEY (`id`),
  ADD KEY `boats_provider_id_index` (`provider_id`);

--
-- Indexes for table `boat_bookings`
--
ALTER TABLE `boat_bookings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `boat_bookings_boat_id_index` (`boat_id`);

--
-- Indexes for table `boat_guests`
--
ALTER TABLE `boat_guests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `boat_guests_booking_id_index` (`booking_id`);

--
-- Indexes for table `boat_providers`
--
ALTER TABLE `boat_providers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `boat_providers_user_id_index` (`user_id`);

--
-- Indexes for table `booked_lessons`
--
ALTER TABLE `booked_lessons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `booked_lessons_user_id_index` (`user_id`),
  ADD KEY `booked_lessons_lesson_id_index` (`lesson_id`);

--
-- Indexes for table `booked_rooms`
--
ALTER TABLE `booked_rooms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `booked_rooms_booking_id_index` (`booking_id`),
  ADD KEY `booked_rooms_room_id_index` (`room_id`);

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bookings_destination_id_index` (`destination_id`),
  ADD KEY `bookings_trip_id_index` (`trip_id`),
  ADD KEY `bookings_room_option_id_index` (`room_option_id`);

--
-- Indexes for table `club_contacts`
--
ALTER TABLE `club_contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `destinations`
--
ALTER TABLE `destinations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `destination_images`
--
ALTER TABLE `destination_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `destination_images_destination_id_index` (`destination_id`);

--
-- Indexes for table `dymantic_instagram_basic_profiles`
--
ALTER TABLE `dymantic_instagram_basic_profiles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `dymantic_instagram_basic_profiles_username_unique` (`username`);

--
-- Indexes for table `dymantic_instagram_feed_tokens`
--
ALTER TABLE `dymantic_instagram_feed_tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `guests`
--
ALTER TABLE `guests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `guests_booking_id_index` (`booking_id`),
  ADD KEY `guests_bookedroom_id_index` (`bookedroom_id`);

--
-- Indexes for table `highlights`
--
ALTER TABLE `highlights`
  ADD PRIMARY KEY (`id`),
  ADD KEY `highlights_destination_id_index` (`destination_id`);

--
-- Indexes for table `instagram_feeds`
--
ALTER TABLE `instagram_feeds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lessons`
--
ALTER TABLE `lessons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lessons_class_id_index` (`class_id`);

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
-- Indexes for table `newsletter_emails`
--
ALTER TABLE `newsletter_emails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `package_details`
--
ALTER TABLE `package_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `package_details_destination_id_index` (`destination_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
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
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `plans`
--
ALTER TABLE `plans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `program_classes`
--
ALTER TABLE `program_classes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rooms_trip_id_index` (`trip_id`);

--
-- Indexes for table `room_details`
--
ALTER TABLE `room_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `room_details_room_id_index` (`room_id`);

--
-- Indexes for table `room_images`
--
ALTER TABLE `room_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `room_images_room_id_index` (`room_id`);

--
-- Indexes for table `room_options`
--
ALTER TABLE `room_options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `room_options_room_id_index` (`room_id`);

--
-- Indexes for table `room_option_details`
--
ALTER TABLE `room_option_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `room_option_details_room_option_id_index` (`room_option_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `slider_images`
--
ALTER TABLE `slider_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `slider_images_destination_id_index` (`destination_id`);

--
-- Indexes for table `strip_images`
--
ALTER TABLE `strip_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `strip_images_destination_id_index` (`destination_id`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subscriptions_stripe_id_unique` (`stripe_id`),
  ADD KEY `subscriptions_user_id_stripe_status_index` (`user_id`,`stripe_status`);

--
-- Indexes for table `subscription_items`
--
ALTER TABLE `subscription_items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subscription_items_subscription_id_stripe_price_unique` (`subscription_id`,`stripe_price`),
  ADD UNIQUE KEY `subscription_items_stripe_id_unique` (`stripe_id`);

--
-- Indexes for table `surfit_taps`
--
ALTER TABLE `surfit_taps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trips`
--
ALTER TABLE `trips`
  ADD PRIMARY KEY (`id`),
  ADD KEY `trips_destination_id_index` (`destination_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_stripe_id_index` (`stripe_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addons`
--
ALTER TABLE `addons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `addon_bookings`
--
ALTER TABLE `addon_bookings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `boats`
--
ALTER TABLE `boats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `boat_bookings`
--
ALTER TABLE `boat_bookings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `boat_guests`
--
ALTER TABLE `boat_guests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `boat_providers`
--
ALTER TABLE `boat_providers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `booked_lessons`
--
ALTER TABLE `booked_lessons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `booked_rooms`
--
ALTER TABLE `booked_rooms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `club_contacts`
--
ALTER TABLE `club_contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=178;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `destinations`
--
ALTER TABLE `destinations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `destination_images`
--
ALTER TABLE `destination_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `dymantic_instagram_basic_profiles`
--
ALTER TABLE `dymantic_instagram_basic_profiles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `dymantic_instagram_feed_tokens`
--
ALTER TABLE `dymantic_instagram_feed_tokens`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `guests`
--
ALTER TABLE `guests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=146;

--
-- AUTO_INCREMENT for table `highlights`
--
ALTER TABLE `highlights`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `instagram_feeds`
--
ALTER TABLE `instagram_feeds`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `lessons`
--
ALTER TABLE `lessons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `newsletter_emails`
--
ALTER TABLE `newsletter_emails`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `package_details`
--
ALTER TABLE `package_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `plans`
--
ALTER TABLE `plans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `program_classes`
--
ALTER TABLE `program_classes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `room_details`
--
ALTER TABLE `room_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `room_images`
--
ALTER TABLE `room_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT for table `room_options`
--
ALTER TABLE `room_options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `room_option_details`
--
ALTER TABLE `room_option_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `slider_images`
--
ALTER TABLE `slider_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `strip_images`
--
ALTER TABLE `strip_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `subscription_items`
--
ALTER TABLE `subscription_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `surfit_taps`
--
ALTER TABLE `surfit_taps`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `trips`
--
ALTER TABLE `trips`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `addon_bookings`
--
ALTER TABLE `addon_bookings`
  ADD CONSTRAINT `addon_bookings_addon_id_foreign` FOREIGN KEY (`addon_id`) REFERENCES `addons` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `addon_bookings_booking_id_foreign` FOREIGN KEY (`booking_id`) REFERENCES `boat_bookings` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `boats`
--
ALTER TABLE `boats`
  ADD CONSTRAINT `boats_provider_id_foreign` FOREIGN KEY (`provider_id`) REFERENCES `boat_providers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `boat_bookings`
--
ALTER TABLE `boat_bookings`
  ADD CONSTRAINT `boat_bookings_boat_id_foreign` FOREIGN KEY (`boat_id`) REFERENCES `boats` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `boat_guests`
--
ALTER TABLE `boat_guests`
  ADD CONSTRAINT `boat_guests_booking_id_foreign` FOREIGN KEY (`booking_id`) REFERENCES `boat_bookings` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `boat_providers`
--
ALTER TABLE `boat_providers`
  ADD CONSTRAINT `boat_providers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `booked_lessons`
--
ALTER TABLE `booked_lessons`
  ADD CONSTRAINT `booked_lessons_lesson_id_foreign` FOREIGN KEY (`lesson_id`) REFERENCES `lessons` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `booked_lessons_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `booked_rooms`
--
ALTER TABLE `booked_rooms`
  ADD CONSTRAINT `booked_rooms_booking_id_foreign` FOREIGN KEY (`booking_id`) REFERENCES `bookings` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `booked_rooms_room_id_foreign` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `bookings`
--
ALTER TABLE `bookings`
  ADD CONSTRAINT `bookings_destination_id_foreign` FOREIGN KEY (`destination_id`) REFERENCES `destinations` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `bookings_room_option_id_foreign` FOREIGN KEY (`room_option_id`) REFERENCES `room_options` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `bookings_trip_id_foreign` FOREIGN KEY (`trip_id`) REFERENCES `trips` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `destination_images`
--
ALTER TABLE `destination_images`
  ADD CONSTRAINT `destination_images_destination_id_foreign` FOREIGN KEY (`destination_id`) REFERENCES `destinations` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `guests`
--
ALTER TABLE `guests`
  ADD CONSTRAINT `guests_bookedroom_id_foreign` FOREIGN KEY (`bookedroom_id`) REFERENCES `booked_rooms` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `guests_booking_id_foreign` FOREIGN KEY (`booking_id`) REFERENCES `bookings` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `highlights`
--
ALTER TABLE `highlights`
  ADD CONSTRAINT `highlights_destination_id_foreign` FOREIGN KEY (`destination_id`) REFERENCES `destinations` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `lessons`
--
ALTER TABLE `lessons`
  ADD CONSTRAINT `lessons_class_id_foreign` FOREIGN KEY (`class_id`) REFERENCES `program_classes` (`id`) ON DELETE CASCADE;

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
-- Constraints for table `package_details`
--
ALTER TABLE `package_details`
  ADD CONSTRAINT `package_details_destination_id_foreign` FOREIGN KEY (`destination_id`) REFERENCES `destinations` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `rooms`
--
ALTER TABLE `rooms`
  ADD CONSTRAINT `rooms_trip_id_foreign` FOREIGN KEY (`trip_id`) REFERENCES `trips` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `room_details`
--
ALTER TABLE `room_details`
  ADD CONSTRAINT `room_details_room_id_foreign` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `room_images`
--
ALTER TABLE `room_images`
  ADD CONSTRAINT `room_images_room_id_foreign` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `room_options`
--
ALTER TABLE `room_options`
  ADD CONSTRAINT `room_options_room_id_foreign` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `room_option_details`
--
ALTER TABLE `room_option_details`
  ADD CONSTRAINT `room_option_details_room_option_id_foreign` FOREIGN KEY (`room_option_id`) REFERENCES `room_options` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `slider_images`
--
ALTER TABLE `slider_images`
  ADD CONSTRAINT `slider_images_destination_id_foreign` FOREIGN KEY (`destination_id`) REFERENCES `destinations` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `strip_images`
--
ALTER TABLE `strip_images`
  ADD CONSTRAINT `strip_images_destination_id_foreign` FOREIGN KEY (`destination_id`) REFERENCES `destinations` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `trips`
--
ALTER TABLE `trips`
  ADD CONSTRAINT `trips_destination_id_foreign` FOREIGN KEY (`destination_id`) REFERENCES `destinations` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
