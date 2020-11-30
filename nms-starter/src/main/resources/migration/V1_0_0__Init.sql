-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 27, 2019 at 03:42 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nmsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--

CREATE TABLE `activity_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `log_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `subject_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `causer_id` int(11) DEFAULT NULL,
  `causer_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `properties` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `activity_log`
--

INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_id`, `subject_type`, `causer_id`, `causer_type`, `properties`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'The company has been created', 1, 'App\\Company', NULL, NULL, '{\"attributes\":{\"id\":1,\"user_id\":1,\"license_id\":0,\"company_name\":\"MOLCOM\",\"address\":\"Takems\"}}', '2018-11-21 13:07:53', '2018-11-21 13:07:53'),
(2, 'admin', 'The company has been created', 1, 'App\\Company', NULL, NULL, '{\"attributes\":{\"id\":1,\"user_id\":1,\"license_id\":0,\"company_name\":\"MOLCOM\",\"address\":\"Takems\"}}', '2018-11-21 13:12:53', '2018-11-21 13:12:53'),
(3, 'admin', 'The company has been updated', 1, 'App\\Company', NULL, NULL, '{\"attributes\":{\"id\":1,\"user_id\":1,\"license_id\":0,\"company_name\":\"MOLCOM\",\"address\":\"Takems\"},\"old\":{\"id\":1,\"user_id\":1,\"license_id\":0,\"company_name\":\"MOLCOM\",\"address\":\"Takems\"}}', '2018-11-21 13:31:50', '2018-11-21 13:31:50'),
(4, 'admin', 'The company has been updated', 1, 'App\\Company', NULL, NULL, '{\"attributes\":{\"id\":1,\"user_id\":1,\"license_id\":0,\"company_name\":\"MOLCOM\",\"address\":\"Takems\"},\"old\":{\"id\":1,\"user_id\":1,\"license_id\":0,\"company_name\":\"MOLCOM\",\"address\":\"Takems\"}}', '2018-11-21 14:50:07', '2018-11-21 14:50:07'),
(5, 'admin', 'The company has been updated', 1, 'App\\Company', NULL, NULL, '{\"attributes\":{\"id\":1,\"user_id\":1,\"license_id\":0,\"company_name\":\"MOLCOM\",\"address\":\"Takems\"},\"old\":{\"id\":1,\"user_id\":1,\"license_id\":0,\"company_name\":\"MOLCOM\",\"address\":\"Takems\"}}', '2018-11-28 10:31:14', '2018-11-28 10:31:14'),
(6, 'admin', 'The invoice has been created', 1, 'App\\Invoice', 2, 'App\\User', '[]', '2018-11-28 13:33:15', '2018-11-28 13:33:15'),
(7, 'admin', 'The invoice has been created', 53, 'App\\Bill', 2, 'App\\User', '[]', '2018-11-28 13:33:15', '2018-11-28 13:33:15'),
(8, 'admin', 'The invoice fee has been created', 1, 'App\\InvoiceFee', 2, 'App\\User', '[]', '2018-11-28 13:33:16', '2018-11-28 13:33:16'),
(9, 'admin', 'The invoice fee has been created', 2, 'App\\InvoiceFee', 2, 'App\\User', '[]', '2018-11-28 13:33:17', '2018-11-28 13:33:17'),
(10, 'admin', 'The invoice tax has been created', 1, 'App\\InvoiceTax', 2, 'App\\User', '[]', '2018-11-28 13:33:18', '2018-11-28 13:33:18'),
(11, 'admin', 'The invoice has been updated', 1, 'App\\Invoice', 2, 'App\\User', '[]', '2018-11-28 13:33:18', '2018-11-28 13:33:18'),
(12, 'admin', 'The invoice has been updated', 53, 'App\\Bill', 2, 'App\\User', '[]', '2018-11-28 13:33:18', '2018-11-28 13:33:18'),
(13, 'admin', 'The invoice has been created', 2, 'App\\Invoice', 2, 'App\\User', '[]', '2018-11-28 13:34:43', '2018-11-28 13:34:43'),
(14, 'admin', 'The invoice has been created', 54, 'App\\Bill', 2, 'App\\User', '[]', '2018-11-28 13:34:43', '2018-11-28 13:34:43'),
(15, 'admin', 'The invoice fee has been created', 3, 'App\\InvoiceFee', 2, 'App\\User', '[]', '2018-11-28 13:34:43', '2018-11-28 13:34:43'),
(16, 'admin', 'The invoice fee has been created', 4, 'App\\InvoiceFee', 2, 'App\\User', '[]', '2018-11-28 13:34:44', '2018-11-28 13:34:44'),
(17, 'admin', 'The invoice tax has been created', 2, 'App\\InvoiceTax', 2, 'App\\User', '[]', '2018-11-28 13:34:44', '2018-11-28 13:34:44'),
(18, 'admin', 'The invoice has been updated', 2, 'App\\Invoice', 2, 'App\\User', '[]', '2018-11-28 13:34:44', '2018-11-28 13:34:44'),
(19, 'admin', 'The invoice has been updated', 54, 'App\\Bill', 2, 'App\\User', '[]', '2018-11-28 13:34:45', '2018-11-28 13:34:45'),
(20, 'admin', 'The invoice has been created', 3, 'App\\Invoice', 2, 'App\\User', '[]', '2018-11-28 13:35:24', '2018-11-28 13:35:24'),
(21, 'admin', 'The invoice has been created', 55, 'App\\Bill', 2, 'App\\User', '[]', '2018-11-28 13:35:25', '2018-11-28 13:35:25'),
(22, 'admin', 'The invoice fee has been created', 5, 'App\\InvoiceFee', 2, 'App\\User', '[]', '2018-11-28 13:35:25', '2018-11-28 13:35:25'),
(23, 'admin', 'The invoice fee has been created', 6, 'App\\InvoiceFee', 2, 'App\\User', '[]', '2018-11-28 13:35:25', '2018-11-28 13:35:25'),
(24, 'admin', 'The invoice tax has been created', 3, 'App\\InvoiceTax', 2, 'App\\User', '[]', '2018-11-28 13:35:25', '2018-11-28 13:35:25'),
(25, 'admin', 'The invoice has been updated', 3, 'App\\Invoice', 2, 'App\\User', '[]', '2018-11-28 13:35:25', '2018-11-28 13:35:25'),
(26, 'admin', 'The invoice has been updated', 55, 'App\\Bill', 2, 'App\\User', '[]', '2018-11-28 13:35:25', '2018-11-28 13:35:25'),
(27, 'admin', 'The invoice has been created', 4, 'App\\Invoice', 2, 'App\\User', '[]', '2018-11-28 13:56:45', '2018-11-28 13:56:45'),
(28, 'admin', 'The invoice has been created', 56, 'App\\Bill', 2, 'App\\User', '[]', '2018-11-28 13:56:46', '2018-11-28 13:56:46'),
(29, 'admin', 'The invoice fee has been created', 7, 'App\\InvoiceFee', 2, 'App\\User', '[]', '2018-11-28 13:56:46', '2018-11-28 13:56:46'),
(30, 'admin', 'The invoice fee has been created', 8, 'App\\InvoiceFee', 2, 'App\\User', '[]', '2018-11-28 13:56:47', '2018-11-28 13:56:47'),
(31, 'admin', 'The invoice tax has been created', 4, 'App\\InvoiceTax', 2, 'App\\User', '[]', '2018-11-28 13:56:47', '2018-11-28 13:56:47'),
(32, 'admin', 'The invoice has been updated', 4, 'App\\Invoice', 2, 'App\\User', '[]', '2018-11-28 13:56:48', '2018-11-28 13:56:48'),
(33, 'admin', 'The invoice has been updated', 56, 'App\\Bill', 2, 'App\\User', '[]', '2018-11-28 13:56:48', '2018-11-28 13:56:48'),
(34, 'admin', 'The invoice has been created', 5, 'App\\Invoice', 2, 'App\\User', '[]', '2018-11-28 13:57:54', '2018-11-28 13:57:54'),
(35, 'admin', 'The invoice has been created', 57, 'App\\Bill', 2, 'App\\User', '[]', '2018-11-28 13:57:54', '2018-11-28 13:57:54'),
(36, 'admin', 'The invoice fee has been created', 9, 'App\\InvoiceFee', 2, 'App\\User', '[]', '2018-11-28 13:57:54', '2018-11-28 13:57:54'),
(37, 'admin', 'The invoice fee has been created', 10, 'App\\InvoiceFee', 2, 'App\\User', '[]', '2018-11-28 13:57:54', '2018-11-28 13:57:54'),
(38, 'admin', 'The invoice tax has been created', 5, 'App\\InvoiceTax', 2, 'App\\User', '[]', '2018-11-28 13:57:54', '2018-11-28 13:57:54'),
(39, 'admin', 'The invoice has been updated', 5, 'App\\Invoice', 2, 'App\\User', '[]', '2018-11-28 13:57:55', '2018-11-28 13:57:55'),
(40, 'admin', 'The invoice has been updated', 57, 'App\\Bill', 2, 'App\\User', '[]', '2018-11-28 13:57:55', '2018-11-28 13:57:55'),
(41, 'admin', 'The invoice has been updated', 5, 'App\\Invoice', 2, 'App\\User', '[]', '2018-11-28 13:57:57', '2018-11-28 13:57:57'),
(42, 'admin', 'The invoice has been created', 6, 'App\\Invoice', 2, 'App\\User', '[]', '2018-12-03 13:58:28', '2018-12-03 13:58:28'),
(43, 'admin', 'The invoice has been created', 58, 'App\\Bill', 2, 'App\\User', '[]', '2018-12-03 13:58:28', '2018-12-03 13:58:28'),
(44, 'admin', 'The invoice fee has been created', 11, 'App\\InvoiceFee', 2, 'App\\User', '[]', '2018-12-03 13:58:28', '2018-12-03 13:58:28'),
(45, 'admin', 'The invoice fee has been created', 12, 'App\\InvoiceFee', 2, 'App\\User', '[]', '2018-12-03 13:58:29', '2018-12-03 13:58:29'),
(46, 'admin', 'The invoice tax has been created', 6, 'App\\InvoiceTax', 2, 'App\\User', '[]', '2018-12-03 13:58:29', '2018-12-03 13:58:29'),
(47, 'admin', 'The invoice has been updated', 6, 'App\\Invoice', 2, 'App\\User', '[]', '2018-12-03 13:58:29', '2018-12-03 13:58:29'),
(48, 'admin', 'The invoice has been updated', 58, 'App\\Bill', 2, 'App\\User', '[]', '2018-12-03 13:58:29', '2018-12-03 13:58:29'),
(49, 'admin', 'The invoice has been updated', 6, 'App\\Invoice', 2, 'App\\User', '[]', '2018-12-03 13:58:31', '2018-12-03 13:58:31'),
(50, 'admin', 'The invoice has been updated', 5, 'App\\Invoice', 2, 'App\\User', '[]', '2018-12-04 07:03:46', '2018-12-04 07:03:46'),
(51, 'admin', 'The invoice has been updated', 5, 'App\\Invoice', 2, 'App\\User', '[]', '2018-12-04 07:04:32', '2018-12-04 07:04:32'),
(52, 'admin', 'The invoice has been updated', 5, 'App\\Invoice', 2, 'App\\User', '[]', '2018-12-04 07:05:34', '2018-12-04 07:05:34'),
(53, 'admin', 'The payment has been created', 50, 'App\\Payment', 2, 'App\\User', '{\"attributes\":{\"id\":50,\"amount\":472500}}', '2018-12-04 07:05:34', '2018-12-04 07:05:34'),
(54, 'admin', 'The invoice has been updated', 5, 'App\\Invoice', 2, 'App\\User', '[]', '2018-12-04 07:09:29', '2018-12-04 07:09:29'),
(55, 'admin', 'The payment has been created', 1, 'App\\Payment', 2, 'App\\User', '{\"attributes\":{\"id\":1,\"amount\":472500}}', '2018-12-04 07:09:29', '2018-12-04 07:09:29'),
(56, 'admin', 'The invoice has been updated', 5, 'App\\Invoice', 2, 'App\\User', '[]', '2018-12-04 07:10:45', '2018-12-04 07:10:45'),
(57, 'admin', 'The invoice has been updated', 5, 'App\\Invoice', 2, 'App\\User', '[]', '2018-12-04 07:12:02', '2018-12-04 07:12:02'),
(58, 'admin', 'The invoice has been updated', 6, 'App\\Invoice', 2, 'App\\User', '[]', '2018-12-04 07:12:06', '2018-12-04 07:12:06'),
(59, 'admin', 'The payment has been created', 2, 'App\\Payment', 2, 'App\\User', '{\"attributes\":{\"id\":2,\"amount\":840000}}', '2018-12-04 07:12:06', '2018-12-04 07:12:06'),
(60, 'admin', 'The company has been updated', 1, 'App\\Company', NULL, NULL, '{\"attributes\":{\"id\":1,\"user_id\":1,\"license_id\":0,\"company_name\":\"MOLCOM\",\"address\":\"Takems\"},\"old\":{\"id\":1,\"user_id\":1,\"license_id\":0,\"company_name\":\"MOLCOM\",\"address\":\"Takems\"}}', '2018-12-05 10:39:40', '2018-12-05 10:39:40'),
(61, 'admin', 'The application number has been created', 147, 'App\\ApplicationNumber', 1, 'App\\User', '{\"attributes\":{\"id\":147,\"user_id\":1,\"company_id\":1,\"final\":0,\"tracking_no\":\"NMS-NUM-0000000147\"}}', '2018-12-05 10:45:30', '2018-12-05 10:45:30'),
(62, 'admin', 'The application number has been updated', 147, 'App\\ApplicationNumber', 1, 'App\\User', '{\"attributes\":{\"id\":147,\"user_id\":1,\"company_id\":1,\"final\":0,\"tracking_no\":\"NMS-NUM-0000000147\"},\"old\":{\"id\":147,\"user_id\":1,\"company_id\":1,\"final\":0,\"tracking_no\":\"NMS-NUM-0000000147\"}}', '2018-12-05 11:10:03', '2018-12-05 11:10:03'),
(63, 'admin', 'The application number has been updated', 147, 'App\\ApplicationNumber', 1, 'App\\User', '{\"attributes\":{\"id\":147,\"user_id\":1,\"company_id\":1,\"final\":0,\"tracking_no\":\"NMS-NUM-0000000147\"},\"old\":{\"id\":147,\"user_id\":1,\"company_id\":1,\"final\":0,\"tracking_no\":\"NMS-NUM-0000000147\"}}', '2018-12-05 11:22:18', '2018-12-05 11:22:18'),
(64, 'admin', 'The interconnector has been created', 105, 'App\\Interconnector', 1, 'App\\User', '[]', '2018-12-05 11:22:22', '2018-12-05 11:22:22'),
(65, 'admin', 'The application number has been updated', 147, 'App\\ApplicationNumber', 1, 'App\\User', '{\"attributes\":{\"id\":147,\"user_id\":1,\"company_id\":1,\"final\":0,\"tracking_no\":\"NMS-NUM-0000000147\"},\"old\":{\"id\":147,\"user_id\":1,\"company_id\":1,\"final\":0,\"tracking_no\":\"NMS-NUM-0000000147\"}}', '2018-12-05 11:28:12', '2018-12-05 11:28:12'),
(66, 'admin', 'The product number exception  has been created', 118, 'App\\ProductNumber', 1, 'App\\User', '{\"attributes\":{\"id\":118}}', '2018-12-05 11:28:16', '2018-12-05 11:28:16'),
(67, 'admin', 'The application number has been updated', 147, 'App\\ApplicationNumber', 1, 'App\\User', '{\"attributes\":{\"id\":147,\"user_id\":1,\"company_id\":1,\"final\":0,\"tracking_no\":\"NMS-NUM-0000000147\"},\"old\":{\"id\":147,\"user_id\":1,\"company_id\":1,\"final\":0,\"tracking_no\":\"NMS-NUM-0000000147\"}}', '2018-12-05 11:35:00', '2018-12-05 11:35:00'),
(68, 'admin', 'The application number has been updated', 147, 'App\\ApplicationNumber', 1, 'App\\User', '{\"attributes\":{\"id\":147,\"user_id\":1,\"company_id\":1,\"final\":0,\"tracking_no\":\"NMS-NUM-0000000147\"},\"old\":{\"id\":147,\"user_id\":1,\"company_id\":1,\"final\":0,\"tracking_no\":\"NMS-NUM-0000000147\"}}', '2018-12-05 11:35:36', '2018-12-05 11:35:36'),
(69, 'admin', 'The product number exception  has been created', 119, 'App\\ProductNumber', 1, 'App\\User', '{\"attributes\":{\"id\":119}}', '2018-12-05 11:35:36', '2018-12-05 11:35:36'),
(70, 'admin', 'The application number has been updated', 147, 'App\\ApplicationNumber', 1, 'App\\User', '{\"attributes\":{\"id\":147,\"user_id\":1,\"company_id\":1,\"final\":0,\"tracking_no\":\"NMS-NUM-0000000147\"},\"old\":{\"id\":147,\"user_id\":1,\"company_id\":1,\"final\":0,\"tracking_no\":\"NMS-NUM-0000000147\"}}', '2018-12-05 11:36:01', '2018-12-05 11:36:01'),
(71, 'admin', 'The product number exception  has been created', 120, 'App\\ProductNumber', 1, 'App\\User', '{\"attributes\":{\"id\":120}}', '2018-12-05 11:36:01', '2018-12-05 11:36:01'),
(72, 'admin', 'The application number has been updated', 147, 'App\\ApplicationNumber', 1, 'App\\User', '{\"attributes\":{\"id\":147,\"user_id\":1,\"company_id\":1,\"final\":0,\"tracking_no\":\"NMS-NUM-0000000147\"},\"old\":{\"id\":147,\"user_id\":1,\"company_id\":1,\"final\":0,\"tracking_no\":\"NMS-NUM-0000000147\"}}', '2018-12-05 11:36:19', '2018-12-05 11:36:19'),
(73, 'admin', 'The product number exception  has been created', 121, 'App\\ProductNumber', 1, 'App\\User', '{\"attributes\":{\"id\":121}}', '2018-12-05 11:36:19', '2018-12-05 11:36:19'),
(74, 'admin', 'The application number has been updated', 147, 'App\\ApplicationNumber', 1, 'App\\User', '{\"attributes\":{\"id\":147,\"user_id\":1,\"company_id\":1,\"final\":0,\"tracking_no\":\"NMS-NUM-0000000147\"},\"old\":{\"id\":147,\"user_id\":1,\"company_id\":1,\"final\":0,\"tracking_no\":\"NMS-NUM-0000000147\"}}', '2018-12-05 11:36:39', '2018-12-05 11:36:39'),
(75, 'admin', 'The product number exception  has been created', 122, 'App\\ProductNumber', 1, 'App\\User', '{\"attributes\":{\"id\":122}}', '2018-12-05 11:36:39', '2018-12-05 11:36:39'),
(76, 'admin', 'The application number has been updated', 147, 'App\\ApplicationNumber', 1, 'App\\User', '{\"attributes\":{\"id\":147,\"user_id\":1,\"company_id\":1,\"final\":0,\"tracking_no\":\"NMS-NUM-0000000147\"},\"old\":{\"id\":147,\"user_id\":1,\"company_id\":1,\"final\":0,\"tracking_no\":\"NMS-NUM-0000000147\"}}', '2018-12-05 11:37:06', '2018-12-05 11:37:06'),
(77, 'admin', 'The product number exception  has been created', 123, 'App\\ProductNumber', 1, 'App\\User', '{\"attributes\":{\"id\":123}}', '2018-12-05 11:37:06', '2018-12-05 11:37:06'),
(78, 'admin', 'The application number has been updated', 147, 'App\\ApplicationNumber', 1, 'App\\User', '{\"attributes\":{\"id\":147,\"user_id\":1,\"company_id\":1,\"final\":0,\"tracking_no\":\"NMS-NUM-0000000147\"},\"old\":{\"id\":147,\"user_id\":1,\"company_id\":1,\"final\":0,\"tracking_no\":\"NMS-NUM-0000000147\"}}', '2018-12-05 11:37:26', '2018-12-05 11:37:26'),
(79, 'admin', 'The product number exception  has been created', 124, 'App\\ProductNumber', 1, 'App\\User', '{\"attributes\":{\"id\":124}}', '2018-12-05 11:37:26', '2018-12-05 11:37:26'),
(80, 'admin', 'The application number has been updated', 147, 'App\\ApplicationNumber', 1, 'App\\User', '{\"attributes\":{\"id\":147,\"user_id\":1,\"company_id\":1,\"final\":0,\"tracking_no\":\"NMS-NUM-0000000147\"},\"old\":{\"id\":147,\"user_id\":1,\"company_id\":1,\"final\":0,\"tracking_no\":\"NMS-NUM-0000000147\"}}', '2018-12-05 11:39:31', '2018-12-05 11:39:31'),
(81, 'admin', 'The product number exception  has been created', 125, 'App\\ProductNumber', 1, 'App\\User', '{\"attributes\":{\"id\":125}}', '2018-12-05 11:39:31', '2018-12-05 11:39:31'),
(82, 'admin', 'The application number has been updated', 147, 'App\\ApplicationNumber', 1, 'App\\User', '{\"attributes\":{\"id\":147,\"user_id\":1,\"company_id\":1,\"final\":0,\"tracking_no\":\"NMS-NUM-0000000147\"},\"old\":{\"id\":147,\"user_id\":1,\"company_id\":1,\"final\":0,\"tracking_no\":\"NMS-NUM-0000000147\"}}', '2018-12-05 11:40:33', '2018-12-05 11:40:33'),
(83, 'admin', 'The product number exception  has been created', 126, 'App\\ProductNumber', 1, 'App\\User', '{\"attributes\":{\"id\":126}}', '2018-12-05 11:40:34', '2018-12-05 11:40:34'),
(84, 'admin', 'The equipment has been created', 133, 'App\\Equipment', 1, 'App\\User', '{\"attributes\":{\"id\":133,\"application_number_id\":147,\"application_short_id\":null,\"equipment_make\":\"HUAWEI\",\"equipment_date\":\"2015-12-05\"}}', '2018-12-05 11:40:35', '2018-12-05 11:40:35'),
(85, 'admin', 'The application number has been updated', 147, 'App\\ApplicationNumber', 1, 'App\\User', '{\"attributes\":{\"id\":147,\"user_id\":1,\"company_id\":1,\"final\":0,\"tracking_no\":\"NMS-NUM-0000000147\"},\"old\":{\"id\":147,\"user_id\":1,\"company_id\":1,\"final\":0,\"tracking_no\":\"NMS-NUM-0000000147\"}}', '2018-12-05 11:41:06', '2018-12-05 11:41:06'),
(86, 'admin', 'The product number exception  has been created', 127, 'App\\ProductNumber', 1, 'App\\User', '{\"attributes\":{\"id\":127}}', '2018-12-05 11:41:06', '2018-12-05 11:41:06'),
(87, 'admin', 'The equipment has been deleted', 133, 'App\\Equipment', 1, 'App\\User', '{\"attributes\":{\"id\":133,\"application_number_id\":147,\"application_short_id\":null,\"equipment_make\":\"HUAWEI\",\"equipment_date\":\"2015-12-05\"}}', '2018-12-05 11:41:06', '2018-12-05 11:41:06'),
(88, 'admin', 'The application number has been updated', 147, 'App\\ApplicationNumber', 1, 'App\\User', '{\"attributes\":{\"id\":147,\"user_id\":1,\"company_id\":1,\"final\":0,\"tracking_no\":\"NMS-NUM-0000000147\"},\"old\":{\"id\":147,\"user_id\":1,\"company_id\":1,\"final\":0,\"tracking_no\":\"NMS-NUM-0000000147\"}}', '2018-12-05 11:41:37', '2018-12-05 11:41:37'),
(89, 'admin', 'The product number exception  has been created', 128, 'App\\ProductNumber', 1, 'App\\User', '{\"attributes\":{\"id\":128}}', '2018-12-05 11:41:37', '2018-12-05 11:41:37'),
(90, 'admin', 'The equipment has been created', 134, 'App\\Equipment', 1, 'App\\User', '{\"attributes\":{\"id\":134,\"application_number_id\":147,\"application_short_id\":null,\"equipment_make\":\"HUAWEI\",\"equipment_date\":\"2015-12-05\"}}', '2018-12-05 11:41:37', '2018-12-05 11:41:37'),
(91, 'admin', 'The application number has been updated', 147, 'App\\ApplicationNumber', 1, 'App\\User', '{\"attributes\":{\"id\":147,\"user_id\":1,\"company_id\":1,\"final\":0,\"tracking_no\":\"NMS-NUM-0000000147\"},\"old\":{\"id\":147,\"user_id\":1,\"company_id\":1,\"final\":0,\"tracking_no\":\"NMS-NUM-0000000147\"}}', '2018-12-05 11:43:09', '2018-12-05 11:43:09'),
(92, 'admin', 'The product number exception  has been created', 129, 'App\\ProductNumber', 1, 'App\\User', '{\"attributes\":{\"id\":129}}', '2018-12-05 11:43:09', '2018-12-05 11:43:09'),
(93, 'admin', 'The application number has been updated', 147, 'App\\ApplicationNumber', 1, 'App\\User', '{\"attributes\":{\"id\":147,\"user_id\":1,\"company_id\":1,\"final\":0,\"tracking_no\":\"NMS-NUM-0000000147\"},\"old\":{\"id\":147,\"user_id\":1,\"company_id\":1,\"final\":0,\"tracking_no\":\"NMS-NUM-0000000147\"}}', '2018-12-05 11:43:46', '2018-12-05 11:43:46'),
(94, 'admin', 'The product number exception  has been created', 130, 'App\\ProductNumber', 1, 'App\\User', '{\"attributes\":{\"id\":130}}', '2018-12-05 11:43:46', '2018-12-05 11:43:46'),
(95, 'admin', 'The application number has been updated', 147, 'App\\ApplicationNumber', 1, 'App\\User', '{\"attributes\":{\"id\":147,\"user_id\":1,\"company_id\":1,\"final\":0,\"tracking_no\":\"NMS-NUM-0000000147\"},\"old\":{\"id\":147,\"user_id\":1,\"company_id\":1,\"final\":0,\"tracking_no\":\"NMS-NUM-0000000147\"}}', '2018-12-05 11:44:28', '2018-12-05 11:44:28'),
(96, 'admin', 'The product number exception  has been created', 131, 'App\\ProductNumber', 1, 'App\\User', '{\"attributes\":{\"id\":131}}', '2018-12-05 11:44:28', '2018-12-05 11:44:28'),
(97, 'admin', 'The equipment has been deleted', 134, 'App\\Equipment', 1, 'App\\User', '{\"attributes\":{\"id\":134,\"application_number_id\":147,\"application_short_id\":null,\"equipment_make\":\"HUAWEI\",\"equipment_date\":\"2015-12-05\"}}', '2018-12-05 11:44:28', '2018-12-05 11:44:28'),
(98, 'admin', 'The application number has been updated', 147, 'App\\ApplicationNumber', 1, 'App\\User', '{\"attributes\":{\"id\":147,\"user_id\":1,\"company_id\":1,\"final\":0,\"tracking_no\":\"NMS-NUM-0000000147\"},\"old\":{\"id\":147,\"user_id\":1,\"company_id\":1,\"final\":0,\"tracking_no\":\"NMS-NUM-0000000147\"}}', '2018-12-05 11:44:55', '2018-12-05 11:44:55'),
(99, 'admin', 'The product number exception  has been created', 132, 'App\\ProductNumber', 1, 'App\\User', '{\"attributes\":{\"id\":132}}', '2018-12-05 11:44:55', '2018-12-05 11:44:55'),
(100, 'admin', 'The application number has been updated', 147, 'App\\ApplicationNumber', 1, 'App\\User', '{\"attributes\":{\"id\":147,\"user_id\":1,\"company_id\":1,\"final\":0,\"tracking_no\":\"NMS-NUM-0000000147\"},\"old\":{\"id\":147,\"user_id\":1,\"company_id\":1,\"final\":0,\"tracking_no\":\"NMS-NUM-0000000147\"}}', '2018-12-05 11:45:10', '2018-12-05 11:45:10'),
(101, 'admin', 'The product number exception  has been created', 133, 'App\\ProductNumber', 1, 'App\\User', '{\"attributes\":{\"id\":133}}', '2018-12-05 11:45:10', '2018-12-05 11:45:10'),
(102, 'admin', 'The application number has been updated', 147, 'App\\ApplicationNumber', 1, 'App\\User', '{\"attributes\":{\"id\":147,\"user_id\":1,\"company_id\":1,\"final\":0,\"tracking_no\":\"NMS-NUM-0000000147\"},\"old\":{\"id\":147,\"user_id\":1,\"company_id\":1,\"final\":0,\"tracking_no\":\"NMS-NUM-0000000147\"}}', '2018-12-05 11:45:14', '2018-12-05 11:45:14'),
(103, 'admin', 'The product number exception  has been created', 134, 'App\\ProductNumber', 1, 'App\\User', '{\"attributes\":{\"id\":134}}', '2018-12-05 11:45:14', '2018-12-05 11:45:14'),
(104, 'admin', 'The equipment has been created', 135, 'App\\Equipment', 1, 'App\\User', '{\"attributes\":{\"id\":135,\"application_number_id\":147,\"application_short_id\":null,\"equipment_make\":\"HUAWEI\",\"equipment_date\":\"2015-12-05\"}}', '2018-12-05 11:45:14', '2018-12-05 11:45:14'),
(105, 'admin', 'The application number has been updated', 147, 'App\\ApplicationNumber', 1, 'App\\User', '{\"attributes\":{\"id\":147,\"user_id\":1,\"company_id\":1,\"final\":0,\"tracking_no\":\"NMS-NUM-0000000147\"},\"old\":{\"id\":147,\"user_id\":1,\"company_id\":1,\"final\":0,\"tracking_no\":\"NMS-NUM-0000000147\"}}', '2018-12-05 11:45:28', '2018-12-05 11:45:28'),
(106, 'admin', 'The product number exception  has been created', 135, 'App\\ProductNumber', 1, 'App\\User', '{\"attributes\":{\"id\":135}}', '2018-12-05 11:45:28', '2018-12-05 11:45:28'),
(107, 'admin', 'The equipment has been deleted', 135, 'App\\Equipment', 1, 'App\\User', '{\"attributes\":{\"id\":135,\"application_number_id\":147,\"application_short_id\":null,\"equipment_make\":\"HUAWEI\",\"equipment_date\":\"2015-12-05\"}}', '2018-12-05 11:45:28', '2018-12-05 11:45:28'),
(108, 'admin', 'The application number has been updated', 147, 'App\\ApplicationNumber', 1, 'App\\User', '{\"attributes\":{\"id\":147,\"user_id\":1,\"company_id\":1,\"final\":0,\"tracking_no\":\"NMS-NUM-0000000147\"},\"old\":{\"id\":147,\"user_id\":1,\"company_id\":1,\"final\":0,\"tracking_no\":\"NMS-NUM-0000000147\"}}', '2018-12-05 11:45:45', '2018-12-05 11:45:45'),
(109, 'admin', 'The product number exception  has been created', 136, 'App\\ProductNumber', 1, 'App\\User', '{\"attributes\":{\"id\":136}}', '2018-12-05 11:45:45', '2018-12-05 11:45:45'),
(110, 'admin', 'The equipment has been created', 136, 'App\\Equipment', 1, 'App\\User', '{\"attributes\":{\"id\":136,\"application_number_id\":147,\"application_short_id\":null,\"equipment_make\":\"HUAWEI\",\"equipment_date\":\"2015-12-05\"}}', '2018-12-05 11:45:45', '2018-12-05 11:45:45'),
(111, 'admin', 'The application number has been updated', 147, 'App\\ApplicationNumber', 1, 'App\\User', '{\"attributes\":{\"id\":147,\"user_id\":1,\"company_id\":1,\"final\":0,\"tracking_no\":\"NMS-NUM-0000000147\"},\"old\":{\"id\":147,\"user_id\":1,\"company_id\":1,\"final\":0,\"tracking_no\":\"NMS-NUM-0000000147\"}}', '2018-12-05 11:46:22', '2018-12-05 11:46:22'),
(112, 'admin', 'The product number exception  has been created', 137, 'App\\ProductNumber', 1, 'App\\User', '{\"attributes\":{\"id\":137}}', '2018-12-05 11:46:22', '2018-12-05 11:46:22'),
(113, 'admin', 'The equipment has been deleted', 136, 'App\\Equipment', 1, 'App\\User', '{\"attributes\":{\"id\":136,\"application_number_id\":147,\"application_short_id\":null,\"equipment_make\":\"HUAWEI\",\"equipment_date\":\"2015-12-05\"}}', '2018-12-05 11:46:22', '2018-12-05 11:46:22'),
(114, 'admin', 'The equipment has been created', 137, 'App\\Equipment', 1, 'App\\User', '{\"attributes\":{\"id\":137,\"application_number_id\":147,\"application_short_id\":null,\"equipment_make\":\"HUAWEI\",\"equipment_date\":\"2015-12-05\"}}', '2018-12-05 11:46:22', '2018-12-05 11:46:22'),
(115, 'admin', 'The application number has been updated', 147, 'App\\ApplicationNumber', 1, 'App\\User', '{\"attributes\":{\"id\":147,\"user_id\":1,\"company_id\":1,\"final\":0,\"tracking_no\":\"NMS-NUM-0000000147\"},\"old\":{\"id\":147,\"user_id\":1,\"company_id\":1,\"final\":0,\"tracking_no\":\"NMS-NUM-0000000147\"}}', '2018-12-05 11:46:42', '2018-12-05 11:46:42'),
(116, 'admin', 'The product number exception  has been created', 138, 'App\\ProductNumber', 1, 'App\\User', '{\"attributes\":{\"id\":138}}', '2018-12-05 11:46:42', '2018-12-05 11:46:42'),
(117, 'admin', 'The equipment has been deleted', 137, 'App\\Equipment', 1, 'App\\User', '{\"attributes\":{\"id\":137,\"application_number_id\":147,\"application_short_id\":null,\"equipment_make\":\"HUAWEI\",\"equipment_date\":\"2015-12-05\"}}', '2018-12-05 11:46:42', '2018-12-05 11:46:42'),
(118, 'admin', 'The equipment has been created', 138, 'App\\Equipment', 1, 'App\\User', '{\"attributes\":{\"id\":138,\"application_number_id\":147,\"application_short_id\":null,\"equipment_make\":\"HUAWEI\",\"equipment_date\":\"2015-12-05\"}}', '2018-12-05 11:46:42', '2018-12-05 11:46:42'),
(119, 'admin', 'The frequency has been created', 86, 'App\\FrequencyCoverage', 1, 'App\\User', '{\"attributes\":{\"id\":86,\"application_number_id\":147,\"application_short_id\":null,\"frequency\":\"500MHz\",\"coverage_area\":\"Abuja\"}}', '2018-12-05 11:46:42', '2018-12-05 11:46:42'),
(120, 'admin', 'The application number has been updated', 147, 'App\\ApplicationNumber', 1, 'App\\User', '{\"attributes\":{\"id\":147,\"user_id\":1,\"company_id\":1,\"final\":0,\"tracking_no\":\"NMS-NUM-0000000147\"},\"old\":{\"id\":147,\"user_id\":1,\"company_id\":1,\"final\":0,\"tracking_no\":\"NMS-NUM-0000000147\"}}', '2018-12-05 11:47:05', '2018-12-05 11:47:05'),
(121, 'admin', 'The product number exception  has been created', 139, 'App\\ProductNumber', 1, 'App\\User', '{\"attributes\":{\"id\":139}}', '2018-12-05 11:47:06', '2018-12-05 11:47:06'),
(122, 'admin', 'The equipment has been deleted', 138, 'App\\Equipment', 1, 'App\\User', '{\"attributes\":{\"id\":138,\"application_number_id\":147,\"application_short_id\":null,\"equipment_make\":\"HUAWEI\",\"equipment_date\":\"2015-12-05\"}}', '2018-12-05 11:47:07', '2018-12-05 11:47:07'),
(123, 'admin', 'The equipment has been created', 139, 'App\\Equipment', 1, 'App\\User', '{\"attributes\":{\"id\":139,\"application_number_id\":147,\"application_short_id\":null,\"equipment_make\":\"HUAWEI\",\"equipment_date\":\"2015-12-05\"}}', '2018-12-05 11:47:07', '2018-12-05 11:47:07'),
(124, 'admin', 'The frequency has been deleted', 86, 'App\\FrequencyCoverage', 1, 'App\\User', '{\"attributes\":{\"id\":86,\"application_number_id\":147,\"application_short_id\":null,\"frequency\":\"500MHz\",\"coverage_area\":\"Abuja\"}}', '2018-12-05 11:47:07', '2018-12-05 11:47:07'),
(125, 'admin', 'The frequency has been created', 87, 'App\\FrequencyCoverage', 1, 'App\\User', '{\"attributes\":{\"id\":87,\"application_number_id\":147,\"application_short_id\":null,\"frequency\":\"500MHz\",\"coverage_area\":\"Abuja\"}}', '2018-12-05 11:47:08', '2018-12-05 11:47:08'),
(126, 'admin', 'The application number has been updated', 147, 'App\\ApplicationNumber', 1, 'App\\User', '{\"attributes\":{\"id\":147,\"user_id\":1,\"company_id\":1,\"final\":0,\"tracking_no\":\"NMS-NUM-0000000147\"},\"old\":{\"id\":147,\"user_id\":1,\"company_id\":1,\"final\":0,\"tracking_no\":\"NMS-NUM-0000000147\"}}', '2018-12-05 14:58:12', '2018-12-05 14:58:12'),
(127, 'admin', 'The application number has been updated', 147, 'App\\ApplicationNumber', 1, 'App\\User', '{\"attributes\":{\"id\":147,\"user_id\":1,\"company_id\":1,\"final\":0,\"tracking_no\":\"NMS-NUM-0000000147\"},\"old\":{\"id\":147,\"user_id\":1,\"company_id\":1,\"final\":0,\"tracking_no\":\"NMS-NUM-0000000147\"}}', '2018-12-05 15:01:06', '2018-12-05 15:01:06'),
(128, 'admin', 'The rep has been created', 8, 'App\\Rep', 1, 'App\\User', '{\"attributes\":{\"id\":8}}', '2018-12-05 15:15:06', '2018-12-05 15:15:06'),
(129, 'admin', 'The rep has been created', 9, 'App\\Rep', 1, 'App\\User', '{\"attributes\":{\"id\":9}}', '2018-12-05 15:15:07', '2018-12-05 15:15:07'),
(130, 'admin', 'The application number has been updated', 147, 'App\\ApplicationNumber', 1, 'App\\User', '{\"attributes\":{\"id\":147,\"user_id\":1,\"company_id\":1,\"final\":0,\"tracking_no\":\"NMS-NUM-0000000147\"},\"old\":{\"id\":147,\"user_id\":1,\"company_id\":1,\"final\":0,\"tracking_no\":\"NMS-NUM-0000000147\"}}', '2018-12-05 15:16:40', '2018-12-05 15:16:40'),
(131, 'admin', 'The application number has been updated', 147, 'App\\ApplicationNumber', 1, 'App\\User', '{\"attributes\":{\"id\":147,\"user_id\":1,\"company_id\":1,\"final\":1,\"tracking_no\":\"NMS-NUM-0000000147\"},\"old\":{\"id\":147,\"user_id\":1,\"company_id\":1,\"final\":0,\"tracking_no\":\"NMS-NUM-0000000147\"}}', '2018-12-05 15:39:33', '2018-12-05 15:39:33'),
(132, 'admin', 'The number has been updated', 1503, 'App\\Number', 1, 'App\\User', '{\"attributes\":{\"id\":1503},\"old\":{\"id\":1503}}', '2018-12-05 15:39:34', '2018-12-05 15:39:34'),
(133, 'admin', 'The invoice has been updated', 6, 'App\\Invoice', 2, 'App\\User', '[]', '2018-12-05 15:56:43', '2018-12-05 15:56:43'),
(134, 'admin', 'The payment has been updated', 2, 'App\\Payment', 2, 'App\\User', '{\"attributes\":{\"id\":2,\"amount\":840000},\"old\":{\"id\":2,\"amount\":840000}}', '2018-12-05 15:56:43', '2018-12-05 15:56:43'),
(135, 'admin', 'The company has been updated', 1, 'App\\Company', NULL, NULL, '{\"attributes\":{\"id\":1,\"user_id\":1,\"license_id\":0,\"company_name\":\"MOLCOM\",\"address\":\"Takems\"},\"old\":{\"id\":1,\"user_id\":1,\"license_id\":0,\"company_name\":\"MOLCOM\",\"address\":\"Takems\"}}', '2018-12-14 15:25:11', '2018-12-14 15:25:11'),
(136, 'admin', 'The invoice has been created', 7, 'App\\Invoice', 2, 'App\\User', '[]', '2018-12-14 16:41:01', '2018-12-14 16:41:01'),
(137, 'admin', 'The invoice has been created', 59, 'App\\Bill', 2, 'App\\User', '[]', '2018-12-14 16:41:01', '2018-12-14 16:41:01'),
(138, 'admin', 'The invoice fee has been created', 13, 'App\\InvoiceFee', 2, 'App\\User', '[]', '2018-12-14 16:41:01', '2018-12-14 16:41:01'),
(139, 'admin', 'The invoice has been updated', 7, 'App\\Invoice', 2, 'App\\User', '[]', '2018-12-14 16:41:03', '2018-12-14 16:41:03'),
(140, 'admin', 'The invoice has been updated', 59, 'App\\Bill', 2, 'App\\User', '[]', '2018-12-14 16:41:03', '2018-12-14 16:41:03'),
(141, 'admin', 'The invoice has been updated', 7, 'App\\Invoice', 2, 'App\\User', '[]', '2018-12-14 16:41:05', '2018-12-14 16:41:05'),
(142, 'admin', 'The invoice has been updated', 7, 'App\\Invoice', 2, 'App\\User', '[]', '2018-12-14 16:41:08', '2018-12-14 16:41:08'),
(143, 'admin', 'The payment has been created', 3, 'App\\Payment', 2, 'App\\User', '{\"attributes\":{\"id\":3,\"amount\":700000}}', '2018-12-14 16:41:08', '2018-12-14 16:41:08'),
(144, 'admin', 'The invoice has been updated', 7, 'App\\Invoice', 2, 'App\\User', '[]', '2018-12-17 23:38:37', '2018-12-17 23:38:37'),
(145, 'admin', 'The payment has been updated', 3, 'App\\Payment', 2, 'App\\User', '{\"attributes\":{\"id\":3,\"amount\":700000},\"old\":{\"id\":3,\"amount\":700000}}', '2018-12-17 23:47:03', '2018-12-17 23:47:03'),
(146, 'admin', 'The invoice has been updated', 7, 'App\\Invoice', 2, 'App\\User', '[]', '2018-12-18 08:41:21', '2018-12-18 08:41:21'),
(147, 'admin', 'The payment has been updated', 3, 'App\\Payment', 2, 'App\\User', '{\"attributes\":{\"id\":3,\"amount\":700000},\"old\":{\"id\":3,\"amount\":700000}}', '2018-12-18 08:41:21', '2018-12-18 08:41:21'),
(148, 'admin', 'The invoice has been created', 8, 'App\\Invoice', 2, 'App\\User', '[]', '2018-12-18 09:30:54', '2018-12-18 09:30:54'),
(149, 'admin', 'The invoice has been created', 60, 'App\\Bill', 2, 'App\\User', '[]', '2018-12-18 09:30:54', '2018-12-18 09:30:54'),
(150, 'admin', 'The invoice fee has been created', 14, 'App\\InvoiceFee', 2, 'App\\User', '[]', '2018-12-18 09:30:55', '2018-12-18 09:30:55'),
(151, 'admin', 'The invoice has been updated', 8, 'App\\Invoice', 2, 'App\\User', '[]', '2018-12-18 09:30:56', '2018-12-18 09:30:56'),
(152, 'admin', 'The invoice has been updated', 60, 'App\\Bill', 2, 'App\\User', '[]', '2018-12-18 09:30:56', '2018-12-18 09:30:56'),
(153, 'admin', 'The invoice has been updated', 8, 'App\\Invoice', 2, 'App\\User', '[]', '2018-12-18 09:31:02', '2018-12-18 09:31:02'),
(154, 'admin', 'The invoice has been updated', 8, 'App\\Invoice', 2, 'App\\User', '[]', '2018-12-18 09:31:51', '2018-12-18 09:31:51'),
(155, 'admin', 'The payment has been created', 4, 'App\\Payment', 2, 'App\\User', '{\"attributes\":{\"id\":4,\"amount\":500000}}', '2018-12-18 09:31:51', '2018-12-18 09:31:51'),
(156, 'admin', 'The invoice has been updated', 8, 'App\\Invoice', 2, 'App\\User', '[]', '2018-12-18 09:34:40', '2018-12-18 09:34:40'),
(157, 'admin', 'The payment has been updated', 4, 'App\\Payment', 2, 'App\\User', '{\"attributes\":{\"id\":4,\"amount\":500000},\"old\":{\"id\":4,\"amount\":500000}}', '2018-12-18 09:34:40', '2018-12-18 09:34:40'),
(158, 'admin', 'The invoice has been created', 9, 'App\\Invoice', 2, 'App\\User', '[]', '2018-12-18 09:47:18', '2018-12-18 09:47:18'),
(159, 'admin', 'The invoice has been created', 61, 'App\\Bill', 2, 'App\\User', '[]', '2018-12-18 09:47:19', '2018-12-18 09:47:19'),
(160, 'admin', 'The invoice fee has been created', 15, 'App\\InvoiceFee', 2, 'App\\User', '[]', '2018-12-18 09:47:20', '2018-12-18 09:47:20'),
(161, 'admin', 'The invoice has been updated', 9, 'App\\Invoice', 2, 'App\\User', '[]', '2018-12-18 09:47:22', '2018-12-18 09:47:22'),
(162, 'admin', 'The invoice has been updated', 61, 'App\\Bill', 2, 'App\\User', '[]', '2018-12-18 09:47:23', '2018-12-18 09:47:23'),
(163, 'admin', 'The invoice has been updated', 9, 'App\\Invoice', 2, 'App\\User', '[]', '2018-12-18 09:47:28', '2018-12-18 09:47:28'),
(164, 'admin', 'The invoice has been updated', 9, 'App\\Invoice', 2, 'App\\User', '[]', '2018-12-18 09:47:53', '2018-12-18 09:47:53'),
(165, 'admin', 'The payment has been created', 5, 'App\\Payment', 2, 'App\\User', '{\"attributes\":{\"id\":5,\"amount\":350000}}', '2018-12-18 09:47:54', '2018-12-18 09:47:54'),
(166, 'admin', 'The invoice has been updated', 9, 'App\\Invoice', 2, 'App\\User', '[]', '2018-12-18 10:07:14', '2018-12-18 10:07:14'),
(167, 'admin', 'The payment has been updated', 5, 'App\\Payment', 2, 'App\\User', '{\"attributes\":{\"id\":5,\"amount\":350000},\"old\":{\"id\":5,\"amount\":350000}}', '2018-12-18 10:07:15', '2018-12-18 10:07:15'),
(168, 'admin', 'The invoice has been updated', 9, 'App\\Invoice', 2, 'App\\User', '[]', '2018-12-18 15:31:30', '2018-12-18 15:31:30'),
(169, 'admin', 'The payment has been updated', 5, 'App\\Payment', 2, 'App\\User', '{\"attributes\":{\"id\":5,\"amount\":350000},\"old\":{\"id\":5,\"amount\":350000}}', '2018-12-18 15:49:57', '2018-12-18 15:49:57'),
(170, 'admin', 'The invoice has been updated', 9, 'App\\Invoice', 2, 'App\\User', '[]', '2018-12-18 15:52:09', '2018-12-18 15:52:09'),
(171, 'admin', 'The payment has been updated', 5, 'App\\Payment', 2, 'App\\User', '{\"attributes\":{\"id\":5,\"amount\":350000},\"old\":{\"id\":5,\"amount\":350000}}', '2018-12-18 15:52:10', '2018-12-18 15:52:10'),
(172, 'admin', 'The company has been updated', 1, 'App\\Company', NULL, NULL, '{\"attributes\":{\"id\":1,\"user_id\":1,\"license_id\":0,\"company_name\":\"MOLCOM\",\"address\":\"Takems\"},\"old\":{\"id\":1,\"user_id\":1,\"license_id\":0,\"company_name\":\"MOLCOM\",\"address\":\"Takems\"}}', '2019-02-24 10:28:15', '2019-02-24 10:28:15'),
(173, 'admin', 'The company has been updated', 1, 'App\\Company', NULL, NULL, '{\"attributes\":{\"id\":1,\"user_id\":1,\"license_id\":0,\"company_name\":\"MOLCOM\",\"address\":\"Takems\"},\"old\":{\"id\":1,\"user_id\":1,\"license_id\":0,\"company_name\":\"MOLCOM\",\"address\":\"Takems\"}}', '2019-02-24 18:44:37', '2019-02-24 18:44:37'),
(174, 'admin', 'The invoice has been created', 10, 'App\\Invoice', 2, 'App\\User', '[]', '2019-02-25 08:27:48', '2019-02-25 08:27:48'),
(175, 'admin', 'The invoice has been created', 62, 'App\\Bill', 2, 'App\\User', '[]', '2019-02-25 08:27:48', '2019-02-25 08:27:48'),
(176, 'admin', 'The invoice fee has been created', 16, 'App\\InvoiceFee', 2, 'App\\User', '[]', '2019-02-25 08:27:48', '2019-02-25 08:27:48'),
(177, 'admin', 'The invoice fee has been created', 17, 'App\\InvoiceFee', 2, 'App\\User', '[]', '2019-02-25 08:27:48', '2019-02-25 08:27:48'),
(178, 'admin', 'The invoice tax has been created', 7, 'App\\InvoiceTax', 2, 'App\\User', '[]', '2019-02-25 08:27:48', '2019-02-25 08:27:48'),
(179, 'admin', 'The invoice has been updated', 10, 'App\\Invoice', 2, 'App\\User', '[]', '2019-02-25 08:27:48', '2019-02-25 08:27:48'),
(180, 'admin', 'The invoice has been updated', 62, 'App\\Bill', 2, 'App\\User', '[]', '2019-02-25 08:27:48', '2019-02-25 08:27:48'),
(181, 'admin', 'The invoice has been updated', 10, 'App\\Invoice', 2, 'App\\User', '[]', '2019-02-25 08:27:54', '2019-02-25 08:27:54'),
(182, 'admin', 'The invoice has been updated', 10, 'App\\Invoice', 2, 'App\\User', '[]', '2019-02-25 08:27:57', '2019-02-25 08:27:57'),
(183, 'admin', 'The payment has been created', 6, 'App\\Payment', 2, 'App\\User', '{\"attributes\":{\"id\":6,\"amount\":840000}}', '2019-02-25 08:27:58', '2019-02-25 08:27:58'),
(184, 'admin', 'The invoice has been updated', 10, 'App\\Invoice', 2, 'App\\User', '[]', '2019-02-25 09:34:59', '2019-02-25 09:34:59'),
(185, 'admin', 'The payment has been updated', 6, 'App\\Payment', 2, 'App\\User', '{\"attributes\":{\"id\":6,\"amount\":840000},\"old\":{\"id\":6,\"amount\":840000}}', '2019-02-25 09:34:59', '2019-02-25 09:34:59'),
(186, 'admin', 'The invoice has been updated', 10, 'App\\Invoice', 2, 'App\\User', '[]', '2019-02-25 09:36:17', '2019-02-25 09:36:17'),
(187, 'admin', 'The payment has been updated', 6, 'App\\Payment', 2, 'App\\User', '{\"attributes\":{\"id\":6,\"amount\":840000},\"old\":{\"id\":6,\"amount\":840000}}', '2019-02-25 09:36:17', '2019-02-25 09:36:17'),
(188, 'admin', 'The invoice has been updated', 10, 'App\\Invoice', 2, 'App\\User', '[]', '2019-02-25 09:37:39', '2019-02-25 09:37:39'),
(189, 'admin', 'The company has been updated', 1, 'App\\Company', NULL, NULL, '{\"attributes\":{\"id\":1,\"user_id\":1,\"license_id\":0,\"company_name\":\"MOLCOM\",\"address\":\"Takems\"},\"old\":{\"id\":1,\"user_id\":1,\"license_id\":0,\"company_name\":\"MOLCOM\",\"address\":\"Takems\"}}', '2019-02-25 10:37:40', '2019-02-25 10:37:40'),
(190, 'admin', 'The invoice has been created', 11, 'App\\Invoice', 2, 'App\\User', '[]', '2019-02-25 10:47:14', '2019-02-25 10:47:14'),
(191, 'admin', 'The invoice has been created', 63, 'App\\Bill', 2, 'App\\User', '[]', '2019-02-25 10:47:14', '2019-02-25 10:47:14'),
(192, 'admin', 'The invoice fee has been created', 18, 'App\\InvoiceFee', 2, 'App\\User', '[]', '2019-02-25 10:47:14', '2019-02-25 10:47:14'),
(193, 'admin', 'The invoice fee has been created', 19, 'App\\InvoiceFee', 2, 'App\\User', '[]', '2019-02-25 10:47:14', '2019-02-25 10:47:14'),
(194, 'admin', 'The invoice tax has been created', 8, 'App\\InvoiceTax', 2, 'App\\User', '[]', '2019-02-25 10:47:14', '2019-02-25 10:47:14'),
(195, 'admin', 'The invoice has been updated', 11, 'App\\Invoice', 2, 'App\\User', '[]', '2019-02-25 10:47:14', '2019-02-25 10:47:14'),
(196, 'admin', 'The invoice has been updated', 63, 'App\\Bill', 2, 'App\\User', '[]', '2019-02-25 10:47:14', '2019-02-25 10:47:14'),
(197, 'admin', 'The invoice has been updated', 11, 'App\\Invoice', 2, 'App\\User', '[]', '2019-02-25 10:47:18', '2019-02-25 10:47:18'),
(198, 'admin', 'The invoice has been updated', 11, 'App\\Invoice', 2, 'App\\User', '[]', '2019-02-25 10:47:22', '2019-02-25 10:47:22'),
(199, 'admin', 'The payment has been created', 7, 'App\\Payment', 2, 'App\\User', '{\"attributes\":{\"id\":7,\"amount\":880000}}', '2019-02-25 10:47:22', '2019-02-25 10:47:22'),
(200, 'admin', 'The invoice has been updated', 11, 'App\\Invoice', 2, 'App\\User', '[]', '2019-02-25 10:48:51', '2019-02-25 10:48:51'),
(201, 'admin', 'The payment has been updated', 7, 'App\\Payment', 2, 'App\\User', '{\"attributes\":{\"id\":7,\"amount\":880000},\"old\":{\"id\":7,\"amount\":880000}}', '2019-02-25 10:48:51', '2019-02-25 10:48:51'),
(202, 'admin', 'The invoice has been updated', 11, 'App\\Invoice', 2, 'App\\User', '[]', '2019-02-25 11:37:51', '2019-02-25 11:37:51'),
(203, 'admin', 'The payment has been updated', 7, 'App\\Payment', 2, 'App\\User', '{\"attributes\":{\"id\":7,\"amount\":880000},\"old\":{\"id\":7,\"amount\":880000}}', '2019-02-25 11:37:51', '2019-02-25 11:37:51'),
(204, 'admin', 'The invoice has been updated', 11, 'App\\Invoice', 2, 'App\\User', '[]', '2019-02-25 11:39:35', '2019-02-25 11:39:35'),
(205, 'admin', 'The payment has been updated', 7, 'App\\Payment', 2, 'App\\User', '{\"attributes\":{\"id\":7,\"amount\":880000},\"old\":{\"id\":7,\"amount\":880000}}', '2019-02-25 11:39:35', '2019-02-25 11:39:35');

-- --------------------------------------------------------

--
-- Table structure for table `applications`
--

CREATE TABLE `applications` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `final_date` date DEFAULT NULL,
  `application_status_id` int(11) NOT NULL,
  `renew_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `application_extras`
--

CREATE TABLE `application_extras` (
  `id` int(10) UNSIGNED NOT NULL,
  `application_number_id` int(11) DEFAULT NULL,
  `application_short_id` int(11) DEFAULT NULL,
  `docs` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `application_ispc_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `old_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ext` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `last_updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `application_extras`
--

INSERT INTO `application_extras` (`id`, `application_number_id`, `application_short_id`, `docs`, `created_at`, `updated_at`, `deleted_at`, `application_ispc_id`, `name`, `old_name`, `type`, `size`, `ext`, `created_by`, `last_updated_by`) VALUES
(12, 15, NULL, 'uploads/files/596bb44ce8adaabiodun-sulaiman-cvpdf.pdf', '2017-07-16 20:45:32', '2017-07-16 20:45:32', NULL, NULL, '596bb44ce8adaabiodun-sulaiman-cvpdf.pdf', 'Abiodun Sulaiman CV.pdf', 'application/pdf', '56177', NULL, 50, 50),
(13, 15, NULL, 'uploads/files/596bb5172bff4admin-consoledocx.docx', '2017-07-16 20:48:55', '2017-07-16 20:49:55', '2017-07-16 20:49:55', NULL, '596bb5172bff4admin-consoledocx.docx', 'Admin Console.docx', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', '19769', NULL, 50, 50),
(14, 15, NULL, 'uploads/files/596bb928bcc97airtel-new-logo-verjpg.jpg', '2017-07-16 21:06:16', '2017-07-16 21:12:45', '2017-07-16 21:12:45', NULL, '596bb928bcc97airtel-new-logo-verjpg.jpg', 'airtel-new-logo-ver.jpg', 'image/jpeg', '69995', NULL, 50, 50),
(15, 15, NULL, 'uploads/files/596bbb845c927fireshot-screen-capture-028-fees-ncc-nmslive-pauldinwoke236803-codeanyapp-com-nms-public-app-fees-newfees-indexjpg.jpg', '2017-07-16 21:16:20', '2017-07-16 21:16:52', '2017-07-16 21:16:52', NULL, '596bbb845c927fireshot-screen-capture-028-fees-ncc-nmslive-pauldinwoke236803-codeanyapp-com-nms-public-app-fees-newfees-indexjpg.jpg', 'FireShot Screen Capture #028 - \'Fees -- NCC\' - nmslive-pauldinwoke236803_codeanyapp_com_nms_public_app_fees_newfees_index.jpg', 'image/jpeg', '71426', NULL, 50, 50),
(16, 15, NULL, 'uploads/files/596dcc23c8124amaka-profile-question-and-answerrtf.rtf', '2017-07-18 10:51:47', '2017-07-18 10:51:47', NULL, NULL, '596dcc23c8124amaka-profile-question-and-answerrtf.rtf', 'amaka profile question and answer.rtf', 'application/msword', '1996', NULL, 50, 50),
(17, NULL, 28, 'uploads/files/596dd33d33b38amaka-profile-question-and-answerrtf.rtf', '2017-07-18 11:22:05', '2017-07-18 12:53:38', '2017-07-18 12:53:38', NULL, '596dd33d33b38amaka-profile-question-and-answerrtf.rtf', 'amaka profile question and answer.rtf', 'application/msword', '1996', NULL, 50, 50),
(18, NULL, 28, 'uploads/files/596dd360d5440davijpg.jpg', '2017-07-18 11:22:40', '2017-07-18 12:53:48', '2017-07-18 12:53:48', NULL, '596dd360d5440davijpg.jpg', 'davi.jpg', 'image/jpeg', '28806', NULL, 50, 50),
(19, NULL, 28, 'uploads/files/596dd36a263afddptdh-xkaisuwkjpg.jpg', '2017-07-18 11:22:50', '2017-07-18 12:56:35', '2017-07-18 12:56:35', NULL, '596dd36a263afddptdh-xkaisuwkjpg.jpg', 'DDpTDH-XkAIsUWk.jpg', 'image/jpeg', '124353', NULL, 50, 50),
(20, NULL, 28, 'uploads/files/596de991b44f9abiodun-sulaiman-cvpdf.pdf', '2017-07-18 12:57:21', '2017-07-18 12:57:21', NULL, NULL, '596de991b44f9abiodun-sulaiman-cvpdf.pdf', 'Abiodun Sulaiman CV.pdf', 'application/pdf', '56177', NULL, 50, 50),
(21, 29, NULL, 'uploads/files/596df35249de9abiodun-sulaiman-cvpdf.pdf', '2017-07-18 13:38:58', '2017-07-18 13:38:58', NULL, NULL, '596df35249de9abiodun-sulaiman-cvpdf.pdf', 'Abiodun Sulaiman CV.pdf', 'application/pdf', '56177', NULL, 50, 50),
(22, NULL, 29, 'uploads/files/596df52bdccb3abiodun-sulaiman-cvpdf.pdf', '2017-07-18 13:46:51', '2017-07-18 13:46:51', NULL, NULL, '596df52bdccb3abiodun-sulaiman-cvpdf.pdf', 'Abiodun Sulaiman CV.pdf', 'application/pdf', '56177', NULL, 50, 50),
(23, 31, NULL, 'uploads/files/596e00fe40702596df52bdccb3abiodun-sulaiman-cvpdfpdf.pdf', '2017-07-18 14:37:18', '2017-07-18 14:37:18', NULL, NULL, '596e00fe40702596df52bdccb3abiodun-sulaiman-cvpdfpdf.pdf', '596df52bdccb3abiodun-sulaiman-cvpdf.pdf', 'application/pdf', '56177', NULL, 50, 50),
(24, NULL, NULL, 'uploads/files/596e03d128e58abiodun-sulaiman-cvpdf.pdf', '2017-07-18 14:49:21', '2017-07-18 14:49:36', '2017-07-18 14:49:36', 4, '596e03d128e58abiodun-sulaiman-cvpdf.pdf', 'Abiodun Sulaiman CV.pdf', 'application/pdf', '56177', NULL, 50, 50),
(25, NULL, NULL, 'uploads/files/596e03f189bccabiodun-sulaiman-cvpdf.pdf', '2017-07-18 14:49:53', '2017-07-18 14:49:53', NULL, 4, '596e03f189bccabiodun-sulaiman-cvpdf.pdf', 'Abiodun Sulaiman CV.pdf', 'application/pdf', '56177', NULL, 50, 50),
(26, NULL, 30, 'uploads/files/596e09ea7846cnnparxlsx.xlsx', '2017-07-18 15:15:22', '2017-07-18 15:15:22', NULL, NULL, '596e09ea7846cnnparxlsx.xlsx', 'NNPAR.xlsx', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet', '33840', NULL, 50, 50),
(27, NULL, NULL, 'uploads/files/596e29da6ec1805-health-certificatexlsx.xlsx', '2017-07-18 17:31:38', '2017-07-18 17:31:38', NULL, 5, '596e29da6ec1805-health-certificatexlsx.xlsx', '05 - Health Certificate.xlsx', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet', '26788', NULL, 50, 50),
(28, NULL, NULL, 'uploads/files/596e2c082343605-health-certificatexlsx.xlsx', '2017-07-18 17:40:56', '2017-07-18 17:40:56', NULL, 6, '596e2c082343605-health-certificatexlsx.xlsx', '05 - Health Certificate.xlsx', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet', '26788', NULL, 50, 50),
(29, 33, NULL, 'uploads/files/596e30df33b9105-health-certificatexlsx.xlsx', '2017-07-18 18:01:35', '2017-07-18 18:01:35', NULL, NULL, '596e30df33b9105-health-certificatexlsx.xlsx', '05 - Health Certificate.xlsx', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet', '26788', NULL, 50, 50),
(30, 34, NULL, 'uploads/files/596e3ad31bf67amaka-profile-question-and-answerrtf.rtf', '2017-07-18 18:44:03', '2017-07-18 18:44:03', NULL, NULL, '596e3ad31bf67amaka-profile-question-and-answerrtf.rtf', 'amaka profile question and answer.rtf', 'application/msword', '1996', NULL, 50, 50),
(31, 34, NULL, 'uploads/files/596e3addd590dabiodun-sulaiman-cvpdf.pdf', '2017-07-18 18:44:13', '2017-07-18 18:44:13', NULL, NULL, '596e3addd590dabiodun-sulaiman-cvpdf.pdf', 'Abiodun Sulaiman CV.pdf', 'application/pdf', '56177', NULL, 50, 50),
(32, 65, NULL, 'uploads/files/59898fbbd1616checkxlsx.xlsx', '2017-08-08 12:17:31', '2017-08-08 12:17:31', NULL, NULL, '59898fbbd1616checkxlsx.xlsx', 'Check.xlsx', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet', '8618', NULL, 50, 50),
(33, 65, NULL, 'uploads/files/59898fd67c516admin-consoledocx.docx', '2017-08-08 12:17:58', '2017-08-08 12:17:58', NULL, NULL, '59898fd67c516admin-consoledocx.docx', 'Admin Console.docx', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', '19769', NULL, 50, 50),
(34, NULL, 8, 'uploads/files/5989968516d66admin-userxls.xls', '2017-08-08 12:46:29', '2017-08-08 12:46:29', NULL, NULL, '5989968516d66admin-userxls.xls', 'Admin User.xls', 'application/vnd.ms-excel', '6657', NULL, 50, 50),
(35, NULL, 9, 'uploads/files/598999a2e2b4badmin-userxls.xls', '2017-08-08 12:59:46', '2017-08-08 12:59:46', NULL, NULL, '598999a2e2b4badmin-userxls.xls', 'Admin User.xls', 'application/vnd.ms-excel', '6657', NULL, 50, 50),
(36, 67, NULL, 'uploads/files/59899b8d1073906-health-formdocx.docx', '2017-08-08 13:07:57', '2017-08-08 13:07:57', NULL, NULL, '59899b8d1073906-health-formdocx.docx', '06 Health Form.docx', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', '62010', NULL, 50, 50),
(37, NULL, 15, 'uploads/files/59899c2a912cbamakas-nms-number-sheetxlsx.xlsx', '2017-08-08 13:10:34', '2017-08-08 13:11:00', '2017-08-08 13:11:00', NULL, '59899c2a912cbamakas-nms-number-sheetxlsx.xlsx', 'amaka\'s nms_number_sheet.xlsx', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet', '28939', NULL, 50, 50),
(38, NULL, 15, 'uploads/files/59899c3ab44c1admin-user-1xls.xls', '2017-08-08 13:10:50', '2017-08-08 13:10:50', NULL, NULL, '59899c3ab44c1admin-user-1xls.xls', 'Admin User (1).xls', 'application/vnd.ms-excel', '8193', NULL, 50, 50),
(39, 68, NULL, 'uploads/files/5989aa11d0832qoutexlsx.xlsx', '2017-08-08 14:09:53', '2017-08-08 14:09:53', NULL, NULL, '5989aa11d0832qoutexlsx.xlsx', 'qoute.xlsx', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet', '10069', NULL, 50, 50),
(40, 68, NULL, 'uploads/files/5989aadc11d30qoutexlsx.xlsx', '2017-08-08 14:13:16', '2017-08-08 14:13:16', NULL, NULL, '5989aadc11d30qoutexlsx.xlsx', 'qoute.xlsx', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet', '10069', NULL, 50, 50),
(41, NULL, 13, 'uploads/files/5989b7244daa7admin-userxls.xls', '2017-08-08 15:05:40', '2017-08-08 15:05:40', NULL, NULL, '5989b7244daa7admin-userxls.xls', 'Admin User.xls', 'application/vnd.ms-excel', '6657', NULL, 50, 50),
(42, NULL, 26, 'uploads/files/5989bb3ee4434admin-userxls.xls', '2017-08-08 15:23:10', '2017-08-08 15:23:10', NULL, NULL, '5989bb3ee4434admin-userxls.xls', 'Admin User.xls', 'application/vnd.ms-excel', '6657', NULL, 50, 50),
(43, NULL, NULL, 'uploads/files/5989d140a7f42qoutexlsx.xlsx', '2017-08-08 16:57:04', '2017-08-08 16:57:04', NULL, 16, '5989d140a7f42qoutexlsx.xlsx', 'qoute.xlsx', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet', '10069', NULL, 50, 50),
(44, 69, NULL, 'uploads/files/598b0c8da581flicense-statusxls.xls', '2017-08-09 15:22:21', '2017-08-09 15:22:21', NULL, NULL, '598b0c8da581flicense-statusxls.xls', 'license_status.xls', 'application/vnd.ms-excel', '5121', NULL, 50, 50),
(45, 69, NULL, 'uploads/files/598b0c977b1f3comments-1xlsx.xlsx', '2017-08-09 15:22:31', '2017-08-09 15:22:31', NULL, NULL, '598b0c977b1f3comments-1xlsx.xlsx', 'comments (1).xlsx', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet', '8623', NULL, 50, 50),
(46, NULL, NULL, 'uploads/files/598c6af42639bcloud-hosting-companiesdocx.docx', '2017-08-10 16:17:24', '2017-08-10 16:17:24', NULL, 1, '598c6af42639bcloud-hosting-companiesdocx.docx', 'CLOUD HOSTING COMPANIES.docx', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', '14104', NULL, 50, 50),
(47, NULL, NULL, 'uploads/files/598c7459c99ffkobe-bryant-y-shaquille-onealjpg.jpg', '2017-08-10 16:57:29', '2017-08-10 16:57:29', NULL, 26, '598c7459c99ffkobe-bryant-y-shaquille-onealjpg.jpg', 'Kobe-Bryant-y-Shaquille-ONeal.jpg', 'image/jpeg', '280712', NULL, 50, 50),
(48, NULL, NULL, 'uploads/files/598d70ef9048bcloud-hosting-companiesdocx.docx', '2017-08-11 10:55:11', '2017-08-11 10:55:11', NULL, 27, '598d70ef9048bcloud-hosting-companiesdocx.docx', 'CLOUD HOSTING COMPANIES.docx', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', '14104', NULL, 50, 50),
(49, 71, NULL, 'uploads/files/598daac912675cloud-hosting-companiesdocx.docx', '2017-08-11 15:02:01', '2017-08-11 15:02:01', NULL, NULL, '598daac912675cloud-hosting-companiesdocx.docx', 'CLOUD HOSTING COMPANIES.docx', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', '14104', NULL, 50, 50),
(50, NULL, 48, 'uploads/files/598dac1aede0dabj-216xlsx.xlsx', '2017-08-11 15:07:38', '2017-08-11 15:07:38', NULL, NULL, '598dac1aede0dabj-216xlsx.xlsx', 'ABJ-216.xlsx', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet', '605126', NULL, 50, 50),
(51, 72, NULL, 'uploads/files/598daf9f67dddcloud-hosting-companiesdocx.docx', '2017-08-11 15:22:39', '2017-08-11 15:22:39', NULL, NULL, '598daf9f67dddcloud-hosting-companiesdocx.docx', 'CLOUD HOSTING COMPANIES.docx', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', '14104', NULL, 50, 50),
(52, NULL, 49, 'uploads/files/598daff83b938americansitexlsx.xlsx', '2017-08-11 15:24:08', '2017-08-11 15:24:08', NULL, NULL, '598daff83b938americansitexlsx.xlsx', 'americansite.xlsx', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet', '17456', NULL, 50, 50),
(53, NULL, 49, 'uploads/files/598db03e9fd22americansitexlsx.xlsx', '2017-08-11 15:25:18', '2017-08-11 15:25:18', NULL, NULL, '598db03e9fd22americansitexlsx.xlsx', 'americansite.xlsx', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet', '17456', NULL, 50, 50),
(54, NULL, 50, 'uploads/files/598db2437ee1fchapterdocx.docx', '2017-08-11 15:33:55', '2017-08-11 15:33:55', NULL, NULL, '598db2437ee1fchapterdocx.docx', 'Chapter.docx', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', '233774', NULL, 50, 50),
(55, NULL, NULL, 'uploads/files/598db246a131806-health-formdocx.docx', '2017-08-11 15:33:58', '2017-08-11 15:33:58', NULL, 28, '598db246a131806-health-formdocx.docx', '06 Health Form.docx', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', '62010', NULL, 50, 50),
(56, 73, NULL, 'uploads/files/598db42d0ccc0cloud-hosting-companiesdocx.docx', '2017-08-11 15:42:05', '2017-08-11 15:42:05', NULL, NULL, '598db42d0ccc0cloud-hosting-companiesdocx.docx', 'CLOUD HOSTING COMPANIES.docx', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', '14104', NULL, 50, 50),
(57, NULL, NULL, 'uploads/files/598db4603ee4d06-health-formdocx.docx', '2017-08-11 15:42:56', '2017-08-11 15:42:56', NULL, 29, '598db4603ee4d06-health-formdocx.docx', '06 Health Form.docx', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', '62010', NULL, 50, 50),
(58, 74, NULL, 'uploads/files/5992cd053c63cnms-scope-tracker-1xlsx.xlsx', '2017-08-15 12:29:25', '2017-08-15 12:29:25', NULL, NULL, '5992cd053c63cnms-scope-tracker-1xlsx.xlsx', 'NMS SCOPE TRACKER (1).xlsx', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet', '12809', NULL, 50, 50),
(59, 75, NULL, 'uploads/files/5996c753a44bacloud-hosting-companiesdocx.docx', '2017-08-18 12:54:11', '2017-08-18 12:54:11', NULL, NULL, '5996c753a44bacloud-hosting-companiesdocx.docx', 'CLOUD HOSTING COMPANIES.docx', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', '14104', NULL, 50, 50),
(60, NULL, 53, 'uploads/files/5996d1546d987cloud-hosting-companiesdocx.docx', '2017-08-18 13:36:52', '2017-08-18 13:36:52', NULL, NULL, '5996d1546d987cloud-hosting-companiesdocx.docx', 'CLOUD HOSTING COMPANIES.docx', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', '14104', NULL, 50, 50),
(61, NULL, NULL, 'uploads/files/5996d38441232cloud-hosting-companiesdocx.docx', '2017-08-18 13:46:12', '2017-08-18 13:46:12', NULL, 30, '5996d38441232cloud-hosting-companiesdocx.docx', 'CLOUD HOSTING COMPANIES.docx', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', '14104', NULL, 50, 50),
(62, 77, NULL, 'uploads/files/59a54c1010b6505-health-certificatexlsx.xlsx', '2017-08-29 13:12:16', '2017-08-29 13:12:16', NULL, NULL, '59a54c1010b6505-health-certificatexlsx.xlsx', '05 - Health Certificate.xlsx', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet', '26788', NULL, 50, 50),
(63, 77, NULL, 'uploads/files/59a54c2a08f4dlifebridgepng.png', '2017-08-29 13:12:42', '2017-08-29 13:12:42', NULL, NULL, '59a54c2a08f4dlifebridgepng.png', 'lifebridge.png', 'image/png', '9710', NULL, 50, 50),
(64, 78, NULL, 'uploads/files/59a55b47a1f9acover-letter-1docx.docx', '2017-08-29 14:17:11', '2017-08-29 14:17:11', NULL, NULL, '59a55b47a1f9acover-letter-1docx.docx', 'Cover letter 1.docx', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', '13228', NULL, 50, 50),
(65, 78, NULL, 'uploads/files/59a55b5124a02engr-paul-06-06-2017docx.docx', '2017-08-29 14:17:21', '2017-08-29 14:17:21', NULL, NULL, '59a55b5124a02engr-paul-06-06-2017docx.docx', 'Engr Paul 06-06-2017.docx', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', '12853', NULL, 50, 50),
(66, NULL, 60, 'uploads/files/59c2251323025abu-transcript-request-formpdf.pdf', '2017-09-20 11:21:39', '2017-09-20 11:21:39', NULL, NULL, '59c2251323025abu-transcript-request-formpdf.pdf', 'abu_transcript_request_form.pdf', 'application/pdf', '615047', NULL, 50, 50),
(67, 95, NULL, 'uploads/files/59ca0a1509a6bnew-invoicepdf.pdf', '2017-09-26 11:04:37', '2017-09-26 11:04:37', NULL, NULL, '59ca0a1509a6bnew-invoicepdf.pdf', 'new invoice.pdf', 'application/pdf', '10767', NULL, 50, 50),
(68, NULL, 66, 'uploads/files/59cb9cd012348information-07-00055pdf.pdf', '2017-09-27 15:42:56', '2017-09-27 15:42:56', NULL, NULL, '59cb9cd012348information-07-00055pdf.pdf', 'information-07-00055.pdf', 'application/pdf', '221123', NULL, 50, 50),
(69, NULL, NULL, 'uploads/files/59cba2bc72d41dpel-intpdf.PDF', '2017-09-27 16:08:12', '2017-09-27 16:08:12', NULL, 35, '59cba2bc72d41dpel-intpdf.PDF', 'DPEL_INT.PDF', 'application/pdf', '407014', NULL, 50, 50),
(70, 75, NULL, 'uploads/files/59d5f1a918f28abiodun-sulaiman-cvpdf.pdf', '2017-10-05 11:47:37', '2017-10-05 11:47:37', NULL, NULL, '59d5f1a918f28abiodun-sulaiman-cvpdf.pdf', 'Abiodun Sulaiman CV.pdf', 'application/pdf', '56177', NULL, 50, 50),
(71, 75, NULL, 'uploads/files/59d5f27747a06admin-dashpdf.pdf', '2017-10-05 11:51:03', '2017-10-05 11:51:03', NULL, NULL, '59d5f27747a06admin-dashpdf.pdf', 'Admin Dash.pdf', 'application/pdf', '306037', NULL, 50, 50),
(72, 35, NULL, 'uploads/files/59d60027191f7admin-mappng.png', '2017-10-05 12:49:27', '2017-10-05 12:49:27', NULL, NULL, '59d60027191f7admin-mappng.png', 'Admin Map.png', 'image/png', '344069', NULL, 50, 50),
(73, 35, NULL, 'uploads/files/59d6013b73b42admin-dashpdf.pdf', '2017-10-05 12:54:03', '2017-10-05 12:54:03', NULL, NULL, '59d6013b73b42admin-dashpdf.pdf', 'Admin Dash.pdf', 'application/pdf', '306037', NULL, 50, 50),
(74, 95, NULL, 'uploads/files/59d61d6eb7042admin-consoledocx.docx', '2017-10-05 14:54:22', '2017-10-05 14:54:22', NULL, NULL, '59d61d6eb7042admin-consoledocx.docx', 'Admin Console.docx', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', '19769', NULL, 50, 50),
(75, 101, NULL, 'uploads/files/59d620065bde4admin-consoledocx.docx', '2017-10-05 15:05:26', '2017-10-05 15:05:26', NULL, NULL, '59d620065bde4admin-consoledocx.docx', 'Admin Console.docx', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', '19769', NULL, 50, 50),
(76, NULL, 73, 'uploads/files/59e08df50ae8c05-health-certificatexlsx.xlsx', '2017-10-13 12:57:09', '2017-10-13 12:57:09', NULL, NULL, '59e08df50ae8c05-health-certificatexlsx.xlsx', '05 - Health Certificate.xlsx', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet', '26788', NULL, 50, 50),
(77, 119, NULL, 'uploads/files/59e0a8955baaaadmin-consoledocx.docx', '2017-10-13 14:50:45', '2017-10-13 14:50:45', NULL, NULL, '59e0a8955baaaadmin-consoledocx.docx', 'Admin Console.docx', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', '19769', NULL, 50, 50),
(78, NULL, 74, 'uploads/files/59e0abc9c8e93nmscompanies1504097767docx.docx', '2017-10-13 15:04:25', '2017-10-13 15:04:25', NULL, NULL, '59e0abc9c8e93nmscompanies1504097767docx.docx', 'NMSCompanies1504097767.docx', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', '43692', NULL, 50, 50),
(79, 60, NULL, 'uploads/files/59e52b5def5aaabiodun-sulaiman-cover-letter-senior-software-developer-andelapdf.pdf', '2017-10-17 00:57:49', '2017-10-17 00:57:49', NULL, NULL, '59e52b5def5aaabiodun-sulaiman-cover-letter-senior-software-developer-andelapdf.pdf', 'Abiodun Sulaiman Cover Letter Senior Software Developer Andela.pdf', 'application/pdf', '52935', NULL, 50, 50),
(80, 29, NULL, 'uploads/files/59e5341053cfeabiodun-sulaiman-cvpdf.pdf', '2017-10-17 01:34:56', '2017-10-17 01:34:56', NULL, NULL, '59e5341053cfeabiodun-sulaiman-cvpdf.pdf', 'Abiodun Sulaiman CV.pdf', 'application/pdf', '79010', NULL, 50, 50),
(81, 121, NULL, 'uploads/files/59e5b388df4baabiodun-sulaiman-cvpdf.pdf', '2017-10-17 10:38:48', '2017-10-17 10:38:48', NULL, NULL, '59e5b388df4baabiodun-sulaiman-cvpdf.pdf', 'Abiodun Sulaiman CV.pdf', 'application/pdf', '79010', NULL, 50, 50),
(82, NULL, 75, 'uploads/files/59e5c6a748c1fabiodun-sulaiman-cvpdf.pdf', '2017-10-17 12:00:23', '2017-10-17 12:00:23', NULL, NULL, '59e5c6a748c1fabiodun-sulaiman-cvpdf.pdf', 'Abiodun Sulaiman CV.pdf', 'application/pdf', '56177', NULL, 50, 50),
(83, NULL, NULL, 'uploads/files/59e5cbff47983abiodun-sulaiman-cvpdf.pdf', '2017-10-17 12:23:11', '2017-10-17 12:23:11', NULL, 39, '59e5cbff47983abiodun-sulaiman-cvpdf.pdf', 'Abiodun Sulaiman CV.pdf', 'application/pdf', '56177', NULL, 50, 50),
(84, 122, NULL, 'uploads/files/59e5da01ab017nms-scope-tracker-1xlsx.xlsx', '2017-10-17 13:22:57', '2017-10-17 13:22:57', NULL, NULL, '59e5da01ab017nms-scope-tracker-1xlsx.xlsx', 'NMS SCOPE TRACKER (1).xlsx', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet', '12809', NULL, 50, 50),
(85, NULL, 76, 'uploads/files/59e5efc042a2cnms-scope-tracker-1xlsx.xlsx', '2017-10-17 14:55:44', '2017-10-17 14:55:44', NULL, NULL, '59e5efc042a2cnms-scope-tracker-1xlsx.xlsx', 'NMS SCOPE TRACKER (1).xlsx', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet', '12809', NULL, 50, 50),
(86, 137, NULL, 'uploads/files/5a01a11425da605-health-certificatexlsx.xlsx', '2017-11-07 16:03:32', '2017-11-07 16:03:32', NULL, NULL, '5a01a11425da605-health-certificatexlsx.xlsx', '05 - Health Certificate.xlsx', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet', '26788', NULL, 50, 50),
(87, NULL, 78, 'uploads/files/5a01cca051bc3images-1jpg.jpg', '2017-11-07 19:09:20', '2017-11-07 19:09:20', NULL, NULL, '5a01cca051bc3images-1jpg.jpg', 'images (1).jpg', 'image/jpeg', '5564', NULL, 50, 50),
(88, NULL, NULL, 'uploads/files/5a05a9a2e419bimagespng.png', '2017-11-10 17:29:06', '2017-11-10 17:29:06', NULL, 40, '5a05a9a2e419bimagespng.png', 'images.png', 'image/png', '9767', NULL, 50, 50),
(89, NULL, NULL, 'uploads/files/5a05a9a670d8eimagespng.png', '2017-11-10 17:29:10', '2017-11-10 17:29:10', NULL, 40, '5a05a9a670d8eimagespng.png', 'images.png', 'image/png', '9767', NULL, 50, 50),
(90, 143, NULL, 'uploads/files/5a0aec5c09b7bblue-ceiling-2-wallpaper-1280x1024jpg.jpg', '2017-11-14 17:15:08', '2017-11-14 17:15:08', NULL, NULL, '5a0aec5c09b7bblue-ceiling-2-wallpaper-1280x1024jpg.jpg', 'blue_ceiling_2-wallpaper-1280x1024.jpg', 'image/jpeg', '363839', NULL, 50, 50),
(91, NULL, 84, 'uploads/files/5a6de498686caengjpg.jpg', '2018-01-28 13:56:25', '2018-01-28 13:56:25', NULL, NULL, '5a6de498686caengjpg.jpg', 'eng.jpg', 'image/jpeg', '59829', NULL, 50, 50),
(92, NULL, NULL, 'uploads/files/5a6df0ae344ecwelcomepng.png', '2018-01-28 14:47:58', '2018-01-28 14:47:58', NULL, 41, '5a6df0ae344ecwelcomepng.png', 'welcome.png', 'image/png', '345202', NULL, 50, 50);

-- --------------------------------------------------------

--
-- Table structure for table `application_histories`
--

CREATE TABLE `application_histories` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `application_id` int(11) NOT NULL,
  `note` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `last_updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `application_ispcs`
--

CREATE TABLE `application_ispcs` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `company_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ispc_required_no` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ispc_existing_no` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contact_person` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contact_person_no` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `overseas` text COLLATE utf8_unicode_ci NOT NULL,
  `final` tinyint(1) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `stage` int(11) NOT NULL DEFAULT '0',
  `created_by` int(11) DEFAULT NULL,
  `last_updated_by` int(11) DEFAULT NULL,
  `tracking_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `acceptance` int(11) NOT NULL,
  `admin_final` int(11) NOT NULL DEFAULT '0',
  `date_submitted` date DEFAULT NULL,
  `read` int(11) NOT NULL DEFAULT '0',
  `expiry_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `assign_user` int(11) DEFAULT NULL,
  `number_type_id` int(11) DEFAULT NULL,
  `application_status_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `application_ispcs`
--

INSERT INTO `application_ispcs` (`id`, `company_name`, `company_address`, `ispc_required_no`, `ispc_existing_no`, `contact_person`, `contact_person_no`, `overseas`, `final`, `user_id`, `company_id`, `created_at`, `updated_at`, `deleted_at`, `stage`, `created_by`, `last_updated_by`, `tracking_no`, `comment`, `acceptance`, `admin_final`, `date_submitted`, `read`, `expiry_date`, `assign_user`, `number_type_id`, `application_status_id`) VALUES
(1, 'AIRTEL Networks Limited', '32 LEPHAPALA STREET MAITAMA', '7333', '6555', 'Jessy Lesch', '08022545496', 'thanks for your cooperation', 1, 50, 2, '0000-00-00 00:00:00', '2017-06-29 12:11:46', '2017-08-10 16:18:26', 2017, 4, NULL, NULL, 'NMS/ISPC/0000001', 0, 1, '0000-00-00', 0, '0', NULL, NULL, 0),
(2, 'AIRTEL Networks Limited', '32 LEPHAPALA STREET MAITAMA', '5', '3', 'Jessy Lesch', '08052545496', 'Thanks so much', 1, 50, 2, '0000-00-00 00:00:00', '2017-07-13 18:45:03', '2017-07-13 19:44:46', 2017, 4, 50, '50', 'NMS/ISC/0000000002', 0, 0, '0000-00-00', 0, '0', NULL, NULL, 0),
(3, 'AIRTEL Networks Limited', '32 LEPHAPALA STREET MAITAMA', '2', '0', 'Jessy Lesch', '08052545496', 'Over seas agreement connection', 1, 50, 2, '0000-00-00 00:00:00', '2017-07-14 11:53:16', '2017-07-14 12:14:52', 2017, 4, 50, '50', 'NMS/ISC/0000000003', 0, 0, '0000-00-00', 0, '0', NULL, NULL, 0),
(4, 'AIRTEL Networks Limited', '32 LEPHAPALA STREET MAITAMA', '1', '3', 'Jessy Lesch', '08052545496', 'Yes', 0, 50, 2, '0000-00-00 00:00:00', '2017-07-14 12:04:51', '2017-08-11 14:50:19', 2017, 4, 50, '50', 'NMS/ISC/0000000004', 0, 0, '0000-00-00', 0, '0', NULL, NULL, 0),
(5, 'AIRTEL Networks Limited', '32 LEPHAPALA STREET MAITAMA', '2', '0', 'Jessy Lesch', '08052545496', 'It will used for an international gateway.', 1, 50, 2, '0000-00-00 00:00:00', '2017-07-18 17:29:35', '2017-07-18 17:33:04', 2017, 4, 50, '50', 'NMS/ISC/0000000005', 0, 0, '0000-00-00', 0, '0', NULL, NULL, 0),
(6, 'AIRTEL Networks Limited', '32 LEPHAPALA STREET MAITAMA', '1', '1', 'Jessy Lesch', '08052545496', 'Done', 0, 50, 2, '0000-00-00 00:00:00', '2017-07-18 17:38:36', '2017-07-18 17:41:18', 2017, 4, 50, '50', 'NMS/ISC/0000000006', 0, 0, '0000-00-00', 0, '0', NULL, NULL, 0),
(7, 'AIRTEL Networks Limited', '32 LEPHAPALA STREET MAITAMA', '1', '0', 'Jessy Lesch', '08052545496', 'Done', 1, 50, 2, '0000-00-00 00:00:00', '2017-07-18 17:42:04', '2017-07-18 17:44:08', 2017, 4, 50, '50', 'NMS/ISC/0000000007', 0, 1, '0000-00-00', 0, '0', NULL, NULL, 0),
(8, '', '', '', '', '', '', '', 0, 50, 2, '0000-00-00 00:00:00', '2017-07-20 18:28:01', '2017-07-20 18:28:01', 2017, 1, 50, '50', 'NMS/ISC/0000000008', 0, 0, '0000-00-00', 0, '0', NULL, NULL, 0),
(9, '', '', '', '', '', '', '', 0, 50, 2, '0000-00-00 00:00:00', '2017-07-21 13:46:20', '2017-07-21 13:46:20', 2017, 1, 50, '50', 'NMS/ISC/0000000009', 0, 0, '0000-00-00', 0, '0', NULL, NULL, 0),
(10, '', '', '', '', '', '', '', 0, 50, 2, '0000-00-00 00:00:00', '2017-07-21 13:47:47', '2017-07-21 13:47:47', 2017, 1, 50, '50', 'NMS/ISC/0000000010', 0, 0, '0000-00-00', 0, '0', NULL, NULL, 0),
(11, '', '', '', '', '', '', '', 0, 50, 2, '0000-00-00 00:00:00', '2017-07-21 14:30:00', '2017-07-21 14:30:00', 2017, 1, 50, '50', 'NMS/ISC/0000000011', 0, 0, '0000-00-00', 0, '0', NULL, NULL, 0),
(12, '', '', '', '', '', '', '', 0, 50, 2, '0000-00-00 00:00:00', '2017-07-21 15:16:25', '2017-07-21 15:16:25', 2017, 1, 50, '50', 'NMS/ISC/0000000012', 0, 0, '0000-00-00', 0, '0', NULL, NULL, 0),
(13, 'AIRTEL Networks Limited', '32 LEPHAPALA STREET MAITAMA', '', '', 'Jessy Lesch', '08022545496', '', 0, 50, 2, '0000-00-00 00:00:00', '2017-07-24 12:40:07', '2017-07-24 12:46:47', 2017, 2, 50, '50', 'NMS/ISC/0000000013', 0, 0, '0000-00-00', 0, '0', NULL, NULL, 0),
(14, '', '', '', '', '', '', '', 0, 50, 2, '0000-00-00 00:00:00', '2017-07-25 17:45:16', '2017-07-25 17:45:16', 2017, 1, 50, '50', 'NMS/ISC/0000000014', 0, 0, '0000-00-00', 0, '0', NULL, NULL, 0),
(15, '', '', '', '', '', '', '', 0, 50, 2, '0000-00-00 00:00:00', '2017-07-31 11:17:09', '2017-07-31 11:17:09', 2017, 1, 50, '50', 'NMS/ISC/0000000015', 0, 0, '0000-00-00', 0, '0', NULL, NULL, 0),
(16, 'AIRTEL Networks Limited', '32 LEPHAPALA STREET MAITAMA', '', '', 'Jessy Lesch', '08022545496', '', 0, 50, 2, '0000-00-00 00:00:00', '2017-08-01 13:13:31', '2017-08-08 16:57:09', 2017, 4, 50, '50', 'NMS/ISC/0000000016', 0, 0, '0000-00-00', 0, '0', NULL, NULL, 0),
(17, '', '', '', '', '', '', '', 0, 50, 2, '0000-00-00 00:00:00', '2017-08-03 19:05:16', '2017-08-03 19:05:16', 2017, 1, 50, '50', 'NMS-ISC-0000000017', 0, 0, '0000-00-00', 0, '0', NULL, NULL, 0),
(18, 'AIRTEL Networks Limited', '32 LEPHAPALA STREET MAITAMA', '', '', 'Jessy Lesch', '08022545496', '', 0, 50, 2, '0000-00-00 00:00:00', '2017-08-08 10:29:03', '2017-08-08 10:31:32', 2017, 3, 50, '50', 'NMS-ISC-0000000018', 0, 0, '0000-00-00', 0, '0', NULL, NULL, 0),
(19, 'AIRTEL Networks Limited', '32 LEPHAPALA STREET MAITAMA', '', '', 'Jessy Lesch', '08022545496', '', 0, 50, 2, '0000-00-00 00:00:00', '2017-08-08 11:11:05', '2017-08-08 11:12:52', 2017, 2, 50, '50', 'NMS-ISC-0000000019', 0, 0, '0000-00-00', 0, '0', NULL, NULL, 0),
(20, '', '', '', '', '', '', '', 0, 50, 2, '0000-00-00 00:00:00', '2017-08-09 11:00:23', '2017-08-09 11:00:23', 2017, 1, 50, '50', 'NMS-ISC-0000000020', 0, 0, '0000-00-00', 0, '0', NULL, NULL, 0),
(21, '', '', '', '', '', '', '', 0, 50, 2, '0000-00-00 00:00:00', '2017-08-09 11:21:49', '2017-08-09 11:21:49', 2017, 1, 50, '50', 'NMS-ISC-0000000021', 0, 0, '0000-00-00', 0, '0', NULL, NULL, 0),
(22, '', '', '', '', '', '', '', 0, 50, 2, '0000-00-00 00:00:00', '2017-08-09 11:29:57', '2017-08-09 11:29:57', 2017, 1, 50, '50', 'NMS-ISC-0000000022', 0, 0, '0000-00-00', 0, '0', NULL, NULL, 0),
(23, '', '', '', '', '', '', '', 0, 50, 2, '0000-00-00 00:00:00', '2017-08-09 13:30:27', '2017-08-09 13:30:27', 2017, 1, 50, '50', 'NMS-ISC-0000000023', 0, 0, '0000-00-00', 0, '0', NULL, NULL, 0),
(24, 'AIRTEL Networks Limited', '32 LEPHAPALA STREET MAITAMA', '', '', 'Jessy Lesch', '08022545496', '', 0, 50, 2, '0000-00-00 00:00:00', '2017-08-09 13:35:42', '2017-08-10 14:57:38', 2017, 2, 50, '50', 'NMS-ISC-0000000024', 0, 0, '0000-00-00', 0, '0', NULL, NULL, 0),
(25, 'AIRTEL Networks Limited', '32 LEPHAPALA STREET MAITAMA', '', '', 'Jessy Lesch', '08022545496', '', 0, 50, 2, '0000-00-00 00:00:00', '2017-08-09 13:42:59', '2017-08-10 14:12:59', 2017, 3, 50, '50', 'NMS-ISC-0000000025', 0, 0, '0000-00-00', 0, '0', NULL, NULL, 0),
(26, 'AIRTEL Networks Limited', '32 LEPHAPALA STREET MAITAMA', '', '111', 'Jessy Lesch', '08022545496', '', 1, 50, 2, '0000-00-00 00:00:00', '2017-08-10 16:52:44', '2017-08-10 17:03:06', 2017, 4, 50, '50', 'NMS-ISC-0000000025', 0, 1, '0000-00-00', 0, '0', NULL, NULL, 0),
(27, 'AIRTEL Networks Limited', '32 LEPHAPALA STREET MAITAMA', '', '', 'Jessy Lesch', '08022545496', '', 1, 50, 2, '0000-00-00 00:00:00', '2017-08-11 10:43:13', '2017-08-11 10:55:55', 2017, 4, 50, '50', 'NMS-ISC-0000000027', 0, 1, '0000-00-00', 0, '0', NULL, NULL, 0),
(28, 'AIRTEL Networks Limited', '32 LEPHAPALA STREET MAITAMA', '', 'NIL', 'Jessy Lesch', '08022545496', '', 1, 50, 2, '0000-00-00 00:00:00', '2017-08-11 15:28:19', '2017-10-16 11:02:00', 0, 4, 50, '50', 'NMS-ISC-0000000002', 0, 1, '0000-00-00', 0, '1', NULL, 215, 0),
(29, 'AIRTEL Networks Limited', '32 LEPHAPALA STREET MAITAMA', '', '590', 'Jessy Lesch', '08022545496', '', 1, 50, 2, '0000-00-00 00:00:00', '2017-08-11 15:36:24', '2017-09-26 13:45:09', 0, 4, 50, '50', 'NMS-ISC-0000000029', 0, 1, '0000-00-00', 0, '1', NULL, NULL, 0),
(30, 'AIRTEL Networks Limited', '32 LEPHAPALA STREET MAITAMA', '', 'N/A', 'Jessy Lesch', '08022545496', 'none', 1, 50, 2, '0000-00-00 00:00:00', '2017-08-18 13:41:48', '2017-09-26 15:55:48', 0, 4, 50, '50', 'NMS-ISC-0000000030', 0, 1, '0000-00-00', 0, '1', NULL, NULL, 0),
(31, 'AIRTEL Networks Limited', '32 LEPHAPALA STREET MAITAMA', '', '1', 'Jessy Lesch', '08022545496', '', 0, 50, 2, '0000-00-00 00:00:00', '2017-08-22 12:15:45', '2017-08-28 17:28:25', 2017, 4, 50, '50', 'NMS-ISC-0000000031', 0, 0, '0000-00-00', 0, '0', NULL, NULL, 0),
(32, '', '', '', '', '', '', '', 0, 50, 2, '0000-00-00 00:00:00', '2017-08-31 13:55:46', '2017-08-31 13:55:46', 2017, 1, 50, '50', 'NMS-ISC-0000000032', 0, 0, '0000-00-00', 0, '0', NULL, NULL, 0),
(33, '', '', '', '', '', '', '', 0, 50, 2, '0000-00-00 00:00:00', '2017-09-19 12:27:59', '2017-09-19 12:27:59', 2017, 1, 50, '50', 'NMS-ISC-0000000033', 0, 0, '0000-00-00', 0, '0', NULL, NULL, 0),
(34, '', '', '', '', '', '', '', 0, 50, 2, '0000-00-00 00:00:00', '2017-09-21 16:10:02', '2017-09-21 16:10:02', 2017, 1, 50, '50', 'NMS-ISC-0000000034', 0, 0, '0000-00-00', 0, '0', NULL, NULL, 0),
(35, 'AIRTEL Networks Limited', '32 LEPHAPALA STREET MAITAMA', '', '6-090', 'Jessy Lesch', '08022545496', 'None', 1, 50, 2, '0000-00-00 00:00:00', '2017-09-27 15:15:16', '2017-10-05 18:48:44', 0, 4, 50, '50', 'NMS-ISC-0000000035', 0, 1, '0000-00-00', 0, '1', NULL, 39, 0),
(36, '', '', '', '', '', '', '', 0, 50, 2, '0000-00-00 00:00:00', '2017-10-04 11:43:44', '2017-10-04 11:43:44', 2017, 1, 50, '50', 'NMS-ISC-0000000036', 0, 0, '0000-00-00', 0, '0', NULL, NULL, 0),
(37, '', '', '', '', '', '', '', 0, 50, 2, '0000-00-00 00:00:00', '2017-10-04 13:47:51', '2017-10-04 13:47:51', 2017, 1, 50, '50', 'NMS-ISC-0000000037', 0, 0, '0000-00-00', 0, '0', NULL, NULL, 0),
(38, 'Gatecom', '32 LEPHAPALA STREET MAITAMA', '', '', 'Jessy Lesch', '08022545496', '', 0, 50, 2, '0000-00-00 00:00:00', '2017-10-16 12:35:53', '2017-10-17 01:36:51', 2017, 2, 50, '50', 'NMS-ISC-0000000038', 0, 0, '0000-00-00', 0, '0', NULL, NULL, 0),
(39, 'Gatecom', '32 LEPHAPALA STREET MAITAMA', '', '0', 'Jessy Lesch', '08022545496', 'None', 1, 50, 2, '0000-00-00 00:00:00', '2017-10-17 11:59:48', '2017-10-17 12:23:38', 0, 4, 50, '50', 'NMS-ISC-0000000036', 0, 1, '0000-00-00', 0, '0', NULL, NULL, 0),
(40, 'Gatecom', '32 LEPHAPALA STREET MAITAMA', '', '', 'Jessy Lesch', '08022545496', '', 0, 50, 2, '0000-00-00 00:00:00', '2017-10-31 14:46:12', '2017-11-10 17:29:16', 0, 4, 50, '50', 'NMS-ISC-0000000040', 0, 0, '0000-00-00', 0, '0', NULL, NULL, 20),
(41, 'Gatecom', '32 LEPHAPALA STREET MAITAMA', '', 'N/A', 'Jessy Lesch', '08022545496', 'N/A', 1, 50, 2, '2018-01-28 14:35:09', '2018-01-28 14:48:25', NULL, 4, 50, 50, 'NMS-ISPC-0000000002', 'N/A', 1, 0, NULL, 0, NULL, NULL, 20, 2);

-- --------------------------------------------------------

--
-- Table structure for table `application_licenses`
--

CREATE TABLE `application_licenses` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `number_id` int(11) NOT NULL,
  `area_id` int(11) NOT NULL,
  `actual_number_series` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `numbering_range` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `area_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `exact_location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `application_number_id` int(11) NOT NULL,
  `application_short_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `last_updated_by` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `application_numbers`
--

CREATE TABLE `application_numbers` (
  `id` int(10) UNSIGNED NOT NULL,
  `service` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `coverage` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `operating_license` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `numbering_allocation` tinyint(1) NOT NULL,
  `financial_requirements` tinyint(1) NOT NULL,
  `configuration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `configuration_details` text COLLATE utf8_unicode_ci,
  `frequency_assignment` tinyint(1) NOT NULL,
  `license_payment` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `license_payment_remarks` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `renewal_payment` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `renewal_payment_remarks` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `equipment_approval_payment` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `equipment_approval_payment_remarks` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `site_approval_payment` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `site_approval_payment_remarks` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `area_code_payment` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `area_code_payment_remarks` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `area_code_renewal_payment` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `area_code_renewal_payment_remarks` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `number_renewal_payment` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `number_renewal_payment_remarks` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `final` tinyint(1) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `created_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_updated_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `other_licenses` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `existing_telcos` text COLLATE utf8_unicode_ci,
  `inter_agreement` tinyint(1) NOT NULL,
  `frequency_payment` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `frequency_payment_remarks` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `frequency_renewal_payment` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `frequency_renewal_remarks` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `number_payment` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `number_payment_remarks` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mailing_address` text COLLATE utf8_unicode_ci,
  `mobile_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fax_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rep_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rep_surname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rep_firstname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rep_middlename` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `undertaking_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `passport_image_one` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `passport_image_two` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `passport_name_one` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `passport_name_two` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `passport_designation_one` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `passport_signature_one` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `passport_designation_two` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `passport_signature_two` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `application_status_id` int(11) NOT NULL DEFAULT '2',
  `submitted` int(11) NOT NULL DEFAULT '0',
  `tracking_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `stage` int(11) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `acceptance` int(11) NOT NULL,
  `admin_final` int(11) NOT NULL DEFAULT '0',
  `date_submitted` date DEFAULT NULL,
  `read` int(11) NOT NULL DEFAULT '0',
  `assign` int(11) DEFAULT NULL,
  `expiry_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `number_type_id` int(11) DEFAULT NULL,
  `rep_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rep_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rep_phone_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rep_name_two` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rep_email_two` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rep_phone_no_two` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `application_numbers`
--

INSERT INTO `application_numbers` (`id`, `service`, `coverage`, `operating_license`, `numbering_allocation`, `financial_requirements`, `configuration`, `configuration_details`, `frequency_assignment`, `license_payment`, `license_payment_remarks`, `renewal_payment`, `renewal_payment_remarks`, `equipment_approval_payment`, `equipment_approval_payment_remarks`, `site_approval_payment`, `site_approval_payment_remarks`, `area_code_payment`, `area_code_payment_remarks`, `area_code_renewal_payment`, `area_code_renewal_payment_remarks`, `number_renewal_payment`, `number_renewal_payment_remarks`, `final`, `user_id`, `company_id`, `created_by`, `last_updated_by`, `created_at`, `updated_at`, `deleted_at`, `other_licenses`, `existing_telcos`, `inter_agreement`, `frequency_payment`, `frequency_payment_remarks`, `frequency_renewal_payment`, `frequency_renewal_remarks`, `number_payment`, `number_payment_remarks`, `mailing_address`, `mobile_no`, `fax_no`, `email`, `rep_title`, `rep_surname`, `rep_firstname`, `rep_middlename`, `undertaking_name`, `passport_image_one`, `passport_image_two`, `passport_name_one`, `passport_name_two`, `passport_designation_one`, `passport_signature_one`, `passport_designation_two`, `passport_signature_two`, `application_status_id`, `submitted`, `tracking_no`, `stage`, `comment`, `acceptance`, `admin_final`, `date_submitted`, `read`, `assign`, `expiry_date`, `number_type_id`, `rep_name`, `rep_email`, `rep_phone_no`, `rep_name_two`, `rep_email_two`, `rep_phone_no_two`) VALUES
(1, 'Commercial', 'Abuja', '9877678900', 0, 1, 'Cable', '34', 1, 'full', 'Paid', 'part', 'processing', 'full', 'paid', 'part', 'processing', 'full', 'paid', 'full', 'renewed', 'full', 'paid', 0, 0, 0, 'processing', 'part', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2', '50', 50, '2017-05-30 17:48:59', '2017-05-30 17:48:59', '2017-10-16 04:00:00', 'NIL', 'Mtn', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, NULL, 0, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'Commercial', 'Abuja', '9877678900', 0, 1, 'Cable', '34', 1, 'full', 'Paid', 'part', 'processing', 'full', 'paid', 'part', 'processing', 'full', 'paid', 'full', 'renewed', 'full', 'paid', 0, 0, 0, 'processing', 'part', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2', '50', 50, '2017-05-30 17:50:17', '2017-05-30 17:50:17', '2017-10-16 04:00:00', 'NIL', 'Mtn', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, NULL, 0, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'Commercial', 'Abuja', '9877678900', 0, 1, 'Cable', '34', 1, 'full', 'Paid', 'part', 'processing', 'full', 'paid', 'part', 'processing', 'full', 'paid', 'full', 'renewed', 'full', 'paid', 0, 0, 0, 'processing', 'part', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2', '50', 50, '2017-05-30 17:50:29', '2017-05-30 17:50:29', '2017-10-16 04:00:00', 'NIL', 'Mtn', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, NULL, 0, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'Commercial', 'Abuja', '9877678900', 0, 1, 'Cable', '34', 1, 'full', 'Paid', 'part', 'processing', 'full', 'paid', 'part', 'processing', 'full', 'paid', 'full', 'renewed', 'full', 'paid', 0, 0, 0, 'processing', 'part', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2', '50', 50, '2017-05-30 17:51:08', '2017-05-30 17:51:08', '2017-10-16 04:00:00', 'NIL', 'Mtn', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, NULL, 0, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'Commercial', 'Abuja', '9877678900', 0, 1, 'Cable', '34', 1, 'full', 'Paid', 'part', 'processing', 'full', 'paid', 'part', 'processing', 'full', 'paid', 'full', 'renewed', 'full', 'paid', 0, 0, 0, 'processing', 'part', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2', '50', 50, '2017-05-30 17:51:48', '2017-05-30 17:51:48', '2017-10-16 04:00:00', 'NIL', 'Mtn', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 'NMS/NUM/0000000005', 0, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'commercial', 'Abuja', '45543333', 1, 1, 'Cable', '34', 1, 'full', 'paid', 'full', 'renewed', 'part', 'processing', 'part', 'processing', 'full', 'paid', 'part', 'processing', 'part', 'processing', 0, 0, 0, 'paid', 'full', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2', '50', 50, '2017-05-30 18:01:20', '2017-05-30 18:01:20', '2017-10-16 04:00:00', 'NIL', '1 MTN 2 Visa 3 Econnet', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, NULL, 0, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'commercial', 'Abuja', '45543333', 1, 1, 'Cable', '34', 1, 'full', 'paid', 'full', 'renewed', 'part', 'processing', 'part', 'processing', 'full', 'paid', 'part', 'processing', 'part', 'processing', 0, 0, 0, 'paid', 'full', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2', '50', 50, '2017-05-30 18:03:02', '2017-05-30 18:03:02', '2017-10-16 04:00:00', 'NIL', '1 MTN 2 Visa 3 Econnet', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 'NMS/NUM/0000000007', 0, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'commercial', 'Abuja', '45543333', 1, 1, 'Cable', '34', 1, 'full', 'paid', 'full', 'renewed', 'part', 'processing', 'part', 'processing', 'full', 'paid', 'part', 'processing', 'part', 'processing', 0, 0, 0, 'paid', 'full', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2', '50', 50, '2017-05-30 18:04:24', '2017-05-30 18:04:24', '2017-10-16 04:00:00', 'NIL', '1 MTN 2 Visa 3 Econnet', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 'NMS/NUM/0000000008', 0, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'commercial', 'Abuja', '45543333', 1, 1, 'Cable', '34', 1, 'full', 'paid', 'full', 'renewed', 'part', 'processing', 'part', 'processing', 'full', 'paid', 'part', 'processing', 'part', 'processing', 0, 0, 0, 'paid', 'full', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2', '50', 50, '2017-05-30 18:09:53', '2017-05-30 18:09:53', '2017-10-16 04:00:00', 'NIL', '1 MTN 2 Visa 3 Econnet', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 'NMS/NUM/0000000009', 0, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'commercial', 'Abuja', '45543333', 1, 1, 'Cable', '34', 1, 'full', 'paid', 'full', 'renewed', 'part', 'processing', 'part', 'processing', 'full', 'paid', 'part', 'processing', 'part', 'processing', 0, 0, 0, 'paid', 'full', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2', '50', 50, '2017-05-30 18:10:48', '2017-05-30 18:10:48', '2017-10-16 04:00:00', 'NIL', '1 MTN 2 Visa 3 Econnet', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 'NMS/NUM/0000000010', 0, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 'commercial', 'Abuja', '45543333', 1, 1, 'Cable', '34', 1, 'full', 'paid', 'full', 'renewed', 'part', 'processing', 'part', 'processing', 'full', 'paid', 'part', 'processing', 'part', 'processing', 0, 0, 0, 'paid', 'full', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2', '50', 50, '2017-05-30 18:11:16', '2017-05-30 18:11:16', '2017-10-16 04:00:00', 'NIL', '1 MTN 2 Visa 3 Econnet', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 'NMS/NUM/0000000011', 0, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 'Mobile', 'National', '123', 1, 1, 'Radio', '4', 1, 'full', NULL, 'part', NULL, 'full', NULL, 'part', NULL, 'full', NULL, 'part', NULL, 'full', NULL, 0, 0, 0, NULL, 'full', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', '50', 50, '2017-06-12 15:29:18', '2017-06-12 15:29:18', '2017-10-16 04:00:00', '435', '4', '1', 'PMB 334, iKEJA, lAGOS', '08052545496', '345-987-23', 'vesta.walsh@example.net', NULL, NULL, NULL, NULL, 'AIRTEL', 'users/client/NMS1496846039.jpg', 'users/client/NMS1497265416.jpg', 'Mrs Onoja Banke Deborah', 'Miss Adams Tochukwu Francin', 'H.O.D HRMO', NULL, 'H.O.D LIB', NULL, 1, 0, NULL, 0, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 'Mobile', 'National', '123', 1, 1, 'Radio', '4', 1, 'full', NULL, 'part', NULL, 'full', NULL, 'part', NULL, 'full', NULL, 'part', NULL, 'full', NULL, 0, 0, 0, NULL, 'full', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '3', '50', 50, '2017-06-12 15:29:50', '2017-06-12 15:29:50', '2017-10-16 04:00:00', '435', '4', '1', 'PMB 334, iKEJA, lAGOS', '08052545496', '345-987-23', 'vesta.walsh@example.net', NULL, NULL, NULL, NULL, 'AIRTEL', 'users/client/NMS1496846039.jpg', 'users/client/NMS1497265416.jpg', 'Mrs Onoja Banke Deborah', 'Miss Adams Tochukwu Francin', 'H.O.D HRMO', NULL, 'H.O.D LIB', NULL, 3, 0, 'NMS/NUM/0000000013', 3, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 'Broadban', 'Nigeria', 'L2345672', 1, 1, 'Radio', '17. Along 51, Iweka road, Onitsha', 1, 'full', 'Fully Approved', 'part', 'Partially Approved', 'full', 'Fully Approved', 'part', 'Partially Approved', 'part', 'Partially Approved', 'full', 'Fully Approved', 'part', 'Partially Approved', 0, 0, 0, 'Fully Approved', 'full', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2', '50', 50, '2017-06-14 18:18:16', '2017-07-13 22:06:46', '2017-10-16 04:00:00', 'Nil', '14, Spanning through the 6 geopolitical zones', '1', 'PMB 334, iKEJA, lAGOS', '08052545496', '345-987-23', 'vesta.walsh@example.net', NULL, NULL, NULL, NULL, 'AIRTEL Networks Limited', 'users/client/NMS1496846039.jpg', 'users/client/NMS1497265416.jpg', 'Mrs Onoja Banke Deborah', 'Miss Adams Tochukwu Francin', 'Assistant H.O.D', NULL, 'ICT H.O.D', NULL, 2, 0, 'NMS/NUM/0000000014', 5, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 'commercial', 'national', 'Mol123444', 1, 1, 'Both', '80 cell sites Haruna Utako', 1, 'full', 'Paid in full', 'part', 'In', 'full', 'paid', 'full', NULL, 'full', 'fully', 'full', 'fully', 'full', 'fully', 0, 0, 0, 'fully approved', 'part', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2', '50', 50, '2017-06-21 20:07:57', '2017-07-18 13:12:19', '2017-10-16 04:00:00', 'Mol0987', '1 Ntel   2 Econnet', '0', 'PMB 334, iKEJA, lAGOS', '08052545496', '345-987-23', 'vesta.walsh@example.net', NULL, NULL, NULL, NULL, 'AIRTEL Networks Limited', 'users/client/NMS1496846039.jpg', 'users/client/NMS1497265416.jpg', 'Mrs Onoja Banke Deborah', 'Miss Adams Tochukwu Francin', 'Assistant H.O.D', NULL, 'ICT H.O.D', NULL, 2, 0, 'NMS/NUM/0000000015', 5, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 'Calls', 'National', 'L/NO 090909', 1, 1, 'Radio', '4', 1, 'full', NULL, 'part', NULL, 'full', NULL, 'part', NULL, 'full', NULL, 'full', NULL, 'part', NULL, 0, 0, 0, NULL, 'full', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '93', '170', 127, '2017-06-21 21:10:35', '2017-06-21 21:10:35', '2017-10-16 04:00:00', 'L/NO 12345', 'MOLCOM', '1', 'PMB 1234, Abuja', '08012354698', '23222', 'ikediashi.k@molcomconcepts.com', NULL, NULL, NULL, NULL, 'MOLCOM MultiConceptsLtd', '', '', '', '', '', NULL, '', NULL, 2, 0, 'NMS/NUM/0000000016', 2, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 'calls', 'National', 'xxxxxxxxx', 1, 1, 'Both', 'sf', 1, 'part', NULL, 'part', NULL, 'part', NULL, 'full', NULL, 'part', NULL, 'part', NULL, 'full', NULL, 0, 0, 0, NULL, 'part', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2', '50', 50, '2017-06-22 13:42:05', '2017-08-08 19:37:40', '2017-08-11 17:54:54', 'xxxxxxxxxxx', '2', '0', 'PMB 334, iKEJA, lAGOS', '08052545496', '345-987-23', 'vesta.walsh@example.net', NULL, NULL, NULL, NULL, 'AIRTEL Networks Limited', 'users/client/NMS1496846039.jpg', 'users/client/NMS1497265416.jpg', 'Mrs Onoja Banke Deborah', 'Miss Adams Tochukwu Francin', 'Assistant H.O.D', NULL, 'ICT H.O.D', NULL, 1, 0, 'NMS/NUM/0000000017', 5, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 'Public', 'National', 'LN/2344', 1, 1, 'Both', '2', 1, 'full', 'approved', 'full', 'renewed already', 'full', 'approved', 'full', 'renewed already', 'full', 'fully approved', 'full', 'fully approved', 'full', 'fully approved', 0, 0, 0, 'In process', 'part', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '94', '171', 127, '2017-06-28 15:21:49', '2017-06-28 15:21:49', '2017-10-16 04:00:00', 'LN/56788', '1', '1', '21 Haruna', '08023245478', '849930380', 'abiodun.s@molcomconcepts.com', NULL, NULL, NULL, NULL, 'MOLCOM MultiConcepts Limited.', '', '', '', '', '', NULL, '', NULL, 2, 0, 'NMS/NUM/0000000018', 1, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 'Calls', 'National', '1334', 1, 1, 'Radio', 'Abuja', 1, 'full', 'Some remarks', 'part', NULL, 'part', NULL, 'full', NULL, 'part', NULL, 'part', NULL, 'full', NULL, 0, 0, 0, NULL, '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2', '50', 50, '2017-06-29 14:47:24', '2017-07-12 17:04:21', '2017-08-11 17:54:54', '5565', '10', '0', 'PMB 334, iKEJA, lAGOS', '08052545496', '345-987-23', 'vesta.walsh@example.net', NULL, NULL, NULL, NULL, 'AIRTEL Networks Limited', 'users/client/NMS1496846039.jpg', 'users/client/NMS1497265416.jpg', 'Mrs Onoja Banke Deborah', 'Miss Adams Tochukwu Francin', 'Assistant H.O.D', NULL, 'ICT H.O.D', NULL, 2, 0, 'NMS/Num/0000000019', 5, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 'Calls', 'Abuja', 'xxxxxxxx', 1, 0, 'Both', 'na', 1, 'part', NULL, 'part', NULL, 'part', NULL, 'part', NULL, 'part', NULL, 'part', NULL, 'part', NULL, 0, 0, 0, NULL, 'part', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '98', '175', 127, '2017-07-05 19:07:59', '2017-07-05 19:07:59', '2017-10-16 04:00:00', NULL, 'na', '0', 'Port Harcourt', '08065378645', '87698665', 'ochichris4real@gmail.com', NULL, NULL, NULL, NULL, 'Christech Rseources Limited', '', '', '', '', '', NULL, '', NULL, 2, 0, 'NMS/NUM/0000000020', 3, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, 'Calls', 'National', '1234', 1, 1, 'Cable', NULL, 1, 'full', NULL, 'part', NULL, 'full', NULL, 'part', NULL, 'part', NULL, 'full', NULL, 'part', NULL, 0, 0, 0, NULL, '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2', '50', 50, '2017-07-12 17:07:38', '2017-07-12 17:26:28', '2017-08-11 17:54:54', 'None', '3', '1', 'PMB 334, iKEJA, lAGOS', '08052545496', '345-987-23', 'vesta.walsh@example.net', NULL, NULL, NULL, NULL, 'AIRTEL Networks Limited', 'users/client/NMS1496846039.jpg', 'users/client/NMS1497265416.jpg', 'Mrs Onoja Banke Deborah', 'Miss Adams Tochukwu Francin', 'Assistant H.O.D', NULL, 'ICT H.O.D', NULL, 2, 0, 'NMS/Num/0000000021', 5, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, NULL, NULL, NULL, 0, 0, '', NULL, 0, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 0, 0, 0, NULL, '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2', '50', 50, '2017-07-12 18:56:24', '2017-07-12 18:56:24', '2017-10-16 04:00:00', NULL, '', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 'NMS/Num/0000000022', 1, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, NULL, NULL, NULL, 0, 0, '', NULL, 0, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 0, 0, 0, NULL, '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2', '50', 50, '2017-07-14 13:32:44', '2017-07-14 13:32:44', '2017-10-16 04:00:00', NULL, '', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 'NMS/Num/0000000023', 1, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, NULL, NULL, NULL, 0, 0, '', NULL, 0, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 0, 0, 0, NULL, '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2', '50', 50, '2017-07-14 14:19:04', '2017-07-14 14:19:04', '2017-10-16 04:00:00', NULL, '', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 'NMS/Num/0000000024', 1, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, 'Calls', 'National', 'L/NO 989898', 1, 1, 'Radio', '1, Utako', 1, 'full', NULL, 'full', NULL, 'full', NULL, 'full', NULL, 'full', NULL, 'full', NULL, 'full', NULL, 0, 0, 0, NULL, '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2', '50', 50, '2017-07-14 17:09:42', '2017-07-14 18:02:09', '2017-08-11 17:54:54', 'None', '1- MOLCOM', '1', 'PMB 334, iKEJA, lAGOS', '08052545496', '345-987-23', 'vesta.walsh@example.net', NULL, NULL, NULL, NULL, 'AIRTEL Networks Limited', 'users/client/NMS1496846039.jpg', 'users/client/NMS1497265416.jpg', 'Mrs Onoja Banke Deborah', 'Miss Adams Tochukwu Francin', 'Assistant H.O.D', NULL, 'ICT H.O.D', NULL, 2, 0, 'NMS/Num/0000000025', 5, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, NULL, NULL, NULL, 0, 0, '', NULL, 0, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 0, 0, 0, NULL, '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2', '50', 50, '2017-07-17 15:18:14', '2017-07-17 15:18:14', '2017-10-16 04:00:00', NULL, '', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 'NMS/Num/0000000026', 1, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, NULL, 'Nigeri', 'L10894', 0, 0, '', NULL, 0, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 0, 0, 0, NULL, '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2', '50', 50, '2017-07-17 15:27:08', '2017-07-17 15:27:59', '2017-10-16 04:00:00', 'Nil', '', '0', 'PMB 334, iKEJA, lAGOS', '08052545496', '345-987-23', 'vesta.walsh@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 'NMS/Num/0000000027', 2, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(28, NULL, NULL, NULL, 0, 0, '', NULL, 0, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 0, 0, 0, NULL, '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2', '50', 50, '2017-07-17 16:34:08', '2017-07-17 16:34:08', '2017-10-16 04:00:00', NULL, '', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 'NMS/Num/0000000028', 1, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(29, 'Broadband', 'Nigeria', 'L23409', 0, 1, 'Both', NULL, 0, 'full', NULL, 'full', NULL, 'full', NULL, 'full', NULL, 'full', NULL, 'full', NULL, 'full', NULL, 0, 0, 0, NULL, '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2', '50', 50, '2017-07-18 15:15:23', '2017-07-18 16:27:06', '2017-10-16 04:00:00', 'General', 'Seventeen', '0', 'PMB 334, iKEJA, lAGOS', '08052545496', '345-987-23', 'vesta.walsh@example.net', NULL, NULL, NULL, NULL, 'AIRTEL Networks Limited', 'users/client/NMS1496846039.jpg', 'users/client/NMS1497265416.jpg', 'Mrs Onoja Banke Deborah', 'Miss Adams Tochukwu Francin', 'Assistant H.O.D', NULL, 'ICT H.O.D', NULL, 2, 0, 'NMS/Num/0000000029', 5, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(30, NULL, NULL, NULL, 0, 0, '', NULL, 0, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 0, 0, 0, NULL, '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2', '50', 50, '2017-07-18 16:24:26', '2017-07-18 16:24:26', '2017-10-16 04:00:00', NULL, '', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 'NMS/Num/0000000030', 1, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(31, 'Broadband', 'Nigeria', 'L10894', 1, 1, '', 'We have 2 and they are all of reputable standards', 1, 'full', NULL, 'full', NULL, 'full', NULL, 'full', NULL, 'full', NULL, 'full', NULL, 'full', NULL, 0, 0, 0, NULL, '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2', '50', 50, '2017-07-18 16:30:42', '2017-07-18 16:38:07', '2017-08-11 17:54:54', 'British Commonwealth', '', '0', 'PMB 334, iKEJA, lAGOS', '08052545496', '345-987-23', 'vesta.walsh@example.net', NULL, NULL, NULL, NULL, 'AIRTEL Networks Limited', 'users/client/NMS1496846039.jpg', 'users/client/NMS1497265416.jpg', 'Mrs Onoja Banke Deborah', 'Miss Adams Tochukwu Francin', 'Assistant H.O.D', NULL, 'ICT H.O.D', NULL, 2, 0, 'NMS/Num/0000000031', 5, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32, NULL, NULL, NULL, 0, 0, '', NULL, 0, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 0, 0, 0, NULL, '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2', '50', 50, '2017-07-18 16:38:33', '2017-07-18 16:38:33', '2017-10-16 04:00:00', NULL, '', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 'NMS/Num/0000000032', 1, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(33, 'National', 'National', 'LN/567', 1, 1, 'Both', '3', 1, 'full', NULL, 'full', NULL, 'full', NULL, 'full', NULL, 'full', NULL, 'full', NULL, 'full', NULL, 0, 0, 0, NULL, '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2', '50', 50, '2017-07-18 19:54:26', '2017-08-09 15:06:40', '2017-08-11 17:54:54', 'NIL', '1', '1', 'PMB 334, iKEJA, lAGOS', '08052545496', '345-987-23', 'vesta.walsh@example.net', NULL, NULL, NULL, NULL, 'AIRTEL Networks Limited', 'users/client/NMS1496846039.jpg', 'users/client/NMS1497265416.jpg', 'Mrs Onoja Banke Deborah', 'Miss Adams Tochukwu Francin', 'Assistant H.O.D', NULL, 'ICT H.O.D', NULL, 3, 0, 'NMS/Num/0000000033', 5, 'Done', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(34, 'Voice Service', 'National', '21254', 1, 1, 'Cable', NULL, 0, 'full', NULL, 'full', NULL, 'full', NULL, 'full', NULL, 'full', NULL, 'full', NULL, 'full', NULL, 0, 0, 0, NULL, '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2', '50', 50, '2017-07-18 20:17:27', '2017-08-11 13:28:08', '2017-08-11 17:54:54', 'None', 'MOLCOM, MTN, GLO', '0', 'PMB 334, iKEJA, lAGOS', '08052545496', '345-987-23', 'vesta.walsh@example.net', NULL, NULL, NULL, NULL, 'AIRTEL Networks Limited', 'users/client/NMS1496846039.jpg', 'users/client/NMS1497265416.jpg', 'Mrs Onoja Banke Deborah', 'Miss Adams Tochukwu Francin', 'Assistant H.O.D', NULL, 'ICT H.O.D', NULL, 1, 0, 'NMS/Num/0000000034', 5, NULL, 0, 1, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(35, NULL, NULL, NULL, 0, 0, '', NULL, 0, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 0, 0, 0, NULL, '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2', '50', 50, '2017-07-21 13:09:17', '2017-07-21 13:09:17', '2017-10-16 04:00:00', NULL, '', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 'NMS/Num/0000000035', 1, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(36, NULL, NULL, NULL, 0, 0, '', NULL, 0, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 0, 0, 0, NULL, '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2', '50', 50, '2017-07-21 14:19:23', '2017-07-21 14:19:23', '2017-10-16 04:00:00', NULL, '', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 'NMS/Num/0000000036', 1, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(37, NULL, NULL, NULL, 0, 0, '', NULL, 0, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 0, 0, 0, NULL, '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2', '50', 50, '2017-07-21 14:45:01', '2017-07-21 14:45:01', '2017-10-16 04:00:00', NULL, '', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 'NMS/Num/0000000037', 1, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(38, NULL, NULL, NULL, 0, 0, '', NULL, 0, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 0, 0, 0, NULL, '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2', '50', 50, '2017-07-21 14:51:13', '2017-07-21 14:51:13', '2017-10-16 04:00:00', NULL, '', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 'NMS/Num/0000000038', 1, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(39, NULL, NULL, NULL, 0, 0, '', NULL, 0, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 0, 0, 0, NULL, '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2', '50', 50, '2017-07-21 15:19:22', '2017-07-21 15:19:22', '2017-10-16 04:00:00', NULL, '', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 'NMS/Num/0000000039', 1, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40, NULL, NULL, NULL, 0, 0, '', NULL, 0, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 0, 0, 0, NULL, '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2', '50', 50, '2017-07-21 15:44:38', '2017-07-21 15:44:38', '2017-10-16 04:00:00', NULL, '', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 'NMS/Num/0000000040', 1, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(41, NULL, NULL, NULL, 0, 0, '', NULL, 0, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 0, 0, 0, NULL, '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2', '50', 50, '2017-07-21 15:46:33', '2017-07-21 15:46:33', '2017-10-16 04:00:00', NULL, '', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 'NMS/Num/0000000041', 1, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(42, 'Coverage', 'Worldwide', 'L10894787', 0, 0, '', NULL, 0, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 0, 0, 0, NULL, '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2', '50', 50, '2017-07-21 16:05:21', '2017-07-21 16:14:54', '2017-10-16 04:00:00', 'Nil', '', '0', 'PMB 334, iKEJA, lAGOS', '08022545496', '345-987-23', 'vesta.walsh@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 'NMS/Num/0000000042', 2, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(43, NULL, NULL, NULL, 0, 0, '', NULL, 0, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 0, 0, 0, NULL, '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2', '50', 50, '2017-07-21 16:42:44', '2017-07-21 16:42:44', '2017-10-16 04:00:00', NULL, '', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 'NMS/Num/0000000043', 1, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(44, NULL, NULL, NULL, 0, 0, '', NULL, 0, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 0, 0, 0, NULL, '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2', '50', 50, '2017-07-21 17:11:03', '2017-07-21 17:11:03', '2017-10-16 04:00:00', NULL, '', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 'NMS/Num/0000000044', 1, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(45, NULL, NULL, NULL, 0, 0, '', NULL, 0, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 0, 0, 0, NULL, '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2', '50', 50, '2017-07-21 18:00:19', '2017-07-21 18:00:19', '2017-10-16 04:00:00', NULL, '', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 'NMS/Num/0000000045', 1, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(46, NULL, NULL, NULL, 0, 0, '', NULL, 0, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 0, 0, 0, NULL, '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2', '50', 50, '2017-07-24 09:10:34', '2017-07-24 09:10:34', '2017-10-16 04:00:00', NULL, '', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 'NMS/Num/0000000046', 1, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(47, NULL, NULL, NULL, 0, 0, '', NULL, 0, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 0, 0, 0, NULL, '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2', '50', 50, '2017-07-24 13:34:12', '2017-07-24 13:34:12', '2017-10-16 04:00:00', NULL, '', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 'NMS/Num/0000000047', 1, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(48, NULL, NULL, NULL, 0, 0, '', NULL, 0, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 0, 0, 0, NULL, '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2', '50', 50, '2017-07-24 14:24:42', '2017-08-10 13:56:49', '2017-10-16 04:00:00', NULL, '', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 'NMS/Num/0000000048', 1, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(49, NULL, NULL, NULL, 0, 0, '', NULL, 0, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 0, 0, 0, NULL, '', NULL, '0000-00-00 00:00:00', NULL, '2', '50', 50, '2017-07-25 12:33:54', '2017-07-25 18:03:45', '2017-10-16 04:00:00', NULL, '', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 'NMS/Num/0000000049', 1, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(50, NULL, NULL, NULL, 0, 0, '', NULL, 0, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 0, 0, 0, NULL, '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2', '50', 50, '2017-07-25 13:42:14', '2017-07-25 18:10:30', '2017-10-16 04:00:00', NULL, '', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 'NMS/Num/0000000050', 1, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(51, NULL, NULL, NULL, 0, 0, '', NULL, 0, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 0, 0, 0, NULL, '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2', '50', 50, '2017-07-25 19:45:59', '2017-07-25 19:45:59', '2017-10-16 04:00:00', NULL, '', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 'NMS/Num/0000000049', 1, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(52, NULL, NULL, NULL, 0, 0, '', NULL, 0, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 0, 0, 0, NULL, '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2', '50', 50, '2017-07-26 13:12:51', '2017-07-26 13:12:51', '2017-10-16 04:00:00', NULL, '', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 'NMS/Num/0000000052', 1, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(53, NULL, NULL, NULL, 0, 0, '', NULL, 0, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 0, 0, 0, NULL, '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2', '50', 50, '2017-07-26 13:15:57', '2017-07-26 13:15:57', '2017-10-16 04:00:00', NULL, '', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 'NMS/Num/0000000053', 1, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(54, NULL, NULL, NULL, 0, 0, '', NULL, 0, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 0, 0, 0, NULL, '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2', '50', 50, '2017-07-26 14:09:01', '2017-07-26 14:09:01', '2017-10-16 04:00:00', NULL, '', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 'NMS/Num/0000000054', 1, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(55, NULL, NULL, NULL, 0, 0, '', NULL, 0, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 0, 0, 0, NULL, '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2', '50', 50, '2017-07-26 15:10:29', '2017-07-26 15:10:29', '2017-10-16 04:00:00', NULL, '', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 'NMS/Num/0000000055', 1, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(56, NULL, NULL, NULL, 0, 0, '', NULL, 0, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 0, 0, 0, NULL, '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2', '50', 50, '2017-07-28 14:22:23', '2017-07-28 14:22:23', '2017-10-16 04:00:00', NULL, '', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 'NMS/NUM/0000000056', 1, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(57, NULL, NULL, NULL, 0, 0, '', NULL, 0, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 0, 0, 0, NULL, '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2', '50', 50, '2017-07-28 14:29:45', '2017-07-28 14:29:45', '2017-10-16 04:00:00', NULL, '', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 'NMS/NUM/0000000057', 1, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(58, NULL, NULL, NULL, 0, 0, '', NULL, 0, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 0, 0, 0, NULL, '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2', '50', 50, '2017-07-31 13:16:54', '2017-07-31 13:16:54', '2017-10-16 04:00:00', NULL, '', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 'NMS/NUM/0000000058', 1, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(59, NULL, NULL, NULL, 0, 0, '', NULL, 0, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 0, 0, 0, NULL, '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2', '50', 50, '2017-08-07 12:36:31', '2017-08-07 12:36:31', '2017-10-16 04:00:00', NULL, '', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 'NMS-NUM-0000000059', 1, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(60, NULL, NULL, NULL, 0, 0, '', NULL, 0, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 0, 0, 0, NULL, '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2', '50', 50, '2017-08-07 12:39:14', '2017-08-07 12:39:14', '2017-10-16 04:00:00', NULL, '', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 'NMS-NUM-0000000060', 1, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(61, NULL, NULL, NULL, 0, 0, '', NULL, 0, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 0, 0, 0, NULL, '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2', '50', 50, '2017-08-07 12:40:05', '2017-08-07 12:40:05', '2017-10-16 04:00:00', NULL, '', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 'NMS-NUM-0000000061', 1, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(62, NULL, NULL, NULL, 0, 0, '', NULL, 0, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 0, 0, 0, NULL, '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2', '50', 50, '2017-08-07 13:49:49', '2017-08-07 13:49:49', '2017-10-16 04:00:00', NULL, '', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 'NMS-NUM-0000000062', 1, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(63, NULL, NULL, NULL, 0, 0, '', NULL, 0, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 0, 0, 0, NULL, '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2', '50', 50, '2017-08-07 14:53:50', '2017-08-10 13:57:06', '2017-10-16 04:00:00', NULL, '', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 'NMS-NUM-0000000063', 1, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(64, NULL, NULL, NULL, 0, 0, '', NULL, 0, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 0, 0, 0, NULL, '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2', '50', 50, '2017-08-08 12:21:26', '2017-08-08 12:21:26', '2017-10-16 04:00:00', NULL, '', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 'NMS-NUM-0000000064', 1, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(65, NULL, NULL, '02025', 0, 0, 'Radio', NULL, 0, 'full', NULL, 'full', NULL, 'full', NULL, 'full', NULL, 'full', NULL, 'full', NULL, 'full', NULL, 0, 0, 0, NULL, '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2', '50', 50, '2017-08-08 13:09:18', '2017-08-08 14:18:22', '2017-10-16 04:00:00', NULL, '', '0', 'PMB 334, iKEJA, lAGOS', '+(234)08022545496', '345-987-23', 'abiodunsulaiman694@gmail.com', NULL, NULL, NULL, NULL, 'AIRTEL Networks Limited', 'users/client/NMS1496846039.jpg', 'users/client/NMS1497265416.jpg', 'Mrs Onoja Banke Deborah', 'Miss Adams Tochukwu Francin', 'Assistant H.O.D', NULL, 'ICT H.O.D', NULL, 2, 0, 'NMS-NUM-0000000065', 5, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(66, NULL, NULL, NULL, 0, 0, '', NULL, 0, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 0, 0, 0, NULL, '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2', '50', 50, '2017-08-08 14:11:01', '2017-08-10 14:08:00', '2017-10-16 04:00:00', NULL, '', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 'NMS-NUM-0000000066', 1, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(67, NULL, NULL, 'LN09808', 0, 1, 'Radio', '12', 1, 'full', NULL, 'full', NULL, 'full', NULL, 'full', NULL, 'full', NULL, 'full', NULL, 'full', NULL, 0, 0, 0, NULL, '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2', '50', 50, '2017-08-08 14:45:08', '2017-08-08 15:08:58', '2017-10-16 04:00:00', 'NIL', '2', '1', 'PMB 334, iKEJA, lAGOS', '+(234)08022545496', '345-987-23', 'abiodunsulaiman694@gmail.com', NULL, NULL, NULL, NULL, 'AIRTEL Networks Limited', 'users/client/NMS1496846039.jpg', 'users/client/NMS1497265416.jpg', 'Mrs Onoja Banke Deborah', 'Miss Adams Tochukwu Francin', 'Assistant H.O.D', NULL, 'ICT H.O.D', NULL, 2, 0, 'NMS-NUM-0000000067', 5, 'Details are accurate.', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(68, 'HD Video', 'Abia', 'L10894', 0, 1, 'Radio', '56', 0, 'full', NULL, 'full', NULL, 'full', NULL, 'full', NULL, 'full', NULL, 'full', NULL, 'full', NULL, 0, 0, 0, NULL, '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2', '50', 50, '2017-08-08 16:03:40', '2017-08-08 16:13:52', '2017-10-16 04:00:00', 'General', '12', '1', 'PMB 334, iKEJA, lAGOS', '+(234)08022545496', '345-987-23', 'abiodunsulaiman694@gmail.com', NULL, NULL, NULL, NULL, 'AIRTEL Networks Limited', 'users/client/NMS1496846039.jpg', 'users/client/NMS1497265416.jpg', 'Mrs Onoja Banke Deborah', 'Miss Adams Tochukwu Francin', 'Assistant H.O.D', NULL, 'ICT H.O.D', NULL, 2, 0, 'NMS-NUM-0000000068', 5, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(69, 'Data', 'Abia', '43434', 0, 0, 'Cable', NULL, 0, 'full', NULL, 'full', NULL, 'full', NULL, 'full', NULL, 'full', NULL, 'full', NULL, 'full', NULL, 0, 0, 0, NULL, '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2', '50', 50, '2017-08-08 17:38:52', '2017-08-10 14:01:35', '2017-10-16 04:00:00', NULL, '4', '0', 'PMB 334, iKEJA, lAGOS', '+(234)08022545496', '345-987-23', 'abiodunsulaiman694@gmail.com', NULL, NULL, NULL, NULL, 'AIRTEL Networks Limited', 'users/client/NMS1496846039.jpg', 'users/client/NMS1497265416.jpg', 'Mrs Onoja Banke Deborah', 'Miss Adams Tochukwu Francin', 'Assistant H.O.D', NULL, 'ICT H.O.D', NULL, 2, 0, 'NMS-NUM-0000000069', 5, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(70, NULL, NULL, NULL, 0, 0, '', NULL, 0, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 0, 0, 0, NULL, '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2', '50', 50, '2017-08-11 14:07:49', '2017-08-11 14:07:49', '2017-10-16 04:00:00', NULL, '', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 'NMS-NUM-0000000070', 1, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(71, 'Data', 'Abia', 'L/NO AA4537D', 0, 0, 'Cable', NULL, 0, 'full', NULL, 'full', NULL, 'full', NULL, 'full', NULL, 'full', NULL, 'full', NULL, 'full', NULL, 0, 0, 0, NULL, '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2', '50', 50, '2017-08-11 16:57:15', '2017-10-05 11:19:37', '', 'N/A', 'N/A', '0', 'PMB 334, iKEJA, lAGOS', '+(234)08022545496', '345-987-23', 'abiodunsulaiman694@gmail.com', NULL, NULL, NULL, NULL, 'AIRTEL Networks Limited', 'users/client/NMS1496846039.jpg', 'users/client/NMS1497265416.jpg', 'Mrs Onoja Banke Deborah', 'Miss Adams Tochukwu Francin', 'Assistant H.O.D', NULL, 'ICT H.O.D', NULL, 2, 0, 'NMS-NUM-0000000002', 5, 'N/A', 0, 0, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(72, 'Data', 'Abia', 'L/NO AA4537E', 0, 0, 'Radio', 'N/A', 0, 'full', NULL, 'full', NULL, 'full', NULL, 'full', NULL, 'full', NULL, 'full', NULL, 'full', NULL, 0, 0, 0, NULL, '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2', '50', 50, '2017-08-11 17:18:39', '2017-10-05 11:08:48', '', 'N/A', '1', '1', 'PMB 334, iKEJA, lAGOS', '+(234)08022545496', '345-987-23', 'abiodunsulaiman694@gmail.com', NULL, NULL, NULL, NULL, 'AIRTEL Networks Limited', 'users/client/NMS1496846039.jpg', 'users/client/NMS1497265416.jpg', 'Mrs Onoja Banke Deborah', 'Miss Adams Tochukwu Francin', 'Assistant H.O.D', NULL, 'ICT H.O.D', NULL, 1, 0, 'NMS-NUM-0000000072', 5, 'None', 0, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(73, 'HD Video', 'Abia', 'L/NO AA4437O', 0, 0, 'Cable', NULL, 0, 'full', NULL, 'full', NULL, 'full', NULL, 'full', NULL, 'full', NULL, 'full', NULL, 'full', NULL, 0, 0, 0, NULL, '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2', '50', 50, '2017-08-11 17:38:57', '2017-10-06 13:40:28', '', 'N/A', '1', '1', 'PMB 334, iKEJA, lAGOS', '+(234)08022545496', '345-987-23', 'abiodunsulaiman694@gmail.com', NULL, NULL, NULL, NULL, 'AIRTEL Networks Limited', 'users/client/NMS1496846039.jpg', 'users/client/NMS1497265416.jpg', 'Mrs Onoja Banke Deborah', 'Miss Adams Tochukwu Francin', 'Assistant H.O.D', NULL, 'ICT H.O.D', NULL, 1, 0, 'NMS-NUM-0000000073', 5, 'None', 0, 1, NULL, 1, 73, '2027-10-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(74, 'Voice', 'Abia', 'L/NO 123', 0, 1, 'Cable', NULL, 0, 'full', NULL, 'full', NULL, 'full', NULL, 'full', NULL, 'full', NULL, 'full', NULL, 'full', NULL, 0, 0, 0, NULL, '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2', '50', 50, '2017-08-15 14:25:37', '2017-10-05 15:00:23', '', 'N/A', '3', '0', 'PMB 334, iKEJA, lAGOS', '+(234)08022545496', '345-987-23', 'abiodunsulaiman694@gmail.com', NULL, NULL, NULL, NULL, 'AIRTEL Networks Limited', 'users/client/NMS1496846039.jpg', 'users/client/NMS1497265416.jpg', 'Mrs Onoja Banke Deborah', 'Miss Adams Tochukwu Francin', 'Assistant H.O.D', NULL, 'ICT H.O.D', NULL, 2, 0, 'NMS-NUM-0000000074', 5, 'None', 0, 0, NULL, 1, 74, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(75, 'Data', 'Abia', 'xxxxxxxxxx', 0, 0, 'Radio', 'N/A', 0, 'full', NULL, 'full', NULL, 'full', NULL, 'full', NULL, 'full', NULL, 'full', NULL, 'full', NULL, 0, 0, 0, NULL, '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2', '50', 50, '2017-08-18 14:39:50', '2017-10-05 13:24:00', '', 'N/A', 'N/A', '0', 'PMB 334, iKEJA, lAGOS', '+(234)08022545496', '345-987-23', 'abiodunsulaiman694@gmail.com', NULL, NULL, NULL, NULL, 'AIRTEL Networks Limited', 'users/client/NMS1496846039.jpg', 'users/client/NMS1497265416.jpg', 'Mrs Onoja Banke Deborah', 'Miss Adams Tochukwu Francin', 'Assistant H.O.D', NULL, 'ICT H.O.D', NULL, 2, 0, 'NMS-NUM-0000000075', 5, 'N/A', 0, 0, NULL, 1, 75, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(76, 'Data', 'Abia', 'L/NO AA4537E', 0, 0, 'Cable', NULL, 0, 'full', NULL, 'full', NULL, 'full', NULL, 'full', NULL, 'full', NULL, 'full', NULL, 'full', NULL, 0, 0, 0, NULL, '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2', '50', 50, '2017-08-21 17:28:27', '2017-09-20 13:43:54', '2017-10-16 04:00:00', 'N/A', 'N/A', '0', 'PMB 334, iKEJA, lAGOS', '+(234)08022545496', '345-987-23', 'abiodunsulaiman694@gmail.com', NULL, NULL, NULL, NULL, 'AIRTEL Networks Limited', 'users/client/NMS1496846039.jpg', 'users/client/NMS1497265416.jpg', 'Mrs Onoja Banke Deborah', 'Miss Adams Tochukwu Francin', 'Assistant H.O.D', NULL, 'ICT H.O.D', NULL, 2, 0, 'NMS-NUM-0000000076', 5, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(77, 'Voice', 'Abia', 'LN09808', 0, 1, 'Radio', '2', 0, 'full', NULL, 'full', NULL, 'full', NULL, 'full', NULL, 'full', NULL, 'full', NULL, 'full', NULL, 0, 0, 0, NULL, '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2', '50', 50, '2017-08-29 15:05:19', '2017-10-05 13:41:38', '', 'NIL', '2', '0', 'PMB 334, iKEJA, lAGOS', '+(234)08022545496', '345-987-23', 'abiodunsulaiman694@gmail.com', NULL, NULL, NULL, NULL, 'AIRTEL Networks Limited', 'users/client/NMS1496846039.jpg', 'users/client/NMS1497265416.jpg', 'Mrs Onoja Banke Deborah', 'Miss Adams Tochukwu Francin', 'Assistant H.O.D', NULL, 'ICT H.O.D', NULL, 2, 0, 'NMS-NUM-0000000077', 5, 'Accurate', 0, 0, NULL, 1, 77, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(78, 'Data', 'Abia', '1234', 0, 1, 'Radio', NULL, 0, 'full', NULL, 'full', NULL, 'full', NULL, 'full', NULL, 'full', NULL, 'full', NULL, 'full', NULL, 0, 0, 0, NULL, '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2', '50', 50, '2017-08-29 16:10:23', '2017-09-26 15:43:39', '', 'None', 'NIL', '1', 'PMB 334, iKEJA, lAGOS', '+(234)08022545496', '345-987-23', 'abiodunsulaiman694@gmail.com', NULL, NULL, NULL, NULL, 'AIRTEL Networks Limited', 'users/client/NMS1504009160.jpg', 'users/client/NMS1504009181.jpg', 'Mrs Onoja Banke Deborah', 'Miss Adams Tochukwu Francin', 'Assistant H.O.D', NULL, 'ICT H.O.D', NULL, 3, 0, 'NMS-NUM-0000000078', 5, 'None', 0, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(79, NULL, NULL, NULL, 0, 0, '', NULL, 0, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 0, 0, 0, NULL, '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2', '50', 50, '2017-09-05 18:33:43', '2017-09-05 18:33:43', '2017-10-16 04:00:00', NULL, '', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 'NMS-NUM-0000000079', 1, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(80, NULL, NULL, NULL, 0, 0, '', NULL, 0, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 0, 0, 0, NULL, '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2', '50', 50, '2017-09-11 18:29:54', '2017-09-11 18:29:54', '2017-10-16 04:00:00', NULL, '', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 'NMS-NUM-0000000080', 1, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(81, 'Voice', 'Abia', 'NCC/UASL/SN/001', 0, 1, 'Both', '1 - Maitama Abuja', 0, 'full', NULL, 'full', NULL, 'full', NULL, 'full', NULL, 'full', NULL, 'full', NULL, 'full', NULL, 0, 0, 0, NULL, '', NULL, '0000-00-00 00:00:00', '2000-02-21 22:00:00', '117', '222', 127, '2017-09-14 15:02:46', '2017-09-26 15:44:36', '', NULL, '2 - MTN, Airtel', '1', 'plot 423 Aguiyi Ironsi', '+(234)08062435637', NULL, 'muhdabubakar@gmail.com', NULL, NULL, NULL, NULL, 'Sagir Telecomms Limited', '', '', '', '', '', NULL, '', NULL, 2, 0, 'NMS-NUM-0000000081', 5, NULL, 0, 0, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `application_numbers` (`id`, `service`, `coverage`, `operating_license`, `numbering_allocation`, `financial_requirements`, `configuration`, `configuration_details`, `frequency_assignment`, `license_payment`, `license_payment_remarks`, `renewal_payment`, `renewal_payment_remarks`, `equipment_approval_payment`, `equipment_approval_payment_remarks`, `site_approval_payment`, `site_approval_payment_remarks`, `area_code_payment`, `area_code_payment_remarks`, `area_code_renewal_payment`, `area_code_renewal_payment_remarks`, `number_renewal_payment`, `number_renewal_payment_remarks`, `final`, `user_id`, `company_id`, `created_by`, `last_updated_by`, `created_at`, `updated_at`, `deleted_at`, `other_licenses`, `existing_telcos`, `inter_agreement`, `frequency_payment`, `frequency_payment_remarks`, `frequency_renewal_payment`, `frequency_renewal_remarks`, `number_payment`, `number_payment_remarks`, `mailing_address`, `mobile_no`, `fax_no`, `email`, `rep_title`, `rep_surname`, `rep_firstname`, `rep_middlename`, `undertaking_name`, `passport_image_one`, `passport_image_two`, `passport_name_one`, `passport_name_two`, `passport_designation_one`, `passport_signature_one`, `passport_designation_two`, `passport_signature_two`, `application_status_id`, `submitted`, `tracking_no`, `stage`, `comment`, `acceptance`, `admin_final`, `date_submitted`, `read`, `assign`, `expiry_date`, `number_type_id`, `rep_name`, `rep_email`, `rep_phone_no`, `rep_name_two`, `rep_email_two`, `rep_phone_no_two`) VALUES
(82, 'Data', 'Abia', 'L/NO AA4437O', 0, 0, '', NULL, 0, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 0, 0, 0, NULL, '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2', '50', 50, '2017-09-18 08:07:22', '2017-09-18 08:13:55', '2017-10-16 04:00:00', 'N/A', '', '0', 'PMB 334, iKEJA, lAGOS', '+(234)08022545496', '345-987-23', 'abiodunsulaiman694@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 'NMS-NUM-0000000082', 2, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(83, NULL, NULL, 'LN09808', 0, 0, '', NULL, 0, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 0, 0, 0, NULL, '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2', '50', 50, '2017-09-19 14:21:39', '2017-09-19 17:13:13', '2017-10-16 04:00:00', 'NIL', '', '0', 'PMB 334, iKEJA, lAGOS', '+(234)08022545496', '345-987-23', 'abiodunsulaiman694@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 'NMS-NUM-0000000083', 3, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(84, NULL, NULL, NULL, 0, 0, '', NULL, 0, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 0, 0, 0, NULL, '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2', '50', 50, '2017-09-19 14:54:52', '2017-09-19 14:54:52', '2017-10-16 04:00:00', NULL, '', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 'NMS-NUM-0000000084', 1, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(85, NULL, NULL, NULL, 0, 0, '', NULL, 0, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 0, 0, 0, NULL, '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2', '50', 50, '2017-09-21 18:09:47', '2017-09-21 18:09:47', '2017-10-16 04:00:00', NULL, '', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 'NMS-NUM-0000000085', 1, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(86, NULL, NULL, NULL, 0, 0, '', NULL, 0, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 0, 0, 0, NULL, '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2', '50', 50, '2017-09-22 21:17:31', '2017-09-22 21:17:31', '2017-10-16 04:00:00', NULL, '', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 'NMS-NUM-0000000086', 1, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(87, NULL, NULL, NULL, 0, 0, '', NULL, 0, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 0, 0, 0, NULL, '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2', '50', 50, '2017-09-22 21:20:57', '2017-09-22 21:20:57', '2017-10-16 04:00:00', NULL, '', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 'NMS-NUM-0000000087', 1, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(88, NULL, NULL, NULL, 0, 0, '', NULL, 0, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 0, 0, 0, NULL, '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2', '50', 50, '2017-09-22 21:21:28', '2017-09-22 21:21:28', '2017-10-16 04:00:00', NULL, '', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 'NMS-NUM-0000000088', 1, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(89, NULL, NULL, NULL, 0, 0, '', NULL, 0, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 0, 0, 0, NULL, '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2', '50', 50, '2017-09-25 12:57:35', '2017-09-25 12:57:35', '2017-10-16 04:00:00', NULL, '', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 'NMS-NUM-0000000089', 1, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(90, NULL, NULL, NULL, 0, 0, '', NULL, 0, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 0, 0, 0, NULL, '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2', '50', 50, '2017-09-25 13:31:12', '2017-09-25 13:31:12', '2017-10-16 04:00:00', NULL, '', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 'NMS-NUM-0000000090', 1, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(91, NULL, NULL, NULL, 0, 0, '', NULL, 0, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 0, 0, 0, NULL, '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2', '50', 50, '2017-09-25 13:34:38', '2017-09-25 13:34:38', '2017-10-16 04:00:00', NULL, '', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 'NMS-NUM-0000000091', 1, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(92, NULL, NULL, NULL, 0, 0, '', NULL, 0, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 0, 0, 0, NULL, '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2', '50', 50, '2017-09-25 13:34:57', '2017-09-25 13:34:57', '2017-10-16 04:00:00', NULL, '', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 'NMS-NUM-0000000092', 1, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(93, NULL, NULL, NULL, 0, 0, '', NULL, 0, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 0, 0, 0, NULL, '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2', '50', 50, '2017-09-25 17:09:46', '2017-09-25 17:09:46', '2017-10-16 04:00:00', NULL, '', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 'NMS-NUM-0000000093', 1, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(94, NULL, NULL, NULL, 0, 0, '', NULL, 0, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 0, 0, 0, NULL, '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2', '50', 50, '2017-09-25 17:10:05', '2017-09-25 17:10:05', '2017-10-16 04:00:00', NULL, '', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 'NMS-NUM-0000000094', 1, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(95, 'HD Video', 'Imo', 'LN09808', 0, 1, 'Both', '2', 0, 'full', NULL, 'full', NULL, 'full', NULL, 'full', NULL, 'full', NULL, 'full', NULL, 'full', NULL, 0, 0, 0, NULL, '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2', '50', 50, '2017-09-26 12:55:41', '2017-10-17 02:39:24', '2017-10-16 04:00:00', 'NIL', '3', '0', 'PMB 334, iKEJA, lAGOS', '+(234)08022545496', '345-987-23', 'abiodunsulaiman694@gmail.com', NULL, NULL, NULL, NULL, 'Gatecom', 'users/client/NMS1507885755.jpg', 'users/client/NMS1507885945.jpg', 'Mrs Onoja Banke Deborah', 'Miss Adams Tochukwu Francin', 'Assistant H.O.D', NULL, 'ICT H.O.D', NULL, 2, 0, 'NMS-NUM-0000000095', 5, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(96, NULL, NULL, NULL, 0, 0, '', NULL, 0, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 0, 0, 0, NULL, '', NULL, '0000-00-00 00:00:00', '2000-02-21 22:00:00', '117', '222', 127, '2017-09-27 16:39:45', '2017-09-27 16:39:45', '2017-10-16 04:00:00', NULL, '', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 'NMS-NUM-0000000096', 1, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(97, NULL, NULL, NULL, 0, 0, '', NULL, 0, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 0, 0, 0, NULL, '', NULL, '0000-00-00 00:00:00', '2000-02-21 22:00:00', '117', '222', 127, '2017-09-27 16:48:34', '2017-09-27 16:48:34', '2017-10-16 04:00:00', NULL, '', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 'NMS-NUM-0000000097', 1, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(98, NULL, NULL, NULL, 0, 0, '', NULL, 0, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 0, 0, 0, NULL, '', NULL, '0000-00-00 00:00:00', '2000-02-21 22:00:00', '117', '222', 127, '2017-09-27 16:50:51', '2017-09-27 16:50:51', '2017-10-16 04:00:00', NULL, '', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 'NMS-NUM-0000000098', 1, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(99, 'Data', 'Abia', 'L345', 0, 1, 'Radio', 'Nil', 1, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 0, 0, 0, NULL, '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2', '50', 50, '2017-09-29 02:13:26', '2017-09-29 02:17:25', '2017-10-16 04:00:00', NULL, 'Nil', '1', 'PMB 334, iKEJA, lAGOS', '+(234)08022545496', '345-987-23', 'abiodunsulaiman694@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 'NMS-NUM-0000000099', 3, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(100, NULL, NULL, NULL, 0, 0, '', NULL, 0, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 0, 0, 0, NULL, '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2', '50', 50, '2017-10-05 15:56:17', '2017-10-05 15:56:17', '2017-10-16 04:00:00', NULL, '', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 'NMS-NUM-0000000100', 1, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(101, 'HD Video', 'Abia', '123456L', 0, 0, 'Cable', NULL, 1, 'full', NULL, 'full', NULL, 'full', NULL, 'full', NULL, 'full', NULL, 'full', NULL, 'full', NULL, 0, 0, 0, NULL, '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2', '50', 50, '2017-10-05 16:51:07', '2017-10-13 18:46:06', '', 'None', 'MTN', '1', 'PMB 334, iKEJA, lAGOS', '+(234)08022545496', '345-987-23', 'abiodunsulaiman694@gmail.com', NULL, NULL, NULL, NULL, 'AIRTEL Networks Limited', 'users/client/NMS1504009160.jpg', 'users/client/NMS1504009181.jpg', 'Mrs Onoja Banke Deborah', 'Miss Adams Tochukwu Francin', 'Assistant H.O.D', NULL, 'ICT H.O.D', NULL, 2, 0, 'NMS-NUM-0000000101', 5, NULL, 0, 0, NULL, 1, 215, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(102, NULL, NULL, NULL, 0, 0, '', NULL, 0, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 0, 0, 0, NULL, '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2', '50', 50, '2017-10-06 16:22:47', '2017-10-06 16:22:47', '2017-10-16 04:00:00', NULL, '', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 'NMS-NUM-0000000102', 1, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(103, NULL, NULL, NULL, 0, 0, '', NULL, 0, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 0, 0, 0, NULL, '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2', '50', 50, '2017-10-06 16:22:48', '2017-10-06 16:22:48', '2017-10-16 04:00:00', NULL, '', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 'NMS-NUM-0000000103', 1, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(104, NULL, NULL, NULL, 0, 0, '', NULL, 0, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 0, 0, 0, NULL, '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2', '50', 50, '2017-10-06 16:22:48', '2017-10-06 16:22:48', '2017-10-16 04:00:00', NULL, '', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 'NMS-NUM-0000000104', 1, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(105, NULL, NULL, NULL, 0, 0, '', NULL, 0, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 0, 0, 0, NULL, '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2', '50', 50, '2017-10-06 16:23:30', '2017-10-06 16:23:30', '2017-10-16 04:00:00', NULL, '', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 'NMS-NUM-0000000104', 1, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(106, NULL, NULL, NULL, 0, 0, '', NULL, 0, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 0, 0, 0, NULL, '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2', '50', 50, '2017-10-06 16:23:50', '2017-10-06 16:23:50', '2017-10-16 04:00:00', NULL, '', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 'NMS-NUM-0000000106', 1, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(107, NULL, NULL, NULL, 0, 0, '', NULL, 0, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 0, 0, 0, NULL, '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2', '50', 50, '2017-10-06 16:26:04', '2017-10-06 16:26:04', '2017-10-16 04:00:00', NULL, '', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 'NMS-NUM-0000000107', 1, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(108, NULL, NULL, NULL, 0, 0, '', NULL, 0, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 0, 0, 0, NULL, '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2', '50', 50, '2017-10-06 16:29:49', '2017-10-06 16:29:49', '2017-10-16 04:00:00', NULL, '', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 'NMS-NUM-0000000108', 1, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(109, NULL, NULL, NULL, 0, 0, '', NULL, 0, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 0, 0, 0, NULL, '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2', '50', 50, '2017-10-06 16:42:31', '2017-10-06 16:42:31', '2017-10-16 04:00:00', NULL, '', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 'NMS-NUM-0000000109', 1, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(110, NULL, NULL, NULL, 0, 0, '', NULL, 0, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 0, 0, 0, NULL, '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2', '50', 50, '2017-10-06 17:03:16', '2017-10-06 17:03:16', '2017-10-16 04:00:00', NULL, '', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 'NMS-NUM-0000000110', 1, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(111, NULL, NULL, NULL, 0, 0, '', NULL, 0, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 0, 0, 0, NULL, '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2', '50', 50, '2017-10-06 17:03:30', '2017-10-06 17:03:30', '2017-10-16 04:00:00', NULL, '', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 'NMS-NUM-0000000111', 1, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(112, NULL, NULL, NULL, 0, 0, '', NULL, 0, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 0, 0, 0, NULL, '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2', '50', 50, '2017-10-06 17:03:50', '2017-10-06 17:03:50', '2017-10-16 04:00:00', NULL, '', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 'NMS-NUM-0000000112', 1, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(113, NULL, NULL, NULL, 0, 0, '', NULL, 0, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 0, 0, 0, NULL, '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2', '50', 50, '2017-10-06 17:05:14', '2017-10-06 17:05:14', '2017-10-16 04:00:00', NULL, '', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 'NMS-NUM-0000000113', 1, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(114, NULL, NULL, NULL, 0, 0, '', NULL, 0, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 0, 0, 0, NULL, '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2', '50', 50, '2017-10-06 17:10:12', '2017-10-06 17:10:12', '2017-10-16 04:00:00', NULL, '', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 'NMS-NUM-0000000114', 1, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(115, NULL, NULL, NULL, 0, 0, '', NULL, 0, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 0, 0, 0, NULL, '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2', '50', 50, '2017-10-06 17:12:08', '2017-10-17 02:39:57', '2017-10-16 04:00:00', NULL, '', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 'NMS-NUM-0000000115', 1, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(116, NULL, NULL, NULL, 0, 0, '', NULL, 0, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 0, 0, 0, NULL, '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2', '50', 50, '2017-10-06 17:21:10', '2017-10-17 02:41:21', '2017-10-16 04:00:00', NULL, '', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 'NMS-NUM-0000000116', 1, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(117, NULL, NULL, NULL, 0, 0, '', NULL, 0, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 0, 0, 0, NULL, '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2', '50', 50, '2017-10-06 17:21:22', '2017-10-17 02:39:46', '2017-10-16 04:00:00', NULL, '', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 'NMS-NUM-0000000117', 1, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(118, NULL, NULL, NULL, 0, 0, '', NULL, 0, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 0, 0, 0, NULL, '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2', '50', 50, '2017-10-06 18:38:34', '2017-10-17 02:39:36', '2017-10-16 04:00:00', NULL, '', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 'NMS-NUM-0000000118', 1, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(119, 'Data', 'Abia', 'PNL/REG/093/007', 0, 0, 'Cable', NULL, 1, 'full', NULL, 'full', NULL, 'full', NULL, 'full', NULL, 'full', NULL, 'full', NULL, 'full', NULL, 0, 0, 0, NULL, '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2', '50', 50, '2017-10-13 15:57:50', '2017-11-03 13:01:44', '', NULL, '1- MTN', '0', 'PMB 334, iKEJA, lAGOS', '+(234)08022545496', '345-987-23', 'abiodunsulaiman694@gmail.com', NULL, NULL, NULL, NULL, 'Gatecom', 'users/client/NMS1507885755.jpg', 'users/client/NMS1507885945.jpg', 'Mrs Onoja Banke Deborah', 'Miss Adams Tochukwu Francin', 'Assistant H.O.D', NULL, 'ICT H.O.D', NULL, 2, 0, 'NMS-NUM-0000000119', 5, NULL, 0, 0, NULL, 0, 215, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(120, NULL, NULL, NULL, 0, 0, '', NULL, 0, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 0, 0, 0, NULL, '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2', '50', 50, '2017-10-13 15:58:36', '2017-10-17 02:36:43', '2017-10-16 04:00:00', NULL, '', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 'NMS-NUM-0000000120', 1, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(121, NULL, 'National', 'PNL/REG/993/997', 0, 1, 'Cable', NULL, 1, 'full', NULL, 'full', NULL, 'full', NULL, 'full', NULL, 'full', NULL, 'full', NULL, 'full', NULL, 0, 0, 0, NULL, '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2', '50', 50, '2017-10-17 09:01:58', '2017-11-02 18:02:26', '', NULL, '1- 9Mobile Nigeria Limited', '1', 'PMB 334, iKEJA, lAGOS', '+(234)08022545496', '345-987-23', 'abiodunsulaiman694@gmail.com', NULL, NULL, NULL, NULL, 'Gatecom', 'users/client/NMS1508225571.jpg', 'users/client/NMS1507885945.jpg', 'Dr. John Tayo Paul', 'Miss Adams Tochukwu Francin', 'Director', NULL, 'ICT H.O.D', NULL, 2, 0, 'NMS-NUM-0000000120', 5, 'None', 0, 0, NULL, 1, 216, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(122, 'Others', 'National', 'PNL/REG/012/044', 0, 1, 'Radio', '3', 1, 'full', NULL, 'full', NULL, 'full', NULL, 'full', NULL, 'full', NULL, 'full', NULL, 'full', NULL, 0, 0, 0, NULL, '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2', '50', 50, '2017-10-17 15:02:42', '2017-11-02 19:40:24', '', NULL, '1- GLO Mobile', '1', 'PMB 334, iKEJA, lAGOS', '+(234)08022545496', '345-987-23', 'abiodunsulaiman694@gmail.com', NULL, NULL, NULL, NULL, 'Gatecom', 'users/client/NMS1508225571.jpg', 'users/client/NMS1507885945.jpg', 'Dr. John Tayo Paul', 'Miss Adams Tochukwu Francin', 'Director', NULL, 'ICT H.O.D', NULL, 2, 0, 'NMS-NUM-0000000122', 5, NULL, 0, 0, NULL, 1, 62, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(123, 'Multimedia', 'National', 'L/N098', 0, 0, '', NULL, 0, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 0, 0, 0, NULL, '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2', '50', 50, '2017-10-23 21:54:56', '2017-10-23 21:56:24', '', 'Nil', '', '0', 'PMB 334, iKEJA, lAGOS', '+(234)08022545496', '345-987-23', 'abiodunsulaiman694@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 'NMS-NUM-0000000123', 2, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(124, NULL, NULL, NULL, 0, 0, '', NULL, 0, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 0, 0, 0, NULL, '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2', '50', 50, '2017-10-24 13:28:54', '2017-10-24 13:28:54', '', NULL, '', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 'NMS-NUM-0000000124', 1, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(125, NULL, NULL, NULL, 0, 0, '', NULL, 0, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 0, 0, 0, NULL, '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2', '50', 50, '2017-10-24 16:02:03', '2017-10-24 16:02:03', '', NULL, '', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 'NMS-NUM-0000000125', 1, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(126, 'Voice and Data', 'National', 'L/N098', 0, 0, '', NULL, 0, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 0, 0, 0, NULL, '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2', '50', 50, '2017-10-24 16:13:44', '2017-10-26 15:16:28', '', 'Nil', '', '0', 'PMB 334, iKEJA, lAGOS', '+(234)08022545496', '345-987-23', 'abiodunsulaiman694@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 'NMS-NUM-0000000126', 3, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(127, NULL, 'National', 'ln225632', 0, 1, '', NULL, 0, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 0, 0, 0, NULL, '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2', '50', 50, '2017-10-27 12:53:56', '2017-10-27 12:56:04', '', NULL, '', '0', 'PMB 334, iKEJA, lAGOS', '+(234)08022545496', '345-987-23', 'abiodunsulaiman694@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 'NMS-NUM-0000000127', 2, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(128, NULL, NULL, NULL, 0, 0, '', NULL, 0, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 0, 0, 0, NULL, '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2', '50', 50, '2017-10-29 21:17:51', '2017-10-29 21:17:51', '', NULL, '', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 'NMS-NUM-0000000128', 1, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(129, 'Voice and Data', 'Imo', 'L/NO AA4537E', 0, 0, '', NULL, 0, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 0, 0, 0, NULL, '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2', '50', 50, '2017-10-29 21:25:28', '2017-10-30 13:28:01', '', 'N/A', '', '0', 'PMB 334, iKEJA, lAGOS', '+(234)08022545496', '345-987-23', 'abiodunsulaiman694@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 'NMS-NUM-0000000129', 2, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(130, NULL, 'National', 'L560', 0, 0, '', NULL, 0, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 0, 0, 0, NULL, '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2', '50', 50, '2017-10-30 12:50:33', '2017-10-30 14:27:16', '', NULL, '', '0', 'PMB 334, iKEJA, lAGOS', '+(234)08022545496', '345-987-23', 'abiodunsulaiman694@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 'NMS-NUM-0000000130', 3, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(131, NULL, NULL, NULL, 0, 0, '', NULL, 0, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 0, 0, 0, NULL, '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2', '50', 50, '2017-10-30 14:35:54', '2017-10-30 14:35:54', '', NULL, '', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 'NMS-NUM-0000000131', 1, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(132, 'Data', 'Ebonyi', 'PNL/REG/093/098', 0, 0, '', NULL, 0, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 0, 0, 0, NULL, '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2', '50', 50, '2017-10-30 14:49:54', '2017-10-30 14:50:32', '', 'None', '', '0', 'PMB 334, iKEJA, lAGOS', '+(234)08022545496', '345-987-23', 'abiodunsulaiman694@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 'NMS-NUM-0000000132', 2, NULL, 0, 0, NULL, 0, NULL, NULL, 10, NULL, NULL, NULL, NULL, NULL, NULL),
(133, 'Voice and Data', 'National', 'PNL/REG/093/007', 0, 0, 'Cable', NULL, 0, 'full', NULL, 'full', NULL, 'full', NULL, 'full', NULL, 'full', NULL, 'full', NULL, 'full', NULL, 0, 0, 0, NULL, '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2', '50', 50, '2017-10-31 15:42:38', '2017-11-08 15:03:40', '', 'None', '', '0', 'PMB 334, iKEJA, lAGOS', '+(234)08022545496', '345-987-23', 'abiodunsulaiman694@gmail.com', NULL, NULL, NULL, NULL, 'Gatecom', 'users/client/NMS1508225571.jpg', 'users/client/NMS1507885945.jpg', 'Dr. John Tayo Paul', 'Miss Adams Tochukwu Francin', 'Director', NULL, 'ICT H.O.D', NULL, 2, 0, 'NMS-NUM-0000000133', 5, NULL, 0, 0, NULL, 0, NULL, NULL, 10, 'Abike Dabire', 'abike@molcomconcepts.com', '883763635', 'Nke Eke', 'eke@molcomconcepts.com', '0987263627'),
(134, 'Voice and Data', 'National', 'PNL/REG/093/007', 0, 0, '', NULL, 1, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 0, 0, 0, NULL, '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2', '50', 50, '2017-10-31 15:43:07', '2017-10-31 16:23:44', '', NULL, '', '0', 'PMB 334, iKEJA, lAGOS', '+(234)08022545496', '345-987-23', 'abiodunsulaiman694@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 'NMS-NUM-0000000134', 3, NULL, 0, 0, NULL, 0, NULL, NULL, 10, NULL, NULL, NULL, NULL, NULL, NULL),
(135, NULL, NULL, NULL, 0, 0, '', NULL, 0, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 0, 0, 0, NULL, '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2', '50', 50, '2017-11-03 13:05:15', '2017-11-03 13:05:15', '', NULL, '', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 'NMS-NUM-0000000135', 1, NULL, 0, 0, NULL, 0, NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL),
(136, NULL, NULL, NULL, 0, 0, '', NULL, 0, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 0, 0, 0, NULL, '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2', '50', 50, '2017-11-07 16:14:12', '2017-11-07 16:14:12', '', NULL, '', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 'NMS-NUM-0000000136', 1, NULL, 0, 0, NULL, 0, NULL, NULL, 10, NULL, NULL, NULL, NULL, NULL, NULL),
(137, 'HD Video', 'National', 'L/N098', 0, 0, 'Radio', '6', 1, 'full', NULL, 'full', NULL, 'full', NULL, 'full', NULL, 'full', NULL, 'full', NULL, 'full', NULL, 0, 0, 0, NULL, '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2', '50', 50, '2017-11-07 17:57:26', '2017-11-07 18:05:35', '', 'Nil', '3', '0', 'PMB 334, iKEJA, lAGOS', '+(234)08022545496', '345-987-23', 'abiodunsulaiman694@gmail.com', NULL, NULL, NULL, NULL, 'Gatecom', 'users/client/NMS1508225571.jpg', 'users/client/NMS1507885945.jpg', 'Dr. John Tayo Paul', 'Miss Adams Tochukwu Francin', 'Director', NULL, 'ICT H.O.D', NULL, 2, 0, 'NMS-NUM-0000000137', 5, 'I believe all the details are accurate to the best of my knowledge.', 0, 0, NULL, 0, NULL, NULL, 10, NULL, NULL, NULL, NULL, NULL, NULL),
(138, 'Voice', 'National', 'L/N9823', 0, 0, '', NULL, 0, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 0, 0, 0, NULL, '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2', '50', 50, '2017-11-07 20:44:27', '2017-11-07 20:47:59', '', 'L/N34556', '', '0', 'PMB 334, iKEJA, lAGOS', '+(234)08022545496', '345-987-23', 'abiodunsulaiman694@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 'NMS-NUM-0000000138', 2, NULL, 0, 0, NULL, 0, NULL, NULL, 10, 'Idris Mubarak', 'mubi@gmail.com', '857574738784784', 'Amaka Agunanna', 'amaka@gmail.com', '098453783990'),
(139, 'Data', 'National', 'LN012563', 0, 0, '', NULL, 0, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 0, 0, 0, NULL, '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2', '50', 50, '2017-11-07 21:35:13', '2017-11-07 21:39:49', '', NULL, '', '0', 'PMB 334, iKEJA, lAGOS', '+(234)08022545496', '345-987-23', 'abiodunsulaiman694@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 'NMS-NUM-0000000139', 2, NULL, 0, 0, NULL, 0, NULL, NULL, 10, 'Obiora Kenechukwu', 'obiora@gmail,com', '0125635899', 'Idris Emeka', 'idris@gmail.com', '012456329'),
(140, NULL, NULL, NULL, 0, 0, '', NULL, 0, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 0, 0, 0, NULL, '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2', '50', 50, '2017-11-08 18:49:23', '2017-11-08 18:49:23', '', NULL, '', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 'NMS-NUM-0000000140', 1, NULL, 0, 0, NULL, 0, NULL, NULL, 10, NULL, NULL, NULL, NULL, NULL, NULL),
(141, NULL, NULL, NULL, 0, 0, '', NULL, 0, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 0, 0, 0, NULL, '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2', '50', 50, '2017-11-09 15:09:16', '2017-11-09 15:09:16', '', NULL, '', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 'NMS-NUM-0000000141', 1, NULL, 0, 0, NULL, 0, NULL, NULL, 10, NULL, NULL, NULL, NULL, NULL, NULL),
(142, NULL, NULL, NULL, 0, 0, '', NULL, 0, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 0, 0, 0, NULL, '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2', '50', 50, '2017-11-09 15:14:06', '2017-11-09 15:14:06', '', NULL, '', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 'NMS-NUM-0000000142', 1, NULL, 0, 0, NULL, 0, NULL, NULL, 10, NULL, NULL, NULL, NULL, NULL, NULL),
(143, NULL, 'National', 'L/N098', 0, 0, 'Radio', NULL, 0, 'full', NULL, 'full', NULL, 'full', NULL, 'full', NULL, 'full', NULL, 'full', NULL, 'full', NULL, 0, 0, 0, NULL, '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2', '50', 50, '2017-11-10 18:17:00', '2017-11-14 19:25:58', '', 'Nil', '', '0', 'PMB 334, iKEJA, lAGOS', '+(234)08022545496', '345-987-23', 'abiodunsulaiman694@gmail.com', NULL, NULL, NULL, NULL, 'Gatecom', 'users/client/NMS1508225571.jpg', 'users/client/NMS1507885945.jpg', 'Dr. John Tayo Paul', 'Miss Adams Tochukwu Francin', 'Director', NULL, 'ICT H.O.D', NULL, 2, 0, 'NMS-NUM-0000000143', 5, 'All valid', 0, 0, NULL, 0, NULL, NULL, 10, NULL, NULL, NULL, NULL, NULL, NULL),
(144, NULL, NULL, NULL, 0, 0, '', NULL, 0, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 0, 0, 0, NULL, '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2', '50', 50, '2017-11-15 16:38:10', '2017-11-15 16:38:10', '', NULL, '', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 'NMS-NUM-0000000144', 1, NULL, 0, 0, NULL, 0, NULL, NULL, 10, NULL, NULL, NULL, NULL, NULL, NULL),
(145, NULL, NULL, NULL, 0, 0, '', NULL, 0, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 0, 50, 2, '50', '50', '2018-02-18 12:36:50', '2018-02-18 12:36:50', NULL, NULL, NULL, 0, '', NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 'NMS-NUM-0000000050', 1, NULL, 0, 0, NULL, 0, NULL, NULL, 10, NULL, NULL, NULL, NULL, NULL, NULL),
(146, 'Data', 'Ebonyi', '5525', 0, 0, '', NULL, 0, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 0, 50, 2, '50', '50', '2018-02-18 15:39:05', '2018-02-18 15:40:36', NULL, NULL, NULL, 0, '', NULL, '', NULL, '', NULL, '17, Takems Street', '+2348030666858', '345-987-23', 'abiodunsulaiman694@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 'NMS-NUM-0000000146', 2, NULL, 0, 0, NULL, 0, NULL, NULL, 10, 'Abiodun Sulaiman', 'abiodunsulaiman694@gmail.com', '+2348030666858', 'Abiodun Sulaiman', NULL, '+2348030666858'),
(147, 'Data', 'National', '123', 0, 0, 'Radio', NULL, 0, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 1, 1, 1, '1', '1', '2018-12-05 10:45:30', '2018-12-05 15:39:33', NULL, NULL, NULL, 0, '', NULL, '', NULL, '', NULL, 'B6, Broadway Mall, Behind Kaura Market, Gudu District', '7038808101', NULL, 'abujaroxx@gmail.com', NULL, NULL, NULL, NULL, 'MOLCOM', NULL, NULL, 'Mr Lukman J. Joe', 'Mrs James J. Paulina', 'CEO', NULL, 'COO', NULL, 2, 0, 'NMS-NUM-0000000147', 5, NULL, 0, 0, NULL, 0, NULL, NULL, 10, 'AbujaRoxx Lukman', 'abujaroxx@gmail.com', '07038808101', 'AbujaRoxx Lukman', 'abujaroxx@gmail.com', '07038808101');

-- --------------------------------------------------------

--
-- Table structure for table `application_shorts`
--

CREATE TABLE `application_shorts` (
  `id` int(10) UNSIGNED NOT NULL,
  `service` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `coverage` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `operating_license` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `numbering_allocation` tinyint(1) NOT NULL,
  `financial_requirements` tinyint(1) NOT NULL,
  `configuration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `configuration_details` text COLLATE utf8_unicode_ci,
  `frequency_assignment` tinyint(1) NOT NULL,
  `license_payment` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `license_payment_remarks` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `renewal_payment` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `renewal_payment_remarks` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `equipment_approval_payment` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `equipment_approval_payment_remarks` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `site_approval_payment` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `site_approval_payment_remarks` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `area_code_payment` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `area_code_payment_remarks` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `area_code_renewal_payment` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `area_code_renewal_payment_remarks` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `number_renewal_payment` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `number_renewal_payment_remarks` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `final` tinyint(1) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `created_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_updated_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `allocation_details` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `list_company_interconnect` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `undertaking_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `passport_image_one` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `passport_image_two` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `passport_name_one` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `passport_name_two` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `passport_designation_one` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `passport_signature_one` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `passport_designation_two` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `passport_signature_two` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `interconnect_agreement` tinyint(1) DEFAULT NULL,
  `mailing_address` text COLLATE utf8_unicode_ci,
  `mobile_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fax_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rep_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rep_surname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rep_firstname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rep_middlename` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `application_status_id` int(11) NOT NULL DEFAULT '2',
  `tracking_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `stage` int(11) NOT NULL DEFAULT '0',
  `other_licenses` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `acceptance` int(11) NOT NULL,
  `admin_final` int(11) NOT NULL DEFAULT '0',
  `date_submitted` date DEFAULT NULL,
  `read` int(11) NOT NULL DEFAULT '0',
  `assign_user` int(11) DEFAULT NULL,
  `expiry_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `number_type_id` int(11) DEFAULT NULL,
  `rep_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rep_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rep_phone_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rep_name_two` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rep_email_two` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rep_phone_no_two` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `application_shorts`
--

INSERT INTO `application_shorts` (`id`, `service`, `coverage`, `operating_license`, `numbering_allocation`, `financial_requirements`, `configuration`, `configuration_details`, `frequency_assignment`, `license_payment`, `license_payment_remarks`, `renewal_payment`, `renewal_payment_remarks`, `equipment_approval_payment`, `equipment_approval_payment_remarks`, `site_approval_payment`, `site_approval_payment_remarks`, `area_code_payment`, `area_code_payment_remarks`, `area_code_renewal_payment`, `area_code_renewal_payment_remarks`, `number_renewal_payment`, `number_renewal_payment_remarks`, `final`, `user_id`, `company_id`, `created_by`, `last_updated_by`, `created_at`, `updated_at`, `deleted_at`, `allocation_details`, `list_company_interconnect`, `undertaking_name`, `passport_image_one`, `passport_image_two`, `passport_name_one`, `passport_name_two`, `passport_designation_one`, `passport_signature_one`, `passport_designation_two`, `passport_signature_two`, `interconnect_agreement`, `mailing_address`, `mobile_no`, `fax_no`, `email`, `rep_title`, `rep_surname`, `rep_firstname`, `rep_middlename`, `application_status_id`, `tracking_no`, `stage`, `other_licenses`, `comment`, `acceptance`, `admin_final`, `date_submitted`, `read`, `assign_user`, `expiry_date`, `number_type_id`, `rep_name`, `rep_email`, `rep_phone_no`, `rep_name_two`, `rep_email_two`, `rep_phone_no_two`) VALUES
(1, 'service', 'coverage', '5678', 1, 1, '1', '', 1, 'Full', NULL, '1', '', 'Full', 'nil', '1', '', '1', '', '1', '', '1', '', 0, 50, 2, '50', '50', '2017-05-31 13:16:39', '2017-05-31 13:16:39', '2017-10-16 02:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'NMS/SH/000001', 3, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'service', 'coverage', '5678', 1, 1, '1', '', 1, 'Full', NULL, '1', '', 'Full', 'nil', '1', '', '1', '', '1', '', '1', '', 0, 50, 2, '50', '50', '2017-05-31 13:18:38', '2017-05-31 13:18:38', '2017-10-16 02:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'NMS/SH/000002', 2, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'service', 'coverage', '5678', 1, 1, '1', '', 1, 'Full', NULL, '1', '', 'Full', 'nil', '1', '', '1', '', '1', '', '1', '', 0, 50, 2, '50', '50', '2017-05-31 13:21:20', '2017-05-31 13:21:20', '2017-10-16 02:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'NMS/SH/000003', 4, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'service', 'coverage', '5678', 1, 1, '1', '', 1, 'Full', NULL, '1', '', 'Full', 'nil', '1', '', '1', '', '1', '', '1', '', 0, 50, 2, '50', '50', '2017-05-31 13:27:10', '2017-05-31 13:27:10', '2017-10-16 02:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'NMS/SH/000004', 1, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'commercial', 'North central', 'KI22344', 1, 1, '1', '', 1, 'Full', NULL, '1', '', 'Full', 'Approved', '1', '', '1', '', '1', '', '1', '', 0, 50, 2, '50', '50', '2017-05-31 13:27:52', '2017-05-31 13:27:52', '2017-10-16 02:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'NMS/SH/000005', 3, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'Public', 'Kaduna', 'SH123', 1, 1, '1', '', 1, 'Full', 'Paid in full', '1', '', 'Full', 'Equipment fully approved', '1', '', '1', '', '1', '', '1', '', 0, 50, 2, '50', '50', '2017-06-12 12:20:24', '2017-06-12 12:20:24', '2017-10-16 02:00:00', NULL, NULL, 'AIRTEL', 'users/client/NMS1496846039.jpg', 'img/default-avatar.png', NULL, NULL, 'H.O.D HRMO', NULL, 'H.O.D LIB', NULL, NULL, 'PMB 334, iKEJA, lAGOS', '08052545496', '345-987-23', 'vesta.walsh@example.net', NULL, NULL, NULL, NULL, 2, 'NMS/SH/000006', 5, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'Public', 'Kaduna', 'SH123', 1, 1, '1', '', 1, 'Full', 'Paid in full', '1', '', 'Full', 'Equipment fully approved', '1', '', '1', '', '1', '', '1', '', 0, 50, 2, '50', '50', '2017-06-12 12:21:40', '2017-06-12 12:21:40', '2017-10-16 02:00:00', NULL, NULL, 'AIRTEL', 'users/client/NMS1496846039.jpg', 'img/default-avatar.png', NULL, NULL, 'H.O.D HRMO', NULL, 'H.O.D LIB', NULL, NULL, 'PMB 334, iKEJA, lAGOS', '08052545496', '345-987-23', 'vesta.walsh@example.net', NULL, NULL, NULL, NULL, 2, 'NMS/SH/000007', 3, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'Lottery', 'National', '12345', 1, 1, '1', '', 1, 'Full', 'Working', '1', '', 'Full', 'Fully Paid', '1', '', '1', '', '1', '', '1', '', 0, 50, 2, '50', '50', '2017-06-12 14:06:25', '2017-08-08 12:46:01', '2017-10-16 02:00:00', NULL, '2', 'AIRTEL', 'users/client/NMS1496846039.jpg', 'users/client/NMS1497265416.jpg', 'Mrs Onoja Banke Deborah', 'Miss Adams Tochukwu Francin', 'H.O.D HRMO', NULL, 'H.O.D LIB', NULL, 1, 'PMB 334, iKEJA, lAGOS', '08052545496', '345-987-23', 'vesta.walsh@example.net', NULL, NULL, NULL, NULL, 2, 'NMS/SH/000008', 3, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'Lottery', 'National', '12345', 1, 1, '1', '', 1, 'Full', 'Working', '1', '', 'Full', 'Fully Paid', '1', '', '1', '', '1', '', '1', '', 0, 50, 2, '50', '50', '2017-06-12 14:10:53', '2017-08-10 13:31:00', '2017-10-16 02:00:00', NULL, NULL, 'AIRTEL Networks Limited', 'users/client/NMS1496846039.jpg', 'users/client/NMS1497265416.jpg', 'Mrs Onoja Banke Deborah', 'Miss Adams Tochukwu Francin', 'Assistant H.O.D', NULL, 'ICT H.O.D', NULL, NULL, 'PMB 334, iKEJA, lAGOS', '08052545496', '345-987-23', 'vesta.walsh@example.net', NULL, NULL, NULL, NULL, 2, 'NMS/SH/000009', 5, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'Lottery', 'National', '12345', 1, 1, '1', '', 1, 'Full', 'Working', '1', '', 'Full', 'Fully Paid', '1', '', '1', '', '1', '', '1', '', 0, 50, 2, '50', '50', '2017-06-12 14:11:21', '2017-07-14 11:35:09', '2017-10-16 02:00:00', NULL, NULL, 'AIRTEL', 'users/client/NMS1496846039.jpg', 'users/client/NMS1497265416.jpg', 'Mrs Onoja Banke Deborah', 'Miss Adams Tochukwu Francin', 'H.O.D HRMO', NULL, 'H.O.D LIB', NULL, NULL, 'PMB 334, iKEJA, lAGOS', '08052545496', '345-987-23', 'vesta.walsh@example.net', NULL, NULL, NULL, NULL, 2, 'NMS/SH/000010', 1, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 'Lottery', 'National', '12345', 1, 1, '1', '', 1, 'Full', 'Working', '1', '', 'Full', 'Fully Paid', '1', '', '1', '', '1', '', '1', '', 0, 50, 2, '50', '50', '2017-06-12 14:14:52', '2017-06-12 14:14:52', '2017-10-16 02:00:00', NULL, NULL, 'AIRTEL', 'users/client/NMS1496846039.jpg', 'users/client/NMS1497265416.jpg', 'Mrs Onoja Banke Deborah', 'Miss Adams Tochukwu Francin', 'H.O.D HRMO', NULL, 'H.O.D LIB', NULL, NULL, 'PMB 334, iKEJA, lAGOS', '08052545496', '345-987-23', 'vesta.walsh@example.net', NULL, NULL, NULL, NULL, 2, 'NMS/SH/000011', 2, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 'Medical', 'National', '1234', 1, 1, '1', '', 1, 'Full', NULL, '1', '', 'Part', NULL, '1', '', '1', '', '1', '', '1', '', 0, 50, 2, '50', '50', '2017-06-12 16:20:21', '2017-07-14 11:34:42', '2017-10-16 02:00:00', NULL, NULL, 'AIRTEL', 'users/client/NMS1496846039.jpg', 'users/client/NMS1497265416.jpg', 'Mrs Onoja Banke Deborah', 'Miss Adams Tochukwu Francin', 'H.O.D HRMO', NULL, 'H.O.D LIB', NULL, NULL, 'PMB 334, iKEJA, lAGOS', '08052545496', '345-987-23', 'vesta.walsh@example.net', NULL, NULL, NULL, NULL, 2, 'NMS/SH/000012', 4, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 'mEDICAL', 'National', '1245', 1, 1, '1', '', 1, 'Full', NULL, '1', '', 'Full', NULL, '1', '', '1', '', '1', '', '1', '', 0, 50, 2, '50', '50', '2017-06-12 16:28:41', '2017-08-08 15:06:17', '2017-10-16 02:00:00', NULL, NULL, 'AIRTEL Networks Limited', 'users/client/NMS1496846039.jpg', 'users/client/NMS1497265416.jpg', 'Mrs Onoja Banke Deborah', 'Miss Adams Tochukwu Francin', 'Assistant H.O.D', NULL, 'ICT H.O.D', NULL, NULL, 'PMB 334, iKEJA, lAGOS', '08052545496', '345-987-23', 'vesta.walsh@example.net', NULL, NULL, NULL, NULL, 2, 'NMS/SH/000013', 5, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 'mEDICAL', 'National', '1245', 1, 1, '1', '', 1, 'Full', NULL, '1', '', 'Full', NULL, '1', '', '1', '', '1', '', '1', '', 0, 50, 2, '50', '50', '2017-06-12 16:30:17', '2017-06-12 16:30:17', '2017-10-16 02:00:00', NULL, NULL, 'AIRTEL', 'users/client/NMS1496846039.jpg', 'users/client/NMS1497265416.jpg', 'Mrs Onoja Banke Deborah', 'Miss Adams Tochukwu Francin', 'H.O.D HRMO', NULL, 'H.O.D LIB', NULL, NULL, 'PMB 334, iKEJA, lAGOS', '08052545496', '345-987-23', 'vesta.walsh@example.net', NULL, NULL, NULL, NULL, 2, 'NMS/SH/000014', 5, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 'Public', 'Abuja', 'Abj123', 1, 1, '1', '', 1, 'Full', 'Paid in full', '1', '', 'Full', 'Fully approved', '1', '', '1', '', '1', '', '1', '', 0, 50, 2, '50', '50', '2017-06-14 16:46:42', '2017-08-08 13:11:28', '2017-10-16 02:00:00', NULL, '4', 'AIRTEL Networks Limited', 'users/client/NMS1496846039.jpg', 'users/client/NMS1497265416.jpg', 'Mrs Onoja Banke Deborah', 'Miss Adams Tochukwu Francin', 'Assistant H.O.D', NULL, 'ICT H.O.D', NULL, 1, 'PMB 334, iKEJA, lAGOS', '08052545496', '345-987-23', 'vesta.walsh@example.net', NULL, NULL, NULL, NULL, 2, 'NMS/SH/000015', 5, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 'Broadband', '200-900MHz', 'M123FGH34', 1, 1, '1', '', 1, 'Full', 'Available', '1', '', 'Part', 'Still In process', '1', '', '1', '', '1', '', '1', '', 0, 50, 2, '50', '50', '2017-06-21 17:58:10', '2017-07-18 17:04:09', '2017-10-16 02:00:00', NULL, NULL, 'AIRTEL Networks Limited', 'users/client/NMS1496846039.jpg', 'users/client/NMS1497265416.jpg', 'Mrs Onoja Banke Deborah', 'Miss Adams Tochukwu Francin', 'Assistant H.O.D', NULL, 'ICT H.O.D', NULL, NULL, 'PMB 334, iKEJA, lAGOS', '08052545496', '345-987-23', 'vesta.walsh@example.net', NULL, NULL, NULL, NULL, 2, 'NMS/SHO/0000000016', 5, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 'Public', 'National', 'LN/49585', 1, 1, '1', '', 1, 'Full', 'fully paid', '1', '', 'Full', 'fully paid', '1', '', '1', '', '1', '', '1', '', 0, 171, 94, '171', '171', '2017-06-28 14:27:02', '2017-06-28 14:27:02', '2017-10-16 02:00:00', NULL, NULL, 'MOLCOM MultiConcepts Limited.', '', '', '', '', '', NULL, '', NULL, NULL, '21 Haruna', '08023245478', '56765', 'abiodun.s@molcomconcepts.com', NULL, NULL, NULL, NULL, 2, 'NMS/SHO/0000000017', 3, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 'public', 'national', 'LN/1267', 1, 1, '1', '', 1, 'Full', 'fully paid', '1', '', 'Full', 'paid and approved', '1', '', '1', '', '1', '', '1', '', 0, 171, 94, '171', '171', '2017-06-28 14:59:21', '2017-06-28 14:59:21', '2017-10-16 02:00:00', NULL, NULL, 'MOLCOM MultiConcepts Limited.', '', '', '', '', '', NULL, '', NULL, NULL, '21 haruna', '08023245478', '876554', 'abiodun.s@molcomconcepts.com', NULL, NULL, NULL, NULL, 2, 'NMS/SHO/0000000018', 2, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 'Public', 'National', 'LN/12443', 1, 1, '1', '', 1, 'Full', 'fully paid', '1', '', 'Full', 'paid and approved', '1', '', '1', '', '1', '', '1', '', 0, 171, 94, '171', '171', '2017-06-28 15:10:54', '2017-06-28 15:10:54', '2017-10-16 02:00:00', NULL, NULL, 'MOLCOM MultiConcepts Limited.', '', '', '', '', '', NULL, '', NULL, NULL, '21 Haruna', '08023245478', '544565', 'abiodun.s@molcomconcepts.com', NULL, NULL, NULL, NULL, 2, 'NMS/SHO/0000000019', 4, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 'Public', 'National', 'LN/12443', 1, 1, '1', '', 1, 'Full', 'fully paid', '1', '', 'Full', 'paid and approved', '1', '', '1', '', '1', '', '1', '', 0, 171, 94, '171', '171', '2017-06-28 15:11:38', '2017-06-28 15:11:38', '2017-10-16 02:00:00', NULL, NULL, 'MOLCOM MultiConcepts Limited.', '', '', '', '', '', NULL, '', NULL, NULL, '21 Haruna', '08023245478', '544565', 'abiodun.s@molcomconcepts.com', NULL, NULL, NULL, NULL, 2, 'NMS/SHO/0000000020', 4, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, 'Public', 'National', 'LN/12443', 1, 1, '1', '', 1, 'Full', 'fully paid', '1', '', 'Full', 'paid and approved', '1', '', '1', '', '1', '', '1', '', 0, 171, 94, '171', '171', '2017-06-28 15:12:44', '2017-06-28 15:12:44', '2017-10-16 02:00:00', NULL, NULL, 'MOLCOM MultiConcepts Limited.', '', '', '', '', '', NULL, '', NULL, NULL, '21 Haruna', '08023245478', '544565', 'abiodun.s@molcomconcepts.com', NULL, NULL, NULL, NULL, 2, 'NMS/SHO/0000000021', 5, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, 'Public', 'National', 'LN/12443', 1, 1, '1', '', 1, 'Full', 'fully paid', '1', '', 'Full', 'paid and approved', '1', '', '1', '', '1', '', '1', '', 0, 171, 94, '171', '171', '2017-06-28 15:12:58', '2017-06-28 15:12:58', '2017-10-16 02:00:00', NULL, NULL, 'MOLCOM MultiConcepts Limited.', '', '', '', '', '', NULL, '', NULL, NULL, '21 Haruna', '08023245478', '544565', 'abiodun.s@molcomconcepts.com', NULL, NULL, NULL, NULL, 2, 'NMS/SHO/0000000022', 2, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, 'Public', 'National', 'LN/12443', 1, 1, '1', '', 1, 'Full', 'fully paid', '1', '', 'Full', 'paid and approved', '1', '', '1', '', '1', '', '1', '', 0, 171, 94, '171', '171', '2017-06-28 15:13:21', '2017-06-28 15:13:21', '2017-10-16 02:00:00', NULL, NULL, 'MOLCOM MultiConcepts Limited.', '', '', '', '', '', NULL, '', NULL, NULL, '21 Haruna', '08023245478', '544565', 'abiodun.s@molcomconcepts.com', NULL, NULL, NULL, NULL, 2, 'NMS/SHO/0000000023', 4, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, 'Public', 'National', 'LN/1234993', 1, 1, '1', '', 1, 'Full', 'fully paid', '1', '', 'Full', 'paid and approved', '1', '', '1', '', '1', '', '1', '', 0, 171, 94, '171', '171', '2017-06-28 15:29:49', '2017-06-28 15:29:49', '2017-10-16 02:00:00', NULL, NULL, 'MOLCOM MultiConcepts Limited.', '', '', '', '', '', NULL, '', NULL, NULL, '21 Haruna', '08023245478', '34566654', 'abiodun.s@molcomconcepts.com', NULL, NULL, NULL, NULL, 2, 'NMS/SHO/0000000024', 1, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, 'Health', 'Abuja', '25455', 1, 0, '', NULL, 0, 'Full', 'Here', '', NULL, 'Part', 'Equip', '', NULL, '', NULL, '', NULL, '', NULL, 1, 50, 2, '50', '50', '2017-07-12 17:24:50', '2017-07-13 16:42:38', '2017-08-11 15:54:54', NULL, 'MOLCOM', 'AIRTEL Networks Limited', 'users/client/NMS1496846039.jpg', 'users/client/NMS1497265416.jpg', 'Mrs Onoja Banke Deborah', 'Miss Adams Tochukwu Francin', 'Assistant H.O.D', NULL, 'ICT H.O.D', NULL, 1, 'PMB 334, iKEJA, lAGOS', '08052545496', '345-987-23', 'vesta.walsh@example.net', NULL, NULL, NULL, NULL, 2, 'NMS/SHO/0000000025', 5, 'None', NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, 'Data', 'Abia', 'L10894', 0, 0, '', NULL, 0, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 0, 50, 2, '50', '50', '2017-07-14 11:52:18', '2017-08-10 12:47:04', '2017-10-16 02:00:00', NULL, '3', 'AIRTEL Networks Limited', 'users/client/NMS1496846039.jpg', 'users/client/NMS1497265416.jpg', 'Mrs Onoja Banke Deborah', 'Miss Adams Tochukwu Francin', 'Assistant H.O.D', NULL, 'ICT H.O.D', NULL, 1, 'PMB 334, iKEJA, lAGOS', '+(234)08022545496', '345-987-23', 'abiodunsulaiman694@gmail.com', NULL, NULL, NULL, NULL, 2, 'NMS/SHO/0000000026', 5, 'Nil', NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, NULL, NULL, NULL, 0, 0, '', NULL, 0, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 0, 50, 2, '50', '50', '2017-07-14 16:18:10', '2017-07-14 16:19:30', '2017-10-16 02:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'PMB 334, iKEJA, lAGOS', '08052545496', '345-987-23', 'vesta.walsh@example.net', NULL, NULL, NULL, NULL, 2, 'NMS/SHO/0000000027', 2, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(28, 'Broadband', 'Nigeria', 'L10894', 0, 0, '', NULL, 0, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 1, 50, 2, '50', '50', '2017-07-17 13:23:52', '2017-07-18 16:57:53', '2017-08-11 15:54:54', NULL, '9Mobile', 'AIRTEL Networks Limited', 'users/client/NMS1496846039.jpg', 'users/client/NMS1497265416.jpg', 'Mrs Onoja Banke Deborah', 'Miss Adams Tochukwu Francin', 'Assistant H.O.D', NULL, 'ICT H.O.D', NULL, 1, 'PMB 334, iKEJA, lAGOS', '08052545496', '345-987-23', 'vesta.walsh@example.net', NULL, NULL, NULL, NULL, 2, 'NMS/SHO/0000000028', 5, 'Nil', NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(29, 'Broadband', 'Nigeria', 'L23409', 0, 0, '', NULL, 0, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 0, 50, 2, '50', '50', '2017-07-18 13:40:46', '2017-07-18 13:54:44', '2017-10-16 02:00:00', NULL, '17, all based in Lagos with a reputable standarf', 'AIRTEL Networks Limited', 'users/client/NMS1496846039.jpg', 'users/client/NMS1497265416.jpg', 'Mrs Onoja Banke Deborah', 'Miss Adams Tochukwu Francin', 'Assistant H.O.D', NULL, 'ICT H.O.D', NULL, 1, 'PMB 334, iKEJA, lAGOS', '08052545496', '345-987-23', 'vesta.walsh@example.net', NULL, NULL, NULL, NULL, 2, 'NMS/SHO/0000000029', 5, 'Nil', NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(30, 'Broadband', 'Nigeria', 'L10894', 0, 0, '', NULL, 0, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 1, 50, 2, '50', '50', '2017-07-18 15:12:40', '2017-08-11 14:26:33', '2017-08-11 15:54:54', NULL, '2, All reputable companies based on past and current experiences', 'AIRTEL Networks Limited', 'users/client/NMS1496846039.jpg', 'users/client/NMS1497265416.jpg', 'Mrs Onoja Banke Deborah', 'Miss Adams Tochukwu Francin', 'Assistant H.O.D', NULL, 'ICT H.O.D', NULL, 1, 'PMB 334, iKEJA, lAGOS', '08052545496', '345-987-23', 'vesta.walsh@example.net', NULL, NULL, NULL, NULL, 1, 'NMS/SHO/0000000030', 5, 'General', NULL, 0, 1, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(31, NULL, NULL, NULL, 0, 0, '', NULL, 0, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 0, 50, 2, '50', '50', '2017-07-21 13:44:52', '2017-07-21 13:44:52', '2017-10-16 02:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'NMS/SHO/0000000031', 1, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32, NULL, NULL, NULL, 0, 0, '', NULL, 0, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 0, 50, 2, '50', '50', '2017-07-21 13:47:28', '2017-07-21 13:47:28', '2017-10-16 02:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'NMS/SHO/0000000032', 1, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(33, NULL, NULL, NULL, 0, 0, '', NULL, 0, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 0, 50, 2, '50', '50', '2017-07-21 14:27:59', '2017-07-21 14:27:59', '2017-10-16 02:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'NMS/SHO/0000000033', 1, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(34, NULL, NULL, NULL, 0, 0, '', NULL, 0, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 0, 50, 2, '50', '50', '2017-07-21 14:45:14', '2017-07-21 14:45:14', '2017-10-16 02:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'NMS/SHO/0000000034', 1, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(35, NULL, NULL, NULL, 0, 0, '', NULL, 0, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 0, 50, 2, '50', '50', '2017-07-21 17:17:29', '2017-07-21 17:17:29', '2017-10-16 02:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'NMS/SHO/0000000035', 1, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(36, NULL, NULL, NULL, 0, 0, '', NULL, 0, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 0, 50, 2, '50', '50', '2017-07-21 18:08:25', '2017-07-21 18:08:25', '2017-10-16 02:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'NMS/SHO/0000000036', 1, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(37, NULL, NULL, NULL, 0, 0, '', NULL, 0, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 0, 50, 2, '50', '50', '2017-07-24 12:47:12', '2017-07-24 12:47:12', '2017-10-16 02:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'NMS/SHO/0000000037', 1, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(38, NULL, NULL, NULL, 0, 0, '', NULL, 0, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 0, 50, 2, '50', '50', '2017-07-25 10:36:00', '2017-07-25 10:36:00', '2017-10-16 02:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'NMS/SHO/0000000038', 1, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(39, NULL, NULL, NULL, 0, 0, '', NULL, 0, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 0, 50, 2, '50', '50', '2017-07-25 11:08:41', '2017-07-25 16:11:44', '2017-10-16 02:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'NMS/SHO/0000000039', 1, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40, NULL, NULL, NULL, 0, 0, '', NULL, 0, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 0, 50, 2, '50', '50', '2017-07-28 12:30:06', '2017-07-28 12:30:06', '2017-10-16 02:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'NMS/SHO/0000000039', 1, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(41, NULL, NULL, NULL, 0, 0, '', NULL, 0, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 0, 50, 2, '50', '50', '2017-08-08 12:40:02', '2017-08-08 12:40:02', '2017-10-16 02:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'NMS-SHO-0000000041', 1, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(42, NULL, NULL, NULL, 0, 0, '', NULL, 0, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 0, 50, 2, '50', '50', '2017-08-08 13:07:55', '2017-08-08 13:07:55', '2017-10-16 02:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'NMS-SHO-0000000042', 1, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(43, NULL, NULL, NULL, 0, 0, '', NULL, 0, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 0, 50, 2, '50', '50', '2017-08-09 11:03:09', '2017-08-09 11:03:09', '2017-10-16 02:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'NMS-SHO-0000000043', 1, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(44, 'HD Video', NULL, 'L/NO 989898', 0, 0, '', NULL, 0, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 0, 50, 2, '50', '50', '2017-08-09 11:11:56', '2017-08-09 11:13:00', '2017-10-16 02:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'PMB 334, iKEJA, lAGOS', '+(234)08022545496', '345-987-23', 'abiodunsulaiman694@gmail.com', NULL, NULL, NULL, NULL, 2, 'NMS-SHO-0000000044', 2, 'None', NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(45, NULL, NULL, NULL, 0, 0, '', NULL, 0, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 0, 50, 2, '50', '50', '2017-08-09 15:12:53', '2017-08-09 15:12:53', '2017-10-16 02:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'NMS-SHO-0000000045', 1, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(46, NULL, NULL, NULL, 0, 0, '', NULL, 0, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 0, 50, 2, '50', '50', '2017-08-09 18:28:39', '2017-08-09 18:28:39', '2017-10-16 02:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'NMS-SHO-0000000046', 1, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(47, NULL, NULL, NULL, 0, 0, '', NULL, 0, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 0, 50, 2, '50', '50', '2017-08-11 12:08:49', '2017-08-11 12:08:49', '2017-10-16 02:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'NMS-SHO-0000000047', 1, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(48, 'Data', 'Imo', 'LNO147526', 0, 0, '', NULL, 0, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 1, 50, 2, '50', '50', '2017-08-11 15:01:16', '2017-08-11 15:12:30', NULL, NULL, '5', 'AIRTEL Networks Limited', 'users/client/NMS1496846039.jpg', 'users/client/NMS1497265416.jpg', 'Mrs Onoja Banke Deborah', 'Miss Adams Tochukwu Francin', 'Assistant H.O.D', NULL, 'ICT H.O.D', NULL, 1, 'PMB 334, iKEJA, lAGOS', '+(234)08022545496', '345-987-23', 'abiodunsulaiman694@gmail.com', NULL, NULL, NULL, NULL, 2, 'NMS-SHO-0000000002', 5, 'N/A', NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(49, 'Data', 'Abia', 'LNO201586', 0, 0, '', NULL, 0, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 1, 50, 2, '50', '50', '2017-08-11 15:14:13', '2017-10-05 13:03:36', NULL, NULL, '6', 'AIRTEL Networks Limited', 'users/client/NMS1496846039.jpg', 'users/client/NMS1497265416.jpg', 'Mrs Onoja Banke Deborah', 'Miss Adams Tochukwu Francin', 'Assistant H.O.D', NULL, 'ICT H.O.D', NULL, 1, 'PMB 334, iKEJA, lAGOS', '+(234)08022545496', '345-987-23', 'abiodunsulaiman694@gmail.com', NULL, NULL, NULL, NULL, 2, 'NMS-SHO-0000000049', 5, 'N/A', NULL, 0, 0, NULL, 1, 49, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(50, 'Voice', 'Imo', 'LNO748562', 0, 0, '', NULL, 0, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 1, 50, 2, '50', '50', '2017-08-11 15:29:08', '2018-02-20 12:54:34', NULL, NULL, '4', 'AIRTEL Networks Limited', 'users/client/NMS1496846039.jpg', 'users/client/NMS1497265416.jpg', 'Mrs Onoja Banke Deborah', 'Miss Adams Tochukwu Francin', 'Assistant H.O.D', NULL, 'ICT H.O.D', NULL, 0, 'PMB 334, iKEJA, lAGOS', '+(234)08022545496', '345-987-23', 'abiodunsulaiman694@gmail.com', NULL, NULL, NULL, NULL, 1, 'NMS-SHO-0000000050', 5, 'N/A', NULL, 0, 1, NULL, 1, NULL, '2018-02-21', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(51, NULL, NULL, NULL, 0, 0, '', NULL, 0, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 0, 50, 2, '50', '50', '2017-08-11 15:56:36', '2017-08-11 15:56:36', '2017-10-16 02:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'NMS-SHO-0000000051', 1, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(52, NULL, NULL, NULL, 0, 0, '', NULL, 0, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 0, 50, 2, '50', '50', '2017-08-14 13:51:59', '2017-08-14 13:51:59', '2017-10-16 02:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'NMS-SHO-0000000052', 1, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(53, 'Data', 'Abia', 'xxxxxxxxxx', 0, 0, '', NULL, 0, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 1, 50, 2, '50', '50', '2017-08-15 11:32:50', '2017-09-26 13:53:30', NULL, NULL, 'N/A', 'AIRTEL Networks Limited', 'users/client/NMS1496846039.jpg', 'users/client/NMS1497265416.jpg', 'Mrs Onoja Banke Deborah', 'Miss Adams Tochukwu Francin', 'Assistant H.O.D', NULL, 'ICT H.O.D', NULL, 0, 'PMB 334, iKEJA, lAGOS', '+(234)08022545496', '345-987-23', 'abiodunsulaiman694@gmail.com', NULL, NULL, NULL, NULL, 2, 'NMS-SHO-0000000053', 5, 'N/A', NULL, 0, 0, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(54, NULL, NULL, NULL, 0, 0, '', NULL, 0, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 0, 50, 2, '50', '50', '2017-08-28 11:05:30', '2017-08-28 11:05:30', '2017-10-16 02:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'NMS-SHO-0000000054', 1, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(55, NULL, NULL, NULL, 0, 0, '', NULL, 0, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 0, 50, 2, '50', '50', '2017-08-28 14:59:43', '2017-08-28 14:59:43', '2017-10-16 02:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'NMS-SHO-0000000055', 1, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(56, NULL, '', 'LN09808', 0, 0, '', NULL, 0, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 0, 50, 2, '50', '50', '2017-09-11 11:45:09', '2017-10-17 01:29:04', '2017-10-16 02:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'PMB 334, iKEJA, lAGOS', '+(234)08022545496', '345-987-23', 'abiodunsulaiman694@gmail.com', NULL, NULL, NULL, NULL, 2, 'NMS-SHO-0000000056', 2, 'NIL', NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(57, NULL, NULL, NULL, 0, 0, '', NULL, 0, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 0, 50, 2, '50', '50', '2017-09-18 17:10:23', '2017-09-18 17:10:23', '2017-10-16 02:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'NMS-SHO-0000000057', 1, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(58, NULL, NULL, NULL, 0, 0, '', NULL, 0, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 0, 50, 2, '50', '50', '2017-09-19 12:54:15', '2017-09-19 12:54:15', '2017-10-16 02:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'NMS-SHO-0000000058', 1, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(59, NULL, NULL, NULL, 0, 0, '', NULL, 0, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 0, 50, 2, '50', '50', '2017-09-19 15:24:09', '2017-09-19 15:24:09', '2017-10-16 02:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'NMS-SHO-0000000059', 1, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(60, 'HD Video', 'Abia', 'L345', 0, 0, '', NULL, 0, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 1, 50, 2, '50', '50', '2017-09-20 11:18:10', '2017-10-13 18:32:55', NULL, NULL, '17', 'AIRTEL Networks Limited', 'users/client/NMS1504009160.jpg', 'users/client/NMS1504009181.jpg', 'Mrs Onoja Banke Deborah', 'Miss Adams Tochukwu Francin', 'Assistant H.O.D', NULL, 'ICT H.O.D', NULL, 0, 'PMB 334, iKEJA, lAGOS', '+(234)08022545496', '345-987-23', 'abiodunsulaiman694@gmail.com', NULL, NULL, NULL, NULL, 2, 'NMS-SHO-0000000060', 5, 'Nil', NULL, 0, 0, NULL, 1, 215, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(61, NULL, NULL, NULL, 0, 0, '', NULL, 0, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 0, 222, 117, '222', '222', '2017-09-27 14:49:10', '2017-09-27 14:49:10', '2017-10-16 02:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'NMS-SHO-0000000061', 1, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(62, NULL, NULL, NULL, 0, 0, '', NULL, 0, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 0, 222, 117, '222', '222', '2017-09-27 14:51:11', '2017-09-27 14:51:11', '2017-10-16 02:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'NMS-SHO-0000000062', 1, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(63, NULL, NULL, 'HGJHG', 0, 0, '', NULL, 0, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 0, 50, 2, '50', '50', '2017-09-27 14:58:10', '2017-09-27 15:21:40', '2017-10-16 02:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'PMB 334, iKEJA, lAGOS', '+(234)08022545496', '345-987-23', 'abiodunsulaiman694@gmail.com', NULL, NULL, NULL, NULL, 2, 'NMS-SHO-0000000063', 2, 'HHH', NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(64, NULL, NULL, NULL, 0, 0, '', NULL, 0, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 0, 50, 2, '50', '50', '2017-09-27 14:58:24', '2017-09-27 14:58:24', '2017-10-16 02:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'NMS-SHO-0000000064', 1, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(65, NULL, NULL, NULL, 0, 0, '', NULL, 0, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 0, 50, 2, '50', '50', '2017-09-27 14:59:56', '2017-09-27 14:59:56', '2017-10-16 02:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'NMS-SHO-0000000065', 1, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(66, 'Data', 'Abia', 'L345', 0, 0, '', NULL, 0, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 1, 50, 2, '50', '50', '2017-09-27 15:01:28', '2017-10-05 13:01:47', NULL, NULL, 'MTN, GLO', 'AIRTEL Networks Limited', 'users/client/NMS1504009160.jpg', 'users/client/NMS1504009181.jpg', 'Mrs Onoja Banke Deborah', 'Miss Adams Tochukwu Francin', 'Assistant H.O.D', NULL, 'ICT H.O.D', NULL, 1, 'PMB 334, iKEJA, lAGOS', '+(234)08022545496', '345-987-23', 'abiodunsulaiman694@gmail.com', NULL, NULL, NULL, NULL, 2, 'NMS-SHO-0000000066', 5, NULL, NULL, 0, 0, NULL, 1, 66, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(67, NULL, NULL, NULL, 0, 0, '', NULL, 0, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 0, 50, 2, '50', '50', '2017-09-28 11:28:42', '2017-09-28 11:28:42', '2017-10-16 02:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'NMS-SHO-0000000067', 1, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(68, 'Nil', '', '6547', 0, 0, '', NULL, 0, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 0, 50, 2, '50', '50', '2017-09-28 23:12:23', '2017-09-28 23:12:57', '2017-10-16 02:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'PMB 334, iKEJA, lAGOS', '+(234)08022545496', '345-987-23', 'abiodunsulaiman694@gmail.com', NULL, NULL, NULL, NULL, 2, 'NMS-SHO-0000000068', 2, '098', NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(69, NULL, '', 'L467', 0, 0, '', NULL, 0, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 0, 50, 2, '50', '50', '2017-09-29 00:00:51', '2017-09-29 00:01:27', '2017-10-16 02:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'PMB 334, iKEJA, lAGOS', '+(234)08022545496', '345-987-23', 'abiodunsulaiman694@gmail.com', NULL, NULL, NULL, NULL, 2, 'NMS-SHO-0000000069', 2, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(70, NULL, '', NULL, 0, 0, '', NULL, 0, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 0, 50, 2, '50', '50', '2017-09-29 11:38:21', '2017-10-06 14:19:29', '2017-10-16 02:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'PMB 334, iKEJA, lAGOS', '+(234)08022545496', '345-987-23', 'abiodunsulaiman694@gmail.com', NULL, NULL, NULL, NULL, 2, 'NMS-SHO-0000000070', 2, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(71, NULL, '', NULL, 0, 0, '', NULL, 0, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 0, 50, 2, '50', '50', '2017-09-29 11:38:30', '2017-10-06 14:20:23', '2017-10-16 02:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'PMB 334, iKEJA, lAGOS', '+(234)08022545496', '345-987-23', 'abiodunsulaiman694@gmail.com', NULL, NULL, NULL, NULL, 2, 'NMS-SHO-0000000071', 2, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(72, NULL, '', NULL, 0, 0, '', NULL, 0, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 0, 50, 2, '50', '50', '2017-10-06 14:21:14', '2017-10-06 14:21:47', '2017-10-16 02:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'PMB 334, iKEJA, lAGOS', '+(234)08022545496', '345-987-23', 'abiodunsulaiman694@gmail.com', NULL, NULL, NULL, NULL, 2, 'NMS-SHO-0000000072', 2, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(73, NULL, '', NULL, 0, 0, '', NULL, 0, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 0, 50, 2, '50', '50', '2017-10-06 14:24:14', '2017-10-17 01:28:12', '2017-10-16 02:00:00', NULL, NULL, 'Gatecom', 'users/client/NMS1507885755.jpg', 'users/client/NMS1507885945.jpg', 'Mrs Onoja Banke Deborah', 'Miss Adams Tochukwu Francin', 'Assistant H.O.D', NULL, 'ICT H.O.D', NULL, NULL, 'PMB 334, iKEJA, lAGOS', '+(234)08022545496', '345-987-23', 'abiodunsulaiman694@gmail.com', NULL, NULL, NULL, NULL, 2, 'NMS-SHO-0000000073', 5, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(74, NULL, '', 'VAS/SCN/999/99', 0, 0, '', NULL, 0, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 1, 50, 2, '50', '50', '2017-10-13 14:53:13', '2017-10-13 15:06:10', NULL, NULL, '1- Globacom Limited', 'Gatecom', 'users/client/NMS1507885755.jpg', 'users/client/NMS1507885945.jpg', 'Mrs Onoja Banke Deborah', 'Miss Adams Tochukwu Francin', 'Assistant H.O.D', NULL, 'ICT H.O.D', NULL, 0, 'PMB 334, iKEJA, lAGOS', '+(234)08022545496', '345-987-23', 'abiodunsulaiman694@gmail.com', NULL, NULL, NULL, NULL, 2, 'NMS-SHO-0000000074', 5, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(75, NULL, '', 'VAS/SCN/919/85', 0, 0, '', NULL, 0, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 1, 50, 2, '50', '50', '2017-10-17 11:05:34', '2017-10-17 12:01:17', NULL, NULL, 'GLO Mobile', 'Gatecom', 'users/client/NMS1508225571.jpg', 'users/client/NMS1507885945.jpg', 'Dr. John Tayo Paul', 'Miss Adams Tochukwu Francin', 'Director', NULL, 'ICT H.O.D', NULL, 1, 'PMB 334, iKEJA, lAGOS', '+(234)08022545496', '345-987-23', 'abiodunsulaiman694@gmail.com', NULL, NULL, NULL, NULL, 2, 'NMS-SHO-0000000075', 5, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(76, NULL, '', 'VAS/SCN/910/99', 0, 0, '', NULL, 0, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 0, 50, 2, '50', '50', '2017-10-17 14:49:17', '2017-10-17 14:54:55', NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'PMB 334, iKEJA, lAGOS', '+(234)08022545496', '345-987-23', 'abiodunsulaiman694@gmail.com', NULL, NULL, NULL, NULL, 2, 'NMS-SHO-0000000076', 3, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(77, NULL, NULL, NULL, 0, 0, '', NULL, 0, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 0, 50, 2, '50', '50', '2017-10-29 19:18:16', '2017-10-29 19:18:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'NMS-SHO-0000000077', 1, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(78, NULL, '', 'VAS/SCN/919/85', 0, 0, '', NULL, 0, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 0, 50, 2, '50', '50', '2017-10-31 14:31:39', '2017-11-07 19:10:06', NULL, NULL, NULL, 'Gatecom', 'users/client/NMS1508225571.jpg', 'users/client/NMS1507885945.jpg', 'Dr. John Tayo Paul', 'Miss Adams Tochukwu Francin', 'Director', NULL, 'ICT H.O.D', NULL, NULL, 'PMB 334, iKEJA, lAGOS', '+(234)08022545496', '345-987-23', 'abiodunsulaiman694@gmail.com', NULL, NULL, NULL, NULL, 2, 'NMS-SHO-0000000078', 5, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL),
(79, NULL, '', 'VAS4125', 0, 0, '', NULL, 0, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 0, 50, 2, '50', '50', '2017-11-07 19:46:20', '2017-11-07 19:48:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'PMB 334, iKEJA, lAGOS', '+(234)08022545496', '345-987-23', 'abiodunsulaiman694@gmail.com', NULL, NULL, NULL, NULL, 2, 'NMS-SHO-0000000079', 2, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL),
(80, NULL, NULL, NULL, 0, 0, '', NULL, 0, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 0, 50, 2, '50', '50', '2017-11-08 16:44:34', '2017-11-08 16:44:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'NMS-SHO-0000000080', 1, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL),
(81, NULL, NULL, NULL, 0, 0, '', NULL, 0, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 0, 50, 2, '50', '50', '2017-11-09 13:18:04', '2017-11-09 13:18:04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'NMS-SHO-0000000081', 1, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL),
(82, NULL, NULL, NULL, 0, 0, '', NULL, 0, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 0, 50, 2, '50', '50', '2017-11-15 14:42:28', '2017-11-15 14:42:28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'NMS-SHO-0000000082', 1, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL),
(83, NULL, NULL, NULL, 0, 0, '', NULL, 0, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 0, 50, 2, '50', '50', '2017-11-15 15:05:08', '2017-11-15 15:05:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'NMS-SHO-0000000083', 1, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL),
(84, NULL, '', 'L/No563849', 0, 0, '', NULL, 0, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 1, 50, 2, '50', '50', '2018-01-28 13:50:40', '2018-01-28 14:10:08', NULL, NULL, 'Molcom Multi-Concepts Limited', 'Gatecom', 'users/client/NMS1508225571.jpg', 'users/client/NMS1507885945.jpg', 'Dr. John Tayo Paul', 'Miss Adams Tochukwu Francin', 'Director', NULL, 'ICT H.O.D', NULL, NULL, 'PMB 334, iKEJA, lAGOS', '+(234)08022545496', '345-987-23', 'abiodunsulaiman694@gmail.com', NULL, NULL, NULL, NULL, 2, 'NMS-SHO-0000000084', 5, NULL, NULL, 0, 0, NULL, 0, 212, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `application_statuses`
--

CREATE TABLE `application_statuses` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `last_updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `system` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `application_statuses`
--

INSERT INTO `application_statuses` (`id`, `name`, `created_by`, `last_updated_by`, `created_at`, `updated_at`, `deleted_at`, `system`) VALUES
(1, 'Approved', 2, 2, '2017-05-12 13:49:25', '2017-05-18 13:57:25', NULL, 1),
(2, 'In Process', 2, 2, '2017-05-12 14:06:50', '2017-05-18 13:58:11', NULL, 1),
(3, 'Denied', 2, 2, '2017-05-12 15:48:33', '2017-05-18 13:58:30', NULL, 1),
(4, 'Deletables', 2, 2, '2017-05-15 13:26:58', '2017-05-15 13:36:35', '2017-05-15 13:36:35', 0),
(5, 'In Between', 2, 2, '2017-05-16 12:06:38', '2017-05-18 13:57:03', '2017-05-18 13:57:03', 0),
(6, 'Not seen', 2, 2, '2017-05-18 12:05:29', '2017-05-18 12:08:15', '2017-05-18 12:08:15', 0),
(7, 'Cancelled', 2, 2, '2017-05-18 13:58:46', '2017-05-18 13:58:46', NULL, 0),
(8, 'Reserved', 2, 2, '2017-06-15 15:16:12', '2017-06-15 15:16:12', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `approval_stages`
--

CREATE TABLE `approval_stages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `approval_stages`
--

INSERT INTO `approval_stages` (`id`, `name`, `label`, `title`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Prepare', 'Prepared By me', 'Officer', '2017-07-19 02:00:00', '2017-11-02 17:34:48', NULL),
(2, 'Recommendation', 'Recommended By', 'Head, FCNS', '2017-07-19 02:00:00', '2017-07-19 02:00:00', NULL),
(3, 'Validation', 'Validated By', 'DTS', '2017-07-19 02:00:00', '2017-07-19 02:00:00', NULL),
(4, 'Endorsement', 'Endorsed By', 'EC, Technical Services', '2017-07-19 02:00:00', '2017-07-19 02:00:00', NULL),
(5, 'Approval', 'Approved By', 'EVC', '2017-07-19 02:00:00', '2017-07-19 02:00:00', NULL),
(6, 'New Stage', 'New Stage by', 'HOD', '2017-07-21 16:24:17', '2017-08-16 17:13:14', '2017-08-16 17:13:14'),
(7, 'Presentation', 'Presented By', 'Tech Head', '2017-07-21 17:43:03', '2017-08-16 17:13:33', '2017-08-16 17:13:33'),
(8, 'New Prep', 'New Prep by', 'Director', '2017-08-16 16:24:11', '2017-08-16 17:13:56', '2017-08-16 17:13:56'),
(9, 'Old Prep', 'By', 'ES', '2017-08-16 16:25:59', '2017-08-16 16:42:40', '2017-08-16 16:42:40'),
(10, 'Produce', 'Produced by', 'The E.S.', '2017-08-16 17:10:27', '2017-08-16 17:10:27', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `approval_stage_checklist`
--

CREATE TABLE `approval_stage_checklist` (
  `id` int(10) UNSIGNED NOT NULL,
  `approval_stage_id` int(11) NOT NULL,
  `checklist_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `approval_stage_checklist`
--

INSERT INTO `approval_stage_checklist` (`id`, `approval_stage_id`, `checklist_id`, `created_at`, `updated_at`) VALUES
(5, 10, 4, NULL, NULL),
(6, 10, 9, NULL, NULL),
(7, 10, 10, NULL, NULL),
(8, 2, 11, NULL, NULL),
(9, 3, 12, NULL, NULL),
(10, 4, 13, NULL, NULL),
(11, 5, 14, NULL, NULL),
(14, 1, 9, NULL, NULL),
(15, 1, 5, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `approval_stage_number_type`
--

CREATE TABLE `approval_stage_number_type` (
  `id` int(10) UNSIGNED NOT NULL,
  `approval_stage_id` int(11) NOT NULL,
  `number_type_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `approval_stage_number_type`
--

INSERT INTO `approval_stage_number_type` (`id`, `approval_stage_id`, `number_type_id`, `created_at`, `updated_at`) VALUES
(1, 1, 23, NULL, NULL),
(2, 2, 23, NULL, NULL),
(3, 3, 23, NULL, NULL),
(4, 4, 23, NULL, NULL),
(6, 1, 10, NULL, NULL),
(7, 2, 10, NULL, NULL),
(8, 3, 10, NULL, NULL),
(9, 4, 10, NULL, NULL),
(10, 5, 10, NULL, NULL),
(11, 1, 16, NULL, NULL),
(12, 2, 16, NULL, NULL),
(13, 3, 16, NULL, NULL),
(14, 4, 16, NULL, NULL),
(15, 5, 16, NULL, NULL),
(17, 1, 7, NULL, NULL),
(18, 2, 7, NULL, NULL),
(19, 3, 7, NULL, NULL),
(20, 4, 7, NULL, NULL),
(21, 5, 7, NULL, NULL),
(22, 1, 20, NULL, NULL),
(23, 2, 20, NULL, NULL),
(24, 3, 20, NULL, NULL),
(25, 4, 20, NULL, NULL),
(26, 5, 20, NULL, NULL),
(28, 1, 24, NULL, NULL),
(29, 0, 9, NULL, NULL),
(32, 0, 21, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `approves`
--

CREATE TABLE `approves` (
  `id` int(10) UNSIGNED NOT NULL,
  `application_number_id` int(11) DEFAULT NULL,
  `application_short_id` int(11) DEFAULT NULL,
  `application_ispc_id` int(11) DEFAULT NULL,
  `company_id` int(11) NOT NULL,
  `approval_stage_id` int(11) NOT NULL,
  `stage_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `approve` int(11) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `approved_by` int(11) NOT NULL,
  `last_updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `valid_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `stage_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `approves`
--

INSERT INTO `approves` (`id`, `application_number_id`, `application_short_id`, `application_ispc_id`, `company_id`, `approval_stage_id`, `stage_name`, `approve`, `comment`, `approved_by`, `last_updated_by`, `created_at`, `updated_at`, `deleted_at`, `valid_date`, `stage_id`) VALUES
(1, 17, NULL, NULL, 2, 1, 'Prepare', 1, ' - Great( ByKings Adeyemi on 2017-08-08)', 2, 2, '2017-08-08 16:39:07', '2017-08-08 16:39:07', NULL, NULL, NULL),
(2, 17, NULL, NULL, 2, 2, 'Recommendation', 1, ' - Highly recommended( ByKings Adeyemi on 2017-08-08)', 2, 2, '2017-08-08 17:15:44', '2017-08-08 17:15:44', NULL, NULL, NULL),
(3, 17, NULL, NULL, 2, 3, 'Validation', 1, ' - Validation successful( ByKings Adeyemi on 2017-08-08)', 2, 2, '2017-08-08 17:16:23', '2017-08-08 17:16:23', NULL, NULL, NULL),
(4, 17, NULL, NULL, 2, 4, 'Endorsement', 1, ' - I endorse this( ByKings Adeyemi on 2017-08-08)', 2, 2, '2017-08-08 17:16:49', '2017-08-08 17:16:49', NULL, NULL, NULL),
(5, 17, NULL, NULL, 2, 5, 'Approval', 1, ' - Final Approval( ByKings Adeyemi on 2017-08-08)', 2, 2, '2017-08-08 17:17:23', '2017-08-08 17:17:23', NULL, NULL, NULL),
(6, 28, NULL, NULL, 2, 1, 'Prepare', 1, ' - Document well prepared( ByKings Adeyemi on 2017-08-10)', 2, 2, '2017-08-10 17:48:43', '2017-08-10 17:48:43', NULL, NULL, NULL),
(7, 28, NULL, NULL, 2, 2, 'Recommendation', 1, ' - All done( ByKings Adeyemi on 2017-08-10)', 2, 2, '2017-08-10 18:01:56', '2017-08-10 18:01:56', NULL, NULL, NULL),
(8, NULL, 28, NULL, 2, 3, 'Validation', 1, ' - All look good( ByKings Adeyemi on 2017-08-10) - Done(By Kings Adeyemi on 2017-08-10)', 2, 2, '2017-08-10 18:15:41', '2017-08-10 18:18:48', NULL, NULL, NULL),
(9, 34, NULL, NULL, 2, 1, 'Prepare', 1, ' - nothing(By Kings Adeyemi on 2017-08-11) - nothing(By Kings Adeyemi on 2017-08-11)', 2, 2, '2017-08-11 11:19:37', '2017-08-11 11:20:31', NULL, NULL, NULL),
(10, 34, NULL, NULL, 2, 2, 'Recommendation', 1, ' - nothing(By Kings Adeyemi on 2017-08-11)', 2, 2, '2017-08-11 11:21:59', '2017-08-11 11:21:59', NULL, NULL, NULL),
(11, 34, NULL, NULL, 2, 3, 'Validation', 1, ' - nothing(By Kings Adeyemi on 2017-08-11)', 2, 2, '2017-08-11 11:22:47', '2017-08-11 11:22:47', NULL, NULL, NULL),
(12, 34, NULL, NULL, 2, 4, 'Endorsement', 1, ' - nothing(By Kings Adeyemi on 2017-08-11)', 2, 2, '2017-08-11 11:23:58', '2017-08-11 11:23:58', NULL, NULL, NULL),
(13, 34, NULL, NULL, 2, 5, 'Approval', 1, ' - nothing(By Kings Adeyemi on 2017-08-11)', 2, 2, '2017-08-11 11:27:48', '2017-08-11 11:27:48', NULL, NULL, NULL),
(14, 31, NULL, NULL, 2, 1, 'Prepare', 1, ' - nothing(By Kings Adeyemi on 2017-08-11)', 2, 2, '2017-08-11 12:43:26', '2017-08-11 12:43:26', NULL, NULL, NULL),
(15, 31, NULL, NULL, 2, 2, 'Recommendation', 1, ' - nothing(By Kings Adeyemi on 2017-08-11)', 2, 2, '2017-08-11 12:44:10', '2017-08-11 12:44:10', NULL, NULL, NULL),
(16, 31, NULL, NULL, 2, 3, 'Validation', 1, ' - nothing(By Kings Adeyemi on 2017-08-11)', 2, 2, '2017-08-11 12:44:55', '2017-08-11 12:44:55', NULL, NULL, NULL),
(17, 31, NULL, NULL, 2, 4, 'Endorsement', 1, ' - nothing(By Kings Adeyemi on 2017-08-11)', 2, 2, '2017-08-11 12:46:07', '2017-08-11 12:46:07', NULL, NULL, NULL),
(18, 31, NULL, NULL, 2, 5, 'Approval', 1, ' - nothing(By Kings Adeyemi on 2017-08-11)', 2, 2, '2017-08-11 12:47:49', '2017-08-11 12:47:49', NULL, NULL, NULL),
(19, 71, NULL, NULL, 2, 1, 'Prepare', 1, '<br> - Well Prepared(By Kings Adeyemi on 2017-08-11) - Agreed(By Kings Adeyemi on 2017-08-15)', 2, 2, '2017-08-11 15:12:42', '2017-08-15 11:16:07', NULL, NULL, NULL),
(20, 73, NULL, NULL, 2, 1, 'Prepare', 1, ' - well Prepared(By Kings Adeyemi on 2017-08-11) - (By Kings Adeyemi on 2017-08-11)', 2, 2, '2017-08-11 15:56:18', '2017-08-11 16:05:20', NULL, NULL, NULL),
(21, 73, NULL, NULL, 2, 2, 'Recommendation', 1, ' - Hello(By Kings Adeyemi on 2017-08-11)', 2, 2, '2017-08-11 16:38:39', '2017-08-11 16:38:39', NULL, NULL, NULL),
(22, 73, NULL, NULL, 2, 3, 'Validation', 1, ' - All valid(By Kings Adeyemi on 2017-08-11)', 2, 2, '2017-08-11 16:40:16', '2017-08-11 16:40:16', NULL, NULL, NULL),
(23, 73, NULL, NULL, 2, 4, 'Endorsement', 1, ' - All endorsed(By Kings Adeyemi on 2017-08-11)', 2, 2, '2017-08-11 16:40:51', '2017-08-11 16:40:51', NULL, NULL, NULL),
(24, 73, NULL, NULL, 2, 5, 'Approval', 1, ' - Not approved( ByKings Adeyemi on 2017-08-11) - All okay(By Kings Adeyemi on 2017-08-11)', 2, 2, '2017-08-11 16:42:06', '2017-08-11 16:42:47', NULL, NULL, NULL),
(25, 71, NULL, NULL, 2, 2, 'Recommendation', 1, ' <br> - Okay(By Kings Adeyemi on 2017-08-15)', 2, 2, '2017-08-15 13:02:55', '2017-08-15 13:02:55', NULL, NULL, NULL),
(26, 74, NULL, NULL, 2, 1, 'Prepare', 1, ' <br> - Okay(By Kings Adeyemi on 2017-08-15)', 2, 2, '2017-08-15 13:08:19', '2017-08-15 13:08:19', NULL, NULL, NULL),
(27, 74, NULL, NULL, 2, 2, 'Recommendation', 1, ' <br> - Okay(By Kings Adeyemi on 2017-08-15) <br> - Okay(By Kings Adeyemi on 2017-08-15)', 2, 2, '2017-08-15 13:09:34', '2017-08-15 13:10:35', NULL, NULL, NULL),
(28, 74, NULL, NULL, 2, 3, 'Validation', 1, ' <br> - All valid(By Kings Adeyemi on 2017-08-15) <br> - (By Kings Adeyemi on 2017-08-22) <br> - None allowed( ByKings Adeyemi on 2017-08-22) <br> - None allowed( ByKings Adeyemi on 2017-08-22) <br> - None allowed( ByKings Adeyemi on 2017-08-22) <br> - (By Kings Adeyemi on 2017-08-23) <br> - (By Kings Adeyemi on 2017-08-23)', 2, 2, '2017-08-15 13:13:39', '2017-08-23 12:33:52', NULL, NULL, NULL),
(29, 74, NULL, NULL, 2, 4, 'Endorsement', 1, ' <br> - (By Kings Adeyemi on 2017-08-22) <br> - (By Kings Adeyemi on 2017-08-22) <br> - (By Kings Adeyemi on 2017-08-22) <br> - (By Kings Adeyemi on 2017-08-22) <br> - None( ByKings Adeyemi on 2017-08-22) <br> - None( ByKings Adeyemi on 2017-08-22) <br> - None( ByKings Adeyemi on 2017-08-22) <br> - accurate( ByKings Adeyemi on 2017-08-23)', 2, 2, '2017-08-22 15:47:48', '2017-08-23 15:55:54', NULL, NULL, NULL),
(30, 74, NULL, NULL, 2, 5, 'Approval', 1, ' <br> - approved( ByKings Adeyemi on 2017-08-23) <br> - approved( ByKings Adeyemi on 2017-08-23) <br> - approved( ByKings Adeyemi on 2017-08-23)', 2, 2, '2017-08-23 15:56:29', '2017-08-23 15:59:02', NULL, NULL, NULL),
(31, 75, NULL, NULL, 2, 1, 'Prepare', 1, ' <br> - Done( ByKings Adeyemi on 2017-08-29)', 2, 2, '2017-08-29 11:44:47', '2017-08-29 11:44:47', NULL, NULL, NULL),
(32, 75, NULL, NULL, 2, 2, 'Recommendation', 1, ' <br> - Done( ByOnaghise William on 2017-08-29)', 213, 213, '2017-08-29 12:12:44', '2017-08-29 12:12:44', NULL, NULL, NULL),
(33, 75, NULL, NULL, 2, 3, 'Validation', 1, ' <br> - All documents are valid( ByAbiodun Sulaiman on 2017-08-29)', 216, 216, '2017-08-29 14:58:19', '2017-08-29 14:58:19', NULL, NULL, NULL),
(34, 78, NULL, NULL, 2, 5, 'Approval', 0, ' <br> - incomplete information( ByKings Adeyemi on 2017-08-30)', 2, 2, '2017-08-30 13:53:54', '2017-08-30 13:53:54', NULL, NULL, NULL),
(35, 78, NULL, NULL, 2, 1, 'Prepare', 1, ' <br> - Thanks( ByKings Adeyemi on 2017-09-11)', 2, 2, '2017-09-11 13:49:26', '2017-09-11 13:49:26', NULL, NULL, NULL),
(36, 77, NULL, NULL, 2, 1, 'Prepare', 1, ' <br> - nothing( ByKings Adeyemi on 2017-09-14)', 2, 2, '2017-09-14 13:52:48', '2017-09-14 13:52:48', NULL, NULL, NULL),
(37, 77, NULL, NULL, 2, 2, 'Recommendation', 1, ' <br> - nothing( ByKings Adeyemi on 2017-09-14)', 2, 2, '2017-09-14 14:17:25', '2017-09-14 14:17:25', NULL, NULL, NULL),
(38, 81, NULL, NULL, 117, 1, 'Prepare', 1, ' <br> - nothing( ByKings Adeyemi on 2017-09-14)', 2, 2, '2017-09-14 14:18:33', '2017-09-14 14:18:33', NULL, NULL, NULL),
(39, 81, NULL, NULL, 117, 2, 'Recommendation', 1, NULL, 2, 2, '2017-09-14 14:26:10', '2017-09-14 14:26:10', NULL, NULL, NULL),
(40, NULL, 49, NULL, 2, 1, 'Prepare', 1, ' <br> - done( ByKings Adeyemi on 2017-09-29)', 2, 2, '2017-09-29 12:11:35', '2017-09-29 12:11:35', NULL, NULL, NULL),
(41, NULL, 49, NULL, 2, 2, 'Recommendation', 1, ' <br> - All good( ByKings Adeyemi on 2017-09-29)', 2, 2, '2017-09-29 12:16:48', '2017-09-29 12:16:48', NULL, NULL, NULL),
(42, NULL, 49, NULL, 2, 0, 'Prepare', 1, ' <br> - here( ByKings Adeyemi on 2018-01-30) <br> - here( ByKings Adeyemi on 2018-01-30)', 2, 2, '2018-01-30 08:45:56', '2018-01-30 08:48:23', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `areas`
--

CREATE TABLE `areas` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `area_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `access_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_updated_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `areas`
--

INSERT INTO `areas` (`id`, `name`, `area_code`, `access_code`, `created_by`, `last_updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Lagos', '01', '', '2', '2', '2017-05-30 10:53:46', '2017-05-30 10:53:46', NULL),
(2, 'National', '0812', '', '2', '2', '2017-05-30 11:02:49', '2017-06-15 12:03:33', NULL),
(3, 'National', '0701', '', '2', '2', '2017-05-30 11:06:59', '2017-05-30 11:06:59', NULL),
(4, 'Jos', '0902', '', '2', '2', '2017-06-14 17:04:28', '2017-06-14 17:04:59', '2017-06-14 17:04:59'),
(5, 'National', '0708', '', '2', '2', '2017-06-15 11:59:48', '2017-06-15 11:59:48', NULL),
(6, 'National', '0802', '', '2', '2', '2017-06-15 12:01:09', '2017-06-15 12:01:09', NULL),
(7, 'National', '0808', '', '2', '2', '2017-06-15 12:02:20', '2017-06-15 12:02:20', NULL),
(8, 'National', '0902', '', '2', '2', '2017-06-15 12:04:35', '2017-06-15 12:04:35', NULL),
(9, 'National', '0700', '', '2', '2', '2017-06-15 12:05:13', '2017-06-15 12:05:13', NULL),
(10, 'National', '0800', '', '2', '2', '2017-06-15 12:06:38', '2017-06-15 12:06:38', NULL),
(11, 'National', '0809', '', '2', '2', '2017-06-15 12:07:17', '2017-06-15 12:07:17', NULL),
(12, 'National', '0817', '', '2', '2', '2017-06-15 12:07:56', '2017-06-15 12:07:56', NULL),
(13, 'National', '0818', '', '2', '2', '2017-06-15 12:08:12', '2017-06-15 12:08:12', NULL),
(14, 'National', '0909', '', '2', '2', '2017-06-15 12:09:01', '2017-06-15 12:09:01', NULL),
(15, 'National', '0907', '', '2', '2', '2017-06-15 12:09:25', '2017-09-05 14:32:08', NULL),
(16, 'National', '0705', '', '2', '2', '2017-06-15 12:16:40', '2017-06-15 12:16:40', NULL),
(17, 'National', '0805', '', '2', '2', '2017-06-15 12:17:23', '2017-06-15 12:17:23', NULL),
(18, 'National', '0807', '', '2', '2', '2017-06-15 12:17:44', '2017-06-15 12:17:44', NULL),
(19, 'National', '0815', '', '2', '2', '2017-06-15 12:18:29', '2017-06-15 12:18:29', NULL),
(20, 'National', '0905', '', '2', '2', '2017-06-15 12:19:09', '2017-06-15 12:19:09', NULL),
(21, 'National', '0811', '', '2', '2', '2017-06-15 12:19:40', '2017-06-15 12:19:40', NULL),
(22, 'National', '0801', '', '2', '2', '2017-06-15 12:20:46', '2017-06-15 12:20:46', NULL),
(23, 'National', '0804', '', '2', '2', '2017-06-15 12:22:11', '2017-06-15 12:22:11', NULL),
(24, 'National', '0703', '', '2', '2', '2017-06-15 12:22:45', '2017-06-15 12:22:45', NULL),
(25, 'National', '0706', '', '2', '2', '2017-06-15 12:23:11', '2017-06-15 12:23:11', NULL),
(26, 'National', '0803', '', '2', '2', '2017-06-15 12:23:29', '2017-06-15 12:23:29', NULL),
(27, 'National', '0806', '', '2', '2', '2017-06-15 12:26:18', '2017-06-15 12:26:18', NULL),
(28, 'National', '0813', '', '2', '2', '2017-06-15 12:26:51', '2017-06-15 12:26:51', NULL),
(29, 'National', '0816', '', '2', '2', '2017-06-15 12:28:48', '2017-06-15 12:28:48', NULL),
(30, 'National', '0814', '', '2', '2', '2017-06-15 12:29:49', '2017-06-15 12:29:49', NULL),
(31, 'National', '0903', '', '2', '2', '2017-06-15 12:30:30', '2017-06-15 12:30:30', NULL),
(32, 'National', '0810', '', '2', '2', '2017-06-15 12:30:49', '2017-06-15 12:30:49', NULL),
(33, 'National', '0702', '', '2', '2', '2017-06-15 12:32:07', '2017-06-15 12:32:07', NULL),
(34, 'National', '0702', '', '2', '2', '2017-06-15 12:33:13', '2017-09-05 10:48:36', '2017-09-05 10:48:36'),
(35, 'Abeokuta', '039', '', '2', '2', '2017-06-15 13:54:48', '2017-06-15 13:54:48', NULL),
(36, 'Abuja', '09', '', '2', '2', '2017-06-15 13:55:12', '2017-06-15 13:55:12', NULL),
(37, 'Kaduna', '062', '', '2', '2', '2017-06-15 13:55:37', '2017-06-15 13:55:37', NULL),
(38, 'Kano', '064', '', '2', '2', '2017-06-15 13:55:56', '2017-06-15 13:55:56', NULL),
(39, 'Port Harcourt', '084', '', '2', '2', '2017-06-15 13:56:24', '2017-06-15 13:56:24', NULL),
(40, 'Warri', '053', '', '2', '2', '2017-06-15 13:56:41', '2017-06-15 13:56:41', NULL),
(41, 'Jos', '073', '', '2', '2', '2017-06-15 13:57:06', '2017-06-15 13:57:06', NULL),
(42, 'Makurdi', '044', '', '2', '2', '2017-06-15 13:57:27', '2017-06-15 13:57:27', NULL),
(43, 'Dutse', '064', '', '2', '2', '2017-06-15 13:58:43', '2017-06-15 13:58:43', NULL),
(44, 'Calabar', '087', '', '2', '2', '2017-06-15 13:59:11', '2017-06-15 13:59:11', NULL),
(45, 'Maiduguri', '076', '', '2', '2', '2017-06-15 13:59:32', '2017-06-15 13:59:32', NULL),
(46, 'Ilorin', '031', '', '2', '2', '2017-06-15 13:59:52', '2017-06-15 13:59:52', NULL),
(47, 'Ibadan', '02', '', '2', '2', '2017-06-15 14:00:13', '2017-06-15 14:00:13', NULL),
(48, 'Yola', '075', '', '2', '2', '2017-06-15 14:00:34', '2017-06-15 14:00:34', NULL),
(49, 'Asaba', '056', '', '2', '2', '2017-06-15 14:01:00', '2017-06-15 14:01:00', NULL),
(50, 'Benin', '052', '', '2', '2', '2017-06-15 14:01:23', '2017-06-15 14:01:23', NULL),
(51, 'Ijebu-Ode', '037', '', '2', '2', '2017-06-15 14:01:53', '2017-06-15 14:01:53', NULL),
(52, 'Minna', '066', '', '2', '2', '2017-06-15 14:02:29', '2017-06-15 14:02:29', NULL),
(53, 'New Bussa', '033', '', '2', '2', '2017-06-15 14:02:30', '2017-08-30 11:57:52', NULL),
(54, 'Zaria', '069', '', '2', '2', '2017-06-15 14:03:16', '2017-06-15 14:03:16', NULL),
(55, 'Onitsha', '046', '', '2', '2', '2017-06-15 14:04:01', '2017-06-15 14:04:01', NULL),
(56, 'Aba', '082', '', '2', '2', '2017-06-15 14:05:14', '2017-06-15 14:05:14', NULL),
(57, 'Yenagoa', '089', '', '2', '2', '2017-06-15 14:05:42', '2017-06-15 14:05:42', NULL),
(58, 'Ile-Ife', '036', '', '2', '2', '2017-06-15 14:06:24', '2017-06-15 14:06:24', NULL),
(59, 'Oshogbo', '035', '', '2', '2', '2017-06-15 14:06:53', '2017-06-15 14:06:53', NULL),
(60, 'Abakaliki', '043', '', '2', '2', '2017-06-15 14:07:23', '2017-06-15 14:07:23', NULL),
(61, 'Ado-Ekiti', '030', '', '2', '2', '2017-06-15 14:08:33', '2017-06-15 14:08:33', NULL),
(62, 'Agbor', '055', '', '2', '2', '2017-06-15 14:09:02', '2017-06-15 14:09:02', NULL),
(63, 'Benin', '222', '', '2', '2', '2017-07-19 11:35:24', '2017-07-19 11:35:48', '2017-07-19 11:35:48'),
(64, 'National', '0908', '', '2', '2', '2017-08-29 14:15:37', '2017-08-29 14:15:37', NULL),
(65, 'Ahoada', '086', '', '2', '2', '2017-08-30 11:40:07', '2017-08-30 11:40:07', NULL),
(66, 'Azare', '071', '', '2', '2', '2017-08-30 11:40:51', '2017-08-30 11:40:51', NULL),
(67, 'Bauchi', '077', '', '2', '2', '2017-08-30 11:41:44', '2017-08-30 11:41:44', NULL),
(68, 'Akure', '034', '', '2', '2', '2017-08-30 11:42:29', '2017-08-30 11:42:29', NULL),
(69, 'Auchi', '057', '', '2', '2', '2017-08-30 11:43:10', '2017-08-30 11:43:10', NULL),
(70, 'Awka', '048', '', '2', '2', '2017-08-30 11:43:49', '2017-08-30 11:43:49', NULL),
(71, 'Birnin-Kebbi', '068', '', '2', '2', '2017-08-30 11:44:51', '2017-08-30 11:44:51', NULL),
(72, 'Damaturu', '074', '', '2', '2', '2017-08-30 11:45:41', '2017-08-30 11:45:41', NULL),
(73, 'Enugu', '042', '', '2', '2', '2017-08-30 11:50:13', '2017-08-30 11:50:13', NULL),
(74, 'Gombe', '072', '', '2', '2', '2017-08-30 11:54:02', '2017-08-30 11:54:02', NULL),
(75, 'Gusau', '063', '', '2', '2', '2017-08-30 11:54:50', '2017-08-30 11:54:50', NULL),
(76, 'Hadejia', '078', '', '2', '2', '2017-08-30 11:55:24', '2017-08-30 11:55:24', NULL),
(77, 'Jalingo', '079', '', '2', '2', '2017-08-30 12:00:03', '2017-08-30 12:00:03', NULL),
(78, 'Ikare', '050', '', '2', '2', '2017-08-30 12:00:31', '2017-08-30 12:00:31', NULL),
(79, 'Kafanchan', '061', '', '2', '2', '2017-08-30 12:01:03', '2017-08-30 12:01:03', NULL),
(80, 'Katsina', '065', '', '2', '2', '2017-08-30 12:16:16', '2017-08-30 12:16:16', NULL),
(81, 'Kotangora', '067', '', '2', '2', '2017-08-30 12:16:52', '2017-08-30 12:17:46', NULL),
(82, 'Lafia', '047', '', '2', '2', '2017-08-30 12:18:12', '2017-08-30 12:18:12', NULL),
(83, 'Lokoja', '058', '', '2', '2', '2017-08-30 12:19:07', '2017-08-30 12:19:07', NULL),
(84, 'Ogoja', '045', '', '2', '2', '2017-08-30 12:20:52', '2017-08-30 12:20:52', NULL),
(85, 'Okitipupa', '059', '', '2', '2', '2017-08-30 12:21:27', '2017-08-30 12:21:27', NULL),
(86, 'Owerri', '083', '', '2', '2', '2017-08-30 12:22:48', '2017-08-30 12:22:48', NULL),
(87, 'Owoh', '051', '', '2', '2', '2017-08-30 12:23:08', '2017-08-30 12:23:08', NULL),
(88, 'Oyo', '038', '', '2', '2', '2017-08-30 12:23:45', '2017-08-30 12:23:45', NULL),
(89, 'Pank Shin', '070', '', '2', '2', '2017-08-30 12:24:26', '2017-08-30 12:24:26', NULL),
(90, 'Sapele', '054', '', '2', '2', '2017-08-30 12:24:58', '2017-08-30 12:24:58', NULL),
(91, 'Sokoto', '060', '', '2', '2', '2017-08-30 12:26:13', '2017-08-30 12:26:13', NULL),
(92, 'Umuahia', '088', '', '2', '2', '2017-08-30 12:26:52', '2017-08-30 12:26:52', NULL),
(93, 'Uyo', '085', '', '2', '2', '2017-08-30 12:28:20', '2017-08-30 12:28:20', NULL),
(94, 'Wukari', '041', '', '2', '2', '2017-08-30 12:30:15', '2017-08-30 12:30:15', NULL),
(95, 'Katangora', '067', '', '2', '2', '2017-09-03 22:23:52', '2017-09-03 22:23:52', NULL),
(96, 'National', '0709', '', '2', '2', '2017-09-05 10:53:21', '2017-09-05 10:53:21', NULL),
(97, 'National', '090', '', '2', '2', '2017-09-05 10:55:02', '2017-09-05 10:55:02', NULL),
(98, 'National', '0707', '', '2', '2', '2017-09-05 13:01:05', '2017-09-05 13:01:05', NULL),
(99, 'National', '0819', '', '2', '2', '2017-09-05 13:03:02', '2017-09-05 13:03:02', NULL),
(100, 'National', '0704', '', '2', '2', '2017-09-05 13:05:53', '2017-09-05 13:05:53', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bills`
--

CREATE TABLE `bills` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `last_updated_by` int(11) DEFAULT NULL,
  `application_number_id` int(11) DEFAULT NULL,
  `application_short_id` int(11) DEFAULT NULL,
  `application_ispc_id` int(11) DEFAULT NULL,
  `sub_total` double NOT NULL DEFAULT '0',
  `grand_total` double NOT NULL DEFAULT '0',
  `bill_date` date DEFAULT NULL,
  `invoice_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `due_date` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Unpaid',
  `amount_paid` double NOT NULL DEFAULT '0',
  `payment_id` int(11) DEFAULT NULL,
  `paid` int(11) NOT NULL DEFAULT '0',
  `tracking_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_email_sent` date DEFAULT NULL,
  `read` int(11) NOT NULL DEFAULT '0',
  `frequency` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `bills`
--

INSERT INTO `bills` (`id`, `user_id`, `company_id`, `invoice_id`, `description`, `created_by`, `last_updated_by`, `application_number_id`, `application_short_id`, `application_ispc_id`, `sub_total`, `grand_total`, `bill_date`, `invoice_date`, `created_at`, `updated_at`, `deleted_at`, `due_date`, `status`, `amount_paid`, `payment_id`, `paid`, `tracking_no`, `last_email_sent`, `read`, `frequency`) VALUES
(1, 50, 2, 49, NULL, 2, 2, 17, NULL, NULL, 0, 0, '2017-08-31', '2017-07-25', '2017-07-26 13:52:07', '2017-07-26 13:52:07', NULL, '', 'Unpaid', 0, NULL, 0, NULL, NULL, 0, NULL),
(2, 50, 2, 50, NULL, 2, 2, 17, NULL, NULL, 0, 0, '2017-07-26', '2017-07-25', '2017-07-26 13:53:04', '2017-07-26 13:53:04', '2017-08-11 15:54:54', '', 'Unpaid', 0, NULL, 0, NULL, NULL, 0, NULL),
(3, 50, 2, 51, NULL, 2, 2, 17, NULL, NULL, 0, 0, '2017-07-26', '2017-07-25', '2017-07-26 13:57:58', '2017-07-26 13:57:58', '2017-08-11 15:54:54', '', 'Unpaid', 0, NULL, 0, NULL, NULL, 0, NULL),
(4, 50, 2, 52, NULL, 2, 2, 17, NULL, NULL, 0, 0, '2017-07-26', '2017-07-25', '2017-07-26 13:58:22', '2017-07-26 13:58:22', '2017-08-11 15:54:54', '', 'Unpaid', 0, NULL, 0, NULL, NULL, 0, NULL),
(5, 50, 2, 53, NULL, 2, 2, 17, NULL, NULL, 0, 0, '2017-07-26', '2017-07-25', '2017-07-26 13:58:50', '2017-07-26 13:58:50', '2017-08-11 15:54:54', '', 'Unpaid', 0, NULL, 0, NULL, NULL, 0, NULL),
(6, 50, 2, 54, NULL, 2, 2, 17, NULL, NULL, 0, 0, '2017-07-26', '2017-07-25', '2017-07-26 14:01:08', '2017-07-26 14:01:08', '2017-08-11 15:54:54', '', 'Unpaid', 0, NULL, 0, NULL, NULL, 0, NULL),
(7, 50, 2, 55, NULL, 2, 2, 17, NULL, NULL, 0, 0, '2017-07-26', '2017-07-25', '2017-07-26 14:01:40', '2017-07-26 14:01:40', '2017-08-11 15:54:54', '', 'Unpaid', 0, NULL, 0, NULL, NULL, 0, NULL),
(8, 50, 2, 56, NULL, 2, 2, 17, NULL, NULL, 0, 0, '2017-07-26', '2017-07-25', '2017-07-26 14:02:00', '2017-07-26 14:02:00', '2017-08-11 15:54:54', '2017-07-25', 'Unpaid', 0, NULL, 0, NULL, NULL, 0, NULL),
(9, 50, 2, 57, NULL, 2, 2, 17, NULL, NULL, 0, 0, '2017-07-26', '2017-07-25', '2017-07-26 14:02:50', '2017-07-26 14:02:50', '2017-08-11 15:54:54', '2017-07-25', 'Unpaid', 0, NULL, 0, NULL, NULL, 0, NULL),
(10, 50, 2, 58, NULL, 2, 2, 17, NULL, NULL, 0, 0, '2017-07-26', '2017-07-25', '2017-07-26 14:04:08', '2017-07-26 14:04:08', '2017-08-11 15:54:54', '2017-07-25', 'Unpaid', 0, NULL, 0, NULL, NULL, 0, NULL),
(11, 50, 2, 59, NULL, 2, 2, 17, NULL, NULL, 0, 0, '2017-07-26', '2017-07-25', '2017-07-26 14:04:28', '2017-07-26 14:04:28', '2017-08-11 15:54:54', '2017-07-25', 'Unpaid', 0, NULL, 0, NULL, NULL, 0, NULL),
(12, 50, 2, 60, NULL, 2, 2, 17, NULL, NULL, 50700050, 50700050, '2017-07-26', '2017-07-25', '2017-07-26 14:11:15', '2017-07-26 14:11:15', '2017-08-11 15:54:54', '2017-07-25', 'Unpaid', 0, NULL, 0, NULL, NULL, 0, NULL),
(13, 50, 2, 61, NULL, 2, 2, NULL, NULL, NULL, 700000, 700000, '2017-08-01', '2017-08-01', '2017-08-01 13:09:40', '2017-08-02 12:26:56', '2017-08-11 15:54:54', '', 'Unpaid', 700000, 1, 1, NULL, NULL, 0, NULL),
(14, 50, 2, 60, NULL, 2, 2, NULL, NULL, NULL, 0, 0, '2017-07-26', '2017-07-24', '2017-08-01 15:46:15', '2017-08-01 15:46:15', '2017-08-11 15:54:54', '', 'Unpaid', 0, NULL, 0, NULL, NULL, 0, NULL),
(15, 50, 2, 60, NULL, 2, 2, NULL, NULL, NULL, 63400030, 73080036, '2017-07-26', '2017-07-24', '2017-08-01 15:47:00', '2017-08-01 15:47:00', '2017-08-11 15:54:54', '', 'Unpaid', 0, NULL, 0, NULL, NULL, 0, NULL),
(16, 50, 2, 62, NULL, 2, 2, NULL, NULL, NULL, 700000, 735000, '2017-08-02', '2017-08-02', '2017-08-02 14:13:05', '2017-08-02 14:15:39', '2017-08-11 15:54:54', '', 'Unpaid', 735000, 5, 1, NULL, NULL, 0, NULL),
(17, 50, 2, 63, NULL, 2, 2, NULL, 25, NULL, 600000, 630000, '2017-08-02', '2017-08-02', '2017-08-02 15:21:17', '2017-08-02 15:21:17', '2017-08-11 15:54:54', '', 'Unpaid', 0, NULL, 0, NULL, NULL, 0, NULL),
(18, 50, 2, 64, NULL, 2, 2, NULL, 25, NULL, 600000, 630000, '2017-08-02', '2017-08-02', '2017-08-02 15:34:31', '2017-08-02 15:34:31', '2017-08-11 15:54:54', '', 'Unpaid', 0, NULL, 0, NULL, NULL, 0, NULL),
(19, 50, 2, 65, NULL, 2, 2, NULL, 25, NULL, 600000, 630000, '2017-08-02', '2017-08-02', '2017-08-02 15:35:14', '2017-08-02 15:35:14', '2017-08-11 15:54:54', '', 'Unpaid', 0, NULL, 0, NULL, NULL, 0, NULL),
(20, 50, 2, 66, NULL, 2, 2, NULL, 25, NULL, 600000, 630000, '2017-08-02', '2017-08-02', '2017-08-02 15:36:40', '2017-08-02 15:36:40', '2017-08-11 15:54:54', '', 'Unpaid', 0, NULL, 0, NULL, NULL, 0, NULL),
(21, 50, 2, 68, NULL, 2, 2, NULL, 25, NULL, 600000, 630000, '2017-08-02', '2017-08-02', '2017-08-02 15:47:48', '2017-08-02 15:47:48', '2017-08-11 15:54:54', '', 'Unpaid', 0, NULL, 0, 'NMS-BILL-0000000021', NULL, 0, NULL),
(22, 50, 2, 69, NULL, 2, 2, 34, NULL, NULL, 0, 0, '2017-08-03', '2017-07-31', '2017-08-02 16:50:36', '2017-08-02 16:50:36', '2017-08-11 15:54:54', '', 'Unpaid', 0, NULL, 0, 'NMS-BILL-0000000022', NULL, 0, NULL),
(23, 50, 2, 70, NULL, 2, 2, 34, NULL, NULL, 350000, 350000, '2017-08-03', '2017-07-02', '2017-08-02 16:57:13', '2017-08-02 16:59:59', '2017-08-11 15:54:54', '', 'Unpaid', 350000, 6, 1, 'NMS-BILL-0000000023', NULL, 0, NULL),
(24, 50, 2, 80, NULL, 2, 2, NULL, 30, NULL, 600000, 630000, '2017-08-10', '2017-08-10', '2017-08-10 15:17:55', '2017-08-11 14:14:51', '2017-08-11 15:54:54', '', 'Unpaid', 630000, 18, 1, 'NMS-BILL-0000000024', NULL, 0, NULL),
(25, 50, 2, 81, NULL, 2, 2, NULL, 30, NULL, 700000, 735000, '2017-08-10', '2017-08-10', '2017-08-10 15:34:57', '2017-08-10 15:34:57', '2017-08-11 15:54:54', '', 'Unpaid', 0, NULL, 0, 'NMS-BILL-0000000025', NULL, 0, NULL),
(26, 50, 2, 82, NULL, 2, 2, NULL, NULL, 27, 700000, 770000, '2017-08-12', '2017-08-11', '2017-08-11 11:16:51', '2017-08-11 11:16:51', '2017-08-11 15:54:54', '', 'Unpaid', 0, NULL, 0, 'NMS-BILL-0000000026', NULL, 0, NULL),
(27, 50, 2, 83, NULL, 2, 2, 31, NULL, NULL, 700000, 770000, '2017-08-11', '2017-08-11', '2017-08-11 12:35:06', '2017-08-11 12:35:06', '2017-08-11 15:54:54', '', 'Unpaid', 0, NULL, 0, 'NMS-BILL-0000000027', NULL, 0, NULL),
(28, 50, 2, 84, NULL, 2, 2, NULL, NULL, 26, 350000, 385000, '2017-08-11', '2017-08-11', '2017-08-11 12:47:26', '2017-08-11 12:47:26', '2017-08-11 15:54:54', '', 'Unpaid', 0, NULL, 0, 'NMS-BILL-0000000028', NULL, 0, NULL),
(29, 50, 2, 86, NULL, 2, 2, 71, NULL, NULL, 1050000, 1207500, '2017-08-12', '2017-08-11', '2017-08-11 15:08:00', '2017-09-27 14:42:01', NULL, '', 'Unpaid', 0, NULL, 0, 'NMS-BILL-0000000002', NULL, 1, NULL),
(30, 50, 2, 88, NULL, 2, 2, 72, NULL, NULL, 350000, 385000, '2017-08-30', '2017-08-11', '2017-08-11 15:28:22', '2017-09-26 14:18:19', NULL, '', 'Unpaid', 385000, 20, 1, 'NMS-BILL-0000000030', NULL, 1, NULL),
(31, 50, 2, 90, NULL, 2, 2, NULL, 50, NULL, 300000, 300000, NULL, NULL, '2017-08-11 15:42:52', '2017-08-11 15:50:23', NULL, '', 'Unpaid', 300000, 21, 1, 'NMS-BILL-0000000031', NULL, 0, NULL),
(32, 50, 2, 91, NULL, 2, 2, NULL, NULL, 28, 350000, 367500, '2017-08-11', '2017-08-11', '2017-08-11 15:53:12', '2017-08-11 15:53:12', NULL, '', 'Unpaid', 0, NULL, 0, 'NMS-BILL-0000000032', NULL, 0, NULL),
(33, 50, 2, 92, NULL, 2, 2, 73, NULL, NULL, 700000, 735000, '2017-08-12', '2017-08-11', '2017-08-11 15:58:47', '2017-08-11 16:23:08', NULL, '', 'Unpaid', 735000, 22, 1, 'NMS-BILL-0000000033', NULL, 0, NULL),
(34, 50, 2, 93, NULL, 2, 2, NULL, 49, NULL, 700000, 770000, '2017-09-08', '2017-08-11', '2017-08-11 16:59:53', '2017-09-05 13:51:53', NULL, '', 'Unpaid', 770000, 33, 1, 'NMS-BILL-0000000034', NULL, 0, NULL),
(35, 50, 2, 95, NULL, 2, 2, 74, NULL, NULL, 700000, 735000, '2017-08-15', '2017-08-15', '2017-08-15 12:37:58', '2017-08-15 12:40:55', NULL, '', 'Unpaid', 735000, 23, 1, 'NMS-BILL-0000000035', NULL, 0, NULL),
(36, 50, 2, 98, NULL, 2, 2, 75, NULL, NULL, 300000, 315000, '2017-08-29', '2017-08-28', '2017-08-28 15:32:53', '2017-08-29 11:31:19', NULL, '', 'Unpaid', 315000, 28, 1, 'NMS-BILL-0000000036', NULL, 0, NULL),
(37, 50, 2, 101, NULL, 2, 2, 77, NULL, NULL, 700050, 770055, '2017-09-22', '2017-08-29', '2017-08-29 13:25:39', '2017-09-26 14:17:57', NULL, '', 'Unpaid', 770055, 34, 1, 'NMS-BILL-0000000037', NULL, 1, NULL),
(38, 50, 2, 103, NULL, 2, 2, 78, NULL, NULL, 700000, 770000, '2017-09-28', '2017-08-29', '2017-08-29 14:34:08', '2017-09-26 14:28:03', NULL, '', 'Unpaid', 770000, 32, 1, 'NMS-BILL-0000000038', NULL, 1, NULL),
(39, 222, 117, 105, NULL, 221, 221, 81, NULL, NULL, 350000, 367500, '2017-09-30', '2017-09-14', '2017-09-14 13:49:14', '2017-09-14 13:56:53', NULL, '', 'Unpaid', 367500, 35, 1, 'NMS-BILL-0000000039', NULL, 0, NULL),
(40, 50, 2, 108, NULL, 2, 2, NULL, NULL, NULL, 700000, 735000, '2017-09-23', '2017-09-23', '2017-09-23 13:59:26', '2017-09-26 14:20:57', NULL, '', 'Unpaid', 0, NULL, 0, 'NMS-BILL-0000000040', NULL, 1, NULL),
(41, 50, 2, 114, NULL, 2, 2, 101, NULL, NULL, 700000, 735000, '2017-10-05', '2017-10-05', '2017-10-05 15:43:26', '2017-10-19 13:21:37', NULL, '', 'Unpaid', 735000, 39, 1, 'NMS-BILL-0000000041', NULL, 1, NULL),
(42, 50, 2, 120, NULL, 2, 2, 121, NULL, NULL, 700000, 735000, '2017-10-17', '2017-10-17', '2017-10-17 12:14:03', '2017-10-17 12:14:03', NULL, '', 'Unpaid', 0, NULL, 0, 'NMS-BILL-0000000042', NULL, 0, NULL),
(43, 50, 2, 128, NULL, 2, 2, NULL, 84, NULL, 50000, 55000, '2018-01-29', '2018-01-28', '2018-01-28 14:03:04', '2018-01-28 14:03:05', NULL, '2018-02-01', 'Unpaid', 0, NULL, 0, 'NMS-BILL-0000000043', NULL, 0, 30),
(44, 50, 2, 129, NULL, 2, 2, NULL, NULL, 41, 50000, 55000, '2018-01-29', '2018-01-28', '2018-01-28 14:52:43', '2018-01-28 14:52:43', NULL, '2018-01-29', 'Unpaid', 0, NULL, 0, 'NMS-BILL-0000000044', NULL, 0, 30),
(45, 50, 2, 130, NULL, 2, 2, NULL, NULL, NULL, 50000, 50000, '2018-01-28', '2018-01-28', '2018-01-28 19:40:54', '2018-01-28 19:40:55', NULL, '2018-01-28', 'Unpaid', 0, NULL, 0, 'NMS-BILL-0000000045', NULL, 0, 0),
(46, 50, 2, 131, NULL, 2, 2, NULL, NULL, NULL, 50000, 50000, '2018-01-28', '2018-01-28', '2018-01-28 19:46:47', '2018-01-28 19:46:48', NULL, '2018-01-28', 'Unpaid', 0, NULL, 0, 'NMS-BILL-0000000046', NULL, 0, 0),
(47, 50, 2, 132, NULL, 2, 2, NULL, NULL, NULL, 50000, 50000, '2018-01-28', '2018-01-28', '2018-01-28 19:47:29', '2018-01-29 13:23:23', NULL, '2018-01-28', 'Unpaid', 50000, 49, 1, 'NMS-BILL-0000000047', NULL, 0, 0),
(48, 76, 8, 146, NULL, 2, 2, NULL, NULL, NULL, 700000, 700000, '2018-01-28', '2018-01-28', '2018-01-28 20:22:41', '2018-01-28 20:22:41', NULL, '2018-01-28', 'Unpaid', 0, NULL, 0, 'NMS-BILL-0000000048', NULL, 0, 0),
(49, 76, 8, 147, NULL, 2, 2, NULL, NULL, NULL, 700000, 700000, '2018-01-28', '2018-01-28', '2018-01-28 20:23:56', '2018-01-28 20:23:56', NULL, '2018-01-28', 'Unpaid', 0, NULL, 0, 'NMS-BILL-0000000049', NULL, 0, 0),
(50, 76, 8, 148, NULL, 2, 2, NULL, NULL, NULL, 700000, 700000, '2018-01-28', '2018-01-28', '2018-01-28 20:24:22', '2018-01-28 20:24:23', NULL, '2018-01-28', 'Unpaid', 0, NULL, 0, 'NMS-BILL-0000000050', NULL, 0, 0),
(51, 77, 9, 149, NULL, 2, 2, NULL, NULL, NULL, 700000, 700000, '2018-01-28', '2018-01-28', '2018-01-28 20:25:14', '2018-01-28 20:25:15', NULL, '2018-01-28', 'Unpaid', 0, NULL, 0, 'NMS-BILL-0000000051', NULL, 0, 0),
(52, 50, 2, 150, NULL, 2, 2, NULL, 75, NULL, 1050000, 1260000, '2018-07-05', '2018-07-05', '2018-07-05 19:22:13', '2018-07-05 19:22:15', NULL, '2018-07-05', 'Unpaid', 0, NULL, 0, 'NMS-BILL-0000000052', NULL, 0, 0),
(53, 1, 1, 1, NULL, 2, 2, NULL, NULL, NULL, 450000, 472500, '2018-12-05', '2018-11-28', '2018-11-28 13:33:15', '2018-11-28 13:33:18', NULL, '', 'Unpaid', 0, NULL, 0, 'NMS-BILL-0000000053', NULL, 0, NULL),
(54, 1, 1, 2, NULL, 2, 2, NULL, NULL, NULL, 450000, 472500, '2018-12-05', '2018-11-28', '2018-11-28 13:34:43', '2018-11-28 13:34:44', NULL, '', 'Unpaid', 0, NULL, 0, 'NMS-BILL-0000000054', NULL, 0, NULL),
(55, 1, 1, 3, NULL, 2, 2, NULL, NULL, NULL, 450000, 472500, '2018-12-05', '2018-11-28', '2018-11-28 13:35:25', '2018-11-28 13:35:25', NULL, '', 'Unpaid', 0, NULL, 0, 'NMS-BILL-0000000055', NULL, 0, NULL),
(56, 1, 1, 4, NULL, 2, 2, NULL, NULL, NULL, 450000, 472500, '2018-12-05', '2018-11-28', '2018-11-28 13:56:46', '2018-11-28 13:56:48', NULL, '', 'Unpaid', 0, NULL, 0, 'NMS-BILL-0000000056', NULL, 0, NULL),
(57, 1, 1, 5, NULL, 2, 2, NULL, NULL, NULL, 450000, 472500, '2018-12-05', '2018-11-28', '2018-11-28 13:57:54', '2018-11-28 13:57:55', NULL, '', 'Unpaid', 0, NULL, 0, 'NMS-BILL-0000000057', NULL, 0, NULL),
(58, 1, 1, 6, NULL, 2, 2, NULL, NULL, NULL, 800000, 840000, '2018-12-10', '2018-12-03', '2018-12-03 13:58:28', '2018-12-03 13:58:29', NULL, '', 'Unpaid', 0, NULL, 0, 'NMS-BILL-0000000058', NULL, 0, NULL),
(59, 1, 1, 7, NULL, 2, 2, 147, NULL, NULL, 700000, 700000, '2019-01-18', '2018-12-14', '2018-12-14 16:41:01', '2018-12-14 16:41:03', NULL, '', 'Unpaid', 0, NULL, 0, 'NMS-BILL-0000000059', NULL, 0, NULL),
(60, 1, 1, 8, NULL, 2, 2, NULL, NULL, NULL, 500000, 500000, '2018-12-20', '2018-12-18', '2018-12-18 09:30:54', '2018-12-18 09:30:56', NULL, '', 'Unpaid', 0, NULL, 0, 'NMS-BILL-0000000060', NULL, 0, NULL),
(61, 1, 1, 9, NULL, 2, 2, NULL, NULL, NULL, 350000, 350000, '2018-12-20', '2018-12-18', '2018-12-18 09:47:18', '2018-12-18 09:47:22', NULL, '', 'Unpaid', 0, NULL, 0, 'NMS-BILL-0000000061', NULL, 0, NULL),
(62, 1, 1, 10, NULL, 2, 2, NULL, NULL, NULL, 800000, 840000, '2019-02-27', '2019-02-25', '2019-02-25 08:27:48', '2019-02-25 08:27:48', NULL, '', 'Unpaid', 0, NULL, 0, 'NMS-BILL-0000000062', NULL, 0, NULL),
(63, 1, 1, 11, NULL, 2, 2, NULL, NULL, NULL, 800000, 880000, '2019-02-26', '2019-02-25', '2019-02-25 10:47:14', '2019-02-25 10:47:14', NULL, '', 'Unpaid', 0, NULL, 0, 'NMS-BILL-0000000063', NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bill_fees`
--

CREATE TABLE `bill_fees` (
  `id` int(10) UNSIGNED NOT NULL,
  `bill_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `fee_id` int(11) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `last_updated_by` int(11) DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fee_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fee_amount` double NOT NULL DEFAULT '0',
  `qty` int(11) NOT NULL DEFAULT '0',
  `line_total` double NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `bill_fees`
--

INSERT INTO `bill_fees` (`id`, `bill_id`, `user_id`, `company_id`, `invoice_id`, `fee_id`, `created_by`, `last_updated_by`, `description`, `fee_name`, `fee_amount`, `qty`, `line_total`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 0, 50, 2, 52, 10, NULL, NULL, 'Acess Charges', 'Access Code Charge', 700000, 1, 700000, '2017-07-26 13:58:22', '2017-07-26 13:58:22', NULL),
(2, 0, 50, 2, 52, 11, NULL, NULL, 'Line subscription', 'Subscriber Lines', 50, 1000000, 50000000, '2017-07-26 13:58:22', '2017-07-26 13:58:22', NULL),
(3, 0, 50, 2, 59, 10, NULL, NULL, 'Acess Charges', 'Access Code Charge', 700000, 1, 700000, '2017-07-26 14:04:28', '2017-07-26 14:04:28', NULL),
(4, 0, 50, 2, 59, 11, NULL, NULL, 'Line subscription', 'Subscriber Lines', 50, 1000000, 50000000, '2017-07-26 14:04:28', '2017-07-26 14:04:28', NULL),
(5, 0, 50, 2, 60, 10, NULL, NULL, 'Acess Charges', 'Access Code Charge', 700000, 1, 700000, '2017-07-26 14:11:15', '2017-07-26 14:11:15', NULL),
(6, 0, 50, 2, 60, 11, NULL, NULL, 'Line subscription', 'Subscriber Lines', 50, 1000000, 50000000, '2017-07-26 14:11:15', '2017-07-26 14:11:15', NULL),
(7, 0, 50, 2, 61, 10, NULL, NULL, NULL, 'Access Code Charge', 700000, 1, 700000, '2017-08-01 13:09:40', '2017-08-01 13:09:40', NULL),
(8, 0, 50, 2, 60, 5, NULL, NULL, 'Acess Charges', 'Licensing Fees', 3400000, 1, 3400000, '2017-08-01 15:47:00', '2017-08-01 15:47:00', NULL),
(9, 0, 50, 2, 60, 6, NULL, NULL, 'Line subscription', 'Number', 30, 1000000, 30000000, '2017-08-01 15:47:00', '2017-08-01 15:47:00', NULL),
(10, 0, 50, 2, 62, 2, NULL, NULL, NULL, 'Inception Fee', 350000, 1, 350000, '2017-08-02 14:13:05', '2017-08-02 14:13:05', NULL),
(11, 0, 50, 2, 63, 13, NULL, NULL, NULL, 'Logging Fees', 300000, 1, 300000, '2017-08-02 15:21:17', '2017-08-02 15:21:17', NULL),
(12, 0, 50, 2, 64, 13, NULL, NULL, NULL, 'Logging Fees', 300000, 1, 300000, '2017-08-02 15:34:31', '2017-08-02 15:34:31', NULL),
(13, 0, 50, 2, 65, 13, NULL, NULL, NULL, 'Logging Fees', 300000, 1, 300000, '2017-08-02 15:35:14', '2017-08-02 15:35:14', NULL),
(14, 0, 50, 2, 66, 13, NULL, NULL, NULL, 'Logging Fees', 300000, 1, 300000, '2017-08-02 15:36:40', '2017-08-02 15:36:40', NULL),
(15, 0, 50, 2, 68, 13, NULL, NULL, NULL, 'Logging Fees', 300000, 1, 300000, '2017-08-02 15:47:48', '2017-08-02 15:47:48', NULL),
(16, 0, 50, 2, 69, 2, NULL, NULL, NULL, 'Inception Fee', 350000, 1, 350000, '2017-08-02 16:50:36', '2017-08-02 16:50:36', NULL),
(17, 0, 50, 2, 70, 2, NULL, NULL, NULL, 'Inception Fee', 350000, 1, 350000, '2017-08-02 16:57:13', '2017-08-02 16:57:13', NULL),
(18, 0, 50, 2, 80, 13, NULL, NULL, 'Logging', 'Logging Fees', 300000, 1, 300000, '2017-08-10 15:17:55', '2017-08-10 15:17:55', NULL),
(19, 0, 50, 2, 81, 2, NULL, NULL, NULL, 'Inception Fee', 350000, 1, 350000, '2017-08-10 15:34:57', '2017-08-10 15:34:57', NULL),
(20, 0, 50, 2, 82, 2, NULL, NULL, NULL, 'Inception Fee', 350000, 1, 350000, '2017-08-11 11:16:51', '2017-08-11 11:16:51', NULL),
(21, 0, 50, 2, 83, 2, NULL, NULL, NULL, 'Inception Fee', 350000, 1, 350000, '2017-08-11 12:35:06', '2017-08-11 12:35:06', NULL),
(22, 0, 50, 2, 84, 2, NULL, NULL, NULL, 'Inception Fee', 350000, 1, 350000, '2017-08-11 12:47:26', '2017-08-11 12:47:26', NULL),
(23, 0, 50, 2, 86, 10, NULL, NULL, NULL, 'Access Code Charge', 700000, 1, 700000, '2017-08-11 15:08:00', '2017-08-11 15:08:00', NULL),
(24, 0, 50, 2, 86, 2, NULL, NULL, NULL, 'Inception Fee', 350000, 1, 350000, '2017-08-11 15:08:00', '2017-08-11 15:08:00', NULL),
(25, 0, 50, 2, 88, 2, NULL, NULL, NULL, 'Inception Fee', 350000, 1, 350000, '2017-08-11 15:28:22', '2017-08-11 15:28:22', NULL),
(26, 0, 50, 2, 90, 13, NULL, NULL, NULL, 'Logging Fees', 300000, 1, 300000, '2017-08-11 15:42:52', '2017-08-11 15:42:52', NULL),
(27, 0, 50, 2, 91, 2, NULL, NULL, NULL, 'Inception Fee', 350000, 1, 350000, '2017-08-11 15:53:12', '2017-08-11 15:53:12', NULL),
(28, 0, 50, 2, 92, 10, NULL, NULL, NULL, 'Access Code Charge', 700000, 1, 700000, '2017-08-11 15:58:47', '2017-08-11 15:58:47', NULL),
(29, 0, 50, 2, 93, 2, NULL, NULL, NULL, 'Inception Fee', 350000, 2, 700000, '2017-08-11 16:59:53', '2017-08-11 16:59:53', NULL),
(30, 0, 50, 2, 95, 10, NULL, NULL, NULL, 'Access Code Charge', 700000, 1, 700000, '2017-08-15 12:37:58', '2017-08-15 12:37:58', NULL),
(31, 0, 50, 2, 98, 13, NULL, NULL, NULL, 'Logging Fees', 300000, 1, 300000, '2017-08-28 15:32:53', '2017-08-28 15:32:53', NULL),
(32, 37, 50, 2, 101, 10, NULL, NULL, NULL, 'Access Code Charge', 700000, 1, 700000, '2017-08-29 13:25:39', '2017-08-29 13:25:39', NULL),
(33, 37, 50, 2, 101, 11, NULL, NULL, NULL, 'Subscriber Lines', 50, 1, 50, '2017-08-29 13:25:39', '2017-08-29 13:25:39', NULL),
(34, 38, 50, 2, 103, 10, NULL, NULL, NULL, 'Access Code Charge', 700000, 1, 700000, '2017-08-29 14:34:08', '2017-08-29 14:34:08', NULL),
(35, 39, 222, 117, 105, 13, NULL, NULL, NULL, 'Logging Fees', 300000, 1, 300000, '2017-09-14 13:49:14', '2017-09-14 13:49:14', NULL),
(36, 39, 222, 117, 105, 14, NULL, NULL, NULL, 'Consultancy fee', 50000, 1, 50000, '2017-09-14 13:49:14', '2017-09-14 13:49:14', NULL),
(37, 40, 50, 2, 108, 10, NULL, NULL, NULL, 'Access Code Charge', 700000, 1, 700000, '2017-09-23 13:59:26', '2017-09-23 13:59:26', NULL),
(38, 41, 50, 2, 114, 10, NULL, NULL, NULL, 'Access Code Charge', 700000, 1, 700000, '2017-10-05 15:43:26', '2017-10-05 15:43:26', NULL),
(39, 42, 50, 2, 120, 10, NULL, NULL, NULL, 'Access Code Charge', 700000, 1, 700000, '2017-10-17 12:14:03', '2017-10-17 12:14:03', NULL),
(40, 43, 50, 2, 128, 14, NULL, NULL, NULL, 'Consultancy fee', 50000, 1, 50000, '2018-01-28 14:03:04', '2018-01-28 14:03:04', NULL),
(41, 44, 50, 2, 129, 14, NULL, NULL, NULL, 'Consultancy fee', 50000, 1, 50000, '2018-01-28 14:52:43', '2018-01-28 14:52:43', NULL),
(42, 45, 50, 2, 130, 14, NULL, NULL, NULL, 'Consultancy fee', 50000, 1, 50000, '2018-01-28 19:40:55', '2018-01-28 19:40:55', NULL),
(43, 46, 50, 2, 131, 14, NULL, NULL, NULL, 'Consultancy fee', 50000, 1, 50000, '2018-01-28 19:46:47', '2018-01-28 19:46:47', NULL),
(44, 47, 50, 2, 132, 14, NULL, NULL, NULL, 'Consultancy fee', 50000, 1, 50000, '2018-01-28 19:47:30', '2018-01-28 19:47:30', NULL),
(45, 48, 76, 8, 146, 10, NULL, NULL, NULL, 'Access Code Charge', 700000, 1, 700000, '2018-01-28 20:22:41', '2018-01-28 20:22:41', NULL),
(46, 49, 76, 8, 147, 10, NULL, NULL, NULL, 'Access Code Charge', 700000, 1, 700000, '2018-01-28 20:23:56', '2018-01-28 20:23:56', NULL),
(47, 50, 76, 8, 148, 10, NULL, NULL, NULL, 'Access Code Charge', 700000, 1, 700000, '2018-01-28 20:24:22', '2018-01-28 20:24:22', NULL),
(48, 51, 77, 9, 149, 10, NULL, NULL, NULL, 'Access Code Charge', 700000, 1, 700000, '2018-01-28 20:25:14', '2018-01-28 20:25:14', NULL),
(49, 52, 50, 2, 150, 10, NULL, NULL, NULL, 'Access Code Charge', 700000, 1, 700000, '2018-07-05 19:22:14', '2018-07-05 19:22:14', NULL),
(50, 52, 50, 2, 150, 2, NULL, NULL, NULL, 'Inception Fee', 350000, 1, 350000, '2018-07-05 19:22:14', '2018-07-05 19:22:14', NULL),
(51, 53, 1, 1, 1, 14, NULL, NULL, NULL, 'Consultancy fee', 50000, 3, 150000, '2018-11-28 13:33:16', '2018-11-28 13:33:16', NULL),
(52, 53, 1, 1, 1, 13, NULL, NULL, NULL, 'Logging Fees', 300000, 1, 300000, '2018-11-28 13:33:17', '2018-11-28 13:33:17', NULL),
(53, 54, 1, 1, 2, 14, NULL, NULL, NULL, 'Consultancy fee', 50000, 3, 150000, '2018-11-28 13:34:43', '2018-11-28 13:34:43', NULL),
(54, 54, 1, 1, 2, 13, NULL, NULL, NULL, 'Logging Fees', 300000, 1, 300000, '2018-11-28 13:34:44', '2018-11-28 13:34:44', NULL),
(55, 55, 1, 1, 3, 14, NULL, NULL, NULL, 'Consultancy fee', 50000, 3, 150000, '2018-11-28 13:35:25', '2018-11-28 13:35:25', NULL),
(56, 55, 1, 1, 3, 13, NULL, NULL, NULL, 'Logging Fees', 300000, 1, 300000, '2018-11-28 13:35:25', '2018-11-28 13:35:25', NULL),
(57, 56, 1, 1, 4, 14, NULL, NULL, NULL, 'Consultancy fee', 50000, 3, 150000, '2018-11-28 13:56:47', '2018-11-28 13:56:47', NULL),
(58, 56, 1, 1, 4, 13, NULL, NULL, NULL, 'Logging Fees', 300000, 1, 300000, '2018-11-28 13:56:47', '2018-11-28 13:56:47', NULL),
(59, 57, 1, 1, 5, 14, NULL, NULL, NULL, 'Consultancy fee', 50000, 3, 150000, '2018-11-28 13:57:54', '2018-11-28 13:57:54', NULL),
(60, 57, 1, 1, 5, 13, NULL, NULL, NULL, 'Logging Fees', 300000, 1, 300000, '2018-11-28 13:57:54', '2018-11-28 13:57:54', NULL),
(61, 58, 1, 1, 6, 10, NULL, NULL, NULL, 'Access Code Charge', 700000, 1, 700000, '2018-12-03 13:58:28', '2018-12-03 13:58:28', NULL),
(62, 58, 1, 1, 6, 14, NULL, NULL, NULL, 'Consultancy fee', 50000, 2, 100000, '2018-12-03 13:58:29', '2018-12-03 13:58:29', NULL),
(63, 59, 1, 1, 7, 10, NULL, NULL, NULL, 'Access Code Charge', 700000, 1, 700000, '2018-12-14 16:41:02', '2018-12-14 16:41:02', NULL),
(64, 60, 1, 1, 8, 14, NULL, NULL, NULL, 'Consultancy fee', 50000, 10, 500000, '2018-12-18 09:30:55', '2018-12-18 09:30:55', NULL),
(65, 61, 1, 1, 9, 2, NULL, NULL, NULL, 'Inception Fee', 350000, 1, 350000, '2018-12-18 09:47:20', '2018-12-18 09:47:20', NULL),
(66, 62, 1, 1, 10, 10, NULL, NULL, NULL, 'Access Code Charge', 700000, 1, 700000, '2019-02-25 08:27:48', '2019-02-25 08:27:48', NULL),
(67, 62, 1, 1, 10, 14, NULL, NULL, NULL, 'Consultancy fee', 50000, 2, 100000, '2019-02-25 08:27:48', '2019-02-25 08:27:48', NULL),
(68, 63, 1, 1, 11, 10, NULL, NULL, NULL, 'Access Code Charge', 700000, 1, 700000, '2019-02-25 10:47:14', '2019-02-25 10:47:14', NULL),
(69, 63, 1, 1, 11, 14, NULL, NULL, NULL, 'Consultancy fee', 50000, 2, 100000, '2019-02-25 10:47:14', '2019-02-25 10:47:14', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bill_taxes`
--

CREATE TABLE `bill_taxes` (
  `id` int(10) UNSIGNED NOT NULL,
  `bill_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `last_updated_by` int(11) DEFAULT NULL,
  `tax_id` int(11) NOT NULL,
  `tax_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tax_value` double NOT NULL DEFAULT '0',
  `actual_amount` double NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `bill_taxes`
--

INSERT INTO `bill_taxes` (`id`, `bill_id`, `user_id`, `company_id`, `invoice_id`, `created_by`, `last_updated_by`, `tax_id`, `tax_name`, `tax_value`, `actual_amount`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 0, 50, 2, 60, NULL, NULL, 3, 'Admin Fee', 5, 2535002.5, '2017-07-26 14:11:15', '2017-07-26 14:11:15', NULL),
(2, 0, 50, 2, 60, NULL, NULL, 2, 'Service Charges', 10, 3340003, '2017-08-01 15:47:00', '2017-08-01 15:47:00', NULL),
(3, 0, 50, 2, 60, NULL, NULL, 2, 'Service Charges', 10, 6340003, '2017-08-01 15:47:00', '2017-08-01 15:47:00', NULL),
(4, 0, 50, 2, 62, NULL, NULL, 3, 'Admin Fee', 5, 35000, '2017-08-02 14:13:05', '2017-08-02 14:13:05', NULL),
(5, 0, 50, 2, 63, NULL, NULL, 3, 'Admin Fee', 5, 30000, '2017-08-02 15:21:17', '2017-08-02 15:21:17', NULL),
(6, 0, 50, 2, 64, NULL, NULL, 3, 'Admin Fee', 5, 30000, '2017-08-02 15:34:31', '2017-08-02 15:34:31', NULL),
(7, 0, 50, 2, 65, NULL, NULL, 3, 'Admin Fee', 5, 30000, '2017-08-02 15:35:14', '2017-08-02 15:35:14', NULL),
(8, 0, 50, 2, 66, NULL, NULL, 3, 'Admin Fee', 5, 30000, '2017-08-02 15:36:40', '2017-08-02 15:36:40', NULL),
(9, 0, 50, 2, 68, NULL, NULL, 3, 'Admin Fee', 5, 30000, '2017-08-02 15:47:48', '2017-08-02 15:47:48', NULL),
(10, 0, 50, 2, 80, NULL, NULL, 3, 'Admin Fee', 5, 30000, '2017-08-10 15:17:55', '2017-08-10 15:17:55', NULL),
(11, 0, 50, 2, 81, NULL, NULL, 3, 'Admin Fee', 5, 35000, '2017-08-10 15:34:57', '2017-08-10 15:34:57', NULL),
(12, 0, 50, 2, 82, NULL, NULL, 2, 'Service Charges', 10, 70000, '2017-08-11 11:16:51', '2017-08-11 11:16:51', NULL),
(13, 0, 50, 2, 83, NULL, NULL, 2, 'Service Charges', 10, 70000, '2017-08-11 12:35:06', '2017-08-11 12:35:06', NULL),
(14, 0, 50, 2, 84, NULL, NULL, 2, 'Service Charges', 10, 35000, '2017-08-11 12:47:26', '2017-08-11 12:47:26', NULL),
(15, 0, 50, 2, 86, NULL, NULL, 2, 'Service Charges', 10, 105000, '2017-08-11 15:08:00', '2017-08-11 15:08:00', NULL),
(16, 0, 50, 2, 86, NULL, NULL, 3, 'Admin Fee', 5, 52500, '2017-08-11 15:08:00', '2017-08-11 15:08:00', NULL),
(17, 0, 50, 2, 88, NULL, NULL, 2, 'Service Charges', 10, 35000, '2017-08-11 15:28:22', '2017-08-11 15:28:22', NULL),
(18, 0, 50, 2, 91, NULL, NULL, 3, 'Admin Fee', 5, 17500, '2017-08-11 15:53:12', '2017-08-11 15:53:12', NULL),
(19, 0, 50, 2, 92, NULL, NULL, 3, 'Admin Fee', 5, 35000, '2017-08-11 15:58:47', '2017-08-11 15:58:47', NULL),
(20, 0, 50, 2, 93, NULL, NULL, 2, 'Service Charges', 10, 70000, '2017-08-11 16:59:53', '2017-08-11 16:59:53', NULL),
(21, 0, 50, 2, 95, NULL, NULL, 3, 'Admin Fee', 5, 35000, '2017-08-15 12:37:58', '2017-08-15 12:37:58', NULL),
(22, 0, 50, 2, 98, NULL, NULL, 3, 'Admin Fee', 5, 15000, '2017-08-28 15:32:53', '2017-08-28 15:32:53', NULL),
(23, 37, 50, 2, 101, NULL, NULL, 2, 'Service Charges', 10, 70005, '2017-08-29 13:25:39', '2017-08-29 13:25:39', NULL),
(24, 38, 50, 2, 103, NULL, NULL, 2, 'Service Charges', 10, 70000, '2017-08-29 14:34:08', '2017-08-29 14:34:08', NULL),
(25, 39, 222, 117, 105, NULL, NULL, 3, 'Admin Fee', 5, 17500, '2017-09-14 13:49:14', '2017-09-14 13:49:14', NULL),
(26, 40, 50, 2, 108, NULL, NULL, 3, 'Admin Fee', 5, 35000, '2017-09-23 13:59:26', '2017-09-23 13:59:26', NULL),
(27, 41, 50, 2, 114, NULL, NULL, 3, 'Admin Fee', 5, 35000, '2017-10-05 15:43:26', '2017-10-05 15:43:26', NULL),
(28, 42, 50, 2, 120, NULL, NULL, 3, 'Admin Fee', 5, 35000, '2017-10-17 12:14:03', '2017-10-17 12:14:03', NULL),
(29, 43, 50, 2, 128, NULL, NULL, 5, 'VAT', 10, 5000, '2018-01-28 14:03:05', '2018-01-28 14:03:05', NULL),
(30, 44, 50, 2, 129, NULL, NULL, 2, 'Service Charges', 10, 5000, '2018-01-28 14:52:43', '2018-01-28 14:52:43', NULL),
(31, 52, 50, 2, 150, NULL, NULL, 5, 'VAT', 10, 105000, '2018-07-05 19:22:14', '2018-07-05 19:22:14', NULL),
(32, 52, 50, 2, 150, NULL, NULL, 2, 'Service Charges', 10, 105000, '2018-07-05 19:22:14', '2018-07-05 19:22:14', NULL),
(33, 53, 1, 1, 1, NULL, NULL, 3, 'Admin Fee', 5, 22500, '2018-11-28 13:33:18', '2018-11-28 13:33:18', NULL),
(34, 54, 1, 1, 2, NULL, NULL, 3, 'Admin Fee', 5, 22500, '2018-11-28 13:34:44', '2018-11-28 13:34:44', NULL),
(35, 55, 1, 1, 3, NULL, NULL, 3, 'Admin Fee', 5, 22500, '2018-11-28 13:35:25', '2018-11-28 13:35:25', NULL),
(36, 56, 1, 1, 4, NULL, NULL, 3, 'Admin Fee', 5, 22500, '2018-11-28 13:56:48', '2018-11-28 13:56:48', NULL),
(37, 57, 1, 1, 5, NULL, NULL, 3, 'Admin Fee', 5, 22500, '2018-11-28 13:57:55', '2018-11-28 13:57:55', NULL),
(38, 58, 1, 1, 6, NULL, NULL, 3, 'Admin Fee', 5, 40000, '2018-12-03 13:58:29', '2018-12-03 13:58:29', NULL),
(39, 62, 1, 1, 10, NULL, NULL, 3, 'Admin Fee', 5, 40000, '2019-02-25 08:27:48', '2019-02-25 08:27:48', NULL),
(40, 63, 1, 1, 11, NULL, NULL, 2, 'Service Charges', 10, 80000, '2019-02-25 10:47:14', '2019-02-25 10:47:14', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `checklists`
--

CREATE TABLE `checklists` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `approval_stage_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `checklists`
--

INSERT INTO `checklists` (`id`, `name`, `approval_stage_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Forms well filled', 1, '2017-07-19 02:00:00', '2017-08-16 16:45:25', '2017-08-16 16:45:25'),
(2, 'Verify Type Approval', 2, '2017-07-19 02:00:00', '2017-08-16 16:47:32', '2017-08-16 16:47:32'),
(3, 'Bill Payment', 3, '2017-07-19 02:00:00', '2017-07-19 02:00:00', NULL),
(4, 'Information Screening', 9, '2017-07-19 02:00:00', '2017-08-16 16:38:23', NULL),
(5, 'Complete Documentation', 1, '2017-07-19 02:00:00', '2017-08-16 16:54:00', NULL),
(6, 'New', 7, '2017-07-21 17:43:04', '2017-07-21 17:43:04', NULL),
(7, 'Proof-read application', 1, '2017-08-08 02:00:00', '2017-08-16 16:45:25', '2017-08-16 16:45:25'),
(8, 'newPrep', 1, '2017-08-16 16:53:25', '2017-08-16 16:54:00', '2017-08-16 16:54:00'),
(9, 'All documents valid', 0, '2017-08-16 17:09:26', '2017-08-16 17:09:26', NULL),
(10, 'Valid documents', 0, '2017-08-16 17:10:27', '2017-08-16 17:10:27', NULL),
(11, 'Recommended', 0, '2017-08-16 17:11:39', '2017-08-16 17:11:39', NULL),
(12, 'Valid files', 0, '2017-08-16 17:11:59', '2017-08-16 17:11:59', NULL),
(13, 'Vetted docs', 0, '2017-08-16 17:12:20', '2017-08-16 17:12:20', NULL),
(14, 'Proper vetting done', 0, '2017-08-16 17:12:56', '2017-08-16 17:12:56', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `license_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `mailing_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fax_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `appContractorId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `appTradeName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `appRcNumber` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `appTinNumber` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `appDateOfRegistration` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `appNccId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `appHeadOfficeAddressStreet` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `appCompanyName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `appPhoneNumber` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `appFax` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `appWebsite` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `appHeadOfficeAddressCity` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `appHeadOfficeAddressZip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `appHeadOfficeAddressPobox` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `appHeadOfficeAddressPmb` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `appCompanyContactPhone1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `appCompanyContactPhone2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `appCompanyContactAlternativeEmail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `appCompanyContactEmail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `appBarred` tinyint(1) DEFAULT NULL,
  `appOldContractorUsername` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `appCertificateNumber` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `appCompanyEmailVerified` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `appRegistrationNumber` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `appThirdPartyBusinessNumber` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `appDateModified` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `appModifiedBy` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `appDateCreated` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `appCreatedBy` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `user_id`, `license_id`, `name`, `address`, `city`, `created_at`, `updated_at`, `deleted_at`, `mailing_address`, `fax_no`, `company_name`, `appContractorId`, `appTradeName`, `appRcNumber`, `appTinNumber`, `appDateOfRegistration`, `appNccId`, `appHeadOfficeAddressStreet`, `appCompanyName`, `appPhoneNumber`, `appFax`, `appWebsite`, `appHeadOfficeAddressCity`, `appHeadOfficeAddressZip`, `appHeadOfficeAddressPobox`, `appHeadOfficeAddressPmb`, `appCompanyContactPhone1`, `appCompanyContactPhone2`, `appCompanyContactAlternativeEmail`, `appCompanyContactEmail`, `appBarred`, `appOldContractorUsername`, `appCertificateNumber`, `appCompanyEmailVerified`, `appRegistrationNumber`, `appThirdPartyBusinessNumber`, `appDateModified`, `appModifiedBy`, `appDateCreated`, `appCreatedBy`) VALUES
(1, 1, 0, 'MOLCOM', 'Takems', 'Abuja', '2018-11-21 13:12:53', '2019-02-25 10:37:40', NULL, '755', NULL, 'MOLCOM', '9bb0a212-902a-456c-95d0-0c4f512e37e3', NULL, '8962110', '', '2008-11-06T00:00:00.000+0000', '000-0030', 'Takems', 'MOLCOM', NULL, NULL, 'http://www.molcomconcepts.com/', 'Abuja', '900901', '755', '123', '08030666858', '09030666858', 'hello@abiodun.me', 'abiodunsulaiman694@gmail.com', 0, NULL, NULL, '1', NULL, NULL, '2018-11-07T13:11:55.606+0000', 'ncc-admin', '2018-11-07T02:16:11.661+0000', 'molcom');

-- --------------------------------------------------------

--
-- Table structure for table `company_license`
--

CREATE TABLE `company_license` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_id` int(11) NOT NULL,
  `license_type_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expiry_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(10) UNSIGNED NOT NULL,
  `iso` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nicename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `iso3` char(3) COLLATE utf8_unicode_ci NOT NULL,
  `numcode` smallint(6) NOT NULL,
  `phonecode` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'AF', 'AFGHANISTAN', 'Afghanistan', 'AFG', 4, 93, NULL, NULL, NULL),
(2, 'AL', 'ALBANIA', 'Albania', 'ALB', 8, 355, NULL, NULL, NULL),
(3, 'DZ', 'ALGERIA', 'Algeria', 'DZA', 12, 213, NULL, NULL, NULL),
(4, 'AS', 'AMERICAN SAMOA', 'American Samoa', 'ASM', 16, 1684, NULL, NULL, NULL),
(5, 'AD', 'ANDORRA', 'Andorra', 'AND', 20, 376, NULL, NULL, NULL),
(6, 'AO', 'ANGOLA', 'Angola', 'AGO', 24, 244, NULL, NULL, NULL),
(7, 'AI', 'ANGUILLA', 'Anguilla', 'AIA', 660, 1264, NULL, NULL, NULL),
(8, 'AQ', 'ANTARCTICA', 'Antarctica', '', 0, 0, NULL, NULL, NULL),
(9, 'AG', 'ANTIGUA AND BARBUDA', 'Antigua and Barbuda', 'ATG', 28, 1268, NULL, NULL, NULL),
(10, 'AR', 'ARGENTINA', 'Argentina', 'ARG', 32, 54, NULL, NULL, NULL),
(11, 'AM', 'ARMENIA', 'Armenia', 'ARM', 51, 374, NULL, NULL, NULL),
(12, 'AW', 'ARUBA', 'Aruba', 'ABW', 533, 297, NULL, NULL, NULL),
(13, 'AU', 'AUSTRALIA', 'Australia', 'AUS', 36, 61, NULL, NULL, NULL),
(14, 'AT', 'AUSTRIA', 'Austria', 'AUT', 40, 43, NULL, NULL, NULL),
(15, 'AZ', 'AZERBAIJAN', 'Azerbaijan', 'AZE', 31, 994, NULL, NULL, NULL),
(16, 'BS', 'BAHAMAS', 'Bahamas', 'BHS', 44, 1242, NULL, NULL, NULL),
(17, 'BH', 'BAHRAIN', 'Bahrain', 'BHR', 48, 973, NULL, NULL, NULL),
(18, 'BD', 'BANGLADESH', 'Bangladesh', 'BGD', 50, 880, NULL, NULL, NULL),
(19, 'BB', 'BARBADOS', 'Barbados', 'BRB', 52, 1246, NULL, NULL, NULL),
(20, 'BY', 'BELARUS', 'Belarus', 'BLR', 112, 375, NULL, NULL, NULL),
(21, 'BE', 'BELGIUM', 'Belgium', 'BEL', 56, 32, NULL, NULL, NULL),
(22, 'BZ', 'BELIZE', 'Belize', 'BLZ', 84, 501, NULL, NULL, NULL),
(23, 'BJ', 'BENIN', 'Benin', 'BEN', 204, 229, NULL, NULL, NULL),
(24, 'BM', 'BERMUDA', 'Bermuda', 'BMU', 60, 1441, NULL, NULL, NULL),
(25, 'BT', 'BHUTAN', 'Bhutan', 'BTN', 64, 975, NULL, NULL, NULL),
(26, 'BO', 'BOLIVIA', 'Bolivia', 'BOL', 68, 591, NULL, NULL, NULL),
(27, 'BA', 'BOSNIA AND HERZEGOVINA', 'Bosnia and Herzegovina', 'BIH', 70, 387, NULL, NULL, NULL),
(28, 'BW', 'BOTSWANA', 'Botswana', 'BWA', 72, 267, NULL, NULL, NULL),
(29, 'BV', 'BOUVET ISLAND', 'Bouvet Island', '', 0, 0, NULL, NULL, NULL),
(30, 'BR', 'BRAZIL', 'Brazil', 'BRA', 76, 55, NULL, NULL, NULL),
(31, 'IO', 'BRITISH INDIAN OCEAN TERRITORY', 'British Indian Ocean Territory', '', 0, 246, NULL, NULL, NULL),
(32, 'BN', 'BRUNEI DARUSSALAM', 'Brunei Darussalam', 'BRN', 96, 673, NULL, NULL, NULL),
(33, 'BG', 'BULGARIA', 'Bulgaria', 'BGR', 100, 359, NULL, NULL, NULL),
(34, 'BF', 'BURKINA FASO', 'Burkina Faso', 'BFA', 854, 226, NULL, NULL, NULL),
(35, 'BI', 'BURUNDI', 'Burundi', 'BDI', 108, 257, NULL, NULL, NULL),
(36, 'KH', 'CAMBODIA', 'Cambodia', 'KHM', 116, 855, NULL, NULL, NULL),
(37, 'CM', 'CAMEROON', 'Cameroon', 'CMR', 120, 237, NULL, NULL, NULL),
(38, 'CA', 'CANADA', 'Canada', 'CAN', 124, 1, NULL, NULL, NULL),
(39, 'CV', 'CAPE VERDE', 'Cape Verde', 'CPV', 132, 238, NULL, NULL, NULL),
(40, 'KY', 'CAYMAN ISLANDS', 'Cayman Islands', 'CYM', 136, 1345, NULL, NULL, NULL),
(41, 'CF', 'CENTRAL AFRICAN REPUBLIC', 'Central African Republic', 'CAF', 140, 236, NULL, NULL, NULL),
(42, 'TD', 'CHAD', 'Chad', 'TCD', 148, 235, NULL, NULL, NULL),
(43, 'CL', 'CHILE', 'Chile', 'CHL', 152, 56, NULL, NULL, NULL),
(44, 'CN', 'CHINA', 'China', 'CHN', 156, 86, NULL, NULL, NULL),
(45, 'CX', 'CHRISTMAS ISLAND', 'Christmas Island', '', 0, 61, NULL, NULL, NULL),
(46, 'CC', 'COCOS (KEELING) ISLANDS', 'Cocos (Keeling) Islands', '', 0, 672, NULL, NULL, NULL),
(47, 'CO', 'COLOMBIA', 'Colombia', 'COL', 170, 57, NULL, NULL, NULL),
(48, 'KM', 'COMOROS', 'Comoros', 'COM', 174, 269, NULL, NULL, NULL),
(49, 'CG', 'CONGO', 'Congo', 'COG', 178, 242, NULL, NULL, NULL),
(50, 'CD', 'CONGO, THE DEMOCRATIC REPUBLIC OF THE', 'Congo, the Democratic Republic of the', 'COD', 180, 242, NULL, NULL, NULL),
(51, 'CK', 'COOK ISLANDS', 'Cook Islands', 'COK', 184, 682, NULL, NULL, NULL),
(52, 'CR', 'COSTA RICA', 'Costa Rica', 'CRI', 188, 506, NULL, NULL, NULL),
(53, 'CI', 'COTE D\'IVOIRE', 'Cote D\'Ivoire', 'CIV', 384, 225, NULL, NULL, NULL),
(54, 'HR', 'CROATIA', 'Croatia', 'HRV', 191, 385, NULL, NULL, NULL),
(55, 'CU', 'CUBA', 'Cuba', 'CUB', 192, 53, NULL, NULL, NULL),
(56, 'CY', 'CYPRUS', 'Cyprus', 'CYP', 196, 357, NULL, NULL, NULL),
(57, 'CZ', 'CZECH REPUBLIC', 'Czech Republic', 'CZE', 203, 420, NULL, NULL, NULL),
(58, 'DK', 'DENMARK', 'Denmark', 'DNK', 208, 45, NULL, NULL, NULL),
(59, 'DJ', 'DJIBOUTI', 'Djibouti', 'DJI', 262, 253, NULL, NULL, NULL),
(60, 'DM', 'DOMINICA', 'Dominica', 'DMA', 212, 1767, NULL, NULL, NULL),
(61, 'DO', 'DOMINICAN REPUBLIC', 'Dominican Republic', 'DOM', 214, 1809, NULL, NULL, NULL),
(62, 'EC', 'ECUADOR', 'Ecuador', 'ECU', 218, 593, NULL, NULL, NULL),
(63, 'EG', 'EGYPT', 'Egypt', 'EGY', 818, 20, NULL, NULL, NULL),
(64, 'SV', 'EL SALVADOR', 'El Salvador', 'SLV', 222, 503, NULL, NULL, NULL),
(65, 'GQ', 'EQUATORIAL GUINEA', 'Equatorial Guinea', 'GNQ', 226, 240, NULL, NULL, NULL),
(66, 'ER', 'ERITREA', 'Eritrea', 'ERI', 232, 291, NULL, NULL, NULL),
(67, 'EE', 'ESTONIA', 'Estonia', 'EST', 233, 372, NULL, NULL, NULL),
(68, 'ET', 'ETHIOPIA', 'Ethiopia', 'ETH', 231, 251, NULL, NULL, NULL),
(69, 'FK', 'FALKLAND ISLANDS (MALVINAS)', 'Falkland Islands (Malvinas)', 'FLK', 238, 500, NULL, NULL, NULL),
(70, 'FO', 'FAROE ISLANDS', 'Faroe Islands', 'FRO', 234, 298, NULL, NULL, NULL),
(71, 'FJ', 'FIJI', 'Fiji', 'FJI', 242, 679, NULL, NULL, NULL),
(72, 'FI', 'FINLAND', 'Finland', 'FIN', 246, 358, NULL, NULL, NULL),
(73, 'FR', 'FRANCE', 'France', 'FRA', 250, 33, NULL, NULL, NULL),
(74, 'GF', 'FRENCH GUIANA', 'French Guiana', 'GUF', 254, 594, NULL, NULL, NULL),
(75, 'PF', 'FRENCH POLYNESIA', 'French Polynesia', 'PYF', 258, 689, NULL, NULL, NULL),
(76, 'TF', 'FRENCH SOUTHERN TERRITORIES', 'French Southern Territories', '', 0, 0, NULL, NULL, NULL),
(77, 'GA', 'GABON', 'Gabon', 'GAB', 266, 241, NULL, NULL, NULL),
(78, 'GM', 'GAMBIA', 'Gambia', 'GMB', 270, 220, NULL, NULL, NULL),
(79, 'GE', 'GEORGIA', 'Georgia', 'GEO', 268, 995, NULL, NULL, NULL),
(80, 'DE', 'GERMANY', 'Germany', 'DEU', 276, 49, NULL, NULL, NULL),
(81, 'GH', 'GHANA', 'Ghana', 'GHA', 288, 233, NULL, NULL, NULL),
(82, 'GI', 'GIBRALTAR', 'Gibraltar', 'GIB', 292, 350, NULL, NULL, NULL),
(83, 'GR', 'GREECE', 'Greece', 'GRC', 300, 30, NULL, NULL, NULL),
(84, 'GL', 'GREENLAND', 'Greenland', 'GRL', 304, 299, NULL, NULL, NULL),
(85, 'GD', 'GRENADA', 'Grenada', 'GRD', 308, 1473, NULL, NULL, NULL),
(86, 'GP', 'GUADELOUPE', 'Guadeloupe', 'GLP', 312, 590, NULL, NULL, NULL),
(87, 'GU', 'GUAM', 'Guam', 'GUM', 316, 1671, NULL, NULL, NULL),
(88, 'GT', 'GUATEMALA', 'Guatemala', 'GTM', 320, 502, NULL, NULL, NULL),
(89, 'GN', 'GUINEA', 'Guinea', 'GIN', 324, 224, NULL, NULL, NULL),
(90, 'GW', 'GUINEA-BISSAU', 'Guinea-Bissau', 'GNB', 624, 245, NULL, NULL, NULL),
(91, 'GY', 'GUYANA', 'Guyana', 'GUY', 328, 592, NULL, NULL, NULL),
(92, 'HT', 'HAITI', 'Haiti', 'HTI', 332, 509, NULL, NULL, NULL),
(93, 'HM', 'HEARD ISLAND AND MCDONALD ISLANDS', 'Heard Island and Mcdonald Islands', '', 0, 0, NULL, NULL, NULL),
(94, 'VA', 'HOLY SEE (VATICAN CITY STATE)', 'Holy See (Vatican City State)', 'VAT', 336, 39, NULL, NULL, NULL),
(95, 'HN', 'HONDURAS', 'Honduras', 'HND', 340, 504, NULL, NULL, NULL),
(96, 'HK', 'HONG KONG', 'Hong Kong', 'HKG', 344, 852, NULL, NULL, NULL),
(97, 'HU', 'HUNGARY', 'Hungary', 'HUN', 348, 36, NULL, NULL, NULL),
(98, 'IS', 'ICELAND', 'Iceland', 'ISL', 352, 354, NULL, NULL, NULL),
(99, 'IN', 'INDIA', 'India', 'IND', 356, 91, NULL, NULL, NULL),
(100, 'ID', 'INDONESIA', 'Indonesia', 'IDN', 360, 62, NULL, NULL, NULL),
(101, 'IR', 'IRAN, ISLAMIC REPUBLIC OF', 'Iran, Islamic Republic of', 'IRN', 364, 98, NULL, NULL, NULL),
(102, 'IQ', 'IRAQ', 'Iraq', 'IRQ', 368, 964, NULL, NULL, NULL),
(103, 'IE', 'IRELAND', 'Ireland', 'IRL', 372, 353, NULL, NULL, NULL),
(104, 'IL', 'ISRAEL', 'Israel', 'ISR', 376, 972, NULL, NULL, NULL),
(105, 'IT', 'ITALY', 'Italy', 'ITA', 380, 39, NULL, NULL, NULL),
(106, 'JM', 'JAMAICA', 'Jamaica', 'JAM', 388, 1876, NULL, NULL, NULL),
(107, 'JP', 'JAPAN', 'Japan', 'JPN', 392, 81, NULL, NULL, NULL),
(108, 'JO', 'JORDAN', 'Jordan', 'JOR', 400, 962, NULL, NULL, NULL),
(109, 'KZ', 'KAZAKHSTAN', 'Kazakhstan', 'KAZ', 398, 7, NULL, NULL, NULL),
(110, 'KE', 'KENYA', 'Kenya', 'KEN', 404, 254, NULL, NULL, NULL),
(111, 'KI', 'KIRIBATI', 'Kiribati', 'KIR', 296, 686, NULL, NULL, NULL),
(112, 'KP', 'KOREA, DEMOCRATIC PEOPLE\'S REPUBLIC OF', 'Korea, Democratic People\'s Republic of', 'PRK', 408, 850, NULL, NULL, NULL),
(113, 'KR', 'KOREA, REPUBLIC OF', 'Korea, Republic of', 'KOR', 410, 82, NULL, NULL, NULL),
(114, 'KW', 'KUWAIT', 'Kuwait', 'KWT', 414, 965, NULL, NULL, NULL),
(115, 'KG', 'KYRGYZSTAN', 'Kyrgyzstan', 'KGZ', 417, 996, NULL, NULL, NULL),
(116, 'LA', 'LAO PEOPLE\'S DEMOCRATIC REPUBLIC', 'Lao People\'s Democratic Republic', 'LAO', 418, 856, NULL, NULL, NULL),
(117, 'LV', 'LATVIA', 'Latvia', 'LVA', 428, 371, NULL, NULL, NULL),
(118, 'LB', 'LEBANON', 'Lebanon', 'LBN', 422, 961, NULL, NULL, NULL),
(119, 'LS', 'LESOTHO', 'Lesotho', 'LSO', 426, 266, NULL, NULL, NULL),
(120, 'LR', 'LIBERIA', 'Liberia', 'LBR', 430, 231, NULL, NULL, NULL),
(121, 'LY', 'LIBYAN ARAB JAMAHIRIYA', 'Libyan Arab Jamahiriya', 'LBY', 434, 218, NULL, NULL, NULL),
(122, 'LI', 'LIECHTENSTEIN', 'Liechtenstein', 'LIE', 438, 423, NULL, NULL, NULL),
(123, 'LT', 'LITHUANIA', 'Lithuania', 'LTU', 440, 370, NULL, NULL, NULL),
(124, 'LU', 'LUXEMBOURG', 'Luxembourg', 'LUX', 442, 352, NULL, NULL, NULL),
(125, 'MO', 'MACAO', 'Macao', 'MAC', 446, 853, NULL, NULL, NULL),
(126, 'MK', 'MACEDONIA, THE FORMER YUGOSLAV REPUBLIC OF', 'Macedonia, the Former Yugoslav Republic of', 'MKD', 807, 389, NULL, NULL, NULL),
(127, 'MG', 'MADAGASCAR', 'Madagascar', 'MDG', 450, 261, NULL, NULL, NULL),
(128, 'MW', 'MALAWI', 'Malawi', 'MWI', 454, 265, NULL, NULL, NULL),
(129, 'MY', 'MALAYSIA', 'Malaysia', 'MYS', 458, 60, NULL, NULL, NULL),
(130, 'MV', 'MALDIVES', 'Maldives', 'MDV', 462, 960, NULL, NULL, NULL),
(131, 'ML', 'MALI', 'Mali', 'MLI', 466, 223, NULL, NULL, NULL),
(132, 'MT', 'MALTA', 'Malta', 'MLT', 470, 356, NULL, NULL, NULL),
(133, 'MH', 'MARSHALL ISLANDS', 'Marshall Islands', 'MHL', 584, 692, NULL, NULL, NULL),
(134, 'MQ', 'MARTINIQUE', 'Martinique', 'MTQ', 474, 596, NULL, NULL, NULL),
(135, 'MR', 'MAURITANIA', 'Mauritania', 'MRT', 478, 222, NULL, NULL, NULL),
(136, 'MU', 'MAURITIUS', 'Mauritius', 'MUS', 480, 230, NULL, NULL, NULL),
(137, 'YT', 'MAYOTTE', 'Mayotte', '', 0, 269, NULL, NULL, NULL),
(138, 'MX', 'MEXICO', 'Mexico', 'MEX', 484, 52, NULL, NULL, NULL),
(139, 'FM', 'MICRONESIA, FEDERATED STATES OF', 'Micronesia, Federated States of', 'FSM', 583, 691, NULL, NULL, NULL),
(140, 'MD', 'MOLDOVA, REPUBLIC OF', 'Moldova, Republic of', 'MDA', 498, 373, NULL, NULL, NULL),
(141, 'MC', 'MONACO', 'Monaco', 'MCO', 492, 377, NULL, NULL, NULL),
(142, 'MN', 'MONGOLIA', 'Mongolia', 'MNG', 496, 976, NULL, NULL, NULL),
(143, 'MS', 'MONTSERRAT', 'Montserrat', 'MSR', 500, 1664, NULL, NULL, NULL),
(144, 'MA', 'MOROCCO', 'Morocco', 'MAR', 504, 212, NULL, NULL, NULL),
(145, 'MZ', 'MOZAMBIQUE', 'Mozambique', 'MOZ', 508, 258, NULL, NULL, NULL),
(146, 'MM', 'MYANMAR', 'Myanmar', 'MMR', 104, 95, NULL, NULL, NULL),
(147, 'NA', 'NAMIBIA', 'Namibia', 'NAM', 516, 264, NULL, NULL, NULL),
(148, 'NR', 'NAURU', 'Nauru', 'NRU', 520, 674, NULL, NULL, NULL),
(149, 'NP', 'NEPAL', 'Nepal', 'NPL', 524, 977, NULL, NULL, NULL),
(150, 'NL', 'NETHERLANDS', 'Netherlands', 'NLD', 528, 31, NULL, NULL, NULL),
(151, 'AN', 'NETHERLANDS ANTILLES', 'Netherlands Antilles', 'ANT', 530, 599, NULL, NULL, NULL),
(152, 'NC', 'NEW CALEDONIA', 'New Caledonia', 'NCL', 540, 687, NULL, NULL, NULL),
(153, 'NZ', 'NEW ZEALAND', 'New Zealand', 'NZL', 554, 64, NULL, NULL, NULL),
(154, 'NI', 'NICARAGUA', 'Nicaragua', 'NIC', 558, 505, NULL, NULL, NULL),
(155, 'NE', 'NIGER', 'Niger', 'NER', 562, 227, NULL, NULL, NULL),
(156, 'NG', 'NIGERIA', 'Nigeria', 'NGA', 566, 234, NULL, NULL, NULL),
(157, 'NU', 'NIUE', 'Niue', 'NIU', 570, 683, NULL, NULL, NULL),
(158, 'NF', 'NORFOLK ISLAND', 'Norfolk Island', 'NFK', 574, 672, NULL, NULL, NULL),
(159, 'MP', 'NORTHERN MARIANA ISLANDS', 'Northern Mariana Islands', 'MNP', 580, 1670, NULL, NULL, NULL),
(160, 'NO', 'NORWAY', 'Norway', 'NOR', 578, 47, NULL, NULL, NULL),
(161, 'OM', 'OMAN', 'Oman', 'OMN', 512, 968, NULL, NULL, NULL),
(162, 'PK', 'PAKISTAN', 'Pakistan', 'PAK', 586, 92, NULL, NULL, NULL),
(163, 'PW', 'PALAU', 'Palau', 'PLW', 585, 680, NULL, NULL, NULL),
(164, 'PS', 'PALESTINIAN TERRITORY, OCCUPIED', 'Palestinian Territory, Occupied', '', 0, 970, NULL, NULL, NULL),
(165, 'PA', 'PANAMA', 'Panama', 'PAN', 591, 507, NULL, NULL, NULL),
(166, 'PG', 'PAPUA NEW GUINEA', 'Papua New Guinea', 'PNG', 598, 675, NULL, NULL, NULL),
(167, 'PY', 'PARAGUAY', 'Paraguay', 'PRY', 600, 595, NULL, NULL, NULL),
(168, 'PE', 'PERU', 'Peru', 'PER', 604, 51, NULL, NULL, NULL),
(169, 'PH', 'PHILIPPINES', 'Philippines', 'PHL', 608, 63, NULL, NULL, NULL),
(170, 'PN', 'PITCAIRN', 'Pitcairn', 'PCN', 612, 0, NULL, NULL, NULL),
(171, 'PL', 'POLAND', 'Poland', 'POL', 616, 48, NULL, NULL, NULL),
(172, 'PT', 'PORTUGAL', 'Portugal', 'PRT', 620, 351, NULL, NULL, NULL),
(173, 'PR', 'PUERTO RICO', 'Puerto Rico', 'PRI', 630, 1787, NULL, NULL, NULL),
(174, 'QA', 'QATAR', 'Qatar', 'QAT', 634, 974, NULL, NULL, NULL),
(175, 'RE', 'REUNION', 'Reunion', 'REU', 638, 262, NULL, NULL, NULL),
(176, 'RO', 'ROMANIA', 'Romania', 'ROM', 642, 40, NULL, NULL, NULL),
(177, 'RU', 'RUSSIAN FEDERATION', 'Russian Federation', 'RUS', 643, 70, NULL, NULL, NULL),
(178, 'RW', 'RWANDA', 'Rwanda', 'RWA', 646, 250, NULL, NULL, NULL),
(179, 'SH', 'SAINT HELENA', 'Saint Helena', 'SHN', 654, 290, NULL, NULL, NULL),
(180, 'KN', 'SAINT KITTS AND NEVIS', 'Saint Kitts and Nevis', 'KNA', 659, 1869, NULL, NULL, NULL),
(181, 'LC', 'SAINT LUCIA', 'Saint Lucia', 'LCA', 662, 1758, NULL, NULL, NULL),
(182, 'PM', 'SAINT PIERRE AND MIQUELON', 'Saint Pierre and Miquelon', 'SPM', 666, 508, NULL, NULL, NULL),
(183, 'VC', 'SAINT VINCENT AND THE GRENADINES', 'Saint Vincent and the Grenadines', 'VCT', 670, 1784, NULL, NULL, NULL),
(184, 'WS', 'SAMOA', 'Samoa', 'WSM', 882, 684, NULL, NULL, NULL),
(185, 'SM', 'SAN MARINO', 'San Marino', 'SMR', 674, 378, NULL, NULL, NULL),
(186, 'ST', 'SAO TOME AND PRINCIPE', 'Sao Tome and Principe', 'STP', 678, 239, NULL, NULL, NULL),
(187, 'SA', 'SAUDI ARABIA', 'Saudi Arabia', 'SAU', 682, 966, NULL, NULL, NULL),
(188, 'SN', 'SENEGAL', 'Senegal', 'SEN', 686, 221, NULL, NULL, NULL),
(189, 'CS', 'SERBIA AND MONTENEGRO', 'Serbia and Montenegro', '', 0, 381, NULL, NULL, NULL),
(190, 'SC', 'SEYCHELLES', 'Seychelles', 'SYC', 690, 248, NULL, NULL, NULL),
(191, 'SL', 'SIERRA LEONE', 'Sierra Leone', 'SLE', 694, 232, NULL, NULL, NULL),
(192, 'SG', 'SINGAPORE', 'Singapore', 'SGP', 702, 65, NULL, NULL, NULL),
(193, 'SK', 'SLOVAKIA', 'Slovakia', 'SVK', 703, 421, NULL, NULL, NULL),
(194, 'SI', 'SLOVENIA', 'Slovenia', 'SVN', 705, 386, NULL, NULL, NULL),
(195, 'SB', 'SOLOMON ISLANDS', 'Solomon Islands', 'SLB', 90, 677, NULL, NULL, NULL),
(196, 'SO', 'SOMALIA', 'Somalia', 'SOM', 706, 252, NULL, NULL, NULL),
(197, 'ZA', 'SOUTH AFRICA', 'South Africa', 'ZAF', 710, 27, NULL, NULL, NULL),
(198, 'GS', 'SOUTH GEORGIA AND THE SOUTH SANDWICH ISLANDS', 'South Georgia and the South Sandwich Islands', '', 0, 0, NULL, NULL, NULL),
(199, 'ES', 'SPAIN', 'Spain', 'ESP', 724, 34, NULL, NULL, NULL),
(200, 'LK', 'SRI LANKA', 'Sri Lanka', 'LKA', 144, 94, NULL, NULL, NULL),
(201, 'SD', 'SUDAN', 'Sudan', 'SDN', 736, 249, NULL, NULL, NULL),
(202, 'SR', 'SURINAME', 'Suriname', 'SUR', 740, 597, NULL, NULL, NULL),
(203, 'SJ', 'SVALBARD AND JAN MAYEN', 'Svalbard and Jan Mayen', 'SJM', 744, 47, NULL, NULL, NULL),
(204, 'SZ', 'SWAZILAND', 'Swaziland', 'SWZ', 748, 268, NULL, NULL, NULL),
(205, 'SE', 'SWEDEN', 'Sweden', 'SWE', 752, 46, NULL, NULL, NULL),
(206, 'CH', 'SWITZERLAND', 'Switzerland', 'CHE', 756, 41, NULL, NULL, NULL),
(207, 'SY', 'SYRIAN ARAB REPUBLIC', 'Syrian Arab Republic', 'SYR', 760, 963, NULL, NULL, NULL),
(208, 'TW', 'TAIWAN, PROVINCE OF CHINA', 'Taiwan, Province of China', 'TWN', 158, 886, NULL, NULL, NULL),
(209, 'TJ', 'TAJIKISTAN', 'Tajikistan', 'TJK', 762, 992, NULL, NULL, NULL),
(210, 'TZ', 'TANZANIA, UNITED REPUBLIC OF', 'Tanzania, United Republic of', 'TZA', 834, 255, NULL, NULL, NULL),
(211, 'TH', 'THAILAND', 'Thailand', 'THA', 764, 66, NULL, NULL, NULL),
(212, 'TL', 'TIMOR-LESTE', 'Timor-Leste', '', 0, 670, NULL, NULL, NULL),
(213, 'TG', 'TOGO', 'Togo', 'TGO', 768, 228, NULL, NULL, NULL),
(214, 'TK', 'TOKELAU', 'Tokelau', 'TKL', 772, 690, NULL, NULL, NULL),
(215, 'TO', 'TONGA', 'Tonga', 'TON', 776, 676, NULL, NULL, NULL),
(216, 'TT', 'TRINIDAD AND TOBAGO', 'Trinidad and Tobago', 'TTO', 780, 1868, NULL, NULL, NULL),
(217, 'TN', 'TUNISIA', 'Tunisia', 'TUN', 788, 216, NULL, NULL, NULL),
(218, 'TR', 'TURKEY', 'Turkey', 'TUR', 792, 90, NULL, NULL, NULL),
(219, 'TM', 'TURKMENISTAN', 'Turkmenistan', 'TKM', 795, 7370, NULL, NULL, NULL),
(220, 'TC', 'TURKS AND CAICOS ISLANDS', 'Turks and Caicos Islands', 'TCA', 796, 1649, NULL, NULL, NULL),
(221, 'TV', 'TUVALU', 'Tuvalu', 'TUV', 798, 688, NULL, NULL, NULL),
(222, 'UG', 'UGANDA', 'Uganda', 'UGA', 800, 256, NULL, NULL, NULL),
(223, 'UA', 'UKRAINE', 'Ukraine', 'UKR', 804, 380, NULL, NULL, NULL),
(224, 'AE', 'UNITED ARAB EMIRATES', 'United Arab Emirates', 'ARE', 784, 971, NULL, NULL, NULL),
(225, 'GB', 'UNITED KINGDOM', 'United Kingdom', 'GBR', 826, 44, NULL, NULL, NULL),
(226, 'US', 'UNITED STATES', 'United States', 'USA', 840, 1, NULL, NULL, NULL),
(227, 'UM', 'UNITED STATES MINOR OUTLYING ISLANDS', 'United States Minor Outlying Islands', '', 0, 1, NULL, NULL, NULL),
(228, 'UY', 'URUGUAY', 'Uruguay', 'URY', 858, 598, NULL, NULL, NULL),
(229, 'UZ', 'UZBEKISTAN', 'Uzbekistan', 'UZB', 860, 998, NULL, NULL, NULL),
(230, 'VU', 'VANUATU', 'Vanuatu', 'VUT', 548, 678, NULL, NULL, NULL),
(231, 'VE', 'VENEZUELA', 'Venezuela', 'VEN', 862, 58, NULL, NULL, NULL),
(232, 'VN', 'VIET NAM', 'Viet Nam', 'VNM', 704, 84, NULL, NULL, NULL),
(233, 'VG', 'VIRGIN ISLANDS, BRITISH', 'Virgin Islands, British', 'VGB', 92, 1284, NULL, NULL, NULL),
(234, 'VI', 'VIRGIN ISLANDS, U.S.', 'Virgin Islands, U.s.', 'VIR', 850, 1340, NULL, NULL, NULL),
(235, 'WF', 'WALLIS AND FUTUNA', 'Wallis and Futuna', 'WLF', 876, 681, NULL, NULL, NULL),
(236, 'EH', 'WESTERN SAHARA', 'Western Sahara', 'ESH', 732, 212, NULL, NULL, NULL),
(237, 'YE', 'YEMEN', 'Yemen', 'YEM', 887, 967, NULL, NULL, NULL),
(238, 'ZM', 'ZAMBIA', 'Zambia', 'ZMB', 894, 260, NULL, NULL, NULL),
(239, 'ZW', 'ZIMBABWE', 'Zimbabwe', 'ZWE', 716, 263, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `coverage_areas`
--

CREATE TABLE `coverage_areas` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `last_updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `coverage_areas`
--

INSERT INTO `coverage_areas` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `last_updated_by`) VALUES
(1, 'Abia', '0000-00-00 00:00:00', '2017-07-19 18:09:47', '0000-00-00 00:00:00', 2017, NULL),
(3, 'Imo', '0000-00-00 00:00:00', '2017-07-20 12:14:08', '0000-00-00 00:00:00', 2017, NULL),
(4, 'Adamawa', '0000-00-00 00:00:00', '2017-10-17 02:00:00', NULL, NULL, NULL),
(5, 'Anambra', '0000-00-00 00:00:00', '2017-10-17 02:00:00', NULL, NULL, NULL),
(6, 'Akwa Ibom', '0000-00-00 00:00:00', '2017-10-17 02:00:00', NULL, NULL, NULL),
(7, 'Bauchi', '0000-00-00 00:00:00', '2017-10-17 02:00:00', NULL, NULL, NULL),
(8, 'Bayelsa', '0000-00-00 00:00:00', '2017-10-17 02:00:00', NULL, NULL, NULL),
(9, 'Benue', '0000-00-00 00:00:00', '2017-10-17 02:00:00', NULL, NULL, NULL),
(10, 'Borno', '0000-00-00 00:00:00', '2017-10-17 02:00:00', NULL, NULL, NULL),
(11, 'Cross River', '0000-00-00 00:00:00', '2017-10-17 02:00:00', NULL, NULL, NULL),
(12, 'Delta', '0000-00-00 00:00:00', '2017-10-17 02:00:00', NULL, NULL, NULL),
(13, 'Ebonyi', '0000-00-00 00:00:00', '2017-10-17 02:00:00', NULL, NULL, NULL),
(14, 'Enugu', '0000-00-00 00:00:00', '2017-10-17 02:00:00', NULL, NULL, NULL),
(15, 'Edo', '0000-00-00 00:00:00', '2017-10-17 02:00:00', NULL, NULL, NULL),
(16, 'Ekiti', '0000-00-00 00:00:00', '2017-10-17 02:00:00', NULL, NULL, NULL),
(17, 'Gombe', '0000-00-00 00:00:00', '2017-10-17 02:00:00', NULL, NULL, NULL),
(18, 'Jigawa', '0000-00-00 00:00:00', '2017-10-17 02:00:00', NULL, NULL, NULL),
(19, 'Kaduna', '0000-00-00 00:00:00', '2017-10-17 02:00:00', NULL, NULL, NULL),
(20, 'Kano', '0000-00-00 00:00:00', '2017-10-17 02:00:00', NULL, NULL, NULL),
(21, 'Katsina', '0000-00-00 00:00:00', '2017-10-17 02:00:00', NULL, NULL, NULL),
(22, 'Kebbi', '0000-00-00 00:00:00', '2017-10-17 02:00:00', NULL, NULL, NULL),
(23, 'Kogi', '0000-00-00 00:00:00', '2017-10-17 02:00:00', NULL, NULL, NULL),
(24, 'Kwara', '0000-00-00 00:00:00', '2017-10-17 02:00:00', NULL, NULL, NULL),
(25, 'Lagos', '0000-00-00 00:00:00', '2017-10-17 02:00:00', NULL, NULL, NULL),
(26, 'Nasarawa', '0000-00-00 00:00:00', '2017-10-17 02:00:00', NULL, NULL, NULL),
(27, 'Niger', '0000-00-00 00:00:00', '2017-10-17 02:00:00', NULL, NULL, NULL),
(28, 'Ogun', '0000-00-00 00:00:00', '2017-10-17 02:00:00', NULL, NULL, NULL),
(29, 'Ondo', '0000-00-00 00:00:00', '2017-10-17 02:00:00', NULL, NULL, NULL),
(30, 'Osun', '0000-00-00 00:00:00', '2017-10-17 02:00:00', NULL, NULL, NULL),
(31, 'Oyo', '0000-00-00 00:00:00', '2017-10-17 02:00:00', NULL, NULL, NULL),
(32, 'Plateau', '0000-00-00 00:00:00', '2017-10-17 02:00:00', NULL, NULL, NULL),
(33, 'Rivers', '0000-00-00 00:00:00', '2017-10-17 02:00:00', NULL, NULL, NULL),
(34, 'Sokoto', '0000-00-00 00:00:00', '2017-10-17 02:00:00', NULL, NULL, NULL),
(35, 'Taraba', '0000-00-00 00:00:00', '2017-10-17 02:00:00', NULL, NULL, NULL),
(36, 'Yobe', '0000-00-00 00:00:00', '2017-10-17 02:00:00', NULL, NULL, NULL),
(37, 'Zamfara', '0000-00-00 00:00:00', '2017-10-17 02:00:00', NULL, NULL, NULL),
(38, 'FCT', '0000-00-00 00:00:00', '2017-10-17 02:00:00', NULL, NULL, NULL),
(39, 'National', '0000-00-00 00:00:00', '2017-10-17 02:00:00', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `manager_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_updated_by` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`, `manager_id`, `created_by`, `last_updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Technical Standards', '', '2', '2', '2017-06-20 11:11:59', '2017-06-20 12:18:38', '2017-06-20 12:18:38'),
(2, 'Information Technology', '', '2', '2', '2017-06-20 11:43:37', '2017-06-20 11:43:37', NULL),
(3, 'Technical Standards', '', '2', '2', '2017-06-20 12:26:10', '2017-06-20 12:27:34', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `equipment`
--

CREATE TABLE `equipment` (
  `id` int(10) UNSIGNED NOT NULL,
  `application_number_id` int(11) DEFAULT NULL,
  `application_short_id` int(11) DEFAULT NULL,
  `equipment_make` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `equipment_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `equipment_model` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `equipment_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `equipment_installed` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `equipment_maximum` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `equipment`
--

INSERT INTO `equipment` (`id`, `application_number_id`, `application_short_id`, `equipment_make`, `equipment_date`, `equipment_model`, `equipment_type`, `equipment_installed`, `equipment_maximum`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 8, NULL, 'Apl', '2017-05-16', 'GEE12', 'GEEQ', 'GE234', 'GEI6543', '2017-05-30 16:04:24', '2017-05-30 16:04:24', NULL),
(2, 9, NULL, 'Apl', '2017-05-16', 'GEE12', 'GEEQ', 'GE234', 'GEI6543', '2017-05-30 16:09:53', '2017-05-30 16:09:53', NULL),
(3, 10, NULL, 'Apl', '2017-05-16', 'GEE12', 'GEEQ', 'GE234', 'GEI6543', '2017-05-30 16:10:48', '2017-05-30 16:10:48', NULL),
(4, 11, NULL, 'Apl', '2017-05-16', 'GEE12', 'GEEQ', 'GE234', 'GEI6543', '2017-05-30 16:11:16', '2017-05-30 16:11:16', NULL),
(5, NULL, 2, 'aba', '', 'aba', 'huawei', '', '', '2017-05-31 13:18:38', '2017-05-31 13:18:38', NULL),
(6, NULL, 3, 'aba', '', 'aba', 'huawei', '', '', '2017-05-31 13:21:20', '2017-05-31 13:21:20', NULL),
(7, NULL, 4, 'aba', '', 'aba', 'huawei', '', '', '2017-05-31 13:27:10', '2017-05-31 13:27:10', NULL),
(8, NULL, 5, 'Thuraya', '', 'T123', 'Phone', '', '', '2017-05-31 13:27:52', '2017-05-31 13:27:52', NULL),
(9, NULL, 7, 'Motorola', '', 'Moto890', 'Motorola', '', '', '2017-06-12 12:21:40', '2017-06-12 12:21:40', NULL),
(10, 13, NULL, 'HITACHI', '2016-05-03', 'HTH-001', 'HH', '340MW', '500MW', '2017-06-12 13:29:50', '2017-06-12 13:29:50', NULL),
(11, NULL, 11, 'HITACHI', '', 'HTH 400', 'HITACH 414', '', '', '2017-06-12 14:14:52', '2017-06-12 14:14:52', NULL),
(12, NULL, 12, 'HITACHI', '', 'HTH-500', 'HTM', '', '', '2017-06-12 16:20:21', '2017-06-12 16:20:21', NULL),
(13, NULL, 13, 'HITACHI', '', 'HTM', 'HTH-500', '', '', '2017-06-12 16:28:41', '2017-08-08 15:03:03', '2017-08-08 15:03:03'),
(14, NULL, 14, 'HITACHI', '', 'HTM', 'HTH-500', '', '', '2017-06-12 16:30:17', '2017-06-12 16:30:17', NULL),
(15, 14, NULL, 'HUAWEI', '2014', 'H675', 'Digital', 'Inferential', '230', '2017-06-14 16:18:16', '2017-06-14 16:18:16', NULL),
(16, NULL, 15, 'Motorola', '', 'MOTO123', 'Motorola', '', '', '2017-06-14 16:46:42', '2017-08-08 13:09:46', '2017-08-08 13:09:46'),
(17, NULL, 16, 'HITACHI', '', 'CROSSFIRE 212', 'Hi Tech', '', '', '2017-06-21 17:58:10', '2017-07-18 17:00:14', '2017-07-18 17:00:14'),
(18, 15, NULL, 'Motorola', '12/09/2000', 'MOTo', 'MOTTo', 'MW200', 'HW4000', '2017-06-21 18:07:57', '2017-06-21 18:07:57', NULL),
(19, 16, NULL, 'HITACHI', '2016/01/24', 'HIT-001', 'HTM', '340MW', '400MW', '2017-06-21 19:10:35', '2017-06-21 19:10:35', NULL),
(20, 17, NULL, 'hitachi', '23-07-17', 'htc', 'htc', '340mw', '500mw', '2017-06-22 11:42:05', '2017-06-22 11:42:05', NULL),
(21, 18, NULL, 'Motorola', '12/09/2000', 'MT123', 'MT', 'MH2000', 'MW3000', '2017-06-28 13:21:49', '2017-06-28 13:21:49', NULL),
(22, NULL, 17, 'Hauwei', '', 'HW234', 'Hauwei', '', '', '2017-06-28 14:27:02', '2017-06-28 14:27:02', NULL),
(23, NULL, 18, 'Hauwei', '', 'HW', 'Hauwei', '', '', '2017-06-28 14:59:21', '2017-06-28 14:59:21', NULL),
(24, NULL, 19, 'Hauwei', '', 'HW238', 'Hauwei', '', '', '2017-06-28 15:10:54', '2017-06-28 15:10:54', NULL),
(25, NULL, 20, 'Hauwei', '', 'HW238', 'Hauwei', '', '', '2017-06-28 15:11:38', '2017-06-28 15:11:38', NULL),
(26, NULL, 21, 'Hauwei', '', 'HW238', 'Hauwei', '', '', '2017-06-28 15:12:44', '2017-06-28 15:12:44', NULL),
(27, NULL, 22, 'Hauwei', '', 'HW238', 'Hauwei', '', '', '2017-06-28 15:12:58', '2017-06-28 15:12:58', NULL),
(28, NULL, 23, 'Hauwei', '', 'HW238', 'Hauwei', '', '', '2017-06-28 15:13:21', '2017-06-28 15:13:21', NULL),
(29, NULL, 24, 'Hauwei', '', 'MD2017', 'Mobile', '', '', '2017-06-28 15:29:49', '2017-06-28 15:29:49', NULL),
(30, 19, NULL, 'HITACHI', '2017/06/26', 'HIM', 'HM', '340MW', '400MW', '2017-06-30 16:01:33', '2017-06-30 16:01:33', NULL),
(31, 20, NULL, 'nokia', '21/06/2008', 'nkh234', 'na', '350mw', '600mw', '2017-07-05 17:07:59', '2017-07-05 17:07:59', NULL),
(32, 19, NULL, 'HITACHI', '2017/06/26', 'HIM', 'HM', '340MW', '400MW', '2017-07-11 16:22:05', '2017-07-11 17:27:20', '2017-07-11 17:27:20'),
(33, 19, NULL, 'HITACHI', '2017/06/26', 'HIM', 'HM', '340MW', '400MW', '2017-07-11 16:22:39', '2017-07-11 17:27:20', '2017-07-11 17:27:20'),
(34, 19, NULL, 'HITACHI', '2017/06/26', 'HIM', 'HM', '340MW', '400MW', '2017-07-11 16:22:39', '2017-07-11 17:27:20', '2017-07-11 17:27:20'),
(35, 19, NULL, 'HITACHI', '2017/06/26', 'HIM', 'HM', '340MW', '400MW', '2017-07-11 16:24:44', '2017-07-11 17:27:21', '2017-07-11 17:27:21'),
(36, 19, NULL, 'HITACHI', '2017/06/26', 'HIM', 'HM', '340MW', '400MW', '2017-07-11 16:24:44', '2017-07-11 17:27:21', '2017-07-11 17:27:21'),
(37, 19, NULL, 'HITACHI', '2017/06/26', 'HIM', 'HM', '340MW', '400MW', '2017-07-11 16:24:44', '2017-07-11 17:27:21', '2017-07-11 17:27:21'),
(38, 19, NULL, 'HITACHI', '2017/06/26', 'HIM', 'HM', '340MW', '400MW', '2017-07-11 16:24:44', '2017-07-11 17:27:21', '2017-07-11 17:27:21'),
(39, 19, NULL, 'HITACHI', '2017/06/26', 'HIM', 'HM', '340MW', '400MW', '2017-07-11 17:04:21', '2017-07-11 17:27:21', '2017-07-11 17:27:21'),
(40, 19, NULL, 'HITACHI', '2017/06/26', 'HIM', 'HM', '340MW', '400MW', '2017-07-11 17:04:21', '2017-07-11 17:27:21', '2017-07-11 17:27:21'),
(41, 19, NULL, 'HITACHI', '2017/06/26', 'HIM', 'HM', '340MW', '400MW', '2017-07-11 17:04:21', '2017-07-11 17:27:21', '2017-07-11 17:27:21'),
(42, 19, NULL, 'HITACHI', '2017/06/26', 'HIM', 'HM', '340MW', '400MW', '2017-07-11 17:04:21', '2017-07-11 17:27:21', '2017-07-11 17:27:21'),
(43, 19, NULL, 'HITACHI', '2017/06/26', 'HIM', 'HM', '340MW', '400MW', '2017-07-11 17:04:21', '2017-07-11 17:27:21', '2017-07-11 17:27:21'),
(44, 19, NULL, 'HITACHI', '2017/06/26', 'HIM', 'HM', '340MW', '400MW', '2017-07-11 17:04:21', '2017-07-11 17:27:21', '2017-07-11 17:27:21'),
(45, 19, NULL, 'HITACHI', '2017/06/26', 'HIM', 'HM', '340MW', '400MW', '2017-07-11 17:04:21', '2017-07-11 17:27:21', '2017-07-11 17:27:21'),
(46, 19, NULL, 'HITACHI', '2017/06/26', 'HIM', 'HM', '340MW', '400MW', '2017-07-11 17:04:21', '2017-07-11 17:27:21', '2017-07-11 17:27:21'),
(47, 19, NULL, 'HITACHI', '2017/06/26', 'HIM', 'HM', '340MW', '400MW', '2017-07-11 17:27:21', '2017-07-11 17:40:55', '2017-07-11 17:40:55'),
(48, 19, NULL, 'HITACHI', '2017/06/26', 'HIM', 'HM', '340MW', '400MW', '2017-07-11 17:40:55', '2017-07-11 17:46:58', '2017-07-11 17:46:58'),
(49, 19, NULL, 'HITACHI', '2017/06/26', 'HIM', 'HM', '340MW', '400MW', '2017-07-11 17:46:32', '2017-07-11 17:46:58', '2017-07-11 17:46:58'),
(50, 19, NULL, 'HITACHI', '2017/06/26', 'HIM', 'HM', '340MW', '400MW', '2017-07-11 17:46:32', '2017-07-11 17:46:58', '2017-07-11 17:46:58'),
(51, 19, NULL, 'HITACHI', '2017/06/26', 'HIM', 'HM', '340MW', '400MW', '2017-07-11 17:46:58', '2017-07-12 15:03:18', '2017-07-12 15:03:18'),
(52, 19, NULL, 'HITACHI', '2017/06/26', 'HIM', 'HM', '340MW', '400MW', '2017-07-11 17:49:57', '2017-07-12 15:03:18', '2017-07-12 15:03:18'),
(53, 19, NULL, 'HITACHI', '2017/06/26', 'HIM', 'HM', '340MW', '400MW', '2017-07-11 17:49:57', '2017-07-12 15:03:18', '2017-07-12 15:03:18'),
(54, 19, NULL, 'HITACHI', '2017/06/26', 'HIM', 'HM', '340MW', '400MW', '2017-07-12 15:03:18', '2017-07-12 15:03:18', NULL),
(55, 21, NULL, 'HITACHI', '2017-02-05', 'HTN', 'KMK', '340', '3555', '2017-07-12 15:16:40', '2017-07-12 15:16:40', NULL),
(56, NULL, 25, NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-13 14:32:36', '2017-07-13 14:59:40', '2017-07-13 14:59:40'),
(57, NULL, 25, NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-13 14:47:33', '2017-07-13 14:59:40', '2017-07-13 14:59:40'),
(58, NULL, 25, 'HITACHI', '', '124', 'HTH', '', '', '2017-07-13 14:59:40', '2017-07-13 15:22:31', '2017-07-13 15:22:31'),
(59, NULL, 25, 'HITACHI', '', '124', 'HTH', '', '', '2017-07-13 15:16:48', '2017-07-13 15:17:11', '2017-07-13 15:17:11'),
(60, NULL, 25, 'HITACHI', '', '124', 'HTH', '', '', '2017-07-13 15:17:11', '2017-07-13 15:17:48', '2017-07-13 15:17:48'),
(61, NULL, 25, 'HITACHI', '', '124', 'HTH', '', '', '2017-07-13 15:17:48', '2017-07-13 15:22:31', '2017-07-13 15:22:31'),
(62, NULL, 25, 'HITACHI', '', '124', 'HTH', '', '', '2017-07-13 15:22:31', '2017-07-13 15:45:43', '2017-07-13 15:45:43'),
(63, NULL, 25, 'HITACHI', '', '124', 'HTH', '', '', '2017-07-13 15:45:43', '2017-07-13 15:45:43', NULL),
(64, 17, NULL, 'hitachi', '23-07-17', 'htc', 'htc', '340mw', '500mw', '2017-07-13 16:26:04', '2017-07-13 16:26:04', NULL),
(65, 25, NULL, 'HITACHI', '2017-02-02', 'HTH', 'HTM', '340MW', '400MW', '2017-07-14 15:50:11', '2017-07-14 15:50:11', NULL),
(66, 15, NULL, 'Motorola', '12/09/2000', 'MOTo', 'MOTTo', 'MW200', 'HW4000', '2017-07-15 02:16:29', '2017-07-15 02:16:29', NULL),
(67, NULL, 28, 'PRIDE', '', 'DE17', 'LION', '', '', '2017-07-17 13:26:37', '2017-07-17 13:26:37', NULL),
(68, 29, NULL, 'Haier', '20-01-1994', 'X509', 'Standard', 'Industrial', '2000MHz', '2017-07-18 13:35:18', '2017-07-18 13:35:18', NULL),
(69, NULL, 29, 'Omega', '', 'Mega390', 'Sigma', '', '', '2017-07-18 13:43:04', '2017-07-18 13:43:05', '2017-07-18 13:43:05'),
(70, NULL, 29, 'Omega', '', 'Mega390', 'Sigma', '', '', '2017-07-18 13:43:05', '2017-07-18 13:43:05', NULL),
(71, 29, NULL, 'Haier', '20-01-1994', 'X509', 'Standard', 'Industrial', '2000MHz', '2017-07-18 14:23:51', '2017-07-18 14:25:15', '2017-07-18 14:25:15'),
(72, 29, NULL, 'Haier', '20-01-1994', 'X509', 'Standard', 'Industrial', '2000MHz', '2017-07-18 14:25:15', '2017-07-18 14:25:35', '2017-07-18 14:25:35'),
(73, 29, NULL, 'Haier', '20-01-1994', 'X509', 'Standard', 'Industrial', '2000MHz', '2017-07-18 14:25:35', '2017-07-18 14:27:06', '2017-07-18 14:27:06'),
(74, 29, NULL, 'Haier', '20-01-1994', 'X509', 'Standard', 'Industrial', '2000MHz', '2017-07-18 14:27:06', '2017-07-18 14:27:06', NULL),
(75, 31, NULL, 'HITACHI', '20-01-1994', 'X509', 'Standard', 'Industrial', '2000MHz', '2017-07-18 14:37:00', '2017-07-18 14:37:00', NULL),
(76, NULL, 30, 'Omega', '', 'PL908', 'LION', '', '', '2017-07-18 15:14:48', '2017-07-18 15:14:48', NULL),
(77, NULL, 16, 'HITACHI', '', 'CROSSFIRE 212', 'Hi Tech', '', '', '2017-07-18 17:00:14', '2017-07-18 17:00:14', NULL),
(78, 33, NULL, 'Motorola', '12/08/2009', 'Motorola', 'MOtt', '700MW', '1000MW', '2017-07-18 18:01:25', '2017-07-18 18:01:25', NULL),
(79, 34, NULL, 'HITACHI', '2017-07-18', 'HTH', 'HTM', '350MW', '4000MW', '2017-07-18 18:42:42', '2017-07-18 18:42:42', NULL),
(80, 65, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-08-08 12:17:05', '2017-08-08 12:17:05', NULL),
(81, NULL, 8, 'airtel', '', 'gold', 'card', '', '', '2017-08-08 12:46:01', '2017-08-08 12:46:01', NULL),
(82, 67, NULL, 'Motorola', '2017-08-01', 'Motol234', 'MOtt', '12000MW', '40000KV', '2017-08-08 13:07:22', '2017-08-08 13:07:22', NULL),
(83, NULL, 15, 'Motorola', '', 'MOTO123', 'Motorola', '', '', '2017-08-08 13:09:46', '2017-08-08 13:09:46', NULL),
(84, 68, NULL, 'PARKS', '2012-06-30', 'X3000', 'Parallel', '70MHz', '250MHz', '2017-08-08 14:08:43', '2017-08-08 14:08:43', NULL),
(85, NULL, 13, 'HITACHI', '', 'HTM', 'HTH-500', '', '', '2017-08-08 15:03:03', '2017-08-08 15:03:03', NULL),
(86, NULL, 26, 'gold', '', 'gsm', 'data', '', '', '2017-08-08 15:22:59', '2017-08-08 15:22:59', NULL),
(87, 69, NULL, 'Motorola', '2017-08-09', 'Motol234', 'MOtt', '12000MW', 'HW4000', '2017-08-09 15:21:55', '2017-08-09 15:21:55', NULL),
(88, 71, NULL, 'Hitachi', '08/08/2001', 'H546', 'N/A', '300MW', '6700MW', '2017-08-11 15:01:14', '2017-08-11 15:01:14', NULL),
(89, NULL, 48, 'GOLD', '', 'T9869', 'TOWER', '', '', '2017-08-11 15:05:28', '2017-08-11 15:05:28', NULL),
(90, 72, NULL, 'Hitachi', '08/08/2001', 'H546', 'N/A', '300MW', '6700MW', '2017-08-11 15:21:55', '2017-08-11 15:21:55', NULL),
(91, NULL, 49, 'MOTOROLA', '', 'T4586', 'TOWER', '', '', '2017-08-11 15:23:37', '2017-08-11 15:23:37', NULL),
(92, NULL, 50, 'SWIFT', '', 'T1201', 'TOWER', '', '', '2017-08-11 15:33:12', '2017-08-11 15:33:12', NULL),
(93, 73, NULL, 'Hitachi', '08/08/2001', 'H546', 'N/A', '300MW', '6700MW', '2017-08-11 15:41:31', '2017-08-11 15:41:31', NULL),
(94, 74, NULL, 'HITACHI', '2017-08-15', 'HTM', 'HTH', '340MW', '200MW', '2017-08-15 12:29:03', '2017-08-15 12:29:03', NULL),
(95, 75, NULL, 'Hitachi', '08/08/2001', 'H546', 'N/A', '300MW', '6700MW', '2017-08-18 12:51:17', '2017-08-18 12:51:17', NULL),
(96, NULL, 53, 'N/A', '', 'N/A', 'N/A', '', '', '2017-08-18 13:35:56', '2017-08-18 13:35:56', NULL),
(97, 76, NULL, 'Hitachi', '08/08/2001', 'H546', 'N/A', '300MW', '6700MW', '2017-08-28 14:14:35', '2017-08-28 14:14:35', NULL),
(98, 77, NULL, 'Motorola', '2017-08-08', 'Motto123', 'Mobile', '2000MW', '3000KV', '2017-08-29 13:10:51', '2017-08-29 13:10:51', NULL),
(99, 77, NULL, 'Motorola', '2017-08-08', 'Motto123', 'Mobile', '2000MW', '3000MW', '2017-08-29 13:11:47', '2017-08-29 13:11:47', NULL),
(100, 78, NULL, 'HUAWEI', '2017-08-29', 'HW100', 'HHW', '200MW', '300MW', '2017-08-29 14:16:45', '2017-08-29 14:16:45', NULL),
(101, 81, NULL, 'HP', '2017-09-14', 'CX 100', 'Server', '1,000,000', '950,000', '2017-09-14 13:08:53', '2017-09-14 13:08:53', NULL),
(102, NULL, 60, 'OMEGA', '', 'P921', 'PATEK PHILLIPE', '', '', '2017-09-20 11:20:45', '2017-09-20 11:20:45', NULL),
(103, 76, NULL, 'Hitachi', '08/08/2001', 'H546', 'N/A', '300MW', '6700MW', '2017-09-20 11:43:54', '2017-09-20 11:43:54', NULL),
(104, 95, NULL, 'HUAWEI', '2017-09-26', 'HW100', 'HHW', '200MW', 'HW4000', '2017-09-26 11:03:42', '2017-09-26 11:03:42', NULL),
(105, NULL, 66, 'Huawei', '', 'Huawei-4500', 'Router', '', '', '2017-09-27 15:41:47', '2017-09-27 15:41:47', NULL),
(106, 95, NULL, 'HUAWEI', '2017-09-26', 'HW100', 'HHW', '200MW', 'HW4000', '2017-09-28 19:38:46', '2017-09-28 19:38:46', NULL),
(107, 99, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-09-29 00:17:25', '2017-09-29 00:17:25', NULL),
(108, 95, NULL, 'HUAWEI', '2017-09-26', 'HW100', 'HHW', '200MW', 'HW4000', '2017-09-29 11:44:02', '2017-09-29 11:44:02', NULL),
(109, 95, NULL, 'HUAWEI', '2017-09-26', 'HW100', 'HHW', '200MW', 'HW4000', '2017-09-29 11:44:02', '2017-09-29 11:44:02', NULL),
(110, 101, NULL, 'HUAWEI', '2016-12-16', 'HWAMM9', 'Router', '245', '500', '2017-10-05 15:00:58', '2017-10-05 15:00:58', NULL),
(111, NULL, 73, NULL, '', NULL, NULL, '', '', '2017-10-06 14:41:47', '2017-10-06 14:41:47', NULL),
(112, 95, NULL, 'HUAWEI', '2017-09-26', 'HW100', 'HHW', '200MW', 'HW4000', '2017-10-06 14:46:49', '2017-10-06 14:46:49', NULL),
(113, 95, NULL, 'HUAWEI', '2017-09-26', 'HW100', 'HHW', '200MW', 'HW4000', '2017-10-06 14:46:49', '2017-10-06 14:46:49', NULL),
(114, 95, NULL, 'HUAWEI', '2017-09-26', 'HW100', 'HHW', '200MW', 'HW4000', '2017-10-06 14:46:49', '2017-10-06 14:46:49', NULL),
(115, 95, NULL, 'HUAWEI', '2017-09-26', 'HW100', 'HHW', '200MW', 'HW4000', '2017-10-06 14:46:49', '2017-10-06 14:46:49', NULL),
(116, 119, NULL, 'HUAWEI', '2016-10-12', 'DBS3900', 'Distributed Base Stations', '340MW', '200MW', '2017-10-13 14:33:49', '2017-10-13 14:33:49', NULL),
(117, 119, NULL, 'HUAWEI', '2016-10-12', 'DBS3900', 'Distributed Base Stations', '340MW', '200MW', '2017-10-13 14:34:12', '2017-10-13 14:37:12', '2017-10-13 14:37:12'),
(118, 119, NULL, 'HUAWEI', '2016-10-12', 'DBS3900', 'Distributed Base Stations', '100000', '10000', '2017-10-13 14:37:12', '2017-10-13 14:37:12', NULL),
(119, NULL, 74, 'HUAWEI', '', 'DBS 3900', 'Huawei LTE Distributed Base Station', '', '', '2017-10-13 15:00:31', '2017-10-13 15:00:31', NULL),
(120, 121, NULL, 'HUAWEI', '2016-10-17', 'DBS3900', 'Distributed Base Stations', '245', '500', '2017-10-17 10:37:38', '2017-10-17 10:37:38', NULL),
(121, NULL, 75, 'HUAWEI', '', 'DBS 3900', 'Huawei LTE Distributed Base Station', '', '', '2017-10-17 11:43:51', '2017-10-17 11:43:51', NULL),
(122, 122, NULL, 'HUAWEI', '2016-10-17', 'DBS3900', 'Distributed Base Stations', '245', '500', '2017-10-17 13:17:12', '2017-10-17 13:17:12', NULL),
(123, NULL, 76, 'HUAWEI', '', 'DBS 3900', 'Huawei LTE Distributed Base Station', '', '', '2017-10-17 14:54:55', '2017-10-17 14:54:55', NULL),
(124, 130, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-30 12:27:17', '2017-10-30 12:27:17', NULL),
(125, 133, NULL, 'HUAWEI', '2017-10-31', 'DBS3900', 'Router', '245', '500', '2017-10-31 14:20:44', '2017-10-31 14:20:44', NULL),
(126, 134, NULL, 'HUAWEI', '1983-06-15', 'DBS3900', 'Distributed Base Stations', '245', '500', '2017-10-31 14:23:44', '2017-10-31 14:23:44', NULL),
(127, NULL, 78, 'HUAWEI', '', 'DBS 3900', 'Huawei LTE Distributed Base Station', '', '', '2017-10-31 14:43:28', '2017-10-31 14:43:28', NULL),
(128, 137, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-07 16:02:41', '2017-11-07 16:02:41', NULL),
(129, 143, NULL, 'nokia', '21/06/2008', 'nkh234', 'na', '350mw', '600mw', '2017-11-14 17:14:04', '2017-11-14 17:22:30', '2017-11-14 17:22:30'),
(130, 143, NULL, 'nokia', '21/06/2008', 'nkh234', 'na', '350mw', '600mw', '2017-11-14 17:14:21', '2017-11-14 17:22:30', '2017-11-14 17:22:30'),
(131, 143, NULL, 'nokia', '21/06/2008', 'nkh234', 'na', '350mw', '600mw', '2017-11-14 17:22:30', '2017-11-14 17:22:30', NULL),
(132, NULL, 84, 'N/A', '', 'N/A', 'N/A', '', '', '2018-01-28 13:55:42', '2018-01-28 13:55:42', NULL),
(133, 147, NULL, 'HUAWEI', '2015-12-05', 'HAW100', 'Radio', '500', '400', '2018-12-05 11:40:34', '2018-12-05 11:41:06', '2018-12-05 11:41:06'),
(134, 147, NULL, 'HUAWEI', '2015-12-05', 'HAW100', 'Radio', '500', '400', '2018-12-05 11:41:37', '2018-12-05 11:44:28', '2018-12-05 11:44:28'),
(135, 147, NULL, 'HUAWEI', '2015-12-05', 'HAW100', 'Radio', '500', '400', '2018-12-05 11:45:14', '2018-12-05 11:45:28', '2018-12-05 11:45:28'),
(136, 147, NULL, 'HUAWEI', '2015-12-05', 'HAW100', 'Radio', '500', '400', '2018-12-05 11:45:45', '2018-12-05 11:46:22', '2018-12-05 11:46:22'),
(137, 147, NULL, 'HUAWEI', '2015-12-05', 'HAW100', 'Radio', '500', '400', '2018-12-05 11:46:22', '2018-12-05 11:46:42', '2018-12-05 11:46:42'),
(138, 147, NULL, 'HUAWEI', '2015-12-05', 'HAW100', 'Radio', '500', '400', '2018-12-05 11:46:42', '2018-12-05 11:47:06', '2018-12-05 11:47:06'),
(139, 147, NULL, 'HUAWEI', '2015-12-05', 'HAW100', 'Radio', '500', '400', '2018-12-05 11:47:07', '2018-12-05 11:47:07', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `existing_ispcs`
--

CREATE TABLE `existing_ispcs` (
  `id` int(10) UNSIGNED NOT NULL,
  `application_ispc_id` int(11) NOT NULL,
  `existing_ispc` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `switch_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `switch_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `switch_function` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `switch_location` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ispc_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `existing_ispcs`
--

INSERT INTO `existing_ispcs` (`id`, `application_ispc_id`, `existing_ispc`, `switch_name`, `switch_type`, `switch_function`, `switch_location`, `ispc_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'yes', 'AP-Link', 'Waves', 'SCP', 'benin', '12', '2017-08-10 15:45:44', '2017-06-29 12:11:46', '2017-08-10 15:45:44'),
(2, 1, 'yes', 'Drown', 'Akile', 'MSC', 'kaduna', '13', '2017-08-10 15:45:44', '2017-06-29 12:11:46', '2017-08-10 15:45:44'),
(3, 2, 'ASA', 'SW-9898', 'HITACHI', 'MSC', 'Kebbi', '32', NULL, '2017-07-13 19:29:51', '2017-07-13 19:29:51'),
(4, 2, 'DSD', 'SW-0909', 'MODEL', 'SCP', 'Abuja, Wuse', '55', NULL, '2017-07-13 19:29:51', '2017-07-13 19:29:51'),
(5, 3, 'fdf', 'hhh', '', '', '', '', '2017-07-14 12:13:28', '2017-07-14 12:02:40', '2017-07-14 12:13:28'),
(6, 3, '0', 'Motorola', 'Motorola', 'MSC', 'Abuja', '123', NULL, '2017-07-14 12:13:28', '2017-07-14 12:13:28'),
(7, 4, '2', 'HTH-500', 'Hitachi', 'MSC', 'Utako', '', NULL, '2017-07-18 14:30:15', '2017-07-18 14:30:15'),
(8, 5, 'NIL', 'NIL', 'NIL', 'NIL', 'NIL', 'NIL', NULL, '2017-07-18 17:31:19', '2017-07-18 17:31:19'),
(9, 6, '2345', 'KIA', 'KIA890', 'ISC', 'Delta', '2349', NULL, '2017-07-18 17:40:44', '2017-07-18 17:40:44'),
(10, 7, 'NIL', 'NIL', 'NIL', 'NIL', 'NIL', 'NIL', NULL, '2017-07-18 17:43:29', '2017-07-18 17:43:29'),
(11, 18, 'Witch', 'of', 'Oz', 'ISC', 'VI', 'RED', NULL, '2017-08-08 10:31:32', '2017-08-08 10:31:32'),
(12, 16, '17', '9Mobile', 'Broadband', 'STP', 'Abuja', 'L809', NULL, '2017-08-08 16:56:56', '2017-08-08 16:56:56'),
(13, 25, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, '2017-08-10 14:04:50', '2017-08-10 14:04:50'),
(14, 1, 'yes', 'N/A', 'N/A', 'N/A', 'N/A', '12', NULL, '2017-08-10 15:45:44', '2017-08-10 15:45:44'),
(15, 1, 'yes', 'N/A', 'N/A', 'N/A', 'N/A', '13', NULL, '2017-08-10 15:45:44', '2017-08-10 15:45:44'),
(16, 26, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, '2017-08-10 16:56:51', '2017-08-10 16:56:51'),
(17, 27, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, '2017-08-11 10:45:06', '2017-08-11 10:45:06'),
(18, 28, 'NIL', 'NIL', 'NIL', 'NIL', 'NIL', 'NIL', NULL, '2017-08-11 15:32:36', '2017-08-11 15:32:36'),
(19, 29, '590', 'Picanto', 'Picanto', 'MSC', 'Lagos', 'IS56', NULL, '2017-08-11 15:41:59', '2017-08-11 15:41:59'),
(20, 30, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, '2017-08-18 13:45:21', '2017-08-18 13:45:21'),
(21, 31, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, '2017-08-28 14:40:27', '2017-08-28 14:40:27'),
(22, 35, '6-089', 'SMC-112', 'HUAWEI', 'MSC', 'Kaduna', 'AAS32', NULL, '2017-09-27 16:07:52', '2017-09-27 16:07:52'),
(23, 39, '', '', '', '', '', '', NULL, '2017-10-17 12:09:06', '2017-10-17 12:09:06'),
(24, 40, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, '2017-11-10 17:25:05', '2017-11-10 17:25:05'),
(25, 41, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, '2018-01-28 14:47:13', '2018-01-28 14:47:13');

-- --------------------------------------------------------

--
-- Table structure for table `fees`
--

CREATE TABLE `fees` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `amount` double(12,2) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `last_updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `reserved` int(11) NOT NULL DEFAULT '0',
  `frequency_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `fees`
--

INSERT INTO `fees` (`id`, `name`, `amount`, `created_by`, `last_updated_by`, `created_at`, `updated_at`, `deleted_at`, `reserved`, `frequency_id`) VALUES
(1, '4000', 0.00, 2, 2, '2017-05-09 16:04:17', '2017-05-12 17:39:49', '2017-05-12 17:39:49', 0, 0),
(2, 'Inception Fee', 350000.00, 2, 2, '2017-05-09 16:07:42', '2017-05-12 17:41:32', NULL, 0, 0),
(3, 'Site Visit Fee', 540000.00, 2, 2, '2017-05-11 18:54:48', '2017-05-15 14:21:35', NULL, 0, 1),
(4, 'Standard', 5000000.00, 2, 2, '2017-05-12 12:39:52', '2017-05-15 14:26:47', '2017-05-15 14:26:47', 0, 3),
(5, 'Licensing Fees', 3400000.00, 2, 2, '2017-05-15 13:58:16', '2017-05-15 14:21:20', NULL, 0, 2),
(6, 'Number', 30.00, 2, 2, '2017-05-17 11:28:38', '2017-05-17 11:28:38', NULL, 0, 7),
(7, 'Quarterly', 45.23, 2, 2, '2017-05-17 14:24:36', '2017-05-17 14:24:36', NULL, 0, 7),
(8, 'active', 450.23, 2, 2, '2017-05-17 14:25:04', '2017-05-18 12:20:14', '2017-05-18 12:20:14', 0, 6),
(9, 'Pending', 30.00, 2, 2, '2017-05-17 15:23:10', '2017-05-17 15:23:10', NULL, 0, 6),
(10, 'Access Code Charge', 700000.00, 2, 2, '2017-06-07 11:19:34', '2017-06-16 12:36:23', NULL, 1, 0),
(11, 'Subscriber Lines', 50.00, 2, 2, '2017-06-07 11:19:55', '2017-07-14 15:23:51', NULL, 1, 0),
(12, 'Checking Fee', 600000.00, 2, 2, '2017-06-16 12:04:47', '2017-06-16 12:11:32', '2017-06-16 12:11:32', 0, 6),
(13, 'Logging Fees', 300000.00, 2, 2, '2017-06-16 12:08:32', '2017-06-16 12:10:18', NULL, 0, 6),
(14, 'Consultancy fee', 50000.00, 2, 2, '2017-06-16 12:18:20', '2017-09-07 16:31:35', NULL, 0, 8);

-- --------------------------------------------------------

--
-- Table structure for table `frequencies`
--

CREATE TABLE `frequencies` (
  `id` int(10) UNSIGNED NOT NULL,
  `fee_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `duration` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `last_updated_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `frequencies`
--

INSERT INTO `frequencies` (`id`, `fee_id`, `name`, `duration`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `last_updated_by`) VALUES
(1, 0, 'Annual', 32, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 2017, 2017),
(2, 0, 'Monthly', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 2017, 2017),
(3, 0, 'Quarterly', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 2017, 2017),
(5, 0, 'Day', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2017-05-15 14:59:57', 2017, 2017),
(6, 0, 'Annually', 365, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2017-05-16 10:38:50', 2017, 0),
(7, 0, 'Monthly', 30, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2017-05-17 11:22:33', 2017, 0),
(8, 0, 'weekly', 7, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2017-05-17 16:14:38', 2017, 0);

-- --------------------------------------------------------

--
-- Table structure for table `frequency_coverages`
--

CREATE TABLE `frequency_coverages` (
  `id` int(10) UNSIGNED NOT NULL,
  `application_number_id` int(11) DEFAULT NULL,
  `application_short_id` int(11) DEFAULT NULL,
  `frequency` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `coverage_area` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `frequency_coverages`
--

INSERT INTO `frequency_coverages` (`id`, `application_number_id`, `application_short_id`, `frequency`, `coverage_area`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 8, NULL, 'MHz', 'Abuja', '2017-05-30 16:04:24', '2017-05-30 16:04:24', NULL),
(2, 9, NULL, 'MHz', 'Abuja', '2017-05-30 16:09:53', '2017-05-30 16:09:53', NULL),
(3, 10, NULL, 'MHz', 'Abuja', '2017-05-30 16:10:48', '2017-05-30 16:10:48', NULL),
(4, 11, NULL, 'MHz', 'Abuja', '2017-05-30 16:11:16', '2017-05-30 16:11:16', NULL),
(5, 13, NULL, '104.5', 'National', '2017-06-12 13:29:50', '2017-06-12 13:29:50', NULL),
(6, 14, NULL, '231.5MHz', 'Abuja', '2017-06-14 16:18:16', '2017-06-14 16:18:16', NULL),
(7, 15, NULL, '3', 'National', '2017-06-21 18:07:57', '2017-06-21 18:07:57', NULL),
(8, 16, NULL, '104MHz', 'National', '2017-06-21 19:10:35', '2017-06-21 19:10:35', NULL),
(9, 17, NULL, 'nil', 'national', '2017-06-22 11:42:05', '2017-06-22 11:42:05', NULL),
(10, 18, NULL, 'MHz', 'National', '2017-06-28 13:21:49', '2017-06-28 13:21:49', NULL),
(11, 19, NULL, '104.MHz', 'Abuja', '2017-06-30 16:01:33', '2017-06-30 16:01:33', NULL),
(12, 20, NULL, 'na', 'na', '2017-07-05 17:07:59', '2017-07-05 17:07:59', NULL),
(13, 19, NULL, '104.MHz', 'Abuja', '2017-07-11 16:22:05', '2017-07-11 17:27:21', '2017-07-11 17:27:21'),
(14, 19, NULL, '104.MHz', 'Abuja', '2017-07-11 16:22:39', '2017-07-11 17:27:21', '2017-07-11 17:27:21'),
(15, 19, NULL, '104.MHz', 'Abuja', '2017-07-11 16:22:39', '2017-07-11 17:27:21', '2017-07-11 17:27:21'),
(16, 19, NULL, '104.MHz', 'Abuja', '2017-07-11 16:24:44', '2017-07-11 17:27:21', '2017-07-11 17:27:21'),
(17, 19, NULL, '104.MHz', 'Abuja', '2017-07-11 16:24:44', '2017-07-11 17:27:21', '2017-07-11 17:27:21'),
(18, 19, NULL, '104.MHz', 'Abuja', '2017-07-11 16:24:44', '2017-07-11 17:27:21', '2017-07-11 17:27:21'),
(19, 19, NULL, '104.MHz', 'Abuja', '2017-07-11 16:24:44', '2017-07-11 17:27:21', '2017-07-11 17:27:21'),
(20, 19, NULL, '104.MHz', 'Abuja', '2017-07-11 17:04:21', '2017-07-11 17:27:21', '2017-07-11 17:27:21'),
(21, 19, NULL, '104.MHz', 'Abuja', '2017-07-11 17:04:21', '2017-07-11 17:27:21', '2017-07-11 17:27:21'),
(22, 19, NULL, '104.MHz', 'Abuja', '2017-07-11 17:04:21', '2017-07-11 17:27:21', '2017-07-11 17:27:21'),
(23, 19, NULL, '104.MHz', 'Abuja', '2017-07-11 17:04:21', '2017-07-11 17:27:21', '2017-07-11 17:27:21'),
(24, 19, NULL, '104.MHz', 'Abuja', '2017-07-11 17:04:21', '2017-07-11 17:27:21', '2017-07-11 17:27:21'),
(25, 19, NULL, '104.MHz', 'Abuja', '2017-07-11 17:04:21', '2017-07-11 17:27:21', '2017-07-11 17:27:21'),
(26, 19, NULL, '104.MHz', 'Abuja', '2017-07-11 17:04:21', '2017-07-11 17:27:21', '2017-07-11 17:27:21'),
(27, 19, NULL, '104.MHz', 'Abuja', '2017-07-11 17:04:21', '2017-07-11 17:27:21', '2017-07-11 17:27:21'),
(28, 19, NULL, '104.MHz', 'Abuja', '2017-07-11 17:27:21', '2017-07-11 17:40:55', '2017-07-11 17:40:55'),
(29, 19, NULL, '104.MHz', 'Abuja', '2017-07-11 17:40:55', '2017-07-11 17:46:58', '2017-07-11 17:46:58'),
(30, 19, NULL, '104.MHz', 'Abuja', '2017-07-11 17:46:32', '2017-07-11 17:46:58', '2017-07-11 17:46:58'),
(31, 19, NULL, '104.MHz', 'Abuja', '2017-07-11 17:46:32', '2017-07-11 17:46:58', '2017-07-11 17:46:58'),
(32, 19, NULL, '104.MHz', 'Abuja', '2017-07-11 17:46:58', '2017-07-12 15:03:18', '2017-07-12 15:03:18'),
(33, 19, NULL, '104.MHz', 'Abuja', '2017-07-11 17:49:57', '2017-07-12 15:03:18', '2017-07-12 15:03:18'),
(34, 19, NULL, '104.MHz', 'Abuja', '2017-07-11 17:49:57', '2017-07-12 15:03:18', '2017-07-12 15:03:18'),
(35, 19, NULL, '104.MHz', 'Abuja', '2017-07-12 15:03:18', '2017-07-12 15:03:18', NULL),
(36, 21, NULL, '102.5MHz', 'Abuja', '2017-07-12 15:16:40', '2017-07-12 15:16:40', NULL),
(37, 17, NULL, 'nil', 'national', '2017-07-13 16:26:04', '2017-07-13 16:26:04', NULL),
(38, 25, NULL, '104.5MHz', 'Abuja', '2017-07-14 15:50:11', '2017-07-14 15:50:11', NULL),
(39, 15, NULL, '3', 'National', '2017-07-15 02:16:29', '2017-07-15 02:16:29', NULL),
(40, 29, NULL, NULL, NULL, '2017-07-18 14:27:06', '2017-07-18 14:27:06', NULL),
(41, 31, NULL, NULL, NULL, '2017-07-18 14:37:00', '2017-07-18 14:37:00', NULL),
(42, 33, NULL, '12MHz', 'National', '2017-07-18 18:01:25', '2017-07-18 18:01:25', NULL),
(43, 34, NULL, NULL, NULL, '2017-07-18 18:42:42', '2017-07-18 18:42:42', NULL),
(44, 65, NULL, NULL, NULL, '2017-08-08 12:17:06', '2017-08-08 12:17:06', NULL),
(45, 67, NULL, '12MHz', 'National', '2017-08-08 13:07:22', '2017-08-08 13:07:22', NULL),
(46, 68, NULL, NULL, NULL, '2017-08-08 14:08:43', '2017-08-08 14:08:43', NULL),
(47, 69, NULL, NULL, NULL, '2017-08-09 15:21:55', '2017-08-09 15:21:55', NULL),
(48, 71, NULL, NULL, NULL, '2017-08-11 15:01:14', '2017-08-11 15:01:14', NULL),
(49, 72, NULL, NULL, NULL, '2017-08-11 15:21:55', '2017-08-11 15:21:55', NULL),
(50, 73, NULL, NULL, NULL, '2017-08-11 15:41:31', '2017-08-11 15:41:31', NULL),
(51, 74, NULL, NULL, NULL, '2017-08-15 12:29:03', '2017-08-15 12:29:03', NULL),
(52, 75, NULL, NULL, NULL, '2017-08-18 12:51:17', '2017-08-18 12:51:17', NULL),
(53, 76, NULL, NULL, NULL, '2017-08-28 14:14:35', '2017-08-28 14:14:35', NULL),
(54, 77, NULL, NULL, NULL, '2017-08-29 13:10:51', '2017-08-29 13:10:51', NULL),
(55, 77, NULL, NULL, NULL, '2017-08-29 13:11:47', '2017-08-29 13:11:47', NULL),
(56, 78, NULL, NULL, NULL, '2017-08-29 14:16:45', '2017-08-29 14:16:45', NULL),
(57, 81, NULL, NULL, NULL, '2017-09-14 13:08:53', '2017-09-14 13:08:53', NULL),
(58, 76, NULL, NULL, NULL, '2017-09-20 11:43:54', '2017-09-20 11:43:54', NULL),
(59, 95, NULL, NULL, NULL, '2017-09-26 11:03:42', '2017-09-26 11:03:42', NULL),
(60, 95, NULL, NULL, NULL, '2017-09-28 19:38:46', '2017-09-28 19:38:46', NULL),
(61, 99, NULL, '98.9MHz', 'Nationwide', '2017-09-29 00:17:25', '2017-09-29 00:17:25', NULL),
(62, 95, NULL, NULL, NULL, '2017-09-29 11:44:02', '2017-09-29 11:44:02', NULL),
(63, 95, NULL, NULL, NULL, '2017-09-29 11:44:02', '2017-09-29 11:44:02', NULL),
(64, 101, NULL, '540Hz', 'Abuja', '2017-10-05 15:00:58', '2017-10-05 15:00:58', NULL),
(65, 95, NULL, NULL, NULL, '2017-10-06 14:46:49', '2017-10-06 14:46:49', NULL),
(66, 95, NULL, NULL, NULL, '2017-10-06 14:46:49', '2017-10-06 14:46:49', NULL),
(67, 95, NULL, NULL, NULL, '2017-10-06 14:46:49', '2017-10-06 14:46:49', NULL),
(68, 95, NULL, NULL, NULL, '2017-10-06 14:46:49', '2017-10-06 14:46:49', NULL),
(69, 119, NULL, '1800MHz', 'Abuja', '2017-10-13 14:33:49', '2017-10-13 14:33:49', NULL),
(70, 119, NULL, '900MHz', 'Nationwide', '2017-10-13 14:33:49', '2017-10-13 14:33:49', NULL),
(71, 119, NULL, '1800MHz', 'Abuja', '2017-10-13 14:34:12', '2017-10-13 14:34:12', NULL),
(72, 119, NULL, '900MHz', 'Nationwide', '2017-10-13 14:34:12', '2017-10-13 14:34:12', NULL),
(73, 119, NULL, '1800MHz', 'Abuja', '2017-10-13 14:37:12', '2017-10-13 14:37:12', NULL),
(74, 119, NULL, '900MHz', 'Nationwide', '2017-10-13 14:37:12', '2017-10-13 14:37:12', NULL),
(75, 119, NULL, '1800MHz', 'Abuja', '2017-10-13 14:37:12', '2017-10-13 14:37:12', NULL),
(76, 119, NULL, '900MHz', 'Nationwide', '2017-10-13 14:37:12', '2017-10-13 14:37:12', NULL),
(77, 121, NULL, '1800MHz', 'Abuja', '2017-10-17 10:37:38', '2017-10-17 10:37:38', NULL),
(78, 122, NULL, '5000', 'Abuja', '2017-10-17 13:17:12', '2017-10-17 13:17:12', NULL),
(79, 130, NULL, NULL, NULL, '2017-10-30 12:27:17', '2017-10-30 12:27:17', NULL),
(80, 133, NULL, NULL, NULL, '2017-10-31 14:20:44', '2017-10-31 14:20:44', NULL),
(81, 134, NULL, '1800MHz', 'Abuja', '2017-10-31 14:23:44', '2017-10-31 14:23:44', NULL),
(82, 137, NULL, '1 KHz', 'National', '2017-11-07 16:02:41', '2017-11-07 16:02:41', NULL),
(83, 143, NULL, '1 KHz', 'National', '2017-11-14 17:14:04', '2017-11-14 17:22:30', '2017-11-14 17:22:30'),
(84, 143, NULL, '1 KHz', 'National', '2017-11-14 17:14:21', '2017-11-14 17:22:30', '2017-11-14 17:22:30'),
(85, 143, NULL, '1 KHz', 'National', '2017-11-14 17:22:30', '2017-11-14 17:22:30', NULL),
(86, 147, NULL, '500MHz', 'Abuja', '2018-12-05 11:46:42', '2018-12-05 11:47:07', '2018-12-05 11:47:07'),
(87, 147, NULL, '500MHz', 'Abuja', '2018-12-05 11:47:08', '2018-12-05 11:47:08', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(10) UNSIGNED NOT NULL,
  `original_name` text COLLATE utf8_unicode_ci NOT NULL,
  `filename` text COLLATE utf8_unicode_ci NOT NULL,
  `ápplication_number_id` int(11) DEFAULT NULL,
  `ápplication_short_id` int(11) DEFAULT NULL,
  `ápplication_ispc_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `interconnectors`
--

CREATE TABLE `interconnectors` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `point` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `agreement` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `application_number_id` int(11) DEFAULT NULL,
  `application_short_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `interconnectors`
--

INSERT INTO `interconnectors` (`id`, `company_name`, `point`, `date`, `agreement`, `application_number_id`, `application_short_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Apl', 'sales', '2017-05-25', '/tmp/phpH4NzCO', 11, NULL, '2017-05-30 16:11:16', '2017-05-30 16:11:16', NULL),
(2, 'mtn', 'nil', '23/11/2016', '/tmp/phpt8CQcZ', 4, NULL, '2017-05-31 13:27:10', '2017-05-31 13:27:10', NULL),
(3, 'KiaPicanto', 'telecom', '06/03/2016', '/tmp/php0rxaB2', 5, NULL, '2017-05-31 13:27:52', '2017-05-31 13:27:52', NULL),
(4, 'Motorola', 'POS', '12/6/2017', NULL, NULL, 7, '2017-06-12 12:21:40', '2017-06-12 12:21:40', NULL),
(5, 'MOLCOM', '2', '2017-06-12', NULL, 13, NULL, '2017-06-12 13:29:50', '2017-06-12 13:29:50', NULL),
(6, 'MOLCOM', '2', '2016-12-06', NULL, NULL, 11, '2017-06-12 14:14:52', '2017-06-12 14:14:52', NULL),
(7, 'MOLCOM', 'Abuja', '2016-05-26', NULL, NULL, 12, '2017-06-12 16:20:21', '2017-06-12 16:20:21', NULL),
(8, 'MOLCOM', 'Abuja', '2016-12-05', NULL, NULL, 13, '2017-06-12 16:28:41', '2017-06-12 16:28:41', NULL),
(9, 'MOLCOM', 'Abuja', '2016-12-05', NULL, NULL, 14, '2017-06-12 16:30:17', '2017-06-12 16:30:17', NULL),
(10, 'MOLCOM', 'Abuja', '2015/09/11', NULL, 14, NULL, '2017-06-14 16:18:16', '2017-06-14 16:18:16', NULL),
(11, 'Motorola', 'POS', '12/06/2017', NULL, NULL, 15, '2017-06-14 16:46:42', '2017-06-14 16:46:42', NULL),
(12, 'MOLCOM', 'Abuja', '2015/09/11', NULL, NULL, 16, '2017-06-21 17:58:10', '2017-07-18 16:59:53', '2017-07-18 16:59:53'),
(13, 'Motorola', 'POS', '2017-06-20', NULL, 15, NULL, '2017-06-21 18:07:57', '2017-07-13 16:30:37', '2017-07-13 16:30:37'),
(14, 'MOLCOM', '2', '2017-06-21', NULL, 16, NULL, '2017-06-21 19:10:35', '2017-06-21 19:10:35', NULL),
(15, 'MOLCOM', '1', '2017-06-21', 'docs/agree/NMS1498124525.1', 17, NULL, '2017-06-22 11:42:05', '2017-06-22 11:42:05', NULL),
(16, 'Hauwei', 'POS', '2017-06-28', 'docs/agree/NMS1498648909.1', 18, NULL, '2017-06-28 13:21:49', '2017-06-28 13:21:49', NULL),
(17, 'Starcomm', 'POS', '12/09/2000', NULL, NULL, 17, '2017-06-28 14:27:02', '2017-06-28 14:27:02', NULL),
(18, 'Hauwei', 'POS', '6/09/2000', NULL, NULL, 18, '2017-06-28 14:59:21', '2017-06-28 14:59:21', NULL),
(19, 'Starcomm', 'POS', '09/08/2000', NULL, NULL, 19, '2017-06-28 15:10:54', '2017-06-28 15:10:54', NULL),
(20, 'Starcomm', 'POS', '09/08/2000', NULL, NULL, 20, '2017-06-28 15:11:38', '2017-06-28 15:11:38', NULL),
(21, 'Starcomm', 'POS', '09/08/2000', NULL, NULL, 21, '2017-06-28 15:12:44', '2017-06-28 15:12:44', NULL),
(22, 'Starcomm', 'POS', '09/08/2000', NULL, NULL, 22, '2017-06-28 15:12:58', '2017-06-28 15:12:58', NULL),
(23, 'Starcomm', 'POS', '09/08/2000', NULL, NULL, 23, '2017-06-28 15:13:21', '2017-06-28 15:13:21', NULL),
(24, 'Starcomm', 'POS', '8/8/2000', NULL, NULL, 24, '2017-06-28 15:29:49', '2017-06-28 15:29:49', NULL),
(25, 'djj', '5', '2016-01-31', NULL, 19, NULL, '2017-06-29 16:14:01', '2017-06-29 16:47:15', '2017-06-29 16:47:15'),
(26, 'Here', '2', '2015-12-31', 'docs/agree/NMSNUM1498753841.1', 19, NULL, '2017-06-29 18:30:41', '2017-06-29 18:30:41', NULL),
(27, 'nil', 'nil', '06/07/2017', 'docs/agree/NMS1499267279.1', 20, NULL, '2017-07-05 17:07:59', '2017-07-05 17:07:59', NULL),
(28, 'MOLCOM', '3', '2017-07-12', 'docs/agree/NMSNUM1499865214.1', 21, NULL, '2017-07-12 15:13:34', '2017-07-12 15:13:34', NULL),
(29, 'MOLCOM', 'Abuja', '2017-01-01', NULL, NULL, 25, '2017-07-13 13:25:56', '2017-07-13 13:27:59', '2017-07-13 13:27:59'),
(30, 'MOLCOM', 'Abuja', '2017-01-01', NULL, NULL, 25, '2017-07-13 13:27:59', '2017-07-13 13:27:59', NULL),
(31, '9Mobile', 'Lagos', '20-09-2016', NULL, NULL, 26, '2017-07-14 12:04:08', '2017-08-10 12:40:02', '2017-08-10 12:40:02'),
(32, 'MOLCOM', 'Abuja', '2017-06-14', 'docs/agree/NMSNUM1500038473.1', 25, NULL, '2017-07-14 15:21:13', '2017-07-14 15:21:13', NULL),
(33, 'HITACHI', 'Lagos', '20-09-2016', NULL, NULL, 28, '2017-07-17 13:25:12', '2017-07-17 13:25:12', NULL),
(34, 'HiSense', 'Lagos', '2005-07-12', NULL, 29, NULL, '2017-07-18 13:32:53', '2017-07-18 14:10:46', '2017-07-18 14:10:46'),
(35, 'HiSense', 'Lagos', '23-01-2009', NULL, NULL, 29, '2017-07-18 13:41:47', '2017-07-18 13:41:47', NULL),
(36, 'HiSense', 'Lagos', '2005-07-12', '', 29, NULL, '2017-07-18 14:22:18', '2017-07-18 14:22:18', NULL),
(37, 'Dingo Technologies', 'Kaduna', '2013-06-11', '', 31, NULL, '2017-07-18 14:35:20', '2017-07-18 14:35:20', NULL),
(38, '9Mobile', 'Lagos', '23-01-2009', NULL, NULL, 30, '2017-07-18 15:13:19', '2017-07-18 15:13:19', NULL),
(39, 'MOLCOM', 'Abuja', '2015/09/11', NULL, NULL, 16, '2017-07-18 16:59:53', '2017-07-18 16:59:53', NULL),
(40, 'Visafone', 'POS', '2017-07-10', '', 33, NULL, '2017-07-18 17:56:10', '2017-07-18 17:56:10', NULL),
(41, 'MOLCOM', 'Abuja', '2017-07-18', '', 34, NULL, '2017-07-18 18:27:30', '2017-07-18 18:27:30', NULL),
(42, 'Misuka', 'Lagos', '2017-07-04', '', 42, NULL, '2017-07-21 14:14:54', '2017-07-21 14:14:54', NULL),
(43, 'MOLCOM', 'Abuja', '2017-08-08', '', 65, NULL, '2017-08-08 12:16:02', '2017-08-08 12:16:02', NULL),
(44, 'Motorola', 'POS', '2017-08-03', '', 67, NULL, '2017-08-08 12:51:26', '2017-08-08 12:51:26', NULL),
(45, 'SPARKS', 'Lagos', '2017-01-02', '', 68, NULL, '2017-08-08 14:05:04', '2017-08-08 14:05:04', NULL),
(46, 'MOLCOM', 'Abuja', '2017-08-10', NULL, NULL, 44, '2017-08-09 11:13:00', '2017-08-09 11:13:00', NULL),
(47, 'Motorola', 'POS', '2017-08-09', '', 69, NULL, '2017-08-09 15:20:35', '2017-08-10 12:01:35', '2017-08-10 12:01:35'),
(48, 'Motorola', 'POS', '2017-08-09', '', 69, NULL, '2017-08-10 12:01:35', '2017-08-10 12:01:35', NULL),
(49, '9Mobile', 'Lagos', '2017-08-10', NULL, NULL, 26, '2017-08-10 12:40:02', '2017-08-10 12:46:47', '2017-08-10 12:46:47'),
(50, '9Mobile', 'Lagos', '2017-08-10', NULL, NULL, 26, '2017-08-10 12:46:47', '2017-08-10 12:47:04', '2017-08-10 12:47:04'),
(51, '9Mobile', 'Lagos', '2017-08-10', NULL, NULL, 26, '2017-08-10 12:47:04', '2017-08-10 12:47:04', NULL),
(52, 'Molcom MUlti-Concepts Limited', '8', '11/08/2017', '', 71, NULL, '2017-08-11 14:58:56', '2017-08-11 14:58:56', NULL),
(53, 'MOLCOM', '2', '2017-08-11', NULL, NULL, 48, '2017-08-11 15:03:01', '2017-08-11 15:03:01', NULL),
(54, 'Molcom MUlti-Concepts Limited', '4', '11/08/2017', '', 72, NULL, '2017-08-11 15:19:54', '2017-08-11 15:19:54', NULL),
(55, 'MODULAR', '2', '2017-08-11', NULL, NULL, 49, '2017-08-11 15:22:11', '2017-08-11 15:22:11', NULL),
(56, 'ESTADYSTA', '4', '2017-08-11', NULL, NULL, 50, '2017-08-11 15:31:27', '2017-08-11 15:31:27', NULL),
(57, 'Molcom MUlti-Concepts Limited', '8', '11/08/2017', '', 73, NULL, '2017-08-11 15:40:17', '2017-08-11 15:40:17', NULL),
(58, 'MOLCOM', 'Abuja', '2017-08-15', '', 74, NULL, '2017-08-15 12:27:55', '2017-08-15 12:27:55', NULL),
(59, 'Molcom MUlti-Concepts Limited', '8', '11/08/2017', '', 75, NULL, '2017-08-18 12:42:58', '2017-08-18 12:42:58', NULL),
(60, 'Molcom MUlti-Concepts Limited', '8', '11/08/2017', NULL, NULL, 53, '2017-08-18 13:33:10', '2017-08-18 13:33:10', NULL),
(61, 'Molcom MUlti-Concepts Limited', '8', '11/08/2017', '', 76, NULL, '2017-08-21 15:29:17', '2017-08-21 15:29:17', NULL),
(62, 'Motorola', 'Motto', '2017-08-15', '', 77, NULL, '2017-08-29 13:08:44', '2017-08-29 13:08:44', NULL),
(63, 'MOLCOM', '1', '2017-08-29', '', 78, NULL, '2017-08-29 14:11:20', '2017-08-29 14:11:20', NULL),
(64, 'MTN', 'Lagos', '2017-09-14', '', 81, NULL, '2017-09-14 13:05:37', '2017-09-14 13:05:37', NULL),
(65, 'Molcom MUlti-Concepts Limited', '4', '11/08/2017', '', 82, NULL, '2017-09-18 06:13:55', '2017-09-18 06:13:55', NULL),
(66, 'MOLCOM', 'POS', '2017-09-19', '', 83, NULL, '2017-09-19 13:14:53', '2017-09-19 13:14:53', NULL),
(67, 'BANG & OLUFSEN', 'New York', '2017-09-20', NULL, NULL, 60, '2017-09-20 11:19:21', '2017-09-20 11:19:21', NULL),
(68, 'MOLCOM', 'Motto', '2017-09-26', '', 95, NULL, '2017-09-26 11:01:16', '2017-09-27 18:05:20', '2017-09-27 18:05:20'),
(69, 'MOLCOM', 'ABUJA', '2017-09-15', NULL, NULL, 63, '2017-09-27 15:21:40', '2017-09-27 15:21:40', NULL),
(70, 'TextNigeria', 'ABUJA', '2017-01-09', NULL, NULL, 66, '2017-09-27 15:21:52', '2017-09-27 15:21:52', NULL),
(71, 'MOLCOM', 'Motto', '2017-09-26', '', 95, NULL, '2017-09-27 18:05:20', '2017-09-27 18:05:20', NULL),
(72, 'Motorola', 'POS', '2017-09-27', NULL, NULL, 56, '2017-09-28 16:25:04', '2017-09-28 16:25:04', NULL),
(73, 'SPARKS', 'Nationwide', '2017-09-13', NULL, NULL, 68, '2017-09-28 23:12:57', '2017-09-28 23:12:57', NULL),
(74, 'SPARKS', 'Nigeria', '2017-09-28', NULL, NULL, 69, '2017-09-29 00:01:27', '2017-09-29 00:01:27', NULL),
(75, 'SPARKS', 'ABUJA', '2017-09-28', '', 99, NULL, '2017-09-29 00:16:26', '2017-09-29 00:16:26', NULL),
(76, 'MOLCOM', '1', '2017-10-05', '', 101, NULL, '2017-10-05 14:56:18', '2017-10-05 14:56:18', NULL),
(77, 'MTN', 'Victoria Island, Lagos', '2017-09-22', '', 119, NULL, '2017-10-13 14:18:33', '2017-10-13 14:18:33', NULL),
(78, 'Globacom Limited', 'Ajah, Lagos', '2017-09-15', NULL, NULL, 74, '2017-10-13 14:56:14', '2017-10-13 14:56:14', NULL),
(79, 'MTN', 'Ajah, Lagos', '2016-10-17', '', 121, NULL, '2017-10-17 07:21:48', '2017-10-17 07:21:48', NULL),
(80, 'Globacom Limited', 'Epe', '2017-09-17', '', 121, NULL, '2017-10-17 07:21:48', '2017-10-17 07:21:48', NULL),
(81, 'Globacom Limited', 'Victoria Island, Lagos', '2016-10-17', NULL, NULL, 75, '2017-10-17 11:18:43', '2017-10-17 11:18:43', NULL),
(82, 'Globacom Limited', 'Lagos', '2017-10-17', '', 122, NULL, '2017-10-17 13:06:36', '2017-10-17 13:12:22', '2017-10-17 13:12:22'),
(83, 'Globacom Limited', 'Lagos', '2017-10-17', '', 122, NULL, '2017-10-17 13:12:22', '2017-10-17 13:12:22', NULL),
(84, '', '', '', '', 122, NULL, '2017-10-17 13:12:22', '2017-10-17 13:12:22', NULL),
(85, 'Globacom Limited', 'Ajah, Lagos', '2017-09-22', NULL, NULL, 76, '2017-10-17 14:53:55', '2017-10-17 14:53:55', NULL),
(86, 'OBO', 'OBO', '12/2/2', '', 123, NULL, '2017-10-23 19:56:24', '2017-10-23 19:56:24', NULL),
(87, 'OBO', 'OBO', '12/2/2', '', 126, NULL, '2017-10-24 14:15:20', '2017-10-24 14:15:20', NULL),
(88, 'modular', 'point to point', '2017-10-27', '', 127, NULL, '2017-10-27 10:56:04', '2017-10-27 10:56:04', NULL),
(89, 'Molcom MUlti-Concepts Limited', '8', '2017-10-30', '', 129, NULL, '2017-10-30 11:28:01', '2017-10-30 11:28:01', NULL),
(90, 'SALAZAR', 'X89', '2017-10-30', '', 130, NULL, '2017-10-30 11:28:27', '2017-10-30 11:28:27', NULL),
(91, 'Globacom Limited', 'Ajah, Lagos', '2017-10-30', '', 132, NULL, '2017-10-30 12:50:32', '2017-10-30 12:50:32', NULL),
(92, 'Globacom Limited', 'Ajah, Lagos', '2017-10-31', '', 133, NULL, '2017-10-31 14:02:44', '2017-11-07 20:29:10', '2017-11-07 20:29:10'),
(93, 'Globacom Limited', 'Ajah, Lagos', '2017-10-31', '', 134, NULL, '2017-10-31 14:04:21', '2017-10-31 14:04:21', NULL),
(94, 'Globacom Limited', 'Ajah, Lagos', '2017-10-31', NULL, NULL, 78, '2017-10-31 14:32:32', '2017-10-31 14:38:12', '2017-10-31 14:38:12'),
(95, 'Globacom Limited', 'Ajah, Lagos', '2017-09-09', NULL, NULL, 78, '2017-10-31 14:38:12', '2017-10-31 14:38:12', NULL),
(96, 'OBO', 'OBO', '12/2/2', '', 137, NULL, '2017-11-07 15:58:51', '2017-11-07 15:58:51', NULL),
(97, 'Honda', 'Hondai', '5/9/20017', '', 138, NULL, '2017-11-07 18:47:59', '2017-11-07 18:47:59', NULL),
(98, 'molcom', '2', '20/02/2012', '', 139, NULL, '2017-11-07 19:39:49', '2017-11-07 19:39:49', NULL),
(99, 'estadysta', '2', '20/02/2012', NULL, NULL, 79, '2017-11-07 19:48:01', '2017-11-07 19:48:01', NULL),
(100, 'Globacom Limited', 'Ajah, Lagos', '2017-10-31', '', 133, NULL, '2017-11-07 20:29:10', '2017-11-07 20:29:10', NULL),
(101, 'OBO', 'OBO', '12/2/2', '', 143, NULL, '2017-11-14 16:19:02', '2017-11-14 16:27:20', '2017-11-14 16:27:20'),
(102, 'OBO', 'OBO', '12/2/2', '', 143, NULL, '2017-11-14 16:27:20', '2017-11-14 16:27:20', NULL),
(103, 'Molcom Multi-Concepts Limited', '1', '2018-01-26', NULL, NULL, 84, '2018-01-28 13:53:47', '2018-01-28 13:53:47', NULL),
(104, 'None', 'Abuja', '2018-01-12', '', 146, NULL, '2018-02-18 15:40:36', '2018-02-18 15:40:36', NULL),
(105, 'AbujaRoxx', 'Abuja', '2018-12-05', '', 147, NULL, '2018-12-05 11:22:22', '2018-12-05 11:22:22', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `application_id` int(11) DEFAULT NULL,
  `total_amount_before_tax` double(12,2) NOT NULL,
  `total_amount_after_tax` double(12,2) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `last_updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `application_number_id` int(11) DEFAULT NULL,
  `application_short_id` int(11) DEFAULT NULL,
  `sub_total` double NOT NULL DEFAULT '0',
  `admin_fee_value` double DEFAULT NULL,
  `grand_total` double NOT NULL DEFAULT '0',
  `admin_fee_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_fee_id` int(11) DEFAULT NULL,
  `admin_fee_amount` double DEFAULT NULL,
  `company_id` int(11) NOT NULL,
  `tracking_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `final` int(11) NOT NULL DEFAULT '0',
  `invoice_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `due_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `application_ispc_id` int(11) DEFAULT NULL,
  `next_due_date` date DEFAULT NULL,
  `frequency` int(11) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'UnPaid',
  `api_transactionId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `api_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `api_description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `api_status` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'AWAITING_FIRST_APPROVAL',
  `api_invoiceNo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `api_payment_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'local'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`id`, `user_id`, `application_id`, `total_amount_before_tax`, `total_amount_after_tax`, `created_by`, `last_updated_by`, `created_at`, `updated_at`, `deleted_at`, `application_number_id`, `application_short_id`, `sub_total`, `admin_fee_value`, `grand_total`, `admin_fee_name`, `admin_fee_id`, `admin_fee_amount`, `company_id`, `tracking_no`, `final`, `invoice_date`, `due_date`, `application_ispc_id`, `next_due_date`, `frequency`, `status`, `api_transactionId`, `api_url`, `api_description`, `api_status`, `api_invoiceNo`, `api_payment_type`) VALUES
(1, 1, NULL, 450000.00, 472500.00, 2, 2, '2018-11-28 13:33:14', '2018-11-28 13:33:18', '2018-12-03 23:00:00', NULL, NULL, 450000, NULL, 472500, NULL, NULL, NULL, 1, 'NMS-INV-0000000002', 1, '2018-11-28', '2018-12-05', NULL, NULL, NULL, 'UnPaid', NULL, NULL, 'hello', 'AWAITING_FIRST_APPROVAL', NULL, 'local'),
(2, 1, NULL, 450000.00, 472500.00, 2, 2, '2018-11-28 13:34:43', '2018-11-28 13:34:44', '2018-12-03 23:00:00', NULL, NULL, 450000, NULL, 472500, NULL, NULL, NULL, 1, 'NMS-INV-0000000002', 1, '2018-11-28', '2018-12-05', NULL, NULL, NULL, 'UnPaid', NULL, NULL, 'hello', 'AWAITING_FIRST_APPROVAL', NULL, 'local'),
(3, 1, NULL, 450000.00, 472500.00, 2, 2, '2018-11-28 13:35:24', '2018-11-28 13:35:25', '2018-12-03 23:00:00', NULL, NULL, 450000, NULL, 472500, NULL, NULL, NULL, 1, 'NMS-INV-0000000003', 1, '2018-11-28', '2018-12-05', NULL, NULL, NULL, 'UnPaid', NULL, NULL, 'hello', 'AWAITING_FIRST_APPROVAL', NULL, 'local'),
(4, 1, NULL, 450000.00, 472500.00, 2, 2, '2018-11-28 13:56:45', '2018-11-28 13:56:48', '2018-12-03 23:00:00', NULL, NULL, 450000, NULL, 472500, NULL, NULL, NULL, 1, 'NMS-INV-0000000004', 1, '2018-11-28', '2018-12-05', NULL, NULL, NULL, 'UnPaid', NULL, NULL, 'hello', 'AWAITING_FIRST_APPROVAL', NULL, 'local'),
(5, 1, NULL, 450000.00, 472500.00, 2, 2, '2018-11-28 13:57:53', '2018-12-04 07:12:02', NULL, NULL, NULL, 450000, NULL, 472500, NULL, NULL, NULL, 1, 'NMS-INV-0000000005', 1, '2018-11-28', '2018-12-05', NULL, NULL, NULL, 'UnPaid', '5d2ba241-1905-4b0c-8824-e713346f2e57', 'http://apps.showcase.com.ng/#/contractor/settings/payments/list/5d2ba241-1905-4b0c-8824-e713346f2e57', 'hello', 'PENDING', NULL, 'local'),
(6, 1, NULL, 800000.00, 840000.00, 2, 2, '2018-12-03 13:58:28', '2018-12-05 15:56:43', NULL, NULL, NULL, 800000, NULL, 840000, NULL, NULL, NULL, 1, 'NMS-INV-0000000006', 1, '2018-12-03', '2018-12-10', NULL, NULL, NULL, 'UnPaid', '83fd0a25-7b55-4be2-bb48-a889ee9272cb', 'http://apps.showcase.com.ng/#/contractor/settings/payments/list/83fd0a25-7b55-4be2-bb48-a889ee9272cb', 'Describe bill', 'CANCELLED', 'NMS-112', 'local'),
(7, 1, NULL, 700000.00, 700000.00, 2, 2, '2018-12-14 16:41:00', '2018-12-18 08:41:21', NULL, 147, NULL, 700000, NULL, 700000, NULL, NULL, NULL, 1, 'NMS-INV-0000000007', 1, '2018-12-14', '2019-01-18', NULL, NULL, NULL, 'UnPaid', '5041b383-c3c2-49be-b2a3-321c3f80b3ca', 'http://apps.showcase.com.ng/#/contractor/settings/payments/list/5041b383-c3c2-49be-b2a3-321c3f80b3ca', 'The description', 'PENDING', '12345', 'local'),
(8, 1, NULL, 500000.00, 500000.00, 2, 2, '2018-12-18 09:30:54', '2018-12-18 09:34:40', NULL, NULL, NULL, 500000, NULL, 500000, NULL, NULL, NULL, 1, 'NMS-INV-0000000008', 1, '2018-12-18', '2018-12-20', NULL, NULL, NULL, 'UnPaid', 'fa6e1a1c-fe43-43b8-b3db-14daa0199c36', 'http://apps.showcase.com.ng/#/contractor/settings/payments/list/fa6e1a1c-fe43-43b8-b3db-14daa0199c36', 'Testing the system', 'PENDING', NULL, 'foreign'),
(9, 1, NULL, 350000.00, 350000.00, 2, 2, '2018-12-18 09:47:14', '2018-12-18 15:52:08', NULL, NULL, NULL, 350000, NULL, 350000, NULL, NULL, NULL, 1, 'NMS-INV-0000000009', 1, '2018-12-18', '2018-12-20', NULL, NULL, NULL, 'UnPaid', '6af8ee66-0c2c-425a-8ef7-2e02f50ed6b4', 'http://apps.showcase.com.ng/#/contractor/settings/payments/list/6af8ee66-0c2c-425a-8ef7-2e02f50ed6b4', 'Hello', 'COMPLETED', '223', 'foreign'),
(10, 1, NULL, 800000.00, 840000.00, 2, 2, '2019-02-25 08:27:48', '2019-02-25 09:37:39', NULL, NULL, NULL, 800000, NULL, 840000, NULL, NULL, NULL, 1, 'NMS-INV-0000000010', 1, '2019-02-25', '2019-02-27', NULL, NULL, NULL, 'UnPaid', '39d011f1-faec-406a-ad88-da6cab41dcfd', 'http://apps.showcase.com.ng/#/contractor/settings/payments/list/39d011f1-faec-406a-ad88-da6cab41dcfd', 'Important Invoice', 'PENDING', '1234M', 'local'),
(11, 1, NULL, 800000.00, 880000.00, 2, 2, '2019-02-25 10:47:14', '2019-02-25 11:39:35', NULL, NULL, NULL, 800000, NULL, 880000, NULL, NULL, NULL, 1, 'NMS-INV-0000000011', 1, '2019-02-25', '2019-02-26', NULL, NULL, NULL, 'UnPaid', '9666f687-fca5-400d-abb2-a554ddd289be', 'http://apps.showcase.com.ng/#/contractor/settings/payments/list/9666f687-fca5-400d-abb2-a554ddd289be', 'Important Invoice', 'COMPLETED', '234M', 'foreign');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_details`
--

CREATE TABLE `invoice_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `number_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `access_code_unit` int(11) NOT NULL DEFAULT '0',
  `line_unit` int(11) NOT NULL DEFAULT '0',
  `access_code_unit_charge` double NOT NULL DEFAULT '0',
  `line_unit_charge` double NOT NULL DEFAULT '0',
  `access_code_total_amount` double NOT NULL DEFAULT '0',
  `line_total_amount` double NOT NULL DEFAULT '0',
  `starting_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ending_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `area_id` int(11) DEFAULT NULL,
  `area_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `area_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `access_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `line_fees_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `access_fees_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invoice_fees`
--

CREATE TABLE `invoice_fees` (
  `id` int(10) UNSIGNED NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `fee_id` int(11) NOT NULL,
  `amount` double(12,2) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `last_updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fee_amount` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `qty` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `line_total` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `fee_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `invoice_fees`
--

INSERT INTO `invoice_fees` (`id`, `invoice_id`, `fee_id`, `amount`, `created_by`, `last_updated_by`, `created_at`, `updated_at`, `deleted_at`, `description`, `fee_amount`, `qty`, `line_total`, `fee_name`, `user_id`, `company_id`) VALUES
(1, 1, 14, 0.00, NULL, NULL, '2018-11-28 13:33:15', '2018-11-28 13:33:15', NULL, NULL, '50000', '3', '150000', 'Consultancy fee', 1, 1),
(2, 1, 13, 0.00, NULL, NULL, '2018-11-28 13:33:16', '2018-11-28 13:33:16', NULL, NULL, '300000', '1', '300000', 'Logging Fees', 1, 1),
(3, 2, 14, 0.00, NULL, NULL, '2018-11-28 13:34:43', '2018-11-28 13:34:43', NULL, NULL, '50000', '3', '150000', 'Consultancy fee', 1, 1),
(4, 2, 13, 0.00, NULL, NULL, '2018-11-28 13:34:43', '2018-11-28 13:34:43', NULL, NULL, '300000', '1', '300000', 'Logging Fees', 1, 1),
(5, 3, 14, 0.00, NULL, NULL, '2018-11-28 13:35:25', '2018-11-28 13:35:25', NULL, NULL, '50000', '3', '150000', 'Consultancy fee', 1, 1),
(6, 3, 13, 0.00, NULL, NULL, '2018-11-28 13:35:25', '2018-11-28 13:35:25', NULL, NULL, '300000', '1', '300000', 'Logging Fees', 1, 1),
(7, 4, 14, 0.00, NULL, NULL, '2018-11-28 13:56:46', '2018-11-28 13:56:46', NULL, NULL, '50000', '3', '150000', 'Consultancy fee', 1, 1),
(8, 4, 13, 0.00, NULL, NULL, '2018-11-28 13:56:47', '2018-11-28 13:56:47', NULL, NULL, '300000', '1', '300000', 'Logging Fees', 1, 1),
(9, 5, 14, 0.00, NULL, NULL, '2018-11-28 13:57:54', '2018-11-28 13:57:54', NULL, NULL, '50000', '3', '150000', 'Consultancy fee', 1, 1),
(10, 5, 13, 0.00, NULL, NULL, '2018-11-28 13:57:54', '2018-11-28 13:57:54', NULL, NULL, '300000', '1', '300000', 'Logging Fees', 1, 1),
(11, 6, 10, 0.00, NULL, NULL, '2018-12-03 13:58:28', '2018-12-03 13:58:28', NULL, NULL, '700000', '1', '700000', 'Access Code Charge', 1, 1),
(12, 6, 14, 0.00, NULL, NULL, '2018-12-03 13:58:29', '2018-12-03 13:58:29', NULL, NULL, '50000', '2', '100000', 'Consultancy fee', 1, 1),
(13, 7, 10, 0.00, NULL, NULL, '2018-12-14 16:41:01', '2018-12-14 16:41:01', NULL, NULL, '700000', '1', '700000', 'Access Code Charge', 1, 1),
(14, 8, 14, 0.00, NULL, NULL, '2018-12-18 09:30:54', '2018-12-18 09:30:54', NULL, NULL, '50000', '10', '500000', 'Consultancy fee', 1, 1),
(15, 9, 2, 0.00, NULL, NULL, '2018-12-18 09:47:19', '2018-12-18 09:47:19', NULL, NULL, '350000', '1', '350000', 'Inception Fee', 1, 1),
(16, 10, 10, 0.00, NULL, NULL, '2019-02-25 08:27:48', '2019-02-25 08:27:48', NULL, NULL, '700000', '1', '700000', 'Access Code Charge', 1, 1),
(17, 10, 14, 0.00, NULL, NULL, '2019-02-25 08:27:48', '2019-02-25 08:27:48', NULL, NULL, '50000', '2', '100000', 'Consultancy fee', 1, 1),
(18, 11, 10, 0.00, NULL, NULL, '2019-02-25 10:47:14', '2019-02-25 10:47:14', NULL, NULL, '700000', '1', '700000', 'Access Code Charge', 1, 1),
(19, 11, 14, 0.00, NULL, NULL, '2019-02-25 10:47:14', '2019-02-25 10:47:14', NULL, NULL, '50000', '2', '100000', 'Consultancy fee', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `invoice_taxes`
--

CREATE TABLE `invoice_taxes` (
  `id` int(10) UNSIGNED NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `tax_id` int(11) NOT NULL,
  `value` double(12,2) NOT NULL,
  `actual_amount` double(12,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `tax_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `company_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `last_updated_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `invoice_taxes`
--

INSERT INTO `invoice_taxes` (`id`, `invoice_id`, `tax_id`, `value`, `actual_amount`, `created_at`, `updated_at`, `deleted_at`, `tax_name`, `company_id`, `user_id`, `created_by`, `last_updated_by`) VALUES
(1, 1, 3, 5.00, 22500.00, '2018-11-28 13:33:17', '2018-11-28 13:33:17', NULL, 'Admin Fee', 1, 1, 0, 0),
(2, 2, 3, 5.00, 22500.00, '2018-11-28 13:34:44', '2018-11-28 13:34:44', NULL, 'Admin Fee', 1, 1, 0, 0),
(3, 3, 3, 5.00, 22500.00, '2018-11-28 13:35:25', '2018-11-28 13:35:25', NULL, 'Admin Fee', 1, 1, 0, 0),
(4, 4, 3, 5.00, 22500.00, '2018-11-28 13:56:47', '2018-11-28 13:56:47', NULL, 'Admin Fee', 1, 1, 0, 0),
(5, 5, 3, 5.00, 22500.00, '2018-11-28 13:57:54', '2018-11-28 13:57:54', NULL, 'Admin Fee', 1, 1, 0, 0),
(6, 6, 3, 5.00, 40000.00, '2018-12-03 13:58:29', '2018-12-03 13:58:29', NULL, 'Admin Fee', 1, 1, 0, 0),
(7, 10, 3, 5.00, 40000.00, '2019-02-25 08:27:48', '2019-02-25 08:27:48', NULL, 'Admin Fee', 1, 1, 0, 0),
(8, 11, 2, 10.00, 80000.00, '2019-02-25 10:47:14', '2019-02-25 10:47:14', NULL, 'Service Charges', 1, 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ispc_requirement_infos`
--

CREATE TABLE `ispc_requirement_infos` (
  `id` int(10) UNSIGNED NOT NULL,
  `application_ispc_id` int(11) NOT NULL,
  `switch_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `switch_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `switch_function` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `switch_location` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `commission_date` date NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ispc_requirement_infos`
--

INSERT INTO `ispc_requirement_infos` (`id`, `application_ispc_id`, `switch_name`, `switch_type`, `switch_function`, `switch_location`, `commission_date`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'cyberspace', 'router', 'MSC', 'Lagos', '2017-06-22', '2017-08-10 15:42:49', '2017-06-29 12:11:46', '2017-08-10 15:42:49'),
(2, 1, 'Swift', 'microwave', 'SCP', 'ikorodu lagos', '0000-00-00', '2017-08-10 15:42:49', '2017-06-29 12:11:46', '2017-08-10 15:42:49'),
(3, 2, 'SW-9090', 'SWAT/HITACHI', 'MSC', 'Abuja', '2016-12-31', '2017-07-13 19:18:55', '2017-07-13 19:18:40', '2017-07-13 19:18:55'),
(4, 2, 'SW-3090', 'SWOT/MODEL', 'ISC', 'Lagos, Ojota', '2015-12-31', '2017-07-13 19:18:55', '2017-07-13 19:18:40', '2017-07-13 19:18:55'),
(5, 2, 'SW-9090', 'SWAT/HITACHI', 'MSC', 'Abuja', '2016-12-31', '2017-07-13 19:19:19', '2017-07-13 19:18:55', '2017-07-13 19:19:19'),
(6, 2, 'SW-3090', 'SWOT/MODEL', 'ISC', 'Lagos, Ojota', '2015-12-31', '2017-07-13 19:19:19', '2017-07-13 19:18:55', '2017-07-13 19:19:19'),
(7, 2, 'SW-9090', 'SWAT/HITACHI', 'MSC', 'Abuja', '2016-12-31', NULL, '2017-07-13 19:19:19', '2017-07-13 19:19:19'),
(8, 2, 'SW-3090', 'SWOT/MODEL', 'ISC', 'Lagos, Ojota', '2015-12-31', NULL, '2017-07-13 19:19:19', '2017-07-13 19:19:19'),
(9, 3, 'Moto123', 'Motorola', 'MSC', 'Abuja', '2017-07-26', NULL, '2017-07-14 11:55:17', '2017-07-14 11:55:17'),
(10, 4, 'Abuja', 'HTH', 'ISC', 'Utako', '2017-07-18', NULL, '2017-07-18 14:29:34', '2017-07-18 14:29:34'),
(11, 5, 'KIA', 'KIA', 'SCP', 'Lagos', '2017-07-18', NULL, '2017-07-18 17:30:34', '2017-07-18 17:30:34'),
(12, 6, 'KIA', 'KIA', 'ISC', 'Delta', '2017-07-10', NULL, '2017-07-18 17:39:28', '2017-07-18 17:39:28'),
(13, 7, 'KIA', 'KIA', 'ISC', 'Abuja', '2017-07-18', NULL, '2017-07-18 17:42:57', '2017-07-18 17:42:57'),
(14, 18, 'Switch', 'Wish', 'MSP', 'Lag', '2017-08-02', NULL, '2017-08-08 10:29:53', '2017-08-08 10:29:53'),
(15, 16, 'SECRETS', 'STS', 'STP', 'Lekki', '2014-09-16', NULL, '2017-08-08 16:56:10', '2017-08-08 16:56:10'),
(16, 25, 'SW-9090', 'SWAT/HITACHI', 'MSC', 'Abuja', '2017-08-08', '2017-08-09 18:58:31', '2017-08-09 16:01:07', '2017-08-09 18:58:31'),
(17, 25, 'SW-9090', 'SWAT/HITACHI', 'MSC', 'Abuja', '2017-08-08', '2017-08-10 14:01:24', '2017-08-09 18:58:31', '2017-08-10 14:01:24'),
(18, 25, 'SW-9090', 'SWAT/HITACHI', 'MSC', 'Abuja', '2017-08-08', NULL, '2017-08-10 14:01:24', '2017-08-10 14:01:24'),
(19, 24, 'N/A', 'N/A', 'N/A', 'N/A', '0000-00-00', NULL, '2017-08-10 14:57:38', '2017-08-10 14:57:38'),
(20, 1, 'cyberspace', 'router', 'MSC', 'Lagos', '2017-06-22', NULL, '2017-08-10 15:42:49', '2017-08-10 15:42:49'),
(21, 1, 'Swift', 'microwave', 'SCP', 'ikorodu lagos', '0000-00-00', NULL, '2017-08-10 15:42:49', '2017-08-10 15:42:49'),
(22, 26, 'N/A', 'N/A', 'N/A', 'N/A', '0000-00-00', NULL, '2017-08-10 16:56:02', '2017-08-10 16:56:02'),
(23, 27, 'N/A', 'N/A', 'N/A', 'N/A', '0000-00-00', NULL, '2017-08-11 10:44:18', '2017-08-11 10:44:18'),
(24, 28, 'Hauwei', 'Hauwei', 'MSC', 'Delta Asaba', '2017-07-13', NULL, '2017-08-11 15:31:50', '2017-08-11 15:31:50'),
(25, 29, 'Picanto', 'Picanto', 'STP', 'Abuja', '2017-11-24', NULL, '2017-08-11 15:40:31', '2017-08-11 15:40:31'),
(26, 30, 'N/A', 'N/A', 'N/A', 'N/A', '0000-00-00', NULL, '2017-08-18 13:44:12', '2017-08-18 13:44:12'),
(27, 31, 'N/A', 'N/A', 'N/A', 'N/A', '0000-00-00', NULL, '2017-08-28 14:39:53', '2017-08-28 14:39:53'),
(28, 35, 'HUAWEI SWITCH', 'HUAWEI', 'MSC', 'Abuja', '2018-04-11', NULL, '2017-09-27 16:06:01', '2017-09-27 16:06:01'),
(29, 38, 'Picanto', 'Picanto', 'STP', 'Abuja', '2017-10-16', NULL, '2017-10-16 12:38:15', '2017-10-16 12:38:15'),
(30, 39, 'SHG-32', 'HUAWEI', 'ISC', 'Lagos VI', '2017-10-17', NULL, '2017-10-17 12:02:29', '2017-10-17 12:02:29'),
(31, 40, 'N/A', 'N/A', 'N/A', 'N/A', '2017-11-10', NULL, '2017-11-10 17:13:16', '2017-11-10 17:13:16'),
(32, 41, 'N/A', 'N/A', 'N/A', 'N/A', '2018-01-26', NULL, '2018-01-28 14:46:23', '2018-01-28 14:46:23');

-- --------------------------------------------------------

--
-- Table structure for table `labels`
--

CREATE TABLE `labels` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `labels`
--

INSERT INTO `labels` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Social', NULL, NULL, NULL),
(2, 'Sport', NULL, NULL, NULL),
(3, 'Health', '2017-10-05 09:05:40', '2017-10-05 09:05:40', NULL),
(4, 'Commercial', '2017-10-05 09:05:40', '2017-10-05 09:05:40', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `label_number`
--

CREATE TABLE `label_number` (
  `id` int(10) UNSIGNED NOT NULL,
  `label_id` int(11) NOT NULL,
  `number_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `label_number`
--

INSERT INTO `label_number` (`id`, `label_id`, `number_id`, `created_at`, `updated_at`) VALUES
(3, 1, 1604, NULL, NULL),
(4, 3, 1604, NULL, NULL),
(5, 4, 1604, NULL, NULL),
(6, 4, 80, NULL, NULL),
(9, 2, 79, NULL, NULL),
(10, 3, 1605, NULL, NULL),
(11, 1, 1605, NULL, NULL),
(12, 4, 1609, NULL, NULL),
(13, 3, 1610, NULL, NULL),
(14, 1, 1610, NULL, NULL),
(15, 4, 1602, NULL, NULL),
(16, 3, 1603, NULL, NULL),
(17, 1, 1612, NULL, NULL),
(18, 4, 1612, NULL, NULL),
(19, 4, 33, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `licenses`
--

CREATE TABLE `licenses` (
  `id` int(10) UNSIGNED NOT NULL,
  `license_no` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `license_status_id` int(11) NOT NULL,
  `renew_date` date DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `last_updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `licenses`
--

INSERT INTO `licenses` (`id`, `license_no`, `user_id`, `license_status_id`, `renew_date`, `created_by`, `last_updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(6, '789542HH', 49, 2, NULL, 2, 2, '2017-05-12 07:46:12', '2017-06-22 12:16:40', '2017-06-22 12:16:40'),
(7, '851260', 50, 4, NULL, 2, 2, '2017-05-12 08:12:12', '2017-07-12 13:29:57', NULL),
(8, '7894561', 65, 2, NULL, 2, 2, '2017-05-12 14:28:57', '2017-05-12 14:28:57', NULL),
(9, 'L12345PP', 67, 4, NULL, 2, 2, '2017-05-12 16:18:02', '2017-05-14 17:38:51', NULL),
(10, 'L/NO: ASD1234', 68, 2, NULL, 2, 2, '2017-05-15 10:28:33', '2017-05-15 10:50:37', '2017-05-15 10:50:37'),
(11, 'L/NO: asd3457', 73, 4, NULL, 2, 2, '2017-05-18 11:49:46', '2017-05-18 11:51:45', '2017-05-18 11:51:45'),
(12, 'Approved', 75, 4, NULL, 2, 2, '2017-06-14 16:56:16', '2017-06-22 11:27:54', '2017-06-22 11:27:54'),
(13, 'NGNNCC563839', 76, 4, NULL, 2, 2, '2017-06-14 17:33:33', '2017-06-22 12:17:07', '2017-06-22 12:17:07'),
(14, 'L/NO: ASD1234', 77, 2, NULL, 2, 2, '2017-06-14 17:34:03', '2017-06-22 12:25:33', '2017-06-22 12:25:33'),
(15, 'NGNNCC563829', 78, 4, NULL, 2, 2, '2017-06-14 17:35:32', '2017-06-22 12:25:25', '2017-06-22 12:25:25'),
(16, 'NGNNCC8950495', 79, 4, NULL, 2, 2, '2017-06-14 17:37:39', '2017-06-22 11:26:24', '2017-06-22 11:26:24'),
(17, 'NGNNCC3564783', 80, 4, NULL, 2, 2, '2017-06-14 17:39:16', '2017-06-22 12:23:55', '2017-06-22 12:23:55'),
(18, 'NGNNCC6748393', 81, 4, NULL, 2, 2, '2017-06-14 17:41:00', '2017-06-22 12:25:15', '2017-06-22 12:25:15'),
(19, 'L/NO: asd3456', 82, 2, NULL, 2, 2, '2017-06-14 17:41:43', '2017-06-22 12:25:04', '2017-06-22 12:25:04'),
(20, 'NGNNCC3456478', 83, 4, NULL, 2, 2, '2017-06-14 17:45:17', '2017-06-22 12:24:42', '2017-06-22 12:24:42'),
(21, 'XXXXXXXXX', 84, 4, NULL, 2, 2, '2017-06-14 17:51:42', '2017-06-22 12:24:32', '2017-06-22 12:24:32'),
(22, 'xxxxxxxxxxxxx', 85, 4, NULL, 2, 2, '2017-06-15 09:21:56', '2017-06-22 12:24:21', '2017-06-22 12:24:21'),
(23, 'xxxxxxxxxxx', 86, 4, NULL, 2, 2, '2017-06-15 09:23:55', '2017-06-22 12:22:16', '2017-06-22 12:22:16'),
(24, 'xxxxxxxxx', 87, 4, NULL, 2, 2, '2017-06-15 09:25:54', '2017-06-22 12:24:04', '2017-06-22 12:24:04'),
(25, 'xxxxxxxxx', 88, 4, NULL, 2, 2, '2017-06-15 09:27:08', '2017-06-22 12:23:41', '2017-06-22 12:23:41'),
(26, 'xxxxxxxxx', 89, 4, NULL, 2, 2, '2017-06-15 09:33:42', '2017-06-22 12:23:31', '2017-06-22 12:23:31'),
(27, 'xxxxxxxxx', 90, 4, NULL, 2, 2, '2017-06-15 09:35:31', '2017-06-22 12:23:20', '2017-06-22 12:23:20'),
(28, 'xxxxxxxxxxx', 91, 4, NULL, 2, 2, '2017-06-15 09:38:57', '2017-06-22 12:22:56', '2017-06-22 12:22:56'),
(29, 'xxxxxxxxx', 92, 4, NULL, 2, 2, '2017-06-15 09:40:43', '2017-06-22 12:22:45', '2017-06-22 12:22:45'),
(30, 'xxxxxxxxx', 93, 4, NULL, 2, 2, '2017-06-15 09:42:19', '2017-06-22 12:22:36', '2017-06-22 12:22:36'),
(31, 'xxxxxxxxx', 94, 4, NULL, 2, 2, '2017-06-15 09:43:53', '2017-06-22 11:57:41', '2017-06-22 11:57:41'),
(32, 'xxxxxxxxx', 95, 4, NULL, 2, 2, '2017-06-15 09:46:13', '2017-06-22 12:22:27', '2017-06-22 12:22:27'),
(33, 'xxxxxxxxx', 96, 4, NULL, 2, 2, '2017-06-15 09:48:19', '2017-06-22 12:21:52', '2017-06-22 12:21:52'),
(34, 'xxxxxxxxx', 97, 4, NULL, 2, 2, '2017-06-15 09:59:02', '2017-06-22 12:13:25', '2017-06-22 12:13:25'),
(35, 'xxxxxxxxx', 98, 4, NULL, 2, 2, '2017-06-15 10:01:30', '2017-06-22 12:21:30', '2017-06-22 12:21:30'),
(36, 'xxxxxxxxx', 99, 4, NULL, 2, 2, '2017-06-15 10:02:41', '2017-06-22 12:21:17', '2017-06-22 12:21:17'),
(37, 'xxxxxxxx', 100, 4, NULL, 2, 2, '2017-06-15 10:05:40', '2017-06-22 12:21:01', '2017-06-22 12:21:01'),
(38, 'xxxxxxxxx', 101, 4, NULL, 2, 2, '2017-06-15 10:10:48', '2017-06-22 12:20:46', '2017-06-22 12:20:46'),
(39, 'xxxxxxxxx', 102, 4, NULL, 2, 2, '2017-06-15 10:25:24', '2017-06-22 12:20:34', '2017-06-22 12:20:34'),
(40, 'xxxxxxxxx', 103, 4, NULL, 2, 2, '2017-06-15 10:30:18', '2017-06-22 12:20:23', '2017-06-22 12:20:23'),
(41, 'xxxxxxxxx', 104, 4, NULL, 2, 2, '2017-06-15 10:32:40', '2017-06-22 12:20:13', '2017-06-22 12:20:13'),
(42, 'xxxxxxxx', 105, 4, NULL, 2, 2, '2017-06-15 11:01:37', '2017-06-22 12:20:03', '2017-06-22 12:20:03'),
(43, 'xxxxxxxxx', 106, 4, NULL, 2, 2, '2017-06-15 11:02:54', '2017-06-22 12:19:54', '2017-06-22 12:19:54'),
(44, 'xxxxxxxxx', 107, 4, NULL, 2, 2, '2017-06-15 11:04:09', '2017-06-22 12:19:05', '2017-06-22 12:19:05'),
(45, 'xxxxxxxxx', 108, 4, NULL, 2, 2, '2017-06-15 11:05:29', '2017-06-22 12:19:43', '2017-06-22 12:19:43'),
(46, 'xxxxxxxxxx', 109, 4, NULL, 2, 2, '2017-06-15 11:06:57', '2017-06-22 12:19:30', '2017-06-22 12:19:30'),
(47, 'xxxxxxxxxx', 110, 4, NULL, 2, 2, '2017-06-15 11:07:54', '2017-06-22 12:19:16', '2017-06-22 12:19:16'),
(48, 'xxxxxxxx', 111, 4, NULL, 2, 2, '2017-06-15 11:09:15', '2017-06-22 12:18:50', '2017-06-22 12:18:50'),
(49, 'xxxxxxxxx', 112, 4, NULL, 2, 2, '2017-06-15 11:10:31', '2017-06-22 12:18:39', '2017-06-22 12:18:39'),
(50, 'xxxxxxxx', 113, 4, NULL, 2, 2, '2017-06-15 11:22:32', '2017-06-22 12:18:29', '2017-06-22 12:18:29'),
(51, 'xxxxxxxxxx', 114, 4, NULL, 2, 2, '2017-06-15 11:25:57', '2017-06-22 12:18:17', '2017-06-22 12:18:17'),
(52, 'xxxxxxxx', 115, 4, NULL, 2, 2, '2017-06-15 11:28:10', '2017-06-22 12:18:05', '2017-06-22 12:18:05'),
(53, 'xxxxxxxx', 116, 4, NULL, 2, 2, '2017-06-15 11:40:40', '2017-06-22 12:17:52', '2017-06-22 12:17:52'),
(54, 'xxxxxxxx', 117, 4, NULL, 2, 2, '2017-06-15 11:41:51', '2017-06-22 12:13:58', '2017-06-22 12:13:58'),
(55, 'xxxxxxxxx', 118, 4, NULL, 2, 2, '2017-06-15 11:44:44', '2017-06-22 12:17:23', '2017-06-22 12:17:23'),
(56, 'xxxxxxxxx', 119, 4, NULL, 2, 2, '2017-06-15 11:53:03', '2017-06-22 12:11:41', '2017-06-22 12:11:41'),
(57, 'xxxxxxxxxx', 120, 4, NULL, 2, 2, '2017-06-15 11:54:22', '2017-06-22 12:13:01', '2017-06-22 12:13:01'),
(58, 'xxxxxxxx', 121, 4, NULL, 2, 2, '2017-06-15 11:55:43', '2017-06-22 12:11:57', '2017-06-22 12:11:57'),
(59, 'xxxxxxxxx', 122, 4, NULL, 2, 2, '2017-06-15 12:04:39', '2017-06-22 12:07:04', '2017-06-22 12:07:04'),
(60, 'xxxxxxxx', 123, 4, NULL, 2, 2, '2017-06-15 12:18:14', '2017-06-22 12:10:16', '2017-06-22 12:10:16'),
(61, 'xxxxxxxxx', 124, 4, NULL, 2, 2, '2017-06-15 12:27:17', '2017-06-22 12:01:04', '2017-06-22 12:01:04'),
(62, 'xxxxxxx', 125, 4, NULL, 2, 2, '2017-06-15 12:28:32', '2017-06-22 12:01:44', '2017-06-22 12:01:44'),
(63, 'xxxxxxxxx', 126, 4, NULL, 2, 2, '2017-06-15 12:29:41', '2017-06-22 11:59:48', '2017-06-22 11:59:48'),
(64, 'xxxxxxxxxx', 127, 4, NULL, 2, 2, '2017-06-15 12:31:07', '2017-06-22 11:58:58', '2017-06-22 11:58:58'),
(65, 'xxxxxxxxx', 128, 4, NULL, 2, 2, '2017-06-15 12:33:31', '2017-06-22 11:58:37', '2017-06-22 11:58:37'),
(66, 'xxxxxxxxx', 129, 4, NULL, 2, 2, '2017-06-15 12:41:30', '2017-06-22 12:00:29', '2017-06-22 12:00:29'),
(67, 'xxxxxxxxx', 130, 4, NULL, 2, 2, '2017-06-15 12:44:55', '2017-06-22 11:59:27', '2017-06-22 11:59:27'),
(68, 'xxxxxxxxx', 131, 4, NULL, 2, 2, '2017-06-15 12:49:39', '2017-06-22 12:07:20', '2017-06-22 12:07:20'),
(69, 'xxxxxxxx', 132, 4, NULL, 2, 2, '2017-06-15 12:51:42', '2017-06-22 12:08:00', '2017-06-22 12:08:00'),
(70, 'xxxxxxxxx', 133, 4, NULL, 2, 2, '2017-06-15 12:53:25', '2017-06-22 11:56:40', '2017-06-22 11:56:40'),
(71, 'xxxxxxxxxx', 134, 4, NULL, 2, 2, '2017-06-15 12:55:20', '2017-06-22 11:56:00', '2017-06-22 11:56:00'),
(72, 'xxxxxxxx', 135, 4, NULL, 2, 2, '2017-06-15 13:05:03', '2017-06-22 11:55:34', '2017-06-22 11:55:34'),
(73, 'xxxxxxxx', 136, 4, NULL, 2, 2, '2017-06-15 13:07:10', '2017-06-22 11:55:06', '2017-06-22 11:55:06'),
(74, 'xxxxxxxxxx', 137, 4, NULL, 2, 2, '2017-06-15 13:08:16', '2017-06-22 11:54:28', '2017-06-22 11:54:28'),
(75, 'xxxxxxxxx', 138, 4, NULL, 2, 2, '2017-06-15 13:09:36', '2017-06-22 11:53:22', '2017-06-22 11:53:22'),
(76, 'xxxxxxxxx', 139, 4, NULL, 2, 2, '2017-06-15 13:11:10', '2017-06-22 11:52:43', '2017-06-22 11:52:43'),
(77, 'xxxxxxxxx', 140, 4, NULL, 2, 2, '2017-06-15 13:18:20', '2017-06-22 11:51:31', '2017-06-22 11:51:31'),
(78, 'xxxxxxxxxx', 141, 4, NULL, 2, 2, '2017-06-15 13:19:35', '2017-06-22 11:51:03', '2017-06-22 11:51:03'),
(79, 'xxxxxxxxx', 142, 4, NULL, 2, 2, '2017-06-15 13:21:03', '2017-06-22 11:50:48', '2017-06-22 11:50:48'),
(80, 'xxxxxxxx', 143, 4, NULL, 2, 2, '2017-06-15 13:22:14', '2017-06-22 11:50:35', '2017-06-22 11:50:35'),
(81, 'xxxxxxxxxx', 144, 4, NULL, 2, 2, '2017-06-15 13:23:40', '2017-06-22 11:48:18', '2017-06-22 11:48:18'),
(82, 'xxxxxxx', 145, 4, NULL, 2, 2, '2017-06-15 13:26:05', '2017-06-22 11:48:03', '2017-06-22 11:48:03'),
(83, 'xxxxxxxxxx', 146, 4, NULL, 2, 2, '2017-06-15 13:27:43', '2017-06-22 11:47:49', '2017-06-22 11:47:49'),
(84, 'xxxxxxxxx', 147, 4, NULL, 2, 2, '2017-06-15 13:29:00', '2017-06-22 11:33:27', '2017-06-22 11:33:27'),
(85, 'xxxxxxxxx', 148, 4, NULL, 2, 2, '2017-06-15 13:30:32', '2017-06-22 11:47:15', '2017-06-22 11:47:15'),
(86, 'xxxxxxxxx', 149, 4, NULL, 2, 2, '2017-06-15 13:32:18', '2017-06-22 11:32:56', '2017-06-22 11:32:56'),
(87, 'xxxxxxxxx', 150, 4, NULL, 2, 2, '2017-06-15 13:39:13', '2017-06-22 11:32:14', '2017-06-22 11:32:14'),
(88, 'xxxxxxxx', 151, 4, NULL, 2, 2, '2017-06-15 13:40:55', '2017-06-22 11:31:48', '2017-06-22 11:31:48'),
(89, 'xxxxxxxxxx', 152, 4, NULL, 2, 2, '2017-06-15 13:42:09', '2017-06-22 11:31:17', '2017-06-22 11:31:17'),
(90, 'xxxxxxxxx', 153, 4, NULL, 2, 2, '2017-06-15 13:43:13', '2017-06-22 11:30:43', '2017-06-22 11:30:43'),
(91, 'xxxxxxxxx', 154, 4, NULL, 2, 2, '2017-06-15 13:44:32', '2017-06-22 11:29:54', '2017-06-22 11:29:54'),
(92, 'xxxxxxxxx', 155, 4, NULL, 2, 2, '2017-06-15 13:45:56', '2017-06-22 11:29:39', '2017-06-22 11:29:39'),
(93, 'Mol123', 157, 4, NULL, 2, 2, '2017-06-15 14:44:53', '2017-06-22 11:29:20', '2017-06-22 11:29:20'),
(94, 'CCCCCCC', 158, 4, NULL, 2, 2, '2017-06-20 12:45:04', '2017-06-22 11:28:55', '2017-06-22 11:28:55'),
(95, 'cvcvcv', 159, 4, NULL, 2, 2, '2017-06-20 12:55:57', '2017-06-22 11:28:39', '2017-06-22 11:28:39'),
(96, 'cvcvcv', 160, 4, NULL, 2, 2, '2017-06-20 13:07:45', '2017-06-22 11:28:27', '2017-06-22 11:28:27'),
(97, 'CVCFDFDF', 161, 4, NULL, 2, 2, '2017-06-20 13:21:04', '2017-06-22 11:28:11', '2017-06-22 11:28:11'),
(98, 'L/NO- 9897765', 170, 4, NULL, 2, 2, '2017-06-21 18:38:59', '2017-06-22 11:33:13', '2017-06-22 11:33:13'),
(99, 'L/NO 98989', 171, 4, NULL, 2, 2, '2017-06-22 13:56:36', '2017-07-05 16:57:01', '2017-07-05 16:57:01'),
(100, 'xxxxxxx', 172, 2, NULL, 2, 2, '2017-06-29 11:53:34', '2017-06-29 12:15:37', '2017-06-29 12:15:37'),
(101, 'xxxxxx', 173, 2, NULL, 2, 2, '2017-06-29 12:18:10', '2017-06-29 12:20:58', '2017-06-29 12:20:58'),
(102, 'zxxsf', 174, 4, NULL, 2, 2, '2017-06-29 12:24:36', '2017-06-30 12:03:42', '2017-06-30 12:03:42'),
(103, 'xxxxxxxx', 175, 4, NULL, 2, 2, '2017-07-05 16:59:31', '2017-07-06 14:43:42', '2017-07-06 14:43:42'),
(110, 'xxxxxx', 182, 4, NULL, 2, 2, '2017-07-06 18:17:09', '2017-07-06 18:35:02', '2017-07-06 18:35:02'),
(111, 'xxxxxxxxx', 183, 2, NULL, 2, 2, '2017-07-07 10:46:59', '2017-07-07 10:46:59', NULL),
(112, 'xxxxxxx', 185, 4, NULL, 2, 2, '2017-07-19 14:03:55', '2017-07-19 14:03:55', NULL),
(113, 'xxxxx', 186, 4, NULL, 2, 2, '2017-07-19 14:07:04', '2017-08-30 17:07:55', '2017-08-30 17:07:55'),
(114, 'xxxxxx', 187, 4, NULL, 2, 2, '2017-07-19 14:09:53', '2017-07-21 12:41:14', '2017-07-21 12:41:14'),
(115, 'xxxxxx', 0, 1, NULL, 2, 2, '2017-07-21 14:06:21', '2017-07-21 14:06:21', NULL),
(116, 'xxxxxx', 198, 1, NULL, 2, 2, '2017-07-21 14:06:51', '2017-08-30 15:54:41', '2017-08-30 15:54:41'),
(117, 'xxxxxxxxxx', 206, 1, NULL, 2, 2, '2017-08-01 14:14:39', '2017-08-01 14:24:08', '2017-08-01 14:24:08'),
(118, 'xxxxxxx', 207, 1, NULL, 2, 2, '2017-08-01 14:17:37', '2017-08-01 14:23:49', '2017-08-01 14:23:49'),
(119, 'xxxxxxx', 208, 1, NULL, 2, 2, '2017-08-01 14:23:18', '2017-08-30 15:57:42', '2017-08-30 15:57:42'),
(120, 'North', 217, 1, NULL, 2, 2, '2017-08-30 12:15:49', '2017-08-30 12:15:49', NULL),
(121, 'B2309', 218, 1, NULL, 2, 2, '2017-08-30 17:44:35', '2017-08-30 17:44:35', NULL),
(122, 'IT8921', 219, 1, NULL, 2, 2, '2017-08-30 17:46:32', '2017-08-30 17:46:32', NULL),
(123, 'LN1201422', 222, 1, NULL, 2, 2, '2017-09-14 12:52:11', '2017-09-14 12:52:11', NULL),
(124, 'L/N098364', 224, 1, NULL, 2, 2, '2017-11-14 19:25:49', '2017-11-14 19:25:49', NULL),
(125, 'L/No3456378', 227, 1, NULL, 2, 2, '2018-01-28 12:31:11', '2018-01-28 12:31:11', NULL),
(126, 'L/No345637856', 228, 1, NULL, 2, 2, '2018-01-28 12:38:46', '2018-01-28 12:38:46', NULL),
(127, 'L/No345637865', 230, 1, NULL, 2, 2, '2018-01-28 13:08:41', '2018-01-28 13:08:41', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `license_statuses`
--

CREATE TABLE `license_statuses` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `last_updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `system` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `license_statuses`
--

INSERT INTO `license_statuses` (`id`, `name`, `created_by`, `last_updated_by`, `created_at`, `updated_at`, `deleted_at`, `system`) VALUES
(1, 'awaiting', 4, 4, '2017-05-10 16:21:25', '2017-05-10 17:19:57', '2017-05-10 17:19:57', 0),
(2, 'Pending', 2, 2, '2017-05-10 16:22:34', '2017-05-10 18:03:22', NULL, 1),
(3, 'active', 2, 2, '2017-05-10 17:20:16', '2017-05-11 14:42:15', '2017-05-11 14:42:15', 0),
(4, 'Active', 2, 2, '2017-05-11 13:25:32', '2017-06-14 16:57:48', NULL, 1),
(5, 'Inactive', 2, 2, '2017-05-11 13:26:56', '2017-05-11 13:26:56', NULL, 1),
(6, 'Withdrawn', 2, 2, '2017-05-11 14:01:55', '2017-05-11 14:01:55', NULL, 1),
(7, 'Makes sense', 2, 2, '2017-05-15 12:07:53', '2017-05-15 12:09:50', '2017-05-15 12:09:50', 0),
(8, 'Nothings', 2, 2, '2017-05-18 11:52:10', '2017-05-18 11:53:08', '2017-05-18 11:53:08', 0),
(9, 'Declined', 2, 2, '2017-06-15 14:48:13', '2017-06-15 14:48:13', NULL, 0),
(10, 'Disengaged', 2, 2, '2018-01-28 13:48:23', '2018-01-28 13:48:51', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `license_types`
--

CREATE TABLE `license_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `last_updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `expiry_date` date DEFAULT NULL,
  `system` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `license_types`
--

INSERT INTO `license_types` (`id`, `name`, `created_by`, `last_updated_by`, `created_at`, `updated_at`, `deleted_at`, `expiry_date`, `system`) VALUES
(1, 'Standard Number', 2, 2, '2017-06-13 18:04:04', '2017-06-14 17:01:24', '2017-06-14 17:01:24', NULL, 0),
(2, 'Short Codes', 2, 2, '2017-06-14 11:36:08', '2017-06-14 11:36:08', NULL, NULL, 1),
(3, 'Special Numbers', 2, 2, '2017-06-14 11:36:44', '2017-06-14 11:36:44', NULL, NULL, 0),
(4, 'Vanity Numbers', 2, 2, '2017-06-14 11:36:57', '2017-06-14 11:36:57', NULL, NULL, 0),
(5, 'International', 2, 2, '2017-06-14 17:00:45', '2017-06-14 17:00:45', NULL, NULL, 1),
(6, 'Standard Numbers', 2, 2, '2017-06-14 17:01:56', '2017-06-19 13:54:47', '2017-06-19 13:54:47', NULL, 0),
(7, 'National', 2, 2, '2017-06-15 14:56:29', '2017-06-15 14:57:23', '2017-06-15 14:57:23', NULL, 0),
(8, 'Standard Numbers', 2, 2, '2017-06-19 13:54:33', '2017-06-19 13:54:33', NULL, NULL, 0),
(9, 'International', 2, 2, '2017-06-19 13:55:24', '2017-06-19 13:55:38', '2017-06-19 13:55:38', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `body` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `recipient` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `app_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `old_message_id` int(11) DEFAULT NULL,
  `read` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `user_id`, `title`, `body`, `created_at`, `updated_at`, `deleted_at`, `recipient`, `app_name`, `old_message_id`, `read`) VALUES
(1, 2, 'Successfully Registered', 'your application was successful', '2017-07-25 18:57:50', '2017-07-25 18:57:50', NULL, '', '', NULL, 0),
(2, 2, 'Expired License', 'Your license will expire in the next 2days', '2017-07-25 19:00:25', '2017-07-25 19:00:25', NULL, '', '', NULL, 0),
(3, 2, 'Expired License', 'expired license', '2017-07-25 19:04:03', '2017-07-25 19:04:03', NULL, '', '', NULL, 0),
(4, 2, 'Expired License', 'license expired', '2017-07-25 19:08:42', '2017-07-25 19:08:42', NULL, '', '', NULL, 0),
(5, 2, 'Expired License', 'expired license', '2017-07-25 19:51:44', '2017-07-25 19:51:44', NULL, '', '', NULL, 0),
(6, 2, 'Expired License', 'license expired', '2017-07-25 19:54:48', '2017-07-25 19:54:48', NULL, '', '', NULL, 0),
(7, 2, 'Expired License', 'This is to inform you that your license will be expired with a month.\r\nKindly you renew it.', '2017-07-27 12:05:14', '2017-09-25 16:47:29', NULL, '', '', NULL, 1),
(8, 2, 'Application Successful', 'This is to inform you that your application was successful.\r\nThanks for applying.', '2017-07-27 12:35:45', '2017-07-27 12:35:45', NULL, '', '', NULL, 0),
(9, 2, 'Request Received', 'Kindly note that your request was received.will notify you as soon as possible.\r\nThanks.', '2017-07-27 12:41:36', '2017-09-25 16:47:39', NULL, '', '', NULL, 1),
(10, 2, 'Request Received', 'Kindly note that your request was received.will notify you as soon as possible.\r\nThanks.', '2017-07-27 12:47:05', '2017-07-27 12:47:05', NULL, '', '', NULL, 0),
(11, 2, 'Request Received', 'Kindly note that your request was received.will notify you as soon as possible.\r\nThanks.', '2017-07-27 12:48:02', '2017-07-27 12:48:02', NULL, '', '', NULL, 0),
(12, 2, 'Request Received', 'Kindly note that your request was received.will notify you as soon as possible.\r\nThanks.', '2017-07-27 12:48:17', '2017-07-27 12:48:17', NULL, '', '', NULL, 0),
(13, 2, 'Request Received', 'Kindly note that your request was received.will notify you as soon as possible.\r\nThanks.', '2017-07-27 12:48:37', '2017-07-27 12:48:37', NULL, '', '', NULL, 0),
(14, 2, 'Request Received', 'Kindly note that your request was received.will notify you as soon as possible.\r\nThanks.', '2017-07-27 12:49:38', '2017-07-27 12:49:38', NULL, '', '', NULL, 0),
(15, 2, 'Request Received', 'Kindly note that your request was received.will notify you as soon as possible.\r\nThanks.', '2017-07-27 12:50:27', '2017-07-27 12:50:27', NULL, '', '', NULL, 0),
(16, 2, 'Request Received', 'Kindly note that your request was received.will notify you as soon as possible.\r\nThanks.', '2017-07-27 12:52:21', '2017-07-27 12:52:21', NULL, '', '', NULL, 0),
(17, 2, 'Request Received', 'Kindly note that your request was received.will notify you as soon as possible.\r\nThanks.', '2017-07-27 13:03:29', '2017-09-19 11:12:36', NULL, '', '', NULL, 1),
(18, 2, 'testing the count', 'Kindly note that the count is working perfectlly', '2017-07-27 17:38:03', '2017-07-27 17:38:03', NULL, '', '', NULL, 0),
(19, 2, 'application sucessful', 'application sucessful', '2017-07-28 10:27:14', '2017-09-25 16:47:16', NULL, '', '', NULL, 1),
(20, 2, 'Application Successful', 'Kindly note that your application for short code was successfully.\r\nwill notify you shortly when you short code is activated.', '2017-07-28 15:51:39', '2017-09-19 14:33:13', NULL, '', 'Number Management System, NCC', NULL, 1),
(21, 2, 'Warning', 'Your License is about to expire, kindly retrieve it as soon as possible.', '2017-08-07 11:35:17', '2017-08-07 11:35:17', NULL, '', 'Number Management System, NCC', NULL, 0),
(22, 2, 'Test mail', 'Hello there', '2017-08-15 12:48:01', '2017-09-19 14:32:53', NULL, '', 'Number Management System, NCC', NULL, 1),
(23, 50, 'hello', 'why did you reject my application', '2017-08-15 19:42:08', '2017-08-15 19:42:08', NULL, '', 'Number Management System, NCC', 20, 0),
(24, 50, 'hello', 'why did you reject my application', '2017-08-15 19:44:18', '2017-09-19 11:12:00', NULL, '', 'Number Management System, NCC', 20, 1),
(25, 50, 'hello', 'why did you reject my application', '2017-08-15 19:47:10', '2017-09-19 12:56:22', NULL, '', 'Number Management System, NCC', 20, 1),
(26, 50, 'testing', 'i need to apply for another short code block', '2017-08-15 19:48:46', '2017-09-19 13:44:10', NULL, '', 'Number Management System, NCC', 20, 1),
(27, 50, 'testing', 'nothing to write about', '2017-08-17 13:11:19', '2017-09-26 14:15:47', NULL, '', 'Number Management System, NCC', 20, 1),
(28, 50, 'Hello', 'Yeah. I agree', '2017-08-23 12:54:48', '2017-09-19 17:53:34', NULL, '', 'Number Management System, NCC', 22, 1);

-- --------------------------------------------------------

--
-- Table structure for table `message_deletes`
--

CREATE TABLE `message_deletes` (
  `id` int(10) UNSIGNED NOT NULL,
  `message_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `message_deletes`
--

INSERT INTO `message_deletes` (`id`, `message_id`, `user_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 8, 50, '2017-08-01 12:01:07', '2017-08-01 12:01:07', NULL),
(3, 18, 50, '2017-08-01 12:05:06', '2017-08-01 12:05:06', NULL),
(4, 12, 50, '2017-08-01 14:16:38', '2017-08-01 14:16:38', NULL),
(5, 3, 2, '2017-08-07 11:14:33', '2017-08-07 11:14:33', NULL),
(6, 3, 2, '2017-08-07 11:43:59', '2017-08-07 11:43:59', NULL),
(7, 3, 2, '2017-08-07 11:47:15', '2017-08-07 11:47:15', NULL),
(8, 5, 2, '2017-08-11 17:40:01', '2017-08-11 17:40:01', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `message_reads`
--

CREATE TABLE `message_reads` (
  `id` int(10) UNSIGNED NOT NULL,
  `message_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `message_reads`
--

INSERT INTO `message_reads` (`id`, `message_id`, `user_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(8, 20, 50, '2017-08-01 11:15:29', '2017-08-01 11:15:29', NULL),
(9, 20, 65, '2017-08-01 11:15:29', '2017-08-01 11:15:29', NULL),
(10, 19, 50, '2017-08-01 11:18:53', '2017-08-01 11:18:53', NULL),
(11, 7, 50, '2017-08-01 11:19:26', '2017-08-01 11:19:26', NULL),
(12, 17, 2, '2017-08-01 11:23:33', '2017-08-01 11:23:33', NULL),
(13, 8, 50, '2017-08-01 11:54:09', '2017-08-01 11:54:09', NULL),
(14, 9, 50, '2017-08-01 12:00:20', '2017-08-01 12:00:20', NULL),
(15, 18, 50, '2017-08-01 12:05:00', '2017-08-01 12:05:00', NULL),
(16, 12, 50, '2017-08-01 14:16:32', '2017-08-01 14:16:32', NULL),
(17, 22, 50, '2017-08-15 12:48:19', '2017-08-15 12:48:19', NULL),
(18, 26, 50, '2017-08-16 12:42:22', '2017-08-16 12:42:22', NULL),
(19, 28, 50, '2017-08-23 12:58:30', '2017-08-23 12:58:30', NULL),
(20, 25, 50, '2017-08-28 15:18:10', '2017-08-28 15:18:10', NULL),
(21, 24, 50, '2017-09-26 14:15:18', '2017-09-26 14:15:18', NULL),
(22, 27, 50, '2017-09-26 14:15:47', '2017-09-26 14:15:47', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `message_user`
--

CREATE TABLE `message_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `message_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `message_user`
--

INSERT INTO `message_user` (`id`, `message_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 5, 108, NULL, NULL),
(2, 6, 106, NULL, NULL),
(3, 6, 108, NULL, NULL),
(4, 7, 50, NULL, NULL),
(5, 8, 50, NULL, NULL),
(6, 8, 3, NULL, NULL),
(7, 9, 0, NULL, NULL),
(8, 9, 50, NULL, NULL),
(9, 10, 0, NULL, NULL),
(10, 11, 0, NULL, NULL),
(11, 12, 50, NULL, NULL),
(12, 13, 0, NULL, NULL),
(13, 14, 0, NULL, NULL),
(14, 15, 0, NULL, NULL),
(15, 17, 2, NULL, NULL),
(16, 18, 50, NULL, NULL),
(17, 19, 50, NULL, NULL),
(18, 20, 50, NULL, NULL),
(19, 20, 65, NULL, NULL),
(20, 21, 198, NULL, NULL),
(21, 22, 50, NULL, NULL),
(22, 24, 2, NULL, NULL),
(23, 25, 2, NULL, NULL),
(24, 26, 2, NULL, NULL),
(25, 27, 2, NULL, NULL),
(26, 28, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2015_01_15_105324_create_roles_table', 1),
(4, '2015_01_15_114412_create_role_user_table', 1),
(5, '2015_01_26_115212_create_permissions_table', 1),
(6, '2015_01_26_115523_create_permission_role_table', 1),
(7, '2015_02_09_132439_create_permission_user_table', 1),
(8, '2017_05_08_085022_create_licenses_table', 1),
(9, '2017_05_08_085347_create_number_types_table', 1),
(10, '2017_05_08_085454_create_numbers_table', 1),
(11, '2017_05_08_085924_create_number_statuses_table', 1),
(12, '2017_05_08_090316_create_number_exceptions_table', 1),
(13, '2017_05_08_090840_create_applications_table', 1),
(14, '2017_05_08_093050_create_application_statuses_table', 1),
(15, '2017_05_08_094650_create_fees_table', 1),
(16, '2017_05_08_094919_create_taxes_table', 1),
(17, '2017_05_08_095117_create_invoices_table', 1),
(18, '2017_05_08_095709_create_invoice_fees_table', 1),
(19, '2017_05_08_100651_create_invoice_taxes_table', 1),
(20, '2017_05_08_101053_create_payments_table', 1),
(21, '2017_05_08_102157_create_messages_table', 1),
(22, '2017_05_08_102704_create_message_user_pivot_table', 1),
(23, '2017_05_08_103203_create_message_reads_table', 1),
(24, '2017_05_08_103223_create_message_deletes_table', 1),
(25, '2017_05_08_103831_create_license_statuses_table', 1),
(26, '2017_05_08_105059_create_application_histories_table', 1),
(27, '2017_05_11_090714_create_user_types_table', 1),
(28, '2017_05_11_090801_add_user_type_id_to_users_table', 1),
(29, '2017_05_11_144009_create_companies_table', 1),
(30, '2017_05_11_150926_Add_mobile_and_passport_user_table', 1),
(31, '2017_05_12_123353_create_frequencies_table', 1),
(32, '2017_05_15_122628_add_created_by_to_frequencies', 1),
(33, '2017_05_15_133833_roles_extras', 1),
(34, '2017_05_15_142314_permissions_extras', 1),
(35, '2017_05_18_134115_create_areas_table', 1),
(36, '2017_05_18_140104_create_application_numbers_table', 1),
(37, '2017_05_18_140119_create_application_shorts_table', 1),
(38, '2017_05_18_140634_create_application_licenses_table', 1),
(39, '2017_05_18_141001_create_numbering_applications_table', 1),
(40, '2017_05_18_141202_create_interconnectors_table', 1),
(41, '2017_05_23_113354_create_frequency_coverages_table', 1),
(42, '2017_05_23_113809_create_telecom_partners_table', 1),
(43, '2017_05_23_114251_create_equipment_table', 1),
(44, '2017_05_23_115822_create_application_extras_table', 1),
(45, '2017_05_23_122358_create_product_numbers_table', 1),
(46, '2017_05_23_122415_create_product_shorts_table', 1),
(47, '2017_05_25_130757_application_numbers_extras', 1),
(48, '2017_05_25_131353_application_licenses_extras', 1),
(49, '2017_05_26_120803_add_allocation_details_to_application_shorts_table', 1),
(50, '2017_05_26_121453_add_list_company_interconnect_to_application_shorts_table', 1),
(51, '2017_05_26_122317_add_proposed_short_code_to_application_shorts_table', 1),
(52, '2017_05_26_122351_add_intended_interconnect_new_service_to_application_shorts_table', 1),
(53, '2017_05_26_122535_add_interconnect_agreement_to_application_shorts_table', 1),
(54, '2017_05_26_122808_add_list_proposed_equipment_to_application_shorts_table', 1),
(55, '2017_05_26_122814_add_agreement_document_to_application_shorts_table', 1),
(56, '2017_05_26_123058_add_undertaking_name_to_application_shorts_table', 1),
(57, '2017_05_26_123326_add_passport_image_one_to_application_shorts_table', 1),
(58, '2017_05_26_123419_add_passport_image_two_to_application_shorts_table', 1),
(59, '2017_05_26_123520_add_passport_name_one_to_application_shorts_table', 1),
(60, '2017_05_26_123632_add_passport_name_two_to_application_shorts_table', 1),
(61, '2017_05_26_123757_add_passport_designation_one_to_application_shorts_table', 1),
(62, '2017_05_26_124000_add_passport_signature_one_to_application_shorts_table', 1),
(63, '2017_05_26_124001_add_passport_designation_two_to_application_shorts_table', 1),
(64, '2017_05_26_124152_add_passport_signature_two_to_application_shorts_table', 1),
(65, '2017_05_26_131036_add_frquency_payment_to_application_nmubers', 1),
(66, '2017_05_26_133439_addfrequency_renewal_payment_to_application_nmubers', 1),
(67, '2017_05_26_141834_adnumber_payment_to_application_nmubers', 1),
(68, '2017_05_30_092902_add_area_to_numbers', 1),
(69, '2017_05_30_095415_add_assign_to_number_statuses', 1),
(70, '2017_05_30_121745_add_range_to_numbering_applications', 1),
(71, '2017_05_30_134832_create_reps_table', 1),
(72, '2017_05_30_150542_add_shortcode_to_numbering_applications', 1),
(73, '2017_05_30_213353_add_allocation_date_to_product_shorts_table', 1),
(74, '2017_05_31_095953_add_shorts_to_product_numbers', 1),
(75, '2017_05_31_110215_add_inter_to_app_shorts', 1),
(76, '2017_05_31_113638_add_address_to_company', 1),
(77, '2017_06_01_094336_spplication_shorts_additions', 1),
(78, '2017_06_01_095757_spplication_numbers_additions', 1),
(79, '2017_06_01_123223_add_status_to_application_numbers', 1),
(80, '2017_06_01_123251_add_status_to_application_shorts', 1),
(81, '2017_06_07_092213_add_system_to_fees', 1),
(82, '2017_06_07_101128_add_submitted_to_application_numbers', 1),
(83, '2017_06_08_153011_invoices_extras', 1),
(84, '2017_06_08_153040_create_invoice_details_table', 1),
(85, '2017_06_08_170440_add_starting_ending_to_product_numbers', 1),
(86, '2017_06_12_103000_add_company_id_to_invoices', 1),
(87, '2017_06_12_131240_add_area_details_to_invoice_details', 1),
(88, '2017_06_13_075200_create_license_types_table', 1),
(89, '2017_06_13_154650_create_company_license_table', 1),
(90, '2017_06_14_090242_add_fees_name_to_invoice_details', 1),
(91, '2017_06_15_135315_add_tracking_no', 1),
(92, '2017_06_16_093430_create_activity_log_table', 1),
(93, '2017_06_19_103218_create_departments_table', 1),
(94, '2017_06_20_105123_add_department_id_to_users_table', 1),
(95, '2017_06_20_112453_add_manager_id_to_table_users', 1),
(96, '2017_06_20_154244_add_times_to_login', 1),
(97, '2017_06_28_094819_create_application_ispcs_table', 1),
(98, '2017_06_28_100832_Add_Ispc_Requirement_Table', 1),
(99, '2017_06_28_101015_Add_Existing_Ispc', 1),
(100, '2017_06_29_092643_stage_applications', 1),
(101, '2017_06_29_095858_add_creator_to_ispc', 1),
(102, '2017_07_12_105424_create_images', 1),
(103, '2017_07_12_124637_invoice_final', 1),
(104, '2017_07_13_084850_add_other_licenses_to_short_codes', 1),
(105, '2017_07_14_114657_extras_file_details', 1),
(106, '2017_07_18_115435_add_max_digit_to_number_types', 1),
(107, '2017_07_18_115621_add_comment_to_application_numbers', 1),
(108, '2017_07_18_134228_add_fees_to_number_types_table', 1),
(109, '2017_07_18_141555_add_share_to_number', 1),
(110, '2017_07_19_084415_create_countries_table', 1),
(111, '2017_07_19_092605_create_approval_stages_table', 1),
(112, '2017_07_19_093909_create_checklists_table', 1),
(113, '2017_07_19_100852_create_services_table', 1),
(114, '2017_07_19_102213_create_coverage_areas_table', 1),
(115, '2017_07_19_102818_create_approval_stage_number_type', 1),
(116, '2017_07_19_104921_add_created_by', 1),
(117, '2017_07_19_125717_add_phonecode_users_table', 1),
(118, '2017_07_24_094700_create_notifications_table', 1),
(119, '2017_07_25_162525_Add_Receiver_To_Message_Table', 1),
(120, '2017_07_25_174443_invoice_fees_extras', 1),
(121, '2017_07_25_174503_invoice_taxes_extras', 1),
(122, '2017_07_25_175807_invoice_due_date', 1),
(123, '2017_07_26_095331_invoice_freq', 1),
(124, '2017_07_26_095545_create_bills_table', 1),
(125, '2017_07_26_095603_create_bill_fees_table', 1),
(126, '2017_07_26_095630_create_bill_taxes_table', 1),
(127, '2017_07_28_133146_Add_App_Name_In_Message_Table', 1),
(128, '2017_07_28_133252_bill_due_date', 1),
(129, '2017_07_28_133439_invoice_status', 1),
(130, '2017_07_28_135613_bill_status', 1),
(131, '2017_08_01_101145_add_expiry_date_to_company_license_type', 1),
(132, '2017_08_01_162833_payments_extras', 1),
(133, '2017_08_01_174651_add_rrr_to_payments', 1),
(134, '2017_08_02_093255_bill_payments', 1),
(135, '2017_08_02_100735_add_transaction_time_to_payments', 1),
(136, '2017_08_02_134523_add_tracking_no_to_bills', 1),
(137, '2017_08_02_144206_add_tracking_no_to_payments', 1),
(138, '2017_08_08_115849_create_approves_table', 1),
(139, '2017_08_09_165712_add_application_ispc_id_to_product_numbers', 1),
(140, '2017_08_10_140326_application_admin_final', 1),
(141, '2017_08_10_142916_add_date_submitted_to_application_ispcs', 1),
(142, '2017_08_10_143926_add_date_submitted_to_application_shorts', 1),
(143, '2017_08_10_144102_add_date_submitted_to_application_numbers', 1),
(144, '2017_08_11_081849_add_company_to_numbers', 1),
(145, '2017_08_11_082325_create_porteds_table', 1),
(146, '2017_08_11_082405_create_number_logs_table', 1),
(147, '2017_08_15_102034_add_number_id_to_porteds', 1),
(148, '2017_08_15_170233_create_permission_tables', 1),
(149, '2017_08_15_170615_Add_odd_message_in_message_table', 1),
(150, '2017_08_16_150131_approval_stage_checklist', 1),
(151, '2017_08_23_141635_create_valid_date', 1),
(152, '2017_08_23_150113_add_number_tpe_to_number_logs', 1),
(153, '2017_08_24_130304_add_number_type_id_to_porteds', 1),
(154, '2017_08_29_092530_add_valid_date_to_approves', 1),
(155, '2017_08_30_053212_add_last_email_sent_to_bills', 1),
(156, '2017_09_11_061032_create_receipts_table', 1),
(157, '2017_09_12_140045_create_new_users_table', 1),
(158, '2017_09_18_115507_Add_Number_type_Config', 1),
(159, '2017_09_19_085816_Add_read_to_messages_table', 1),
(160, '2017_09_26_105052_Add_read_to_application_number_table', 1),
(161, '2017_09_26_105129_add_read_to_application_numbers', 1),
(162, '2017_09_26_105244_Add_read_to_application_ispc_table', 1),
(163, '2017_09_26_105941_add_read_to_bills', 1),
(164, '2017_09_28_093946_Add_License_Category_New_User', 1),
(165, '2017_10_04_125655_create_labels_table', 1),
(166, '2017_10_04_132121_create_label_number_table', 1),
(167, '2017_10_04_141744_add_assign_to_table', 1),
(168, '2017_10_05_072847_add_shared_to_numbers', 1),
(169, '2017_10_05_094554_add_assign_user_to_table', 1),
(170, '2017_10_05_110510_add_expiry_date_to_applications', 1),
(171, '2017_10_05_110928_add_assign_user_ispc_to_table', 1),
(172, '2017_10_05_120330_create_renew_numbers_table', 1),
(173, '2017_10_13_121617_Add_system_to_NumberTpe_Table', 1),
(174, '2017_10_30_103205_add_number_type_id_to_applications', 1),
(175, '2017_11_07_133921_add_name_table', 1),
(176, '2017_11_07_140323_add_rep2_table', 1),
(177, '2017_11_08_111116_add_rep_table', 1),
(178, '2018_10_29_131443_add_application_status_id_to_application_ispcs', 2),
(179, '2018_10_29_162132_add_system_to_application_statuses', 3),
(180, '2018_10_29_164951_add_approves_to_approves', 4),
(181, '2018_10_29_170035_add_frequency_to_bills', 5),
(182, '2018_10_29_170919_add_company_name_to_companies', 6),
(183, '2018_10_29_171629_add_frequency_id_to_fees', 7),
(184, '2018_10_29_172102_add_system_to_license_statuses', 8),
(189, '2018_11_21_124253_add_api_details_to_users', 9),
(190, '2018_11_21_125621_add_api_details_to_companies', 9),
(191, '2018_11_28_115945_add_system_to_license_types', 10),
(192, '2018_11_28_120714_add_system_to_number_statuses', 11),
(193, '2018_11_28_121036_create_number_type_renewal_stage', 12),
(194, '2018_11_28_121639_create_number_type_service_stage', 13),
(195, '2018_11_28_122228_create_short_code_renewals', 14),
(197, '2018_11_28_122425_create_short_code_short_code_services', 15),
(199, '2018_11_28_135739_add_api_details_to_invoice', 16),
(200, '2018_12_04_065702_add_api_details_to_payments', 17),
(201, '2018_12_04_070511_add_api_invoice_no_to_invoices', 18),
(202, '2018_12_18_102239_add_payment_type_to_invoices_payments', 19);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `model_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `model_has_permissions`
--

INSERT INTO `model_has_permissions` (`permission_id`, `model_id`, `model_type`) VALUES
(6, 2, 'App\\User'),
(21, 2, 'App\\User'),
(37, 2, 'App\\User'),
(67, 2, 'App\\User'),
(83, 2, 'App\\User'),
(120, 2, 'App\\User'),
(133, 2, 'App\\User'),
(134, 2, 'App\\User');

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `model_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_id`, `model_type`) VALUES
(1, 2, 'App\\User'),
(2, 2, 'App\\User'),
(4, 2, 'App\\User');

-- --------------------------------------------------------

--
-- Table structure for table `new_users`
--

CREATE TABLE `new_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `company_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `license_no` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `comment` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `license_category` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `notifiable_id` int(10) UNSIGNED NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `data` text COLLATE utf8_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_id`, `notifiable_type`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('0cb39d6b-d952-4a07-90b3-ac0da6ae10e7', 'App\\Notifications\\UserReg', 2, 'App\\User', '{\"user\":{\"picture\":\"img\\/default-avatar.png\",\"name\":\"Onaghise William\",\"email\":\"wonaghise@gmail.com\",\"mobile_no\":\"8023498734\",\"phonecode\":\"234\",\"user_type_id\":2,\"department_id\":\"3\",\"created_by\":2,\"last_updated_by\":2,\"updated_at\":\"2017-08-22 15:22:10\",\"created_at\":\"2017-08-22 15:22:10\",\"id\":213}}', NULL, '2017-08-22 17:22:11', '2017-08-22 17:22:11'),
('17261c4a-1065-4016-aa10-d472a45d1b1c', 'App\\Notifications\\UserReg', 2, 'App\\User', '{\"user\":{\"picture\":\"img\\/default-avatar.png\",\"name\":\"My Chief\",\"email\":\"chieftancy@ncc.gov.ng\",\"mobile_no\":\"08030666858\",\"phonecode\":\"234\",\"user_type_id\":2,\"department_id\":\"2\",\"created_by\":2,\"last_updated_by\":2,\"updated_at\":\"2017-08-16 09:24:13\",\"created_at\":\"2017-08-16 09:24:13\",\"id\":209}}', NULL, '2017-08-16 11:24:15', '2017-08-16 11:24:15'),
('330340d1-85f5-471a-aeb1-0b030e68fdc4', 'App\\Notifications\\UserReg', 2, 'App\\User', '{\"user\":{\"picture\":\"img\\/default-avatar.png\",\"name\":\"Amaka Telecoms\",\"email\":\"annmaryamaka@gmail.com\",\"mobile_no\":\"08062435647\",\"phonecode\":\"234\",\"user_type_id\":2,\"department_id\":\"2\",\"created_by\":2,\"last_updated_by\":2,\"updated_at\":\"2017-11-14 16:14:31\",\"created_at\":\"2017-11-14 16:14:31\",\"id\":223}}', NULL, '2017-11-14 19:14:34', '2017-11-14 19:14:34'),
('38109f46-e475-4175-b311-a6efaebfb9cb', 'App\\Notifications\\UserReg', 2, 'App\\User', '{\"user\":{\"picture\":\"img\\/default-avatar.png\",\"name\":\"Ana\",\"email\":\"anani.nn@ncc.ng\",\"mobile_no\":\"8030666858\",\"phonecode\":\"234\",\"user_type_id\":2,\"department_id\":\"2\",\"created_by\":2,\"last_updated_by\":2,\"updated_at\":\"2017-09-11 11:40:28\",\"created_at\":\"2017-09-11 11:40:28\",\"id\":220}}', NULL, '2017-09-11 13:40:30', '2017-09-11 13:40:30'),
('64d05cbb-2f66-4c38-bce9-9e3e32745615', 'App\\Notifications\\UserReg', 2, 'App\\User', '{\"user\":{\"picture\":\"img\\/default-avatar.png\",\"name\":\"Ochiaka Christian\",\"email\":\"ochichris4real@gmail.com\",\"mobile_no\":\"8145890324\",\"phonecode\":\"234\",\"user_type_id\":2,\"department_id\":\"3\",\"created_by\":2,\"last_updated_by\":2,\"updated_at\":\"2017-08-22 15:23:47\",\"created_at\":\"2017-08-22 15:23:47\",\"id\":214}}', NULL, '2017-08-22 17:23:48', '2017-08-22 17:23:48'),
('7975f5c1-0f69-4457-b58d-8126e902c31f', 'App\\Notifications\\UserReg', 2, 'App\\User', '{\"user\":{\"picture\":\"img\\/default-avatar.png\",\"name\":\"Kingship\",\"email\":\"kingship@ncc.gov.ng\",\"mobile_no\":\"234802\",\"phonecode\":\"244\",\"user_type_id\":2,\"department_id\":\"2\",\"created_by\":2,\"last_updated_by\":2,\"updated_at\":\"2017-08-16 11:52:03\",\"created_at\":\"2017-08-16 11:52:03\",\"id\":211}}', NULL, '2017-08-16 13:52:05', '2017-08-16 13:52:05'),
('a2e18881-5118-432c-a516-32d1f9cfed86', 'App\\Notifications\\UserReg', 2, 'App\\User', '{\"user\":{\"picture\":\"img\\/default-avatar.png\",\"name\":\"UI\\/Ux\",\"email\":\"Idrismuby@gmail.com\",\"mobile_no\":\"08056374839\",\"phonecode\":\"234\",\"user_type_id\":2,\"department_id\":\"2\",\"created_by\":2,\"last_updated_by\":2,\"updated_at\":\"2017-11-15 14:39:56\",\"created_at\":\"2017-11-15 14:39:56\",\"id\":226}}', NULL, '2017-11-15 17:39:58', '2017-11-15 17:39:58'),
('b6a9157b-1388-4271-8ade-e7c8b5311237', 'App\\Notifications\\UserReg', 2, 'App\\User', '{\"user\":{\"picture\":\"img\\/default-avatar.png\",\"name\":\"Tochukwu Adams\",\"email\":\"tochiadams3@gmail.com\",\"mobile_no\":\"8148733312\",\"phonecode\":\"234\",\"user_type_id\":2,\"department_id\":\"3\",\"created_by\":2,\"last_updated_by\":2,\"updated_at\":\"2017-08-22 15:25:39\",\"created_at\":\"2017-08-22 15:25:39\",\"id\":215}}', NULL, '2017-08-22 17:25:40', '2017-08-22 17:25:40'),
('df1293c1-eafc-43a4-8ed6-1817da2f0404', 'App\\Notifications\\UserReg', 2, 'App\\User', '{\"user\":{\"picture\":\"img\\/default-avatar.png\",\"name\":\"Idris Mubarak\",\"email\":\"idrismuby@gmail.com\",\"mobile_no\":\"8133852304\",\"phonecode\":\"234\",\"user_type_id\":2,\"department_id\":\"3\",\"created_by\":2,\"last_updated_by\":2,\"updated_at\":\"2017-08-22 15:15:57\",\"created_at\":\"2017-08-22 15:15:57\",\"id\":212}}', NULL, '2017-08-22 17:15:59', '2017-08-22 17:15:59'),
('ed7d1dbb-2f7a-4c86-bdf2-b25c80329496', 'App\\Notifications\\UserReg', 2, 'App\\User', '{\"user\":{\"picture\":\"img\\/default-avatar.png\",\"name\":\"Abiodun Sulaiman\",\"email\":\"future4christ@gmail.com\",\"mobile_no\":\"91388966721\",\"phonecode\":\"234\",\"user_type_id\":2,\"department_id\":\"3\",\"created_by\":2,\"last_updated_by\":2,\"updated_at\":\"2017-08-22 15:38:05\",\"created_at\":\"2017-08-22 15:38:05\",\"id\":216}}', NULL, '2017-08-22 17:38:06', '2017-08-22 17:38:06'),
('ee7fbf83-253e-4c34-8411-4cba152009a8', 'App\\Notifications\\UserReg', 2, 'App\\User', '{\"user\":{\"picture\":\"img\\/default-avatar.png\",\"name\":\"Kings Adeyemi\",\"email\":\"king@ncc.gov.ng\",\"mobile_no\":\"8031234539\",\"phonecode\":\"234\",\"user_type_id\":2,\"department_id\":\"2\",\"created_by\":2,\"last_updated_by\":2,\"updated_at\":\"2017-09-11 13:11:44\",\"created_at\":\"2017-09-11 13:11:44\",\"id\":221}}', NULL, '2017-09-11 15:11:46', '2017-09-11 15:11:46'),
('f1aff667-6b2a-4c13-b2be-ee5bf9eeff8e', 'App\\Notifications\\UserReg', 2, 'App\\User', '{\"user\":{\"picture\":\"img\\/default-avatar.png\",\"name\":\"Abiodun\",\"email\":\"future4christ@gmail.com\",\"mobile_no\":\"8030666858\",\"phonecode\":\"234\",\"user_type_id\":2,\"department_id\":\"2\",\"created_by\":2,\"last_updated_by\":2,\"updated_at\":\"2017-11-15 14:28:37\",\"created_at\":\"2017-11-15 14:28:37\",\"id\":225}}', NULL, '2017-11-15 17:28:40', '2017-11-15 17:28:40');

-- --------------------------------------------------------

--
-- Table structure for table `numbering_applications`
--

CREATE TABLE `numbering_applications` (
  `id` int(10) UNSIGNED NOT NULL,
  `number_id` int(11) NOT NULL,
  `application_number_id` int(11) DEFAULT NULL,
  `application_short_id` int(11) DEFAULT NULL,
  `area_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `actual_series` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `exact_location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `allocation_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `purpose` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bearer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tariff` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `numbering_range` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shortcode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `numbering_applications`
--

INSERT INTO `numbering_applications` (`id`, `number_id`, `application_number_id`, `application_short_id`, `area_code`, `actual_series`, `exact_location`, `allocation_date`, `purpose`, `bearer`, `tariff`, `created_at`, `updated_at`, `deleted_at`, `numbering_range`, `shortcode`) VALUES
(1, 1, 10, NULL, '0900', '09003', 'Abuja', NULL, NULL, NULL, NULL, '2017-05-30 16:10:48', '2017-05-30 16:10:48', NULL, '0803 - 0903', NULL),
(2, 1, 11, NULL, '0900', '09003', 'Abuja', NULL, NULL, NULL, NULL, '2017-05-30 16:11:16', '2017-05-30 16:11:16', NULL, '0803 - 0903', NULL),
(3, 1, NULL, 7, '', NULL, NULL, '2017-06-12', 'private', 'USSD', '10', '2017-06-12 12:21:40', '2017-06-12 12:21:40', NULL, '099', NULL),
(4, 1, 13, NULL, '0803', '0803', 'National', NULL, NULL, NULL, NULL, '2017-06-12 13:29:50', '2017-06-12 13:29:50', NULL, '080300000-080399999', NULL),
(5, 1, NULL, 11, '', NULL, NULL, '2016-11-30', 'Lottery', 'SMS', '100', '2017-06-12 14:14:52', '2017-06-12 14:14:52', NULL, '00909', NULL),
(6, 1, NULL, 12, '', NULL, NULL, '2016-10-30', 'Medical', 'SMS', '50', '2017-06-12 16:20:21', '2017-06-12 16:20:21', NULL, '0212', NULL),
(7, 1, NULL, 13, '', NULL, NULL, '2016-01-31', 'Medical', 'SMS', '50', '2017-06-12 16:28:41', '2017-06-12 16:28:41', NULL, '0252', NULL),
(8, 1, NULL, 14, '', NULL, NULL, '2016-01-31', 'Medical', 'SMS', '50', '2017-06-12 16:30:17', '2017-06-12 16:30:17', NULL, '0252', NULL),
(9, 1, 14, NULL, '3490', 'Standard', 'Sapele', NULL, NULL, NULL, NULL, '2017-06-14 16:18:16', '2017-06-14 16:18:16', NULL, '0852-0900', NULL),
(10, 1, NULL, 15, '', NULL, NULL, '2017-06-14', 'Private', 'USSD', '10', '2017-06-14 16:46:42', '2017-06-14 16:46:42', NULL, '234', NULL),
(11, 1, NULL, 16, '', NULL, NULL, '2017/06/09', 'Commercial', 'SMS', '20', '2017-06-21 17:58:10', '2017-07-18 16:59:53', '2017-07-18 16:59:53', '02003', NULL),
(12, 1, 15, NULL, '010999999', '010', 'National', NULL, NULL, NULL, NULL, '2017-06-21 18:07:57', '2017-07-13 16:30:37', '2017-07-13 16:30:37', '010000000', NULL),
(13, 1, 16, NULL, '0803', '0803', 'National', NULL, NULL, NULL, NULL, '2017-06-21 19:10:35', '2017-06-21 19:10:35', NULL, '0803000000000-0803999999999', NULL),
(14, 1, 17, NULL, '0803', '0803', 'National', NULL, NULL, NULL, NULL, '2017-06-22 11:42:05', '2017-06-22 11:42:05', NULL, '08030000000 - 08039999999', NULL),
(15, 1, 18, NULL, '000', '000', 'National', NULL, NULL, NULL, NULL, '2017-06-28 13:21:49', '2017-06-28 13:21:49', NULL, '000 - 002', NULL),
(16, 1, NULL, 17, '', NULL, NULL, '2017-06-28', 'public', 'USSD', '10', '2017-06-28 14:27:02', '2017-06-28 14:27:02', NULL, '234', NULL),
(17, 1, NULL, 18, '', NULL, NULL, '2017-06-28', 'public', 'SMS', 'Nil', '2017-06-28 14:59:21', '2017-06-28 14:59:21', NULL, '345', NULL),
(18, 1, NULL, 19, '', NULL, NULL, '2017-06-13', 'Public', 'SMS', 'NIL', '2017-06-28 15:10:54', '2017-06-28 15:10:54', NULL, '867', NULL),
(19, 1, NULL, 20, '', NULL, NULL, '2017-06-13', 'Public', 'SMS', 'NIL', '2017-06-28 15:11:38', '2017-06-28 15:11:38', NULL, '867', NULL),
(20, 1, NULL, 21, '', NULL, NULL, '2017-06-13', 'Public', 'SMS', 'NIL', '2017-06-28 15:12:44', '2017-06-28 15:12:44', NULL, '867', NULL),
(21, 1, NULL, 22, '', NULL, NULL, '2017-06-13', 'Public', 'SMS', 'NIL', '2017-06-28 15:12:58', '2017-06-28 15:12:58', NULL, '867', NULL),
(22, 1, NULL, 23, '', NULL, NULL, '2017-06-13', 'Public', 'SMS', 'NIL', '2017-06-28 15:13:21', '2017-06-28 15:13:21', NULL, '867', NULL),
(23, 1, NULL, 24, '', NULL, NULL, '2017-06-28', 'Public', 'SMS', '10', '2017-06-28 15:29:49', '2017-06-28 15:29:49', NULL, '234', NULL),
(24, 1, 19, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-29 16:05:46', '2017-06-29 16:07:08', '2017-06-29 16:07:08', NULL, NULL),
(25, 1, 19, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-29 16:07:08', '2017-06-29 16:09:52', '2017-06-29 16:09:52', NULL, NULL),
(26, 1, 19, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-29 16:09:52', '2017-06-29 16:10:35', '2017-06-29 16:10:35', NULL, NULL),
(27, 1, 19, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-29 16:10:35', '2017-06-29 16:11:01', '2017-06-29 16:11:01', NULL, NULL),
(28, 1, 19, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-29 16:11:01', '2017-06-29 16:11:17', '2017-06-29 16:11:17', NULL, NULL),
(29, 1, 19, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-29 16:11:17', '2017-06-29 16:11:40', '2017-06-29 16:11:40', NULL, NULL),
(30, 1, 19, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-29 16:11:40', '2017-06-29 16:11:56', '2017-06-29 16:11:56', NULL, NULL),
(31, 1, 19, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-29 16:11:56', '2017-06-29 16:12:13', '2017-06-29 16:12:13', NULL, NULL),
(32, 1, 19, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-29 16:12:13', '2017-06-29 16:12:39', '2017-06-29 16:12:39', NULL, NULL),
(33, 1, 19, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-29 16:12:39', '2017-06-29 16:13:44', '2017-06-29 16:13:44', NULL, NULL),
(34, 1, 19, NULL, '022', '225', '555', NULL, NULL, NULL, NULL, '2017-06-29 16:13:44', '2017-06-29 16:14:01', '2017-06-29 16:14:01', '0805', NULL),
(35, 1, 19, NULL, '022', '225', '555', NULL, NULL, NULL, NULL, '2017-06-29 16:14:01', '2017-06-29 16:47:15', '2017-06-29 16:47:15', '0805', NULL),
(36, 1, 19, NULL, '022', '0202', '555', NULL, NULL, NULL, NULL, '2017-06-29 16:47:15', '2017-06-29 17:11:11', '2017-06-29 17:11:11', '0805', NULL),
(37, 1, 19, NULL, '2222', '6565', '633', NULL, NULL, NULL, NULL, '2017-06-29 16:47:15', '2017-06-29 17:11:11', '2017-06-29 17:11:11', '0852', NULL),
(38, 1, 19, NULL, '022', NULL, '555', NULL, NULL, NULL, NULL, '2017-06-29 17:11:11', '2017-06-29 17:23:51', '2017-06-29 17:23:51', '0805', NULL),
(39, 1, 19, NULL, '2222', NULL, '633', NULL, NULL, NULL, NULL, '2017-06-29 17:11:11', '2017-06-29 17:23:51', '2017-06-29 17:23:51', '0852', NULL),
(40, 1, 19, NULL, '022', '222', '11', NULL, NULL, NULL, NULL, '2017-06-29 17:23:51', '2017-06-29 17:25:29', '2017-06-29 17:25:29', '0805', NULL),
(41, 1, 19, NULL, '2222', '333', '633', NULL, NULL, NULL, NULL, '2017-06-29 17:23:51', '2017-06-29 17:25:29', '2017-06-29 17:25:29', '0852', NULL),
(42, 1, 19, NULL, '022', '222', '11', NULL, NULL, NULL, NULL, '2017-06-29 17:25:29', '2017-06-29 18:21:27', '2017-06-29 18:21:27', '0805', NULL),
(43, 1, 19, NULL, '2222', '333', '633', NULL, NULL, NULL, NULL, '2017-06-29 17:25:29', '2017-06-29 18:21:27', '2017-06-29 18:21:27', '0852', NULL),
(44, 1, 19, NULL, '022', '222', '11', NULL, NULL, NULL, NULL, '2017-06-29 18:21:27', '2017-06-29 18:29:26', '2017-06-29 18:29:26', '0805', NULL),
(45, 1, 19, NULL, '2222', '333', '633', NULL, NULL, NULL, NULL, '2017-06-29 18:21:27', '2017-06-29 18:29:26', '2017-06-29 18:29:26', '0852', NULL),
(46, 1, 19, NULL, '022', '222', '11', NULL, NULL, NULL, NULL, '2017-06-29 18:29:26', '2017-06-29 18:30:41', '2017-06-29 18:30:41', '0805', NULL),
(47, 1, 19, NULL, '2222', '333', '633', NULL, NULL, NULL, NULL, '2017-06-29 18:29:26', '2017-06-29 18:30:41', '2017-06-29 18:30:41', '0852', NULL),
(48, 1, 19, NULL, '022', '222', '11', NULL, NULL, NULL, NULL, '2017-06-29 18:30:41', '2017-06-29 18:30:41', NULL, '0805', NULL),
(49, 1, 19, NULL, '2222', '333', '633', NULL, NULL, NULL, NULL, '2017-06-29 18:30:41', '2017-06-29 18:30:41', NULL, '0852', NULL),
(50, 1, 21, NULL, '0803', '1234', 'Abuja', NULL, NULL, NULL, NULL, '2017-07-12 15:13:34', '2017-07-12 15:13:34', NULL, '0803-0809', NULL),
(51, 1, NULL, 25, '', NULL, NULL, '2016-12-31', 'Health', 'USSD', '20', '2017-07-13 13:27:59', '2017-07-13 13:27:59', NULL, '2525', NULL),
(52, 1, 15, NULL, '010999999', '010', 'National', NULL, NULL, NULL, NULL, '2017-07-13 16:30:37', '2017-07-13 16:30:37', NULL, '010000000', NULL),
(53, 1, NULL, 26, '', NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-14 12:04:08', '2017-08-10 12:40:02', '2017-08-10 12:40:02', NULL, NULL),
(54, 1, 25, NULL, '0803', '0803', 'Abuja', NULL, NULL, NULL, NULL, '2017-07-14 15:21:13', '2017-07-14 15:21:13', NULL, '08030000000-08039999999', NULL),
(55, 1, NULL, 27, '', NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-14 16:19:30', '2017-07-14 16:19:30', NULL, NULL, NULL),
(56, 1, NULL, 28, '', NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-17 13:25:12', '2017-07-17 13:25:12', NULL, NULL, NULL),
(57, 1, 27, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-17 13:27:59', '2017-07-17 13:27:59', NULL, NULL, NULL),
(58, 1, 29, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-18 13:32:53', '2017-07-18 14:10:46', '2017-07-18 14:10:46', NULL, NULL),
(59, 1, NULL, 29, '', NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-18 13:41:47', '2017-07-18 13:41:47', NULL, NULL, NULL),
(60, 1, 29, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-18 14:10:46', '2017-07-18 14:11:49', '2017-07-18 14:11:49', NULL, NULL),
(61, 1, 29, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-18 14:11:49', '2017-07-18 14:12:26', '2017-07-18 14:12:26', NULL, NULL),
(62, 1, 29, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-18 14:12:26', '2017-07-18 14:13:52', '2017-07-18 14:13:52', NULL, NULL),
(63, 1, 29, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-18 14:13:52', '2017-07-18 14:22:18', '2017-07-18 14:22:18', NULL, NULL),
(64, 1, 29, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-18 14:22:18', '2017-07-18 14:22:18', NULL, NULL, NULL),
(65, 1, 31, NULL, '09', '900', 'Jabi', NULL, NULL, NULL, NULL, '2017-07-18 14:35:20', '2017-07-18 14:35:20', NULL, '900-999', NULL),
(66, 1, NULL, 30, '', NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-18 15:13:19', '2017-07-18 15:13:19', NULL, NULL, NULL),
(67, 1, NULL, 16, '', NULL, NULL, NULL, 'Commercial', 'SMS', '20', '2017-07-18 16:59:53', '2017-07-18 16:59:53', NULL, '02003', NULL),
(68, 1, 33, NULL, '345', '0949973632', 'Lagos', NULL, NULL, NULL, NULL, '2017-07-18 17:56:10', '2017-07-18 17:56:10', NULL, '123-1233', NULL),
(69, 1, 34, NULL, '0803', '0803', 'Abuja', NULL, NULL, NULL, NULL, '2017-07-18 18:27:30', '2017-07-18 18:27:30', NULL, '080300000000-080399999999', NULL),
(70, 1, 42, NULL, '09', '0807', 'Abuja', NULL, NULL, NULL, NULL, '2017-07-21 14:14:54', '2017-07-21 14:14:54', NULL, '08070000000-08079999999', NULL),
(71, 1, NULL, 44, '', NULL, NULL, NULL, NULL, NULL, NULL, '2017-08-09 11:13:00', '2017-08-09 11:13:00', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `numbers`
--

CREATE TABLE `numbers` (
  `id` int(10) UNSIGNED NOT NULL,
  `starting_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ending_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `number_type_id` int(11) NOT NULL,
  `number_status_id` int(11) NOT NULL,
  `application_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `last_updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `access_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `area_id` int(11) NOT NULL,
  `share` int(11) NOT NULL DEFAULT '0',
  `company_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `date_assigned` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `application_number_id` int(11) DEFAULT NULL,
  `application_short_id` int(11) DEFAULT NULL,
  `application_ispc_id` int(11) DEFAULT NULL,
  `valid_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shared` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `numbers`
--

INSERT INTO `numbers` (`id`, `starting_number`, `ending_number`, `number_type_id`, `number_status_id`, `application_id`, `created_by`, `last_updated_by`, `created_at`, `updated_at`, `deleted_at`, `access_code`, `area_id`, `share`, `company_id`, `user_id`, `date_assigned`, `application_number_id`, `application_short_id`, `application_ispc_id`, `valid_date`, `shared`) VALUES
(24, '080300000000', '080399999999', 7, 3, NULL, 2, 2, '2017-05-12 12:46:18', '2017-05-12 12:46:18', '2017-05-08 02:00:00', '0701', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(25, '08020000000', '08029999999', 10, 6, NULL, 2, 2, '2017-05-12 15:27:58', '2017-05-15 14:50:27', NULL, '0701', 3, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(26, '0903000000000', '09039999999999', 10, 5, NULL, 2, 2, '2017-05-12 15:39:40', '2017-05-15 14:58:23', '2017-05-15 14:58:23', '0701', 2, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(27, '08030000000', '08039999999', 10, 2, NULL, 2, 2, '2017-05-15 13:12:19', '2017-08-15 13:22:07', NULL, '0701', 3, 0, 3, NULL, '2017-08-15', NULL, NULL, NULL, '2018-07-05', 0),
(28, '02000', '02000', 7, 1, NULL, 2, 2, '2017-05-15 14:59:32', '2017-08-28 15:15:28', '2017-08-28 15:15:28', '0701', 3, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(29, '08010000000', '08019999999', 9, 4, NULL, 2, 2, '2017-05-15 15:02:36', '2017-05-15 15:02:36', NULL, '0701', 3, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(30, '08050000000', 'kmkmkm', 7, 1, NULL, 2, 2, '2017-05-18 10:19:07', '2017-05-18 10:31:03', '2017-05-18 10:31:03', '0701', 3, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(31, '07050000000', '07059999999', 16, 1, NULL, 2, 2, '2017-05-18 13:13:35', '2017-09-05 14:36:12', '2017-09-05 14:36:12', '0705', 16, 0, 0, 2, '', 0, 0, 0, NULL, 0),
(32, '07018000000', '07018999999', 10, 3, NULL, 2, 2, '2017-05-30 11:46:53', '2017-09-14 13:11:11', NULL, '0701', 3, 0, 2, NULL, '', 0, 0, 0, NULL, 0),
(33, '05830', '05830', 7, 2, NULL, 2, 2, '2017-05-30 18:00:42', '2018-02-18 14:38:42', NULL, NULL, 0, 0, 2, NULL, '', 0, 0, 0, '2018-07-05', 0),
(34, '08050000000', '08059999999', 10, 3, NULL, 2, 2, '2017-06-15 15:29:27', '2017-06-15 15:31:22', NULL, '0805', 25, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(35, '000000', '999999', 21, 1, NULL, 2, 2, '2017-07-18 16:06:49', '2017-08-28 15:14:55', '2017-08-28 15:14:55', '080', 56, 0, 0, NULL, '', 0, 0, 0, NULL, 0),
(36, '08020000000', '08029999999', 0, 0, NULL, NULL, NULL, NULL, NULL, '2017-08-11 02:00:00', '0802', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(37, '08020000000', '08029999999', 0, 0, NULL, NULL, NULL, NULL, NULL, '2017-08-11 02:00:00', '0802', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(38, '08020000000', '08029999999', 0, 0, NULL, NULL, NULL, NULL, '2017-08-11 15:23:27', '2017-08-11 15:23:27', '0802', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(39, '08020000000', '08029999999', 0, 0, NULL, NULL, NULL, NULL, '2017-08-11 15:19:33', '2017-08-11 15:19:33', '0802', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(40, '08020000000', '08029999999', 0, 0, NULL, NULL, NULL, NULL, '2017-08-11 15:22:12', '2017-08-11 15:22:12', '0802', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(41, '08020000000', '08029999999', 0, 0, NULL, NULL, NULL, NULL, '2017-08-11 15:22:54', '2017-08-11 15:22:54', '0802', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(42, '08020000000', '08029999999', 0, 0, NULL, NULL, NULL, NULL, '2017-08-11 15:21:20', '2017-08-11 15:21:20', '0802', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(43, '08020000000', '08029999999', 0, 0, NULL, NULL, NULL, NULL, '2017-08-11 15:24:05', '2017-08-11 15:24:05', '0802', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(44, '08020000000', '08029999999', 0, 0, NULL, NULL, NULL, NULL, '2017-08-11 15:24:42', '2017-08-11 15:24:42', '0802', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(45, '08033444', ' 039393030', 0, 0, NULL, NULL, NULL, '2017-07-31 14:49:48', '2017-07-31 14:49:48', '2017-08-11 02:00:00', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(46, '08020000000', '08029999999', 0, 0, NULL, NULL, NULL, NULL, NULL, '2017-08-11 02:00:00', '0802', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(61, 'Kings Adeyemi', 'nmp@ncc.gov.ng', 0, 0, NULL, NULL, NULL, '2017-08-01 12:58:14', '2017-08-01 12:58:14', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(62, 'Ebele Akwara', 'ebele@ncc.gov.ng', 0, 0, NULL, NULL, NULL, '2017-08-01 12:58:14', '2017-08-01 12:58:14', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(63, 'Tanana Biaduo', 'tbiadua@ncc.gov.ng', 0, 0, NULL, NULL, NULL, '2017-08-01 12:58:14', '2017-08-01 12:58:14', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(64, 'Sayyadi Sani', 'sayyadi@ncc.gov.ng', 0, 0, NULL, NULL, NULL, '2017-08-01 12:58:14', '2017-08-01 12:58:14', '2017-08-11 02:00:00', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(65, 'Muhammad Abubakar', 'mabubakar@ncc.gov.ng', 0, 0, NULL, NULL, NULL, '2017-08-01 12:58:14', '2017-08-01 12:58:14', '2017-08-11 02:00:00', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(68, 'Agunanna Annmary Amaka', 'annmaryamaka@gmail.com', 0, 0, NULL, NULL, NULL, '2017-08-01 12:58:14', '2017-08-01 12:58:14', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(69, 'Ikeme Chiamaka', 'annmaryamaka@yahoo.com', 0, 0, NULL, NULL, NULL, '2017-08-01 12:58:14', '2017-08-01 12:58:14', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(70, '235', '235', 20, 1, NULL, 2, 2, '2017-08-09 12:50:11', '2017-08-09 12:50:11', NULL, '23', 60, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(71, '456', '456', 20, 1, NULL, 2, 2, '2017-08-10 16:54:19', '2017-08-10 16:54:19', NULL, '65', 56, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(72, '08033444', '039393030', 0, 0, NULL, NULL, NULL, '2017-08-11 11:56:42', '2017-08-11 11:56:42', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(73, '08033444', '039393030', 0, 0, NULL, NULL, NULL, '2017-08-11 12:22:48', '2017-08-11 12:22:48', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(74, '08030000000', '08039999999', 0, 0, NULL, NULL, NULL, '2017-08-11 12:37:56', '2017-08-11 15:25:32', '2017-08-11 15:25:32', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(75, '08020000000', '08029999999', 0, 0, NULL, NULL, NULL, NULL, '2017-08-11 15:20:06', '2017-08-11 15:20:06', '0802', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(76, '08030000000', '08039999999', 0, 0, NULL, NULL, NULL, NULL, '2017-08-11 15:26:27', '2017-08-11 02:00:00', '0803', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(77, '08020000000', '08029999999', 0, 0, NULL, NULL, NULL, NULL, '2017-08-11 15:20:46', '2017-08-11 15:20:46', '0802', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(78, '08030000000', '08039999999', 0, 0, NULL, NULL, NULL, NULL, '2017-08-11 15:25:54', '2017-08-11 02:00:00', '0803', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(79, '04000', '04000', 7, 3, NULL, 2, 2, '2017-08-11 15:18:18', '2017-10-05 13:47:01', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(80, '03000', '03000', 7, 2, NULL, 2, 2, '2017-08-11 15:28:56', '2018-02-20 12:54:34', NULL, NULL, 0, 0, 2, NULL, '2018-02-20', NULL, 50, NULL, NULL, 1),
(81, '08020000000', '08029999999', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '0802', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(82, '08030000000', '08039999999', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '0803', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(83, '0802000000000', '0802999999999', 1, 2, NULL, 0, 0, '2017-08-22 02:00:00', '2017-08-22 02:00:00', NULL, '0802', 32, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2018-07-05', 0),
(84, '0803000000000', '0803999999999', 2, 3, NULL, 0, 0, '2017-08-22 02:00:00', '2017-08-22 02:00:00', NULL, '0803', 30, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(85, '080200000000', '080299999999', 10, 2, NULL, 2, 2, '2017-08-22 02:00:00', '2017-08-29 12:31:35', NULL, '0802', 32, 0, 2, NULL, NULL, NULL, NULL, NULL, '2017-07-05', 0),
(86, '0803000000000', '0803999999999', 2, 3, NULL, 2, 2, '2017-08-22 02:00:00', '2017-08-22 02:00:00', NULL, '0803', 30, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(87, '0802000000000', '0802999999999', 1, 2, NULL, 2, 2, '2017-08-22 02:00:00', '2017-08-22 02:00:00', NULL, '0802', 32, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2018-07-05', 0),
(88, '0803000000000', '0803999999999', 2, 3, NULL, 2, 2, '2017-08-22 02:00:00', '2017-08-22 02:00:00', NULL, '0803', 30, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(89, '0802000000000', '0802999999999', 1, 2, NULL, 2, 2, '2017-08-22 02:00:00', '2017-08-22 02:00:00', NULL, '0802', 32, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2018-07-05', 0),
(90, '0803000000000', '0803999999999', 2, 3, NULL, 2, 2, '2017-08-22 02:00:00', '2017-08-22 02:00:00', NULL, '0803', 30, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(91, '09070000000', '09079999999', 10, 3, NULL, 2, 2, '2017-08-23 02:00:00', '2017-09-14 13:11:11', NULL, '0907', 15, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(92, '0908000000000', '0908999999999', 10, 1, NULL, 2, 2, '2017-08-23 02:00:00', '2017-09-05 14:34:37', '2017-09-05 14:34:37', '0908', 64, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(93, '0904000000000', '0904999999999', 1, 2, NULL, 2, 2, '2017-08-29 02:00:00', '2017-08-29 02:00:00', NULL, '0904', 32, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(94, '0905000000000', '0905999999999', 2, 3, NULL, 2, 2, '2017-08-29 02:00:00', '2017-08-29 02:00:00', NULL, '0905', 30, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(95, '270000', '270499', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '27', 35, 0, 8, NULL, '1999-06-15', NULL, NULL, NULL, NULL, 0),
(96, '2780000', '2780999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '278', 36, 0, 8, NULL, '1999-06-15', NULL, NULL, NULL, NULL, 0),
(97, '270000', '270999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '27', 37, 0, 8, NULL, '1999-06-15', NULL, NULL, NULL, NULL, 0),
(98, '270000', '270999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '27', 38, 0, 8, NULL, '1999-06-15', NULL, NULL, NULL, NULL, 0),
(99, '2700000', '2700999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '270', 1, 0, 8, NULL, '1999-06-15', NULL, NULL, NULL, NULL, 0),
(100, '2710000', '2719999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '271', 1, 0, 8, NULL, '2005-10-02', NULL, NULL, NULL, NULL, 0),
(101, '2770000', '2779999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '277', 1, 0, 8, NULL, '2005-10-02', NULL, NULL, NULL, NULL, 0),
(102, '2780000', '2789999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '278', 1, 0, 8, NULL, '2005-10-02', NULL, NULL, NULL, NULL, 0),
(103, '2790000', '2799999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '279', 1, 0, 8, NULL, '2005-10-02', NULL, NULL, NULL, NULL, 0),
(104, '2800000', '2809999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '280', 1, 0, 8, NULL, '2005-10-02', NULL, NULL, NULL, NULL, 0),
(105, '4480000', '4489999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '448', 1, 0, 8, NULL, '2006-11-07', NULL, NULL, NULL, NULL, 0),
(106, '2350000', '2359999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '235', 1, 0, 8, NULL, '2009-02-17', NULL, NULL, NULL, NULL, 0),
(107, '2360000', '2369999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '236', 1, 0, 8, NULL, '2009-02-17', NULL, NULL, NULL, NULL, 0),
(108, '2240000', '2249999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '224', 1, 0, 8, NULL, '2009-11-11', NULL, NULL, NULL, NULL, 0),
(109, '2250000', '2259999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '225', 1, 0, 8, NULL, '2009-11-11', NULL, NULL, NULL, NULL, 0),
(110, '2260000', '2269999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '226', 1, 0, 8, NULL, '2009-11-11', NULL, NULL, NULL, NULL, 0),
(111, '4220000', '4229999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '422', 1, 0, 8, NULL, '2009-11-11', NULL, NULL, NULL, NULL, 0),
(112, '4230000', '4239999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '423', 1, 0, 8, NULL, '2009-11-11', NULL, NULL, NULL, NULL, 0),
(113, '270000', '270999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '27', 39, 0, 8, NULL, '1999-06-15', NULL, NULL, NULL, NULL, 0),
(114, '280000', '289999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '28', 39, 0, 8, NULL, '2006-07-11', NULL, NULL, NULL, NULL, 0),
(115, '270000', '270999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '27', 40, 0, 8, NULL, '1999-06-15', NULL, NULL, NULL, NULL, 0),
(116, '2740000', '2749999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '274', 36, 0, 9, NULL, '2010-06-29', NULL, NULL, NULL, NULL, 0),
(117, '07080000000', '07089999999', 10, 2, NULL, NULL, NULL, NULL, NULL, NULL, '0708', 5, 0, 2, NULL, '2007-08-21', NULL, NULL, NULL, NULL, 0),
(118, '08020000000', '08029999999', 10, 2, NULL, NULL, NULL, NULL, NULL, NULL, '0802', 6, 0, 2, NULL, '2001-09-02', NULL, NULL, NULL, NULL, 0),
(119, '08080000000', '08089999999', 10, 2, NULL, NULL, NULL, NULL, NULL, NULL, '0808', 7, 0, 2, NULL, '2006-04-19', NULL, NULL, NULL, NULL, 0),
(120, '08120000000', '08129999999', 10, 2, NULL, NULL, NULL, NULL, NULL, NULL, '0812', 2, 0, 2, NULL, '2009-02-17', NULL, NULL, NULL, NULL, 0),
(121, '09020000000', '09029999999', 10, 2, NULL, NULL, NULL, NULL, NULL, NULL, '0902', 8, 0, 2, NULL, '2014-01-13', NULL, NULL, NULL, NULL, 0),
(122, '07010000000', '07019999999', 10, 2, NULL, NULL, NULL, NULL, NULL, NULL, '0701', 3, 0, 2, NULL, '2012-11-10', NULL, NULL, NULL, NULL, 0),
(123, '4500000', '4509999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '450', 36, 0, 10, NULL, '2012-04-13', NULL, NULL, NULL, NULL, 0),
(124, '2720000', '2729999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '272', 36, 0, 11, NULL, '1997-12-18', NULL, NULL, NULL, NULL, 0),
(125, '6060000', '6069999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '606', 36, 0, 11, NULL, '1997-12-18', NULL, NULL, NULL, NULL, 0),
(126, '280000', '289999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '28', 38, 0, 11, NULL, '2002-08-03', NULL, NULL, NULL, NULL, 0),
(127, '5000000', '5009999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '500', 1, 0, 12, NULL, '2004-12-07', NULL, NULL, NULL, NULL, 0),
(128, '07000000000', '07009999999', 16, 2, NULL, NULL, NULL, NULL, NULL, NULL, '0700', 9, 0, 13, NULL, '2006-10-08', NULL, NULL, NULL, NULL, 0),
(129, '08000000000', '08009999999', 16, 2, NULL, NULL, NULL, NULL, NULL, NULL, '0800', 10, 0, 13, NULL, '2005-12-20', NULL, NULL, NULL, NULL, 0),
(130, '770000', '774999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '77', 40, 0, 14, NULL, '2005-01-25', NULL, NULL, NULL, NULL, 0),
(131, '550000', '559999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '55', 41, 0, 15, NULL, '2007-01-18', NULL, NULL, NULL, NULL, 0),
(132, '710000', '719999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '71', 42, 0, 16, NULL, '2005-12-14', NULL, NULL, NULL, NULL, 0),
(133, '2020000', '2029999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '202', 1, 0, 17, NULL, '2010-11-27', NULL, NULL, NULL, NULL, 0),
(134, '2270000', '2279999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '227', 1, 0, 18, NULL, '2013-07-11', NULL, NULL, NULL, NULL, 0),
(135, '2280000', '2289999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '228', 1, 0, 18, NULL, '2013-07-11', NULL, NULL, NULL, NULL, 0),
(136, '4450000', '4457999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '445', 1, 0, 19, NULL, '2000-07-14', NULL, NULL, NULL, NULL, 0),
(137, '5150000', '5154999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '515', 1, 0, 20, NULL, '2014-12-23', NULL, NULL, NULL, NULL, 0),
(138, '4990000', '4995999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '499', 1, 0, 21, NULL, '2000-09-21', NULL, NULL, NULL, NULL, 0),
(139, '5970000', '5979999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '597', 36, 0, 22, NULL, '2009-06-17', NULL, NULL, NULL, NULL, 0),
(140, '5970000', '5979999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '597', 1, 0, 22, NULL, '2009-06-17', NULL, NULL, NULL, NULL, 0),
(141, '590000', '599999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '59', 39, 0, 22, NULL, '2009-06-17', NULL, NULL, NULL, NULL, 0),
(142, '3450000', '3452999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '345', 1, 0, 23, NULL, '1998-01-20', NULL, NULL, NULL, NULL, 0),
(143, '3800000', '3800999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '380', 1, 0, 23, NULL, '1998-01-20', NULL, NULL, NULL, NULL, 0),
(144, '7170000', '7172999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '717', 1, 0, 23, NULL, '1998-01-20', NULL, NULL, NULL, NULL, 0),
(145, '710000', '712999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '71', 39, 0, 23, NULL, '1998-01-20', NULL, NULL, NULL, NULL, 0),
(146, '5550000', '5559999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '555', 1, 0, 24, NULL, '2001-03-04', NULL, NULL, NULL, NULL, 0),
(147, '2810000', '2819999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '281', 1, 0, 24, NULL, '2004-07-26', NULL, NULL, NULL, NULL, 0),
(148, '2820000', '2829999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '282', 1, 0, 24, NULL, '2004-07-26', NULL, NULL, NULL, NULL, 0),
(149, '2830000', '2839999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '283', 1, 0, 24, NULL, '2004-07-26', NULL, NULL, NULL, NULL, 0),
(150, '4440000', '4449999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '444', 1, 0, 24, NULL, '2004-07-26', NULL, NULL, NULL, NULL, 0),
(151, '5540000', '5549999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '554', 1, 0, 24, NULL, '2004-07-26', NULL, NULL, NULL, NULL, 0),
(152, '5560000', '5569999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '556', 1, 0, 24, NULL, '2004-07-26', NULL, NULL, NULL, NULL, 0),
(153, '5020000', '5024999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '502', 1, 0, 25, NULL, '2006-07-20', NULL, NULL, NULL, NULL, 0),
(154, '2880000', '2889999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '288', 1, 0, 26, NULL, '1997-03-12', NULL, NULL, NULL, NULL, 0),
(155, '08090000000', '08099999999', 10, 2, NULL, NULL, NULL, NULL, NULL, NULL, '0809', 11, 0, 27, NULL, '2008-01-15', NULL, NULL, NULL, NULL, 0),
(156, '08170000000', '08179999999', 10, 2, NULL, NULL, NULL, NULL, NULL, NULL, '0817', 12, 0, 27, NULL, '2011-12-08', NULL, NULL, NULL, NULL, 0),
(157, '08180000000', '08189999999', 10, 2, NULL, NULL, NULL, NULL, NULL, NULL, '0818', 13, 0, 27, NULL, '2009-11-12', NULL, NULL, NULL, NULL, 0),
(158, '09090000000', '09099999999', 10, 2, NULL, NULL, NULL, NULL, NULL, NULL, '0909', 14, 0, 27, NULL, '2013-03-10', NULL, NULL, NULL, NULL, 0),
(159, '09080000000', '09089999999', 10, 2, NULL, 2, 2, NULL, '2017-09-05 14:33:41', NULL, '0908', 64, 0, 27, NULL, '2015-03-20', NULL, NULL, NULL, NULL, 0),
(160, '9990000', '9994999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '999', 36, 0, 28, NULL, '2016-07-20', NULL, NULL, NULL, NULL, 0),
(161, '6240000', '6249999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '624', 1, 0, 29, NULL, '2004-10-27', NULL, NULL, NULL, NULL, 0),
(162, '600000', '609999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '60', 43, 0, 30, NULL, '2004-11-22', NULL, NULL, NULL, NULL, 0),
(163, '300000', '309999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '30', 44, 0, 31, NULL, '2008-07-21', NULL, NULL, NULL, NULL, 0),
(164, '310000', '319999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '31', 44, 0, 31, NULL, '2008-07-21', NULL, NULL, NULL, NULL, 0),
(165, '300000', '309999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '30', 45, 0, 31, NULL, '2008-07-21', NULL, NULL, NULL, NULL, 0),
(166, '310000', '319999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '31', 45, 0, 31, NULL, '2008-07-21', NULL, NULL, NULL, NULL, 0),
(167, '200000', '209999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '20', 46, 0, 31, NULL, '2008-07-21', NULL, NULL, NULL, NULL, 0),
(168, '210000', '219999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '21', 46, 0, 31, NULL, '2008-07-21', NULL, NULL, NULL, NULL, 0),
(169, '2100000', '2109999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '210', 47, 0, 31, NULL, '2008-07-21', NULL, NULL, NULL, NULL, 0),
(170, '2110000', '2119999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '211', 47, 0, 31, NULL, '2008-07-21', NULL, NULL, NULL, NULL, 0),
(171, '300000', '309999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '30', 48, 0, 31, NULL, '2008-07-21', NULL, NULL, NULL, NULL, 0),
(172, '310000', '319999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '31', 48, 0, 31, NULL, '2008-07-21', NULL, NULL, NULL, NULL, 0),
(173, '07050000000', '07059999999', 10, 2, NULL, NULL, NULL, NULL, NULL, NULL, '0705', 16, 0, 3, NULL, '2007-09-27', NULL, NULL, NULL, NULL, 0),
(174, '08050000000', '08059999999', 10, 2, NULL, NULL, NULL, NULL, NULL, NULL, '0805', 17, 0, 3, NULL, '2002-01-09', NULL, NULL, NULL, NULL, 0),
(175, '08070000000', '08079999999', 10, 2, NULL, NULL, NULL, NULL, NULL, NULL, '0807', 18, 0, 3, NULL, '2006-05-06', NULL, NULL, NULL, NULL, 0),
(176, '08150000000', '08159999999', 10, 2, NULL, NULL, NULL, NULL, NULL, NULL, '0815', 19, 0, 3, NULL, '2010-03-23', NULL, NULL, NULL, NULL, 0),
(177, '09050000000', '09059999999', 10, 2, NULL, NULL, NULL, NULL, NULL, NULL, '0905', 20, 0, 3, NULL, '2014-10-06', NULL, NULL, NULL, NULL, 0),
(178, '08110000000', '08119999999', 10, 2, NULL, NULL, NULL, NULL, NULL, NULL, '0811', 21, 0, 3, NULL, '2012-10-08', NULL, NULL, NULL, NULL, 0),
(179, '930000', '939999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '93', 35, 0, 32, NULL, '2009-12-11', NULL, NULL, NULL, NULL, 0),
(180, '940000', '949999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '94', 35, 0, 32, NULL, '2009-12-11', NULL, NULL, NULL, NULL, 0),
(181, '9030000', '9039999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '903', 36, 0, 32, NULL, '2003-05-30', NULL, NULL, NULL, NULL, 0),
(182, '9040000', '9049999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '904', 36, 0, 32, NULL, '2003-05-30', NULL, NULL, NULL, NULL, 0),
(183, '930000', '939999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '93', 49, 0, 32, NULL, '2009-12-11', NULL, NULL, NULL, NULL, 0),
(184, '940000', '949999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '94', 49, 0, 32, NULL, '2009-12-11', NULL, NULL, NULL, NULL, 0),
(185, '930000', '909999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '93', 50, 0, 32, NULL, '2009-12-11', NULL, NULL, NULL, NULL, 0),
(186, '940000', '949999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '94', 50, 0, 32, NULL, '2009-12-11', NULL, NULL, NULL, NULL, 0),
(187, '950000', '959999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '95', 50, 0, 32, NULL, '2009-12-11', NULL, NULL, NULL, NULL, 0),
(188, '960000', '969999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '96', 50, 0, 32, NULL, '2009-12-11', NULL, NULL, NULL, NULL, 0),
(189, '9030000', '9039999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '903', 47, 0, 32, NULL, '2004-03-06', NULL, NULL, NULL, NULL, 0),
(190, '9040000', '9049999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '904', 47, 0, 32, NULL, '2004-03-06', NULL, NULL, NULL, NULL, 0),
(191, '9050000', '9059999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '905', 47, 0, 32, NULL, '2004-03-06', NULL, NULL, NULL, NULL, 0),
(192, '930000', '939999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '93', 51, 0, 32, NULL, '2009-12-11', NULL, NULL, NULL, NULL, 0),
(193, '940000', '949999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '94', 51, 0, 32, NULL, '2009-12-11', NULL, NULL, NULL, NULL, 0),
(194, '950000', '959999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '95', 51, 0, 32, NULL, '2009-12-11', NULL, NULL, NULL, NULL, 0),
(195, '930000', '939999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '93', 37, 0, 32, NULL, '2009-12-11', NULL, NULL, NULL, NULL, 0),
(196, '940000', '949999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '94', 37, 0, 32, NULL, '2009-12-11', NULL, NULL, NULL, NULL, 0),
(197, '950000', '959999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '95', 37, 0, 32, NULL, '2009-12-11', NULL, NULL, NULL, NULL, 0),
(198, '960000', '969999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '96', 37, 0, 32, NULL, '2009-12-11', NULL, NULL, NULL, NULL, 0),
(199, '830000', '839999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '83', 38, 0, 32, NULL, '2009-12-11', NULL, NULL, NULL, NULL, 0),
(200, '840000', '849999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '84', 38, 0, 32, NULL, '2009-12-11', NULL, NULL, NULL, NULL, 0),
(201, '850000', '859999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '85', 38, 0, 32, NULL, '2009-12-11', NULL, NULL, NULL, NULL, 0),
(202, '860000', '869999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '86', 38, 0, 32, NULL, '2009-12-11', NULL, NULL, NULL, NULL, 0),
(203, '9030000', '9039999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '903', 1, 0, 32, NULL, '2003-05-30', NULL, NULL, NULL, NULL, 0),
(204, '9040000', '9049999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '904', 1, 0, 32, NULL, '2003-05-30', NULL, NULL, NULL, NULL, 0),
(205, '9050000', '9059999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '905', 1, 0, 32, NULL, '2003-05-30', NULL, NULL, NULL, NULL, 0),
(206, '9060000', '9069999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '906', 1, 0, 32, NULL, '2003-05-30', NULL, NULL, NULL, NULL, 0),
(207, '9070000', '9079999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '907', 1, 0, 32, NULL, '2003-05-30', NULL, NULL, NULL, NULL, 0),
(208, '9080000', '9089999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '908', 1, 0, 32, NULL, '2003-05-30', NULL, NULL, NULL, NULL, 0),
(209, '9090999', '9099999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '909', 1, 0, 32, NULL, '2003-05-30', NULL, NULL, NULL, NULL, 0),
(210, '9010000', '9019999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '910', 1, 0, 32, NULL, '2003-05-30', NULL, NULL, NULL, NULL, 0),
(211, '9110000', '9119999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '911', 1, 0, 32, NULL, '2003-05-30', NULL, NULL, NULL, NULL, 0),
(212, '9120000', '9129999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '912', 1, 0, 32, NULL, '2003-05-30', NULL, NULL, NULL, NULL, 0),
(213, '9130000', '9139999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '913', 1, 0, 32, NULL, '2003-05-30', NULL, NULL, NULL, NULL, 0),
(214, '9140000', '9149999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '914', 1, 0, 32, NULL, '2003-05-30', NULL, NULL, NULL, NULL, 0),
(215, '9150000', '9159999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '915', 1, 0, 32, NULL, '2003-05-30', NULL, NULL, NULL, NULL, 0),
(216, '930000', '939999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '93', 52, 0, 32, NULL, '2009-12-11', NULL, NULL, NULL, NULL, 0),
(217, '940000', '949999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '94', 52, 0, 32, NULL, '2009-12-11', NULL, NULL, NULL, NULL, 0),
(218, '930000', '939999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '93', 39, 0, 32, NULL, '2003-05-30', NULL, NULL, NULL, NULL, 0),
(219, '940000', '949999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '94', 39, 0, 32, NULL, '2003-05-30', NULL, NULL, NULL, NULL, 0),
(220, '930000', '939999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '93', 40, 0, 32, NULL, '2009-12-11', NULL, NULL, NULL, NULL, 0),
(221, '940000', '949999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '94', 40, 0, 32, NULL, '2009-12-11', NULL, NULL, NULL, NULL, 0),
(222, '930000', '939999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '93', 54, 0, 32, NULL, '2009-12-11', NULL, NULL, NULL, NULL, 0),
(223, '940000', '949999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '94', 54, 0, 32, NULL, '2009-12-11', NULL, NULL, NULL, NULL, 0),
(224, '950000', '959999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '95', 54, 0, 32, NULL, '2009-12-11', NULL, NULL, NULL, NULL, 0),
(225, '730000', '731999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '73', 38, 0, 33, NULL, '2006-08-05', NULL, NULL, NULL, NULL, 0),
(226, '4400000', '4409999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '440', 1, 0, 34, NULL, '2000-07-13', NULL, NULL, NULL, NULL, 0),
(227, '3030000', '3039999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '303', 36, 0, 35, NULL, '2007-02-10', NULL, NULL, NULL, NULL, 0),
(228, '3000000', '3009999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '300', 36, 0, 36, NULL, '1999-05-26', NULL, NULL, NULL, NULL, 0),
(229, '3010000', '3019999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '301', 36, 0, 36, NULL, '1999-05-26', NULL, NULL, NULL, NULL, 0),
(230, '2000000', '2009999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '200', 1, 0, 36, NULL, '1999-05-26', NULL, NULL, NULL, NULL, 0),
(231, '4550000', '4559999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '455', 1, 0, 37, NULL, '2001-03-08', NULL, NULL, NULL, NULL, 0),
(232, '6700000', '6709999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '670', 36, 0, 38, NULL, '2000-10-31', NULL, NULL, NULL, NULL, 0),
(233, '6710000', '6719999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '671', 36, 0, 38, NULL, '2000-10-31', NULL, NULL, NULL, NULL, 0),
(234, '6720000', '6729999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '672', 36, 0, 38, NULL, '2004-07-30', NULL, NULL, NULL, NULL, 0),
(235, '6730000', '6739999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '673', 36, 0, 38, NULL, '2004-07-30', NULL, NULL, NULL, NULL, 0),
(236, '6740000', '6749999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '674', 36, 0, 38, NULL, '2004-07-30', NULL, NULL, NULL, NULL, 0),
(237, '370000', '379999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '37', 37, 0, 38, NULL, '2003-10-17', NULL, NULL, NULL, NULL, 0),
(238, '380000', '389999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '38', 37, 0, 38, NULL, '2003-10-17', NULL, NULL, NULL, NULL, 0),
(239, '390000', '399999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '39', 37, 0, 38, NULL, '2003-10-17', NULL, NULL, NULL, NULL, 0),
(240, '310000', '319999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '31', 38, 0, 38, NULL, '2002-12-23', NULL, NULL, NULL, NULL, 0),
(241, '320000', '329999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '32', 38, 0, 38, NULL, '2002-12-23', NULL, NULL, NULL, NULL, 0),
(242, '330000', '339999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '33', 38, 0, 38, NULL, '2002-12-23', NULL, NULL, NULL, NULL, 0),
(243, '4700000', '4709999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '470', 1, 0, 38, NULL, '1998-01-23', NULL, NULL, NULL, NULL, 0),
(244, '4710000', '4719999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '471', 1, 0, 38, NULL, '2000-10-31', NULL, NULL, NULL, NULL, 0),
(245, '4720000', '4729999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '472', 1, 0, 38, NULL, '2000-10-31', NULL, NULL, NULL, NULL, 0),
(246, '4730000', '4739999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '473', 1, 0, 38, NULL, '2002-06-24', NULL, NULL, NULL, NULL, 0),
(247, '4740000', '4749999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '474', 1, 0, 38, NULL, '2002-06-24', NULL, NULL, NULL, NULL, 0),
(248, '4750000', '4759999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '475', 1, 0, 38, NULL, '2003-06-18', NULL, NULL, NULL, NULL, 0),
(249, '4760000', '4769999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '476', 1, 0, 38, NULL, '2003-06-18', NULL, NULL, NULL, NULL, 0),
(250, '4770000', '4779999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '477', 1, 0, 38, NULL, '2003-06-18', NULL, NULL, NULL, NULL, 0),
(251, '4780000', '4789999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '478', 1, 0, 38, NULL, '2003-06-18', NULL, NULL, NULL, NULL, 0),
(252, '4790000', '4799999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '479', 1, 0, 38, NULL, '2003-06-18', NULL, NULL, NULL, NULL, 0),
(253, '370000', '379999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '37', 45, 0, 38, NULL, '2003-10-17', NULL, NULL, NULL, NULL, 0),
(254, '380000', '389999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '38', 45, 0, 38, NULL, '2003-10-17', NULL, NULL, NULL, NULL, 0),
(255, '390000', '399999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '39', 45, 0, 38, NULL, '2003-10-17', NULL, NULL, NULL, NULL, 0),
(256, '570000', '579999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '57', 39, 0, 38, NULL, '1999-07-14', NULL, NULL, NULL, NULL, 0),
(257, '370000', '3799999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '37', 54, 0, 38, NULL, '2004-05-17', NULL, NULL, NULL, NULL, 0),
(258, '380000', '389999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '38', 54, 0, 38, NULL, '2004-05-17', NULL, NULL, NULL, NULL, 0),
(259, '6280000', '6284999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '628', 1, 0, 39, NULL, '2007-05-28', NULL, NULL, NULL, NULL, 0),
(260, '6230000', '6234999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '623', 36, 0, 39, NULL, '2007-05-28', NULL, NULL, NULL, NULL, 0),
(261, '360000', '364999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '36', 39, 0, 39, NULL, '2007-05-28', NULL, NULL, NULL, NULL, 0),
(262, '6290000', '6299999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '629', 1, 0, 39, NULL, '2010-03-09', NULL, NULL, NULL, NULL, 0),
(263, '6300000', '6309999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '630', 1, 0, 39, NULL, '2010-03-09', NULL, NULL, NULL, NULL, 0),
(264, '6310000', '6319999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '631', 1, 0, 39, NULL, '2010-03-09', NULL, NULL, NULL, NULL, 0),
(265, '6320000', '6239999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '632', 1, 0, 39, NULL, '2010-03-09', NULL, NULL, NULL, NULL, 0),
(266, '6330000', '6339999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '633', 1, 0, 39, NULL, '2010-03-09', NULL, NULL, NULL, NULL, 0),
(267, '6340000', '6349999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '634', 1, 0, 39, NULL, '2010-03-09', NULL, NULL, NULL, NULL, 0),
(268, '6350000', '6359999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '635', 1, 0, 39, NULL, '2010-03-09', NULL, NULL, NULL, NULL, 0),
(269, '6360000', '6369999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '636', 1, 0, 39, NULL, '2010-03-09', NULL, NULL, NULL, NULL, 0),
(270, '6370000', '6379999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '637', 1, 0, 39, NULL, '2010-03-09', NULL, NULL, NULL, NULL, 0),
(271, '6380000', '6389999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '638', 1, 0, 39, NULL, '2010-03-09', NULL, NULL, NULL, NULL, 0),
(272, '6280000', '6289999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '628', 47, 0, 39, NULL, '2010-03-09', NULL, NULL, NULL, NULL, 0),
(273, '6240000', '6249999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '624', 36, 0, 39, NULL, '2010-03-09', NULL, NULL, NULL, NULL, 0),
(274, '400000', '409999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '40', 38, 0, 39, NULL, '2010-03-09', NULL, NULL, NULL, NULL, 0),
(275, '650000', '659999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '65', 39, 0, 39, NULL, '2010-03-09', NULL, NULL, NULL, NULL, 0),
(276, '400000', '404999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '40', 55, 0, 40, NULL, '2000-10-08', NULL, NULL, NULL, NULL, 0),
(277, '400000', '404999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '40', 39, 0, 40, NULL, '2000-10-08', NULL, NULL, NULL, NULL, 0),
(278, '200000', '209999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '20', 38, 0, 41, NULL, '2003-08-22', NULL, NULL, NULL, NULL, 0),
(279, '08010000000', '08019999999', 10, 2, NULL, NULL, NULL, NULL, NULL, NULL, '0801', 22, 0, 41, NULL, '2011-03-01', NULL, NULL, NULL, NULL, 0),
(280, '3200000', '3209999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '320', 36, 0, 42, NULL, '2001-05-11', NULL, NULL, NULL, NULL, 0),
(281, '3200000', '3209999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '320', 1, 0, 42, NULL, '1998-10-02', NULL, NULL, NULL, NULL, 0),
(282, '320000', '329999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '32', 39, 0, 42, NULL, '2004-07-27', NULL, NULL, NULL, NULL, 0),
(283, '320000', '329999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '32', 40, 0, 42, NULL, '2001-05-11', NULL, NULL, NULL, NULL, 0),
(284, '6210000', '6214999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '621', 36, 0, 43, NULL, '2000-09-22', NULL, NULL, NULL, NULL, 0),
(285, '6210000', '6219999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '621', 1, 0, 43, NULL, '2000-09-22', NULL, NULL, NULL, NULL, 0),
(286, '6220000', '6224999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '622', 1, 0, 43, NULL, '2000-09-22', NULL, NULL, NULL, NULL, 0),
(287, '620000', '624999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '62', 39, 0, 43, NULL, '2000-09-22', NULL, NULL, NULL, NULL, 0),
(288, '400000', '409999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '40', 97, 0, 44, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(289, '500000', '509999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '50', 97, 0, 44, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(290, '600000', '609999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '60', 97, 0, 44, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(291, '800000', '809999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '80', 97, 0, 44, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(292, '08040000000', '08049999999', 10, 2, NULL, NULL, NULL, NULL, NULL, NULL, '0804', 23, 0, 44, NULL, '2002-01-01', NULL, NULL, NULL, NULL, 0),
(293, '460000', '469999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '46', 56, 0, 45, NULL, '2010-03-16', NULL, NULL, NULL, NULL, 0),
(294, '4600000', '4609999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '460', 36, 0, 45, NULL, '2004-01-07', NULL, NULL, NULL, NULL, 0),
(295, '4610000', '4619999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '461', 36, 0, 45, NULL, '2005-07-26', NULL, NULL, NULL, NULL, 0),
(296, '4620000', '4629999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '462', 36, 0, 45, NULL, '2005-07-27', NULL, NULL, NULL, NULL, 0),
(297, '4630000', '4639999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '463', 36, 0, 45, NULL, '2005-07-28', NULL, NULL, NULL, NULL, 0),
(298, '460000', '469999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '46', 44, 0, 45, NULL, '2005-07-29', NULL, NULL, NULL, NULL, 0),
(299, '4610000', '4619999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '461', 47, 0, 45, NULL, '2005-07-30', NULL, NULL, NULL, NULL, 0),
(300, '460000', '469999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '46', 46, 0, 45, NULL, '2005-07-31', NULL, NULL, NULL, NULL, 0),
(301, '460000', '469999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '46', 37, 0, 45, NULL, '2005-08-01', NULL, NULL, NULL, NULL, 0),
(302, '460000', '469999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '46', 38, 0, 45, NULL, '2005-07-26', NULL, NULL, NULL, NULL, 0),
(303, '4610000', '4619999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '461', 1, 0, 45, NULL, '2006-07-26', NULL, NULL, NULL, NULL, 0),
(304, '4600000', '4609999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '460', 1, 0, 45, NULL, '2004-03-06', NULL, NULL, NULL, NULL, 0),
(305, '4620000', '4629999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '462', 1, 0, 45, NULL, '2004-03-06', NULL, NULL, NULL, NULL, 0),
(306, '4630000', '4639999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '463', 1, 0, 45, NULL, '2004-03-06', NULL, NULL, NULL, NULL, 0),
(307, '464000', '4649999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '464', 1, 0, 45, NULL, '2004-03-06', NULL, NULL, NULL, NULL, 0),
(308, '4650000', '4659999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '465', 1, 0, 45, NULL, '2005-07-26', NULL, NULL, NULL, NULL, 0),
(309, '4660000', '4669999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '466', 1, 0, 45, NULL, '2005-07-26', NULL, NULL, NULL, NULL, 0),
(310, '4670000', '4679999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '467', 1, 0, 45, NULL, '2005-07-26', NULL, NULL, NULL, NULL, 0),
(311, '4680000', '4689999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '468', 1, 0, 45, NULL, '2005-07-26', NULL, NULL, NULL, NULL, 0),
(312, '4690000', '4699999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '469', 1, 0, 45, NULL, '2005-07-26', NULL, NULL, NULL, NULL, 0),
(313, '460000', '469999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '46', 39, 0, 45, NULL, '2003-08-21', NULL, NULL, NULL, NULL, 0),
(314, '440000', '449999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '44', 39, 0, 45, NULL, '2005-07-26', NULL, NULL, NULL, NULL, 0),
(315, '450000', '459999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '45', 39, 0, 45, NULL, '2005-07-26', NULL, NULL, NULL, NULL, 0),
(316, '460000', '469999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '46', 40, 0, 45, NULL, '2010-08-17', NULL, NULL, NULL, NULL, 0),
(317, '460000', '469999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '46', 57, 0, 45, NULL, '2005-07-26', NULL, NULL, NULL, NULL, 0),
(318, '07030000000', '07039999999', 10, 2, NULL, NULL, NULL, NULL, NULL, NULL, '0703', 24, 0, 4, NULL, '2007-01-02', NULL, NULL, NULL, NULL, 0),
(319, '07060000000', '07069999999', 10, 2, NULL, NULL, NULL, NULL, NULL, NULL, '0706', 25, 0, 4, NULL, '2008-08-20', NULL, NULL, NULL, NULL, 0),
(320, '08030000000', '08039999999', 10, 2, NULL, NULL, NULL, NULL, NULL, NULL, '0803', 26, 0, 4, NULL, '2001-09-02', NULL, NULL, NULL, NULL, 0),
(321, '08060000000', '08069999999', 10, 2, NULL, NULL, NULL, NULL, NULL, NULL, '0806', 27, 0, 4, NULL, '2005-01-13', NULL, NULL, NULL, NULL, 0),
(322, '08130000000', '08139999999', 10, 2, NULL, NULL, NULL, NULL, NULL, NULL, '0813', 28, 0, 4, NULL, '2009-05-15', NULL, NULL, NULL, NULL, 0),
(323, '08160000000', '08169999999', 10, 2, NULL, NULL, NULL, NULL, NULL, NULL, '0816', 29, 0, 4, NULL, '2010-01-27', NULL, NULL, NULL, NULL, 0),
(324, '08140000000', '08149999999', 10, 2, NULL, NULL, NULL, NULL, NULL, NULL, '0814', 30, 0, 4, NULL, '2012-11-16', NULL, NULL, NULL, NULL, 0),
(325, '09030000000', '09039999999', 10, 2, NULL, NULL, NULL, NULL, NULL, NULL, '0903', 31, 0, 4, NULL, '2013-11-07', NULL, NULL, NULL, NULL, 0),
(326, '08100000000', '08109999999', 10, 2, NULL, NULL, NULL, NULL, NULL, NULL, '0810', 32, 0, 4, NULL, '2011-02-23', NULL, NULL, NULL, NULL, 0),
(327, '700000', '709999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '70', 56, 0, 46, NULL, '2005-12-20', NULL, NULL, NULL, NULL, 0),
(328, '700000', '704999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '70', 35, 0, 46, NULL, '2005-12-20', NULL, NULL, NULL, NULL, 0),
(329, '7200000', '7209999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '720', 36, 0, 46, NULL, '2003-07-14', NULL, NULL, NULL, NULL, 0),
(330, '7210000', '7219999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '721', 36, 0, 46, NULL, '2005-12-20', NULL, NULL, NULL, NULL, 0),
(331, '7000000', '7009999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '700', 47, 0, 46, NULL, '2005-12-20', NULL, NULL, NULL, NULL, 0),
(332, '7200000', '7299999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '720', 1, 0, 46, NULL, '2003-07-14', NULL, NULL, NULL, NULL, 0),
(333, '7210000', '7219999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '721', 1, 0, 46, NULL, '2003-07-14', NULL, NULL, NULL, NULL, 0),
(334, '7220000', '7229999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '722', 1, 0, 46, NULL, '2003-07-14', NULL, NULL, NULL, NULL, 0),
(335, '7230000', '7239999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '723', 1, 0, 46, NULL, '2003-07-14', NULL, NULL, NULL, NULL, 0),
(336, '7240000', '7249999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '724', 1, 0, 46, NULL, '2005-11-23', NULL, NULL, NULL, NULL, 0),
(337, '7250000', '7259999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '725', 1, 0, 46, NULL, '2005-12-20', NULL, NULL, NULL, NULL, 0),
(338, '7260000', '7269999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '726', 1, 0, 46, NULL, '2005-12-20', NULL, NULL, NULL, NULL, 0),
(339, '7270000', '7279999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '727', 1, 0, 46, NULL, '2005-12-20', NULL, NULL, NULL, NULL, 0),
(340, '7280000', '7289999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '728', 1, 0, 46, NULL, '2005-12-20', NULL, NULL, NULL, NULL, 0),
(341, '7290000', '7299999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '729', 1, 0, 46, NULL, '2005-12-20', NULL, NULL, NULL, NULL, 0),
(342, '460000', '469999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '46', 97, 0, 46, NULL, '2001-01-01', NULL, NULL, NULL, NULL, 0),
(343, '700000', '709999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '70', 55, 0, 46, NULL, '2005-12-20', NULL, NULL, NULL, NULL, 0),
(344, '720000', '729999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '72', 39, 0, 46, NULL, '2003-07-14', NULL, NULL, NULL, NULL, 0),
(345, '730000', '739999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '73', 39, 0, 46, NULL, '2005-12-20', NULL, NULL, NULL, NULL, 0),
(346, '760000', '769999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '76', 35, 0, 47, NULL, '2006-03-31', NULL, NULL, NULL, NULL, 0),
(347, '770000', '779999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '77', 35, 0, 47, NULL, '2006-03-31', NULL, NULL, NULL, NULL, 0),
(348, '7800000', '7809999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '780', 36, 0, 47, NULL, '2004-11-16', NULL, NULL, NULL, NULL, 0),
(349, '7810000', '7819999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '781', 36, 0, 47, NULL, '2004-11-16', NULL, NULL, NULL, NULL, 0),
(350, '7820000', '7829999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '782', 36, 0, 47, NULL, '2004-11-16', NULL, NULL, NULL, NULL, 0),
(351, '7830000', '7839999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '783', 36, 0, 47, NULL, '2004-11-16', NULL, NULL, NULL, NULL, 0),
(352, '7840000', '7849999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '784', 36, 0, 47, NULL, '2004-11-16', NULL, NULL, NULL, NULL, 0),
(353, '7500000', '7509999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '750', 47, 0, 47, NULL, '2004-11-16', NULL, NULL, NULL, NULL, 0),
(354, '7510000', '7519999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '751', 47, 0, 47, NULL, '2004-11-16', NULL, NULL, NULL, NULL, 0),
(355, '7520000', '7529999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '752', 47, 0, 47, NULL, '2004-11-16', NULL, NULL, NULL, NULL, 0),
(356, '7530000', '7539999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '753', 47, 0, 47, NULL, '2007-03-20', NULL, NULL, NULL, NULL, 0),
(357, '7540000', '7549999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '754', 47, 0, 47, NULL, '2007-03-20', NULL, NULL, NULL, NULL, 0),
(358, '7550000', '7559999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '755', 47, 0, 47, NULL, '2007-03-20', NULL, NULL, NULL, NULL, 0),
(359, '770000', '779999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '77', 51, 0, 47, NULL, '2006-04-08', NULL, NULL, NULL, NULL, 0),
(360, '780000', '789999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '78', 51, 0, 47, NULL, '2006-04-08', NULL, NULL, NULL, NULL, 0),
(361, '730000', '739999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '73', 58, 0, 47, NULL, '2007-03-20', NULL, NULL, NULL, NULL, 0),
(362, '740000', '749999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '74', 58, 0, 47, NULL, '2007-03-20', NULL, NULL, NULL, NULL, 0),
(363, '740000', '749999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '74', 46, 0, 47, NULL, '2004-11-16', NULL, NULL, NULL, NULL, 0),
(364, '750000', '759999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '75', 46, 0, 47, NULL, '2004-11-16', NULL, NULL, NULL, NULL, 0),
(365, '7740000', '7749999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '774', 1, 0, 47, NULL, '1997-10-27', NULL, NULL, NULL, NULL, 0),
(366, '7750000', '7759999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '775', 1, 0, 47, NULL, '1997-10-27', NULL, NULL, NULL, NULL, 0),
(367, '7730000', '7739999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '773', 1, 0, 47, NULL, '2001-02-02', NULL, NULL, NULL, NULL, 0),
(368, '7760000', '7769999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '776', 1, 0, 47, NULL, '2001-02-02', NULL, NULL, NULL, NULL, 0),
(369, '7900000', '7909999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '790', 1, 0, 47, NULL, '2002-06-21', NULL, NULL, NULL, NULL, 0),
(370, '7910000', '7919999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '791', 1, 0, 47, NULL, '2002-06-21', NULL, NULL, NULL, NULL, 0),
(371, '7920000', '7929999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '792', 1, 0, 47, NULL, '2002-06-21', NULL, NULL, NULL, NULL, 0),
(372, '7930000', '7939999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '793', 1, 0, 47, NULL, '2002-06-21', NULL, NULL, NULL, NULL, 0),
(373, '7940000', '7949999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '794', 1, 0, 47, NULL, '2002-06-21', NULL, NULL, NULL, NULL, 0),
(374, '7600000', '7609999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '760', 1, 0, 47, NULL, '2004-11-16', NULL, NULL, NULL, NULL, 0),
(375, '7610000', '7619999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '761', 1, 0, 47, NULL, '2004-11-16', NULL, NULL, NULL, NULL, 0),
(376, '7620000', '7629999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '762', 1, 0, 47, NULL, '2004-11-16', NULL, NULL, NULL, NULL, 0),
(377, '7630000', '7639999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '763', 1, 0, 47, NULL, '2004-11-16', NULL, NULL, NULL, NULL, 0),
(378, '7640000', '7649999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '764', 1, 0, 47, NULL, '2004-11-16', NULL, NULL, NULL, NULL, 0),
(379, '7650000', '7659999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '765', 1, 0, 47, NULL, '2004-11-16', NULL, NULL, NULL, NULL, 0),
(380, '7660000', '7669999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '766', 1, 0, 47, NULL, '2004-11-16', NULL, NULL, NULL, NULL, 0),
(381, '7670000', '7679999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '767', 1, 0, 47, NULL, '2004-11-16', NULL, NULL, NULL, NULL, 0),
(382, '7680000', '7689999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '768', 1, 0, 47, NULL, '2004-11-16', NULL, NULL, NULL, NULL, 0),
(383, '7690000', '7699999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '769', 1, 0, 47, NULL, '2004-11-16', NULL, NULL, NULL, NULL, 0),
(384, '2120000', '2129999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '212', 1, 0, 47, NULL, '2007-03-19', NULL, NULL, NULL, NULL, 0),
(385, '2130000', '2139999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '213', 1, 0, 47, NULL, '2007-03-19', NULL, NULL, NULL, NULL, 0),
(386, '2140000', '2149999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '214', 1, 0, 47, NULL, '2007-03-19', NULL, NULL, NULL, NULL, 0),
(387, '2150000', '2159999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '215', 1, 0, 47, NULL, '2007-03-19', NULL, NULL, NULL, NULL, 0),
(388, '2160000', '2169999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '216', 1, 0, 47, NULL, '2007-03-19', NULL, NULL, NULL, NULL, 0),
(389, '2170000', '2179999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '217', 1, 0, 47, NULL, '2007-03-19', NULL, NULL, NULL, NULL, 0),
(390, '2180000', '2189999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '218', 1, 0, 47, NULL, '2007-03-19', NULL, NULL, NULL, NULL, 0),
(391, '2190000', '2199999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '219', 1, 0, 47, NULL, '2007-03-19', NULL, NULL, NULL, NULL, 0),
(392, '2200000', '2209999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '220', 1, 0, 47, NULL, '2007-03-19', NULL, NULL, NULL, NULL, 0),
(393, '2210000', '2219999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '221', 1, 0, 47, NULL, '2007-03-19', NULL, NULL, NULL, NULL, 0),
(394, '5310000', '5319999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '531', 1, 0, 47, NULL, '2007-03-19', NULL, NULL, NULL, NULL, 0);
INSERT INTO `numbers` (`id`, `starting_number`, `ending_number`, `number_type_id`, `number_status_id`, `application_id`, `created_by`, `last_updated_by`, `created_at`, `updated_at`, `deleted_at`, `access_code`, `area_id`, `share`, `company_id`, `user_id`, `date_assigned`, `application_number_id`, `application_short_id`, `application_ispc_id`, `valid_date`, `shared`) VALUES
(395, '5320000', '5329999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '532', 1, 0, 47, NULL, '2007-03-19', NULL, NULL, NULL, NULL, 0),
(396, '5330000', '5339999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '533', 1, 0, 47, NULL, '2007-03-19', NULL, NULL, NULL, NULL, 0),
(397, '5340000', '5349999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '534', 1, 0, 47, NULL, '2007-03-19', NULL, NULL, NULL, NULL, 0),
(398, '5350000', '5359999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '535', 1, 0, 47, NULL, '2007-03-19', NULL, NULL, NULL, NULL, 0),
(399, '5360000', '5369999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '536', 1, 0, 47, NULL, '2007-03-19', NULL, NULL, NULL, NULL, 0),
(400, '5370000', '5379999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '537', 1, 0, 47, NULL, '2007-03-19', NULL, NULL, NULL, NULL, 0),
(401, '5380000', '5389999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '538', 1, 0, 47, NULL, '2007-03-19', NULL, NULL, NULL, NULL, 0),
(402, '5390000', '5399999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '539', 1, 0, 47, NULL, '2007-03-19', NULL, NULL, NULL, NULL, 0),
(403, '5400000', '5409999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '540', 1, 0, 47, NULL, '2007-03-19', NULL, NULL, NULL, NULL, 0),
(404, '2110000', '2119999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '211', 1, 0, 47, NULL, '2010-03-09', NULL, NULL, NULL, NULL, 0),
(405, '07027500000', '07027999999', 10, 2, NULL, NULL, NULL, NULL, NULL, NULL, '0702', 33, 0, 47, NULL, '2006-12-13', NULL, NULL, NULL, NULL, 0),
(406, '07027000000', '07027499999', 10, 2, NULL, NULL, NULL, NULL, NULL, NULL, '0702', 33, 0, 47, NULL, '2007-10-22', NULL, NULL, NULL, NULL, 0),
(407, '07090000000', '07099999999', 10, 2, NULL, NULL, NULL, NULL, NULL, NULL, '0709', 96, 0, 47, NULL, '2008-07-04', NULL, NULL, NULL, NULL, 0),
(408, '730000', '739999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '73', 59, 0, 47, NULL, '2007-03-20', NULL, NULL, NULL, NULL, 0),
(409, '4470000', '4479999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '447', 1, 0, 48, NULL, '2004-11-16', NULL, NULL, NULL, NULL, 0),
(410, '4560000', '4569999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '456', 1, 0, 49, NULL, '2001-01-06', NULL, NULL, NULL, NULL, 0),
(411, '220000', '227999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '22', 56, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(412, '230000', '234999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '23', 56, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(413, '350000', '353999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '35', 56, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(414, '220000', '222499', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '22', 60, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(415, '520000', '520079', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '52', 60, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(416, '520000', '520499', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '52', 60, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(417, '240000', '245999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '24', 35, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(418, '340000', '340299', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '34', 35, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(419, '440000', '440499', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '44', 35, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(420, '470000', '470999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '47', 35, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(421, '720000', '722999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '72', 35, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(422, '826000', '826999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '82', 35, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(423, '2000000', '2002999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '200', 36, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(424, '2100000', '2109999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '210', 36, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(425, '2310000', '2311375', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '231', 36, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(426, '2340000', '2349999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '234', 36, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(427, '2500000', '2509999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '250', 36, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(428, '2630000', '2639999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '263', 36, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(429, '2650000', '2659999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '265', 36, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(430, '2700000', '2709999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '270', 36, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(431, '2730000', '2739999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '273', 36, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(432, '3140000', '3149999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '314', 36, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(433, '3150000', '3152499', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '315', 36, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(434, '3300000', '3309999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '330', 36, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(435, '4130000', '4139999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '413', 36, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(436, '4140000', '4149999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '414', 36, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(437, '5200000', '5202499', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '520', 36, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(438, '5210000', '5212499', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '521', 36, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(439, '5230000', '5239999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '523', 36, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(440, '5240000', '5242499', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '524', 36, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(441, '5245000', '5246999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '524', 36, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(442, '5248000', '5249499', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '524', 36, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(443, '6000000', '6009999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '600', 36, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(444, '6010000', '6019999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '601', 36, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(445, '6020000', '6029999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '602', 36, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(446, '6030000', '6039999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '603', 36, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(447, '6040000', '6049999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '604', 36, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(448, '6050000', '6059999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '605', 36, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(449, '6070000', '6079999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '607', 36, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(450, '6080000', '6089999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '608', 36, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(451, '6110000', '6119999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '611', 36, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(452, '6120000', '6129999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '612', 36, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(453, '6140000', '6149999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '614', 36, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(454, '6150000', '6159999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '615', 36, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(455, '6160000', '6169999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '616', 36, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(456, '6250000', '6259999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '625', 36, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(457, '6260000', '6269999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '626', 36, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(458, '6270000', '6279999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '627', 36, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(459, '6280000', '6289999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '628', 36, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(460, '6290000', '6299999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '629', 36, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(461, '6300000', '6309999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '630', 36, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(462, '6310000', '6319999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '631', 36, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(463, '6320000', '6329999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '632', 36, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(464, '6330000', '6339999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '633', 36, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(465, '6340000', '6349999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '634', 36, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(466, '6350000', '6359999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '635', 36, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(467, '6360000', '6369999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '636', 36, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(468, '6370000', '6379999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '637', 36, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(469, '6380000', '6389999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '638', 36, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(470, '6390000', '6399999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '639', 36, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(471, '6400000', '6409999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '640', 36, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(472, '6410000', '6419999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '641', 36, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(473, '6420000', '6429999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '642', 36, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(474, '6430000', '6439999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '643', 36, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(475, '6440000', '6449999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '644', 36, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(476, '6450000', '6459999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '645', 36, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(477, '6460000', '6469999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '646', 36, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(478, '6470000', '6479999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '647', 36, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(479, '6480000', '6489999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '648', 36, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(480, '6490000', '6499999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '649', 36, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(481, '6500000', '6509999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '650', 36, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(482, '6510000', '6519999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '651', 36, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(483, '6520000', '6529999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '652', 36, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(484, '6530000', '6539999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '653', 36, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(485, '6540000', '6549999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '654', 36, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(486, '6550000', '6559999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '655', 36, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(487, '6560000', '6569999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '656', 36, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(488, '6570000', '6579999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '657', 36, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(489, '6580000', '6589999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '658', 36, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(490, '6590000', '6599999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '659', 36, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(491, '6600000', '6609999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '660', 36, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(492, '6610000', '6619999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '661', 36, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(493, '6620000', '6629999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '662', 36, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(494, '6630000', '6639999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '663', 36, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(495, '6640000', '6649999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '664', 36, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(496, '6650000', '6659999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '665', 36, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(497, '6800000', '6809999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '680', 36, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(498, '6810000', '6819999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '681', 36, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(499, '6820000', '6829999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '682', 36, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(500, '6830000', '6839999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '683', 36, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(501, '6840000', '6849999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '684', 36, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(502, '6850000', '6859999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '685', 36, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(503, '6860000', '6869999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '686', 36, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(504, '6870000', '6879999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '687', 36, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(505, '6880000', '6889999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '688', 36, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(506, '6890000', '6899999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '689', 36, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(507, '6900000', '6909999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '690', 36, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(508, '6910000', '6919999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '691', 36, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(509, '6920000', '6929999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '692', 36, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(510, '6930000', '6939999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '693', 36, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(511, '6940000', '6949999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '694', 36, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(512, '6950000', '6959999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '695', 36, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(513, '6960000', '6969999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '696', 36, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(514, '6970000', '6979999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '697', 36, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(515, '6980000', '6989999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '698', 36, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(516, '6990000', '6999999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '699', 36, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(517, '8100000', '8100499', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '810', 36, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(518, '8500000', '8502499', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '850', 36, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(519, '8820000', '8822499', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '882', 36, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(520, '250000', '250999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '25', 61, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(521, '251000', '251999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '25', 61, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(522, '440000', '440399', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '44', 61, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(523, '610000', '610999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '61', 61, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(524, '830000', '830499', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '83', 61, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(525, '850000', '850499', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '85', 61, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(526, '25000', '25999', 7, 2, NULL, NULL, NULL, NULL, NULL, NULL, '25', 62, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(527, '260000', '269999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '26', 62, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(528, '50000', '50199', 7, 2, NULL, NULL, NULL, NULL, NULL, NULL, '50', 62, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(529, '56000', '56299', 7, 2, NULL, NULL, NULL, NULL, NULL, NULL, '56', 62, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(530, '82000', '82199', 7, 2, NULL, NULL, NULL, NULL, NULL, NULL, '82', 62, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(531, '84000', '84499', 7, 2, NULL, NULL, NULL, NULL, NULL, NULL, '84', 62, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(532, '91000', '91499', 7, 2, NULL, NULL, NULL, NULL, NULL, NULL, '91', 62, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(533, '94000', '94499', 7, 2, NULL, NULL, NULL, NULL, NULL, NULL, '94', 62, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(534, '97000', '97499', 7, 2, NULL, NULL, NULL, NULL, NULL, NULL, '97', 62, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(535, '98000', '98499', 7, 2, NULL, NULL, NULL, NULL, NULL, NULL, '98', 62, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(536, '200000', '200999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '20', 65, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(537, '240000', '244999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '24', 68, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(538, '610000', '610999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '61', 68, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(539, '280000', '282999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '28', 49, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(540, '20000', '20599', 7, 2, NULL, NULL, NULL, NULL, NULL, NULL, '20', 69, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(541, '210000', '212499', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '21', 69, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(542, '54000', '54199', 7, 2, NULL, NULL, NULL, NULL, NULL, NULL, '54', 69, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(543, '62000', '62199', 7, 2, NULL, NULL, NULL, NULL, NULL, NULL, '62', 69, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(544, '550000', '554999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '55', 70, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(545, '571000', '571999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '57', 70, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(546, '581000', '581199', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '58', 70, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(547, '911000', '911499', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '91', 70, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(548, '20000', '20799', 7, 2, NULL, NULL, NULL, NULL, NULL, NULL, '20', 66, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(549, '210000', '211999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '21', 66, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(550, '40000', '40399', 7, 2, NULL, NULL, NULL, NULL, NULL, NULL, '40', 66, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(551, '500000', '509999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '50', 67, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(552, '510000', '519999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '51', 67, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(553, '520000', '529999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '52', 67, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(554, '530000', '539999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '53', 67, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(555, '540000', '548999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '54', 67, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(556, '200000', '200999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '20', 50, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(557, '210000', '210999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '21', 50, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(558, '220000', '220999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '22', 50, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(559, '230000', '230999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '23', 50, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(560, '240000', '249999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '24', 50, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(561, '250000', '259999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '25', 50, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(562, '260000', '260127', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '26', 50, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(563, '420000', '420099', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '42', 50, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(564, '440000', '440199', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '44', 50, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(565, '600000', '604999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '60', 50, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(566, '320000', '322499', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '32', 71, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(567, '40000', '40199', 7, 2, NULL, NULL, NULL, NULL, NULL, NULL, '40', 71, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(568, '210000', '210999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '21', 44, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(569, '220000', '225999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '22', 44, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(570, '230000', '239999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '24', 44, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(571, '320000', '320999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '32', 44, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(572, '640000', '640099', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '64', 44, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(573, '420000', '420999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '42', 44, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(574, '520000', '522499', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '52', 72, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(575, '250000', '259999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '25', 73, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(576, '450000', '459999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '45', 73, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(577, '550000', '559999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '55', 73, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(578, '720000', '720499', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '72', 73, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(579, '730000', '730499', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '73', 73, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(580, '770000', '771999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '77', 73, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(581, '880000', '880499', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '88', 73, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(582, '960000', '960299', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '96', 73, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(583, '220000', '223999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '22', 74, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(584, '33000', '33999', 7, 2, NULL, NULL, NULL, NULL, NULL, NULL, '33', 74, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(585, '43000', '43999', 7, 2, NULL, NULL, NULL, NULL, NULL, NULL, '43', 74, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(586, '45000', '45499', 7, 2, NULL, NULL, NULL, NULL, NULL, NULL, '45', 74, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(587, '670000', '670199', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '67', 74, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(588, '70000', '70499', 7, 2, NULL, NULL, NULL, NULL, NULL, NULL, '70', 74, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(589, '200000', '204999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '20', 75, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(590, '360000', '360499', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '36', 75, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(591, '380000', '380499', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '38', 75, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(592, '420000', '420199', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '42', 75, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(593, '60000', '60499', 7, 2, NULL, NULL, NULL, NULL, NULL, NULL, '60', 75, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(594, '730000', '730499', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '73', 75, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(595, '750000', '750299', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '75', 75, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(596, '20000', '20999', 7, 2, NULL, NULL, NULL, NULL, NULL, NULL, '20', 76, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(597, '210000', '213999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '21', 76, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(598, '38000', '38999', 7, 2, NULL, NULL, NULL, NULL, NULL, NULL, '38', 76, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(599, '380000', '389999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '38', 76, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(600, '700000', '700199', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '70', 76, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(601, '740000', '740499', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '74', 76, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(602, '310000', '319999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '31', 47, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(603, '410000', '419999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '41', 47, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(604, '710000', '717999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '71', 47, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(605, '950000', '950999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '95', 47, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(606, '2310000', '2319999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '231', 47, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(607, '2410000', '2414999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '241', 47, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(608, '8100000', '8109999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '810', 47, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(609, '320000', '320399', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '32', 51, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(610, '330000', '339099', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '33', 51, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(611, '339000', '339099', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '33', 51, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(612, '340000', '340199', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '34', 51, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(613, '345000', '345099', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '34', 51, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(614, '350000', '350999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '35', 51, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(615, '360000', '360199', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '36', 51, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(616, '390000', '390499', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '39', 51, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(617, '430000', '432999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '42', 51, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(618, '610000', '610499', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '61', 51, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(619, '620000', '620499', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '62', 51, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(620, '630000', '630499', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '63', 51, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(621, '640000', '641999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '64', 51, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(622, '670000', '671999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '67', 78, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(623, '230000', '233999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '23', 58, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(624, '240000', '249999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '24', 58, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(625, '250000', '250999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '25', 58, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(626, '300000', '309999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '30', 58, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(627, '460000', '462499', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '46', 58, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(628, '220000', '229999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '22', 46, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(629, '400000', '400199', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '40', 46, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(630, '600000', '600299', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '60', 46, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(631, '620000', '620299', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '62', 46, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(632, '641000', '641199', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '64', 46, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(633, '641500', '641599', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '64', 46, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(634, '670000', '670999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '67', 46, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(635, '680000', '681999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '68', 46, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(636, '701000', '701999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '70', 46, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(637, '800000', '800999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '80', 46, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(638, '801000', '801999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '80', 46, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(639, '220000', '222499', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '22', 77, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(640, '20000', '20999', 7, 2, NULL, NULL, NULL, NULL, NULL, NULL, '20', 41, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(641, '210000', '210999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '21', 41, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(642, '280000', '281999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '28', 41, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(643, '300000', '309999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '30', 41, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(644, '450000', '459999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '45', 41, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(645, '460000', '465999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '46', 41, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(646, '52000', '52499', 7, 2, NULL, NULL, NULL, NULL, NULL, NULL, '52', 41, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(647, '610000', '613999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '61', 41, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(648, '62000', '62199', 7, 2, NULL, NULL, NULL, NULL, NULL, NULL, '62', 41, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(649, '64000', '64099', 7, 2, NULL, NULL, NULL, NULL, NULL, NULL, '64', 41, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(650, '92000', '92499', 7, 2, NULL, NULL, NULL, NULL, NULL, NULL, '92', 41, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(651, '210000', '217999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '21', 37, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(652, '230000', '239999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '23', 37, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(653, '240000', '249999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '24', 37, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(654, '310000', '314999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '31', 37, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(655, '340000', '340999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '34', 37, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(656, '400000', '409999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '40', 37, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(657, '410000', '419999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '41', 37, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(658, '420000', '420999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '42', 37, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(659, '510000', '514999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '51', 37, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(660, '20000', '20599', 7, 2, NULL, NULL, NULL, NULL, NULL, NULL, '20', 79, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(661, '210000', '211999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '21', 79, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(662, '40000', '40999', 7, 2, NULL, NULL, NULL, NULL, NULL, NULL, '40', 79, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(663, '231000', '231499', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '23', 38, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(664, '241000', '241499', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '24', 38, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(665, '250000', '250099', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '25', 38, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(666, '261000', '261499', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '26', 38, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(667, '271000', '271499', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '27', 38, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(668, '291000', '291499', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '29', 38, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(669, '350000', '350499', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '35', 38, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(670, '351000', '351499', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '36', 38, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(671, '421000', '421499', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '42', 38, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(672, '451000', '451499', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '45', 38, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(673, '501000', '501499', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '50', 38, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(674, '521000', '521499', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '52', 38, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(675, '531000', '531499', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '53', 38, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(676, '561000', '561499', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '56', 38, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(677, '591000', '591499', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '59', 38, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(678, '630000', '639999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '63', 38, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(679, '640000', '649999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '64', 38, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(680, '650000', '650999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '65', 38, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(681, '660000', '669999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '66', 38, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(682, '670000', '670099', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '67', 38, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(683, '680000', '680099', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '68', 38, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(684, '711000', '711499', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '71', 38, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(685, '721000', '721499', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '72', 38, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(686, '770000', '779999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '77', 38, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(687, '780000', '789999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '78', 38, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(688, '800000', '800299', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '80', 38, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(689, '30000', '30999', 7, 2, NULL, NULL, NULL, NULL, NULL, NULL, '30', 80, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(690, '31000', '31999', 7, 2, NULL, NULL, NULL, NULL, NULL, NULL, '31', 80, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(691, '32000', '32399', 7, 2, NULL, NULL, NULL, NULL, NULL, NULL, '32', 80, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(692, '339000', '339999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '33', 80, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(693, '340000', '348999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '34', 80, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(694, '430000', '439999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '43', 80, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(695, '57000', '57499', 7, 2, NULL, NULL, NULL, NULL, NULL, NULL, '57', 80, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(696, '70000', '70199', 7, 2, NULL, NULL, NULL, NULL, NULL, NULL, '70', 80, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(697, '80000', '80799', 7, 2, NULL, NULL, NULL, NULL, NULL, NULL, '80', 80, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(698, '900000', '909999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '90', 80, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(699, '220000', '220999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '22', 95, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(700, '31000', '31499', 7, 2, NULL, NULL, NULL, NULL, NULL, NULL, '31', 95, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(701, '41000', '41099', 7, 2, NULL, NULL, NULL, NULL, NULL, NULL, '41', 95, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(702, '60000', '60799', 7, 2, NULL, NULL, NULL, NULL, NULL, NULL, '60', 95, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(703, '220000', '222499', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '22', 82, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(704, '52000', '52783', 7, 2, NULL, NULL, NULL, NULL, NULL, NULL, '52', 82, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(705, '62000', '62,999', 7, 2, NULL, NULL, NULL, NULL, NULL, NULL, '62', 82, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(706, '66000', '66999', 7, 2, NULL, NULL, NULL, NULL, NULL, NULL, '66', 82, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(707, '520000', '526999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '52', 1, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(708, '603000', '603999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '60', 1, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(709, '610000', '619999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '61', 1, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(710, '680000', '689999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '68', 1, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(711, '800000', '800999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '80', 1, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(712, '801000', '802999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '80', 1, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(713, '830000', '839999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '83', 1, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(714, '860000', '869999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '86', 1, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(715, '920000', '920999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '92', 1, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(716, '921000', '921999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '92', 1, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(717, '2380000', '2383999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '238', 1, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(718, '2400000', '2404999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '240', 1, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(719, '2420000', '2422499', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '242', 1, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(720, '2460000', '2462499', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '246', 1, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(721, '2480000', '2484999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '248', 1, 0, 50, NULL, '2005-11-11', NULL, NULL, NULL, NULL, 0),
(722, '2500000', '2509999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '250', 1, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(723, '2600000', '2601999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '260', 1, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(724, '2610000', '2619999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '261', 1, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(725, '2620000', '2629999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '262', 1, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(726, '2630000', '2637999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '263', 1, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(727, '2640000', '2649999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '264', 1, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(728, '2660000', '2669999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '266', 1, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(729, '2670000', '2679999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '267', 1, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(730, '2680000', '2683999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '268', 1, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(731, '2690000', '2694999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '269', 1, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(732, '2730000', '2739999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '273', 1, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(733, '2740000', '2744999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '274', 1, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(734, '2750000', '2754999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '275', 1, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(735, '3000000', '3009999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '300', 1, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(736, '3010000', '3019999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '301', 1, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(737, '3020000', '3029999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '302', 1, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(738, '3030000', '3039999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '303', 1, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(739, '3040000', '3049999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '304', 1, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(740, '3050000', '3059999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '305', 1, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(741, '3060000', '3069999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '306', 1, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(742, '3070000', '3079999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '307', 1, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(743, '3080000', '3089999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '308', 1, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(744, '3090000', '3099999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '309', 1, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(745, '3100000', '3109999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '310', 1, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(746, '3110000', '3119999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '311', 1, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(747, '3120000', '3129999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '312', 1, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(748, '3130000', '3139999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '313', 1, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(749, '3140000', '3149999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '314', 1, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(750, '3150000', '3159999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '315', 1, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(751, '3160000', '3169999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '316', 1, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(752, '3170000', '3179999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '317', 1, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(753, '3180000', '3189999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '318', 1, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(754, '3190000', '3199999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '319', 1, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(755, '3300000', '3309999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '330', 1, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(756, '3310000', '3319999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '331', 1, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(757, '3320000', '3329999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '332', 1, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(758, '3330000', '3339999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '333', 1, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(759, '3340000', '3349999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '334', 1, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(760, '3350000', '3359999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '335', 1, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(761, '3360000', '3369999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '336', 1, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(762, '3370000', '3379999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '337', 1, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(763, '3380000', '3389999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '338', 1, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(764, '3390000', '3399999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '339', 1, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(765, '3500000', '3509999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '350', 1, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(766, '3510000', '3519999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '351', 1, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(767, '3520000', '3529999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '352', 1, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0);
INSERT INTO `numbers` (`id`, `starting_number`, `ending_number`, `number_type_id`, `number_status_id`, `application_id`, `created_by`, `last_updated_by`, `created_at`, `updated_at`, `deleted_at`, `access_code`, `area_id`, `share`, `company_id`, `user_id`, `date_assigned`, `application_number_id`, `application_short_id`, `application_ispc_id`, `valid_date`, `shared`) VALUES
(768, '3530000', '3539999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '353', 1, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(769, '3540000', '3549999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '354', 1, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(770, '3550000', '3559999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '355', 1, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(771, '3560000', '3569999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '356', 1, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(772, '3570000', '3579999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '357', 1, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(773, '3580000', '3589999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '358', 1, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(774, '3590000', '3599999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '359', 1, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(775, '3600000', '3609999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '360', 1, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(776, '3610000', '3619999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '361', 1, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(777, '3620000', '3629999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '362', 1, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(778, '3630000', '3639999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '363', 1, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(779, '3640000', '3649999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '364', 1, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(780, '3650000', '3659999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '365', 1, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(781, '3660000', '3669999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '366', 1, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(782, '3670000', '3679999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '367', 1, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(783, '3680000', '3689999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '368', 1, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(784, '3690000', '3699999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '369', 1, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(785, '3700000', '3709999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '370', 1, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(786, '3710000', '3719999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '371', 1, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(787, '3720000', '3729999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '372', 1, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(788, '3730000', '3739999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '373', 1, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(789, '3740000', '3749999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '374', 1, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(790, '3750000', '3759999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '375', 1, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(791, '3760000', '3769999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '376', 1, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(792, '3770000', '3779999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '377', 1, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(793, '3780000', '3789999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '378', 1, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(794, '3790000', '3799999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '379', 1, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(795, '3810000', '3819999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '381', 1, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(796, '3820000', '3829999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '382', 1, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(797, '3830000', '3839999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '383', 1, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(798, '3840000', '3849999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '384', 1, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(799, '3850000', '3859999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '385', 1, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(800, '3860000', '3869999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '386', 1, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(801, '3870000', '3879999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '387', 1, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(802, '3880000', '3889999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '388', 1, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(803, '3890000', '3899999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '389', 1, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(804, '3900000', '3909999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '390', 1, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(805, '3910000', '3919999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '391', 1, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(806, '3920000', '3929999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '392', 1, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(807, '3930000', '3939999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '393', 1, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(808, '3940000', '3949999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '394', 1, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(809, '3950000', '3959999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '395', 1, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(810, '3960000', '3969999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '396', 1, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(811, '3970000', '3979999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '397', 1, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(812, '3980000', '3989999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '398', 1, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(813, '3990000', '3999999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '399', 1, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(814, '4200000', '4209999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '420', 1, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(815, '4240000', '4244999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '424', 1, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(816, '4260000', '4269999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '426', 1, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(817, '4300000', '4304999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '430', 1, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(818, '4500000', '4500999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '450', 1, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(819, '4501000', '4501999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '450', 1, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(820, '4520000', '4525999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '452', 1, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(821, '4830000', '4839999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '483', 1, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(822, '4840000', '4844999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '484', 1, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(823, '4850000', '4859999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '485', 1, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(824, '4860000', '4864999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '486', 1, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(825, '4870000', '4874999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '487', 1, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(826, '4880000', '4884999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '488', 1, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(827, '4890000', '4899999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '489', 1, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(828, '4920000', '4925999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '492', 1, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(829, '4930000', '4939999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '493', 1, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(830, '4960000', '4969999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '496', 1, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(831, '4970000', '4979999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '497', 1, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(832, '5450000', '5459999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '545', 1, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(833, '5500000', '5504999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '550', 1, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(834, '5520000', '5524999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '552', 1, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(835, '5570000', '5574999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '557', 1, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(836, '5600000', '5609999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '560', 1, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(837, '5630000', '5634999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '563', 1, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(838, '5650000', '5654999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '565', 1, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(839, '5670000', '5674999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '567', 1, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(840, '5800000', '5801999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '580', 1, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(841, '5820000', '5829999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '582', 1, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(842, '5830000', '5839999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '583', 1, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(843, '5840000', '5849999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '584', 1, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(844, '5850000', '5859999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '585', 1, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(845, '5860000', '5869999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '586', 1, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(846, '5870000', '5879999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '587', 1, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(847, '5880000', '5889999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '588', 1, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(848, '5890000', '5899999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '589', 1, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(849, '5900000', '5909999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '590', 1, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(850, '5910000', '5914999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '591', 1, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(851, '5920000', '5922499', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '592', 1, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(852, '5930000', '5932499', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '593', 1, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(853, '5940000', '5949999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '594', 1, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(854, '5950000', '5959999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '595', 1, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(855, '7710000', '7714999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '771', 1, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(856, '7720000', '7722499', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '772', 1, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(857, '7770000', '7771999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '777', 1, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(858, '7780000', '7781999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '778', 1, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(859, '7790000', '7794999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '779', 1, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(860, '7800000', '7800499', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '780', 1, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(861, '7810000', '7810499', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '781', 1, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(862, '220000', '220999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '22', 83, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(863, '220000', '224999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '22', 83, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(864, '230000', '239199', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '23', 83, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(865, '300000', '300249', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '30', 83, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(866, '300500', '300749', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '30', 83, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(867, '400000', '400999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '40', 83, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(868, '500000', '500799', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '50', 83, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(869, '510000', '511999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '51', 83, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(870, '651000', '651199', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '65', 83, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(871, '700000', '700249', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '70', 83, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(872, '800000', '800249', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '80', 83, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(873, '800500', '800749', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '80', 83, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(874, '200000', '209999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '20', 45, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(875, '230000', '236999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '23', 45, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(876, '342000', '342999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '34', 45, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(877, '420000', '420999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '42', 45, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(878, '522000', '522999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '52', 45, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(879, '821000', '821999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '82', 45, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(880, '850000', '850499', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '85', 45, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(881, '901000', '901199', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '90', 45, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(882, '470000', '472007', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '47', 42, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(883, '500000', '509999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '50', 42, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(884, '530000', '533999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '53', 42, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(885, '660000', '662499', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '66', 42, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(886, '88000', '88499', 7, 2, NULL, NULL, NULL, NULL, NULL, NULL, '88', 42, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(887, '90000', '90799', 7, 2, NULL, NULL, NULL, NULL, NULL, NULL, '90', 42, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(888, '91000', '91199', 7, 2, NULL, NULL, NULL, NULL, NULL, NULL, '91', 42, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(889, '220000', '225499', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '22', 52, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(890, '351000', '351099', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '35', 52, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(891, '470000', '472499', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '47', 52, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(892, '670000', '670499', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '67', 52, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(893, '680000', '680499', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '68', 52, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(894, '690000', '690499', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '69', 52, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(895, '710000', '710499', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '71', 52, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(896, '1000000', '1999999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '0702', 33, 0, 50, NULL, '2007-08-29', NULL, NULL, NULL, NULL, 0),
(897, '2000000', '2499999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '0702', 33, 0, 50, NULL, '2007-08-29', NULL, NULL, NULL, NULL, 0),
(898, '423000', '424999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '42', 84, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(899, '41000', '41499', 7, 2, NULL, NULL, NULL, NULL, NULL, NULL, '41', 85, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(900, '420000', '421999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '42', 85, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(901, '210000', '219999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '21', 55, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(902, '250000', '251999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '25', 55, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(903, '260000', '261999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '26', 55, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(904, '270000', '271999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '27', 55, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(905, '410000', '414999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '41', 55, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(906, '460000', '463999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '46', 55, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(907, '465000', '465999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '46', 55, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(908, '550000', '550999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '55', 55, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(909, '611000', '611499', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '61', 55, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(910, '811000', '811199', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '81', 55, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(911, '240000', '243999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '24', 59, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(912, '360000', '360499', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '36', 59, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(913, '590000', '590255', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '59', 59, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(914, '670000', '670719', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '67', 59, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(915, '680000', '680499', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '68', 59, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(916, '230000', '235247', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '23', 86, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(917, '290000', '292499', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '29', 86, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(918, '320000', '322499', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '32', 86, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(919, '420000', '420699', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '42', 86, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(920, '520000', '520999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '52', 86, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(921, '920000', '920199', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '92', 86, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(922, '240000', '241999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '24', 87, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(923, '41000', '41999', 7, 2, NULL, NULL, NULL, NULL, NULL, NULL, '41', 87, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(924, '51000', '51099', 7, 2, NULL, NULL, NULL, NULL, NULL, NULL, '51', 87, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(925, '53000', '53099', 7, 2, NULL, NULL, NULL, NULL, NULL, NULL, '53', 87, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(926, '670000', '670999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '67', 87, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(927, '240000', '241999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '24', 88, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(928, '340000', '340999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '34', 88, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(929, '720000', '722999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '72', 88, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(930, '900000', '900099', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '90', 88, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(931, '200000', '200199', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '20', 39, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(932, '230000', '233999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '23', 39, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(933, '240000', '249999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '24', 39, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(934, '260000', '260999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '26', 39, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(935, '270000', '279999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '27', 39, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(936, '330000', '336999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '33', 39, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(937, '610000', '613999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '61', 39, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(938, '820000', '821999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '82', 39, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(939, '830000', '830999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '83', 39, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(940, '870000', '870199', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '87', 39, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(941, '920000', '920199', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '92', 39, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(942, '980000', '980199', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '98', 39, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(943, '340000', '342999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '34', 90, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(944, '41000', '41999', 7, 2, NULL, NULL, NULL, NULL, NULL, NULL, '41', 90, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(945, '42000', '42999', 7, 2, NULL, NULL, NULL, NULL, NULL, NULL, '42', 90, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(946, '60000', '60099', 7, 2, NULL, NULL, NULL, NULL, NULL, NULL, '60', 90, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(947, '66000', '66199', 7, 2, NULL, NULL, NULL, NULL, NULL, NULL, '66', 90, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(948, '70000', '70199', 7, 2, NULL, NULL, NULL, NULL, NULL, NULL, '70', 90, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(949, '90000', '90199', 7, 2, NULL, NULL, NULL, NULL, NULL, NULL, '90', 90, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(950, '230000', '237999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '23', 91, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(951, '250000', '259999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '25', 91, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(952, '550000', '550499', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '55', 91, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(953, '700000', '700499', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '70', 91, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(954, '900000', '909999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '90', 91, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(955, '220000', '222999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '22', 92, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(956, '220000', '224999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '22', 92, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(957, '420000', '420999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '42', 92, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(958, '721000', '721299', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '72', 92, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(959, '821000', '821199', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '82', 92, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(960, '841000', '841199', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '84', 92, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(961, '910000', '910199', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '91', 92, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(962, '200000', '204999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '20', 93, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(963, '240000', '240499', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '24', 93, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(964, '301000', '301149', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '30', 93, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(965, '400000', '400999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '40', 93, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(966, '501000', '501283', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '50', 93, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(967, '540000', '540999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '54', 93, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(968, '601000', '601199', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '60', 93, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(969, '700000', '701999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '70', 93, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(970, '801000', '801299', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '80', 93, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(971, '230000', '234999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '23', 40, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(972, '250000', '259999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '25', 40, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(973, '400000', '400499', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '40', 40, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(974, '410000', '410099', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '41', 40, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(975, '551000', '551099', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '55', 40, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(976, '600000', '600499', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '60', 40, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(977, '620000', '620999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '62', 40, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(978, '700000', '700199', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '70', 40, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(979, '800000', '800099', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '80', 40, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(980, '20000', '20499', 7, 2, NULL, NULL, NULL, NULL, NULL, NULL, '20', 94, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(981, '21000', '21999', 7, 2, NULL, NULL, NULL, NULL, NULL, NULL, '21', 94, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(982, '40000', '40199', 7, 2, NULL, NULL, NULL, NULL, NULL, NULL, '40', 94, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(983, '490000', '490999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '49', 57, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(984, '620000', '620499', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '62', 48, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(985, '624000', '627999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '62', 48, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(986, '634000', '635199', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '63', 48, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(987, '772000', '772799', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '77', 48, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(988, '882100', '882899', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '88', 48, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(989, '890000', '890999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '89', 48, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(990, '990000', '990199', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '99', 48, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(991, '332000', '335999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '33', 54, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(992, '550000', '551999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '55', 54, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(993, '770000', '772063', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '77', 54, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(994, '800000', '809999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '80', 54, 0, 50, NULL, '2005-11-14', NULL, NULL, NULL, NULL, 0),
(995, '330000', '339999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '33', 35, 0, 114, NULL, '2003-10-17', NULL, NULL, NULL, NULL, 0),
(996, '200000', '209999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '20 ', 35, 0, 51, NULL, '2003-06-18', NULL, NULL, NULL, NULL, 0),
(997, '210000', '219999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '21', 35, 0, 51, NULL, '2003-06-18', NULL, NULL, NULL, NULL, 0),
(998, '220000', '229999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '22', 35, 0, 51, NULL, '2003-06-18', NULL, NULL, NULL, NULL, 0),
(999, '230000', '234999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '23', 35, 0, 51, NULL, '2003-06-18', NULL, NULL, NULL, NULL, 0),
(1000, '210000', '219999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '21', 35, 0, 51, NULL, '2009-06-17', NULL, NULL, NULL, NULL, 0),
(1001, '220000', '229999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '22', 35, 0, 51, NULL, '2009-06-17', NULL, NULL, NULL, NULL, 0),
(1002, '200000', '209999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '20', 61, 0, 51, NULL, '2003-06-18', NULL, NULL, NULL, NULL, 0),
(1003, '215000', '219999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '21', 61, 0, 51, NULL, '2003-06-18', NULL, NULL, NULL, NULL, 0),
(1004, '220000', '224999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '22', 61, 0, 51, NULL, '2003-06-18', NULL, NULL, NULL, NULL, 0),
(1005, '230000', '234999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '23', 61, 0, 51, NULL, '2003-06-18', NULL, NULL, NULL, NULL, 0),
(1006, '240000', '249999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '24', 61, 0, 51, NULL, '2003-06-18', NULL, NULL, NULL, NULL, 0),
(1007, '210000', '219999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '21', 61, 0, 51, NULL, '2009-06-17', NULL, NULL, NULL, NULL, 0),
(1008, '220000', '229999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '22', 61, 0, 51, NULL, '2009-06-17', NULL, NULL, NULL, NULL, 0),
(1009, '230000', '239999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '23', 61, 0, 51, NULL, '2009-06-17', NULL, NULL, NULL, NULL, 0),
(1010, '240000', '249999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '24', 61, 0, 51, NULL, '2009-06-17', NULL, NULL, NULL, NULL, 0),
(1011, '260000', '269999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '26', 61, 0, 51, NULL, '2009-06-17', NULL, NULL, NULL, NULL, 0),
(1012, '200000', '209999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '20', 68, 0, 51, NULL, '2003-06-18', NULL, NULL, NULL, NULL, 0),
(1013, '210000', '219999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '21', 68, 0, 51, NULL, '2003-06-18', NULL, NULL, NULL, NULL, 0),
(1014, '220000', '229999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '22', 68, 0, 51, NULL, '2007-12-12', NULL, NULL, NULL, NULL, 0),
(1015, '250000', '259999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '25', 68, 0, 51, NULL, '2009-06-17', NULL, NULL, NULL, NULL, 0),
(1016, '260000', '269999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '26', 68, 0, 51, NULL, '2009-06-17', NULL, NULL, NULL, NULL, 0),
(1017, '200000', '204999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '20', 47, 0, 51, NULL, '2003-06-18', NULL, NULL, NULL, NULL, 0),
(1018, '2000000', '2009999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '200', 47, 0, 51, NULL, '2003-06-18', NULL, NULL, NULL, NULL, 0),
(1019, '2010000', '2019999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '201', 47, 0, 51, NULL, '2003-06-18', NULL, NULL, NULL, NULL, 0),
(1020, '2020000', '2029999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '202', 47, 0, 51, NULL, '2007-12-12', NULL, NULL, NULL, NULL, 0),
(1021, '2030000', '2039999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '203', 47, 0, 51, NULL, '2007-12-12', NULL, NULL, NULL, NULL, 0),
(1022, '2040000', '2049999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '204', 47, 0, 51, NULL, '2009-06-17', NULL, NULL, NULL, NULL, 0),
(1023, '200000', '209999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '20', 51, 0, 51, NULL, '2003-06-18', NULL, NULL, NULL, NULL, 0),
(1024, '210000', '219999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '21', 51, 0, 51, NULL, '2003-06-18', NULL, NULL, NULL, NULL, 0),
(1025, '200000', '209999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '20', 51, 0, 51, NULL, '2009-06-17', NULL, NULL, NULL, NULL, 0),
(1026, '210000', '219999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '21', 51, 0, 51, NULL, '2009-06-17', NULL, NULL, NULL, NULL, 0),
(1027, '220000', '229999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '22', 51, 0, 51, NULL, '2009-06-17', NULL, NULL, NULL, NULL, 0),
(1028, '230000', '239999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '23', 51, 0, 51, NULL, '2009-06-17', NULL, NULL, NULL, NULL, 0),
(1029, '200000', '204999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '20', 78, 0, 51, NULL, '2003-06-18', NULL, NULL, NULL, NULL, 0),
(1030, '200000', '209999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '20', 78, 0, 51, NULL, '2009-06-17', NULL, NULL, NULL, NULL, 0),
(1031, '200000', '209999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '20', 58, 0, 51, NULL, '2003-06-18', NULL, NULL, NULL, NULL, 0),
(1032, '220000', '229999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '22', 58, 0, 51, NULL, '24/06/2003', NULL, NULL, NULL, NULL, 0),
(1033, '210000', '219999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '21', 58, 0, 51, NULL, '2009-06-17', NULL, NULL, NULL, NULL, 0),
(1034, '2010000', '2019999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '201', 1, 0, 51, NULL, '2003-06-18', NULL, NULL, NULL, NULL, 0),
(1035, '2020000', '2024999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '202', 1, 0, 51, NULL, '2003-06-18', NULL, NULL, NULL, NULL, 0),
(1036, '2010000', '2019999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '201', 1, 0, 51, NULL, '2009-06-17', NULL, NULL, NULL, NULL, 0),
(1037, '200000', '204999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '20', 85, 0, 51, NULL, '2003-06-18', NULL, NULL, NULL, NULL, 0),
(1038, '200000', '209999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '20', 85, 0, 51, NULL, '2009-06-17', NULL, NULL, NULL, NULL, 0),
(1039, '200000', '209999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '20', 59, 0, 51, NULL, '2003-06-18', NULL, NULL, NULL, NULL, 0),
(1040, '220000', '224999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '22', 59, 0, 51, NULL, '2003-06-18', NULL, NULL, NULL, NULL, 0),
(1041, '230000', '234999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '23', 59, 0, 51, NULL, '2003-06-18', NULL, NULL, NULL, NULL, 0),
(1042, '210000', '219999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '21', 59, 0, 51, NULL, '2007-12-12', NULL, NULL, NULL, NULL, 0),
(1043, '220000', '229999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '22', 59, 0, 51, NULL, '2009-06-17', NULL, NULL, NULL, NULL, 0),
(1044, '200000', '209999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '20', 87, 0, 51, NULL, '2003-06-18', NULL, NULL, NULL, NULL, 0),
(1045, '200000', '209999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '20', 87, 0, 51, NULL, '2009-06-17', NULL, NULL, NULL, NULL, 0),
(1046, '200000', '209999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '20', 88, 0, 51, NULL, '2003-06-18', NULL, NULL, NULL, NULL, 0),
(1047, '215000', '219999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '21', 88, 0, 51, NULL, '2003-06-18', NULL, NULL, NULL, NULL, 0),
(1048, '225000', '229999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '22', 88, 0, 51, NULL, '2003-06-18', NULL, NULL, NULL, NULL, 0),
(1049, '235000', '239999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '23', 88, 0, 51, NULL, '2003-06-18', NULL, NULL, NULL, NULL, 0),
(1050, '220000', '229999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '22', 88, 0, 51, NULL, '2009-06-17', NULL, NULL, NULL, NULL, 0),
(1051, '230000', '239999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '23', 88, 0, 51, NULL, '2009-06-17', NULL, NULL, NULL, NULL, 0),
(1052, '2480000', '2489999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '248', 36, 0, 52, NULL, '2001-03-21', NULL, NULL, NULL, NULL, 0),
(1053, '5100000', '5109999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '510', 1, 0, 53, NULL, '1998-06-26', NULL, NULL, NULL, NULL, 0),
(1054, '2300000', '2309999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '230', 1, 0, 54, NULL, '2004-03-25', NULL, NULL, NULL, NULL, 0),
(1055, '460000', '464999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '46', 49, 0, 55, NULL, '2004-06-07', NULL, NULL, NULL, NULL, 0),
(1056, '450000', '450499', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '45', 50, 0, 55, NULL, '1999-06-21', NULL, NULL, NULL, NULL, 0),
(1057, '460000', '469999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '46', 50, 0, 55, NULL, '2004-06-07', NULL, NULL, NULL, NULL, 0),
(1058, '4000000', '4999999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '0702', 33, 0, 55, NULL, '2006-08-15', NULL, NULL, NULL, NULL, 0),
(1059, '460000', '464999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '46', 90, 0, 55, NULL, '2004-06-07', NULL, NULL, NULL, NULL, 0),
(1060, '450000', '450499', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '45', 40, 0, 55, NULL, '1999-06-21', NULL, NULL, NULL, NULL, 0),
(1061, '480000', '484999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '48', 40, 0, 55, NULL, '2004-06-07', NULL, NULL, NULL, NULL, 0),
(1062, '350000', '350499', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '35', 40, 0, 55, NULL, '2008-10-14', NULL, NULL, NULL, NULL, 0),
(1063, '5300000', '5309999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '530', 1, 0, 56, NULL, '2005-03-21', NULL, NULL, NULL, NULL, 0),
(1064, '300000', '309999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '30', 56, 0, 57, NULL, '2003-05-20', NULL, NULL, NULL, NULL, 0),
(1065, '310000', '314999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '31', 56, 0, 57, NULL, '2003-05-20', NULL, NULL, NULL, NULL, 0),
(1066, '300000', '309999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '30', 60, 0, 57, NULL, '2003-05-20', NULL, NULL, NULL, NULL, 0),
(1067, '300000', '309999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '30', 73, 0, 57, NULL, '2003-05-20', NULL, NULL, NULL, NULL, 0),
(1068, '310000', '319999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '31', 73, 0, 57, NULL, '2006-02-27', NULL, NULL, NULL, NULL, 0),
(1069, '320000', '329999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '32', 73, 0, 57, NULL, '2007-02-05', NULL, NULL, NULL, NULL, 0),
(1070, '300000', '309999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '30', 55, 0, 57, NULL, '2003-05-20', NULL, NULL, NULL, NULL, 0),
(1071, '310000', '314999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '31', 55, 0, 57, NULL, '2003-05-20', NULL, NULL, NULL, NULL, 0),
(1072, '320000', '329999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '32', 55, 0, 57, NULL, '2007-02-05', NULL, NULL, NULL, NULL, 0),
(1073, '300000', '309999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '30', 86, 0, 57, NULL, '2003-05-20', NULL, NULL, NULL, NULL, 0),
(1074, '9500000', '9509999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '950', 36, 0, 58, NULL, '2005-12-20', NULL, NULL, NULL, NULL, 0),
(1075, '480000', '489999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '48', 56, 0, 59, NULL, '2006-03-05', NULL, NULL, NULL, NULL, 0),
(1076, '490000', '499999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '49', 56, 0, 59, NULL, '2007-01-11', NULL, NULL, NULL, NULL, 0),
(1077, '500000', '509999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '50', 56, 0, 59, NULL, '2007-05-18', NULL, NULL, NULL, NULL, 0),
(1078, '510000', '519999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '51', 56, 0, 59, NULL, '2007-05-18', NULL, NULL, NULL, NULL, 0),
(1079, '480000', '489999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '48', 60, 0, 59, NULL, '2007-02-22', NULL, NULL, NULL, NULL, 0),
(1080, '480000', '489999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '48', 35, 0, 59, NULL, '2007-02-22', NULL, NULL, NULL, NULL, 0),
(1081, '4800000', '4809999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '480', 36, 0, 59, NULL, '1999-06-03', NULL, NULL, NULL, NULL, 0),
(1082, '4750000', '4759999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '475', 36, 0, 59, NULL, '2005-05-18', NULL, NULL, NULL, NULL, 0),
(1083, '4810000', '4819999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '481', 36, 0, 59, NULL, '2007-01-11', NULL, NULL, NULL, NULL, 0),
(1084, '4820000', '4829999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '482', 36, 0, 59, NULL, '2007-05-18', NULL, NULL, NULL, NULL, 0),
(1085, '4830000', '4839999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '483', 36, 0, 59, NULL, '2007-05-18', NULL, NULL, NULL, NULL, 0),
(1086, '4840000', '4849999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '484', 36, 0, 59, NULL, '2007-05-18', NULL, NULL, NULL, NULL, 0),
(1087, '480000', '489999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '48', 61, 0, 59, NULL, '2007-02-22', NULL, NULL, NULL, NULL, 0),
(1088, '480000', '489999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '48', 62, 0, 59, NULL, '2007-02-22', NULL, NULL, NULL, NULL, 0),
(1089, '480000', '489999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '48', 68, 0, 59, NULL, '2007-02-22', NULL, NULL, NULL, NULL, 0),
(1090, '480000', '489999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '48', 49, 0, 59, NULL, '2007-02-22', NULL, NULL, NULL, NULL, 0),
(1091, '480000', '489999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '48', 69, 0, 59, NULL, '2007-02-22', NULL, NULL, NULL, NULL, 0),
(1092, '480000', '489999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '48', 70, 0, 59, NULL, '2007-02-22', NULL, NULL, NULL, NULL, 0),
(1093, '480000', '489999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '48', 50, 0, 59, NULL, '2007-02-22', NULL, NULL, NULL, NULL, 0),
(1094, '480000', '489999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '48', 44, 0, 59, NULL, '2007-02-22', NULL, NULL, NULL, NULL, 0),
(1095, '480000', '489999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '48', 73, 0, 59, NULL, '2007-01-11', NULL, NULL, NULL, NULL, 0),
(1096, '490000', '499999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '49', 73, 0, 59, NULL, '2007-08-28', NULL, NULL, NULL, NULL, 0),
(1097, '500000', '509999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '50', 73, 0, 59, NULL, '2007-08-28', NULL, NULL, NULL, NULL, 0),
(1098, '510000', '519999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '51', 73, 0, 59, NULL, '2007-08-28', NULL, NULL, NULL, NULL, 0),
(1099, '4800000', '4809999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '480', 47, 0, 59, NULL, '2004-01-15', NULL, NULL, NULL, NULL, 0),
(1100, '4810000', '4819999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '481', 47, 0, 59, NULL, '2004-01-15', NULL, NULL, NULL, NULL, 0),
(1101, '4820000', '4829999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '482', 47, 0, 59, NULL, '2006-03-03', NULL, NULL, NULL, NULL, 0),
(1102, '480000', '489999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '48', 58, 0, 59, NULL, '2007-02-22', NULL, NULL, NULL, NULL, 0),
(1103, '480000', '489999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '48', 37, 0, 59, NULL, '2007-10-04', NULL, NULL, NULL, NULL, 0),
(1104, '490000', '499999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '49', 37, 0, 59, NULL, '2007-10-04', NULL, NULL, NULL, NULL, 0),
(1105, '4800000', '4809999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '480', 1, 0, 59, NULL, '1999-06-03', NULL, NULL, NULL, NULL, 0),
(1106, '4330000', '4339999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '433', 1, 0, 59, NULL, '2004-01-15', NULL, NULL, NULL, NULL, 0),
(1107, '4340000', '4349999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '434', 1, 0, 59, NULL, '2004-01-15', NULL, NULL, NULL, NULL, 0),
(1108, '4350000', '4359999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '435', 1, 0, 59, NULL, '2004-01-15', NULL, NULL, NULL, NULL, 0),
(1109, '4360000', '4369999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '436', 1, 0, 59, NULL, '2004-01-15', NULL, NULL, NULL, NULL, 0),
(1110, '4310000', '4319999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '431', 1, 0, 59, NULL, '2006-03-03', NULL, NULL, NULL, NULL, 0),
(1111, '4320000', '4329999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '432', 1, 0, 59, NULL, '2006-03-03', NULL, NULL, NULL, NULL, 0),
(1112, '4370000', '4379999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '437', 1, 0, 59, NULL, '2006-03-03', NULL, NULL, NULL, NULL, 0),
(1113, '4380000', '4389999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '438', 1, 0, 59, NULL, '2006-03-03', NULL, NULL, NULL, NULL, 0),
(1114, '4390000', '4399999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '439', 1, 0, 59, NULL, '2006-03-03', NULL, NULL, NULL, NULL, 0),
(1115, '4000000', '4009999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '400', 1, 0, 59, NULL, '2006-09-22', NULL, NULL, NULL, NULL, 0),
(1116, '4010000', '4019999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '401', 1, 0, 59, NULL, '2006-09-22', NULL, NULL, NULL, NULL, 0),
(1117, '4020000', '4029999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '402', 1, 0, 59, NULL, '2006-09-22', NULL, NULL, NULL, NULL, 0),
(1118, '4030000', '4039999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '403', 1, 0, 59, NULL, '2006-09-22', NULL, NULL, NULL, NULL, 0),
(1119, '4040000', '4049999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '404', 1, 0, 59, NULL, '2006-09-22', NULL, NULL, NULL, NULL, 0),
(1120, '4050000', '4059999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '405', 1, 0, 59, NULL, '2007-01-11', NULL, NULL, NULL, NULL, 0),
(1121, '4060000', '4069999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '406', 1, 0, 59, NULL, '2007-01-11', NULL, NULL, NULL, NULL, 0),
(1122, '4070000', '4079999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '407', 1, 0, 59, NULL, '2007-01-11', NULL, NULL, NULL, NULL, 0),
(1123, '4080000', '4089999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '408', 1, 0, 59, NULL, '2007-01-11', NULL, NULL, NULL, NULL, 0),
(1124, '4090000', '4099999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '409', 1, 0, 59, NULL, '2007-01-11', NULL, NULL, NULL, NULL, 0),
(1125, '4150000', '4159999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '415', 1, 0, 59, NULL, '2007-01-11', NULL, NULL, NULL, NULL, 0),
(1126, '4160000', '4169999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '416', 1, 0, 59, NULL, '2007-01-11', NULL, NULL, NULL, NULL, 0),
(1127, '4170000', '4179999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '417', 1, 0, 59, NULL, '2007-01-11', NULL, NULL, NULL, NULL, 0),
(1128, '4180000', '4189999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '418', 1, 0, 59, NULL, '2007-01-11', NULL, NULL, NULL, NULL, 0),
(1129, '4190000', '4199999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '419', 1, 0, 59, NULL, '2007-01-11', NULL, NULL, NULL, NULL, 0),
(1130, '6550000', '6559999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '655', 1, 0, 59, NULL, '2007-02-22', NULL, NULL, NULL, NULL, 0),
(1131, '6560000', '6569999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '656', 1, 0, 59, NULL, '2007-02-22', NULL, NULL, NULL, NULL, 0),
(1132, '6570000', '6579999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '657', 1, 0, 59, NULL, '2007-02-22', NULL, NULL, NULL, NULL, 0),
(1133, '6580000', '6589999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '658', 1, 0, 59, NULL, '2007-02-22', NULL, NULL, NULL, NULL, 0),
(1134, '6590000', '6599999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '659', 1, 0, 59, NULL, '2007-02-22', NULL, NULL, NULL, NULL, 0),
(1135, '6600000', '6609999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '660', 1, 0, 59, NULL, '2007-02-22', NULL, NULL, NULL, NULL, 0),
(1136, '6610000', '6619999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '661', 1, 0, 59, NULL, '2007-02-22', NULL, NULL, NULL, NULL, 0),
(1137, '6620000', '6629999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '662', 1, 0, 59, NULL, '2007-02-22', NULL, NULL, NULL, NULL, 0),
(1138, '6630000', '6639999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '663', 1, 0, 59, NULL, '2007-02-22', NULL, NULL, NULL, NULL, 0),
(1139, '6640000', '6649999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '664', 1, 0, 59, NULL, '2007-02-22', NULL, NULL, NULL, NULL, 0);
INSERT INTO `numbers` (`id`, `starting_number`, `ending_number`, `number_type_id`, `number_status_id`, `application_id`, `created_by`, `last_updated_by`, `created_at`, `updated_at`, `deleted_at`, `access_code`, `area_id`, `share`, `company_id`, `user_id`, `date_assigned`, `application_number_id`, `application_short_id`, `application_ispc_id`, `valid_date`, `shared`) VALUES
(1140, '6650000', '6659999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '665', 1, 0, 59, NULL, '2007-02-22', NULL, NULL, NULL, NULL, 0),
(1141, '6660000', '6669999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '666', 1, 0, 59, NULL, '2007-02-22', NULL, NULL, NULL, NULL, 0),
(1142, '6670000', '6679999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '667', 1, 0, 59, NULL, '2007-02-22', NULL, NULL, NULL, NULL, 0),
(1143, '6680000', '6689999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '668', 1, 0, 59, NULL, '2007-02-22', NULL, NULL, NULL, NULL, 0),
(1144, '6690000', '6699999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '669', 1, 0, 59, NULL, '2007-02-22', NULL, NULL, NULL, NULL, 0),
(1145, '6700000', '6709999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '670', 1, 0, 59, NULL, '2007-02-22', NULL, NULL, NULL, NULL, 0),
(1146, '6710000', '6719999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '671', 1, 0, 59, NULL, '2007-02-22', NULL, NULL, NULL, NULL, 0),
(1147, '6720000', '6729999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '672', 1, 0, 59, NULL, '2007-02-22', NULL, NULL, NULL, NULL, 0),
(1148, '6730000', '6739999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '673', 1, 0, 59, NULL, '2007-02-22', NULL, NULL, NULL, NULL, 0),
(1149, '6740000', '6749999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '674', 1, 0, 59, NULL, '2007-02-22', NULL, NULL, NULL, NULL, 0),
(1150, '07023000000', '07023999999', 10, 2, NULL, NULL, NULL, NULL, NULL, NULL, '0702', 33, 0, 59, NULL, '2007-08-28', NULL, NULL, NULL, NULL, 0),
(1151, '07070000000', '07079999999', 10, 2, NULL, NULL, NULL, NULL, NULL, NULL, '0707', 98, 0, 59, NULL, '2008-06-16', NULL, NULL, NULL, NULL, 0),
(1152, '480000', '489999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '48', 55, 0, 59, NULL, '1999-06-03', NULL, NULL, NULL, NULL, 0),
(1153, '490000', '499999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '49', 55, 0, 59, NULL, '2004-01-15', NULL, NULL, NULL, NULL, 0),
(1154, '500000', '509999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '50', 55, 0, 59, NULL, '2006-03-03', NULL, NULL, NULL, NULL, 0),
(1155, '510000', '519999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '51', 55, 0, 59, NULL, '2006-03-03', NULL, NULL, NULL, NULL, 0),
(1156, '520000', '529999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '52', 55, 0, 59, NULL, '2007-01-11', NULL, NULL, NULL, NULL, 0),
(1157, '480000', '489999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '48', 59, 0, 59, NULL, '2007-02-22', NULL, NULL, NULL, NULL, 0),
(1158, '480000', '489999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '48', 86, 0, 59, NULL, '2007-02-22', NULL, NULL, NULL, NULL, 0),
(1159, '480000', '489999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '48', 39, 0, 59, NULL, '1999-06-03', NULL, NULL, NULL, NULL, 0),
(1160, '490000', '499999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '49', 39, 0, 59, NULL, '2004-01-15', NULL, NULL, NULL, NULL, 0),
(1161, '500000', '509999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '50', 39, 0, 59, NULL, '2006-03-03', NULL, NULL, NULL, NULL, 0),
(1162, '510000', '519999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '51', 39, 0, 59, NULL, '2006-03-03', NULL, NULL, NULL, NULL, 0),
(1163, '520000', '529999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '52', 39, 0, 59, NULL, '2007-01-11', NULL, NULL, NULL, NULL, 0),
(1164, '480000', '489999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '48', 90, 0, 59, NULL, '2007-02-22', NULL, NULL, NULL, NULL, 0),
(1165, '480000', '489999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '48', 92, 0, 59, NULL, '2007-02-22', NULL, NULL, NULL, NULL, 0),
(1166, '480000', '489999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '48', 93, 0, 59, NULL, '2007-02-22', NULL, NULL, NULL, NULL, 0),
(1167, '500000', '509999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '50', 40, 0, 59, NULL, '2007-02-22', NULL, NULL, NULL, NULL, 0),
(1168, '480000', '489999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '48', 54, 0, 59, NULL, '2007-10-04', NULL, NULL, NULL, NULL, 0),
(1169, '2510000', '2515999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '251', 1, 0, 60, NULL, '2000-11-17', NULL, NULL, NULL, NULL, 0),
(1170, '5190000', '5194999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '519', 36, 0, 61, NULL, '2004-03-16', NULL, NULL, NULL, NULL, 0),
(1171, '2760000', '2769999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '276', 1, 0, 62, NULL, '2001-11-05', NULL, NULL, NULL, NULL, 0),
(1172, '420000', '429999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '42', 39, 0, 62, NULL, '2001-11-05', NULL, NULL, NULL, NULL, 0),
(1173, '430000', '439999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '43', 39, 0, 62, NULL, '2001-11-05', NULL, NULL, NULL, NULL, 0),
(1174, '474000', '474999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '47', 39, 0, 62, NULL, '2001-11-05', NULL, NULL, NULL, NULL, 0),
(1175, '440000', '449999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '44', 40, 0, 62, NULL, '2001-11-05', NULL, NULL, NULL, NULL, 0),
(1176, '450000', '459999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '45', 40, 0, 62, NULL, '2001-11-05', NULL, NULL, NULL, NULL, 0),
(1177, '474000', '474999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '47', 40, 0, 62, NULL, '2001-11-05', NULL, NULL, NULL, NULL, 0),
(1178, '7590000', '7599999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '759', 1, 0, 63, NULL, '1998-02-05', NULL, NULL, NULL, NULL, 0),
(1179, '580000', '581999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '58', 39, 0, 63, NULL, '2001-10-12', NULL, NULL, NULL, NULL, 0),
(1180, '07020000000', '07020999999', 10, 2, NULL, NULL, NULL, NULL, NULL, NULL, '0702', 33, 0, 64, NULL, '2015-01-19', NULL, NULL, NULL, NULL, 0),
(1181, '350000', '354999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '35', 39, 0, 65, NULL, '2006-12-15', NULL, NULL, NULL, NULL, 0),
(1182, '5010000', '5019999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '501', 1, 0, 66, NULL, '2012-10-10', NULL, NULL, NULL, NULL, 0),
(1183, '5020000', '5029999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '502', 1, 0, 66, NULL, '2014-08-06', NULL, NULL, NULL, NULL, 0),
(1184, '5030000', '5039999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '503', 1, 0, 66, NULL, '2014-08-06', NULL, NULL, NULL, NULL, 0),
(1185, '8040000', '8049999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '804', 1, 0, 67, NULL, '1998-02-20', NULL, NULL, NULL, NULL, 0),
(1186, '8120000', '8129999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '812', 1, 0, 67, NULL, '2002-03-12', NULL, NULL, NULL, NULL, 0),
(1187, '8130000', '8139999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '813', 1, 0, 67, NULL, '2002-03-12', NULL, NULL, NULL, NULL, 0),
(1188, '8140000', '8149999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '814', 1, 0, 67, NULL, '2002-03-12', NULL, NULL, NULL, NULL, 0),
(1189, '8150000', '8159999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '815', 1, 0, 67, NULL, '2002-03-12', NULL, NULL, NULL, NULL, 0),
(1190, '8160000', '8169999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '816', 1, 0, 67, NULL, '2002-03-12', NULL, NULL, NULL, NULL, 0),
(1191, '8170000', '8179999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '817', 1, 0, 67, NULL, '2002-03-12', NULL, NULL, NULL, NULL, 0),
(1192, '8180000', '8189999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '818', 1, 0, 67, NULL, '2002-03-12', NULL, NULL, NULL, NULL, 0),
(1193, '8190000', '8199999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '819', 1, 0, 67, NULL, '2002-03-12', NULL, NULL, NULL, NULL, 0),
(1194, '8110000', '8119999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '811', 1, 0, 67, NULL, '2002-09-27', NULL, NULL, NULL, NULL, 0),
(1195, '940000', '949999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '94', 38, 0, 67, NULL, '2003-10-11', NULL, NULL, NULL, NULL, 0),
(1196, '950000', '959999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '95', 38, 0, 67, NULL, '2003-10-11', NULL, NULL, NULL, NULL, 0),
(1197, '960000', '969999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '96', 38, 0, 67, NULL, '2003-10-11', NULL, NULL, NULL, NULL, 0),
(1198, '970000', '979999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '97', 38, 0, 67, NULL, '2003-10-11', NULL, NULL, NULL, NULL, 0),
(1199, '980000', '989999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '98', 38, 0, 67, NULL, '2003-10-11', NULL, NULL, NULL, NULL, 0),
(1200, '940000', '949999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '94', 45, 0, 67, NULL, '2003-10-11', NULL, NULL, NULL, NULL, 0),
(1201, '950000', '959999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '95', 45, 0, 67, NULL, '2003-10-11', NULL, NULL, NULL, NULL, 0),
(1202, '960000', '969999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '96', 45, 0, 67, NULL, '2003-10-11', NULL, NULL, NULL, NULL, 0),
(1203, '970000', '979999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '97', 45, 0, 67, NULL, '2003-10-11', NULL, NULL, NULL, NULL, 0),
(1204, '980000', '989999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '98', 45, 0, 67, NULL, '2003-10-11', NULL, NULL, NULL, NULL, 0),
(1205, '8900000', '8909999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '890', 1, 0, 67, NULL, '2003-10-29', NULL, NULL, NULL, NULL, 0),
(1206, '8910000', '8919999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '891', 1, 0, 67, NULL, '2003-10-29', NULL, NULL, NULL, NULL, 0),
(1207, '8920000', '8929999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '892', 1, 0, 67, NULL, '2003-10-29', NULL, NULL, NULL, NULL, 0),
(1208, '8930000', '8939999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '893', 1, 0, 67, NULL, '2003-10-29', NULL, NULL, NULL, NULL, 0),
(1209, '8940000', '8949999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '894', 1, 0, 67, NULL, '2003-10-29', NULL, NULL, NULL, NULL, 0),
(1210, '8950000', '8959999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '895', 1, 0, 67, NULL, '2003-10-29', NULL, NULL, NULL, NULL, 0),
(1211, '8960000', '8969999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '896', 1, 0, 67, NULL, '2003-10-29', NULL, NULL, NULL, NULL, 0),
(1212, '8970000', '8979999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '897', 1, 0, 67, NULL, '2003-10-29', NULL, NULL, NULL, NULL, 0),
(1213, '8980000', '8989999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '898', 1, 0, 67, NULL, '2003-10-29', NULL, NULL, NULL, NULL, 0),
(1214, '8990000', '8999999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '899', 1, 0, 67, NULL, '2003-10-29', NULL, NULL, NULL, NULL, 0),
(1215, '8500000', '8509999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '850', 1, 0, 67, NULL, '2005-05-12', NULL, NULL, NULL, NULL, 0),
(1216, '8510000', '8519999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '851', 1, 0, 67, NULL, '2005-05-12', NULL, NULL, NULL, NULL, 0),
(1217, '8520000', '8529999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '852', 1, 0, 67, NULL, '2005-05-12', NULL, NULL, NULL, NULL, 0),
(1218, '8530000', '8539999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '853', 1, 0, 67, NULL, '2005-05-12', NULL, NULL, NULL, NULL, 0),
(1219, '8540000', '8549999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '854', 1, 0, 67, NULL, '2005-05-12', NULL, NULL, NULL, NULL, 0),
(1220, '740000', '749999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '74', 39, 0, 67, NULL, '2005-05-12', NULL, NULL, NULL, NULL, 0),
(1221, '750000', '759999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '75', 39, 0, 67, NULL, '2005-05-12', NULL, NULL, NULL, NULL, 0),
(1222, '760000', '769999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '76', 39, 0, 67, NULL, '2005-05-12', NULL, NULL, NULL, NULL, 0),
(1223, '770000', '779999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '77', 39, 0, 67, NULL, '2005-05-12', NULL, NULL, NULL, NULL, 0),
(1224, '780000', '789999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '78', 39, 0, 67, NULL, '2005-05-12', NULL, NULL, NULL, NULL, 0),
(1225, '8700000', '8709999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '870', 1, 0, 67, NULL, '2006-05-27', NULL, NULL, NULL, NULL, 0),
(1226, '8710000', '8719999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '871', 1, 0, 67, NULL, '2006-05-27', NULL, NULL, NULL, NULL, 0),
(1227, '8720000', '8729999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '872', 1, 0, 67, NULL, '2006-05-27', NULL, NULL, NULL, NULL, 0),
(1228, '8730000', '8739999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '873', 1, 0, 67, NULL, '2006-05-27', NULL, NULL, NULL, NULL, 0),
(1229, '8740000', '8749999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '874', 1, 0, 67, NULL, '2006-05-27', NULL, NULL, NULL, NULL, 0),
(1230, '8750000', '8759999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '875', 1, 0, 67, NULL, '2006-05-27', NULL, NULL, NULL, NULL, 0),
(1231, '8760000', '8769999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '876', 1, 0, 67, NULL, '2006-05-27', NULL, NULL, NULL, NULL, 0),
(1232, '8770000', '8779999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '877', 1, 0, 67, NULL, '2006-05-27', NULL, NULL, NULL, NULL, 0),
(1233, '8780000', '8789999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '878', 1, 0, 67, NULL, '2006-05-27', NULL, NULL, NULL, NULL, 0),
(1234, '8790000', '8799999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '879', 1, 0, 67, NULL, '2006-05-27', NULL, NULL, NULL, NULL, 0),
(1235, '8700000', '8709999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '870', 47, 0, 67, NULL, '2006-07-20', NULL, NULL, NULL, NULL, 0),
(1236, '870000', '879999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '87', 55, 0, 67, NULL, '2006-07-20', NULL, NULL, NULL, NULL, 0),
(1237, '870000', '879999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '87', 49, 0, 67, NULL, '2006-07-20', NULL, NULL, NULL, NULL, 0),
(1238, '870000', '879999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '87', 56, 0, 67, NULL, '2006-07-20', NULL, NULL, NULL, NULL, 0),
(1239, '8000000', '8249999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '0702', 33, 0, 67, NULL, '2006-09-18', NULL, NULL, NULL, NULL, 0),
(1240, '8710000', '8719999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '871', 47, 0, 67, NULL, '2006-10-19', NULL, NULL, NULL, NULL, 0),
(1241, '930000', '939999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '93', 38, 0, 67, NULL, '2006-10-19', NULL, NULL, NULL, NULL, 0),
(1242, '790000', '799999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '79', 39, 0, 67, NULL, '2006-10-19', NULL, NULL, NULL, NULL, 0),
(1243, '7400000', '7409999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '740', 1, 0, 67, NULL, '2007-03-23', NULL, NULL, NULL, NULL, 0),
(1244, '7410000', '7419999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '741', 1, 0, 67, NULL, '2007-03-23', NULL, NULL, NULL, NULL, 0),
(1245, '7420000', '7429999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '742', 1, 0, 67, NULL, '2007-03-23', NULL, NULL, NULL, NULL, 0),
(1246, '7430000', '7439999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '743', 1, 0, 67, NULL, '2007-03-23', NULL, NULL, NULL, NULL, 0),
(1247, '7440000', '7449999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '744', 1, 0, 67, NULL, '2007-03-23', NULL, NULL, NULL, NULL, 0),
(1248, '7450000', '7459999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '745', 1, 0, 67, NULL, '2007-03-23', NULL, NULL, NULL, NULL, 0),
(1249, '7460000', '7469999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '746', 1, 0, 67, NULL, '2007-03-23', NULL, NULL, NULL, NULL, 0),
(1250, '7470000', '7479999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '747', 1, 0, 67, NULL, '2007-03-23', NULL, NULL, NULL, NULL, 0),
(1251, '7480000', '7489999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '748', 1, 0, 67, NULL, '2007-03-23', NULL, NULL, NULL, NULL, 0),
(1252, '7490000', '7499999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '749', 1, 0, 67, NULL, '2007-03-23', NULL, NULL, NULL, NULL, 0),
(1253, '8700000', '8709999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '870', 36, 0, 67, NULL, '2007-03-23', NULL, NULL, NULL, NULL, 0),
(1254, '8710000', '8719999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '871', 36, 0, 67, NULL, '2007-03-23', NULL, NULL, NULL, NULL, 0),
(1255, '8720000', '8729999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '872', 36, 0, 67, NULL, '2007-03-23', NULL, NULL, NULL, NULL, 0),
(1256, '8730000', '8739999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '873', 36, 0, 67, NULL, '2007-03-23', NULL, NULL, NULL, NULL, 0),
(1257, '8740000', '8749999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '874', 36, 0, 67, NULL, '2007-03-23', NULL, NULL, NULL, NULL, 0),
(1258, '870000', '879999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '87', 35, 0, 67, NULL, '2007-03-23', NULL, NULL, NULL, NULL, 0),
(1259, '870000', '879999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '87', 37, 0, 67, NULL, '2007-03-23', NULL, NULL, NULL, NULL, 0),
(1260, '880000', '889999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '88', 37, 0, 67, NULL, '2007-03-23', NULL, NULL, NULL, NULL, 0),
(1261, '890000', '899999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '89', 37, 0, 67, NULL, '2007-03-23', NULL, NULL, NULL, NULL, 0),
(1262, '8720000', '8729999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '872', 47, 0, 67, NULL, '2007-08-22', NULL, NULL, NULL, NULL, 0),
(1263, '8730000', '8739999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '873', 47, 0, 67, NULL, '2007-08-22', NULL, NULL, NULL, NULL, 0),
(1264, '8740000', '8749999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '874', 47, 0, 67, NULL, '2007-08-22', NULL, NULL, NULL, NULL, 0),
(1265, '870000', '879999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '87', 50, 0, 67, NULL, '2007-08-22', NULL, NULL, NULL, NULL, 0),
(1266, '880000', '889999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '88', 50, 0, 67, NULL, '2007-08-22', NULL, NULL, NULL, NULL, 0),
(1267, '890000', '899999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '89', 50, 0, 67, NULL, '2007-08-22', NULL, NULL, NULL, NULL, 0),
(1268, '890000', '899999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '89', 38, 0, 67, NULL, '2007-08-22', NULL, NULL, NULL, NULL, 0),
(1269, '910000', '919999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '91', 38, 0, 67, NULL, '2007-08-22', NULL, NULL, NULL, NULL, 0),
(1270, '610000', '619999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '61', 38, 0, 67, NULL, '2007-08-22', NULL, NULL, NULL, NULL, 0),
(1271, '810000', '819999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '81', 38, 0, 67, NULL, '2007-08-22', NULL, NULL, NULL, NULL, 0),
(1272, '920000', '929999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '92', 38, 0, 67, NULL, '2007-08-22', NULL, NULL, NULL, NULL, 0),
(1273, '880000', '889999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '88', 39, 0, 67, NULL, '2007-08-22', NULL, NULL, NULL, NULL, 0),
(1274, '890000', '899999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '89', 39, 0, 67, NULL, '2007-08-22', NULL, NULL, NULL, NULL, 0),
(1275, '900000', '909999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '90', 39, 0, 67, NULL, '2007-08-22', NULL, NULL, NULL, NULL, 0),
(1276, '8250000', '8499999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '0702', 33, 0, 67, NULL, '2007-08-22', NULL, NULL, NULL, NULL, 0),
(1277, '7300000', '7309999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '730', 1, 0, 67, NULL, '2007-10-22', NULL, NULL, NULL, NULL, 0),
(1278, '7310000', '7319999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '731', 1, 0, 67, NULL, '2007-10-22', NULL, NULL, NULL, NULL, 0),
(1279, '7320000', '7329999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '732', 1, 0, 67, NULL, '2007-10-22', NULL, NULL, NULL, NULL, 0),
(1280, '7330000', '7339999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '733', 1, 0, 67, NULL, '2007-10-22', NULL, NULL, NULL, NULL, 0),
(1281, '7340000', '7349999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '734', 1, 0, 67, NULL, '2007-10-22', NULL, NULL, NULL, NULL, 0),
(1282, '7350000', '7359999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '735', 1, 0, 67, NULL, '2007-10-22', NULL, NULL, NULL, NULL, 0),
(1283, '7360000', '7369999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '736', 1, 0, 67, NULL, '2007-10-22', NULL, NULL, NULL, NULL, 0),
(1284, '7370000', '7379999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '737', 1, 0, 67, NULL, '2007-10-22', NULL, NULL, NULL, NULL, 0),
(1285, '7380000', '7389999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '738', 1, 0, 67, NULL, '2007-10-22', NULL, NULL, NULL, NULL, 0),
(1286, '7390000', '7399999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '739', 1, 0, 67, NULL, '2007-10-22', NULL, NULL, NULL, NULL, 0),
(1287, '860000', '869999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '86', 56, 0, 67, NULL, '2007-10-22', NULL, NULL, NULL, NULL, 0),
(1288, '880000', '889999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '88', 56, 0, 67, NULL, '2007-10-22', NULL, NULL, NULL, NULL, 0),
(1289, '890000', '899999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '89', 56, 0, 67, NULL, '2007-10-22', NULL, NULL, NULL, NULL, 0),
(1290, '870000', '879999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '87', 54, 0, 67, NULL, '2007-12-12', NULL, NULL, NULL, NULL, 0),
(1291, '880000', '889999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '88', 54, 0, 67, NULL, '2007-12-12', NULL, NULL, NULL, NULL, 0),
(1292, '890000', '899999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '89', 54, 0, 67, NULL, '2007-12-12', NULL, NULL, NULL, NULL, 0),
(1293, '810000', '819999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '81', 46, 0, 67, NULL, '2008-03-17', NULL, NULL, NULL, NULL, 0),
(1294, '820000', '829999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '82', 46, 0, 67, NULL, '2008-03-17', NULL, NULL, NULL, NULL, 0),
(1295, '830000', '839999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '83', 46, 0, 67, NULL, '2008-03-17', NULL, NULL, NULL, NULL, 0),
(1296, '800000', '809999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '80', 73, 0, 67, NULL, '2008-03-17', NULL, NULL, NULL, NULL, 0),
(1297, '810000', '819999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '81', 73, 0, 67, NULL, '2008-03-17', NULL, NULL, NULL, NULL, 0),
(1298, '820000', '829999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '82', 73, 0, 67, NULL, '2008-03-17', NULL, NULL, NULL, NULL, 0),
(1299, '820000', '829999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '82', 55, 0, 67, NULL, '2008-03-17', NULL, NULL, NULL, NULL, 0),
(1300, '830000', '839999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '83', 55, 0, 67, NULL, '2008-03-17', NULL, NULL, NULL, NULL, 0),
(1301, '840000', '849999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '84', 55, 0, 67, NULL, '2008-03-17', NULL, NULL, NULL, NULL, 0),
(1302, '800000', '809999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '80', 70, 0, 67, NULL, '2008-03-17', NULL, NULL, NULL, NULL, 0),
(1303, '810000', '819999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '81', 70, 0, 67, NULL, '2008-03-17', NULL, NULL, NULL, NULL, 0),
(1304, '820000', '829999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '82', 70, 0, 67, NULL, '2008-03-17', NULL, NULL, NULL, NULL, 0),
(1305, '810000', '819999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '81', 40, 0, 67, NULL, '2008-03-17', NULL, NULL, NULL, NULL, 0),
(1306, '820000', '829999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '82', 40, 0, 67, NULL, '2008-03-17', NULL, NULL, NULL, NULL, 0),
(1307, '830000', '839999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '83', 40, 0, 67, NULL, '2008-03-17', NULL, NULL, NULL, NULL, 0),
(1308, '890000', '899999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '89', 40, 0, 67, NULL, '2008-03-17', NULL, NULL, NULL, NULL, 0),
(1309, '800000', '809999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '80', 90, 0, 67, NULL, '2008-03-17', NULL, NULL, NULL, NULL, 0),
(1310, '810000', '819999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '81', 90, 0, 67, NULL, '2008-03-17', NULL, NULL, NULL, NULL, 0),
(1311, '820000', '829999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '82', 90, 0, 67, NULL, '2008-03-17', NULL, NULL, NULL, NULL, 0),
(1312, '810000', '819999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '81', 80, 0, 67, NULL, '2008-03-17', NULL, NULL, NULL, NULL, 0),
(1313, '820000', '829999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '82', 80, 0, 67, NULL, '2008-03-17', NULL, NULL, NULL, NULL, 0),
(1314, '800000', '809999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '80', 41, 0, 67, NULL, '2008-03-17', NULL, NULL, NULL, NULL, 0),
(1315, '810000', '819999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '81', 41, 0, 67, NULL, '2008-03-17', NULL, NULL, NULL, NULL, 0),
(1316, '820000', '829999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '82', 41, 0, 67, NULL, '2008-03-17', NULL, NULL, NULL, NULL, 0),
(1317, '820000', '829999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '82', 67, 0, 67, NULL, '2008-03-17', NULL, NULL, NULL, NULL, 0),
(1318, '830000', '839999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '83', 67, 0, 67, NULL, '2008-03-17', NULL, NULL, NULL, NULL, 0),
(1319, '840000', '849999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '84', 67, 0, 67, NULL, '2008-03-17', NULL, NULL, NULL, NULL, 0),
(1320, '800000', '809999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '80', 86, 0, 67, NULL, '2008-03-17', NULL, NULL, NULL, NULL, 0),
(1321, '810000', '819999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '81', 86, 0, 67, NULL, '2008-03-17', NULL, NULL, NULL, NULL, 0),
(1322, '820000', '829999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '82', 86, 0, 67, NULL, '2008-03-17', NULL, NULL, NULL, NULL, 0),
(1323, '810000', '819999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '81', 93, 0, 67, NULL, '2008-03-17', NULL, NULL, NULL, NULL, 0),
(1324, '820000', '829999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '82', 93, 0, 67, NULL, '2008-03-17', NULL, NULL, NULL, NULL, 0),
(1325, '830000', '839999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '83', 93, 0, 67, NULL, '2008-03-17', NULL, NULL, NULL, NULL, 0),
(1326, '820000', '829999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '82', 44, 0, 67, NULL, '2008-03-17', NULL, NULL, NULL, NULL, 0),
(1327, '830000', '839999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '83', 44, 0, 67, NULL, '2008-03-17', NULL, NULL, NULL, NULL, 0),
(1328, '840000', '849999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '84', 44, 0, 67, NULL, '2008-03-17', NULL, NULL, NULL, NULL, 0),
(1329, '850000', '859999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '85', 92, 0, 67, NULL, '2008-03-17', NULL, NULL, NULL, NULL, 0),
(1330, '860000', '869999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '86', 92, 0, 67, NULL, '2008-03-17', NULL, NULL, NULL, NULL, 0),
(1331, '870000', '879999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '87', 92, 0, 67, NULL, '2008-03-17', NULL, NULL, NULL, NULL, 0),
(1332, '9500000', '9509999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '950', 1, 0, 67, NULL, '2008-03-17', NULL, NULL, NULL, NULL, 0),
(1333, '9510000', '9519999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '951', 1, 0, 67, NULL, '2008-03-12', NULL, NULL, NULL, NULL, 0),
(1334, '9520000', '9529999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '952', 1, 0, 67, NULL, '2008-03-12', NULL, NULL, NULL, NULL, 0),
(1335, '9530000', '9539999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '953', 1, 0, 67, NULL, '2008-03-12', NULL, NULL, NULL, NULL, 0),
(1336, '9540000', '9549999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '954', 1, 0, 67, NULL, '2008-03-12', NULL, NULL, NULL, NULL, 0),
(1337, '9550000', '9559999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '955', 1, 0, 67, NULL, '2008-03-12', NULL, NULL, NULL, NULL, 0),
(1338, '9560000', '9569999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '956', 1, 0, 67, NULL, '2008-03-12', NULL, NULL, NULL, NULL, 0),
(1339, '9570000', '9579999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '957', 1, 0, 67, NULL, '2008-03-12', NULL, NULL, NULL, NULL, 0),
(1340, '9580000', '9589999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '958', 1, 0, 67, NULL, '2008-03-12', NULL, NULL, NULL, NULL, 0),
(1341, '9590000', '9599999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '959', 1, 0, 67, NULL, '2008-03-12', NULL, NULL, NULL, NULL, 0),
(1342, '8750000', '8759999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '875', 47, 0, 67, NULL, '2008-03-27', NULL, NULL, NULL, NULL, 0),
(1343, '8760000', '8769999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '876', 47, 0, 67, NULL, '2008-03-27', NULL, NULL, NULL, NULL, 0),
(1344, '8770000', '8779999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '877', 47, 0, 67, NULL, '2008-03-27', NULL, NULL, NULL, NULL, 0),
(1345, '800000', '809999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '80', 88, 0, 67, NULL, '2008-03-27', NULL, NULL, NULL, NULL, 0),
(1346, '810000', '819999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '81', 88, 0, 67, NULL, '2008-03-27', NULL, NULL, NULL, NULL, 0),
(1347, '820000', '829999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '82', 88, 0, 67, NULL, '2008-03-27', NULL, NULL, NULL, NULL, 0),
(1348, '840000', '849999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '84', 49, 0, 67, NULL, '2008-03-27', NULL, NULL, NULL, NULL, 0),
(1349, '850000', '859999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '85', 49, 0, 67, NULL, '2008-03-27', NULL, NULL, NULL, NULL, 0),
(1350, '860000', '869999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '86', 49, 0, 67, NULL, '2008-03-27', NULL, NULL, NULL, NULL, 0),
(1351, '370000', '379999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '37', 38, 0, 67, NULL, '2008-03-27', NULL, NULL, NULL, NULL, 0),
(1352, '380000', '389999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '38', 38, 0, 67, NULL, '2008-03-27', NULL, NULL, NULL, NULL, 0),
(1353, '390000', '399999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '39', 38, 0, 67, NULL, '2008-03-27', NULL, NULL, NULL, NULL, 0),
(1354, '910000', '919999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '91', 45, 0, 67, NULL, '2008-03-27', NULL, NULL, NULL, NULL, 0),
(1355, '920000', '929999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '92', 45, 0, 67, NULL, '2008-03-27', NULL, NULL, NULL, NULL, 0),
(1356, '930000', '939999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '93', 45, 0, 67, NULL, '2008-03-27', NULL, NULL, NULL, NULL, 0),
(1357, '800000', '809999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '80', 39, 0, 67, NULL, '2008-03-27', NULL, NULL, NULL, NULL, 0),
(1358, '810000', '819999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '81', 39, 0, 67, NULL, '2008-03-27', NULL, NULL, NULL, NULL, 0),
(1359, '820000', '829999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '82', 39, 0, 67, NULL, '2008-03-27', NULL, NULL, NULL, NULL, 0),
(1360, '830000', '839999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '83', 39, 0, 67, NULL, '2008-03-27', NULL, NULL, NULL, NULL, 0),
(1361, '840000', '849999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '84', 39, 0, 67, NULL, '2008-03-27', NULL, NULL, NULL, NULL, 0),
(1362, '8750000', '8759999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '875', 36, 0, 67, NULL, '2008-09-09', NULL, NULL, NULL, NULL, 0),
(1363, '8760000', '8769999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '876', 36, 0, 67, NULL, '2008-09-09', NULL, NULL, NULL, NULL, 0),
(1364, '8770000', '8779999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '877', 36, 0, 67, NULL, '2008-09-09', NULL, NULL, NULL, NULL, 0),
(1365, '8780000', '8789999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '878', 36, 0, 67, NULL, '2008-09-09', NULL, NULL, NULL, NULL, 0),
(1366, '8790000', '8799999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '879', 36, 0, 67, NULL, '2008-09-09', NULL, NULL, NULL, NULL, 0),
(1367, '850000', '859999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '85', 35, 0, 67, NULL, '2008-09-09', NULL, NULL, NULL, NULL, 0),
(1368, '860000', '869999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '86', 35, 0, 67, NULL, '2008-09-09', NULL, NULL, NULL, NULL, 0),
(1369, '880000', '889999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '88', 35, 0, 67, NULL, '2008-09-09', NULL, NULL, NULL, NULL, 0),
(1370, '890000', '899999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '89', 35, 0, 67, NULL, '2008-09-09', NULL, NULL, NULL, NULL, 0),
(1371, '830000', '839999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '83', 56, 0, 67, NULL, '2008-09-09', NULL, NULL, NULL, NULL, 0),
(1372, '840000', '849999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '84', 56, 0, 67, NULL, '2008-09-09', NULL, NULL, NULL, NULL, 0),
(1373, '850000', '859999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '85', 56, 0, 67, NULL, '2008-09-09', NULL, NULL, NULL, NULL, 0),
(1374, '8100000', '8109999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '810', 1, 0, 67, NULL, '2008-12-02', NULL, NULL, NULL, NULL, 0),
(1375, '8200000', '8209999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '820', 1, 0, 67, NULL, '2008-12-02', NULL, NULL, NULL, NULL, 0),
(1376, '8210000', '8219999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '821', 1, 0, 67, NULL, '2008-12-02', NULL, NULL, NULL, NULL, 0),
(1377, '8220000', '8229999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '822', 1, 0, 67, NULL, '2008-12-02', NULL, NULL, NULL, NULL, 0),
(1378, '8230000', '8239999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '823', 1, 0, 67, NULL, '2008-12-02', NULL, NULL, NULL, NULL, 0),
(1379, '8240000', '8249999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '824', 1, 0, 67, NULL, '2008-12-02', NULL, NULL, NULL, NULL, 0),
(1380, '8250000', '8259999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '825', 1, 0, 67, NULL, '2008-12-02', NULL, NULL, NULL, NULL, 0),
(1381, '8260000', '8269999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '826', 1, 0, 67, NULL, '2008-12-02', NULL, NULL, NULL, NULL, 0),
(1382, '8270000', '8279999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '827', 1, 0, 67, NULL, '2008-12-02', NULL, NULL, NULL, NULL, 0),
(1383, '8280000', '8289999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '828', 1, 0, 67, NULL, '2008-12-02', NULL, NULL, NULL, NULL, 0),
(1384, '8290000', '8299999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '829', 1, 0, 67, NULL, '2008-12-02', NULL, NULL, NULL, NULL, 0),
(1385, '8400000', '8409999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '840', 1, 0, 67, NULL, '2008-12-02', NULL, NULL, NULL, NULL, 0),
(1386, '8410000', '8419999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '841', 1, 0, 67, NULL, '2008-12-02', NULL, NULL, NULL, NULL, 0),
(1387, '8420000', '8429999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '842', 1, 0, 67, NULL, '2008-12-02', NULL, NULL, NULL, NULL, 0),
(1388, '8430000', '8439999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '843', 1, 0, 67, NULL, '2008-12-02', NULL, NULL, NULL, NULL, 0),
(1389, '8440000', '8449999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '844', 1, 0, 67, NULL, '2008-12-02', NULL, NULL, NULL, NULL, 0),
(1390, '8450000', '8459999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '845', 1, 0, 67, NULL, '2008-12-02', NULL, NULL, NULL, NULL, 0),
(1391, '8460000', '8469999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '846', 1, 0, 67, NULL, '2008-12-02', NULL, NULL, NULL, NULL, 0),
(1392, '8470000', '8479999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '847', 1, 0, 67, NULL, '2008-12-02', NULL, NULL, NULL, NULL, 0),
(1393, '8480000', '8489999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '848', 1, 0, 67, NULL, '2008-12-02', NULL, NULL, NULL, NULL, 0),
(1394, '8490000', '8499999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '849', 1, 0, 67, NULL, '2008-12-02', NULL, NULL, NULL, NULL, 0),
(1395, '8550000', '8559999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '855', 1, 0, 67, NULL, '2008-12-02', NULL, NULL, NULL, NULL, 0),
(1396, '8560000', '8569999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '856', 1, 0, 67, NULL, '2008-12-02', NULL, NULL, NULL, NULL, 0),
(1397, '8570000', '8579999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '857', 1, 0, 67, NULL, '2008-12-02', NULL, NULL, NULL, NULL, 0),
(1398, '8580000', '8589999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '858', 1, 0, 67, NULL, '2008-12-02', NULL, NULL, NULL, NULL, 0),
(1399, '8590000', '8599999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '859', 1, 0, 67, NULL, '2008-12-02', NULL, NULL, NULL, NULL, 0),
(1400, '8800000', '8809999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '880', 1, 0, 67, NULL, '2008-12-02', NULL, NULL, NULL, NULL, 0),
(1401, '8810000', '8819999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '881', 1, 0, 67, NULL, '2008-12-02', NULL, NULL, NULL, NULL, 0),
(1402, '8820000', '8829999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '882', 1, 0, 67, NULL, '2008-12-02', NULL, NULL, NULL, NULL, 0),
(1403, '8830000', '8839999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '883', 1, 0, 67, NULL, '2008-12-02', NULL, NULL, NULL, NULL, 0),
(1404, '8000000', '8009999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '800', 36, 0, 67, NULL, '2008-12-02', NULL, NULL, NULL, NULL, 0),
(1405, '8010000', '8019999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '801', 36, 0, 67, NULL, '2008-12-02', NULL, NULL, NULL, NULL, 0),
(1406, '8020000', '8029999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '802', 36, 0, 67, NULL, '2008-12-02', NULL, NULL, NULL, NULL, 0),
(1407, '8030000', '8039999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '803', 36, 0, 67, NULL, '2008-12-02', NULL, NULL, NULL, NULL, 0),
(1408, '8040000', '8049999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '804', 36, 0, 67, NULL, '2008-12-02', NULL, NULL, NULL, NULL, 0),
(1409, '8050000', '8059999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '805', 36, 0, 67, NULL, '2008-12-02', NULL, NULL, NULL, NULL, 0),
(1410, '8060000', '8069999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '806', 36, 0, 67, NULL, '2008-12-02', NULL, NULL, NULL, NULL, 0),
(1411, '8070000', '8079999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '807', 36, 0, 67, NULL, '2008-12-02', NULL, NULL, NULL, NULL, 0),
(1412, '8080000', '8089999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '808', 36, 0, 67, NULL, '2008-12-02', NULL, NULL, NULL, NULL, 0),
(1413, '8090000', '8099999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '809', 36, 0, 67, NULL, '2008-12-02', NULL, NULL, NULL, NULL, 0),
(1414, '840000', '849999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '84', 46, 0, 67, NULL, '2008-12-02', NULL, NULL, NULL, NULL, 0),
(1415, '850000', '859999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '85', 46, 0, 67, NULL, '2008-12-02', NULL, NULL, NULL, NULL, 0),
(1416, '860000', '869999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '86', 46, 0, 67, NULL, '2008-12-02', NULL, NULL, NULL, NULL, 0),
(1417, '870000', '879999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '87', 46, 0, 67, NULL, '2008-12-02', NULL, NULL, NULL, NULL, 0),
(1418, '880000', '889999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '88', 46, 0, 67, NULL, '2008-12-02', NULL, NULL, NULL, NULL, 0),
(1419, '830000', '839999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '83', 88, 0, 67, NULL, '2008-12-02', NULL, NULL, NULL, NULL, 0),
(1420, '840000', '849999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '84', 88, 0, 67, NULL, '2008-12-02', NULL, NULL, NULL, NULL, 0),
(1421, '850000', '859999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '85', 88, 0, 67, NULL, '2008-12-02', NULL, NULL, NULL, NULL, 0),
(1422, '860000', '869999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '86', 88, 0, 67, NULL, '2008-12-02', NULL, NULL, NULL, NULL, 0),
(1423, '870000', '879999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '87', 88, 0, 67, NULL, '2008-12-02', NULL, NULL, NULL, NULL, 0),
(1424, '610000', '619999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '61', 35, 0, 67, NULL, '2008-12-02', NULL, NULL, NULL, NULL, 0),
(1425, '620000', '629999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '62', 35, 0, 67, NULL, '2008-12-02', NULL, NULL, NULL, NULL, 0),
(1426, '630000', '639999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '63', 35, 0, 67, NULL, '2008-12-02', NULL, NULL, NULL, NULL, 0),
(1427, '640000', '649999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '64', 35, 0, 67, NULL, '2008-12-02', NULL, NULL, NULL, NULL, 0),
(1428, '650000', '659999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '65', 35, 0, 67, NULL, '2008-12-02', NULL, NULL, NULL, NULL, 0),
(1429, '710000', '719999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '71', 55, 0, 67, NULL, '2008-12-02', NULL, NULL, NULL, NULL, 0),
(1430, '720000', '729999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '72', 55, 0, 67, NULL, '2008-12-02', NULL, NULL, NULL, NULL, 0),
(1431, '730000', '739999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '73', 55, 0, 67, NULL, '2008-12-02', NULL, NULL, NULL, NULL, 0),
(1432, '740000', '749999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '74', 55, 0, 67, NULL, '2008-12-02', NULL, NULL, NULL, NULL, 0),
(1433, '750000', '759999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '75', 55, 0, 67, NULL, '2008-12-02', NULL, NULL, NULL, NULL, 0),
(1434, '760000', '769999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '76', 55, 0, 67, NULL, '2008-12-02', NULL, NULL, NULL, NULL, 0),
(1435, '770000', '779999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '77', 55, 0, 67, NULL, '2008-12-02', NULL, NULL, NULL, NULL, 0),
(1436, '780000', '789999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '78', 55, 0, 67, NULL, '2008-12-02', NULL, NULL, NULL, NULL, 0),
(1437, '790000', '799999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '79', 55, 0, 67, NULL, '2008-12-02', NULL, NULL, NULL, NULL, 0),
(1438, '800000', '809999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '80', 55, 0, 67, NULL, '2008-12-02', NULL, NULL, NULL, NULL, 0),
(1439, '770000', '779999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '77', 50, 0, 67, NULL, '2008-12-02', NULL, NULL, NULL, NULL, 0),
(1440, '780000', '789999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '78', 50, 0, 67, NULL, '2008-12-02', NULL, NULL, NULL, NULL, 0),
(1441, '790000', '799999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '79', 50, 0, 67, NULL, '2008-12-02', NULL, NULL, NULL, NULL, 0),
(1442, '800000', '809999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '80', 50, 0, 67, NULL, '2008-12-02', NULL, NULL, NULL, NULL, 0),
(1443, '810000', '819999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '81', 50, 0, 67, NULL, '2008-12-02', NULL, NULL, NULL, NULL, 0),
(1444, '820000', '829999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '82', 50, 0, 67, NULL, '2008-12-02', NULL, NULL, NULL, NULL, 0),
(1445, '830000', '839999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '83', 50, 0, 67, NULL, '2008-12-02', NULL, NULL, NULL, NULL, 0),
(1446, '840000', '849999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '84', 50, 0, 67, NULL, '2008-12-02', NULL, NULL, NULL, NULL, 0),
(1447, '850000', '859999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '85', 50, 0, 67, NULL, '2008-12-02', NULL, NULL, NULL, NULL, 0),
(1448, '860000', '869999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '86', 50, 0, 67, NULL, '2008-12-02', NULL, NULL, NULL, NULL, 0),
(1449, '840000', '849999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '84', 40, 0, 67, NULL, '2008-12-02', NULL, NULL, NULL, NULL, 0),
(1450, '850000', '859999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '85', 40, 0, 67, NULL, '2008-12-02', NULL, NULL, NULL, NULL, 0),
(1451, '860000', '869999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '86', 40, 0, 67, NULL, '2008-12-02', NULL, NULL, NULL, NULL, 0),
(1452, '870000', '879999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '87', 40, 0, 67, NULL, '2008-12-02', NULL, NULL, NULL, NULL, 0),
(1453, '830000', '839999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '83', 90, 0, 67, NULL, '2008-12-02', NULL, NULL, NULL, NULL, 0),
(1454, '840000', '849999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '84', 90, 0, 67, NULL, '2008-12-02', NULL, NULL, NULL, NULL, 0),
(1455, '850000', '859999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '85', 90, 0, 67, NULL, '2008-12-02', NULL, NULL, NULL, NULL, 0),
(1456, '860000', '869999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '86', 90, 0, 67, NULL, '2008-12-02', NULL, NULL, NULL, NULL, 0),
(1457, '870000', '879999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '87', 90, 0, 67, NULL, '2008-12-02', NULL, NULL, NULL, NULL, 0),
(1458, '770000', '779999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '77', 37, 0, 67, NULL, '2008-12-02', NULL, NULL, NULL, NULL, 0),
(1459, '780000', '789999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '78', 37, 0, 67, NULL, '2008-12-02', NULL, NULL, NULL, NULL, 0),
(1460, '790000', '799999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '79', 37, 0, 67, NULL, '2008-12-02', NULL, NULL, NULL, NULL, 0),
(1461, '800000', '809999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '80', 37, 0, 67, NULL, '2008-12-02', NULL, NULL, NULL, NULL, 0),
(1462, '810000', '819999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '81', 37, 0, 67, NULL, '2008-12-02', NULL, NULL, NULL, NULL, 0),
(1463, '820000', '829999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '82', 37, 0, 67, NULL, '2008-12-02', NULL, NULL, NULL, NULL, 0),
(1464, '830000', '839999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '83', 37, 0, 67, NULL, '2008-12-02', NULL, NULL, NULL, NULL, 0),
(1465, '840000', '849999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '84', 37, 0, 67, NULL, '2008-12-02', NULL, NULL, NULL, NULL, 0),
(1466, '850000', '859999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '85', 37, 0, 67, NULL, '2008-12-02', NULL, NULL, NULL, NULL, 0),
(1467, '860000', '869999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '86', 37, 0, 67, NULL, '2008-12-02', NULL, NULL, NULL, NULL, 0),
(1468, '620000', '629999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '62', 38, 0, 67, NULL, '2008-12-02', NULL, NULL, NULL, NULL, 0),
(1469, '690000', '699999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '69', 38, 0, 67, NULL, '2008-12-02', NULL, NULL, NULL, NULL, 0),
(1470, '700000', '709999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '70', 38, 0, 67, NULL, '2008-12-02', NULL, NULL, NULL, NULL, 0),
(1471, '740000', '749999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '74', 38, 0, 67, NULL, '2008-12-02', NULL, NULL, NULL, NULL, 0),
(1472, '750000', '759999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '75', 38, 0, 67, NULL, '2008-12-02', NULL, NULL, NULL, NULL, 0),
(1473, '760000', '769999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '76', 38, 0, 67, NULL, '2008-12-02', NULL, NULL, NULL, NULL, 0),
(1474, '790000', '799999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '79', 38, 0, 67, NULL, '2008-12-02', NULL, NULL, NULL, NULL, 0),
(1475, '820000', '829999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '82', 38, 0, 67, NULL, '2008-12-02', NULL, NULL, NULL, NULL, 0),
(1476, '870000', '879999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '87', 38, 0, 67, NULL, '2008-12-02', NULL, NULL, NULL, NULL, 0),
(1477, '880000', '889999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '88', 38, 0, 67, NULL, '2008-12-02', NULL, NULL, NULL, NULL, 0),
(1478, '830000', '839999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '83', 41, 0, 67, NULL, '2008-12-02', NULL, NULL, NULL, NULL, 0),
(1479, '840000', '849999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '84', 41, 0, 67, NULL, '2008-12-02', NULL, NULL, NULL, NULL, 0),
(1480, '850000', '859999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '85', 41, 0, 67, NULL, '2008-12-02', NULL, NULL, NULL, NULL, 0),
(1481, '860000', '869999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '86', 41, 0, 67, NULL, '2008-12-02', NULL, NULL, NULL, NULL, 0),
(1482, '870000', '879999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '87', 41, 0, 67, NULL, '2008-12-02', NULL, NULL, NULL, NULL, 0),
(1483, '210000', '219999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '21', 39, 0, 67, NULL, '2008-12-02', NULL, NULL, NULL, NULL, 0),
(1484, '220000', '229999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '22', 39, 0, 67, NULL, '2008-12-02', NULL, NULL, NULL, NULL, 0),
(1485, '310000', '319999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '31', 39, 0, 67, NULL, '2008-12-02', NULL, NULL, NULL, NULL, 0),
(1486, '340000', '349999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '34', 39, 0, 67, NULL, '2008-12-02', NULL, NULL, NULL, NULL, 0),
(1487, '370000', '379999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '37', 39, 0, 67, NULL, '2008-12-02', NULL, NULL, NULL, NULL, 0),
(1488, '380000', '389999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '38', 39, 0, 67, NULL, '2008-12-02', NULL, NULL, NULL, NULL, 0),
(1489, '390000', '399999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '39', 39, 0, 67, NULL, '2008-12-02', NULL, NULL, NULL, NULL, 0),
(1490, '530000', '539999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '53', 39, 0, 67, NULL, '2008-12-02', NULL, NULL, NULL, NULL, 0),
(1491, '540000', '549999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '54', 39, 0, 67, NULL, '2008-12-02', NULL, NULL, NULL, NULL, 0),
(1492, '560000', '569999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '56', 39, 0, 67, NULL, '2008-12-02', NULL, NULL, NULL, NULL, 0),
(1493, '850000', '859999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '85', 93, 0, 67, NULL, '2008-12-02', NULL, NULL, NULL, NULL, 0),
(1494, '860000', '869999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '86', 93, 0, 67, NULL, '2008-12-02', NULL, NULL, NULL, NULL, 0),
(1495, '870000', '879999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '87', 93, 0, 67, NULL, '2008-12-02', NULL, NULL, NULL, NULL, 0),
(1496, '880000', '889999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '88', 93, 0, 67, NULL, '2008-12-02', NULL, NULL, NULL, NULL, 0),
(1497, '890000', '899999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '89', 93, 0, 67, NULL, '2008-12-02', NULL, NULL, NULL, NULL, 0),
(1498, '850000', '859999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '85', 44, 0, 67, NULL, '2008-12-02', NULL, NULL, NULL, NULL, 0),
(1499, '860000', '869999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '86', 44, 0, 67, NULL, '2008-12-02', NULL, NULL, NULL, NULL, 0),
(1500, '870000', '879999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '87', 44, 0, 67, NULL, '2008-12-02', NULL, NULL, NULL, NULL, 0),
(1501, '880000', '889999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '88', 44, 0, 67, NULL, '2008-12-02', NULL, NULL, NULL, NULL, 0),
(1502, '890000', '899999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '89', 44, 0, 67, NULL, '2008-12-02', NULL, NULL, NULL, NULL, 0),
(1503, '0000000', '1999999', 21, 3, NULL, NULL, NULL, NULL, '2018-12-05 15:39:33', NULL, '0819', 99, 0, 0, NULL, '', 0, 0, 0, NULL, 0),
(1504, '8000000', '8999999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '0702', 33, 0, 67, NULL, '2007-10-22', NULL, NULL, NULL, NULL, 0),
(1505, '9000000', '9999999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '0702', 33, 0, 67, NULL, '2008-03-04', NULL, NULL, NULL, NULL, 0),
(1506, '2220000', '2229999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '222', 36, 0, 68, NULL, '2003-06-10', NULL, NULL, NULL, NULL, 0),
(1507, '220000', '224999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '22', 41, 0, 68, NULL, '2003-06-10', NULL, NULL, NULL, NULL, 0),
(1508, '220000', '224999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '22', 37, 0, 68, NULL, '2003-06-10', NULL, NULL, NULL, NULL, 0),
(1509, '220000', '229999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '22', 38, 0, 68, NULL, '2003-06-10', NULL, NULL, NULL, NULL, 0);
INSERT INTO `numbers` (`id`, `starting_number`, `ending_number`, `number_type_id`, `number_status_id`, `application_id`, `created_by`, `last_updated_by`, `created_at`, `updated_at`, `deleted_at`, `access_code`, `area_id`, `share`, `company_id`, `user_id`, `date_assigned`, `application_number_id`, `application_short_id`, `application_ispc_id`, `valid_date`, `shared`) VALUES
(1510, '200000', '200999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '20', 82, 0, 68, NULL, '2003-06-10', NULL, NULL, NULL, NULL, 0),
(1511, '500000', '509999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '50', 57, 0, 74, NULL, '2004-04-20', NULL, NULL, NULL, NULL, 0),
(1512, '7100000', '7101999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '710', 1, 0, 69, NULL, '2006-10-26', NULL, NULL, NULL, NULL, 0),
(1513, '7110000', '7119999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '711', 1, 0, 69, NULL, '2013-07-11', NULL, NULL, NULL, NULL, 0),
(1514, '7120000', '7129999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '712', 1, 0, 69, NULL, '2013-07-11', NULL, NULL, NULL, NULL, 0),
(1515, '7130000', '7139999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '713', 1, 0, 69, NULL, '2013-07-11', NULL, NULL, NULL, NULL, 0),
(1516, '7140000', '7149999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '714', 1, 0, 69, NULL, '2013-07-11', NULL, NULL, NULL, NULL, 0),
(1517, '7150000', '7159999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '715', 1, 0, 69, NULL, '2013-07-11', NULL, NULL, NULL, NULL, 0),
(1518, '410000', '410499', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '41', 56, 0, 70, NULL, '1999-02-20', NULL, NULL, NULL, NULL, 0),
(1519, '4100000', '4100999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '410', 36, 0, 70, NULL, '1999-02-20', NULL, NULL, NULL, NULL, 0),
(1520, '410000', '410499', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '41', 50, 0, 70, NULL, '1999-02-20', NULL, NULL, NULL, NULL, 0),
(1521, '410000', '410999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '41', 37, 0, 70, NULL, '1999-02-20', NULL, NULL, NULL, NULL, 0),
(1522, '410000', '410999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '41', 38, 0, 70, NULL, '1999-02-20', NULL, NULL, NULL, NULL, 0),
(1523, '4100000', '4102999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '410', 1, 0, 70, NULL, '1999-02-20', NULL, NULL, NULL, NULL, 0),
(1524, '410000', '410999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '41', 55, 0, 70, NULL, '1999-02-20', NULL, NULL, NULL, NULL, 0),
(1525, '410000', '410999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '41', 39, 0, 70, NULL, '1999-02-20', NULL, NULL, NULL, NULL, 0),
(1526, '410000', '410999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '41', 40, 0, 70, NULL, '1999-02-20', NULL, NULL, NULL, NULL, 0),
(1527, '8000000', '8009999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '800', 1, 0, 71, NULL, '2001-02-20', NULL, NULL, NULL, NULL, 0),
(1528, '255000', '259999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '25', 39, 0, 72, NULL, '2013-12-05', NULL, NULL, NULL, NULL, 0),
(1529, '630000', '630999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '63', 82, 0, 73, NULL, '2012-10-20', NULL, NULL, NULL, NULL, 0),
(1530, '5990000', '5999999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '599', 1, 0, 75, NULL, '2004-06-07', NULL, NULL, NULL, NULL, 0),
(1531, '2900000', '2909999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '290', 1, 0, 76, NULL, '1999-06-16', NULL, NULL, NULL, NULL, 0),
(1532, '2950000', '2959999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '295', 1, 0, 76, NULL, '2004-03-12', NULL, NULL, NULL, NULL, 0),
(1533, '3420000', '3424999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '342', 1, 0, 116, NULL, '1997-09-17', NULL, NULL, NULL, NULL, 0),
(1534, '4900000', '4904999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '490', 1, 0, 116, NULL, '1998-06-01', NULL, NULL, NULL, NULL, 0),
(1535, '4530000', '4539999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '453', 1, 0, 116, NULL, '2005-10-05', NULL, NULL, NULL, NULL, 0),
(1536, '4540000', '4549999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '454', 1, 0, 116, NULL, '2005-10-05', NULL, NULL, NULL, NULL, 0),
(1537, '290000', '299999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '29', 56, 0, 5, NULL, '2008-07-18', NULL, NULL, NULL, NULL, 0),
(1538, '290000', '299999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '29', 60, 0, 5, NULL, '2008-07-18', NULL, NULL, NULL, NULL, 0),
(1539, '290000', '299999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '29', 35, 0, 5, NULL, '2008-07-18', NULL, NULL, NULL, NULL, 0),
(1540, '2910000', '2919999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '291', 36, 0, 5, NULL, '2008-07-18', NULL, NULL, NULL, NULL, 0),
(1541, '290000', '299999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '29', 62, 0, 5, NULL, '2008-07-18', NULL, NULL, NULL, NULL, 0),
(1542, '290000', '299999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '29', 49, 0, 5, NULL, '2008-07-18', NULL, NULL, NULL, NULL, 0),
(1543, '290000', '299999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '29', 70, 0, 5, NULL, '2008-07-18', NULL, NULL, NULL, NULL, 0),
(1544, '290000', '299999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '29', 50, 0, 5, NULL, '2008-07-18', NULL, NULL, NULL, NULL, 0),
(1545, '290000', '299999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '29', 44, 0, 5, NULL, '2008-07-18', NULL, NULL, NULL, NULL, 0),
(1546, '290000', '299999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '29', 73, 0, 5, NULL, '2008-07-18', NULL, NULL, NULL, NULL, 0),
(1547, '2910000', '2919999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '291', 47, 0, 5, NULL, '2008-07-18', NULL, NULL, NULL, NULL, 0),
(1548, '290000', '299999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '29', 46, 0, 5, NULL, '2008-07-18', NULL, NULL, NULL, NULL, 0),
(1549, '290000', '299999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '29', 41, 0, 5, NULL, '2008-07-18', NULL, NULL, NULL, NULL, 0),
(1550, '290000', '299999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '29', 37, 0, 5, NULL, '2008-07-18', NULL, NULL, NULL, NULL, 0),
(1551, '430000', '439999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '43', 38, 0, 5, NULL, '2008-07-18', NULL, NULL, NULL, NULL, 0),
(1552, '290000', '299999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '29', 80, 0, 5, NULL, '2008-07-18', NULL, NULL, NULL, NULL, 0),
(1553, '2910000', '2919999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '291', 1, 0, 5, NULL, '2008-07-18', NULL, NULL, NULL, NULL, 0),
(1554, '2920000', '2929999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '292', 1, 0, 5, NULL, '2008-07-18', NULL, NULL, NULL, NULL, 0),
(1555, '290000', '299999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '29', 45, 0, 5, NULL, '2008-07-18', NULL, NULL, NULL, NULL, 0),
(1556, '07025000000', '07025999999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '0702', 33, 0, 5, NULL, '2007-07-04', NULL, NULL, NULL, NULL, 0),
(1557, '07026000000', '07026999999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '0702', 33, 0, 5, NULL, '2007-07-04', NULL, NULL, NULL, NULL, 0),
(1558, '07040000000', '07049999999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '0704', 100, 0, 5, NULL, '2008-07-18', NULL, NULL, NULL, NULL, 0),
(1559, '280000', '289999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '28', 55, 0, 5, NULL, '2008-07-18', NULL, NULL, NULL, NULL, 0),
(1560, '430000', '439999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '43', 86, 0, 5, NULL, '2008-07-18', NULL, NULL, NULL, NULL, 0),
(1561, '300000', '309999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '30', 39, 0, 5, NULL, '2008-07-18', NULL, NULL, NULL, NULL, 0),
(1562, '290000', '299999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '29', 92, 0, 5, NULL, '2008-07-18', NULL, NULL, NULL, NULL, 0),
(1563, '290000', '299999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '29', 93, 0, 5, NULL, '2008-07-18', NULL, NULL, NULL, NULL, 0),
(1564, '290000', '299999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '29', 40, 0, 5, NULL, '2009-10-27', NULL, NULL, NULL, NULL, 0),
(1565, '290000', '299999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '29', 54, 0, 5, NULL, '2008-07-18', NULL, NULL, NULL, NULL, 0),
(1566, '2920000', '2929999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '292', 36, 0, 5, NULL, '2015-03-20', NULL, NULL, NULL, NULL, 0),
(1567, '2930000', '2939999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '293', 1, 0, 5, NULL, '2015-03-20', NULL, NULL, NULL, NULL, 0),
(1568, '440000', '449999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '44', 56, 0, 115, NULL, '1997-08-26', NULL, NULL, NULL, NULL, 0),
(1569, '550000', '559999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '55', 56, 0, 115, NULL, '2001-02-07', NULL, NULL, NULL, NULL, 0),
(1570, '880000', '889999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '88', 70, 0, 115, NULL, '2001-05-04', NULL, NULL, NULL, NULL, 0),
(1571, '770000', '779999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '77', 44, 0, 115, NULL, '2001-05-04', NULL, NULL, NULL, NULL, 0),
(1572, '660000', '669999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '66', 44, 0, 115, NULL, '2007-05-28', NULL, NULL, NULL, NULL, 0),
(1573, '660000', '669999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '66', 73, 0, 115, NULL, '2007-05-28', NULL, NULL, NULL, NULL, 0),
(1574, '660000', '669999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '66', 55, 0, 115, NULL, '2001-02-07', NULL, NULL, NULL, NULL, 0),
(1575, '660000', '669999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '66', 86, 0, 115, NULL, '2007-05-28', NULL, NULL, NULL, NULL, 0),
(1576, '550000', '559999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '55', 39, 0, 115, NULL, '2001-02-07', NULL, NULL, NULL, NULL, 0),
(1577, '660000', '669999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '66', 39, 0, 115, NULL, '2007-05-28', NULL, NULL, NULL, NULL, 0),
(1578, '660000', '669999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '66', 92, 0, 115, NULL, '2007-05-28', NULL, NULL, NULL, NULL, 0),
(1579, '660000', '669999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '66', 93, 0, 115, NULL, '2007-05-28', NULL, NULL, NULL, NULL, 0),
(1580, '2900000', '2900999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '290', 36, 0, 115, NULL, '1999-06-16', NULL, NULL, NULL, NULL, 0),
(1581, '2900000', '2900499', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '290', 47, 0, 115, NULL, '1999-06-16', NULL, NULL, NULL, NULL, 0),
(1582, '290000', '290499', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '29', 38, 0, 115, NULL, '1999-06-16', NULL, NULL, NULL, NULL, 0),
(1583, '290000', '290999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '29', 55, 0, 115, NULL, '1999-06-16', NULL, NULL, NULL, NULL, 0),
(1584, '290000', '290999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '29', 39, 0, 115, NULL, '1999-06-16', NULL, NULL, NULL, NULL, 0),
(1585, '8600000', '8601999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '860', 36, 0, 77, NULL, '2005-10-12', NULL, NULL, NULL, NULL, 0),
(1586, '7000000', '7009999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '700', 1, 0, 78, NULL, '2013-11-07', NULL, NULL, NULL, NULL, 0),
(1587, '7000000', '7004999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '700', 36, 0, 78, NULL, '2013-11-07', NULL, NULL, NULL, NULL, 0),
(1588, '700000', '704999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '70', 39, 0, 78, NULL, '2013-07-11', NULL, NULL, NULL, NULL, 0),
(1589, '2200000', '2209999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '220', 36, 0, 79, NULL, '2008-12-22', NULL, NULL, NULL, NULL, 0),
(1590, '5780000', '5780999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '578', 1, 0, 80, NULL, '2006-07-02', NULL, NULL, NULL, NULL, 0),
(1591, '2550000', '2559999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '255', 1, 0, 81, NULL, '2004-03-29', NULL, NULL, NULL, NULL, 0),
(1592, '200000', '209999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '20', 73, 0, 82, NULL, '2003-12-05', NULL, NULL, NULL, NULL, 0),
(1593, '6260000', '6269999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '626', 1, 0, 83, NULL, '2006-04-12', NULL, NULL, NULL, NULL, 0),
(1594, '200000', '204999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '20', 49, 0, 84, NULL, '2008-10-17', NULL, NULL, NULL, NULL, 0),
(1595, '2220000', '2229999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '222', 1, 0, 85, NULL, '2000-04-12', NULL, NULL, NULL, NULL, 0),
(1596, '600000', '604999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '60', 35, 0, 86, NULL, '2006-03-30', NULL, NULL, NULL, NULL, 0),
(1597, '3430000', '3439999', 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, '343', 1, 0, 87, NULL, '2008-03-17', NULL, NULL, NULL, NULL, 0),
(1598, '05010000000', '05019999999', 10, 3, NULL, 2, 2, '2017-09-14 14:45:58', '2017-10-13 15:00:15', NULL, '0501', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(1599, '05000000000', '05099999999', 10, 3, NULL, 221, 221, '2017-09-14 14:46:07', '2017-10-05 15:27:21', NULL, '0500', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(1600, '6-041', '6-041', 20, 1, NULL, 2, 2, '2017-09-18 19:44:40', '2017-09-18 19:44:40', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(1601, '35360', '35360', 7, 3, NULL, 2, 2, '2017-09-29 11:05:44', '2017-10-13 15:06:10', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(1602, '57810', '57810', 7, 3, NULL, 2, 2, '2017-10-04 19:59:49', '2017-10-17 12:01:17', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(1603, '579', '579', 7, 3, NULL, 2, 2, '2017-10-04 20:15:45', '2018-01-28 13:57:14', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(1604, '30012', '30012', 7, 1, NULL, 2, 2, '2017-10-05 09:05:40', '2017-10-05 09:05:40', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(1605, '13455', '13455', 7, 1, NULL, 2, 2, '2017-10-05 17:51:57', '2017-10-17 12:12:10', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(1606, '06010000000', '06019999999', 10, 3, NULL, 2, 2, '2017-10-17 07:25:03', '2017-10-17 10:40:50', NULL, '0601', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(1607, '06020000000', '06029999999', 10, 3, NULL, 2, 2, '2017-10-17 07:27:09', '2017-10-17 13:45:41', NULL, '0602', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(1608, '6090000', '6099999', 21, 3, NULL, 2, 2, '2017-10-17 07:28:32', '2017-11-07 16:05:35', NULL, '609', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(1609, '12345', '12345', 7, 1, NULL, 2, 2, '2017-10-17 07:29:07', '2017-10-17 07:29:07', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(1610, '123', '123', 7, 1, NULL, 2, 2, '2017-10-17 07:29:43', '2017-10-17 07:29:43', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(1611, '06020000000', '06029999999', 10, 1, NULL, 2, 2, '2018-01-28 15:14:14', '2018-01-28 15:14:14', NULL, '0602', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(1612, '600', '600', 7, 1, NULL, 2, 2, '2018-01-28 15:27:23', '2018-01-28 15:34:53', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `number_exceptions`
--

CREATE TABLE `number_exceptions` (
  `id` int(10) UNSIGNED NOT NULL,
  `number_id` int(11) NOT NULL,
  `number_status_id` int(11) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `last_updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `number_logs`
--

CREATE TABLE `number_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `number_id` int(11) NOT NULL,
  `starting_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ending_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `number_status_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `number_type_id` int(11) DEFAULT NULL,
  `number_type_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `number_logs`
--

INSERT INTO `number_logs` (`id`, `number_id`, `starting_number`, `ending_number`, `number_status_id`, `status_name`, `company_id`, `user_id`, `created_at`, `updated_at`, `deleted_at`, `number_type_id`, `number_type_name`) VALUES
(1, 33, '33', '33', '1', '', 2, 2, '2017-08-15 18:29:22', '2017-08-15 18:29:22', NULL, NULL, NULL),
(2, 32, '32', '32', '1', '', 2, 2, '2017-08-15 18:33:19', '2017-08-15 18:33:19', NULL, NULL, NULL),
(3, 35, '35', '35', '1', '', 2, 2, '2017-08-15 18:35:38', '2017-08-15 18:35:38', NULL, NULL, NULL),
(4, 35, '35', '35', '1', '', 2, 2, '2017-08-15 18:36:36', '2017-08-15 18:36:36', NULL, NULL, NULL),
(5, 35, '35', '35', '1', '', 2, 2, '2017-08-15 18:37:26', '2017-08-15 18:37:26', NULL, NULL, NULL),
(6, 35, '35', '35', '1', '', 2, 2, '2017-08-15 18:38:49', '2017-08-15 18:38:49', NULL, NULL, NULL),
(7, 31, '31', '31', '1', '', 2, 2, '2017-08-23 12:08:51', '2017-08-23 12:08:51', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `number_statuses`
--

CREATE TABLE `number_statuses` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `last_updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `assign` tinyint(1) NOT NULL DEFAULT '0',
  `system` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `number_statuses`
--

INSERT INTO `number_statuses` (`id`, `name`, `created_by`, `last_updated_by`, `created_at`, `updated_at`, `deleted_at`, `assign`, `system`) VALUES
(1, 'ASSIGNABLE', 2, 2, '2017-05-11 17:41:06', '2017-05-30 12:07:01', NULL, 1, 1),
(2, 'ASSIGNED', 2, 2, '2017-05-11 17:41:42', '2017-05-11 17:41:42', NULL, 0, 1),
(3, 'RETAINED', 2, 2, '2017-05-11 17:42:04', '2017-05-11 17:42:04', NULL, 0, 1),
(4, 'UNUSABLE', 2, 2, '2017-05-11 17:42:21', '2017-05-11 17:42:21', NULL, 0, 0),
(5, 'INTERESTS', 2, 2, '2017-05-11 17:42:41', '2017-05-11 17:42:41', NULL, 0, 0),
(6, 'EXPECTED TO BECOME ASSIGNABLE', 2, 2, '2017-05-11 17:43:19', '2017-05-11 17:43:19', NULL, 0, 0),
(7, 'Destroyables', 2, 2, '2017-05-15 12:59:27', '2017-05-15 12:59:55', '2017-05-15 12:59:55', 0, 0),
(8, 'Deleter', 2, 2, '2017-05-18 11:59:14', '2017-05-18 12:00:22', '2017-05-18 12:00:22', 0, 0),
(9, 'ASSIGNABLE', 2, 2, '2017-05-18 12:00:34', '2017-05-18 12:01:02', '2017-05-18 12:01:02', 0, 0),
(10, 'ASSIGN', 2, 2, '2017-05-18 12:44:26', '2017-05-18 12:45:01', '2017-05-18 12:45:01', 0, 0),
(11, 'Testable', 2, 2, '2017-05-30 12:01:21', '2017-05-30 12:06:52', '2017-05-30 12:06:52', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `number_types`
--

CREATE TABLE `number_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `last_updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `min_digit` int(11) DEFAULT NULL,
  `max_digit` int(11) DEFAULT NULL,
  `fees` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `show_area_code` int(11) NOT NULL DEFAULT '1',
  `show_access_code` int(11) NOT NULL DEFAULT '1',
  `show_range` int(11) NOT NULL DEFAULT '1',
  `system` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `number_types`
--

INSERT INTO `number_types` (`id`, `name`, `created_by`, `last_updated_by`, `created_at`, `updated_at`, `deleted_at`, `min_digit`, `max_digit`, `fees`, `show_area_code`, `show_access_code`, `show_range`, `system`) VALUES
(7, 'Short Codes', 2, 2, '2017-05-10 16:05:41', '2017-09-18 16:20:00', NULL, 3, 5, NULL, 0, 0, 0, 1),
(9, 'Toll-Free Number', 6, 2, '2017-05-10 16:27:01', '2017-09-18 16:15:55', NULL, 7, 7, NULL, 0, 1, 0, 0),
(10, 'National Numbers', 2, 2, '2017-05-11 15:00:55', '2017-09-18 19:10:56', NULL, 10, 12, '100', 0, 1, 1, 0),
(11, 'Special Numbers', 2, 2, '2017-05-11 15:56:13', '2017-05-15 13:11:34', '2017-05-15 13:11:34', NULL, NULL, NULL, 1, 1, 1, 0),
(12, '', 2, 2, '2017-05-12 09:59:56', '2017-05-12 11:12:42', '2017-05-12 11:12:42', NULL, NULL, NULL, 1, 1, 1, 0),
(13, '', 2, 2, '2017-05-12 10:22:00', '2017-05-12 11:12:53', '2017-05-12 11:12:53', NULL, NULL, NULL, 1, 1, 1, 0),
(14, '', 2, 2, '2017-05-12 11:31:08', '2017-05-12 11:31:48', '2017-05-12 11:31:48', NULL, NULL, NULL, 1, 1, 1, 0),
(15, '', 2, 2, '2017-05-12 11:31:55', '2017-05-12 11:33:16', '2017-05-12 11:33:16', NULL, NULL, NULL, 1, 1, 1, 0),
(16, 'Vanity Numbers', 2, 2, '2017-05-12 11:33:24', '2017-09-18 16:20:39', NULL, 7, 7, '500000', 0, 1, 0, 0),
(17, 'Short Codes', 2, 2, '2017-05-12 15:38:37', '2017-05-15 13:11:22', '2017-05-15 13:11:22', NULL, NULL, NULL, 1, 1, 1, 0),
(18, 'No numbers', 2, 2, '2017-05-15 12:50:18', '2017-05-15 12:58:49', '2017-05-15 12:58:49', NULL, NULL, NULL, 1, 1, 1, 0),
(19, 'new typed', 2, 2, '2017-05-18 11:58:04', '2017-05-18 11:58:29', '2017-05-18 11:58:29', NULL, NULL, NULL, 1, 1, 1, 0),
(20, 'International Signalling Point Code (ISPC)', 2, 2, '2017-06-14 17:05:28', '2017-09-18 16:21:14', NULL, 2, 5, NULL, 0, 0, 0, 1),
(21, 'Geographical Numbers', 2, 2, '2017-07-18 14:04:39', '2017-09-18 16:27:08', NULL, 6, 7, NULL, 0, 1, 1, 0),
(24, 'Land numbers', 2, 2, '2017-09-18 14:48:47', '2017-09-18 16:23:11', '2017-09-18 16:23:11', 5, 5, '2', 1, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `number_type_renewal_stage`
--

CREATE TABLE `number_type_renewal_stage` (
  `id` int(10) UNSIGNED NOT NULL,
  `number_type_id` int(11) DEFAULT NULL,
  `approval_stage_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `number_type_renewal_stage`
--

INSERT INTO `number_type_renewal_stage` (`id`, `number_type_id`, `approval_stage_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 7, NULL, NULL, NULL),
(2, 2, 7, NULL, NULL, NULL),
(3, 3, 7, NULL, NULL, NULL),
(4, 4, 7, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `number_type_service_stage`
--

CREATE TABLE `number_type_service_stage` (
  `id` int(10) UNSIGNED NOT NULL,
  `number_type_id` int(11) DEFAULT NULL,
  `approval_stage_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `number_type_service_stage`
--

INSERT INTO `number_type_service_stage` (`id`, `number_type_id`, `approval_stage_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 7, NULL, NULL, NULL),
(2, 2, 7, NULL, NULL, NULL),
(3, 3, 7, NULL, NULL, NULL),
(4, 4, 7, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `old_permissions`
--

CREATE TABLE `old_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `model` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` int(11) NOT NULL DEFAULT '1',
  `created_by` int(11) DEFAULT NULL,
  `last_updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `old_permission_role`
--

CREATE TABLE `old_permission_role` (
  `id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `old_permission_user`
--

CREATE TABLE `old_permission_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `old_roles`
--

CREATE TABLE `old_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` int(11) NOT NULL DEFAULT '1',
  `created_by` int(11) DEFAULT NULL,
  `last_updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `old_role_user`
--

CREATE TABLE `old_role_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `amount` double(12,2) NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `balance` double(12,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `bill_id` int(11) NOT NULL,
  `orderID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payerName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payerEmail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payerPhone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `responseurl` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hash` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paymenttype` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `message` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paymentDate` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company_id` int(11) NOT NULL,
  `rrr` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `transactiontime` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tracking_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `api_paymentUrl` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `api_paymentBankName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `api_paymentBankBranch` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `api_paymentBankCountry` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `api_applicationOrderId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `api_tellerNo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `api_receiptNo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `api_invoiceNo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `api_status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `api_rrr` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `api_receiptPath` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `api_receiptUploadedBy` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `api_transactionId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `api_dateInitialized` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `api_datePaid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `api_responseCode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `api_amount` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `api_paymentType` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `api_createdBy` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `api_payment_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'local'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `amount`, `invoice_id`, `user_id`, `balance`, `created_at`, `updated_at`, `deleted_at`, `bill_id`, `orderID`, `payerName`, `payerEmail`, `payerPhone`, `responseurl`, `hash`, `paymenttype`, `message`, `status`, `paymentDate`, `company_id`, `rrr`, `transactiontime`, `tracking_no`, `api_paymentUrl`, `api_paymentBankName`, `api_paymentBankBranch`, `api_paymentBankCountry`, `api_applicationOrderId`, `api_tellerNo`, `api_receiptNo`, `api_invoiceNo`, `api_status`, `api_rrr`, `api_receiptPath`, `api_receiptUploadedBy`, `api_transactionId`, `api_dateInitialized`, `api_datePaid`, `api_responseCode`, `api_amount`, `api_paymentType`, `api_createdBy`, `api_payment_type`) VALUES
(1, 472500.00, 5, 1, 472500.00, '2018-12-04 07:09:29', '2018-12-04 07:09:29', NULL, 57, 'NMS-INV-0000000005', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 'http://apps.showcase.com.ng/#/payment/instruction/5d2ba241-1905-4b0c-8824-e713346f2e57', NULL, NULL, NULL, 'NMS-INV-0000000005', NULL, NULL, NULL, 'PENDING', NULL, NULL, NULL, '5d2ba241-1905-4b0c-8824-e713346f2e57', '2018-11-28T13:57:41.262+0000', NULL, NULL, '472500', 'LOCAL', 'd401b410-028c-47b9-a8a9-bee16bdcdefd', 'local'),
(2, 840000.00, 6, 1, 840000.00, '2018-12-04 07:12:06', '2018-12-05 15:56:43', NULL, 58, 'NMS-INV-0000000006', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NMS-INV-0000000006', NULL, NULL, 'NMS-112', 'CANCELLED', NULL, NULL, NULL, '83fd0a25-7b55-4be2-bb48-a889ee9272cb', '2018-12-03T13:58:24.812+0000', NULL, NULL, '840000', 'LOCAL', 'd401b410-028c-47b9-a8a9-bee16bdcdefd', 'local'),
(3, 700000.00, 7, 1, 700000.00, '2018-12-14 16:41:08', '2018-12-18 08:41:21', NULL, 59, 'NMS-INV-0000000007', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 'http://apps.showcase.com.ng/#/payment/instruction/5041b383-c3c2-49be-b2a3-321c3f80b3ca', NULL, NULL, NULL, 'NMS-INV-0000000007', NULL, NULL, '12345', 'PENDING', NULL, NULL, NULL, '5041b383-c3c2-49be-b2a3-321c3f80b3ca', '2018-12-14T16:40:40.903+0000', NULL, NULL, '700000', 'LOCAL', 'd401b410-028c-47b9-a8a9-bee16bdcdefd', 'local'),
(4, 500000.00, 8, 1, 500000.00, '2018-12-18 09:31:51', '2018-12-18 09:34:40', NULL, 60, 'NMS-INV-0000000008', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 'http://apps.showcase.com.ng/#/payment/instruction/fa6e1a1c-fe43-43b8-b3db-14daa0199c36', NULL, NULL, NULL, 'NMS-INV-0000000008', NULL, NULL, NULL, 'PENDING', NULL, NULL, NULL, 'fa6e1a1c-fe43-43b8-b3db-14daa0199c36', '2018-12-18T09:30:51.962+0000', NULL, NULL, '500000', 'LOCAL', 'd401b410-028c-47b9-a8a9-bee16bdcdefd', 'local'),
(5, 350000.00, 9, 1, 0.00, '2018-12-18 09:47:53', '2018-12-18 15:52:10', NULL, 61, 'NMS-INV-0000000009', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 'GTBank', 'Jabi', 'Nigeria', 'NMS-INV-0000000009', 'TEL: 12345', NULL, '223', 'COMPLETED', NULL, '2018-12\\wYp6BzuC4z______NCC_Integration_Platfrom_API_documentation.pdf', 'molcom', '6af8ee66-0c2c-425a-8ef7-2e02f50ed6b4', '2018-12-18T09:47:17.875+0000', '2018-12-18T15:04:10.862+0000', NULL, '350000', 'FOREIGN', 'd401b410-028c-47b9-a8a9-bee16bdcdefd', 'local'),
(6, 840000.00, 10, 1, 840000.00, '2019-02-25 08:27:58', '2019-02-25 09:36:17', NULL, 62, 'NMS-INV-0000000010', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 'http://apps.showcase.com.ng/#/payment/instruction/39d011f1-faec-406a-ad88-da6cab41dcfd', NULL, NULL, NULL, 'NMS-INV-0000000010', NULL, NULL, '1234M', 'PENDING', NULL, NULL, NULL, '39d011f1-faec-406a-ad88-da6cab41dcfd', '2019-02-25T08:27:49.133+0000', NULL, NULL, '840000', 'LOCAL', 'd401b410-028c-47b9-a8a9-bee16bdcdefd', 'local'),
(7, 880000.00, 11, 1, 0.00, '2019-02-25 10:47:22', '2019-02-25 11:39:35', NULL, 63, 'NMS-INV-0000000011', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 'GTBank', 'CBD', 'Nigeria', 'NMS-INV-0000000011', '09090', NULL, '234M', 'COMPLETED', NULL, '2019-02\\DGcVEnnFao______NCC_Integration_Platfrom_API_documentation.pdf', 'molcom', '9666f687-fca5-400d-abb2-a554ddd289be', '2019-02-25T10:47:12.368+0000', '2019-02-25T11:04:48.037+0000', NULL, '880000', 'FOREIGN', 'd401b410-028c-47b9-a8a9-bee16bdcdefd', 'local');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'edit articles', 'web', '2017-08-15 19:28:35', '2017-08-15 19:28:35'),
(2, 'add.client.user', 'web', '2017-08-15 19:47:59', '2017-08-15 19:47:59'),
(3, 'edit.client.user', 'web', '2017-08-16 10:37:28', '2017-08-16 10:37:28'),
(4, 'delete.client.user', 'web', '2017-08-16 10:40:41', '2017-08-16 10:40:41'),
(5, 'edit.client.user.license', 'web', '2017-08-16 10:43:19', '2017-08-16 10:43:19'),
(6, 'add.department', 'web', '2017-08-16 10:45:46', '2017-08-16 10:45:46'),
(7, 'view.department', 'web', '2017-08-16 10:48:45', '2017-08-16 10:48:45'),
(8, 'edit.department', 'web', '2017-08-16 10:49:51', '2017-08-16 10:49:51'),
(9, 'delete.department', 'web', '2017-08-16 10:50:26', '2017-08-16 10:50:26'),
(10, 'export.department', 'web', '2017-08-16 10:53:36', '2017-08-16 10:53:36'),
(11, 'add.role', 'web', '2017-08-16 10:56:14', '2017-08-16 10:56:14'),
(12, 'view.role', 'web', '2017-08-16 10:58:24', '2017-08-16 10:58:24'),
(13, 'edit.role', 'web', '2017-08-16 10:59:20', '2017-08-16 10:59:20'),
(14, 'delete.role', 'web', '2017-08-16 11:00:16', '2017-08-16 11:00:16'),
(15, 'export.role', 'web', '2017-08-16 11:01:04', '2017-08-16 11:01:04'),
(16, 'search.numberapplication', 'web', '2017-08-16 11:09:20', '2017-08-16 11:09:20'),
(17, 'search.numberapplication.trackingnumber', 'web', '2017-08-16 11:10:42', '2017-08-16 11:10:42'),
(18, 'export.numberapplication', 'web', '2017-08-16 11:11:59', '2017-08-16 11:11:59'),
(19, 'approvalform.numberapplication', 'web', '2017-08-16 11:14:33', '2017-08-16 11:14:33'),
(20, 'view.numberapplication', 'web', '2017-08-16 11:15:23', '2017-08-16 11:15:23'),
(21, 'print.numberapplication', 'web', '2017-08-16 11:16:55', '2017-08-16 11:16:55'),
(22, 'search.shortcode', 'web', '2017-08-16 11:26:07', '2017-08-16 11:26:07'),
(23, 'search.shortcode.trackingnumber', 'web', '2017-08-16 11:27:09', '2017-08-16 11:27:09'),
(24, 'export.shortcode', 'web', '2017-08-16 11:28:55', '2017-08-16 11:28:55'),
(25, 'bill.numberapplication', 'web', '2017-08-16 11:29:43', '2017-08-16 11:29:43'),
(26, 'bill.shortcode', 'web', '2017-08-16 11:30:19', '2017-08-16 11:30:19'),
(27, 'approvalform.shortcode', 'web', '2017-08-16 11:30:53', '2017-08-16 11:30:53'),
(28, 'view.shortcode', 'web', '2017-08-16 11:31:52', '2017-08-16 11:31:52'),
(29, 'print.shortcode', 'web', '2017-08-16 11:34:12', '2017-08-16 11:34:12'),
(30, 'search.ispc', 'web', '2017-08-16 11:35:07', '2017-08-16 11:35:07'),
(31, 'search.ispc.trackingnumber', 'web', '2017-08-16 11:37:07', '2017-08-16 11:37:07'),
(32, 'export.ispc', 'web', '2017-08-16 11:37:32', '2017-08-16 11:37:32'),
(33, 'bill.ispc', 'web', '2017-08-16 11:38:25', '2017-08-16 11:38:25'),
(34, 'approvalform.ispc', 'web', '2017-08-16 11:40:04', '2017-08-16 11:40:04'),
(35, 'view.ispc', 'web', '2017-08-16 11:40:26', '2017-08-16 11:40:26'),
(36, 'print.ispc', 'web', '2017-08-16 11:40:43', '2017-08-16 11:40:43'),
(37, 'add.application.status', 'web', '2017-08-16 11:41:43', '2017-08-16 11:41:43'),
(38, 'export.application.status', 'web', '2017-08-16 11:42:10', '2017-08-16 11:42:10'),
(39, 'edit.application.status', 'web', '2017-08-16 11:42:53', '2017-08-16 11:42:53'),
(40, 'delete.application.status', 'web', '2017-08-16 11:43:41', '2017-08-16 11:43:41'),
(41, 'add.license.status', 'web', '2017-08-16 11:45:20', '2017-08-16 11:45:20'),
(42, 'search.license.status', 'web', '2017-08-16 11:46:33', '2017-08-16 11:46:33'),
(43, 'export.license.status', 'web', '2017-08-16 11:47:44', '2017-08-16 11:47:44'),
(44, 'edit.license.status', 'web', '2017-08-16 11:49:25', '2017-08-16 11:49:25'),
(45, 'delete.license.status', 'web', '2017-08-16 11:53:30', '2017-08-16 11:53:30'),
(46, 'add.license.type', 'web', '2017-08-16 11:56:37', '2017-08-16 11:56:37'),
(47, 'export.license.type', 'web', '2017-08-16 12:00:05', '2017-08-16 12:00:05'),
(48, 'edit.license.type', 'web', '2017-08-16 12:00:44', '2017-08-16 12:00:44'),
(49, 'delete.license.type', 'web', '2017-08-16 12:01:03', '2017-08-16 12:01:03'),
(50, 'add.areacode', 'web', '2017-08-16 12:01:59', '2017-08-16 12:01:59'),
(51, 'search.areacode', 'web', '2017-08-16 12:03:49', '2017-08-16 12:03:49'),
(52, 'export.areacode', 'web', '2017-08-16 12:06:20', '2017-08-16 12:06:20'),
(53, 'edit.areacode', 'web', '2017-08-16 12:07:10', '2017-08-16 12:07:10'),
(54, 'delete.areacode', 'web', '2017-08-16 12:08:03', '2017-08-16 12:08:03'),
(55, 'add.number.type', 'web', '2017-08-16 12:09:18', '2017-08-16 12:09:18'),
(56, 'export.number.type', 'web', '2017-08-16 12:09:57', '2017-08-16 12:09:57'),
(57, 'view.number.type', 'web', '2017-08-16 12:11:41', '2017-08-16 12:11:41'),
(58, 'edit.number.type', 'web', '2017-08-16 12:12:01', '2017-08-16 12:12:01'),
(59, 'delete.number.type', 'web', '2017-08-16 12:12:29', '2017-08-16 12:12:29'),
(60, 'add.number.status', 'web', '2017-08-16 12:14:09', '2017-08-16 12:14:09'),
(61, 'export.number.status', 'web', '2017-08-16 12:15:07', '2017-08-16 12:15:07'),
(62, 'edit.number.status', 'web', '2017-08-16 12:15:48', '2017-08-16 12:15:48'),
(63, 'delete.number.status', 'web', '2017-08-16 12:16:07', '2017-08-16 12:16:07'),
(64, 'add.numberblock', 'web', '2017-08-16 12:17:11', '2017-08-16 12:17:11'),
(65, 'search.number', 'web', '2017-08-16 12:17:48', '2017-08-16 12:17:48'),
(66, 'import.number', 'web', '2017-08-16 12:18:21', '2017-08-16 12:18:21'),
(67, 'export.number', 'web', '2017-08-16 12:19:07', '2017-08-16 12:19:07'),
(68, 'view.ported.number', 'web', '2017-08-16 12:19:59', '2017-08-16 12:19:59'),
(69, 'view.number', 'web', '2017-08-16 12:20:13', '2017-08-16 12:20:13'),
(70, 'edit.number', 'web', '2017-08-16 12:20:41', '2017-08-16 12:20:41'),
(71, 'delete.number', 'web', '2017-08-16 12:21:03', '2017-08-16 12:21:03'),
(72, 'add.fee', 'web', '2017-08-16 12:22:10', '2017-08-16 12:22:10'),
(73, 'search.fee', 'web', '2017-08-16 12:22:35', '2017-08-16 12:22:35'),
(74, 'export.fee', 'web', '2017-08-16 12:22:59', '2017-08-16 12:22:59'),
(75, 'edit.fee', 'web', '2017-08-16 12:23:31', '2017-08-16 12:23:31'),
(76, 'delete.fee', 'web', '2017-08-16 12:23:45', '2017-08-16 12:23:45'),
(77, 'add.billingplan', 'web', '2017-08-16 12:24:53', '2017-08-16 12:24:53'),
(78, 'search.billingplan', 'web', '2017-08-16 12:25:50', '2017-08-16 12:25:50'),
(79, 'export.billingplan', 'web', '2017-08-16 12:26:11', '2017-08-16 12:26:11'),
(80, 'view.billingplan', 'web', '2017-08-16 12:26:49', '2017-08-16 12:26:49'),
(81, 'edit.billingplan', 'web', '2017-08-16 12:27:12', '2017-08-16 12:27:12'),
(82, 'delete.billingplan', 'web', '2017-08-16 12:27:56', '2017-08-16 12:27:56'),
(83, 'add.invoice', 'web', '2017-08-16 12:28:58', '2017-08-16 12:28:58'),
(84, 'export.invoice', 'web', '2017-08-16 12:29:27', '2017-08-16 12:29:27'),
(85, 'view.invoice', 'web', '2017-08-16 12:29:54', '2017-08-16 12:29:54'),
(86, 'print.invoice', 'web', '2017-08-16 12:30:12', '2017-08-16 12:30:12'),
(87, 'edit.invoice', 'web', '2017-08-16 12:30:54', '2017-08-16 12:30:54'),
(88, 'delete.invoice', 'web', '2017-08-16 12:31:16', '2017-08-16 12:31:16'),
(89, 'add.service.charge', 'web', '2017-08-16 12:32:27', '2017-08-16 12:32:27'),
(90, 'search.service.charge', 'web', '2017-08-16 12:33:11', '2017-08-16 12:33:11'),
(91, 'export.service.charge', 'web', '2017-08-16 12:33:43', '2017-08-16 12:33:43'),
(92, 'view.service.charge', 'web', '2017-08-16 12:34:13', '2017-08-16 12:34:13'),
(93, 'edit.service.charge', 'web', '2017-08-16 12:34:46', '2017-08-16 12:34:46'),
(94, 'delete.service.charge', 'web', '2017-08-16 12:35:49', '2017-08-16 12:35:49'),
(95, 'view.bill.summary', 'web', '2017-08-16 12:37:12', '2017-08-16 12:37:12'),
(96, 'view.bill.invoice', 'web', '2017-08-16 12:38:28', '2017-08-16 12:38:28'),
(97, 'print.bill.invoice', 'web', '2017-08-16 12:39:18', '2017-08-16 12:39:18'),
(98, 'view.paid.invoice', 'web', '2017-08-16 12:39:49', '2017-08-16 12:39:49'),
(99, 'print.paid.invoice', 'web', '2017-08-16 12:40:11', '2017-08-16 12:40:11'),
(100, 'view.pending.invoice', 'web', '2017-08-16 12:41:10', '2017-08-16 12:41:10'),
(101, 'print.pending.invoice', 'web', '2017-08-16 12:41:33', '2017-08-16 12:41:33'),
(102, 'view.mail', 'web', '2017-08-16 12:42:51', '2017-08-16 12:42:51'),
(103, 'delete.mail', 'web', '2017-08-16 12:43:12', '2017-08-16 12:43:12'),
(104, 'compose.mail', 'web', '2017-08-16 12:43:58', '2017-08-16 12:43:58'),
(105, 'view.dashboard.chart', 'web', '2017-08-16 12:47:56', '2017-08-16 12:47:56'),
(106, 'download.chart.image', 'web', '2017-08-16 12:49:11', '2017-08-16 12:49:11'),
(107, 'view.configuration', 'web', '2017-08-16 12:51:13', '2017-08-16 12:51:13'),
(108, 'add.configuration.service', 'web', '2017-08-16 12:52:56', '2017-08-16 12:52:56'),
(109, 'view.configuration.service', 'web', '2017-08-16 13:01:02', '2017-08-16 13:01:02'),
(110, 'edit.configuration.service', 'web', '2017-08-16 13:03:05', '2017-08-16 13:03:05'),
(111, 'delete.configuration.service', 'web', '2017-08-16 13:04:12', '2017-08-16 13:04:12'),
(112, 'add.configuration.coverage.areas', 'web', '2017-08-16 13:09:07', '2017-08-16 13:09:07'),
(113, 'edit.configuration.coverage.area', 'web', '2017-08-16 13:10:46', '2017-08-16 13:10:46'),
(114, 'delete.configuration.coverage.area', 'web', '2017-08-16 13:11:31', '2017-08-16 13:11:31'),
(115, 'add.configuration.approval.stages', 'web', '2017-08-16 13:13:18', '2017-08-16 13:13:18'),
(116, 'edit.configuration.approval.stages', 'web', '2017-08-16 13:14:01', '2017-08-16 13:14:01'),
(117, 'delete.configuration.approval.stage', 'web', '2017-08-16 13:15:31', '2017-08-16 13:15:31'),
(118, 'view.user.profile', 'web', '2017-08-16 13:17:43', '2017-08-16 13:17:43'),
(119, 'change.user.password', 'web', '2017-08-16 13:18:22', '2017-08-16 13:18:22'),
(120, 'add.admin.user', 'web', '2017-08-16 13:21:05', '2017-08-16 13:21:05'),
(121, 'search.admin.user', 'web', '2017-08-16 13:22:01', '2017-08-16 13:22:01'),
(122, 'export.admin.user', 'web', '2017-08-16 13:23:48', '2017-08-16 13:23:48'),
(123, 'view.admin.user', 'web', '2017-08-16 13:24:46', '2017-08-16 13:24:46'),
(124, 'edit.admin.user', 'web', '2017-08-16 13:26:32', '2017-08-16 13:26:32'),
(125, 'delete.admin.user', 'web', '2017-08-16 13:27:12', '2017-08-16 13:27:12'),
(126, 'view.home', 'web', '2017-08-16 13:28:21', '2017-08-16 13:28:21'),
(128, 'Approve Prepare', 'web', '2017-08-16 16:45:25', '2017-08-16 16:45:25'),
(129, 'Approve Recommendation', 'web', '2017-08-16 16:47:32', '2017-08-16 16:47:32'),
(130, 'Approve Produce', 'web', '2017-08-16 17:10:27', '2017-08-16 17:10:27'),
(131, 'Approve Validation', 'web', '2017-08-16 17:11:59', '2017-08-16 17:11:59'),
(132, 'Approve Endorsement', 'web', '2017-08-16 17:12:20', '2017-08-16 17:12:20'),
(133, 'Approve Approval', 'web', '2017-08-16 17:12:56', '2017-08-16 17:12:56'),
(134, 'approve.all.applications', 'web', '2017-08-16 17:20:29', '2017-08-16 17:20:29'),
(135, 'final.approval', 'web', '2017-08-16 17:44:02', '2017-08-16 17:44:02'),
(136, 'final.denial', 'web', '2017-08-16 17:44:13', '2017-08-16 17:44:13'),
(137, 'port.number', 'web', '2017-08-16 17:52:38', '2017-08-16 17:52:38'),
(138, 'withdraw.number', 'web', '2017-08-16 17:52:56', '2017-08-16 17:52:56'),
(139, 'view.sent.mail', 'web', '2017-08-18 11:23:58', '2017-08-18 11:23:58'),
(140, 'view.license.type', 'web', '2017-08-22 12:00:49', '2017-08-22 12:00:49'),
(141, 'view.license.status', 'web', '2017-08-22 12:02:16', '2017-08-22 12:02:16'),
(142, 'view.fee', 'web', '2017-08-22 12:25:32', '2017-08-22 12:25:32'),
(143, 'export.client.user', 'web', '2017-08-22 15:36:41', '2017-08-22 15:36:41'),
(144, 'search.client.user', 'web', '2017-08-22 15:42:20', '2017-08-22 15:42:20'),
(145, 'view.client.user', 'web', '2017-08-22 15:43:32', '2017-08-22 15:43:32');

-- --------------------------------------------------------

--
-- Table structure for table `porteds`
--

CREATE TABLE `porteds` (
  `id` int(10) UNSIGNED NOT NULL,
  `starting_company_id` int(11) NOT NULL,
  `ending_company_id` int(11) NOT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `number_id` int(11) NOT NULL,
  `ported_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `latest` int(11) NOT NULL DEFAULT '1',
  `created_by` int(11) DEFAULT NULL,
  `last_updated_by` int(11) DEFAULT NULL,
  `number_type_id` int(11) DEFAULT NULL,
  `number_type_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `porteds`
--

INSERT INTO `porteds` (`id`, `starting_company_id`, `ending_company_id`, `comment`, `created_at`, `updated_at`, `deleted_at`, `number_id`, `ported_number`, `latest`, `created_by`, `last_updated_by`, `number_type_id`, `number_type_name`) VALUES
(1, 2, 2, '', '2017-08-15 12:19:20', '2017-08-15 12:19:20', '2017-08-22 02:00:00', 0, NULL, 1, NULL, NULL, NULL, NULL),
(2, 2, 3, '', '2017-08-15 13:22:07', '2017-08-15 13:22:07', '2017-08-22 02:00:00', 0, NULL, 1, NULL, NULL, NULL, NULL),
(3, 3, 3, '', '2017-08-15 17:33:45', '2017-08-15 17:33:45', '2017-08-22 02:00:00', 31, '2147483647', 1, 2, 2, NULL, NULL),
(4, 3, 3, '', '2017-08-15 17:36:19', '2017-08-15 17:36:19', '2017-08-22 02:00:00', 31, '2147483647', 1, 2, 2, NULL, NULL),
(5, 3, 3, '', '2017-08-15 17:38:02', '2017-08-15 17:38:02', '2017-08-22 02:00:00', 31, '07050000000', 1, 2, 2, NULL, NULL),
(6, 2, 2, '', '2017-08-22 14:26:01', '2017-08-22 14:26:01', '2017-08-22 02:00:00', 31, '07050000110', 1, 2, 2, NULL, NULL),
(7, 2, 4, '', '2017-08-22 14:30:32', '2017-08-22 14:30:32', '2017-08-24 02:00:00', 31, '07050000010', 1, 2, 2, NULL, NULL),
(8, 2, 4, '', '2017-08-23 11:59:54', '2017-08-23 11:59:54', '2017-08-24 02:00:00', 31, '07055500000', 1, 2, 2, NULL, NULL),
(9, 3, 2, '', '2017-08-23 15:23:21', '2017-08-23 16:27:04', '2017-08-24 02:00:00', 27, '08034499999', 0, 2, 2, NULL, NULL),
(10, 3, 2, '', '2017-08-23 16:27:04', '2017-08-23 16:27:04', '2017-08-24 02:00:00', 27, '08034499999', 1, 2, 2, NULL, NULL),
(11, 3, 4, '', '2017-08-23 16:33:02', '2017-08-23 16:33:02', '2017-08-24 02:00:00', 27, '08034455999', 1, 2, 2, NULL, NULL),
(12, 3, 2, '', '2017-08-24 15:12:11', '2017-08-24 15:12:11', NULL, 27, '08035500000', 1, 2, 2, 10, 'Standard Numbers'),
(13, 3, 2, '', '2017-08-24 15:12:54', '2017-08-24 15:12:54', NULL, 27, '08035600000', 1, 2, 2, 10, 'Standard Numbers'),
(14, 3, 2, '', '2017-08-28 15:17:53', '2017-08-28 15:17:53', NULL, 27, '08035647890', 1, 2, 2, 10, 'Standard Numbers'),
(15, 2, 3, '', '2017-08-29 12:38:52', '2017-08-29 14:48:55', NULL, 85, '080202000000', 0, 2, 2, 10, 'Standard Numbers'),
(16, 2, 3, '', '2017-08-29 14:48:55', '2017-08-29 14:48:55', NULL, 85, '080202000000', 1, 2, 2, 10, 'Standard Numbers'),
(17, 67, 117, '', '2017-11-03 11:40:20', '2017-11-03 11:40:20', NULL, 1503, '1888888', 1, 2, 2, 21, 'Geographical Numbers');

-- --------------------------------------------------------

--
-- Table structure for table `product_numbers`
--

CREATE TABLE `product_numbers` (
  `id` int(10) UNSIGNED NOT NULL,
  `area_id` int(11) DEFAULT NULL,
  `number_id` int(11) NOT NULL,
  `application_number_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `application_short_id` int(11) DEFAULT NULL,
  `purpose` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bearer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tariff` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `allocation_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `starting_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ending_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `application_ispc_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product_numbers`
--

INSERT INTO `product_numbers` (`id`, `area_id`, `number_id`, `application_number_id`, `created_at`, `updated_at`, `deleted_at`, `application_short_id`, `purpose`, `bearer`, `tariff`, `allocation_date`, `starting_number`, `ending_number`, `application_ispc_id`) VALUES
(1, 0, 32, 5, '2017-05-30 15:51:48', '2017-05-30 15:51:48', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 0, 32, 7, '2017-05-30 16:03:02', '2017-05-30 16:03:02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 0, 32, 8, '2017-05-30 16:04:24', '2017-05-30 16:04:24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 0, 32, 9, '2017-05-30 16:09:53', '2017-05-30 16:09:53', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 0, 32, 10, '2017-05-30 16:10:48', '2017-05-30 16:10:48', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 0, 32, 11, '2017-05-30 16:11:16', '2017-05-30 16:11:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, NULL, 28, NULL, '2017-05-31 13:18:38', '2017-05-31 13:18:38', NULL, 2, 'purp', 'bare', '4673', '2017-05-03', NULL, NULL, NULL),
(8, NULL, 28, NULL, '2017-05-31 13:21:20', '2017-05-31 13:21:20', NULL, 3, 'purp', 'bare', '4673', '2017-05-03', NULL, NULL, NULL),
(9, NULL, 28, NULL, '2017-05-31 13:27:10', '2017-05-31 13:27:10', NULL, 4, 'purp', 'bare', '4673', '2017-05-03', NULL, NULL, NULL),
(10, NULL, 28, NULL, '2017-05-31 13:27:52', '2017-05-31 13:27:52', NULL, 5, 'advert', 'USSD', '10', '2017-05-31', NULL, NULL, NULL),
(11, NULL, 28, NULL, '2017-06-12 12:21:40', '2017-06-12 12:21:40', NULL, 7, 'Public', 'USSD', '12', '2017-06-05', '02000', '02000', NULL),
(12, 0, 31, 13, '2017-06-12 13:29:50', '2017-06-12 13:29:50', NULL, NULL, NULL, NULL, NULL, NULL, '07050000000', '07059999999', NULL),
(13, 0, 27, 13, '2017-06-12 13:29:50', '2017-06-12 13:29:50', NULL, NULL, NULL, NULL, NULL, NULL, '08030000000', '08039999999', NULL),
(14, NULL, 28, NULL, '2017-06-12 14:06:25', '2017-08-08 12:46:01', '2017-08-08 12:46:01', 8, 'Healthcare', 'SMS', '50', '2017-06-12', '02000', '02000', NULL),
(15, NULL, 28, NULL, '2017-06-12 14:14:52', '2017-06-12 14:14:52', NULL, 11, 'Healthcare', 'SMS', '50', '2017-06-12', '02000', '02000', NULL),
(16, NULL, 33, NULL, '2017-06-12 14:14:52', '2017-06-12 14:14:52', NULL, 11, NULL, NULL, '50', NULL, '05830', '05830', NULL),
(17, NULL, 33, NULL, '2017-06-12 16:20:21', '2017-06-12 16:20:21', NULL, 12, 'Medical', 'USSD', '50', NULL, '05830', '05830', NULL),
(18, NULL, 28, NULL, '2017-06-12 16:28:41', '2017-08-08 15:03:03', '2017-08-08 15:03:03', 13, 'Medical', 'USSD', '50', NULL, '02000', '02000', NULL),
(19, NULL, 28, NULL, '2017-06-12 16:30:17', '2017-06-12 16:30:17', NULL, 14, 'Medical', 'USSD', '50', NULL, '02000', '02000', NULL),
(20, 0, 27, 14, '2017-06-14 16:18:16', '2017-06-14 16:18:16', NULL, NULL, NULL, NULL, NULL, NULL, '08030000000', '08039999999', NULL),
(21, NULL, 28, NULL, '2017-06-14 16:46:42', '2017-08-08 13:09:46', '2017-08-08 13:09:46', 15, 'Public', 'SMS', '50', NULL, '02000', '02000', NULL),
(22, NULL, 33, NULL, '2017-06-14 16:46:42', '2017-08-08 13:09:46', '2017-08-08 13:09:46', 15, 'public', 'USSD', '50', NULL, '05830', '05830', NULL),
(23, NULL, 33, NULL, '2017-06-21 17:58:10', '2017-07-18 17:00:13', '2017-07-18 17:00:13', 16, 'Commercial', 'SMS', '50', NULL, '05830', '05830', NULL),
(24, NULL, 28, NULL, '2017-06-21 17:58:10', '2017-07-18 17:00:13', '2017-07-18 17:00:13', 16, 'Private', 'IVR', '50', NULL, '02000', '02000', NULL),
(25, 3, 32, 15, '2017-06-21 18:07:57', '2017-07-15 02:16:29', NULL, NULL, NULL, NULL, NULL, NULL, '07018000000', '07018999999', NULL),
(26, 0, 31, 16, '2017-06-21 19:10:35', '2017-06-21 19:10:35', NULL, NULL, NULL, NULL, NULL, NULL, '07050000000', '07059999999', NULL),
(27, 3, 31, 17, '2017-06-22 11:42:05', '2017-07-13 16:26:04', NULL, NULL, NULL, NULL, NULL, NULL, '07050000000', '07059999999', NULL),
(28, 0, 32, 17, '2017-06-22 11:42:05', '2017-07-13 16:26:04', '2017-07-13 16:26:04', NULL, NULL, NULL, NULL, NULL, '07018000000', '07018999999', NULL),
(29, 0, 32, 18, '2017-06-28 13:21:49', '2017-06-28 13:21:49', NULL, NULL, NULL, NULL, NULL, NULL, '07018000000', '07018999999', NULL),
(30, NULL, 33, NULL, '2017-06-28 14:27:02', '2017-06-28 14:27:02', NULL, 17, 'Public', 'USSD', '50', NULL, '05830', '05830', NULL),
(31, NULL, 33, NULL, '2017-06-28 14:59:21', '2017-06-28 14:59:21', NULL, 18, 'Public', 'SMS', '50', NULL, '05830', '05830', NULL),
(32, NULL, 28, NULL, '2017-06-28 15:10:54', '2017-06-28 15:10:54', NULL, 19, 'Public', 'SMS', '50', NULL, '02000', '02000', NULL),
(33, NULL, 28, NULL, '2017-06-28 15:11:38', '2017-06-28 15:11:38', NULL, 20, 'Public', 'SMS', '50', NULL, '02000', '02000', NULL),
(34, NULL, 28, NULL, '2017-06-28 15:12:44', '2017-06-28 15:12:44', NULL, 21, 'Public', 'SMS', '50', NULL, '02000', '02000', NULL),
(35, NULL, 28, NULL, '2017-06-28 15:12:58', '2017-06-28 15:12:58', NULL, 22, 'Public', 'SMS', '50', NULL, '02000', '02000', NULL),
(36, NULL, 28, NULL, '2017-06-28 15:13:21', '2017-06-28 15:13:21', NULL, 23, 'Public', 'SMS', '50', NULL, '02000', '02000', NULL),
(37, NULL, 28, NULL, '2017-06-28 15:29:49', '2017-06-28 15:29:49', NULL, 24, 'Public', 'SMS', '50', NULL, '02000', '02000', NULL),
(38, 3, 31, 19, '2017-06-30 16:01:33', '2017-07-11 15:20:16', '2017-07-11 15:20:16', NULL, NULL, NULL, NULL, NULL, '07050000000', '07059999999', NULL),
(39, 0, 31, 20, '2017-07-05 17:07:59', '2017-07-05 17:07:59', NULL, NULL, NULL, NULL, NULL, NULL, '07050000000', '07059999999', NULL),
(40, 3, 31, 19, '2017-07-11 17:01:20', '2017-07-11 17:04:21', '2017-07-11 17:04:21', NULL, NULL, NULL, NULL, NULL, '07050000000', '07059999999', NULL),
(41, 3, 31, 19, '2017-07-11 17:04:21', '2017-07-11 17:05:14', '2017-07-11 17:05:14', NULL, NULL, NULL, NULL, NULL, '07050000000', '07059999999', NULL),
(42, 3, 27, 19, '2017-07-11 17:27:20', '2017-07-11 17:37:31', '2017-07-11 17:37:31', NULL, NULL, NULL, NULL, NULL, '08030000000', '08039999999', NULL),
(43, 3, 31, 19, '2017-07-11 17:40:55', '2017-07-11 17:40:55', NULL, NULL, NULL, NULL, NULL, NULL, '07050000000', '07059999999', NULL),
(44, 3, 31, 21, '2017-07-12 15:16:40', '2017-07-12 15:16:40', NULL, NULL, NULL, NULL, NULL, NULL, '07050000000', '07059999999', NULL),
(45, 0, 28, NULL, '2017-07-13 14:32:06', '2017-07-13 15:00:38', '2017-07-13 15:00:38', 25, NULL, NULL, NULL, NULL, '02000', '02000', NULL),
(46, 0, 28, NULL, '2017-07-13 14:32:36', '2017-07-13 15:00:38', '2017-07-13 15:00:38', 25, NULL, NULL, NULL, NULL, '02000', '02000', NULL),
(47, 0, 33, NULL, '2017-07-13 15:00:38', '2017-07-13 15:45:16', '2017-07-13 15:45:16', 25, NULL, NULL, NULL, NULL, '05830', '05830', NULL),
(48, 0, 33, NULL, '2017-07-13 15:08:49', '2017-07-13 15:45:16', '2017-07-13 15:45:16', 25, NULL, NULL, NULL, NULL, '05830', '05830', NULL),
(49, 0, 33, NULL, '2017-07-13 15:16:48', '2017-07-13 15:45:16', '2017-07-13 15:45:16', 25, NULL, NULL, NULL, NULL, '05830', '05830', NULL),
(50, NULL, 33, NULL, '2017-07-13 15:45:16', '2017-07-13 15:45:43', '2017-07-13 15:45:43', 25, 'Health', 'SMS', '50', '', '05830', '05830', NULL),
(51, NULL, 33, NULL, '2017-07-13 15:45:43', '2017-07-13 15:45:43', NULL, 25, 'Health', 'SMS', '50', '', '05830', '05830', NULL),
(52, 3, 27, 25, '2017-07-14 15:50:11', '2017-07-14 15:50:11', NULL, NULL, NULL, NULL, NULL, NULL, '08030000000', '08039999999', NULL),
(53, NULL, 33, NULL, '2017-07-17 13:26:37', '2017-07-17 13:26:37', NULL, 28, 'Business', 'SMS', '4 naira', '', '05830', '05830', NULL),
(54, 3, 32, 29, '2017-07-18 13:35:18', '2017-07-18 13:35:18', NULL, NULL, NULL, NULL, NULL, NULL, '07018000000', '07018999999', NULL),
(55, NULL, 33, NULL, '2017-07-18 13:43:04', '2017-07-18 13:43:05', '2017-07-18 13:43:05', 29, NULL, NULL, NULL, '', '05830', '05830', NULL),
(56, NULL, 33, NULL, '2017-07-18 13:43:05', '2017-07-18 13:43:05', NULL, 29, NULL, NULL, NULL, '', '05830', '05830', NULL),
(57, 3, 27, 31, '2017-07-18 14:37:00', '2017-07-18 14:37:00', NULL, NULL, NULL, NULL, NULL, NULL, '08030000000', '08039999999', NULL),
(58, NULL, 33, NULL, '2017-07-18 15:14:47', '2017-07-18 15:14:47', NULL, 30, 'Commercial', 'IVR', '4 naira', '', '05830', '05830', NULL),
(59, NULL, 33, NULL, '2017-07-18 17:00:13', '2017-07-18 17:00:13', NULL, 16, 'Commercial', 'SMS', '50', '', '05830', '05830', NULL),
(60, NULL, 28, NULL, '2017-07-18 17:00:13', '2017-07-18 17:00:13', NULL, 16, 'Private', 'IVR', '50', '', '02000', '02000', NULL),
(61, 3, 27, 33, '2017-07-18 18:01:25', '2017-07-18 18:01:25', NULL, NULL, NULL, NULL, NULL, NULL, '08030000000', '08039999999', NULL),
(62, 3, 31, 34, '2017-07-18 18:42:42', '2017-07-18 18:42:42', NULL, NULL, NULL, NULL, NULL, NULL, '07050000000', '07059999999', NULL),
(63, 3, 31, 65, '2017-08-08 12:17:05', '2017-08-08 12:17:05', NULL, NULL, NULL, NULL, NULL, NULL, '07050000000', '07059999999', NULL),
(64, NULL, 28, NULL, '2017-08-08 12:46:01', '2017-08-08 12:46:01', NULL, 8, 'Healthcare', 'SMS', '50', '', '02000', '02000', NULL),
(65, 3, 32, 67, '2017-08-08 13:07:22', '2017-08-08 13:07:22', NULL, NULL, NULL, NULL, NULL, NULL, '07018000000', '07018999999', NULL),
(66, NULL, 28, NULL, '2017-08-08 13:09:46', '2017-08-08 13:09:46', NULL, 15, 'Public', 'SMS', '50', '', '02000', '02000', NULL),
(67, NULL, 33, NULL, '2017-08-08 13:09:46', '2017-08-08 13:09:46', NULL, 15, 'public', 'USSD', '50', '', '05830', '05830', NULL),
(68, 3, 32, 68, '2017-08-08 14:08:43', '2017-08-08 14:08:43', NULL, NULL, NULL, NULL, NULL, NULL, '07018000000', '07018999999', NULL),
(69, NULL, 28, NULL, '2017-08-08 15:03:03', '2017-08-08 15:03:03', NULL, 13, 'Medical', 'USSD', '50', '', '02000', '02000', NULL),
(70, NULL, 28, NULL, '2017-08-08 15:22:59', '2017-08-08 15:22:59', NULL, 26, 'services', 'sms', 'yes', '', '02000', '02000', NULL),
(71, 3, 27, 69, '2017-08-09 15:21:55', '2017-08-09 15:21:55', NULL, NULL, NULL, NULL, NULL, NULL, '08030000000', '08039999999', NULL),
(72, NULL, 0, NULL, '2017-08-09 18:58:31', '2017-08-09 18:58:31', NULL, NULL, NULL, NULL, NULL, NULL, '235', '235', NULL),
(73, NULL, 0, NULL, '2017-08-10 14:01:24', '2017-08-10 14:01:24', NULL, NULL, NULL, NULL, NULL, NULL, '235', '235', 25),
(74, NULL, 0, NULL, '2017-08-10 14:57:38', '2017-08-10 14:57:38', NULL, NULL, NULL, NULL, NULL, NULL, '235', '235', 24),
(75, NULL, 0, NULL, '2017-08-10 15:42:49', '2017-08-10 15:42:49', NULL, NULL, NULL, NULL, NULL, NULL, '235', '235', 1),
(76, NULL, 0, NULL, '2017-08-10 16:56:02', '2017-08-10 16:56:02', NULL, NULL, NULL, NULL, NULL, NULL, '456', '456', 26),
(77, NULL, 71, NULL, '2017-08-11 10:44:18', '2017-08-11 10:44:18', NULL, NULL, NULL, NULL, NULL, NULL, '456', '456', 27),
(78, 3, 27, 71, '2017-08-11 15:01:14', '2017-08-11 15:01:14', NULL, NULL, NULL, NULL, NULL, NULL, '08030000000', '08039999999', NULL),
(79, NULL, 28, NULL, '2017-08-11 15:05:28', '2017-08-11 15:05:28', NULL, 48, 'DATA', 'SMS', '20', '', '02000', '02000', NULL),
(80, 56, 35, 72, '2017-08-11 15:21:55', '2017-08-11 15:21:55', NULL, NULL, NULL, NULL, NULL, NULL, '000000', '999999', NULL),
(81, NULL, 79, NULL, '2017-08-11 15:23:37', '2017-08-11 15:23:37', NULL, 49, 'DATA', 'USSD', '10', '', '03000', '03000', NULL),
(82, NULL, 71, NULL, '2017-08-11 15:31:50', '2017-08-11 15:31:50', NULL, NULL, NULL, NULL, NULL, NULL, '456', '456', 28),
(83, NULL, 80, NULL, '2017-08-11 15:33:12', '2017-08-11 15:33:12', NULL, 50, 'VOICE', 'IVR', '5', '', '04000', '04000', NULL),
(84, NULL, 70, NULL, '2017-08-11 15:40:31', '2017-08-11 15:40:31', NULL, NULL, NULL, NULL, NULL, NULL, '235', '235', 29),
(85, 3, 27, 73, '2017-08-11 15:41:31', '2017-08-11 15:41:31', NULL, NULL, NULL, NULL, NULL, NULL, '08030000000', '08039999999', NULL),
(86, 60, 70, 74, '2017-08-15 12:29:03', '2017-08-15 12:29:03', NULL, NULL, NULL, NULL, NULL, NULL, '235', '235', NULL),
(87, 3, 32, 75, '2017-08-18 12:51:17', '2017-08-18 12:51:17', NULL, NULL, NULL, NULL, NULL, NULL, '07018000000', '07018999999', NULL),
(88, NULL, 80, NULL, '2017-08-18 13:35:56', '2017-08-18 13:35:56', NULL, 53, 'N/A', 'N/A', 'N/A', '', '04000', '04000', NULL),
(89, NULL, 0, NULL, '2017-08-18 13:44:12', '2017-08-18 13:44:12', NULL, NULL, NULL, NULL, NULL, NULL, '235', '235', 30),
(90, 3, 31, 76, '2017-08-28 14:14:35', '2017-09-20 11:43:31', '2017-09-20 11:43:31', NULL, NULL, NULL, NULL, NULL, '07050000000', '07059999999', NULL),
(91, NULL, 0, NULL, '2017-08-28 14:39:53', '2017-08-28 14:39:53', NULL, NULL, NULL, NULL, NULL, NULL, '235', '235', 31),
(92, 32, 91, 77, '2017-08-29 13:10:51', '2017-08-29 13:10:51', NULL, NULL, NULL, NULL, NULL, NULL, '0907000000000', '0907999999999', NULL),
(93, 30, 92, 78, '2017-08-29 14:16:45', '2017-08-29 14:16:45', NULL, NULL, NULL, NULL, NULL, NULL, '0908000000000', '0908999999999', NULL),
(94, 3, 32, 81, '2017-09-14 13:08:52', '2017-09-14 13:08:52', NULL, NULL, NULL, NULL, NULL, NULL, '07018000000', '07018999999', NULL),
(95, 15, 91, 81, '2017-09-14 13:08:52', '2017-09-14 13:08:52', NULL, NULL, NULL, NULL, NULL, NULL, '09070000000', '09079999999', NULL),
(96, NULL, 80, NULL, '2017-09-20 11:20:45', '2017-09-20 11:20:45', NULL, 60, 'Video Coverage', 'SMS', 'Naira', '', '04000', '04000', NULL),
(97, 0, 1598, 76, '2017-09-20 11:43:54', '2017-09-20 11:43:54', NULL, NULL, NULL, NULL, NULL, NULL, '05010000000', '05019999999', NULL),
(98, 0, 1599, 95, '2017-09-26 11:03:42', '2017-09-26 11:03:42', NULL, NULL, NULL, NULL, NULL, NULL, '05000000000', '05099999999', NULL),
(99, NULL, 79, NULL, '2017-09-27 15:41:47', '2017-09-27 15:41:47', NULL, 66, 'Health', 'SMS', '50', '', '03000', '03000', NULL),
(100, NULL, 0, NULL, '2017-09-27 16:06:01', '2017-09-27 16:06:01', NULL, NULL, NULL, NULL, NULL, NULL, '6-041', '6-041', 35),
(101, 0, 1598, 99, '2017-09-29 00:17:25', '2017-09-29 00:17:25', NULL, NULL, NULL, NULL, NULL, NULL, '05010000000', '05019999999', NULL),
(102, 0, 1599, 101, '2017-10-05 15:00:57', '2017-10-05 15:00:57', NULL, NULL, NULL, NULL, NULL, NULL, '05000000000', '05099999999', NULL),
(103, NULL, 1601, NULL, '2017-10-06 14:41:47', '2017-10-06 14:41:47', NULL, 73, NULL, NULL, NULL, '', '35360', '35360', NULL),
(104, 0, 1598, 119, '2017-10-13 14:33:48', '2017-10-13 14:33:48', NULL, NULL, NULL, NULL, NULL, NULL, '05010000000', '05019999999', NULL),
(105, NULL, 1601, NULL, '2017-10-13 15:00:31', '2017-10-13 15:00:31', NULL, 74, 'Healthcare', 'SMS/USSD', 'N50/7days', '', '35360', '35360', NULL),
(106, NULL, 0, NULL, '2017-10-16 12:38:15', '2017-10-16 12:38:15', NULL, NULL, NULL, NULL, NULL, NULL, '235', '235', 38),
(107, NULL, 1606, 121, '2017-10-17 10:37:38', '2017-10-17 10:37:38', NULL, NULL, NULL, NULL, NULL, NULL, '06010000000', '06019999999', NULL),
(108, NULL, 1602, NULL, '2017-10-17 11:43:51', '2017-10-17 11:43:51', NULL, 75, 'Healthcare', 'USSD', '50', '', '57810', '57810', NULL),
(109, NULL, 0, NULL, '2017-10-17 12:02:29', '2017-10-17 12:02:29', NULL, NULL, NULL, NULL, NULL, NULL, '235', '235', 39),
(110, NULL, 1607, 122, '2017-10-17 13:17:12', '2017-10-17 13:17:12', NULL, NULL, NULL, NULL, NULL, NULL, '06020000000', '06029999999', NULL),
(111, NULL, 1603, NULL, '2017-10-17 14:54:55', '2017-10-17 14:54:55', NULL, 76, NULL, NULL, NULL, '', '579', '579', NULL),
(112, NULL, 1608, 133, '2017-10-31 14:20:43', '2017-10-31 14:20:43', NULL, NULL, NULL, NULL, NULL, NULL, '6090000', '6099999', NULL),
(113, NULL, 1608, 134, '2017-10-31 14:23:44', '2017-10-31 14:23:44', NULL, NULL, NULL, NULL, NULL, NULL, '6090000', '6099999', NULL),
(114, NULL, 1603, NULL, '2017-10-31 14:43:28', '2017-10-31 14:43:28', NULL, 78, 'Healthcare', 'USSD', '50', '', '579', '579', NULL),
(115, NULL, 1608, 137, '2017-11-07 16:02:41', '2017-11-07 16:02:41', NULL, NULL, NULL, NULL, NULL, NULL, '6090000', '6099999', NULL),
(116, NULL, 0, NULL, '2017-11-10 17:13:16', '2017-11-10 17:13:16', NULL, NULL, NULL, NULL, NULL, NULL, '6-041', '6-041', 40),
(117, NULL, 1603, NULL, '2018-01-28 13:55:42', '2018-01-28 13:55:42', NULL, 84, 'Data', 'Gatecom', '50', '', '579', '579', NULL),
(118, 99, 1503, 147, '2018-12-05 11:28:15', '2018-12-05 11:28:15', NULL, NULL, NULL, NULL, NULL, NULL, '0000000', '1999999', NULL),
(119, 99, 1503, 147, '2018-12-05 11:35:36', '2018-12-05 11:35:36', NULL, NULL, NULL, NULL, NULL, NULL, '0000000', '1999999', NULL),
(120, 99, 1503, 147, '2018-12-05 11:36:01', '2018-12-05 11:36:01', NULL, NULL, NULL, NULL, NULL, NULL, '0000000', '1999999', NULL),
(121, 99, 1503, 147, '2018-12-05 11:36:19', '2018-12-05 11:36:19', NULL, NULL, NULL, NULL, NULL, NULL, '0000000', '1999999', NULL),
(122, 99, 1503, 147, '2018-12-05 11:36:39', '2018-12-05 11:36:39', NULL, NULL, NULL, NULL, NULL, NULL, '0000000', '1999999', NULL),
(123, 99, 1503, 147, '2018-12-05 11:37:06', '2018-12-05 11:37:06', NULL, NULL, NULL, NULL, NULL, NULL, '0000000', '1999999', NULL),
(124, 99, 1503, 147, '2018-12-05 11:37:26', '2018-12-05 11:37:26', NULL, NULL, NULL, NULL, NULL, NULL, '0000000', '1999999', NULL),
(125, 99, 1503, 147, '2018-12-05 11:39:31', '2018-12-05 11:39:31', NULL, NULL, NULL, NULL, NULL, NULL, '0000000', '1999999', NULL),
(126, 99, 1503, 147, '2018-12-05 11:40:34', '2018-12-05 11:40:34', NULL, NULL, NULL, NULL, NULL, NULL, '0000000', '1999999', NULL),
(127, 99, 1503, 147, '2018-12-05 11:41:06', '2018-12-05 11:41:06', NULL, NULL, NULL, NULL, NULL, NULL, '0000000', '1999999', NULL),
(128, 99, 1503, 147, '2018-12-05 11:41:37', '2018-12-05 11:41:37', NULL, NULL, NULL, NULL, NULL, NULL, '0000000', '1999999', NULL),
(129, 99, 1503, 147, '2018-12-05 11:43:09', '2018-12-05 11:43:09', NULL, NULL, NULL, NULL, NULL, NULL, '0000000', '1999999', NULL),
(130, 99, 1503, 147, '2018-12-05 11:43:46', '2018-12-05 11:43:46', NULL, NULL, NULL, NULL, NULL, NULL, '0000000', '1999999', NULL),
(131, 99, 1503, 147, '2018-12-05 11:44:28', '2018-12-05 11:44:28', NULL, NULL, NULL, NULL, NULL, NULL, '0000000', '1999999', NULL),
(132, 99, 1503, 147, '2018-12-05 11:44:55', '2018-12-05 11:44:55', NULL, NULL, NULL, NULL, NULL, NULL, '0000000', '1999999', NULL),
(133, 99, 1503, 147, '2018-12-05 11:45:10', '2018-12-05 11:45:10', NULL, NULL, NULL, NULL, NULL, NULL, '0000000', '1999999', NULL),
(134, 99, 1503, 147, '2018-12-05 11:45:14', '2018-12-05 11:45:14', NULL, NULL, NULL, NULL, NULL, NULL, '0000000', '1999999', NULL),
(135, 99, 1503, 147, '2018-12-05 11:45:28', '2018-12-05 11:45:28', NULL, NULL, NULL, NULL, NULL, NULL, '0000000', '1999999', NULL),
(136, 99, 1503, 147, '2018-12-05 11:45:45', '2018-12-05 11:45:45', NULL, NULL, NULL, NULL, NULL, NULL, '0000000', '1999999', NULL),
(137, 99, 1503, 147, '2018-12-05 11:46:22', '2018-12-05 11:46:22', NULL, NULL, NULL, NULL, NULL, NULL, '0000000', '1999999', NULL),
(138, 99, 1503, 147, '2018-12-05 11:46:42', '2018-12-05 11:46:42', NULL, NULL, NULL, NULL, NULL, NULL, '0000000', '1999999', NULL),
(139, 99, 1503, 147, '2018-12-05 11:47:06', '2018-12-05 11:47:06', NULL, NULL, NULL, NULL, NULL, NULL, '0000000', '1999999', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_shorts`
--

CREATE TABLE `product_shorts` (
  `id` int(10) UNSIGNED NOT NULL,
  `number_id` int(11) NOT NULL,
  `application_short_id` int(11) NOT NULL,
  `purpose` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bearer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tariff` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `allocation_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `receipts`
--

CREATE TABLE `receipts` (
  `id` int(10) UNSIGNED NOT NULL,
  `payment_id` int(11) DEFAULT NULL,
  `bill_id` int(11) DEFAULT NULL,
  `invoice_id` int(11) DEFAULT NULL,
  `application_number_id` int(11) DEFAULT NULL,
  `application_short_id` int(11) DEFAULT NULL,
  `application_ispc_id` int(11) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `receipt_no` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `upload` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `receipts`
--

INSERT INTO `receipts` (`id`, `payment_id`, `bill_id`, `invoice_id`, `application_number_id`, `application_short_id`, `application_ispc_id`, `company_id`, `user_id`, `receipt_no`, `upload`, `comment`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 34, NULL, NULL, NULL, NULL, NULL, 2, NULL, 'RC-CASH001', 'users/client/molcom1505123441.pdf', 'Thank you.', '2017-09-11 12:50:41', '2017-09-11 13:36:02', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `renew_numbers`
--

CREATE TABLE `renew_numbers` (
  `id` int(10) UNSIGNED NOT NULL,
  `application_number_id` int(11) DEFAULT NULL,
  `application_short_id` int(11) DEFAULT NULL,
  `application_ispc_id` int(11) DEFAULT NULL,
  `number_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `old_expiry_date` int(11) DEFAULT NULL,
  `new_expiry_date` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `renew_numbers`
--

INSERT INTO `renew_numbers` (`id`, `application_number_id`, `application_short_id`, `application_ispc_id`, `number_id`, `user_id`, `company_id`, `old_expiry_date`, `new_expiry_date`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 73, NULL, NULL, NULL, 2, 2, 2017, 2017, '2017-10-05 14:24:56', '2017-10-05 14:24:56', NULL),
(2, 73, NULL, NULL, NULL, 2, 2, 2017, 2027, '2017-10-05 14:28:47', '2017-10-05 14:28:47', NULL),
(3, 73, NULL, NULL, NULL, 2, 2, 2027, 2017, '2017-10-05 18:57:32', '2017-10-05 18:57:32', NULL),
(4, 73, NULL, NULL, NULL, 2, 2, 2027, 2017, '2017-10-05 18:58:31', '2017-10-05 18:58:31', NULL),
(5, 73, NULL, NULL, NULL, 2, 2, 2027, 2017, '2017-10-05 19:00:29', '2017-10-05 19:00:29', NULL),
(6, 73, NULL, NULL, NULL, 2, 2, 2027, 2017, '2017-10-05 19:01:27', '2017-10-05 19:01:27', NULL),
(7, 73, NULL, NULL, NULL, 2, 2, 2027, 2017, '2017-10-05 19:03:30', '2017-10-05 19:03:30', NULL),
(8, 73, NULL, NULL, NULL, 2, 2, 2027, 2017, '2017-10-05 19:03:36', '2017-10-05 19:03:36', NULL),
(9, 73, NULL, NULL, NULL, 2, 2, 2027, 2017, '2017-10-05 19:04:11', '2017-10-05 19:04:11', NULL),
(10, 73, NULL, NULL, NULL, 2, 2, 2027, 2017, '2017-10-05 19:04:36', '2017-10-05 19:04:36', NULL),
(11, 73, NULL, NULL, NULL, 2, 2, 2027, 2017, '2017-10-05 19:05:12', '2017-10-05 19:05:12', NULL),
(12, 73, NULL, NULL, NULL, 2, 2, 2027, 2017, '2017-10-05 19:17:37', '2017-10-05 19:17:37', NULL),
(13, 73, NULL, NULL, NULL, 2, 2, 2027, 2017, '2017-10-05 19:19:43', '2017-10-05 19:19:43', NULL),
(14, 73, NULL, NULL, NULL, 2, 2, 2027, 2017, '2017-10-05 19:20:59', '2017-10-05 19:20:59', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `reps`
--

CREATE TABLE `reps` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `surname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `firstname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `middlename` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `passport` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `designation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `signature` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `reps`
--

INSERT INTO `reps` (`id`, `title`, `surname`, `firstname`, `middlename`, `passport`, `designation`, `signature`, `company_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Dr.', 'John', 'Paul', 'Tayo', 'users/client/NMS1508225571.jpg', 'Director', 'img/default-avatar.png', 2, '2017-06-01 13:00:30', '2017-10-17 10:32:51', NULL),
(2, 'Mr', 'Obadina', 'Basil', 'Chidiebere', 'img/default-avatar.png', 'H.O.D ICT', 'img/default-avatar.png', 2, '2017-06-01 13:00:30', '2017-06-06 12:58:30', '2017-06-07 02:00:00'),
(3, 'Miss', 'Adams', 'Francin', 'Tochukwu', 'users/client/NMS1507885945.jpg', 'ICT H.O.D', NULL, 2, '2017-06-07 12:54:39', '2017-10-13 12:12:25', NULL),
(4, 'Mr', 'Onaghise', 'William', 'O.', NULL, 'Head, IT', NULL, 93, '2017-06-22 11:31:09', '2017-06-22 11:31:09', NULL),
(5, 'mISS', 'Adams', 'Tochi', 'A.', NULL, 'Head, PR', NULL, 93, '2017-06-22 11:31:09', '2017-06-22 11:31:09', NULL),
(6, 'Mr', 'Onaghise', 'William', 'O.', NULL, 'Head, IT', NULL, 93, '2017-06-22 11:31:43', '2017-06-22 11:31:43', NULL),
(7, 'Miss', 'Adams', 'Tochi', 'A.', NULL, 'Head, PR', NULL, 93, '2017-06-22 11:31:43', '2017-06-22 11:31:43', NULL),
(8, 'Mr', 'Lukman', 'Joe', 'J.', NULL, 'CEO', NULL, 1, '2018-12-05 15:15:05', '2018-12-05 15:15:05', NULL),
(9, 'Mrs', 'James', 'Paulina', 'J.', NULL, 'COO', NULL, 1, '2018-12-05 15:15:06', '2018-12-05 15:15:06', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Editor', 'web', '2017-08-15 19:45:36', '2017-08-15 19:45:36'),
(2, 'Chief', 'web', '2017-08-15 19:46:35', '2017-08-16 12:05:01'),
(3, 'Engineer', 'web', '2017-08-16 10:53:39', '2017-08-16 10:53:39'),
(4, 'Executive Vice Chairman (EVC)', 'web', '2017-08-16 11:00:21', '2017-08-29 15:11:01'),
(5, 'Senior Manager, FCNS', 'web', '2017-08-22 16:51:26', '2017-08-22 16:51:26'),
(6, 'Recommend Numbering Allocation (HFCNS)', 'web', '2017-08-22 16:52:47', '2017-09-11 15:17:15'),
(7, 'Validate Numbering Allocation (DTS)', 'web', '2017-08-22 16:53:13', '2017-09-11 15:17:56'),
(8, 'Endorse Numbering Allocation (EC, Technical Services)', 'web', '2017-08-22 16:53:58', '2017-09-11 15:18:41'),
(9, 'Approvers', 'web', '2017-08-29 12:11:07', '2017-08-29 12:11:07'),
(10, 'Prepare Numbering Allocation (MTS/SMTS)', 'web', '2017-09-11 15:06:25', '2017-09-11 15:06:25'),
(11, 'Approve Numbering Allocation (EVC)', 'web', '2017-09-11 15:19:32', '2017-09-11 15:19:32'),
(12, 'Admin', 'web', '2017-11-14 19:34:43', '2017-11-14 19:34:43');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 4),
(2, 4),
(2, 12),
(3, 4),
(4, 4),
(5, 4),
(6, 2),
(6, 4),
(7, 4),
(9, 4),
(10, 4),
(11, 4),
(12, 4),
(13, 4),
(14, 4),
(15, 4),
(18, 4),
(19, 4),
(19, 9),
(21, 4),
(24, 4),
(25, 4),
(26, 4),
(27, 4),
(27, 9),
(28, 4),
(29, 4),
(33, 4),
(34, 4),
(34, 9),
(35, 4),
(37, 4),
(37, 12),
(38, 4),
(39, 4),
(40, 4),
(41, 4),
(41, 12),
(43, 4),
(44, 4),
(45, 4),
(46, 4),
(46, 12),
(47, 4),
(48, 4),
(49, 4),
(50, 2),
(50, 4),
(50, 12),
(52, 4),
(53, 4),
(54, 4),
(55, 4),
(56, 4),
(57, 4),
(58, 4),
(59, 4),
(60, 4),
(61, 4),
(62, 4),
(63, 4),
(64, 4),
(65, 4),
(66, 4),
(67, 4),
(69, 4),
(70, 4),
(71, 4),
(72, 4),
(72, 12),
(74, 4),
(75, 4),
(77, 2),
(77, 4),
(77, 12),
(79, 4),
(80, 4),
(81, 4),
(82, 4),
(83, 4),
(83, 12),
(84, 4),
(85, 4),
(86, 4),
(87, 4),
(88, 4),
(89, 4),
(91, 4),
(94, 4),
(95, 4),
(98, 4),
(100, 4),
(102, 4),
(103, 4),
(104, 4),
(105, 4),
(106, 4),
(107, 4),
(108, 4),
(108, 12),
(109, 4),
(111, 4),
(112, 4),
(114, 4),
(115, 4),
(115, 12),
(117, 4),
(119, 4),
(120, 4),
(120, 12),
(122, 4),
(123, 4),
(124, 4),
(125, 4),
(126, 4),
(128, 4),
(128, 5),
(128, 10),
(128, 12),
(129, 4),
(129, 6),
(130, 4),
(131, 4),
(131, 7),
(132, 4),
(132, 8),
(133, 4),
(133, 11),
(134, 4),
(135, 4),
(136, 4),
(137, 4),
(138, 4),
(139, 4),
(140, 4),
(141, 4),
(142, 4),
(145, 4);

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `last_updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `last_updated_by`) VALUES
(1, 'Data', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2017-07-19 13:55:39', 2017, NULL),
(3, 'Voice', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2017-07-19 14:04:30', 2017, NULL),
(7, 'Voice and Data', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2017-10-17 07:03:31', 2017, NULL),
(9, 'Others', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2017-10-17 07:04:00', 2017, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `short_code_renewals`
--

CREATE TABLE `short_code_renewals` (
  `id` int(10) UNSIGNED NOT NULL,
  `application_short_id` int(11) DEFAULT NULL,
  `doc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `short_code_renewals`
--

INSERT INTO `short_code_renewals` (`id`, `application_short_id`, `doc`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 50, 'uploads/molcom1519138832.pdf', '2018-02-20 14:00:32', '2018-02-20 14:00:32', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `short_code_services`
--

CREATE TABLE `short_code_services` (
  `id` int(10) UNSIGNED NOT NULL,
  `application_short_id` int(11) DEFAULT NULL,
  `doc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `services` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `short_code_services`
--

INSERT INTO `short_code_services` (`id`, `application_short_id`, `doc`, `services`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 50, 'uploads/molcom1519140222.pdf', 'Sports', '2018-02-20 14:23:42', '2018-02-20 14:23:42', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `taxes`
--

CREATE TABLE `taxes` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` double(12,2) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `last_updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `taxes`
--

INSERT INTO `taxes` (`id`, `name`, `value`, `created_by`, `last_updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'VAT', 5.00, 2, 2, '2017-05-11 23:40:54', '2017-05-18 14:05:50', '2017-05-18 14:05:50'),
(2, 'Service Charges', 10.00, 2, 2, '2017-05-11 23:50:47', '2017-05-18 14:05:19', NULL),
(3, 'Admin Fee', 5.00, 2, 2, '2017-05-15 14:45:34', '2017-05-18 12:30:30', NULL),
(4, 'del', 32.20, 2, 2, '2017-05-18 12:31:38', '2017-05-18 12:32:04', '2017-05-18 12:32:04'),
(5, 'VAT', 10.00, 2, 2, '2017-06-15 15:50:00', '2017-06-15 15:50:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `telecom_partners`
--

CREATE TABLE `telecom_partners` (
  `id` int(10) UNSIGNED NOT NULL,
  `company` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `agreement` tinyint(1) NOT NULL,
  `agreement_doc` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `application_number_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `last_updated_by` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `user_type_id` int(11) NOT NULL,
  `mobile_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `picture` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  `manager_id` int(11) DEFAULT NULL,
  `login_times` int(11) NOT NULL DEFAULT '0',
  `last_logged_in_time` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phonecode` int(11) NOT NULL,
  `appUserId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `appUsername` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `appUserType` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `appDateCreated` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `appFirstName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `appLastName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `appMiddleName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `appActive` tinyint(1) DEFAULT NULL,
  `appEmailVerified` tinyint(1) DEFAULT NULL,
  `appPhoneVerified` tinyint(1) DEFAULT NULL,
  `appImage` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `appTour` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `appCreatedBy` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `appOrganizationId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `appOrganizationShortName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `appOrganizationDescription` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `appOrganizationGroup` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `appOrganizationLongName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `appLogoPath` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `created_by`, `last_updated_by`, `deleted_at`, `user_type_id`, `mobile_no`, `picture`, `department_id`, `manager_id`, `login_times`, `last_logged_in_time`, `phonecode`, `appUserId`, `appUsername`, `appUserType`, `appDateCreated`, `appFirstName`, `appLastName`, `appMiddleName`, `appActive`, `appEmailVerified`, `appPhoneVerified`, `appImage`, `appTour`, `appCreatedBy`, `appOrganizationId`, `appOrganizationShortName`, `appOrganizationDescription`, `appOrganizationGroup`, `appOrganizationLongName`, `appLogoPath`) VALUES
(1, 'Abiodun Sulaiman', 'abiodunsulaiman694@gmail.com', '', 'TaJkGmWJfp4mCgPNmC1Uj3PTs3TRiFAwL0kwKVvp6wwyUR1Do7CHCiwpgvF7', '2018-11-21 13:12:53', '2019-02-25 10:37:40', NULL, NULL, NULL, 1, '+2348030666858', '', NULL, NULL, 9, '2019-02-25 11:37:40', 0, 'd401b410-028c-47b9-a8a9-bee16bdcdefd', 'molcom', 'public', '2018-11-07T02:16:11.688+0000', 'Abiodun', 'Sulaiman', 'Ademola', 1, 1, 0, NULL, NULL, 'molcom', '9bb0a212-902a-456c-95d0-0c4f512e37e3', 'MOLCOM', NULL, 'contractor', NULL, NULL),
(2, 'Staff Number', 'hello@abiodun.me', '', 'Wniippvd4v8QX9Sr9ej9X1AdICNjYSGEWYMI8aDRm3ZwRDWfWXunWnmEmull', '2018-11-21 14:12:40', '2019-02-25 08:16:44', NULL, NULL, NULL, 2, '08030666858', '', NULL, NULL, 16, '2019-02-25 09:16:44', 0, 'cccdbab4-6595-45cf-88cc-408cbcbce2e3', 'hello@abiodun.me', 'private', '2018-11-21T13:35:21.510+0000', 'Staff', 'Number', 'Mol', 1, 1, 0, NULL, NULL, 'System', 'numbering', 'NUMBERING', NULL, 'collaborator', 'NUMBERING', NULL),
(3, 'James Akinniranye', 'james.akinniranye@encentralsolutions.com', '', 'Ks6qVvHlgjp7TBRQWhvqneljvgrYmX2CnK7OtSUVPrQ9l8Faamijeu01Y3qZ', '2018-11-28 11:56:48', '2018-12-03 20:38:19', NULL, NULL, NULL, 2, '08064715807', '', NULL, NULL, 4, '2018-12-03 21:38:19', 0, 'fff022c9-5490-41e7-9cd4-9e22a247405b', 'finance_kiames', 'private', '2018-11-07T14:00:31.332+0000', 'James', 'Akinniranye', '', 1, 1, 0, NULL, NULL, 'system', 'ncc', 'NCC', 'Nigerian Communications Commission ', 'system', 'Nigerian Communications Commission ', '2018-07\\chBLCTHEPC______image3915267384924475698.png'),
(4, ' ', 'numbering_admin@gmail.com', '', 'JPDoWP51ll9YjwDNMZu2piQfqhqAfTD8GxpsUBoKNOREQIscptRuEECYUsTq', '2019-02-22 09:44:47', '2019-02-22 09:47:48', NULL, NULL, NULL, 2, NULL, '', NULL, NULL, 3, '2019-02-22 10:47:48', 0, 'numbering_admin', 'numbering_admin', 'private', '2018-07-28T02:05:13.224+0000', NULL, NULL, NULL, 1, 1, 0, NULL, NULL, 'System', 'numbering', 'NUMBERING', NULL, 'collaborator', 'NUMBERING', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_types`
--

CREATE TABLE `user_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_types`
--

INSERT INTO `user_types` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Client', '2018-11-20 23:00:00', NULL, NULL),
(2, 'Admin', '2018-11-20 23:00:00', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activity_log_log_name_index` (`log_name`);

--
-- Indexes for table `applications`
--
ALTER TABLE `applications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `application_extras`
--
ALTER TABLE `application_extras`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `application_histories`
--
ALTER TABLE `application_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `application_ispcs`
--
ALTER TABLE `application_ispcs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `application_licenses`
--
ALTER TABLE `application_licenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `application_numbers`
--
ALTER TABLE `application_numbers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `application_shorts`
--
ALTER TABLE `application_shorts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `application_statuses`
--
ALTER TABLE `application_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `approval_stages`
--
ALTER TABLE `approval_stages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `approval_stage_checklist`
--
ALTER TABLE `approval_stage_checklist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `approval_stage_number_type`
--
ALTER TABLE `approval_stage_number_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `approves`
--
ALTER TABLE `approves`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `areas`
--
ALTER TABLE `areas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bills`
--
ALTER TABLE `bills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bill_fees`
--
ALTER TABLE `bill_fees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bill_taxes`
--
ALTER TABLE `bill_taxes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `checklists`
--
ALTER TABLE `checklists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company_license`
--
ALTER TABLE `company_license`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coverage_areas`
--
ALTER TABLE `coverage_areas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `equipment`
--
ALTER TABLE `equipment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `existing_ispcs`
--
ALTER TABLE `existing_ispcs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fees`
--
ALTER TABLE `fees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `frequencies`
--
ALTER TABLE `frequencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `frequency_coverages`
--
ALTER TABLE `frequency_coverages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `interconnectors`
--
ALTER TABLE `interconnectors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice_details`
--
ALTER TABLE `invoice_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice_fees`
--
ALTER TABLE `invoice_fees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice_taxes`
--
ALTER TABLE `invoice_taxes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ispc_requirement_infos`
--
ALTER TABLE `ispc_requirement_infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `labels`
--
ALTER TABLE `labels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `label_number`
--
ALTER TABLE `label_number`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `licenses`
--
ALTER TABLE `licenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `license_statuses`
--
ALTER TABLE `license_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `license_types`
--
ALTER TABLE `license_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message_deletes`
--
ALTER TABLE `message_deletes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message_reads`
--
ALTER TABLE `message_reads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message_user`
--
ALTER TABLE `message_user`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `new_users`
--
ALTER TABLE `new_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `new_users_email_unique` (`email`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_id_notifiable_type_index` (`notifiable_id`,`notifiable_type`);

--
-- Indexes for table `numbering_applications`
--
ALTER TABLE `numbering_applications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `numbers`
--
ALTER TABLE `numbers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `number_exceptions`
--
ALTER TABLE `number_exceptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `number_logs`
--
ALTER TABLE `number_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `number_statuses`
--
ALTER TABLE `number_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `number_types`
--
ALTER TABLE `number_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `number_type_renewal_stage`
--
ALTER TABLE `number_type_renewal_stage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `number_type_service_stage`
--
ALTER TABLE `number_type_service_stage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `old_permissions`
--
ALTER TABLE `old_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_slug_unique` (`slug`);

--
-- Indexes for table `old_permission_role`
--
ALTER TABLE `old_permission_role`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `old_permission_user`
--
ALTER TABLE `old_permission_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permission_user_permission_id_index` (`permission_id`),
  ADD KEY `permission_user_user_id_index` (`user_id`);

--
-- Indexes for table `old_roles`
--
ALTER TABLE `old_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_slug_unique` (`slug`);

--
-- Indexes for table `old_role_user`
--
ALTER TABLE `old_role_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_user_role_id_index` (`role_id`),
  ADD KEY `role_user_user_id_index` (`user_id`);

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
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `porteds`
--
ALTER TABLE `porteds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_numbers`
--
ALTER TABLE `product_numbers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_shorts`
--
ALTER TABLE `product_shorts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `receipts`
--
ALTER TABLE `receipts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `renew_numbers`
--
ALTER TABLE `renew_numbers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reps`
--
ALTER TABLE `reps`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `short_code_renewals`
--
ALTER TABLE `short_code_renewals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `short_code_services`
--
ALTER TABLE `short_code_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `taxes`
--
ALTER TABLE `taxes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `telecom_partners`
--
ALTER TABLE `telecom_partners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_types`
--
ALTER TABLE `user_types`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=206;

--
-- AUTO_INCREMENT for table `applications`
--
ALTER TABLE `applications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `application_extras`
--
ALTER TABLE `application_extras`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `application_histories`
--
ALTER TABLE `application_histories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `application_ispcs`
--
ALTER TABLE `application_ispcs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `application_licenses`
--
ALTER TABLE `application_licenses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `application_numbers`
--
ALTER TABLE `application_numbers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=148;

--
-- AUTO_INCREMENT for table `application_shorts`
--
ALTER TABLE `application_shorts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `application_statuses`
--
ALTER TABLE `application_statuses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `approval_stages`
--
ALTER TABLE `approval_stages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `approval_stage_checklist`
--
ALTER TABLE `approval_stage_checklist`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `approval_stage_number_type`
--
ALTER TABLE `approval_stage_number_type`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `approves`
--
ALTER TABLE `approves`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `areas`
--
ALTER TABLE `areas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `bills`
--
ALTER TABLE `bills`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `bill_fees`
--
ALTER TABLE `bill_fees`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `bill_taxes`
--
ALTER TABLE `bill_taxes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `checklists`
--
ALTER TABLE `checklists`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `company_license`
--
ALTER TABLE `company_license`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=240;

--
-- AUTO_INCREMENT for table `coverage_areas`
--
ALTER TABLE `coverage_areas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `equipment`
--
ALTER TABLE `equipment`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;

--
-- AUTO_INCREMENT for table `existing_ispcs`
--
ALTER TABLE `existing_ispcs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `fees`
--
ALTER TABLE `fees`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `frequencies`
--
ALTER TABLE `frequencies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `frequency_coverages`
--
ALTER TABLE `frequency_coverages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `interconnectors`
--
ALTER TABLE `interconnectors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `invoice_details`
--
ALTER TABLE `invoice_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoice_fees`
--
ALTER TABLE `invoice_fees`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `invoice_taxes`
--
ALTER TABLE `invoice_taxes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `ispc_requirement_infos`
--
ALTER TABLE `ispc_requirement_infos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `labels`
--
ALTER TABLE `labels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `label_number`
--
ALTER TABLE `label_number`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `licenses`
--
ALTER TABLE `licenses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT for table `license_statuses`
--
ALTER TABLE `license_statuses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `license_types`
--
ALTER TABLE `license_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `message_deletes`
--
ALTER TABLE `message_deletes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `message_reads`
--
ALTER TABLE `message_reads`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `message_user`
--
ALTER TABLE `message_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=203;

--
-- AUTO_INCREMENT for table `new_users`
--
ALTER TABLE `new_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `numbering_applications`
--
ALTER TABLE `numbering_applications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `numbers`
--
ALTER TABLE `numbers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1613;

--
-- AUTO_INCREMENT for table `number_exceptions`
--
ALTER TABLE `number_exceptions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `number_logs`
--
ALTER TABLE `number_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `number_statuses`
--
ALTER TABLE `number_statuses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `number_types`
--
ALTER TABLE `number_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `number_type_renewal_stage`
--
ALTER TABLE `number_type_renewal_stage`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `number_type_service_stage`
--
ALTER TABLE `number_type_service_stage`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `old_permissions`
--
ALTER TABLE `old_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `old_permission_role`
--
ALTER TABLE `old_permission_role`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `old_permission_user`
--
ALTER TABLE `old_permission_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `old_roles`
--
ALTER TABLE `old_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `old_role_user`
--
ALTER TABLE `old_role_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=146;

--
-- AUTO_INCREMENT for table `porteds`
--
ALTER TABLE `porteds`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `product_numbers`
--
ALTER TABLE `product_numbers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;

--
-- AUTO_INCREMENT for table `product_shorts`
--
ALTER TABLE `product_shorts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `receipts`
--
ALTER TABLE `receipts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `renew_numbers`
--
ALTER TABLE `renew_numbers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `reps`
--
ALTER TABLE `reps`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `short_code_renewals`
--
ALTER TABLE `short_code_renewals`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `short_code_services`
--
ALTER TABLE `short_code_services`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `taxes`
--
ALTER TABLE `taxes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `telecom_partners`
--
ALTER TABLE `telecom_partners`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_types`
--
ALTER TABLE `user_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
-- Constraints for table `old_permission_role`
--
ALTER TABLE `old_permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `old_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `old_roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `old_permission_user`
--
ALTER TABLE `old_permission_user`
  ADD CONSTRAINT `permission_user_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `old_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `old_role_user`
--
ALTER TABLE `old_role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `old_roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

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



--    drop table if exists hibernate_sequence;
--
--    drop table if exists nms_roles;
--
--    drop table if exists nms_users;
--
--    drop table if exists privilege;
--
--    drop table if exists roles_privileges;
--
--    create table hibernate_sequence (
--       next_val bigint
--    ) engine=InnoDB;
--
--    insert into hibernate_sequence values ( 1 );
--
--    insert into hibernate_sequence values ( 1 );
--
--    create table nms_roles (
--       id bigint not null,
--        name varchar(255),
--        primary key (id)
--    ) engine=InnoDB;
--
--    create table nms_users (
--       user_id varchar(255) not null,
--        active bit not null,
--        email varchar(120) not null,
--        enabled bit not null,
--        encrypted_password varchar(255),
--        token varchar(255),
--        token_expired bit not null,
--        role_id bigint,
--        primary key (user_id)
--    ) engine=InnoDB;
--
--    create table privilege (
--       id bigint not null,
--        name varchar(255),
--        primary key (id)
--    ) engine=InnoDB;
--
--    create table roles_privileges (
--       role_id bigint not null,
--        privilege_id bigint not null
--    ) engine=InnoDB;
--
--    alter table nms_users
--       add constraint UK_sx1noxve18y1n65eep4frh76n unique (email);
--
--    alter table nms_users
--       add constraint FKls1k4lfb13k3ia6b80r947cfj
--       foreign key (role_id)
--       references nms_roles (id);
--
--    alter table roles_privileges
--       add constraint FK5yjwxw2gvfyu76j3rgqwo685u
--       foreign key (privilege_id)
--       references privilege (id);
--
--    alter table roles_privileges
--       add constraint FKrukbrp5992gup2f1xivyh3251
--       foreign key (role_id)
--       references nms_roles (id)
