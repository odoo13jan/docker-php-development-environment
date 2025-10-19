-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 19, 2025 at 02:56 PM
-- Server version: 10.6.23-MariaDB
-- PHP Version: 8.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `paynearu_newdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--

CREATE TABLE `activity_log` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `log_name` varchar(191) DEFAULT NULL,
  `description` text NOT NULL,
  `subject_type` varchar(191) DEFAULT NULL,
  `subject_id` bigint(20) UNSIGNED DEFAULT NULL,
  `causer_type` varchar(191) DEFAULT NULL,
  `causer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `properties` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `adjustments`
--

CREATE TABLE `adjustments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` varchar(191) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `adjustment_products`
--

CREATE TABLE `adjustment_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `adjustment_id` int(11) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `antibiotics`
--

CREATE TABLE `antibiotics` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `shortcut` varchar(191) DEFAULT NULL,
  `commercial_name` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `antibiotics`
--

INSERT INTO `antibiotics` (`id`, `name`, `shortcut`, `commercial_name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'GramStain Name', 'Short', 'Gram', '2023-09-15 16:39:42', '2024-08-15 23:41:47', '2024-08-15 23:41:47'),
(2, 'T', 'T', 'T', '2023-09-15 17:06:05', '2024-08-15 23:41:47', '2024-08-15 23:41:47'),
(3, 'Amoxicillin', 'AMX', 'Amoxicillin', '2024-08-15 23:44:07', '2024-08-15 23:44:07', NULL),
(4, 'Cefuroxime', 'XM', 'Cefuroxime', '2024-08-15 23:48:05', '2024-08-15 23:48:05', NULL),
(5, 'Penicillin G', 'P', 'Penicillin G', '2024-08-15 23:48:15', '2024-08-15 23:48:15', NULL),
(6, 'Amoxcillin-Clavulanic Acid', 'AMC', 'Amoxcillin-Clavulanic Acid', '2024-08-15 23:48:30', '2024-08-15 23:48:30', NULL),
(7, 'Ciprofloxacin', 'CL', 'Ciprofloxacin', '2024-08-15 23:48:39', '2024-08-15 23:48:39', NULL),
(8, 'Ofloxacin', 'OF', 'Ofloxacin', '2024-08-15 23:48:48', '2024-08-15 23:48:48', NULL),
(9, 'Co-Trimoxazole', 'SXT', 'Co-Trimoxazole', '2024-08-15 23:49:08', '2024-08-15 23:49:08', NULL),
(10, 'Cephalexin', 'CFM', 'Cephalexin', '2024-08-15 23:49:17', '2024-08-15 23:49:17', NULL),
(11, 'Cefazolin', 'CFZ', 'Cefazolin', '2024-08-15 23:49:28', '2024-08-15 23:49:28', NULL),
(12, 'Erythromycin', 'EM', 'Erythromycin', '2024-08-15 23:49:37', '2024-08-15 23:49:37', NULL),
(13, 'Chloramphenicol', 'C', 'Chloramphenicol', '2024-08-15 23:49:51', '2024-08-15 23:49:51', NULL),
(14, 'Nitrofurantoin', 'NL', 'Nitrofurantoin', '2024-08-15 23:50:02', '2024-08-15 23:50:02', NULL),
(15, 'Tetracycline', 'TE', 'Tetracycline', '2024-08-15 23:50:10', '2024-08-15 23:50:10', NULL),
(16, 'Azthromycin', 'AZ', 'Azthromycin', '2024-08-15 23:50:18', '2024-08-15 23:50:18', NULL),
(17, 'Cefazolin', 'CFZ', 'Cefazolin', '2024-08-15 23:51:21', '2024-08-15 23:51:49', '2024-08-15 23:51:49');

-- --------------------------------------------------------

--
-- Table structure for table `branches`
--

CREATE TABLE `branches` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `phone` varchar(191) DEFAULT NULL,
  `lat` double(8,2) DEFAULT NULL,
  `lng` double(8,2) DEFAULT NULL,
  `zoom_level` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `show_header_image` tinyint(1) NOT NULL DEFAULT 0,
  `show_watermark_image` tinyint(1) NOT NULL DEFAULT 0,
  `show_footer_image` tinyint(1) NOT NULL DEFAULT 0,
  `header_image` varchar(191) DEFAULT NULL,
  `watermark_image` varchar(191) DEFAULT NULL,
  `footer_image` varchar(191) DEFAULT NULL,
  `report_footer` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `branches`
--

INSERT INTO `branches` (`id`, `name`, `address`, `phone`, `lat`, `lng`, `zoom_level`, `deleted_at`, `created_at`, `updated_at`, `show_header_image`, `show_watermark_image`, `show_footer_image`, `header_image`, `watermark_image`, `footer_image`, `report_footer`) VALUES
(1, 'Shan Lab', 'hj', '+91', 27.77, 30.88, 8, NULL, '2023-09-14 17:08:20', '2025-06-13 18:10:19', 0, 0, 0, 'header_1.png', 'watermark_1.png', 'footer_1.png', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `branch_products`
--

CREATE TABLE `branch_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `branch_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `initial_quantity` double(8,2) NOT NULL DEFAULT 0.00,
  `alert_quantity` double(8,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Hematology', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(2, 'SEROLOGY', '2023-09-24 12:50:06', '2023-09-24 12:50:06'),
(4, 'CLINICAL PATHOLOGY', '2023-09-24 17:14:32', '2023-09-24 17:14:32'),
(5, 'MICROBIOLOGY', '2024-08-15 23:42:55', '2024-08-15 23:42:55'),
(6, 'BIOCHEMISTRY', '2024-08-16 00:14:52', '2024-08-16 00:14:52'),
(7, 'IMMUNOLOGY', '2024-08-16 11:59:46', '2024-08-16 11:59:46'),
(8, 'ROUTINE (PATHOLOGY)', '2024-08-18 12:11:00', '2024-08-18 12:11:00');

-- --------------------------------------------------------

--
-- Table structure for table `chats`
--

CREATE TABLE `chats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `from` int(10) UNSIGNED DEFAULT NULL,
  `to` int(10) UNSIGNED DEFAULT NULL,
  `message` text NOT NULL,
  `read` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contracts`
--

CREATE TABLE `contracts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `discount_type` int(11) DEFAULT NULL,
  `discount_percentage` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contract_prices`
--

CREATE TABLE `contract_prices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `contract_id` int(11) DEFAULT NULL,
  `priceable_type` varchar(191) DEFAULT NULL,
  `priceable_id` bigint(20) UNSIGNED DEFAULT NULL,
  `price` double(8,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `nationality` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `nationality`, `created_at`, `updated_at`) VALUES
(1, 'Afghanistan', 'Afghan', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(2, 'Albania', 'Albanian', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(3, 'Aland Islands', 'Aland Islander', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(4, 'Algeria', 'Algerian', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(5, 'American Samoa', 'American Samoan', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(6, 'Andorra', 'Andorran', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(7, 'Angola', 'Angolan', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(8, 'Anguilla', 'Anguillan', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(9, 'Antarctica', 'Antarctican', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(10, 'Antigua and Barbuda', 'Antiguan', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(11, 'Argentina', 'Argentinian', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(12, 'Armenia', 'Armenian', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(13, 'Aruba', 'Aruban', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(14, 'Australia', 'Australian', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(15, 'Austria', 'Austrian', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(16, 'Azerbaijan', 'Azerbaijani', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(17, 'Bahamas', 'Bahamian', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(18, 'Bahrain', 'Bahraini', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(19, 'Bangladesh', 'Bangladeshi', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(20, 'Barbados', 'Barbadian', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(21, 'Belarus', 'Belarusian', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(22, 'Belgium', 'Belgian', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(23, 'Belize', 'Belizean', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(24, 'Benin', 'Beninese', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(25, 'Saint Barthelemy', 'Saint Barthelmian', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(26, 'Bermuda', 'Bermudan', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(27, 'Bhutan', 'Bhutanese', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(28, 'Bolivia', 'Bolivian', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(29, 'Bosnia and Herzegovina', 'Bosnian / Herzegovinian', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(30, 'Botswana', 'Botswanan', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(31, 'Bouvet Island', 'Bouvetian', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(32, 'Brazil', 'Brazilian', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(33, 'British Indian Ocean Territory', 'British Indian Ocean Territory', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(34, 'Brunei Darussalam', 'Bruneian', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(35, 'Bulgaria', 'Bulgarian', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(36, 'Burkina Faso', 'Burkinabe', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(37, 'Burundi', 'Burundian', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(38, 'Cambodia', 'Cambodian', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(39, 'Cameroon', 'Cameroonian', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(40, 'Canada', 'Canadian', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(41, 'Cape Verde', 'Cape Verdean', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(42, 'Cayman Islands', 'Caymanian', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(43, 'Central African Republic', 'Central African', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(44, 'Chad', 'Chadian', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(45, 'Chile', 'Chilean', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(46, 'China', 'Chinese', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(47, 'Christmas Island', 'Christmas Islander', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(48, 'Cocos (Keeling) Islands', 'Cocos Islander', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(49, 'Colombia', 'Colombian', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(50, 'Comoros', 'Comorian', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(51, 'Congo', 'Congolese', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(52, 'Cook Islands', 'Cook Islander', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(53, 'Costa Rica', 'Costa Rican', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(54, 'Croatia', 'Croatian', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(55, 'Cuba', 'Cuban', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(56, 'Cyprus', 'Cypriot', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(57, 'Curaçao', 'Curacian', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(58, 'Czech Republic', 'Czech', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(59, 'Denmark', 'Danish', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(60, 'Djibouti', 'Djiboutian', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(61, 'Dominica', 'Dominican', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(62, 'Dominican Republic', 'Dominican', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(63, 'Ecuador', 'Ecuadorian', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(64, 'Egypt', 'Egyptian', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(65, 'El Salvador', 'Salvadoran', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(66, 'Equatorial Guinea', 'Equatorial Guinean', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(67, 'Eritrea', 'Eritrean', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(68, 'Estonia', 'Estonian', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(69, 'Ethiopia', 'Ethiopian', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(70, 'Falkland Islands (Malvinas)', 'Falkland Islander', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(71, 'Faroe Islands', 'Faroese', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(72, 'Fiji', 'Fijian', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(73, 'Finland', 'Finnish', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(74, 'France', 'French', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(75, 'French Guiana', 'French Guianese', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(76, 'French Polynesia', 'French Polynesian', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(77, 'French Southern and Antarctic Lands', 'French', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(78, 'Gabon', 'Gabonese', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(79, 'Gambia', 'Gambian', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(80, 'Georgia', 'Georgian', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(81, 'Germany', 'German', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(82, 'Ghana', 'Ghanaian', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(83, 'Gibraltar', 'Gibraltar', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(84, 'Guernsey', 'Guernsian', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(85, 'Greece', 'Greek', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(86, 'Greenland', 'Greenlandic', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(87, 'Grenada', 'Grenadian', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(88, 'Guadeloupe', 'Guadeloupe', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(89, 'Guam', 'Guamanian', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(90, 'Guatemala', 'Guatemalan', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(91, 'Guinea', 'Guinean', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(92, 'Guinea-Bissau', 'Guinea-Bissauan', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(93, 'Guyana', 'Guyanese', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(94, 'Haiti', 'Haitian', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(95, 'Heard and Mc Donald Islands', 'Heard and Mc Donald Islanders', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(96, 'Honduras', 'Honduran', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(97, 'Hong Kong', 'Hongkongese', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(98, 'Hungary', 'Hungarian', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(99, 'Iceland', 'Icelandic', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(100, 'India', 'Indian', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(101, 'Isle of Man', 'Manx', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(102, 'Indonesia', 'Indonesian', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(103, 'Iran', 'Iranian', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(104, 'Iraq', 'Iraqi', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(105, 'Ireland', 'Irish', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(106, 'Israel', 'Israeli', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(107, 'Italy', 'Italian', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(108, 'Ivory Coast', 'Ivory Coastian', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(109, 'Jersey', 'Jersian', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(110, 'Jamaica', 'Jamaican', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(111, 'Japan', 'Japanese', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(112, 'Jordan', 'Jordanian', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(113, 'Kazakhstan', 'Kazakh', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(114, 'Kenya', 'Kenyan', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(115, 'Kiribati', 'I-Kiribati', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(116, 'Korea(North Korea)', 'North Korean', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(117, 'Korea(South Korea)', 'South Korean', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(118, 'Kosovo', 'Kosovar', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(119, 'Kuwait', 'Kuwaiti', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(120, 'Kyrgyzstan', 'Kyrgyzstani', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(121, 'Lao PDR', 'Laotian', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(122, 'Latvia', 'Latvian', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(123, 'Lebanon', 'Lebanese', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(124, 'Lesotho', 'Basotho', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(125, 'Liberia', 'Liberian', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(126, 'Libya', 'Libyan', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(127, 'Liechtenstein', 'Liechtenstein', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(128, 'Lithuania', 'Lithuanian', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(129, 'Luxembourg', 'Luxembourger', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(130, 'Sri Lanka', 'Sri Lankian', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(131, 'Macau', 'Macanese', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(132, 'Macedonia', 'Macedonian', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(133, 'Madagascar', 'Malagasy', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(134, 'Malawi', 'Malawian', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(135, 'Malaysia', 'Malaysian', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(136, 'Maldives', 'Maldivian', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(137, 'Mali', 'Malian', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(138, 'Malta', 'Maltese', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(139, 'Marshall Islands', 'Marshallese', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(140, 'Martinique', 'Martiniquais', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(141, 'Mauritania', 'Mauritanian', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(142, 'Mauritius', 'Mauritian', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(143, 'Mayotte', 'Mahoran', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(144, 'Mexico', 'Mexican', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(145, 'Micronesia', 'Micronesian', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(146, 'Moldova', 'Moldovan', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(147, 'Monaco', 'Monacan', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(148, 'Mongolia', 'Mongolian', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(149, 'Montenegro', 'Montenegrin', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(150, 'Montserrat', 'Montserratian', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(151, 'Morocco', 'Moroccan', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(152, 'Mozambique', 'Mozambican', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(153, 'Myanmar', 'Myanmarian', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(154, 'Namibia', 'Namibian', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(155, 'Nauru', 'Nauruan', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(156, 'Nepal', 'Nepalese', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(157, 'Netherlands', 'Dutch', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(158, 'Netherlands Antilles', 'Dutch Antilier', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(159, 'New Caledonia', 'New Caledonian', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(160, 'New Zealand', 'New Zealander', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(161, 'Nicaragua', 'Nicaraguan', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(162, 'Niger', 'Nigerien', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(163, 'Nigeria', 'Nigerian', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(164, 'Niue', 'Niuean', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(165, 'Norfolk Island', 'Norfolk Islander', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(166, 'Northern Mariana Islands', 'Northern Marianan', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(167, 'Norway', 'Norwegian', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(168, 'Oman', 'Omani', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(169, 'Pakistan', 'Pakistani', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(170, 'Palau', 'Palauan', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(171, 'Palestine', 'Palestinian', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(172, 'Panama', 'Panamanian', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(173, 'Papua New Guinea', 'Papua New Guinean', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(174, 'Paraguay', 'Paraguayan', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(175, 'Peru', 'Peruvian', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(176, 'Philippines', 'Filipino', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(177, 'Pitcairn', 'Pitcairn Islander', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(178, 'Poland', 'Polish', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(179, 'Portugal', 'Portuguese', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(180, 'Puerto Rico', 'Puerto Rican', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(181, 'Qatar', 'Qatari', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(182, 'Reunion Island', 'Reunionese', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(183, 'Romania', 'Romanian', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(184, 'Russian', 'Russian', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(185, 'Rwanda', 'Rwandan', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(186, 'Saint Kitts and Nevis', 'Kittitian/Nevisian', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(187, 'Saint Martin (French part)', 'St. Martian(French)', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(188, 'Sint Maarten (Dutch part)', 'St. Martian(Dutch)', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(189, 'Saint Pierre and Miquelon', 'St. Pierre and Miquelon', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(190, 'Saint Vincent and the Grenadines', 'Saint Vincent and the Grenadines', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(191, 'Samoa', 'Samoan', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(192, 'San Marino', 'Sammarinese', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(193, 'Sao Tome and Principe', 'Sao Tomean', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(194, 'Saudi Arabia', 'Saudi Arabian', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(195, 'Senegal', 'Senegalese', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(196, 'Serbia', 'Serbian', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(197, 'Seychelles', 'Seychellois', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(198, 'Sierra Leone', 'Sierra Leonean', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(199, 'Singapore', 'Singaporean', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(200, 'Slovakia', 'Slovak', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(201, 'Slovenia', 'Slovenian', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(202, 'Solomon Islands', 'Solomon Island', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(203, 'Somalia', 'Somali', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(204, 'South Africa', 'South African', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(205, 'South Georgia and the South Sandwich', 'South Georgia and the South Sandwich', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(206, 'South Sudan', 'South Sudanese', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(207, 'Spain', 'Spanish', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(208, 'Saint Helena', 'St. Helenian', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(209, 'Sudan', 'Sudanese', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(210, 'Suriname', 'Surinamese', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(211, 'Svalbard and Jan Mayen', 'Svalbardian/Jan Mayenian', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(212, 'Swaziland', 'Swazi', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(213, 'Sweden', 'Swedish', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(214, 'Switzerland', 'Swiss', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(215, 'Syria', 'Syrian', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(216, 'Taiwan', 'Taiwanese', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(217, 'Tajikistan', 'Tajikistani', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(218, 'Tanzania', 'Tanzanian', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(219, 'Thailand', 'Thai', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(220, 'Timor-Leste', 'Timor-Lestian', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(221, 'Togo', 'Togolese', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(222, 'Tokelau', 'Tokelaian', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(223, 'Tonga', 'Tongan', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(224, 'Trinidad and Tobago', 'Trinidadian/Tobagonian', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(225, 'Tunisia', 'Tunisian', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(226, 'Turkey', 'Turkish', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(227, 'Turkmenistan', 'Turkmen', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(228, 'Turks and Caicos Islands', 'Turks and Caicos Islands', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(229, 'Tuvalu', 'Tuvaluan', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(230, 'Uganda', 'Ugandan', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(231, 'Ukraine', 'Ukrainian', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(232, 'United Arab Emirates', 'Emirati', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(233, 'United Kingdom', 'British', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(234, 'United States', 'American', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(235, 'US Minor Outlying Islands', 'US Minor Outlying Islander', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(236, 'Uruguay', 'Uruguayan', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(237, 'Uzbekistan', 'Uzbek', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(238, 'Vanuatu', 'Vanuatuan', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(239, 'Venezuela', 'Venezuelan', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(240, 'Vietnam', 'Vietnamese', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(241, 'Virgin Islands (U.S.)', 'American Virgin Islander', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(242, 'Vatican City', 'Vatican', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(243, 'Wallis and Futuna Islands', 'Wallisian/Futunan', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(244, 'Western Sahara', 'Sahrawian', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(245, 'Yemen', 'Yemeni', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(246, 'Zambia', 'Zambian', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(247, 'Zimbabwe', 'Zimbabwean', '2023-09-14 17:08:20', '2023-09-14 17:08:20');

-- --------------------------------------------------------

--
-- Table structure for table `cultures`
--

CREATE TABLE `cultures` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `sample_type` varchar(191) DEFAULT NULL,
  `precautions` text DEFAULT NULL,
  `price` double DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cultures`
--

INSERT INTO `cultures` (`id`, `name`, `sample_type`, `precautions`, `price`, `deleted_at`, `created_at`, `updated_at`, `category_id`) VALUES
(1, 'Blood Culture', NULL, NULL, 100, '2024-08-15 23:42:06', '2023-09-14 17:08:20', '2024-08-15 23:42:06', 1),
(2, 'REPORT ON BLOOD SUGAR ESTIMATION', 'BLood', 'NILL', 500, '2024-08-15 23:42:06', '2023-09-15 16:37:52', '2024-08-15 23:42:06', 1),
(3, 'safa', 'sdf', NULL, 500, '2024-08-15 23:42:06', '2023-09-19 22:24:20', '2024-08-15 23:42:06', 1),
(4, 'THROAT SWAB CULTURE AND SENSITIVITY', '-', NULL, 10, NULL, '2024-08-15 23:43:40', '2024-08-15 23:54:12', 5),
(5, 'SPUTUM FOR CULTURE AND SENSITIVITY', '-', NULL, 10, NULL, '2024-08-15 23:54:02', '2024-08-15 23:54:02', 5),
(6, 'SEMEN CULTURE & SENSITIVITY', '-', NULL, 10, NULL, '2024-08-15 23:54:27', '2024-08-15 23:54:27', 5),
(7, 'MOTION FOR CULTURE', '-', NULL, 10, NULL, '2024-08-15 23:54:49', '2024-08-15 23:54:49', 5),
(8, 'CULTURE AND SENSITIVITY URINE', '-', NULL, 100, NULL, '2024-08-16 00:01:23', '2024-08-16 00:01:23', 5),
(9, 'CULTURE AND SENSITIVITY', '--', NULL, 10, NULL, '2024-08-16 00:01:37', '2024-08-16 00:01:37', 5),
(10, 'BLOOD CULTURE AND SENSITIVITY', '-', NULL, 10, NULL, '2024-08-16 00:12:20', '2024-08-16 00:12:20', 5),
(11, 'PUS CULTURE AND SENSITIVITY', 'PUS', NULL, 10, NULL, '2024-10-05 18:57:45', '2024-10-05 18:57:45', 2);

-- --------------------------------------------------------

--
-- Table structure for table `culture_comments`
--

CREATE TABLE `culture_comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `culture_id` int(11) DEFAULT NULL,
  `comment` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `culture_comments`
--

INSERT INTO `culture_comments` (`id`, `culture_id`, `comment`, `created_at`, `updated_at`) VALUES
(1, 3, 'Result Commets', '2023-09-19 22:24:20', '2023-09-19 22:24:20');

-- --------------------------------------------------------

--
-- Table structure for table `culture_options`
--

CREATE TABLE `culture_options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `value` varchar(191) DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `culture_options`
--

INSERT INTO `culture_options` (`id`, `value`, `parent_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(16, 'Gram staining', 0, '2024-08-15 23:41:55', '2023-09-19 22:35:13', '2024-08-15 23:41:55'),
(17, 'OPT ONe', 16, '2024-08-15 23:23:52', '2023-09-19 22:35:13', '2024-08-15 23:23:52'),
(18, 'NON', 16, '2024-08-15 23:23:52', '2023-09-19 22:37:45', '2024-08-15 23:23:52'),
(19, NULL, 16, '2024-08-15 23:23:52', '2023-09-19 22:37:50', '2024-08-15 23:23:52'),
(20, 'Plenty of pus cells, few GNB seen.', 16, NULL, '2024-08-15 23:23:52', '2024-08-15 23:23:52'),
(21, 'Plenty of pus cells, few GPB, few GNB seen.', 16, NULL, '2024-08-15 23:23:52', '2024-08-15 23:23:52'),
(22, 'Gram staining', 0, NULL, '2024-08-15 23:55:48', '2024-08-15 23:55:48'),
(23, 'Plenty of pus cell, few GPC in cluster seen.', 22, NULL, '2024-08-15 23:55:48', '2024-08-15 23:55:48'),
(24, 'Plenty of pus cells, few GNB seen.', 22, NULL, '2024-08-15 23:55:48', '2024-08-15 23:55:48'),
(25, 'Plenty of pus cells, few GPB, few GNB seen.', 22, NULL, '2024-08-15 23:55:48', '2024-08-15 23:55:48'),
(26, 'Few pus cells, few GNB seen.', 22, NULL, '2024-08-15 23:55:48', '2024-08-15 23:55:48'),
(27, 'Few pus cells, no organism seen.', 22, NULL, '2024-08-15 23:55:48', '2024-08-15 23:55:48'),
(28, 'No pus cells, no organism seen.', 22, NULL, '2024-08-15 23:55:48', '2024-08-15 23:55:48'),
(29, 'Few pus cells, few GPC in cluster seen.', 22, NULL, '2024-08-15 23:55:48', '2024-08-15 23:55:48'),
(30, 'Few pus cells, few GPB, few GNB seen.', 22, NULL, '2024-08-15 23:55:49', '2024-08-15 23:55:49'),
(31, 'Organisms Isolated', 0, NULL, '2024-08-15 23:56:46', '2024-08-15 23:56:46'),
(32, 'Staphylococcus aureus grown in culture.', 31, NULL, '2024-08-15 23:56:46', '2024-08-15 23:56:46'),
(33, 'Pseudomonas aeruginosa grown in culture.', 31, NULL, '2024-08-15 23:56:46', '2024-08-15 23:56:46'),
(34, 'Candida sp grown in culture.', 31, NULL, '2024-08-15 23:56:46', '2024-08-15 23:56:46'),
(35, 'Proteus spp grown in culture.', 31, NULL, '2024-08-15 23:56:46', '2024-08-15 23:56:46'),
(36, 'Klebsiella spp grown in culture.', 31, NULL, '2024-08-15 23:56:46', '2024-08-15 23:56:46'),
(37, 'Escherichia coli grown in culture.', 31, NULL, '2024-08-15 23:56:46', '2024-08-15 23:56:46'),
(38, 'Enterococcus spp grown in culture.', 31, NULL, '2024-08-15 23:56:46', '2024-08-15 23:56:46'),
(39, 'NO GROWTH AFTER 48 HRS', 31, NULL, '2024-08-15 23:56:46', '2024-08-15 23:56:46'),
(40, 'Staphylococci grown in culture.', 31, NULL, '2024-08-15 23:56:46', '2024-08-15 23:56:46'),
(41, 'Colony Count', 0, NULL, '2024-08-16 00:05:13', '2024-08-16 00:05:13'),
(42, '-', 41, NULL, '2024-08-16 00:05:13', '2024-08-16 00:05:13'),
(43, 'More than 100000 CFU/ml', 41, NULL, '2024-08-16 00:05:13', '2024-08-16 00:05:13'),
(44, 'Less than 100000 CFU/ml', 41, NULL, '2024-08-16 00:05:13', '2024-08-16 00:05:13'),
(45, 'REPORT', 0, NULL, '2024-08-16 00:05:56', '2024-08-16 00:05:56'),
(46, 'Normal urethral flora (Insignificant) grown in culture.', 45, NULL, '2024-08-16 00:05:56', '2024-08-16 00:05:56'),
(47, 'NO GROWTH AFTER 48 HRS', 45, NULL, '2024-08-16 00:05:56', '2024-08-16 00:05:56'),
(48, 'Candida sp grown in culture', 45, NULL, '2024-08-16 00:05:56', '2024-08-16 00:05:56'),
(49, '-', 45, NULL, '2024-08-16 00:05:56', '2024-08-16 00:05:56'),
(50, 'Note (Optional)', 0, NULL, '2024-08-16 00:11:51', '2024-08-16 00:11:51'),
(51, 'Kindly correlate Clinically', 50, NULL, '2024-08-16 00:11:51', '2024-08-16 00:11:51'),
(52, 'Genitourinary infection', 50, NULL, '2024-08-16 00:11:51', '2024-08-16 00:11:51'),
(53, 'Mild genitourinary infection', 50, NULL, '2024-08-16 00:11:51', '2024-08-16 00:11:51'),
(54, 'Glycosuria', 50, NULL, '2024-08-16 00:11:51', '2024-08-16 00:11:51'),
(55, 'Ketonuria', 50, NULL, '2024-08-16 00:11:51', '2024-08-16 00:11:51'),
(56, 'Protinuria', 50, NULL, '2024-08-16 00:11:51', '2024-08-16 00:11:51'),
(57, 'Mild Proteinuria may be seen during pebrile illness', 50, NULL, '2024-08-16 00:11:51', '2024-08-16 00:11:51'),
(58, 'Protinuria', 50, NULL, '2024-08-16 00:11:51', '2024-08-16 00:11:51'),
(59, 'Jaundice', 50, NULL, '2024-08-16 00:11:51', '2024-08-16 00:11:51'),
(60, 'Microscopic Hematuria', 50, NULL, '2024-08-16 00:11:51', '2024-08-16 00:11:51'),
(61, 'Mild Colitis', 50, NULL, '2024-08-16 00:11:51', '2024-08-16 00:11:51'),
(62, 'Colitis', 50, NULL, '2024-08-16 00:11:51', '2024-08-16 00:11:51'),
(63, 'Repeat urine for BSBP after 48 hrs', 50, NULL, '2024-08-16 00:11:51', '2024-08-16 00:11:51'),
(64, 'Negative for any malignancy or dysplasia', 50, NULL, '2024-08-16 00:11:51', '2024-08-16 00:11:51'),
(65, 'Smear S/O inflammatory pathology', 50, NULL, '2024-08-16 00:11:51', '2024-08-16 00:11:51'),
(66, 'Smear S/o acute or chronic cervicitis', 50, NULL, '2024-08-16 00:11:51', '2024-08-16 00:11:51'),
(67, 'Diabetes Mellitus', 50, NULL, '2024-08-16 00:11:51', '2024-08-16 00:11:51'),
(68, 'Early Hyperthyroidism', 50, NULL, '2024-08-16 00:11:51', '2024-08-16 00:11:51'),
(69, 'Mild PMN leucocytosis', 50, NULL, '2024-08-16 00:11:51', '2024-08-16 00:11:51'),
(70, 'Mild Relative PMN leucocytosis', 50, NULL, '2024-08-16 00:11:51', '2024-08-16 00:11:51'),
(71, 'Relative Eosinophelia', 50, NULL, '2024-08-16 00:11:51', '2024-08-16 00:11:51'),
(72, 'Eosinophelia', 50, NULL, '2024-08-16 00:11:51', '2024-08-16 00:11:51'),
(73, 'Relative Iymphocytosis', 50, NULL, '2024-08-16 00:11:51', '2024-08-16 00:11:51'),
(74, 'Ketonuria may be seen during', 50, NULL, '2024-08-16 00:11:51', '2024-08-16 00:11:51'),
(75, 'Thrombocytosis', 50, NULL, '2024-08-16 00:11:51', '2024-08-16 00:11:51'),
(76, 'Thrombocytopenia', 50, NULL, '2024-08-16 00:11:51', '2024-08-16 00:11:51'),
(77, 'Diamorphic anemia', 50, NULL, '2024-08-16 00:11:51', '2024-08-16 00:11:51'),
(78, 'Early Hypothyroidism', 50, NULL, '2024-08-16 00:11:51', '2024-08-16 00:11:51'),
(79, 'Within Normal limits', 50, NULL, '2024-08-16 00:11:51', '2024-08-16 00:11:51'),
(80, 'Impaired glucose tolerence', 50, NULL, '2024-08-16 00:11:51', '2024-08-16 00:11:51'),
(81, 'May I suggest, widal Aggutin test', 50, NULL, '2024-08-16 00:11:51', '2024-08-16 00:11:51'),
(82, 'PMN leucocytosis may be seen during pregnancy', 50, NULL, '2024-08-16 00:11:51', '2024-08-16 00:11:51'),
(83, 'Kindly repeat the smear after treatment', 50, NULL, '2024-08-16 00:11:51', '2024-08-16 00:11:51'),
(84, 'Glycosuria witout hyperglyce may be seen during pregennancy', 50, NULL, '2024-08-16 00:11:51', '2024-08-16 00:11:51'),
(85, 'Negative for any intraepithelial lesion for malignancy', 50, NULL, '2024-08-16 00:11:51', '2024-08-16 00:11:51'),
(86, 'ASC-US', 50, NULL, '2024-08-16 00:11:51', '2024-08-16 00:11:51'),
(87, 'Relative Eosinophelia', 50, NULL, '2024-08-16 00:11:51', '2024-08-16 00:11:51'),
(88, 'AGC-NOS', 50, NULL, '2024-08-16 00:11:51', '2024-08-16 00:11:51'),
(89, 'AGC - favouring reactive process', 50, NULL, '2024-08-16 00:11:51', '2024-08-16 00:11:51');

-- --------------------------------------------------------

--
-- Table structure for table `culture_prices`
--

CREATE TABLE `culture_prices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `culture_id` int(11) NOT NULL DEFAULT 0,
  `branch_id` int(11) NOT NULL DEFAULT 0,
  `price` double(8,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `culture_prices`
--

INSERT INTO `culture_prices` (`id`, `culture_id`, `branch_id`, `price`, `created_at`, `updated_at`) VALUES
(10, 4, 1, 10.00, '2024-08-15 23:43:40', '2024-08-15 23:43:40'),
(13, 5, 1, 10.00, '2024-08-15 23:54:02', '2024-08-15 23:54:02'),
(16, 6, 1, 10.00, '2024-08-15 23:54:27', '2024-08-15 23:54:27'),
(19, 7, 1, 10.00, '2024-08-15 23:54:49', '2024-08-15 23:54:49'),
(22, 8, 1, 100.00, '2024-08-16 00:01:23', '2024-08-16 00:01:23'),
(25, 9, 1, 10.00, '2024-08-16 00:01:37', '2024-08-16 00:01:37'),
(28, 10, 1, 10.00, '2024-08-16 00:12:20', '2024-08-16 00:12:20'),
(31, 11, 1, 10.00, '2024-10-05 18:57:45', '2024-10-05 18:57:45');

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `iso` varchar(191) DEFAULT NULL,
  `name` varchar(191) DEFAULT NULL,
  `symbol` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `iso`, `name`, `symbol`) VALUES
(1, 'AED', 'United Arab Emirates Dirham', 'د.إ'),
(2, 'AFN', 'Afghan Afghani', '؋'),
(3, 'ALL', 'Albanian Lek', 'L'),
(4, 'AMD', 'Armenian Dram', 'դր.'),
(5, 'ANG', 'Netherlands Antillean Gulden', 'ƒ'),
(6, 'AOA', 'Angolan Kwanza', 'Kz'),
(7, 'ARS', 'Argentine Peso', '$'),
(8, 'AUD', 'Australian Dollar', '$'),
(9, 'AWG', 'Aruban Florin', 'ƒ'),
(10, 'AZN', 'Azerbaijani Manat', 'null'),
(11, 'BAM', 'Bosnia and Herzegovina Convertible Mark', 'КМ'),
(12, 'BBD', 'Barbadian Dollar', '$'),
(13, 'BDT', 'Bangladeshi Taka', '৳'),
(14, 'BGN', 'Bulgarian Lev', 'лв'),
(15, 'BHD', 'Bahraini Dinar', 'ب.د'),
(16, 'BIF', 'Burundian Franc', 'Fr'),
(17, 'BMD', 'Bermudian Dollar', '$'),
(18, 'BND', 'Brunei Dollar', '$'),
(19, 'BOB', 'Bolivian Boliviano', 'Bs.'),
(20, 'BRL', 'Brazilian Real', 'R$'),
(21, 'BSD', 'Bahamian Dollar', '$'),
(22, 'BTN', 'Bhutanese Ngultrum', 'Nu.'),
(23, 'BWP', 'Botswana Pula', 'P'),
(24, 'BYR', 'Belarusian Ruble', 'Br'),
(25, 'BZD', 'Belize Dollar', '$'),
(26, 'CAD', 'Canadian Dollar', '$'),
(27, 'CDF', 'Congolese Franc', 'Fr'),
(28, 'CHF', 'Swiss Franc', 'Fr'),
(29, 'CLF', 'Unidad de Fomento', 'UF'),
(30, 'CLP', 'Chilean Peso', '$'),
(31, 'CNY', 'Chinese Renminbi Yuan', '¥'),
(32, 'COP', 'Colombian Peso', '$'),
(33, 'CRC', 'Costa Rican Colón', '₡'),
(34, 'CUC', 'Cuban Convertible Peso', '$'),
(35, 'CUP', 'Cuban Peso', '$'),
(36, 'CVE', 'Cape Verdean Escudo', '$'),
(37, 'CZK', 'Czech Koruna', 'Kč'),
(38, 'DJF', 'Djiboutian Franc', 'Fdj'),
(39, 'DKK', 'Danish Krone', 'kr'),
(40, 'DOP', 'Dominican Peso', '$'),
(41, 'DZD', 'Algerian Dinar', 'د.ج'),
(42, 'EGP', 'Egyptian Pound', 'ج.م'),
(43, 'ERN', 'Eritrean Nakfa', 'Nfk'),
(44, 'ETB', 'Ethiopian Birr', 'Br'),
(45, 'EUR', 'Euro', '€'),
(46, 'FJD', 'Fijian Dollar', '$'),
(47, 'FKP', 'Falkland Pound', '£'),
(48, 'GBP', 'British Pound', '£'),
(49, 'GEL', 'Georgian Lari', 'ლ'),
(50, 'GHS', 'Ghanaian Cedi', '₵'),
(51, 'GIP', 'Gibraltar Pound', '£'),
(52, 'GMD', 'Gambian Dalasi', 'D'),
(53, 'GNF', 'Guinean Franc', 'Fr'),
(54, 'GTQ', 'Guatemalan Quetzal', 'Q'),
(55, 'GYD', 'Guyanese Dollar', '$'),
(56, 'HKD', 'Hong Kong Dollar', '$'),
(57, 'HNL', 'Honduran Lempira', 'L'),
(58, 'HRK', 'Croatian Kuna', 'kn'),
(59, 'HTG', 'Haitian Gourde', 'G'),
(60, 'HUF', 'Hungarian Forint', 'Ft'),
(61, 'IDR', 'Indonesian Rupiah', 'Rp'),
(62, 'ILS', 'Israeli New Sheqel', '₪'),
(63, 'INR', 'Indian Rupee', '₹'),
(64, 'IQD', 'Iraqi Dinar', 'ع.د'),
(65, 'IRR', 'Iranian Rial', '﷼'),
(66, 'ISK', 'Icelandic Króna', 'kr'),
(67, 'JMD', 'Jamaican Dollar', '$'),
(68, 'JOD', 'Jordanian Dinar', 'د.ا'),
(69, 'JPY', 'Japanese Yen', '¥'),
(70, 'KES', 'Kenyan Shilling', 'KSh'),
(71, 'KGS', 'Kyrgyzstani Som', 'som'),
(72, 'KHR', 'Cambodian Riel', '៛'),
(73, 'KMF', 'Comorian Franc', 'Fr'),
(74, 'KPW', 'North Korean Won', '₩'),
(75, 'KRW', 'South Korean Won', '₩'),
(76, 'KWD', 'Kuwaiti Dinar', 'د.ك'),
(77, 'KYD', 'Cayman Islands Dollar', '$'),
(78, 'KZT', 'Kazakhstani Tenge', '〒'),
(79, 'LAK', 'Lao Kip', '₭'),
(80, 'LBP', 'Lebanese Pound', 'ل.ل'),
(81, 'LKR', 'Sri Lankan Rupee', '₨'),
(82, 'LRD', 'Liberian Dollar', '$'),
(83, 'LSL', 'Lesotho Loti', 'L'),
(84, 'LTL', 'Lithuanian Litas', 'Lt'),
(85, 'LVL', 'Latvian Lats', 'Ls'),
(86, 'LYD', 'Libyan Dinar', 'ل.د'),
(87, 'MAD', 'Moroccan Dirham', 'د.م.'),
(88, 'MDL', 'Moldovan Leu', 'L'),
(89, 'MGA', 'Malagasy Ariary', 'Ar'),
(90, 'MKD', 'Macedonian Denar', 'ден'),
(91, 'MMK', 'Myanmar Kyat', 'K'),
(92, 'MNT', 'Mongolian Tögrög', '₮'),
(93, 'MOP', 'Macanese Pataca', 'P'),
(94, 'MRO', 'Mauritanian Ouguiya', 'UM'),
(95, 'MUR', 'Mauritian Rupee', '₨'),
(96, 'MVR', 'Maldivian Rufiyaa', 'MVR'),
(97, 'MWK', 'Malawian Kwacha', 'MK'),
(98, 'MXN', 'Mexican Peso', '$'),
(99, 'MYR', 'Malaysian Ringgit', 'RM'),
(100, 'MZN', 'Mozambican Metical', 'MTn'),
(101, 'NAD', 'Namibian Dollar', '$'),
(102, 'NGN', 'Nigerian Naira', '₦'),
(103, 'NIO', 'Nicaraguan Córdoba', 'C$'),
(104, 'NOK', 'Norwegian Krone', 'kr'),
(105, 'NPR', 'Nepalese Rupee', '₨'),
(106, 'NZD', 'New Zealand Dollar', '$'),
(107, 'OMR', 'Omani Rial', 'ر.ع.'),
(108, 'PAB', 'Panamanian Balboa', 'B/.'),
(109, 'PEN', 'Peruvian Nuevo Sol', 'S/.'),
(110, 'PGK', 'Papua New Guinean Kina', 'K'),
(111, 'PHP', 'Philippine Peso', '₱'),
(112, 'PKR', 'Pakistani Rupee', '₨'),
(113, 'PLN', 'Polish Złoty', 'zł'),
(114, 'PYG', 'Paraguayan Guaraní', '₲'),
(115, 'QAR', 'Qatari Riyal', 'ر.ق'),
(116, 'RON', 'Romanian Leu', 'Lei'),
(117, 'RSD', 'Serbian Dinar', 'РСД'),
(118, 'RUB', 'Russian Ruble', 'р.'),
(119, 'RWF', 'Rwandan Franc', 'FRw'),
(120, 'SAR', 'Saudi Riyal', 'ر.س'),
(121, 'SBD', 'Solomon Islands Dollar', '$'),
(122, 'SCR', 'Seychellois Rupee', '₨'),
(123, 'SDG', 'Sudanese Pound', '£'),
(124, 'SEK', 'Swedish Krona', 'kr'),
(125, 'SGD', 'Singapore Dollar', '$'),
(126, 'SHP', 'Saint Helenian Pound', '£'),
(127, 'SKK', 'Slovak Koruna', 'Sk'),
(128, 'SLL', 'Sierra Leonean Leone', 'Le'),
(129, 'SOS', 'Somali Shilling', 'Sh'),
(130, 'SRD', 'Surinamese Dollar', '$'),
(131, 'SSP', 'South Sudanese Pound', '£'),
(132, 'STD', 'São Tomé and Príncipe Dobra', 'Db'),
(133, 'SVC', 'Salvadoran Colón', '₡'),
(134, 'SYP', 'Syrian Pound', '£S'),
(135, 'SZL', 'Swazi Lilangeni', 'L'),
(136, 'THB', 'Thai Baht', '฿'),
(137, 'TJS', 'Tajikistani Somoni', 'ЅМ'),
(138, 'TMT', 'Turkmenistani Manat', 'T'),
(139, 'TND', 'Tunisian Dinar', 'د.ت'),
(140, 'TOP', 'Tongan Paʻanga', 'T$'),
(141, 'TRY', 'Turkish Lira', 'TL'),
(142, 'TTD', 'Trinidad and Tobago Dollar', '$'),
(143, 'TWD', 'New Taiwan Dollar', '$'),
(144, 'TZS', 'Tanzanian Shilling', 'Sh'),
(145, 'UAH', 'Ukrainian Hryvnia', '₴'),
(146, 'UGX', 'Ugandan Shilling', 'USh'),
(147, 'USD', 'United States Dollar', '$'),
(148, 'UYU', 'Uruguayan Peso', '$'),
(149, 'UZS', 'Uzbekistani Som', 'null'),
(150, 'VEF', 'Venezuelan Bolívar', 'Bs F'),
(151, 'VND', 'Vietnamese Đồng', '₫'),
(152, 'VUV', 'Vanuatu Vatu', 'Vt'),
(153, 'WST', 'Samoan Tala', 'T'),
(154, 'XAF', 'Central African Cfa Franc', 'Fr'),
(155, 'XAG', 'Silver (Troy Ounce)', 'oz t'),
(156, 'XAU', 'Gold (Troy Ounce)', 'oz t'),
(157, 'XCD', 'East Caribbean Dollar', '$'),
(158, 'XDR', 'Special Drawing Rights', 'SDR'),
(159, 'XOF', 'West African Cfa Franc', 'Fr'),
(160, 'XPF', 'Cfp Franc', 'Fr'),
(161, 'YER', 'Yemeni Rial', '﷼'),
(162, 'ZAR', 'South African Rand', 'R'),
(163, 'ZMK', 'Zambian Kwacha', 'ZK'),
(164, 'ZMW', 'Zambian Kwacha', 'ZK');

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(191) DEFAULT NULL,
  `name` varchar(191) DEFAULT NULL,
  `phone` varchar(191) DEFAULT NULL,
  `email` varchar(191) DEFAULT NULL,
  `address` varchar(191) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `commission` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `expense_category_id` int(11) DEFAULT NULL,
  `payment_method_id` int(11) DEFAULT NULL,
  `amount` double NOT NULL DEFAULT 0,
  `date` date DEFAULT NULL,
  `notes` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `doctor_id` int(11) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expense_categories`
--

CREATE TABLE `expense_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `expense_categories`
--

INSERT INTO `expense_categories` (`id`, `name`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Ref', NULL, '2023-09-20 22:03:32', '2023-09-20 22:03:32');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` text NOT NULL,
  `exception` text NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `branch_id` int(10) UNSIGNED DEFAULT NULL,
  `patient_id` int(11) DEFAULT NULL,
  `doctor_id` int(11) DEFAULT NULL,
  `contract_id` int(11) DEFAULT NULL,
  `discount` double(8,2) NOT NULL DEFAULT 0.00,
  `subtotal` double(8,2) NOT NULL DEFAULT 0.00,
  `total` double(8,2) NOT NULL DEFAULT 0.00,
  `paid` double(8,2) NOT NULL DEFAULT 0.00,
  `due` double(8,2) NOT NULL DEFAULT 0.00,
  `done` tinyint(1) NOT NULL DEFAULT 0,
  `report_pdf` text DEFAULT NULL,
  `receipt_pdf` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `barcode` varchar(191) DEFAULT NULL,
  `doctor_commission` double NOT NULL DEFAULT 0,
  `uploaded_report` tinyint(1) NOT NULL DEFAULT 0,
  `sample_collection_date` varchar(191) DEFAULT NULL,
  `signed_by` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `group_cultures`
--

CREATE TABLE `group_cultures` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `group_id` int(11) DEFAULT NULL,
  `culture_id` int(11) DEFAULT NULL,
  `price` double(8,2) DEFAULT NULL,
  `done` tinyint(1) NOT NULL DEFAULT 0,
  `comment` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `package_id` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `group_culture_options`
--

CREATE TABLE `group_culture_options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `group_culture_id` int(11) DEFAULT NULL,
  `culture_option_id` int(11) DEFAULT NULL,
  `value` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `group_culture_results`
--

CREATE TABLE `group_culture_results` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `group_culture_id` int(11) DEFAULT NULL,
  `antibiotic_id` int(11) DEFAULT NULL,
  `sensitivity` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `group_packages`
--

CREATE TABLE `group_packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `group_id` int(11) DEFAULT NULL,
  `package_id` int(11) DEFAULT NULL,
  `price` double(8,2) NOT NULL DEFAULT 0.00,
  `discount` double(8,2) NOT NULL DEFAULT 0.00,
  `commission` double(8,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `group_payments`
--

CREATE TABLE `group_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `group_id` int(11) DEFAULT NULL,
  `payment_method_id` int(11) DEFAULT NULL,
  `amount` double NOT NULL DEFAULT 0,
  `date` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `group_tests`
--

CREATE TABLE `group_tests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `group_id` int(11) DEFAULT NULL,
  `test_id` int(11) DEFAULT NULL,
  `price` double(8,2) DEFAULT NULL,
  `has_results` tinyint(1) NOT NULL DEFAULT 0,
  `has_entered` tinyint(1) NOT NULL DEFAULT 0,
  `done` tinyint(1) NOT NULL DEFAULT 0,
  `comment` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `package_id` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `group_test_results`
--

CREATE TABLE `group_test_results` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `group_test_id` int(11) DEFAULT NULL,
  `test_id` int(11) DEFAULT NULL,
  `result` varchar(191) DEFAULT NULL,
  `status` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `result_temp` text DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `iso` varchar(191) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `rtl` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `iso`, `active`, `created_at`, `updated_at`, `rtl`) VALUES
(1, 'ar', 1, NULL, NULL, 1),
(2, 'en', 1, NULL, NULL, 0),
(3, 'de', 1, NULL, NULL, 0),
(4, 'es', 1, NULL, NULL, 0),
(5, 'et', 1, NULL, NULL, 0),
(6, 'fa', 1, NULL, NULL, 1),
(7, 'fr', 1, NULL, NULL, 0),
(8, 'id', 1, NULL, NULL, 0),
(9, 'it', 1, NULL, NULL, 0),
(10, 'nl', 1, NULL, NULL, 0),
(11, 'de', 1, NULL, NULL, 0),
(12, 'pl', 1, NULL, NULL, 0),
(13, 'pt', 1, NULL, NULL, 0),
(14, 'ro', 1, NULL, NULL, 0),
(15, 'ru', 1, NULL, NULL, 0),
(16, 'th', 1, NULL, NULL, 0),
(17, 'tr', 1, NULL, NULL, 0),
(18, 'pt-br', 1, NULL, NULL, 0),
(19, 'zh-cn', 1, NULL, NULL, 0),
(20, 'zh-tw', 1, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(2, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(3, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(4, '2016_06_01_000004_create_oauth_clients_table', 1),
(5, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(6, '2020_06_291_023147_create_patients_table', 1),
(7, '2020_06_29_0231471_create_group_tests_table', 1),
(8, '2020_06_29_0231471_create_groups_table', 1),
(9, '2020_06_29_023147_create_antibiotics_table', 1),
(10, '2020_06_29_023147_create_cultures_table', 1),
(11, '2020_06_29_023147_create_currencies_table', 1),
(12, '2020_06_29_023147_create_doctors_table', 1),
(13, '2020_06_29_023147_create_failed_jobs_table', 1),
(14, '2020_06_29_023147_create_group_culture_results_table', 1),
(15, '2020_06_29_023147_create_group_cultures_table', 1),
(16, '2020_06_29_023147_create_group_test_results_table', 1),
(17, '2020_06_29_023147_create_password_resets_table', 1),
(18, '2020_06_29_023147_create_permissions_table', 1),
(19, '2020_06_29_023147_create_role_permissions_table', 1),
(20, '2020_06_29_023147_create_roles_table', 1),
(21, '2020_06_29_023147_create_settings_table', 1),
(22, '2020_06_29_023147_create_user_roles_table', 1),
(23, '2020_06_29_023147_create_users_table', 1),
(24, '2020_07_14_164944_create_chats_table', 1),
(25, '2020_07_19_0402311212_create_visits_table', 1),
(26, '2020_07_23_00134911_create_branches_table', 1),
(27, '2020_07_25_0846441_create_contracts_table', 1),
(28, '2020_07_26_174857_create_expenses_table', 1),
(29, '2020_07_26_180427_create_expense_categories_table', 1),
(30, '2020_09_19_01584112_create_component_options_table', 1),
(31, '2020_09_21_081815_create_tests_table', 1),
(32, '2020_09_21_090444_create_culture_options_table', 1),
(33, '2020_09_22_000304_create_activity_log_table', 1),
(34, '2020_09_23_06421111_create_group_culture_options', 1),
(35, '2020_09_28_005305_create_modules_table', 1),
(36, '2020_10_13_163657_create_languages_table', 1),
(37, '2021_01_07_055724_add_direction_to_languages_table', 1),
(38, '2021_03_11_152345_add_barcode_to_groups_table', 1),
(39, '2021_03_12_112340_add_commission_to_doctors', 1),
(40, '2021_03_12_120501_add_doctor_commission_to_groups_table', 1),
(41, '2021_03_12_121735_add_doctor_id_to_expenses_table', 1),
(42, '2021_03_13_032624_add_code_to_doctors_table', 1),
(43, '2021_03_13_175226_add_signature_to_users_table', 1),
(44, '2021_05_12_193953_add_package_id_to_group_tests_table', 1),
(45, '2021_05_12_194042_add_package_id_to_group_cultures_table', 1),
(46, '2021_05_28_105728_create_user_branches_table', 1),
(47, '2021_05_28_113458_create_test_prices_table', 1),
(48, '2021_05_28_113529_create_culture_prices_table', 1),
(49, '2021_05_28_125253_add_branch_id_to_visits_table', 1),
(50, '2021_05_28_142427_add_branch_id_to_expenses_table', 1),
(51, '2021_06_12_075326_create_test_reference_ranges_table', 1),
(52, '2021_06_12_184639_create_categories_table', 1),
(53, '2021_06_12_184720_add_category_id_to_tests_table', 1),
(54, '2021_06_12_184727_add_category_id_to_cultures_table', 1),
(55, '2021_06_13_171408_add_contract_id_to_patients_table', 1),
(56, '2021_06_13_184314_create_payment_methods_table', 1),
(57, '2021_06_13_184337_create_group_payments_table', 1),
(58, '2021_06_14_072123_create_packages_table', 1),
(59, '2021_06_14_072131_create_package_tests_table', 1),
(60, '2021_06_14_072309_create_group_packages_table', 1),
(61, '2021_06_14_080139_create_package_prices_table', 1),
(62, '2021_06_15_035744_create_visit_tests_table', 1),
(63, '2021_06_16_183823_add_uploaded_report_to_groups_table', 1),
(64, '2021_06_16_232212_create_tests_comments_table', 1),
(65, '2021_06_16_232219_create_cultures_comments_table', 1),
(66, '2021_06_25_235409_create_suppliers_table', 1),
(67, '2021_06_25_235539_create_products_table', 1),
(68, '2021_06_25_235942_create_purchases_table', 1),
(69, '2021_06_26_000131_create_purchase_products_table', 1),
(70, '2021_06_26_001001_create_purchase_payments_table', 1),
(71, '2021_06_27_125125_create_contract_prices_table', 1),
(72, '2021_07_09_025111_create_adjustments_table', 1),
(73, '2021_07_09_025123_create_adjustment_products_table', 1),
(74, '2021_07_09_034224_create_transfers_table', 1),
(75, '2021_07_09_034231_create_transfer_products_table', 1),
(76, '2021_07_09_123804_create_test_consumptions_table', 1),
(77, '2021_07_09_133358_create_product_consumptions_table', 1),
(78, '2021_07_17_033804_create_branch_products_table', 1),
(79, '2021_07_17_073127_add_sample_collection_date_to_groups_table', 1),
(80, '2021_07_22_040846_add_them_to_users_table', 1),
(81, '2021_07_22_055647_add_them_to_patients_table', 1),
(82, '2021_10_04_021711_add_discount_type_to_contracts_table', 1),
(83, '2021_10_22_022306_add_visit_address_to_visits_table', 1),
(84, '2021_10_26_082731_create_timezones_table', 1),
(85, '2021_10_27_040345_add_fields_to_patients_table', 1),
(86, '2021_10_27_045332_create_countries_table', 1),
(87, '2021_10_28_024423_add_fields_to_groups_table', 1),
(88, '2021_10_28_034114_add_avatar_to_users_table', 1),
(89, '2021_10_28_060759_add_to_branches_table', 1),
(90, '2021_10_29_070027_add_soft_deletes_to_users_table', 1),
(91, '2021_10_30_070706_create_jobs_table', 1),
(92, '2021_10_31_045402_add_last_activity_to_users_table', 1),
(93, '2021_10_31_051833_add_last_activity_to_patients_table', 1),
(94, '2021_10_31_103307_add_footer_to_branches_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

CREATE TABLE `modules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `modules`
--

INSERT INTO `modules` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Dashboard', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(2, 'categories', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(3, 'tests', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(4, 'cultures', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(5, 'packages', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(6, 'antibiotics', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(7, 'culture options', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(8, 'doctors', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(9, 'groups tests', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(10, 'patients', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(11, 'Medical reports', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(12, 'Reports', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(13, 'roles', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(14, 'users', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(15, 'price list', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(16, 'accounting reports', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(17, 'payment methods', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(18, 'Home visits', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(19, 'Branches', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(20, 'contracts', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(21, 'expense categories', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(22, 'Expenses', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(23, 'Backups', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(24, 'setting', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(25, 'Chat', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(26, 'Actvity logs', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(27, 'Translation', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(28, 'Suppliers', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(29, 'Products', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(30, 'Purchases', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(31, 'Adjustments', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(32, 'Transfers', '2023-09-14 17:08:20', '2023-09-14 17:08:20');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) NOT NULL,
  `secret` varchar(100) DEFAULT NULL,
  `provider` varchar(191) DEFAULT NULL,
  `redirect` text NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'lab Personal Access Client', 'qohDorb6rMxoRwXDb0tLytlqfMiVv49vbe78wiXP', NULL, 'http://localhost', 1, 0, 0, '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(2, NULL, 'lab Password Grant Client', 'S7gxpCCU6TEs6dwrX307EUl6S6JIWSPf2UeKggIO', 'users', 'http://localhost', 0, 1, 0, '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(3, NULL, 'lab Personal Access Client', '35DHhT07cdJQwuO9fS77s5CDCdlaQcnlX0Xowsu8', NULL, 'http://localhost', 1, 0, 0, '2023-09-14 17:08:21', '2023-09-14 17:08:21'),
(4, NULL, 'lab Password Grant Client', 'i2NHZPKjpLKppHQXh5cYLGeiISqZJgbnJWWsbaZy', 'users', 'http://localhost', 0, 1, 0, '2023-09-14 17:08:21', '2023-09-14 17:08:21');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(2, 3, '2023-09-14 17:08:21', '2023-09-14 17:08:21');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) NOT NULL,
  `access_token_id` varchar(100) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `shortcut` varchar(191) DEFAULT NULL,
  `price` double(8,2) NOT NULL DEFAULT 0.00,
  `precautions` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `package_prices`
--

CREATE TABLE `package_prices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `package_id` int(11) NOT NULL DEFAULT 0,
  `branch_id` int(11) NOT NULL DEFAULT 0,
  `price` double(8,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `package_tests`
--

CREATE TABLE `package_tests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `package_id` int(11) DEFAULT NULL,
  `testable_type` varchar(191) NOT NULL,
  `testable_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `package_tests`
--

INSERT INTO `package_tests` (`id`, `package_id`, `testable_type`, `testable_id`, `created_at`, `updated_at`) VALUES
(6, 2, 'App\\Models\\Test', 1194, '2024-10-05 18:27:25', '2024-10-05 18:27:25'),
(7, 2, 'App\\Models\\Test', 1197, '2024-10-05 18:27:25', '2024-10-05 18:27:25'),
(8, 2, 'App\\Models\\Test', 1199, '2024-10-05 18:27:25', '2024-10-05 18:27:25'),
(9, 2, 'App\\Models\\Test', 1229, '2024-10-05 18:27:25', '2024-10-05 18:27:25'),
(10, 2, 'App\\Models\\Test', 1248, '2024-10-05 18:27:25', '2024-10-05 18:27:25');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `patients`
--

CREATE TABLE `patients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(191) DEFAULT NULL,
  `name` varchar(191) DEFAULT NULL,
  `gender` varchar(191) DEFAULT NULL,
  `dob` varchar(191) DEFAULT NULL,
  `phone` varchar(191) DEFAULT NULL,
  `email` varchar(191) DEFAULT NULL,
  `address` varchar(191) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `contract_id` int(11) DEFAULT NULL,
  `theme` varchar(191) DEFAULT NULL,
  `country_id` varchar(191) DEFAULT NULL,
  `national_id` varchar(191) DEFAULT NULL,
  `passport_no` varchar(191) DEFAULT NULL,
  `avatar` varchar(191) DEFAULT NULL,
  `last_activity` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_methods`
--

CREATE TABLE `payment_methods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_methods`
--

INSERT INTO `payment_methods` (`id`, `name`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'UPI', NULL, '2023-09-15 00:51:13', '2023-09-15 00:51:13'),
(2, 'CASH', NULL, '2023-09-15 00:51:18', '2023-09-15 00:51:18');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `module_id` int(11) DEFAULT NULL,
  `name` varchar(191) DEFAULT NULL,
  `key` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `module_id`, `name`, `key`, `created_at`, `updated_at`) VALUES
(1, 1, 'View general statistics', 'view_general_statistics', NULL, NULL),
(2, 1, 'View income statistics', 'view_income_statistics', NULL, NULL),
(3, 1, 'View tests statistics', 'view_tests_statistics', NULL, NULL),
(4, 1, 'View best income packages', 'view_best_income_packages', NULL, NULL),
(5, 1, 'View best income tests', 'view_best_income_tests', NULL, NULL),
(6, 1, 'View best income cultures', 'view_best_income_cultures', NULL, NULL),
(7, 1, 'View online admins', 'view_online_admins', NULL, NULL),
(8, 1, 'View online patients', 'view_online_patients', NULL, NULL),
(9, 1, 'View today home visits', 'view_today_visits', NULL, NULL),
(10, 2, 'View', 'view_category', NULL, NULL),
(11, 2, 'Create', 'create_category', NULL, NULL),
(12, 2, 'Edit', 'edit_category', NULL, NULL),
(13, 2, 'Delete', 'delete_category', NULL, NULL),
(14, 3, 'View', 'view_test', NULL, NULL),
(15, 3, 'Create', 'create_test', NULL, NULL),
(16, 3, 'Edit', 'edit_test', NULL, NULL),
(17, 3, 'Delete', 'delete_test', NULL, NULL),
(18, 4, 'View', 'view_culture', NULL, NULL),
(19, 4, 'Create', 'create_culture', NULL, NULL),
(20, 4, 'Edit', 'edit_culture', NULL, NULL),
(21, 4, 'Delete', 'delete_culture', NULL, NULL),
(22, 5, 'View', 'view_package', NULL, NULL),
(23, 5, 'Create', 'create_package', NULL, NULL),
(24, 5, 'Edit', 'edit_package', NULL, NULL),
(25, 5, 'Delete', 'delete_package', NULL, NULL),
(26, 6, 'View', 'view_antibiotic', NULL, NULL),
(27, 6, 'Create', 'create_antibiotic', NULL, NULL),
(28, 6, 'Edit', 'edit_antibiotic', NULL, NULL),
(29, 6, 'Delete', 'delete_antibiotic', NULL, NULL),
(30, 7, 'View', 'view_culture_option', NULL, NULL),
(31, 7, 'Create', 'create_culture_option', NULL, NULL),
(32, 7, 'Edit', 'edit_culture_option', NULL, NULL),
(33, 7, 'Delete', 'delete_culture_option', NULL, NULL),
(34, 8, 'View', 'view_doctor', NULL, NULL),
(35, 8, 'Create', 'create_doctor', NULL, NULL),
(36, 8, 'Edit', 'edit_doctor', NULL, NULL),
(37, 8, 'Delete', 'delete_doctor', NULL, NULL),
(38, 9, 'View', 'view_group', NULL, NULL),
(39, 9, 'Create', 'create_group', NULL, NULL),
(40, 9, 'Edit', 'edit_group', NULL, NULL),
(41, 9, 'Delete', 'delete_group', NULL, NULL),
(42, 10, 'View', 'view_patient', NULL, NULL),
(43, 10, 'Create', 'create_patient', NULL, NULL),
(44, 10, 'Edit', 'edit_patient', NULL, NULL),
(45, 10, 'Delete', 'delete_patient', NULL, NULL),
(46, 11, 'View', 'view_medical_report', NULL, NULL),
(47, 11, 'Create', 'create_medical_report', NULL, NULL),
(48, 11, 'Edit', 'edit_medical_report', NULL, NULL),
(49, 11, 'Delete', 'delete_medical_report', NULL, NULL),
(50, 11, 'Sign', 'sign_medical_report', NULL, NULL),
(51, 12, 'View accounting report', 'view_accounting_report', NULL, NULL),
(52, 12, 'View doctor report', 'view_doctor_report', NULL, NULL),
(53, 12, 'View supplier report', 'view_supplier_report', NULL, NULL),
(54, 12, 'View purchase report', 'view_purchase_report', NULL, NULL),
(55, 12, 'View inventory report', 'view_inventory_report', NULL, NULL),
(56, 12, 'View product report', 'view_product_report', NULL, NULL),
(57, 13, 'View', 'view_role', NULL, NULL),
(58, 13, 'Create', 'create_role', NULL, NULL),
(59, 13, 'Edit', 'edit_role', NULL, NULL),
(60, 13, 'Delete', 'delete_role', NULL, NULL),
(61, 14, 'View', 'view_user', NULL, NULL),
(62, 14, 'Create', 'create_user', NULL, NULL),
(63, 14, 'Edit', 'edit_user', NULL, NULL),
(64, 14, 'Delete', 'delete_user', NULL, NULL),
(65, 15, 'View tests prices', 'view_test_prices', NULL, NULL),
(66, 15, 'update tests prices', 'update_test_prices', NULL, NULL),
(67, 15, 'View cultures prices', 'view_culture_prices', NULL, NULL),
(68, 15, 'Update cultures prices', 'update_culture_prices', NULL, NULL),
(69, 15, 'View packages prices', 'view_package_prices', NULL, NULL),
(70, 15, 'Update packages prices', 'update_package_prices', NULL, NULL),
(71, 16, 'View', 'view_accounting_reports', NULL, NULL),
(72, 16, 'Generate', 'generate_report_accounting', NULL, NULL),
(73, 17, 'View', 'view_payment_method', NULL, NULL),
(74, 17, 'Create', 'create_payment_method', NULL, NULL),
(75, 17, 'Edit', 'edit_payment_method', NULL, NULL),
(76, 17, 'Delete', 'delete_payment_method', NULL, NULL),
(77, 18, 'View', 'view_visit', NULL, NULL),
(78, 18, 'Create', 'create_visit', NULL, NULL),
(79, 18, 'Edit', 'edit_visit', NULL, NULL),
(80, 18, 'Delete', 'delete_visit', NULL, NULL),
(81, 19, 'View', 'view_branch', NULL, NULL),
(82, 19, 'Create', 'create_branch', NULL, NULL),
(83, 19, 'Edit', 'edit_branch', NULL, NULL),
(84, 19, 'Delete', 'delete_branch', NULL, NULL),
(85, 20, 'View', 'view_contract', NULL, NULL),
(86, 20, 'Create', 'create_contract', NULL, NULL),
(87, 20, 'Edit', 'edit_contract', NULL, NULL),
(88, 20, 'Delete', 'delete_contract', NULL, NULL),
(89, 21, 'View', 'view_expense_category', NULL, NULL),
(90, 21, 'Create', 'create_expense_category', NULL, NULL),
(91, 21, 'Edit', 'edit_expense_category', NULL, NULL),
(92, 21, 'Delete', 'delete_expense_category', NULL, NULL),
(93, 22, 'View', 'view_expense', NULL, NULL),
(94, 22, 'Create', 'create_expense', NULL, NULL),
(95, 22, 'Edit', 'edit_expense', NULL, NULL),
(96, 22, 'Delete', 'delete_expense', NULL, NULL),
(97, 23, 'View', 'view_backup', NULL, NULL),
(98, 23, 'Create', 'create_backup', NULL, NULL),
(99, 23, 'Delete', 'delete_backup', NULL, NULL),
(100, 24, 'Update', 'view_setting', NULL, NULL),
(101, 25, 'View', 'view_chat', NULL, NULL),
(102, 26, 'View', 'view_activity_log', NULL, NULL),
(103, 26, 'Clear', 'clear_activity_log', NULL, NULL),
(104, 27, 'View', 'view_translation', NULL, NULL),
(105, 27, 'Edit', 'edit_translation', NULL, NULL),
(106, 28, 'View', 'view_supplier', NULL, NULL),
(107, 28, 'Create', 'create_supplier', NULL, NULL),
(108, 28, 'Edit', 'edit_supplier', NULL, NULL),
(109, 28, 'Delete', 'delete_supplier', NULL, NULL),
(110, 29, 'View', 'view_product', NULL, NULL),
(111, 29, 'Create', 'create_product', NULL, NULL),
(112, 29, 'Edit', 'edit_product', NULL, NULL),
(113, 29, 'Delete', 'delete_product', NULL, NULL),
(114, 30, 'View', 'view_purchase', NULL, NULL),
(115, 30, 'Create', 'create_purchase', NULL, NULL),
(116, 30, 'Edit', 'edit_purchase', NULL, NULL),
(117, 30, 'Delete', 'delete_purchase', NULL, NULL),
(118, 31, 'View', 'view_adjustment', NULL, NULL),
(119, 31, 'Create', 'create_adjustment', NULL, NULL),
(120, 31, 'Edit', 'edit_adjustment', NULL, NULL),
(121, 31, 'Delete', 'delete_adjustment', NULL, NULL),
(122, 32, 'View', 'view_transfer', NULL, NULL),
(123, 32, 'Create', 'create_transfer', NULL, NULL),
(124, 32, 'Edit', 'edit_transfer', NULL, NULL),
(125, 32, 'Delete', 'delete_transfer', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `sku` varchar(191) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_consumptions`
--

CREATE TABLE `product_consumptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `branch_id` int(11) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `testable_type` varchar(191) DEFAULT NULL,
  `testable_id` bigint(20) UNSIGNED DEFAULT NULL,
  `quantity` double(8,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` varchar(191) DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL,
  `subtotal` double(8,2) NOT NULL DEFAULT 0.00,
  `tax` double(8,2) NOT NULL DEFAULT 0.00,
  `total` double(8,2) NOT NULL DEFAULT 0.00,
  `paid` double(8,2) NOT NULL DEFAULT 0.00,
  `due` double(8,2) NOT NULL DEFAULT 0.00,
  `note` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_payments`
--

CREATE TABLE `purchase_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `purchase_id` int(11) DEFAULT NULL,
  `date` varchar(191) DEFAULT NULL,
  `payment_method_id` varchar(191) DEFAULT NULL,
  `amount` double(8,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_products`
--

CREATE TABLE `purchase_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `purchase_id` int(11) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `price` double(8,2) NOT NULL DEFAULT 0.00,
  `quantity` double(8,2) NOT NULL DEFAULT 0.00,
  `total_price` double(8,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Super admin', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(2, 'admin', '2023-09-15 12:53:12', '2023-09-15 12:53:12'),
(3, 'Lab boy', '2023-09-15 12:55:49', '2023-09-15 12:55:49'),
(4, 'user', '2024-08-14 00:40:42', '2024-08-14 00:40:42');

-- --------------------------------------------------------

--
-- Table structure for table `role_permissions`
--

CREATE TABLE `role_permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `permission_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_permissions`
--

INSERT INTO `role_permissions` (`id`, `role_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(2, 1, 2, '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(3, 1, 3, '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(4, 1, 4, '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(5, 1, 5, '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(6, 1, 6, '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(7, 1, 7, '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(8, 1, 8, '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(9, 1, 9, '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(10, 1, 10, '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(11, 1, 11, '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(12, 1, 12, '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(13, 1, 13, '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(14, 1, 14, '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(15, 1, 15, '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(16, 1, 16, '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(17, 1, 17, '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(18, 1, 18, '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(19, 1, 19, '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(20, 1, 20, '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(21, 1, 21, '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(22, 1, 22, '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(23, 1, 23, '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(24, 1, 24, '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(25, 1, 25, '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(26, 1, 26, '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(27, 1, 27, '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(28, 1, 28, '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(29, 1, 29, '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(30, 1, 30, '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(31, 1, 31, '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(32, 1, 32, '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(33, 1, 33, '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(34, 1, 34, '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(35, 1, 35, '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(36, 1, 36, '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(37, 1, 37, '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(38, 1, 38, '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(39, 1, 39, '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(40, 1, 40, '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(41, 1, 41, '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(42, 1, 42, '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(43, 1, 43, '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(44, 1, 44, '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(45, 1, 45, '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(46, 1, 46, '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(47, 1, 47, '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(48, 1, 48, '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(49, 1, 49, '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(50, 1, 50, '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(51, 1, 51, '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(52, 1, 52, '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(53, 1, 53, '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(54, 1, 54, '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(55, 1, 55, '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(56, 1, 56, '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(57, 1, 57, '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(58, 1, 58, '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(59, 1, 59, '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(60, 1, 60, '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(61, 1, 61, '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(62, 1, 62, '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(63, 1, 63, '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(64, 1, 64, '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(65, 1, 65, '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(66, 1, 66, '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(67, 1, 67, '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(68, 1, 68, '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(69, 1, 69, '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(70, 1, 70, '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(71, 1, 71, '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(72, 1, 72, '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(73, 1, 73, '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(74, 1, 74, '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(75, 1, 75, '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(76, 1, 76, '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(77, 1, 77, '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(78, 1, 78, '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(79, 1, 79, '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(80, 1, 80, '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(81, 1, 81, '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(82, 1, 82, '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(83, 1, 83, '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(84, 1, 84, '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(85, 1, 85, '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(86, 1, 86, '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(87, 1, 87, '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(88, 1, 88, '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(89, 1, 89, '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(90, 1, 90, '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(91, 1, 91, '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(92, 1, 92, '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(93, 1, 93, '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(94, 1, 94, '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(95, 1, 95, '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(96, 1, 96, '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(97, 1, 97, '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(98, 1, 98, '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(99, 1, 99, '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(100, 1, 100, '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(101, 1, 101, '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(102, 1, 102, '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(103, 1, 103, '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(104, 1, 104, '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(105, 1, 105, '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(106, 1, 106, '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(107, 1, 107, '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(108, 1, 108, '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(109, 1, 109, '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(110, 1, 110, '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(111, 1, 111, '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(112, 1, 112, '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(113, 1, 113, '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(114, 1, 114, '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(115, 1, 115, '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(116, 1, 116, '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(117, 1, 117, '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(118, 1, 118, '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(119, 1, 119, '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(120, 1, 120, '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(121, 1, 121, '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(122, 1, 122, '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(123, 1, 123, '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(124, 1, 124, '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(125, 1, 125, '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(240, 3, 1, '2023-09-15 12:55:49', '2023-09-15 12:55:49'),
(241, 3, 3, '2023-09-15 12:55:49', '2023-09-15 12:55:49'),
(242, 3, 7, '2023-09-15 12:55:49', '2023-09-15 12:55:49'),
(243, 3, 8, '2023-09-15 12:55:49', '2023-09-15 12:55:49'),
(244, 3, 9, '2023-09-15 12:55:49', '2023-09-15 12:55:49'),
(245, 3, 10, '2023-09-15 12:55:49', '2023-09-15 12:55:49'),
(246, 3, 14, '2023-09-15 12:55:49', '2023-09-15 12:55:49'),
(247, 3, 18, '2023-09-15 12:55:49', '2023-09-15 12:55:49'),
(248, 3, 22, '2023-09-15 12:55:49', '2023-09-15 12:55:49'),
(249, 3, 26, '2023-09-15 12:55:49', '2023-09-15 12:55:49'),
(250, 3, 30, '2023-09-15 12:55:49', '2023-09-15 12:55:49'),
(251, 3, 34, '2023-09-15 12:55:49', '2023-09-15 12:55:49'),
(252, 3, 38, '2023-09-15 12:55:49', '2023-09-15 12:55:49'),
(253, 3, 39, '2023-09-15 12:55:49', '2023-09-15 12:55:49'),
(254, 3, 42, '2023-09-15 12:55:49', '2023-09-15 12:55:49'),
(255, 3, 43, '2023-09-15 12:55:49', '2023-09-15 12:55:49'),
(256, 3, 46, '2023-09-15 12:55:49', '2023-09-15 12:55:49'),
(257, 3, 47, '2023-09-15 12:55:49', '2023-09-15 12:55:49'),
(258, 3, 48, '2023-09-15 12:55:49', '2023-09-15 12:55:49'),
(259, 3, 65, '2023-09-15 12:55:49', '2023-09-15 12:55:49'),
(260, 3, 73, '2023-09-15 12:55:49', '2023-09-15 12:55:49'),
(261, 3, 77, '2023-09-15 12:55:49', '2023-09-15 12:55:49'),
(262, 3, 81, '2023-09-15 12:55:49', '2023-09-15 12:55:49'),
(263, 3, 89, '2023-09-15 12:55:49', '2023-09-15 12:55:49'),
(264, 3, 93, '2023-09-15 12:55:49', '2023-09-15 12:55:49'),
(265, 3, 94, '2023-09-15 12:55:49', '2023-09-15 12:55:49'),
(266, 3, 101, '2023-09-15 12:55:49', '2023-09-15 12:55:49'),
(267, 3, 106, '2023-09-15 12:55:49', '2023-09-15 12:55:49'),
(268, 3, 107, '2023-09-15 12:55:49', '2023-09-15 12:55:49'),
(269, 3, 110, '2023-09-15 12:55:49', '2023-09-15 12:55:49'),
(270, 3, 111, '2023-09-15 12:55:49', '2023-09-15 12:55:49'),
(271, 3, 114, '2023-09-15 12:55:49', '2023-09-15 12:55:49'),
(272, 3, 115, '2023-09-15 12:55:49', '2023-09-15 12:55:49'),
(385, 4, 61, '2024-08-14 00:40:42', '2024-08-14 00:40:42'),
(386, 4, 62, '2024-08-14 00:40:42', '2024-08-14 00:40:42'),
(387, 4, 63, '2024-08-14 00:40:42', '2024-08-14 00:40:42'),
(388, 2, 1, '2025-05-17 12:48:53', '2025-05-17 12:48:53'),
(389, 2, 2, '2025-05-17 12:48:53', '2025-05-17 12:48:53'),
(390, 2, 3, '2025-05-17 12:48:53', '2025-05-17 12:48:53'),
(391, 2, 4, '2025-05-17 12:48:53', '2025-05-17 12:48:53'),
(392, 2, 5, '2025-05-17 12:48:53', '2025-05-17 12:48:53'),
(393, 2, 6, '2025-05-17 12:48:53', '2025-05-17 12:48:53'),
(394, 2, 7, '2025-05-17 12:48:53', '2025-05-17 12:48:53'),
(395, 2, 8, '2025-05-17 12:48:53', '2025-05-17 12:48:53'),
(396, 2, 9, '2025-05-17 12:48:53', '2025-05-17 12:48:53'),
(397, 2, 10, '2025-05-17 12:48:53', '2025-05-17 12:48:53'),
(398, 2, 11, '2025-05-17 12:48:53', '2025-05-17 12:48:53'),
(399, 2, 12, '2025-05-17 12:48:53', '2025-05-17 12:48:53'),
(400, 2, 13, '2025-05-17 12:48:53', '2025-05-17 12:48:53'),
(401, 2, 14, '2025-05-17 12:48:53', '2025-05-17 12:48:53'),
(402, 2, 15, '2025-05-17 12:48:53', '2025-05-17 12:48:53'),
(403, 2, 16, '2025-05-17 12:48:53', '2025-05-17 12:48:53'),
(404, 2, 17, '2025-05-17 12:48:53', '2025-05-17 12:48:53'),
(405, 2, 18, '2025-05-17 12:48:53', '2025-05-17 12:48:53'),
(406, 2, 19, '2025-05-17 12:48:53', '2025-05-17 12:48:53'),
(407, 2, 20, '2025-05-17 12:48:53', '2025-05-17 12:48:53'),
(408, 2, 21, '2025-05-17 12:48:53', '2025-05-17 12:48:53'),
(409, 2, 22, '2025-05-17 12:48:53', '2025-05-17 12:48:53'),
(410, 2, 23, '2025-05-17 12:48:53', '2025-05-17 12:48:53'),
(411, 2, 24, '2025-05-17 12:48:53', '2025-05-17 12:48:53'),
(412, 2, 25, '2025-05-17 12:48:53', '2025-05-17 12:48:53'),
(413, 2, 26, '2025-05-17 12:48:53', '2025-05-17 12:48:53'),
(414, 2, 27, '2025-05-17 12:48:53', '2025-05-17 12:48:53'),
(415, 2, 28, '2025-05-17 12:48:53', '2025-05-17 12:48:53'),
(416, 2, 29, '2025-05-17 12:48:53', '2025-05-17 12:48:53'),
(417, 2, 30, '2025-05-17 12:48:53', '2025-05-17 12:48:53'),
(418, 2, 31, '2025-05-17 12:48:53', '2025-05-17 12:48:53'),
(419, 2, 32, '2025-05-17 12:48:53', '2025-05-17 12:48:53'),
(420, 2, 33, '2025-05-17 12:48:53', '2025-05-17 12:48:53'),
(421, 2, 34, '2025-05-17 12:48:53', '2025-05-17 12:48:53'),
(422, 2, 35, '2025-05-17 12:48:53', '2025-05-17 12:48:53'),
(423, 2, 36, '2025-05-17 12:48:53', '2025-05-17 12:48:53'),
(424, 2, 37, '2025-05-17 12:48:53', '2025-05-17 12:48:53'),
(425, 2, 38, '2025-05-17 12:48:53', '2025-05-17 12:48:53'),
(426, 2, 39, '2025-05-17 12:48:53', '2025-05-17 12:48:53'),
(427, 2, 40, '2025-05-17 12:48:53', '2025-05-17 12:48:53'),
(428, 2, 41, '2025-05-17 12:48:53', '2025-05-17 12:48:53'),
(429, 2, 42, '2025-05-17 12:48:53', '2025-05-17 12:48:53'),
(430, 2, 43, '2025-05-17 12:48:53', '2025-05-17 12:48:53'),
(431, 2, 44, '2025-05-17 12:48:53', '2025-05-17 12:48:53'),
(432, 2, 45, '2025-05-17 12:48:53', '2025-05-17 12:48:53'),
(433, 2, 46, '2025-05-17 12:48:53', '2025-05-17 12:48:53'),
(434, 2, 47, '2025-05-17 12:48:53', '2025-05-17 12:48:53'),
(435, 2, 48, '2025-05-17 12:48:53', '2025-05-17 12:48:53'),
(436, 2, 49, '2025-05-17 12:48:53', '2025-05-17 12:48:53'),
(437, 2, 50, '2025-05-17 12:48:53', '2025-05-17 12:48:53'),
(438, 2, 51, '2025-05-17 12:48:53', '2025-05-17 12:48:53'),
(439, 2, 52, '2025-05-17 12:48:53', '2025-05-17 12:48:53'),
(440, 2, 53, '2025-05-17 12:48:53', '2025-05-17 12:48:53'),
(441, 2, 54, '2025-05-17 12:48:53', '2025-05-17 12:48:53'),
(442, 2, 55, '2025-05-17 12:48:53', '2025-05-17 12:48:53'),
(443, 2, 56, '2025-05-17 12:48:53', '2025-05-17 12:48:53'),
(444, 2, 61, '2025-05-17 12:48:53', '2025-05-17 12:48:53'),
(445, 2, 62, '2025-05-17 12:48:53', '2025-05-17 12:48:53'),
(446, 2, 65, '2025-05-17 12:48:53', '2025-05-17 12:48:53'),
(447, 2, 66, '2025-05-17 12:48:53', '2025-05-17 12:48:53'),
(448, 2, 67, '2025-05-17 12:48:53', '2025-05-17 12:48:53'),
(449, 2, 68, '2025-05-17 12:48:53', '2025-05-17 12:48:53'),
(450, 2, 69, '2025-05-17 12:48:53', '2025-05-17 12:48:53'),
(451, 2, 70, '2025-05-17 12:48:53', '2025-05-17 12:48:53'),
(452, 2, 71, '2025-05-17 12:48:53', '2025-05-17 12:48:53'),
(453, 2, 72, '2025-05-17 12:48:53', '2025-05-17 12:48:53'),
(454, 2, 73, '2025-05-17 12:48:53', '2025-05-17 12:48:53'),
(455, 2, 74, '2025-05-17 12:48:53', '2025-05-17 12:48:53'),
(456, 2, 77, '2025-05-17 12:48:53', '2025-05-17 12:48:53'),
(457, 2, 78, '2025-05-17 12:48:53', '2025-05-17 12:48:53'),
(458, 2, 79, '2025-05-17 12:48:53', '2025-05-17 12:48:53'),
(459, 2, 80, '2025-05-17 12:48:53', '2025-05-17 12:48:53'),
(460, 2, 81, '2025-05-17 12:48:53', '2025-05-17 12:48:53'),
(461, 2, 83, '2025-05-17 12:48:53', '2025-05-17 12:48:53'),
(462, 2, 84, '2025-05-17 12:48:53', '2025-05-17 12:48:53'),
(463, 2, 85, '2025-05-17 12:48:53', '2025-05-17 12:48:53'),
(464, 2, 86, '2025-05-17 12:48:53', '2025-05-17 12:48:53'),
(465, 2, 87, '2025-05-17 12:48:53', '2025-05-17 12:48:53'),
(466, 2, 88, '2025-05-17 12:48:53', '2025-05-17 12:48:53'),
(467, 2, 89, '2025-05-17 12:48:53', '2025-05-17 12:48:53'),
(468, 2, 90, '2025-05-17 12:48:53', '2025-05-17 12:48:53'),
(469, 2, 91, '2025-05-17 12:48:53', '2025-05-17 12:48:53'),
(470, 2, 92, '2025-05-17 12:48:53', '2025-05-17 12:48:53'),
(471, 2, 93, '2025-05-17 12:48:53', '2025-05-17 12:48:53'),
(472, 2, 94, '2025-05-17 12:48:53', '2025-05-17 12:48:53'),
(473, 2, 95, '2025-05-17 12:48:53', '2025-05-17 12:48:53'),
(474, 2, 96, '2025-05-17 12:48:53', '2025-05-17 12:48:53'),
(475, 2, 97, '2025-05-17 12:48:53', '2025-05-17 12:48:53'),
(476, 2, 98, '2025-05-17 12:48:53', '2025-05-17 12:48:53'),
(477, 2, 101, '2025-05-17 12:48:53', '2025-05-17 12:48:53'),
(478, 2, 102, '2025-05-17 12:48:53', '2025-05-17 12:48:53'),
(479, 2, 106, '2025-05-17 12:48:53', '2025-05-17 12:48:53'),
(480, 2, 107, '2025-05-17 12:48:53', '2025-05-17 12:48:53'),
(481, 2, 108, '2025-05-17 12:48:53', '2025-05-17 12:48:53'),
(482, 2, 109, '2025-05-17 12:48:53', '2025-05-17 12:48:53'),
(483, 2, 110, '2025-05-17 12:48:53', '2025-05-17 12:48:53'),
(484, 2, 111, '2025-05-17 12:48:53', '2025-05-17 12:48:53'),
(485, 2, 112, '2025-05-17 12:48:53', '2025-05-17 12:48:53'),
(486, 2, 113, '2025-05-17 12:48:53', '2025-05-17 12:48:53'),
(487, 2, 114, '2025-05-17 12:48:53', '2025-05-17 12:48:53'),
(488, 2, 115, '2025-05-17 12:48:53', '2025-05-17 12:48:53'),
(489, 2, 116, '2025-05-17 12:48:53', '2025-05-17 12:48:53'),
(490, 2, 117, '2025-05-17 12:48:53', '2025-05-17 12:48:53'),
(491, 2, 118, '2025-05-17 12:48:53', '2025-05-17 12:48:53'),
(492, 2, 119, '2025-05-17 12:48:53', '2025-05-17 12:48:53'),
(493, 2, 120, '2025-05-17 12:48:53', '2025-05-17 12:48:53'),
(494, 2, 121, '2025-05-17 12:48:53', '2025-05-17 12:48:53'),
(495, 2, 122, '2025-05-17 12:48:53', '2025-05-17 12:48:53'),
(496, 2, 123, '2025-05-17 12:48:53', '2025-05-17 12:48:53'),
(497, 2, 124, '2025-05-17 12:48:53', '2025-05-17 12:48:53'),
(498, 2, 125, '2025-05-17 12:48:53', '2025-05-17 12:48:53');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(191) DEFAULT NULL,
  `value` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 'info', '{\"name\":\"Uday Lab Reports\",\"currency\":\"INR\",\"timezone\":\"Asia\\/Kolkata\",\"language\":\"en\",\"address\":\"G\",\"phone\":\"+91 123456789\",\"email\":\"support@ulabsoft.in\",\"website\":\"https:\\/\\/svlab.ulabsoft.in\",\"footer\":\"All rights are reserved\",\"facebook\":\"#\",\"twitter\":\"#\",\"instagram\":\"#\",\"youtube\":\"#\",\"socials\":{\"facebook\":\"#\",\"twitter\":\"#\",\"instagram\":\"#\",\"youtube\":\"#\"},\"preloader\":\"preloader.gif\"}', NULL, '2025-05-17 17:28:32'),
(2, 'barcode', '{\"type\":\"EAN13\",\"width\":\"80\",\"height\":\"150\"}', NULL, '2023-09-14 18:17:02'),
(3, 'reports', '{\"show_signature\":true,\"show_qrcode\":\"on\",\"margin-top\":\"145\",\"margin-right\":\"20\",\"margin-bottom\":\"90\",\"margin-left\":\"20\",\"content-margin-top\":\"290\",\"content-margin-bottom\":\"160\",\"qrcode-dimension\":\"70\",\"report_header\":{\"text-align\":\"center\",\"border-color\":\"rgb(0, 0, 0)\",\"border-width\":\"1\",\"background-color\":\"rgb(255, 255, 255)\"},\"branch_name\":{\"color\":\"#C64040\",\"font-family\":\"lato-bold\",\"font-size\":\"20\"},\"branch_info\":{\"color\":\"#000000\",\"font-family\":\"sans-serif\",\"font-size\":\"15\"},\"patient_title\":{\"color\":\"#000000\",\"font-family\":\"sans-serif\",\"font-size\":\"12\"},\"patient_data\":{\"color\":\"#000000\",\"font-family\":\"sans-serif\",\"font-size\":\"12\"},\"test_title\":{\"color\":\"#000000\",\"font-family\":\"sans-serif\",\"font-size\":\"12\"},\"test_name\":{\"color\":\"#000000\",\"font-family\":\"sans-serif\",\"font-size\":\"12\"},\"test_head\":{\"color\":\"#000000\",\"font-family\":\"sans-serif\",\"font-size\":\"12\"},\"result\":{\"color\":\"#000000\",\"font-family\":\"sans-serif\",\"font-size\":\"11\"},\"unit\":{\"color\":\"#000000\",\"font-family\":\"sans-serif\",\"font-size\":\"12\"},\"reference_range\":{\"color\":\"#000000\",\"font-family\":\"sans-serif\",\"font-size\":\"12\"},\"status\":{\"color\":\"#000000\",\"font-family\":\"sans-serif\",\"font-size\":\"12\"},\"comment\":{\"color\":\"#000000\",\"font-family\":\"sans-serif\",\"font-size\":\"12\"},\"signature\":{\"color\":\"#000000\",\"font-family\":\"sans-serif\",\"font-size\":\"12\"},\"antibiotic_name\":{\"color\":\"#000000\",\"font-family\":\"sans-serif\",\"font-size\":\"12\"},\"sensitivity\":{\"color\":\"#000000\",\"font-family\":\"sans-serif\",\"font-size\":\"12\"},\"commercial_name\":{\"color\":\"#000000\",\"font-family\":\"sans-serif\",\"font-size\":\"12\"},\"report_footer\":{\"color\":\"#000000\",\"font-family\":\"sans-serif\",\"font-size\":\"12\",\"text-align\":\"center\",\"border-color\":\"rgb(0, 0, 0)\",\"border-width\":\"1\",\"background-color\":\"rgb(255, 255, 255)\"},\"show_header\":false,\"show_footer\":false}', NULL, '2025-06-03 20:40:56'),
(4, 'emails', '{\"host\":\"smtp.office365.com\",\"port\":\"587\",\"username\":\"admin@paynearu.com\",\"password\":\"sbmtnmxlmnsjqhls\",\"encryption\":\"tls\",\"from_address\":\"admin@paynearu.com\",\"from_name\":\"Royal Diagnostic Lab\",\"header_color\":\"#C43E00\",\"footer_color\":\"#363636\",\"patient_code\":{\"subject\":\"Patient Code\",\"body\":\"Welcome , {patient_name}<br>Your patient code is : {patient_code}\",\"active\":on},\"reset_password\":{\"subject\":\"Reset your password\",\"body\":\"Reset your password\",\"active\":false},\"receipt\":{\"subject\":\"Order receipt\",\"body\":\"Welcome {patient_name},<br> your receipt is attached\"},\"report\":{\"active\":\"on\",\"subject\":\"Medical report\",\"body\":\"welcome , {patient_name}<br>you report is attached\"},\"tests_notification\":{\"active\":false}}', NULL, '2025-05-17 17:46:39'),
(5, 'sms', '{\"gateway\":\"nexmo\",\"twilio\":{\"sid\":\"\",\"token\":\"\",\"from\":\"\"},\"nexmo\":{\"key\":\"\",\"secret\":\"\"},\"textLocal\":{\"key\":\"\",\"sender\":\"\"},\"infobip\":{\"base_url\":\"\",\"from\":\"\",\"key\":\"\"},\"patient_code\":{\"active\":false,\"message\":\"welcome {patient_name} , your patient code is {patient_code}\"},\"tests_notification\":{\"active\":false,\"message\":\"welcome {patient_name} , your tests are ready now .. you can check tests by using your patient code : {patient_code}\"}}', NULL, NULL),
(6, 'whatsapp', '{\"receipt\":{\"active\":true,\"message\":\"welcome {patient_name} , receipt link is {receipt_link}\"},\"report\":{\"active\":true,\"message\":\"welcome {patient_name} , tests report link is {report_link}\"}}', NULL, '2024-10-03 23:30:22'),
(7, 'api_keys', '{\"google_map\":\"\"}', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `short_urls`
--

CREATE TABLE `short_urls` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `long_url` varchar(2048) NOT NULL,
  `short_code` varchar(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `short_urls`
--

INSERT INTO `short_urls` (`id`, `long_url`, `short_code`, `created_at`) VALUES
(25, 'https://srinidhi-lab.ulabsoft.in/uploads/pdf/Srinidhi_Lab_Azhar_20250611_173549.pdf', '12d3ub', '2025-06-11 17:35:49'),
(26, 'https://srinidhi-lab.ulabsoft.in/uploads/pdf/Srinidhi_Lab_MANISHA_20250611_175311.pdf', 'oplxi4', '2025-06-11 17:53:11'),
(27, 'https://srinidhi-lab.ulabsoft.in/uploads/pdf/Srinidhi_Lab_MANISHA_20250611_175648.pdf', 'zgkgvj', '2025-06-11 17:56:48'),
(28, 'https://srinidhi-lab.ulabsoft.in/uploads/pdf/Srinidhi_Lab_MANISHA_20250611_175711.pdf', '1tvjol', '2025-06-11 17:57:11'),
(29, 'https://srinidhi-lab.ulabsoft.in/uploads/pdf/Srinidhi_Lab_MANISHA_20250611_175721.pdf', 'rdimvh', '2025-06-11 17:57:21'),
(30, 'https://srinidhi-lab.ulabsoft.in/uploads/pdf/Srinidhi_Lab_MANISHA_20250611_175822.pdf', '1kxb0y', '2025-06-11 17:58:22'),
(31, 'https://srinidhi-lab.ulabsoft.in/uploads/pdf/Srinidhi_Lab_MANISHA_20250611_175837.pdf', '7z0201', '2025-06-11 17:58:37'),
(32, 'https://srinidhi-lab.ulabsoft.in/uploads/pdf/Srinidhi_Lab_MANISHA_20250611_175912.pdf', 'e31iqq', '2025-06-11 17:59:12'),
(33, 'https://srinidhi-lab.ulabsoft.in/uploads/pdf/Srinidhi_Lab_MANISHA_20250611_181241.pdf', '1kzl06', '2025-06-11 18:12:41'),
(34, 'https://srinidhi-lab.ulabsoft.in/uploads/pdf/Srinidhi_Lab_MANISHA_20250611_181336.pdf', 'cnhls0', '2025-06-11 18:13:36'),
(35, 'https://srinidhi-lab.ulabsoft.in/uploads/pdf/Srinidhi_Lab_MANISHA_20250612_115039.pdf', '6ntgz7', '2025-06-12 11:50:39'),
(36, 'https://srinidhi-lab.ulabsoft.in/uploads/pdf/Srinidhi_Lab_Test_Commision_20250612_120235.pdf', '19twyc', '2025-06-12 12:02:35'),
(37, 'https://srinidhi-lab.ulabsoft.in/uploads/pdf/Srinidhi_Lab_Test_Commision_20250612_120336.pdf', '1sy7oc', '2025-06-12 12:03:36'),
(38, 'https://srinidhi-lab.ulabsoft.in/uploads/pdf/Srinidhi_Lab_Test_Commision_20250612_120406.pdf', 'jchz6t', '2025-06-12 12:04:06'),
(39, 'https://srinidhi-lab.ulabsoft.in/uploads/pdf/Srinidhi_Lab_Test_Commision_20250612_120422.pdf', '1gntul', '2025-06-12 12:04:22'),
(40, 'https://srinidhi-lab.ulabsoft.in/uploads/pdf/Srinidhi_Lab_Test_Commision_20250612_120440.pdf', 'z03zh', '2025-06-12 12:04:40'),
(41, 'https://srinidhi-lab.ulabsoft.in/uploads/pdf/Srinidhi_Lab_Test_Commision_20250612_120452.pdf', '1ayv6e', '2025-06-12 12:04:52'),
(42, 'https://srinidhi-lab.ulabsoft.in/uploads/pdf/Srinidhi_Lab_Test_Commision_20250612_120503.pdf', '13wq14', '2025-06-12 12:05:03'),
(43, 'https://srinidhi-lab.ulabsoft.in/uploads/pdf/Srinidhi_Lab_Test_Commision_20250612_120508.pdf', '8g721z', '2025-06-12 12:05:08'),
(44, 'https://srinidhi-lab.ulabsoft.in/uploads/pdf/Srinidhi_Lab_Test_Commision_20250612_121155.pdf', '1b15p7', '2025-06-12 12:11:55'),
(45, 'https://srinidhi-lab.ulabsoft.in/uploads/pdf/Srinidhi_Lab_Test_Commision_20250612_121513.pdf', '1xbicx', '2025-06-12 12:15:13'),
(46, 'https://srinidhi-lab.ulabsoft.in/uploads/pdf/Srinidhi_Lab_YAMA_REDDY_20250613_123733.pdf', 'vzvwr0', '2025-06-13 12:37:33'),
(47, 'https://srinidhi-lab.ulabsoft.in/uploads/pdf/Srinidhi_Lab_YAMA_REDDY_20250613_123804.pdf', 'eh4thu', '2025-06-13 12:38:04'),
(48, 'https://srinidhi-lab.ulabsoft.in/uploads/pdf/Srinidhi_Lab_YAMA_REDDY_20250613_123821.pdf', '1rufo2', '2025-06-13 12:38:21'),
(49, 'https://srinidhi-lab.ulabsoft.in/uploads/pdf/Srinidhi_Lab_YAMA_REDDY_20250613_123843.pdf', '16hdhc', '2025-06-13 12:38:43'),
(50, 'https://shan.ulabsoft.in/uploads/pdf/Shan_Lab_YAMA_REDDY_20250613_184938.pdf', '12jow1', '2025-06-13 18:49:38');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `email` varchar(191) DEFAULT NULL,
  `phone` varchar(191) DEFAULT NULL,
  `address` varchar(191) DEFAULT NULL,
  `note` longtext DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tests`
--

CREATE TABLE `tests` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `name` varchar(191) DEFAULT NULL,
  `shortcut` varchar(191) DEFAULT NULL,
  `sample_type` varchar(191) DEFAULT NULL,
  `unit` varchar(191) DEFAULT NULL,
  `reference_range` text DEFAULT NULL,
  `type` text NOT NULL,
  `separated` tinyint(1) NOT NULL DEFAULT 0,
  `price` double NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `title` tinyint(1) DEFAULT 0,
  `precautions` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `result_temp` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tests`
--

INSERT INTO `tests` (`id`, `parent_id`, `name`, `shortcut`, `sample_type`, `unit`, `reference_range`, `type`, `separated`, `price`, `status`, `title`, `precautions`, `created_at`, `updated_at`, `deleted_at`, `category_id`, `result_temp`) VALUES
(1188, 0, '17 - ALPHA HYDROXYPROGESTERONE', '(17-OHP)', 'SERUM', NULL, NULL, '', 0, 1, 0, 0, 'Method: ELISA', '2024-08-15 10:31:26', '2024-08-15 10:31:26', NULL, 1, NULL),
(1189, 1188, '17 ALPHA HYDROXYPROGESTERONE;17-ALPHA OHP, SERUM', NULL, 'SERUM', 'ng/ml', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Children: 0.2 - 0.9</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Men: 0.2 - 2.3</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Women: Follicular Phase:0.2-1.3</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Luteal Phase: 1.0-4.5</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Postmenopausal: 0.2-0.9</span><br></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 10:31:26', '2024-10-05 20:07:22', '2024-10-05 20:07:22', 1, NULL),
(1190, 0, '24 HRS URINARY PROTEIN', '24-HUP', '-', NULL, NULL, '', 0, 1, 0, 0, NULL, '2024-08-15 10:35:47', '2024-08-15 10:35:47', NULL, 1, NULL),
(1191, 1190, 'Spot Urinary Proteins', NULL, '-', 'mg/L', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 10:35:47', '2024-08-15 10:35:47', NULL, 1, NULL),
(1192, 1190, '24 hrs Urinary Volume', NULL, '-', 'm/24hrs', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Greater than 2000 Polyuria</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Less than 6000 Oligouria</span><br></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 10:35:47', '2024-08-15 10:35:47', NULL, 1, NULL),
(1193, 1190, '24 hrs Urinary Proteins', NULL, '-', 'mg/24hrs', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">28-141</span></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 10:35:47', '2024-08-15 10:35:47', NULL, 1, NULL),
(1194, 0, '24 HRS. URINARY VMA', 'VMA', '-', NULL, NULL, '', 0, 1, 0, 0, NULL, '2024-08-15 11:09:51', '2024-08-15 11:09:51', NULL, 1, NULL),
(1195, 1194, '24 hrs. Urine Volume', NULL, '-', 'ml/24hrs', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 11:09:51', '2024-08-15 11:09:51', NULL, 1, NULL),
(1196, 1194, '24 hrs. Urinary VMA', NULL, '-', 'mg/24 hrs', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Upto 13.2</span></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 11:09:51', '2024-08-15 11:09:51', NULL, 1, NULL),
(1197, 0, 'ABSOLUTE EOSINOPHIL COUNT', 'AEC', '-', NULL, NULL, '', 0, 1, 0, 0, NULL, '2024-08-15 11:10:33', '2024-08-15 11:10:33', NULL, 1, NULL),
(1198, 1197, 'ABSOLUTE EOSINOPHIL COUNT', NULL, '-', 'cu.mm', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">40 - 440</span></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 11:10:33', '2024-08-15 11:10:33', NULL, 1, NULL),
(1199, 0, 'ABSOLUTE NEUTROPHIL COUNT', 'ANC', '-', NULL, NULL, '', 0, 1, 0, 0, NULL, '2024-08-15 11:11:21', '2024-08-15 11:11:21', NULL, 1, NULL),
(1200, 1199, 'ABSOLUTE NEUTROPHIL COUNT', NULL, '-', 'cells/cumm', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">2000-7000</span></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 11:11:21', '2024-08-15 11:11:21', NULL, 1, NULL),
(1201, 0, 'ANGIOTENSIN CONVERTING ENZYME', 'ACE', '-', NULL, NULL, '', 0, 1, 0, 0, NULL, '2024-08-15 11:12:23', '2024-08-15 11:12:23', NULL, 1, NULL),
(1202, 1201, 'ACE', NULL, '-', 'U/L', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">9-67</span></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 11:12:23', '2024-08-15 11:12:23', NULL, 1, NULL),
(1203, 1201, 'Notes:', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 11:12:23', '2024-08-15 11:12:23', NULL, 1, '• Angiotensin converting enzyme is a glycoprotein peptidyldipeptide hydrolase that cleaves histidyleucine dipeptide from angiotensin I, a relatively inactive decapeptide.\r\n• The latter is converted to the potent vasoconstrictor angiotensin II. ACE also inactivates bradykinin.\r\nElevated levels of ACE activity occur in serum of patients with active sarcoidosis, and occasionally in premature infants with respiratory distress syndrome, In adults with tuberculosis, Gaucher’s disease, leprosy, and in many other pathologic conditions involving lung and liver diseases.\r\n• Significantly low levels were reported in many acute and chronic cases of lung injuries.'),
(1204, 0, 'ACID PHOSPHATASE TOTAL', 'AP-Total', '-', NULL, NULL, '', 0, 1, 0, 0, '(Method : α - Naphthyl phosphate)', '2024-08-15 11:13:30', '2024-08-15 11:13:30', NULL, 1, NULL),
(1205, 1204, 'Acid Phosphatase', NULL, '-', 'U/L', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">0-5.4</span></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 11:13:30', '2024-08-15 11:13:30', NULL, 1, NULL),
(1206, 0, 'Acid Phosphotase - Prostatic fraction', 'AP-Pf', '-', NULL, NULL, '', 0, 1, 0, 0, NULL, '2024-08-15 11:14:55', '2024-08-15 11:14:55', NULL, 1, NULL),
(1207, 1206, 'ACID PHOSPHOTASE - PROSTATIC FRACTION', NULL, '-', 'ng/ml', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Lessthan or Equal 2</span></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 11:14:55', '2024-08-15 11:14:55', NULL, 1, NULL),
(1208, 1206, 'Note:', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 11:14:55', '2024-08-15 11:14:55', NULL, 1, 'Serum markers are not specific for malignancy and values may vary by method.'),
(1209, 1206, 'Limitations:', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 11:14:55', '2024-08-15 11:14:55', NULL, 1, 'Prostatic Acid Phosphatase (PAP) must not be regarded as an absolute test for malignancy since other factors, including benign prostatic hyperplasia, prostatic infarction, and manipulation of the prostate gland may result in elevated serum PAP concentration.\r\nPAP measurements provide little additional information beyond that provided by PSA measurements.\r\nHuman anti-mouse antibodies (HAMA) may be present in specimens from patients who have received immunotherapy utilizing monoclonal antibodies. Other heterophile antibodies also may be present in patient specimens. This assay has been specifically formulated to minimize the effects of these antibodies on the assay. However, carefully evaluate results from patients known to have such antibodies.'),
(1210, 0, 'ACYTYL COLINE RECEPTOR ANTIBODY', 'ACR', '-', NULL, NULL, '', 0, 1, 0, 0, NULL, '2024-08-15 11:16:16', '2024-08-15 11:16:16', NULL, 1, NULL),
(1211, 1210, 'ACETYL CHOLINE RECEPTOR BINDING ANTIBODY', NULL, '-', 'nmol/L', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Lessthan 0.40 : Negative</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">0.40 - 0.50 : Equivocal</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">> 0.50 : Positive. Results to be</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">clinically correlated.</span><br></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 11:16:16', '2025-06-12 02:36:42', NULL, 1, NULL),
(1212, 1210, 'Notes:', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 11:16:16', '2025-06-12 02:36:42', NULL, 1, 'Comments\r\nMyasthenia gravis (MG) is characterized by weakness and easy fatigability that is relieved by rest and Anticholinesterase drugs. The weakness results from an autoantibody-mediated loss of functional acetylcholine receptors in the post-synaptic membrane of skeletal muscle. These antibodies are not found in congenital forms of MG and are uncommon in neurologic conditions other than Acquired MG. Patients with autoimmune liver disease may also be seropositive.\r\nClinical Uses\r\nConfirm the diagnosis of Myasthenia gravis · Distinguish acquired disease (90% positive) from Congenital disease (negative) · Detecting subclinical MG in patients with Thymoma or Graft versus Host disease · Monitoring disease progression in MG or response to Immunotherapy'),
(1213, 0, 'ADENOSINE DEAMINASE ACTIVITY MTB ( ADA - MTB )', 'MTB ( ADA - MTB )', '-', NULL, NULL, '', 0, 1, 0, 0, NULL, '2024-08-15 11:18:53', '2024-08-15 11:18:53', NULL, 1, NULL),
(1214, 1213, 'Adenosine Deaminase(ADA)', NULL, '-', 'U/L', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Normal: Less than 30</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Suspect:30-40</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Strong Suspect: 40-60</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Positive: Greater than 60</span><br></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 11:18:53', '2024-08-15 11:18:53', NULL, 1, NULL),
(1215, 1213, 'Adenosine deaminase 2 (ADA2)', NULL, '-', 'U/L', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Normal: Less than 22.5</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Suspect: 22.5 - 30</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Strong Suspected: 30 - 45</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Positive: Greater than 45</span><br></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 11:18:53', '2024-08-15 11:18:53', NULL, 1, NULL),
(1216, 1213, 'Note', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 11:18:53', '2024-08-15 11:18:53', NULL, 1, 'High levels of ADA are also found in patients with hyperamoniemia, kidney disorders, leprosy, brucellosis, HIV infection, viral hepatitis, infectious mononucleosis and liver cirrhosis. Before arriving to a diagnostic decision, these clinical conditions must be ruled out. Values have been reported to show specificity and sensitivity of the test as 90% for MTB infection. Kindly correlate with clinical conditions.'),
(1217, 0, 'ADRENO CORTICO TROPIC HORMONE', 'ACTH', '-', NULL, NULL, '', 0, 1, 0, 0, NULL, '2024-08-15 11:21:12', '2024-08-15 11:21:12', NULL, 1, NULL),
(1218, 1217, 'ADRENOCORTICOTROPIC HORMONE ( ACTH )', NULL, '-', 'pg/ml', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">9.0 - 52.0</span></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 11:21:12', '2024-08-15 11:21:12', NULL, 1, NULL),
(1219, 1217, 'Note', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 11:21:12', '2024-08-15 11:21:12', NULL, 1, 'High levels of ACTH may be a sign of: -Addison\'s disease -Adrenal hyperplasia -Cushing\'s disease -Ectopic tumor which produces ACTH -Adrenoleukodystrophy (very rare) -Nelson\'s syndrome (very rare) Low levels of ACTH may be a sign of: -Adrenal tumor -Exogenous Cushing syndrome -Hypopituitarism -Taking steroid medications'),
(1220, 0, 'AFB CULTURE', 'AFB-C', '-', NULL, NULL, '', 0, 1, 0, 0, NULL, '2024-08-15 11:22:22', '2024-08-15 11:22:22', NULL, 1, NULL),
(1221, 1220, 'AFB CULTURE', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 11:22:22', '2024-08-15 11:22:22', NULL, 1, 'TB Culture - Fluorescent method (MGIT) 48 Hrs (Fluorescent based culture)\r\nCulture shows NO GROWTH of Mycobacterium tuberculosis complex after 2days of incubation.\r\n\r\n. Note: Further report to follow after 1st week of incubation\r\nTB Culture - Fluorescent method(MGIT) 1Week (Fluorescent based culture) Culture shows NO GROWTH of Mycobacterium tuberculosis complex after 1 week of incubation.\r\n\r\n. Note: Further report to follow after 2 weeks of incubation\r\nTB Culture - Fluorescent method(MGIT) 2-Wk (Fluorescent based culture) Culture shows NO GROWTH of Mycobacterium tuberculosis complex after 2 weeks of incubation.\r\n\r\n. Note: Further report to follow after 3 weeks of incubation.\r\nTB Culture - Fluorescent method(MGIT) 3-Week (Fluorescent based culture) Culture shows NO GROWTH of Mycobacterium tuberculosis complex after 3 weeks of incubation.\r\n\r\n. Note: Further report to follow after 4 weeks of incubation.\r\nTB Culture - Fluorescent method(MGIT) 4-Week (Fluorescent based culture) Culture shows NO GROWTH of Mycobacterium tuberculosis complex after 4 weeks of incubation\r\n\r\n. Note: Further report to follow after 5 weeks of incubation\r\nTB Culture - Fluorescent method(MGIT) 5 Week (Fluorescent based culture) Culture shows NO GROWTH of Mycobacterium tuberculosis complex after 5 weeks of incubation.\r\n\r\n. Note: Further report to follow after 6 weeks of incubation'),
(1222, 0, 'ALBERTS STAIN REPORT', '-', '-', NULL, NULL, '', 0, 1, 0, 0, NULL, '2024-08-15 11:22:53', '2024-08-15 11:22:53', NULL, 1, NULL),
(1223, 1222, 'Impression', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 11:22:53', '2024-08-15 11:22:53', NULL, 1, 'Smears are negative for Corynebacterium diphtheriae.'),
(1224, 0, 'Albumin/Globulin Ratio', '-', '-', NULL, NULL, '', 0, 1, 0, 0, NULL, '2024-08-15 11:25:07', '2024-08-15 11:25:07', NULL, 1, NULL),
(1225, 1224, 'Total Protein', NULL, '-', 'g/dL', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">6.6 - 8.3</span></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 11:25:07', '2024-08-15 11:25:07', NULL, 1, NULL),
(1226, 1224, 'Albumin', NULL, '-', 'g/dL', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 11:25:07', '2024-08-15 11:25:07', NULL, 1, NULL),
(1227, 1224, 'Globulin', NULL, '-', 'g/dL', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 11:25:07', '2024-08-15 11:25:07', NULL, 1, NULL),
(1228, 1224, 'Albumin/Globulin Ratio', NULL, '-', '--', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">0.8 - 2.2</span></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 11:25:07', '2024-08-15 11:25:07', NULL, 1, NULL),
(1229, 0, 'ALPHA FETO PROTEIN', 'AFP', '-', NULL, NULL, '', 0, 1, 0, 0, NULL, '2024-08-15 11:27:31', '2024-08-15 11:27:31', NULL, 1, NULL),
(1230, 1229, 'Alpha Feto Protein', NULL, '-', 'ng/ml', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Non Pregnant females: Less than 15</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Pregnancy: 14 weeks: upto 2.6 15</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">weeks: upto 29.9</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">16 weeks: upto 34.8</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">17 weeks: upto 40.6</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">18 weeks: upto 47.3</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">19 weeks: upto 55.1</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">20 weeks: upto 64.3</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">21 weeks: upto 74.9</span><br></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 11:27:31', '2024-08-15 11:27:31', NULL, 1, NULL),
(1231, 1229, 'Interpretation :', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 11:27:31', '2024-08-15 11:27:31', NULL, 1, '<ul>\r\n	<li>AFP concentrations remain low except during pregnancy, benign liver diseases (hepatitis, cirrhosis), primary hepatocellular carcinoma, malignant germ cell tumors of the ovary and testis, and teratocarcinoma of the testis.</li>\r\n	<li>Increased circulating AFP concentrations may also occur in serum specimens from patients with gastrointestinal, pancreatic, and pulmonary cancers.</li>\r\n	<li>AFP testing during pregnancy in combination with Beta HCG and E3, Is recommended as an effective way to determine potential fetal risk of open neural tube defect (NTD).</li>\r\n</ul>'),
(1232, 0, 'ANA BLOT', '-', '-', NULL, NULL, '', 0, 1, 0, 0, NULL, '2024-08-15 11:34:08', '2024-08-15 11:34:08', NULL, 1, NULL),
(1233, 1232, 'RNP 68', NULL, '-', '', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Negative</span><br></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 11:34:08', '2024-08-15 11:34:08', NULL, 1, NULL),
(1234, 1232, 'RNPA', NULL, '-', '', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Negative</span><br></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 11:34:08', '2024-08-15 11:34:08', NULL, 1, NULL),
(1235, 1232, 'RNPC', NULL, '-', '', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Negative</span><br></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 11:34:08', '2024-08-15 11:34:08', NULL, 1, NULL),
(1236, 1232, 'SmB', NULL, '-', '', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Negative</span><br></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 11:34:08', '2024-08-15 11:34:08', NULL, 1, NULL),
(1237, 1232, 'SmD', NULL, '-', '', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Negative</span><br></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 11:34:08', '2024-08-15 11:34:08', NULL, 1, NULL),
(1238, 1232, 'Ro/SSA60', NULL, '-', '', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Negative</span><br></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 11:34:08', '2024-08-15 11:34:08', NULL, 1, NULL),
(1239, 1232, 'Ro/SSA52', NULL, '-', '', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Negative</span><br></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 11:34:08', '2024-08-15 11:34:08', NULL, 1, NULL),
(1240, 1232, 'La/SSB', NULL, '-', '', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Negative</span><br></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 11:34:08', '2024-08-15 11:34:08', NULL, 1, NULL),
(1241, 1232, 'Ribosomal P Protein', NULL, '-', '', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Negative</span><br></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 11:34:08', '2024-08-15 11:34:08', NULL, 1, NULL),
(1242, 1232, 'PCNA', NULL, '-', '', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Negative</span><br></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 11:34:08', '2024-08-15 11:34:08', NULL, 1, NULL),
(1243, 1232, 'Centromere B', NULL, '-', '', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Negative</span><br></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 11:34:08', '2024-08-15 11:34:08', NULL, 1, NULL),
(1244, 1232, 'Sd70', NULL, '-', '', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Negative</span><br></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 11:34:08', '2024-08-15 11:34:08', NULL, 1, NULL),
(1245, 1232, 'jo-1', NULL, '-', '', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Negative</span><br></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 11:34:08', '2024-08-15 11:34:08', NULL, 1, NULL),
(1246, 1232, 'Histone', NULL, '-', '', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Negative</span><br></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 11:34:08', '2024-08-15 11:34:08', NULL, 1, NULL),
(1247, 1232, 'ds-DNA', NULL, '-', '', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Negative</span><br></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 11:34:08', '2024-08-15 11:34:08', NULL, 1, NULL),
(1248, 0, 'ANCA (ANTI NEUTROPHIL CYTOPLASMIC ANTIBODIES) P & C', '-', '-', NULL, NULL, '', 0, 1, 0, 0, NULL, '2024-08-15 11:35:45', '2024-08-15 11:35:45', NULL, 1, NULL),
(1249, 1248, 'ANCA - C(Anti-PR3, Cytoplasmic Pattarn)', NULL, '-', '', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Less than 12: Negative</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">12-18 : Equlvocal</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">More than 18: Positive</span></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 11:35:45', '2024-08-15 11:35:45', NULL, 1, NULL),
(1250, 1248, 'ANCA-P (Anti-MPO, Perinuclear Pattern)', NULL, '-', 'AU/ml', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Less than12: Negative</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">12-18: Equivocal</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">More than 18: Positive</span><br></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 11:35:45', '2024-08-15 11:35:45', NULL, 1, NULL),
(1251, 1248, 'Techniques & Kit Used', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 11:35:45', '2024-08-15 11:35:45', NULL, 1, 'ELISA - Fully Automated Multiparametric Processor for Autoimmune & Infectious Immunoassay Chorus Trio, from Diesse Diagnostica, Italy'),
(1252, 0, 'ANDROSTEINDIONE LEVEL', '-', '-', NULL, NULL, '', 0, 100, 0, 0, NULL, '2024-08-15 11:36:22', '2024-08-15 11:36:22', NULL, 1, NULL),
(1253, 1252, 'S.Androsteindione', NULL, '-', 'ng/ml', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 11:36:22', '2024-08-15 11:36:22', NULL, 1, NULL),
(1254, 0, 'ANTI BETA-2-GLYCOPROTEIN ANTIBODIES', '-', '-', NULL, NULL, '', 0, 100, 0, 0, NULL, '2024-08-15 11:38:35', '2024-08-15 11:38:35', NULL, 1, NULL),
(1255, 1254, 'S.Anti Beta-2-Glycoprotein I-IgG Ab', NULL, '-', 'RU/ml', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Negative: Less than 20</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Positive: &gt;= 20</span><br></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 11:38:35', '2024-08-15 11:38:35', NULL, 1, NULL),
(1256, 1254, 'Note', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 11:38:35', '2024-08-15 11:38:35', NULL, 1, '<strong>This test screens for the presence of IgG antibodies to Beta-2 glycoprotein</strong> which are associated with arterial and venous thrombosis and recurrent abortions. The new International classification criteria for APS include Beta-2 glycoprotein for 2 key reasons namely: &Oslash; Beta-2 Glycoprotein antibodies maybe the only antibody present in 10% patients of Antiphospholipid syndrome (APS) Beta-2 Glycoprotein antibodies are highly specific for APS unlike Anticardiolipin antibodies which may be positive in certain infectious diseases<br />\r\n<strong>Indications &middot;</strong><br />\r\nClinical history suggestive of Arterial or venous thrombosis &middot; History of Recurrent fetal loss Intrauterine growth restriction/ Premature birth &middot; Thrombocytopenia'),
(1257, 1254, 'S. Anti Beta-2-Glycoprotein I-IgM Ab', NULL, '-', 'RU/ml', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Negative: Less than 20</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Positive: &gt;= 20</span><br></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 11:38:35', '2024-08-15 11:38:35', NULL, 1, NULL),
(1258, 1254, 'Note', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 11:38:35', '2024-08-15 11:38:35', NULL, 1, '<strong>This test screens for the presence of IgM antibodies to Beta-2</strong> glycoprotein which are associated with arterial and venous thrombosis and recurrent abortions. The new International classification criteria for APS include Beta-2 glycoprotein for 2 key reasons namely: &middot; Beta-2 Glycoprotein antibodies may be the only antibody present in 10% patients of Antiphospholipid syndrome (APS) &middot; Beta-2 Glycoprotein antibodies are highly specific for APS unlike Anticardiolipin antibodies which may be positive in certain infectious diseases<br />\r\n<strong>Indications &middot;</strong><br />\r\nClinical history suggestive of Arterial or venous thrombosis<br />\r\nHistory of Recurrent fetal loss/Intrauterine growth restriction/Premature birth<br />\r\nThrombocytopenia'),
(1259, 1254, 'S.Anti Beta-2-Glycoprotein I-IgA Ab', NULL, '-', 'RU/ml', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 11:38:35', '2024-08-15 11:38:35', NULL, 1, NULL),
(1260, 1254, 'Note', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 11:38:35', '2024-08-15 11:38:35', NULL, 1, '<strong>Anti-Beta 2 Glycoprotein, IgA</strong> is associated with an increased risk of thromboembolic events, especially, among patients with SLE. Elevated Anti-Beta 2 glycoprotein, IgA may identify additional patients who have clinical features of Antiphospholipid syndrome(APS) but who do not meet current diagnostic criteria of APS.<br />\r\n<strong>Indications</strong><br />\r\nClinical history suggestive of Arterial or venous thrombosis<br />\r\nHistory of Recurrent fetal loss/intrauterine growth restriction/Premature birth<br />\r\nThrombocytopenia'),
(1261, 0, 'ANTI CARDIOLIPIN ANTIBODIES ( ACA )', '-', '-', NULL, NULL, '', 0, 100, 0, 0, NULL, '2024-08-15 11:39:43', '2024-08-15 11:39:43', NULL, 1, NULL),
(1262, 1261, 'Anti Cardiolipin Antibody -IgG', NULL, '-', 'GPL/ml', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Less than 12: Negative</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">12-18: Equivocal</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Greater than 18: Positive</span><br></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 11:39:43', '2024-08-15 11:39:43', NULL, 1, NULL),
(1263, 1261, 'Anti Cardiolipin Antibody IgM', NULL, '-', 'MPL/ml', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Less than 12: Negative</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">12-18: Equivocal</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Greater than 18: Positive</span><br></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 11:39:43', '2024-08-15 11:39:43', NULL, 1, NULL),
(1264, 1261, 'Anti Cardiolipin Antibody - IgA', NULL, '-', 'APL/ml', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Negative: Less than 12</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Equivocal: 12-20</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Low Positive: 20-80</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Positive: Greater than 80</span><br></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 11:39:43', '2024-08-15 11:39:43', NULL, 1, NULL),
(1265, 0, 'Anti Cardiolipin Antibody - IgA', '-', '-', NULL, NULL, '', 0, 100, 0, 0, NULL, '2024-08-15 11:40:18', '2024-08-15 11:40:18', NULL, 1, NULL),
(1266, 1265, 'Anti Cardiolipin Antibody - IgA', NULL, '-', 'APL/ml', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Negative: Less than 12</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Equivocal: 12-20</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Low Positive: 20-80</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Positive: Greater than 80</span><br></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 11:40:18', '2024-08-15 11:40:18', NULL, 1, NULL),
(1267, 0, 'ANTI CARDIOLIPIN ANTIBODY - IgA', '-', '-', NULL, NULL, '', 0, 100, 0, 0, NULL, '2024-08-15 11:40:55', '2024-08-15 11:40:55', NULL, 1, NULL),
(1268, 1267, 'Anti Cardiolipin Antibody - IgA', NULL, '-', 'APL/ml', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Negative: Less than 12</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Equivocal: 12-20</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Low Positive: 20-80</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Positive: Greater than 80</span><br></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 11:40:55', '2024-08-15 11:40:55', NULL, 1, NULL),
(1269, 0, 'ANTI CARDIOLIPIN ANTIBODY - IgG', '-', '-', NULL, NULL, '', 0, 10, 0, 0, NULL, '2024-08-15 11:42:40', '2024-08-15 11:42:40', NULL, 1, NULL),
(1270, 1269, 'ANTI CARDIOLIPIN ANTIBODY - IGG', NULL, '-', 'GPL/ml', '<span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Negative: Less than 12</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Equivocal: 12-18</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Positive: Greater than 18</span><br>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 11:42:40', '2024-08-15 11:42:40', NULL, 1, NULL),
(1271, 0, 'ANTI CARDIOLIPIN ANTIBODY - IgM', '-', '-', NULL, NULL, '', 0, 100, 0, 0, NULL, '2024-08-15 11:57:03', '2024-08-15 11:57:03', NULL, 1, NULL),
(1272, 1271, 'ANTI CARDIOLIPIN ANTIBODY - IGM', NULL, '-', 'MPL/ml', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Negative: Less than 12</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Equivocal: 12-18</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Positive: Greater than 18</span><br></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 11:57:03', '2024-08-15 11:57:03', NULL, 1, NULL),
(1273, 0, 'ANTI ds-DNA (ELISA)', '-', '-', NULL, NULL, '', 0, 100, 0, 0, NULL, '2024-08-15 11:57:57', '2024-08-15 11:57:57', NULL, 1, NULL),
(1274, 1273, 'Anti DSDNA', NULL, '-', 'IU/ml', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Less than 20: Negative</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">20 - 30: Equivocal</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Greater than 30: Positive</span><br></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 11:57:57', '2024-08-15 11:57:57', NULL, 1, NULL),
(1275, 1273, 'Note', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 11:57:57', '2024-08-15 11:57:57', NULL, 1, 'A positive test result for double-stranded DNA(dsDNA) antibodies is consistent with the diagnosis of systemic lupus erythematosus. Clinical flares of disease in patients with LE may not be accompanied by changes in the levels of dsDNA antibodies. Positive results may occur in patients with diseases other than LE. Patients with rheumatoid arthritis can develop anti-dsDNA antibodies, however they are usually treatment related. Anti-TNFa biological therapies, such as adalimumab, infliximab and etanercept, can often induce the production of anti-dsDNA antibodies. They are usually low avidity and are only detectable transiently after treatment. The presence of these antibodies can induce a lupus-like syndrome in some cases. Infection with viral pathogens can induce anti-dsDNA antibodies transiently. Human immunodeficiency virus, parvovirus B19 and BK virus are known to induce these antibodies. There is little evidence supporting the association between anti-dsDNA antibodies and other diseases. Occasionally the monoclonal proteins produced by myeloma patients can be anti-dsDNA. Also, some patients with type 1 autoimmune hepatitis produce anti-dsDNA antibodies.'),
(1276, 0, 'ANTI ds-DNA - IFA', '-', '-', NULL, NULL, '', 0, 100, 0, 0, NULL, '2024-08-15 11:58:30', '2024-08-15 11:58:30', NULL, 1, NULL),
(1277, 1276, 'Anti-DSDNA', NULL, '-', 'IU/ml', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Less than 20: Negative</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">20-30: Equivocal</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Greater than: Positive</span><br></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 11:58:30', '2024-08-15 11:58:30', NULL, 1, NULL),
(1278, 0, 'ANTI MULLERIAN HORMONE', '( AMH )', '-', NULL, NULL, '', 0, 10, 0, 0, NULL, '2024-08-15 11:59:28', '2024-08-15 11:59:28', NULL, 1, NULL),
(1279, 1278, 'ANTI MULLERIAN HORMONE (AMH)', NULL, '-', 'ng/ml', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">0.73 - 16.05</span></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 11:59:28', '2024-08-15 11:59:28', NULL, 1, NULL),
(1280, 1278, 'Interpretation', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 11:59:28', '2024-08-15 11:59:28', NULL, 1, 'Antimullerian Hormone (AMH) is produced directly by the granulosa cells of ovarian follicles. AMH levels correlate with the number of antral follicles. Women with lower AMH have lower antral follicular counts and produce a lower number of oocytes compared with women with higher levels. AMH levels do not vary with the menstrual cycle and can be measured independently of the day of the menstrual cycle.<br />\r\nAMH can be used for:<br />\r\n1. Evaluating fertility potential and ovarian response in an IVF cycle. Women with low AMH levels are more likely to be poor ovarian responders.<br />\r\n2. Measuring ovarian aging - Diminished ovarian reserve is signaled by reduced baseline serum AMH levels. Women with poor ovarian rereserve who have entered the menopause have low levels of AMH.<br />\r\n3. AMH levels can also be used for ther clinical applications like diagnosis and follow up of granulose cell tumour of ovaries, evaluation of delayed precocious puberty, perimenopausal transition in women. Kindly correlate clinically.'),
(1281, 0, 'ANTI NUCLEAR ANTIBODY', '( ANA )', '-', NULL, NULL, '', 0, 100, 0, 0, NULL, '2024-08-15 12:00:12', '2024-08-15 12:00:12', NULL, 1, NULL),
(1282, 1281, 'ANTI NUCLEAR ANTIBODY', NULL, '-', 'Index', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Negative: Less than 1.0</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Borderline Positive: 1.0 - 1.2</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Positive: Greater than or Equal to 1.2</span><br></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 12:00:12', '2024-08-15 12:00:12', NULL, 1, NULL),
(1283, 0, 'ANTI NUCLEAR ANTIBODY ( ANA ) - IFA', '-', '-', NULL, NULL, '', 0, 100, 0, 0, NULL, '2024-08-15 12:02:16', '2024-08-15 12:02:16', NULL, 1, NULL),
(1284, 1283, 'Result', NULL, '-', '', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 12:02:16', '2024-08-15 12:02:16', NULL, 1, NULL),
(1285, 1283, 'Advise (Optional)', NULL, '-', '', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 12:02:16', '2024-08-15 12:02:16', NULL, 1, NULL),
(1286, 1283, 'Flourescence (Optional)', NULL, '-', '', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 12:02:16', '2024-08-15 12:02:16', NULL, 1, NULL),
(1287, 1283, 'Intensity (Optional)', NULL, '-', '', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 12:02:16', '2024-08-15 12:02:16', NULL, 1, NULL),
(1288, 1283, 'Titers (Dilution) (Optional)', NULL, '-', '', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 12:02:16', '2024-08-15 12:02:16', NULL, 1, NULL),
(1289, 1283, 'Flourescence Pattern (Optional)', NULL, '-', '', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 12:02:16', '2024-08-15 12:02:16', NULL, 1, NULL),
(1290, 1283, 'Test Description:', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 12:02:16', '2024-08-15 12:02:16', NULL, 1, 'Antinuclear antibodies (ANAs) are unusual antibodies, detectable in the blood, that have the capability of binding to certain structures within the nucleus of the cells. ANAs indicate the possible presence of autoimmunity &amp; provide, therefore, an indication of autoimmune illness. Fluorescence tech. are frequently used to actually detect the antibodies in the cells, thus ANA testing is sometimes referred to as fluorescent antinuclear antibody test (FANA). The ANA test is a sensitive screening test used to detect autoimmune diseases.'),
(1291, 0, 'ANTI PHOSPHOLIPID ANTIBODIES (IgG & IgM)', '-', '-', NULL, NULL, '', 0, 220, 0, 0, NULL, '2024-08-15 12:03:10', '2024-08-15 12:03:10', NULL, 1, NULL),
(1292, 1291, 'Immunoglobulin G(IgG)', NULL, '-', 'U/ml', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Negative: Less than 12</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Equivocal: 12-18</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Positive: Greater than 18</span><br></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 12:03:10', '2024-08-15 12:03:10', NULL, 1, NULL),
(1293, 1291, 'Immunoglobulin M(IgM)', NULL, '-', 'U/ml', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Negative: Less than 12</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Equivocal: 12-18</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Positive: Greater than 18</span><br></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 12:03:10', '2024-08-15 12:03:10', NULL, 1, NULL),
(1294, 0, 'Anti Thyroglobulin Antibody (ATG)', '-', '-', NULL, NULL, '', 0, 100, 0, 0, NULL, '2024-08-15 12:03:43', '2024-08-15 12:03:43', NULL, 1, NULL),
(1295, 1294, 'Anti Thyroglobulin Antibody (ATG)', NULL, '-', 'IU/MI', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">0-4.11</span></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 12:03:43', '2024-08-15 12:03:43', NULL, 1, NULL),
(1296, 0, 'Anti Thyroid Antibodies (ATG & TPO)', '-', '-', NULL, NULL, '', 0, 100, 0, 0, NULL, '2024-08-15 12:04:19', '2024-08-15 12:04:19', NULL, 1, NULL),
(1297, 1296, 'Anti Thyroglobulin Antibody (ATG)', NULL, '-', 'IU/MI', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">0-4.11</span></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 12:04:19', '2024-08-15 12:04:19', NULL, 1, NULL),
(1298, 1296, 'Anti Throperoxidase Antibody', NULL, '-', 'IU/MI', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">0-5.61</span></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 12:04:19', '2024-08-15 12:04:19', NULL, 1, NULL),
(1299, 0, 'Anti Thyroperoxidase (TPO) Antibody', '-', '-', NULL, NULL, '', 0, 100, 0, 0, NULL, '2024-08-15 12:04:49', '2024-08-15 12:04:49', NULL, 1, NULL),
(1300, 1299, 'Anti Thyroperoxidase (TPO) Antibody', NULL, '-', 'IU/MI', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">0-5.61</span></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 12:04:49', '2024-08-15 12:04:49', NULL, 1, NULL),
(1301, 0, 'Apolipoprotein A1', '1', '1', NULL, NULL, '', 0, 100, 0, 0, NULL, '2024-08-15 12:05:29', '2024-08-15 12:05:29', NULL, 1, NULL),
(1302, 1301, 'Apolipoprotein A1', NULL, '1', 'mg/dl', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">107-177</span></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 12:05:29', '2024-08-15 12:05:29', NULL, 1, NULL),
(1303, 0, 'APOLIPOPROTEIN B', '-', '-', NULL, NULL, '', 0, 100, 0, 0, NULL, '2024-08-15 12:05:59', '2024-08-15 12:05:59', NULL, 1, NULL),
(1304, 1303, 'APOLIPOPROTEIN B', NULL, '-', 'mg/dl', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">60-138</span></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 12:05:59', '2024-08-15 12:05:59', NULL, 1, NULL),
(1305, 0, 'aPTT', '-', '-', NULL, NULL, '', 0, 100, 0, 0, NULL, '2024-08-15 12:06:35', '2024-08-15 12:06:35', NULL, 1, NULL),
(1306, 1305, 'Test', NULL, '-', 'sec', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 12:06:35', '2024-08-15 12:06:35', NULL, 1, NULL),
(1307, 1305, 'Control', NULL, '-', 'sec', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 12:06:35', '2024-08-15 12:06:35', NULL, 1, NULL),
(1308, 0, 'ARTERIAL BLOOD GASES ( ABG )', '-', '-', NULL, NULL, '', 0, 100, 0, 0, NULL, '2024-08-15 12:08:05', '2024-08-15 12:08:05', NULL, 1, NULL),
(1309, 1308, 'PH', NULL, '-', '', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">7.350 - 7.450</span></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 12:08:05', '2024-08-15 12:08:05', NULL, 1, NULL),
(1310, 1308, 'PCO2', NULL, '-', 'mmHg', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">35.0 - 45.0</span></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 12:08:05', '2024-08-15 12:08:05', NULL, 1, NULL),
(1311, 1308, 'PO2', NULL, '-', 'mmHg', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">80.0-100.0</span></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 12:08:05', '2024-08-15 12:08:05', NULL, 1, NULL),
(1312, 1308, 'HCO3 act', NULL, '-', 'mmol/L', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 12:08:05', '2024-08-15 12:08:05', NULL, 1, NULL),
(1313, 1308, 'BE(B)', NULL, '-', 'mmol/L', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 12:08:05', '2024-08-15 12:08:05', NULL, 1, NULL),
(1314, 1308, 'O2 SAT', NULL, '-', '%', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 12:08:05', '2024-08-15 12:08:05', NULL, 1, NULL),
(1315, 1308, 'Ct CO2', NULL, '-', 'mmol/L', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 12:08:05', '2024-08-15 12:08:05', NULL, 1, NULL),
(1316, 0, 'BETA 2 MICROGLOBULIN', '-', '-', NULL, NULL, '', 0, 120, 0, 0, NULL, '2024-08-15 12:10:00', '2024-08-15 12:10:00', NULL, 1, NULL),
(1317, 1316, 'S.Beta 2 Microglobulin', NULL, '-', 'ng/ml', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">810-2190</span></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 12:10:00', '2024-08-15 12:10:00', NULL, 1, NULL),
(1318, 0, 'Beta Thalassemia (Mutation analysis for all exons on peripheral blood)', '-', '-', NULL, NULL, '', 0, 100, 0, 0, NULL, '2024-08-15 12:10:27', '2024-08-15 12:10:27', NULL, 1, NULL),
(1319, 1318, 'BETA THALASSEMIA (MUTATION ANALYSIS FOR ALL EXONS ON PERIPHERAL BLOOD)', NULL, '-', '', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 12:10:27', '2024-08-15 12:10:27', NULL, 1, NULL),
(1320, 0, 'BIOCORBONATE', '-', '-', NULL, NULL, '', 0, 100, 0, 0, NULL, '2024-08-15 12:10:54', '2024-08-15 12:10:54', NULL, 1, NULL),
(1321, 1320, 'Bicarbonate', NULL, '-', 'mmol/Lt', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">21 - 32 mmol/Lt</span></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 12:10:54', '2024-08-15 12:10:54', NULL, 1, NULL),
(1322, 0, 'Biotinidase', '-', '-', NULL, NULL, '', 0, 100, 0, 0, NULL, '2024-08-15 12:11:19', '2024-08-15 12:11:19', NULL, 1, NULL),
(1323, 1322, 'Biotinidase', NULL, '-', 'U/L', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">3.5-13.8</span></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 12:11:19', '2024-08-15 12:11:19', NULL, 1, NULL),
(1324, 0, 'BLEEDING TIME ( BT ) & CLOTTING TIME ( CT )', '-', '-', NULL, NULL, '', 0, 21, 0, 0, NULL, '2024-08-15 12:11:54', '2024-08-15 12:11:54', NULL, 1, NULL),
(1325, 1324, 'BLEEDING TIME-BT', NULL, '-', 'Min', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">1 - 5 min</span></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 12:11:54', '2024-08-15 12:11:54', NULL, 1, NULL),
(1326, 1324, 'CLOTTING TIME-CT', NULL, '-', 'Min', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">3 - 10 min</span></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 12:11:54', '2024-08-15 12:11:54', NULL, 1, NULL),
(1327, 0, 'BLEEDING TIME - BT', '--', '--', NULL, NULL, '', 0, 10, 0, 0, NULL, '2024-08-15 12:12:21', '2024-08-15 12:12:21', NULL, 1, NULL),
(1328, 1327, 'BLEEDING TIME - BT', NULL, '--', 'Min', '<p>1 - 5 Min</p>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 12:12:21', '2024-08-15 12:12:21', NULL, 1, NULL),
(1329, 0, 'Blood Glucose - PG (2 hrs After 75 gms of Glucose)', '-', '-', NULL, NULL, '', 0, 10, 0, 0, NULL, '2024-08-15 12:12:42', '2024-08-15 12:12:42', NULL, 1, NULL),
(1330, 1329, 'Blood Glucose - PG (2 hrs After 75 gms of Glucose)', NULL, '-', 'mg/dl', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">70 - 140</span></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 12:12:42', '2024-08-15 12:12:42', NULL, 1, NULL),
(1331, 0, 'BLOOD GROUP', '-', '-', NULL, NULL, '', 0, 100, 0, 0, NULL, '2024-08-15 12:14:15', '2024-08-15 12:14:15', NULL, 1, NULL),
(1332, 1331, 'BLOOD GROUP', NULL, '-', '', '', 'select', 0, 0, 0, 0, NULL, '2024-08-15 12:14:15', '2024-10-05 18:06:01', NULL, 1, NULL),
(1333, 1331, 'RH TYPING', NULL, '-', '', '', 'select', 0, 0, 0, 0, NULL, '2024-08-15 12:14:15', '2024-10-05 18:06:01', NULL, 1, NULL),
(1334, 0, 'Blood pressure', 'BP', '-', NULL, NULL, '', 0, 100, 0, 0, NULL, '2024-08-15 12:14:43', '2024-08-15 12:14:43', NULL, 1, NULL),
(1335, 1334, 'Blood pressure', NULL, '-', 'mmHg', '<p>120-80</p>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 12:14:43', '2024-08-15 12:14:43', NULL, 1, NULL),
(1336, 0, 'BONE MARROW ASPIRATION CYTOLOGY', '-', '-', NULL, NULL, '', 0, 100, 0, 0, NULL, '2024-08-15 12:17:57', '2024-08-15 12:17:57', NULL, 1, NULL),
(1337, 1336, 'SPECIMAN NO', NULL, '-', '', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 12:17:57', '2024-08-15 12:17:57', NULL, 1, NULL),
(1338, 1336, 'CLINICAL HISTORY (Optional)', NULL, '-', '', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 12:17:57', '2024-08-15 12:17:57', NULL, 1, NULL),
(1339, 1336, 'CELLULARITY', NULL, '-', '', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 12:17:57', '2024-08-15 12:17:57', NULL, 1, NULL),
(1340, 1336, 'MYELOID-ERYTHROID RATIO', NULL, '-', '', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 12:17:57', '2024-08-15 12:17:57', NULL, 1, NULL),
(1341, 1336, 'DIFFERENTIAL COUNT (Optional)', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 12:17:57', '2024-08-15 12:17:57', NULL, 1, '');
INSERT INTO `tests` (`id`, `parent_id`, `name`, `shortcut`, `sample_type`, `unit`, `reference_range`, `type`, `separated`, `price`, `status`, `title`, `precautions`, `created_at`, `updated_at`, `deleted_at`, `category_id`, `result_temp`) VALUES
(1342, 1336, 'ERYTHROID SERIES', NULL, '-', '', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 12:17:57', '2024-08-15 12:17:57', NULL, 1, NULL),
(1343, 1336, 'MYELOID SERIES', NULL, '-', '', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 12:17:57', '2024-08-15 12:17:57', NULL, 1, NULL),
(1344, 1336, 'LYMPHOID SERIES', NULL, '-', '', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 12:17:57', '2024-08-15 12:17:57', NULL, 1, NULL),
(1345, 1336, 'MEGAKARYOCYTES', NULL, '-', '', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 12:17:57', '2024-08-15 12:17:57', NULL, 1, NULL),
(1346, 1336, 'ABNORMAL CELLS', NULL, '-', '', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 12:17:57', '2024-08-15 12:17:57', NULL, 1, NULL),
(1347, 1336, 'PARASITES', NULL, '-', '', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 12:17:57', '2024-08-15 12:17:57', NULL, 1, NULL),
(1348, 1336, 'IRON STORES (Optional)', NULL, '-', '', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 12:17:57', '2024-08-15 12:17:57', NULL, 1, NULL),
(1349, 1336, 'SPECIAL STAINS (Optional)', NULL, '-', '', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 12:17:57', '2024-08-15 12:17:57', NULL, 1, NULL),
(1350, 1336, 'IMPRESSION', NULL, '-', '', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 12:17:57', '2024-08-15 12:17:57', NULL, 1, NULL),
(1351, 1336, 'Note (Optional)', NULL, '-', '', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 12:17:57', '2024-08-15 12:17:57', NULL, 1, NULL),
(1352, 0, 'C PEPTIDE', '-', '-', NULL, NULL, '', 0, 100, 0, 0, NULL, '2024-08-15 12:18:37', '2024-08-15 12:18:37', NULL, 1, NULL),
(1353, 1352, 'C-Peptide', NULL, '-', 'ng/mL', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">0.81 - 3.85</span></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 12:18:37', '2024-08-15 12:18:37', NULL, 1, NULL),
(1354, 1352, 'Interpretation :', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 12:18:37', '2024-08-15 12:18:37', NULL, 1, '<strong><u>Clinical Use </u></strong><br />\r\nAssess pancreatic islet cell function &middot; Distinguish insulin secreting tumors ( Insulinoma) from exogenous insulin administration as a cause of hypoglycemia ( commercial insulin does not contain C-peptide). Sera from Insulinoma patients have high insulin and high C-peptide levels whereas hypoglycemia from injected or exogenous insulin shows high insulin and low C-peptide levels &middot; Distinguish Type I and Type II Diabetes mellitus<br />\r\n<strong>Increased Levels - Insulinoma &amp; Type II Diabetes<br />\r\nDecreased Levels- Type I Diabetes &amp; Exogenous insulin administration</strong>'),
(1355, 0, 'c-ANCA', '-', '-', NULL, NULL, '', 0, 100, 0, 0, NULL, '2024-08-15 12:19:31', '2024-08-15 12:19:31', NULL, 1, NULL),
(1356, 1355, 'c-ANCA', NULL, '-', '', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 12:19:31', '2024-08-15 12:19:31', NULL, 1, NULL),
(1357, 1355, 'TEST DESCRIPTION :', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 12:19:31', '2024-08-15 12:19:31', NULL, 1, 'Anti neutrophil cytoplasmic antibody (ANCA) tests are used to diagnose and monitor inflammatory activity in the primary systemic small vessel vasculitides. ANCA in these diseases is best demonstrated by using a combination of Indirect Imunofluorescence of normal peripheral blood neutrophils and ELISAs that detect ANCA specific for proteinase 3(PR3) or Myeloperoxidase (MPO)<br />\r\n1. c-ANCA is associated with Wegener&#39;s granulomatosis and less frequently with microscopic polyangitis.Approximately 85% of the patients with C-ANCA pattern by IFA have antibodies specific for PR3.<br />\r\n2- Atypical C-ANCA has no clinical significance.<br />\r\n3. p-ANCA is associated with microscopic polyangiitis and focal necrotizing and crescentic glomerulonephritis. Churg-Strauss syndrome is associated with p-ANCA directed against MPO. Approximately 90% of patients with a P-ANCA pattern by IFA have antibodies specific for MPO.<br />\r\n4. Atypical P-ANCA is described with a mixed group of inflammatory diseases e.g sclerosing cholangitis and connective tissue disorders.Antigen targets include lactoferrin,elastase,cathepsin G and BPI. Patients with a number of other diseases, such as ulcerative colitis and ankylosing spondylitis, will commonly have ANCA as well. However in these cases there is no associated vasculitis and the ANCA are thought to be incidental or epiphenomena rather than part of a disease itself.'),
(1358, 1355, 'TECHNIQUE', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 12:19:31', '2024-08-15 12:19:31', NULL, 1, '1-, BIOCHIP slide with Hep 2 cells, primate liver, ethanolfixed granulocytes and formaldehyde fixed granulocytes is used. The technique avoids false positive reporting of ANCA in ANA positive patients.<br />\r\n2-Indirect immunofluorescene, sample screening dilution used is 1:10.<br />\r\n<strong>Remarks:</strong><br />\r\nDecision about treatments should not be soley based on results of ANCA tests.'),
(1359, 0, 'C3 C4', '-', '-', NULL, NULL, '', 0, 1, 0, 0, NULL, '2024-08-15 12:20:40', '2024-08-15 12:20:40', NULL, 1, NULL),
(1360, 1359, 'C3', NULL, '-', 'g/L', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">0.9 - 1.9</span></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 12:20:40', '2024-08-15 12:20:40', NULL, 1, NULL),
(1361, 1359, 'C4', NULL, '-', 'g/L', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">0.1 - 0.40</span></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 12:20:40', '2024-08-15 12:20:40', NULL, 1, NULL),
(1362, 0, 'CA -125 ( OVARIAN CANCER MARKER )', '-', '-', NULL, NULL, '', 0, 100, 0, 0, NULL, '2024-08-15 12:21:24', '2024-08-15 12:21:24', NULL, 1, NULL),
(1363, 1362, 'CA -125', NULL, '-', 'U/ml', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">0 - 35</span></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 12:21:24', '2024-08-15 12:21:24', NULL, 1, NULL),
(1364, 1362, 'Note', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 12:21:24', '2024-08-15 12:21:24', NULL, 1, 'Serum CA 125 is elevated in 1% of normal healthy women, 3% of normal healthy women with benign ovarian diseases and 6% of patients with non-neoplastic conditions (including pregnancy, menstruation, endometriosis,uterine fibrosis, acute salphingitis, hepatic diseases and inflammation of peritoneum or pericardium ).CA 125 has a low clinical sensitivity and specificity as a tumor marker. Clinically an elevated CA 125 value alone is not of diagnostic value as a test for cancer and should only be used in conjunction with other clinical manifestations and diagnostic parameters.'),
(1365, 0, 'CA 15.3 ( BREAST CANCER MARKER )', '-', '-', NULL, NULL, '', 0, 10, 0, 0, NULL, '2024-08-15 12:22:49', '2024-08-15 12:22:49', NULL, 1, NULL),
(1366, 1365, 'CA -15.3', NULL, '-', 'U/mL', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Less than 32.4</span></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 12:22:49', '2024-08-15 12:22:49', NULL, 1, NULL),
(1367, 1365, 'Interpretation', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 12:22:49', '2024-08-15 12:22:49', NULL, 1, 'CA 15-3 assay is useful for monitoring the course of disease and therapy in metastatic breast cancer patients, and for detection of recurrence.'),
(1368, 1365, 'Remark :', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 12:22:49', '2024-08-15 12:22:49', NULL, 1, 'CA 15.3 may be elevated in benign Breast and Liver diseases.'),
(1369, 0, 'CA 19.9 ( PANCREATIC CANCER MARKER )', '--', '--', NULL, NULL, '', 0, 100, 0, 0, NULL, '2024-08-15 12:23:34', '2024-08-15 12:23:34', NULL, 1, NULL),
(1370, 1369, 'CA -19.9', NULL, '--', 'U/mL', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Less than 37</span></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 12:23:34', '2024-08-15 12:23:34', NULL, 1, NULL),
(1371, 1369, 'Interpretation', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 12:23:34', '2024-08-15 12:23:34', NULL, 1, 'CA 19-9 is elevated in most patients with advanced Pancreatic Cancer, But it may also be elevated in other cancers, conditions, and diseases such as Colorectal cancer, Lung Cancer, Gall Bladder Cancer, Gallstones, Pancreatitis, Cystic Fibrosis, and Liver Disease. Bile duct obstruction may also cause very high CA 19-9 levels. Very small amounts of CA 19-9 may also be found in healthy patients.\r\nFor Diagnostic Purpose, Results should always be assessed in conjunction with the patients medical history, Clinical Examination and other findings'),
(1372, 0, 'CARBAMAZEPINE LEVEL', '-', '-', NULL, NULL, '', 0, 100, 0, 0, NULL, '2024-08-15 12:25:04', '2024-08-15 12:25:04', NULL, 1, NULL),
(1373, 1372, 'CARBAMAZEPINE, SERUM', NULL, '-', 'ug/mL', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">4.00 - 12.00</span><br></p><div bis_skin_checked=\"1\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><div bis_skin_checked=\"1\">&lt;table border=\"01\" cellpadding=\"5\" cellspacing=\"0\"&gt;</div><div bis_skin_checked=\"1\"><span style=\"white-space:pre\">	</span>&lt;tbody&gt;</div><div bis_skin_checked=\"1\"><span style=\"white-space:pre\">		</span>&lt;tr&gt;</div><div bis_skin_checked=\"1\"><span style=\"white-space:pre\">			</span>&lt;td&gt;Result in ug/mL&lt;/td&gt;</div><div bis_skin_checked=\"1\"><span style=\"white-space:pre\">			</span>&lt;td&gt;Remarks&lt;/td&gt;</div><div bis_skin_checked=\"1\"><span style=\"white-space:pre\">		</span>&lt;/tr&gt;</div><div bis_skin_checked=\"1\"><span style=\"white-space:pre\">		</span>&lt;tr&gt;</div><div bis_skin_checked=\"1\"><span style=\"white-space:pre\">			</span>&lt;td&gt;4-12&lt;/td&gt;</div><div bis_skin_checked=\"1\"><span style=\"white-space:pre\">			</span>&lt;td&gt;Therapeutic range&amp;nbsp;&lt;/td&gt;</div><div bis_skin_checked=\"1\"><span style=\"white-space:pre\">		</span>&lt;/tr&gt;</div><div bis_skin_checked=\"1\"><span style=\"white-space:pre\">		</span>&lt;tr&gt;</div><div bis_skin_checked=\"1\"><span style=\"white-space:pre\">			</span>&lt;td&gt;&amp;gt;15&lt;/td&gt;</div><div bis_skin_checked=\"1\"><span style=\"white-space:pre\">			</span>&lt;td&gt;Toxic range&lt;/td&gt;</div><div bis_skin_checked=\"1\"><span style=\"white-space:pre\">		</span>&lt;/tr&gt;</div><div bis_skin_checked=\"1\"><span style=\"white-space:pre\">	</span>&lt;/tbody&gt;</div><div bis_skin_checked=\"1\">&lt;/table&gt;</div><div><br></div></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 12:25:04', '2024-08-15 12:25:04', NULL, 1, NULL),
(1374, 1372, 'Note', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 12:25:04', '2024-08-15 12:25:04', NULL, 1, '1. Co-administration of Phenytoin/Valproic acid/Erythromycin increases the rate of metabolism of Carbamazepine thereby reducing blood concentration\r\n2. Itraconazole and grape fruit juice increase Carbamazepine levels'),
(1375, 0, 'CARCINO EMBRYONIC ANTIGEN', '( CEA )', '-', NULL, NULL, '', 0, 10, 0, 0, NULL, '2024-08-15 12:25:59', '2024-08-15 12:25:59', NULL, 1, NULL),
(1376, 1375, 'CEA - Carcino Embryonic Antigen,', NULL, '-', 'ng/mL', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Non Smokers Less than 3.00</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Smokers Less than 5.00</span><br></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 12:25:59', '2024-08-15 12:25:59', NULL, 1, NULL),
(1377, 1375, 'Note', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 12:25:59', '2024-08-15 12:25:59', NULL, 1, '1. CEA is used as a marker for monitoring colorectal and gastrointestinal carcinoma and is raised in carcinoma of lung, breast, pancreas, prostate, stomach and ovary.<br />\r\n2. Benign conditions which can elevate CEA include smoking, hepatic diseases, infections, inflammatory bowel disease, trauma, collagen vascular disease, renal disorders, pancreatitis, cirrhosis of the liver and peptic ulcer, chemotheraphy and radiation.<br />\r\n3. CEA is not an effective screening test for hidden / occult cancer since early tumors do not cause significant blood elevations.<br />\r\n<br />\r\nWhen interpreting tumour marker tests, the following recommendations should be kept in mind:<br />\r\n1. Do not rely on a single test result.<br />\r\n2. Serial levels are best for monitoring status. Try to use the same laboratory and assay method for monitoring.<br />\r\n3. Use of multiple markers may yield better sensitivity and specificity.<br />\r\n4. Possibility of ectopic tumour markers and heterophilic antibodies should be remembered.'),
(1378, 0, 'CCP - CYCLIC CITRULLINATED PEPTIDE ANTIBODY', '-', '-', NULL, NULL, '', 0, 100, 0, 0, NULL, '2024-08-15 12:27:08', '2024-08-15 12:27:08', NULL, 1, NULL),
(1379, 1378, 'Cyclic Citrullinated Peptide', NULL, '-', 'U/mL', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Negative : Less than 5.0</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Positive : =&gt;5.0</span><br></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 12:27:08', '2024-08-15 12:27:08', NULL, 1, NULL),
(1380, 1378, 'Interpretations', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 12:27:08', '2024-08-15 12:27:08', NULL, 1, 'Anti CCP used in evaluating patients suspected of having rheumatoid arthritis (RA) and differentiating RA from other connective tissue diseases that may present with arthritis. A positive result for cyclic citrullinated peptide (CCP) antibodies indicates a high likelihood of rheumatoid arthritis. Positive results for cyclic citrullinated peptide (CCP) antibodies may occur in some patients with systemic lupus erythematosus or other autoimmune, connective tissue diseases.'),
(1381, 0, 'CD4 & CD8 COUNT', '-', '-', NULL, NULL, '', 0, 100, 0, 0, NULL, '2024-08-15 12:29:47', '2024-08-15 12:29:47', NULL, 1, NULL),
(1382, 1381, '% CD3+/CD45+ (T-CELLS)', NULL, '-', '%', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">59 - 84</span></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 12:29:47', '2024-08-15 12:29:47', NULL, 1, NULL),
(1383, 1381, 'ABSOLUTE CD3+ LYMPHOCYTE COUNT', NULL, '-', '/μL', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">716 - 2130</span></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 12:29:47', '2024-08-15 12:29:47', NULL, 1, NULL),
(1384, 1381, '% CD3+/CD4+ (T-HELPER CELLS)', NULL, '-', '%', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">26 - 48</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 12:29:47', '2024-08-15 12:29:47', NULL, 1, NULL),
(1385, 1381, 'ABSOLUTE CD4+ LYMPHOCYTE COUNT', NULL, '-', '/μL', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">354 - 1100</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 12:29:47', '2024-08-15 12:29:47', NULL, 1, NULL),
(1386, 1381, '% CD3+/CD8+ (T-SUPPRESSOR CELLS)', NULL, '-', '%', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">18 - 41</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 12:29:47', '2024-08-15 12:29:47', NULL, 1, NULL),
(1387, 1381, 'ABSOLUTE CD8+ LYMPHOCYTE COUNT', NULL, '-', '/μL', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">192 - 980</span></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 12:29:47', '2024-08-15 12:29:47', NULL, 1, NULL),
(1388, 1381, 'CD4/CD8 RATIO', NULL, '-', '', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">0.57 - 2.03</span></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 12:29:47', '2024-08-15 12:29:47', NULL, 1, NULL),
(1389, 0, 'CEREBROSPINAL FLUID EXAMINATION', '( CSF )', '-', NULL, NULL, '', 0, 210, 0, 0, NULL, '2024-08-15 12:34:35', '2024-08-15 12:34:35', NULL, 1, NULL),
(1390, 1389, 'Glucose', NULL, '-', 'mg/dl', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">50-80</span></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 12:34:35', '2024-08-15 12:41:53', '2024-08-15 12:41:53', 1, ''),
(1391, 1389, 'Physical Examination', NULL, '-', '', '', 'select', 0, 0, 0, 0, NULL, '2024-08-15 12:34:35', '2024-08-15 12:41:55', '2024-08-15 12:41:55', 1, NULL),
(1392, 1389, 'Color', NULL, '-', '', '', 'select', 0, 0, 0, 0, NULL, '2024-08-15 12:34:35', '2024-08-15 12:41:56', '2024-08-15 12:41:56', 1, NULL),
(1393, 1389, 'Appearance', NULL, '-', '', '', 'select', 0, 0, 0, 0, NULL, '2024-08-15 12:34:35', '2024-08-15 12:41:59', '2024-08-15 12:41:59', 1, NULL),
(1394, 1389, 'Volume', NULL, '-', 'ml', '', 'select', 0, 0, 0, 0, NULL, '2024-08-15 12:34:35', '2024-08-15 12:42:00', '2024-08-15 12:42:00', 1, NULL),
(1395, 1389, 'Cobweb/Coaggulum', NULL, '-', '', '', 'select', 0, 0, 0, 0, NULL, '2024-08-15 12:34:35', '2024-08-15 12:42:01', '2024-08-15 12:42:01', 1, ''),
(1396, 1389, 'Xanthochromia', NULL, '-', '', '', 'select', 0, 0, 0, 0, NULL, '2024-08-15 12:34:35', '2024-08-15 12:42:02', '2024-08-15 12:42:02', 1, ''),
(1397, 1389, 'CHEMICAL EXAMINATION', NULL, '-', 'mg/dl', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">50-80</span></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 12:34:35', '2024-08-15 12:40:51', '2024-08-15 12:40:51', 1, ''),
(1398, 1389, 'CHEMICAL EXAMINATION', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 12:41:16', '2024-08-15 12:42:06', '2024-08-15 12:42:06', 1, ''),
(1399, 1389, 'Glucose', NULL, '-', 'mg/dl', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">50-80</span></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 12:41:16', '2024-08-15 12:42:03', '2024-08-15 12:42:03', 1, NULL),
(1400, 1389, 'Physical Examination', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 12:45:33', '2024-08-15 12:45:33', NULL, 1, ''),
(1401, 1389, 'Color', NULL, '-', '', '', 'select', 0, 0, 0, 0, NULL, '2024-08-15 12:45:33', '2024-08-15 12:45:33', NULL, 1, NULL),
(1402, 1389, 'Appearance', NULL, '-', '', '', 'select', 0, 0, 0, 0, NULL, '2024-08-15 12:45:33', '2024-08-15 12:45:33', NULL, 1, NULL),
(1403, 1389, 'Volume', NULL, '-', 'ml', '', 'select', 0, 0, 0, 0, NULL, '2024-08-15 12:45:33', '2024-08-15 12:45:33', NULL, 1, NULL),
(1404, 1389, 'Cobweb/Coaggulum', NULL, '-', '', '', 'select', 0, 0, 0, 0, NULL, '2024-08-15 12:45:33', '2024-08-15 12:45:33', NULL, 1, NULL),
(1405, 1389, 'Xanthochromia', NULL, '-', '', '', 'select', 0, 0, 0, 0, NULL, '2024-08-15 12:45:33', '2024-08-15 12:45:33', NULL, 1, NULL),
(1406, 1389, 'CHEMICAL EXAMINATION', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 12:45:33', '2024-08-15 12:45:33', NULL, 1, ''),
(1407, 1389, 'Glucose', NULL, '-', 'mg/dl', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">50-80</span></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 12:45:33', '2024-08-15 12:45:33', NULL, 1, NULL),
(1408, 0, 'CERULOPLASMIN', '-', '-', NULL, NULL, '', 0, 10, 0, 0, NULL, '2024-08-15 12:47:01', '2024-08-15 12:47:01', NULL, 1, NULL),
(1409, 1408, 'CERULOPLASMIN', NULL, '-', 'mg/dl', '<p>20-60</p>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 12:47:01', '2024-08-15 12:47:01', NULL, 1, NULL),
(1410, 1408, 'Techniques & Kits Used', NULL, '-', '', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 12:47:01', '2024-08-15 12:47:01', NULL, 1, NULL),
(1411, 1408, 'Interpretation', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 12:47:01', '2024-08-15 12:47:01', NULL, 1, '1. Low level of Ceruloplasmin also occur in patients with hepatic Insufficiency & Protein loss Syndrome.\r\n2. High serum levels of Ceruloplasmin are observed in Acute phase reaction, during use of Oral Contraceptives & withCholestase.'),
(1412, 0, 'CHOLINESTERASE', '-', '-', NULL, NULL, '', 0, 100, 0, 0, NULL, '2024-08-15 12:47:44', '2024-08-15 12:47:44', NULL, 1, NULL),
(1413, 1412, 'CHOLINESTERASE', NULL, '-', 'U/L', '<span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">5000-12000</span>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 12:47:44', '2024-08-15 12:47:44', NULL, 1, NULL),
(1414, 0, 'CLOTTING TIME - CT', '-', '-', NULL, NULL, '', 0, 100, 0, 0, NULL, '2024-08-15 12:49:08', '2024-08-15 12:49:08', NULL, 1, NULL),
(1415, 1414, 'CLOTTING TIME-CT', NULL, '-', 'Min', '<p>3 - 10 Min</p>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 12:49:08', '2024-08-15 12:49:08', NULL, 1, NULL),
(1416, 0, 'COMPLETE BLOOD COUNT', '(CBC)', 'BLOOD', NULL, NULL, '', 0, 300, 0, 0, NULL, '2024-08-15 12:59:16', '2024-10-06 13:43:51', NULL, 1, NULL),
(1417, 1416, 'Hemoglobin (Hb)', NULL, 'BLOOD', 'gm/dL', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">13.5 - 18.0</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 1, 0, NULL, '2024-08-15 12:59:16', '2024-10-15 20:45:09', NULL, 1, NULL),
(1418, 1416, 'Erythrocyte (RBC) Count', NULL, 'BLOOD', 'mil/cu.mm', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">4.7 - 6.0</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 1, 0, NULL, '2024-08-15 12:59:16', '2024-10-15 20:45:09', NULL, 1, NULL),
(1419, 1416, 'Packed Cell Volume (PCV)', NULL, 'BLOOD', '%', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">37 - 50</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 12:59:16', '2024-10-15 20:45:09', NULL, 1, NULL),
(1420, 1416, 'Total Leucocytes (WBC) Count', NULL, 'BLOOD', 'cell/cu.mm', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">4,000 - 11,000</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 1, 0, NULL, '2024-08-15 12:59:16', '2024-10-15 20:45:09', NULL, 1, NULL),
(1421, 1416, 'Mean Cell Volume (MCV)', NULL, 'BLOOD', 'fL', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">78 - 100</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 12:59:16', '2024-10-15 20:45:09', NULL, 1, NULL),
(1422, 1416, 'Mean Cell Haemoglobin (MCH)', NULL, 'BLOOD', 'pg', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">26 - 32</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 12:59:16', '2024-10-15 20:45:09', NULL, 1, NULL),
(1423, 1416, 'Mean Corpuscular Hb Concn. (MCHC)', NULL, 'BLOOD', 'g/dL', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">32 - 36</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 12:59:16', '2024-10-15 20:45:09', NULL, 1, NULL),
(1424, 1416, 'Red Cell Distribution Width (RDW) (Optional)', NULL, '-', '%', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">11.6 - 14.0</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 12:59:16', '2024-10-04 16:44:28', '2024-10-04 16:44:28', 1, NULL),
(1425, 1416, 'Platelet count', NULL, 'BLOOD', 'Lakh/Cumm', '<font color=\"#212529\" face=\"system-ui\"><span style=\"font-size: 13px;\">1.5 - 4.5</span></font>', 'text', 0, 0, 1, 0, NULL, '2024-08-15 12:59:16', '2024-10-15 20:45:09', NULL, 1, NULL),
(1426, 1416, 'Differential Leucocyte Count (DLC)', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 12:59:16', '2024-10-15 20:45:09', NULL, 1, ''),
(1427, 1416, 'Neutrophils', NULL, 'BLOOD', '%', '<p>40 - 75<br></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 12:59:16', '2024-10-15 20:45:09', NULL, 1, NULL),
(1428, 1416, 'Lymphocytes', NULL, 'BLOOD', '%', '<p>20 - 45<br></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 12:59:16', '2024-10-15 20:45:09', NULL, 1, NULL),
(1429, 1416, 'Monocytes', NULL, 'BLOOD', '%', '<p>02 - 10<br></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 12:59:16', '2024-10-15 20:45:09', NULL, 1, NULL),
(1430, 1416, 'Eosinophils', NULL, 'BLOOD', '%', '<p>01 - 06<br></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 12:59:16', '2024-10-15 20:45:09', NULL, 1, NULL),
(1431, 1416, 'Basophils', NULL, 'BLOOD', '%', '<p>0 - 0<br></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 12:59:16', '2024-10-15 20:45:09', NULL, 1, NULL),
(1432, 1416, 'Peripheral Smear', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 12:59:16', '2024-10-04 14:00:32', '2024-10-04 14:00:32', 1, ''),
(1433, 1416, 'RBC Morphology', NULL, '-', '', '', 'select', 0, 0, 0, 0, NULL, '2024-08-15 12:59:16', '2024-10-04 13:59:53', '2024-10-04 13:59:53', 1, NULL),
(1434, 1416, 'WBC Morphology', NULL, '-', '', '', 'select', 0, 0, 0, 0, NULL, '2024-08-15 12:59:16', '2024-10-04 13:59:59', '2024-10-04 13:59:59', 1, NULL),
(1435, 1416, 'PLATELET', NULL, '-', '', '', 'select', 0, 0, 0, 0, NULL, '2024-08-15 12:59:16', '2024-10-04 14:00:04', '2024-10-04 14:00:04', 1, NULL),
(1436, 1416, 'IMPRESSION', NULL, '-', '', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 12:59:16', '2024-10-04 14:00:10', '2024-10-04 14:00:10', 1, NULL),
(1437, 0, 'COMPLETED BLOOD COUNT (CBC+)', '-', '-', NULL, NULL, '', 0, 300, 0, 0, NULL, '2024-08-15 13:54:18', '2024-10-11 16:30:19', NULL, 1, NULL),
(1438, 1437, 'Hemoglobin (Hb)', NULL, '-', 'gm/dL', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">13.5 - 18.0</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 13:54:18', '2024-10-11 16:30:19', NULL, 1, NULL),
(1439, 1437, 'Erythrocyte (RBC) Count', NULL, '-', 'mil/cu.mm', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">4.7 - 6.0</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 13:54:18', '2024-10-11 16:30:19', NULL, 1, NULL),
(1440, 1437, 'Packed Cell Volume (PCV)', NULL, '-', '%', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">37 - 50</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 13:54:18', '2024-10-11 16:30:19', NULL, 1, NULL),
(1441, 1437, 'Total Leucocytes (WBC) Count', NULL, '-', 'cell/cu.mm', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">4000 - 11000</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 13:54:18', '2024-10-11 16:30:19', NULL, 1, NULL),
(1442, 1437, 'Mean Cell Volume (MCV)', NULL, '-', 'fL', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">78 - 100</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 13:54:18', '2024-10-11 16:30:19', NULL, 1, NULL),
(1443, 1437, 'Mean Cell Haemoglobin (MCH)', NULL, '-', 'pg', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">26 - 32</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 13:54:18', '2024-10-11 16:30:19', NULL, 1, NULL),
(1444, 1437, 'Mean Corpuscular Hb Concn. (MCHC)', NULL, '-', 'g/dL', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">32 - 36</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 13:54:18', '2024-10-11 16:30:19', NULL, 1, NULL),
(1445, 1437, 'Red Cell Distribution Width (RDW)', NULL, '-', '%', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">11.6 - 14.0</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 13:54:18', '2024-10-11 16:30:19', NULL, 1, NULL),
(1446, 1437, 'Differential Leucocyte Count (DLC)', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 13:54:18', '2024-10-11 16:30:19', NULL, 1, ''),
(1447, 1437, 'Neutrophils', NULL, '-', '%', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">40 - 80</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 13:54:18', '2024-10-11 16:30:19', NULL, 1, NULL),
(1448, 1437, 'Lymphocytes', NULL, '-', '%', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">20 - 40</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 13:54:18', '2024-10-11 16:30:19', NULL, 1, NULL),
(1449, 1437, 'Monocytes', NULL, '-', '%', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">02 - 10</span><br></p><div bis_skin_checked=\"1\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 13:54:18', '2024-10-11 16:30:19', NULL, 1, NULL),
(1450, 1437, 'Eosinophils', NULL, '-', '%', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">01 - 06</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 13:54:18', '2024-10-11 16:30:19', NULL, 1, NULL),
(1451, 1437, 'Basophils', NULL, '-', '%', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">00 - 01</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 13:54:18', '2024-10-11 16:30:19', NULL, 1, NULL),
(1452, 1437, 'Absolute Count', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 13:54:18', '2024-10-11 16:30:19', NULL, 1, ''),
(1453, 1437, 'Absolute Neutrophil Count', NULL, '-', '/c.mm', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">2000 - 7000</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 13:54:18', '2024-10-11 16:30:19', NULL, 1, NULL),
(1454, 1437, 'Absolute Lymphocyte Count', NULL, '-', '/c.mm', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">1000 - 3000</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 13:54:18', '2024-10-11 16:30:19', NULL, 1, NULL),
(1455, 1437, 'Absolute Monocyte Count', NULL, '-', '/c.mm', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">200 - 1000</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 13:54:18', '2024-10-11 16:30:19', NULL, 1, NULL),
(1456, 1437, 'Absolute Eosinophil Count', NULL, '-', '/c.mm', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">20 - 500</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 13:54:18', '2024-10-11 16:30:19', NULL, 1, NULL),
(1457, 1437, 'Absolute Basophils Count', NULL, '-', '/c.mm', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">20 - 100</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 13:54:18', '2024-10-11 16:30:19', NULL, 1, NULL),
(1458, 1437, 'Platelet Count', NULL, '-', 'Lakhs/Cu.mm', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">150 - 450</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 13:54:18', '2024-10-11 16:30:19', NULL, 1, NULL),
(1459, 0, 'CORTISOL Morning (7 - 10 am)', '-', '-', NULL, NULL, '', 0, 100, 0, 0, NULL, '2024-08-15 13:54:51', '2024-08-15 13:54:51', NULL, 1, NULL),
(1460, 1459, 'CORTISOL Morning (7 - 10 am)', NULL, '-', 'mcg/dl', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Term infant 1 to 7 days: 2.0 - 11.0</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Cord Blood: 5.0 to 17.0</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Children 1 to 16 Yrs- 8am:3-21</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Adults: 8am: 5-23</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">4pm: 3-16</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">8pm: Less than 50% of 8am values</span><br></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 13:54:51', '2024-08-15 13:54:51', NULL, 1, NULL),
(1461, 0, 'CROMOSOMAL STUDY - BLOOD', '-', '-', NULL, NULL, '', 0, 100, 0, 0, NULL, '2024-08-15 13:55:18', '2024-08-15 13:55:18', NULL, 1, NULL),
(1462, 1461, 'CROMOSOMAL STUDY', NULL, '-', '', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 13:55:18', '2024-08-15 13:55:18', NULL, 1, NULL),
(1463, 0, 'CROMOSOMAL STUDY - TISSUE', '-', '-', NULL, NULL, '', 0, 10, 0, 0, NULL, '2024-08-15 13:55:53', '2024-08-15 13:55:53', NULL, 1, NULL),
(1464, 1463, 'CROMOSOL STUDY H & W', NULL, '-', '', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 13:55:53', '2024-08-15 13:55:53', NULL, 1, NULL),
(1465, 0, 'CSF - PCR REPORT', '-', '-', NULL, NULL, '', 0, 10, 0, 0, NULL, '2024-08-15 13:56:53', '2024-08-15 13:56:53', NULL, 1, NULL),
(1466, 1465, 'Quantitative Real-Time NASBA PCR for Human Immunodeficiency Virus-1 (HIV-1) RNA', NULL, '-', '', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 13:56:53', '2024-08-15 13:56:53', NULL, 1, NULL),
(1467, 0, 'CYSTATIN C', '-', '-', NULL, NULL, '', 0, 100, 0, 0, NULL, '2024-08-15 13:57:28', '2024-08-15 13:57:28', NULL, 1, NULL),
(1468, 1467, 'CYSTATIN C', NULL, '-', 'mg/L', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">0.7 - 1.5</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 13:57:28', '2024-08-15 13:57:28', NULL, 1, NULL),
(1469, 0, 'Differential Leucocyte Count (DLC)', '-', '-', NULL, NULL, '', 0, 100, 0, 0, NULL, '2024-08-15 13:58:41', '2024-08-15 13:58:41', NULL, 1, NULL),
(1470, 1469, 'Neutrophils', NULL, '-', '%', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">40 - 80</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 13:58:41', '2024-08-15 13:58:41', NULL, 1, NULL),
(1471, 1469, 'Lymphocytes', NULL, '-', '%', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">20 - 40</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 13:58:41', '2024-08-15 13:58:41', NULL, 1, NULL),
(1472, 1469, 'Monocytes', NULL, '-', '%', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">02 - 10</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 13:58:41', '2024-08-15 13:58:41', NULL, 1, NULL),
(1473, 1469, 'Eosinophils', NULL, '-', '%', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">01 - 06</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 13:58:41', '2024-08-15 13:58:41', NULL, 1, NULL),
(1474, 1469, 'Basophils', NULL, '-', '%', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">00 - 01</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 13:58:41', '2024-08-15 13:58:41', NULL, 1, NULL),
(1475, 0, 'DIGOXIN, SERUM', '-', '-', NULL, NULL, '', 0, 210, 0, 0, NULL, '2024-08-15 13:59:21', '2024-08-15 13:59:21', NULL, 1, NULL),
(1476, 1475, 'DIGOXIN, SERUM', NULL, '-', 'ng/mL', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">0.80 - 2.00</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 13:59:21', '2024-08-15 13:59:21', NULL, 1, NULL),
(1477, 1475, 'Clinical Note:', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 13:59:21', '2024-08-15 13:59:21', NULL, 1, 'Digoxin is a commonly used drug in the management of Congestive heart failure and Supraventricular tachycardia. Increased sensitivity to Digoxin is noted in states of Hypokalemia, Hypomagnesemia and Hypercalcemia making establishment of true therapeutic concentration difficult because all parameters are interactive. There is a difference between peak plasma concentration and peak tissue concentration of Digoxin. Clinically effective range for Digoxin is not determined at the peak plasma concentration (2-3 hours after oral dose), but rather at the time of peak tissue concentration (6-8 hours after oral dose). To ensure a correlation between plasma and tissue concentrations the appropriate time to collect the specimen is 8 hours or more after the dose.'),
(1478, 0, 'DIRECT COOMBS TEST ( DCT )', '-', '-', NULL, NULL, '', 0, 100, 0, 0, NULL, '2024-08-15 14:00:30', '2024-08-15 14:00:30', NULL, 1, NULL),
(1479, 1478, 'Coombs Test-Direct', NULL, '-', '', '', 'select', 0, 0, 0, 0, NULL, '2024-08-15 14:00:30', '2024-08-15 14:00:30', NULL, 1, NULL),
(1480, 1478, 'Interpretation:', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 14:00:30', '2024-08-15 14:00:30', NULL, 1, 'A positive direct Coomb`s may indicate:<br />\r\n&bull; Erythroblastosis fetalis (hemolytic disease of the newborn).<br />\r\n&bull; Autoimmune hemolytic anemia without another underlying cause.<br />\r\n&bull; Drug-induced hemolytic anemia.<br />\r\n&bull; Infectious mononucleosis.<br />\r\n&bull; Mycoplasmal infection.<br />\r\n&bull; Syphilis.<br />\r\n&bull; Chronic lymphocytic leukemia or other lymphoproliferative disorder.<br />\r\n&bull; Systemic lupus erythematosus or another rheumatologic condition.<br />\r\n&bull; Transfusion reaction, such as one due to improperly matched units of blood.<br />\r\n&bull; Idiopathic'),
(1481, 0, 'Erythrocyte Sedimentation Rate', 'ESR', 'BLOOD', NULL, NULL, '', 0, 150, 0, 0, NULL, '2024-08-15 14:01:17', '2025-05-17 19:19:16', NULL, 1, NULL),
(1482, 1481, 'Erythrocyte Sedimentation Rate', NULL, 'BLOOD', 'mm/hr', '00 - 20', 'text', 0, 0, 1, 0, NULL, '2024-08-15 14:01:17', '2025-05-17 19:19:16', NULL, 1, NULL),
(1483, 1481, 'Interpretation:', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 14:01:17', '2024-10-06 14:40:39', '2024-10-06 14:40:39', 1, 'It indicates presence and intensity of an inflammatory process. It is a prognostic test and used to monitor the course or response to treatment of diseases like tuberculosis, acute rheumatic fever,. It is also increased in multiple myeloma, hypothyroidism.'),
(1484, 0, 'FIBRINOGEN DEGRADATION PRODUCT', 'FDP', '-', NULL, NULL, '', 0, 100, 0, 0, NULL, '2024-08-15 14:02:07', '2024-08-15 14:02:07', NULL, 1, NULL),
(1485, 1484, 'FDP- Fibrinogen Degradation Products', NULL, '-', '', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Negative : Lessthan 5.0</span></p><p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">.</span><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Positive : &gt; 5.0</span></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 14:02:07', '2024-08-15 14:02:07', NULL, 1, NULL),
(1486, 1484, 'NOTES', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 14:02:07', '2024-08-15 14:02:07', NULL, 1, '1. Results should be clinically correlated .<br />\r\n2.Test conducted on Citrated plasma.<br />\r\n<strong>Comments</strong><br />\r\nFibrin Degradation products (FDP) indicate only plasmin cleaved fibrinogen / soluble or insoluble fibrin unlike D-dimer which indicates both thrombin &amp; plasmin formation. In Disseminated intravascular coagulation (DIC), both thrombin and plasmin are generated.<br />\r\n<strong>Increased FDPs may be a sign of primary or secondary fibrinolysis due to:</strong><br />\r\nDisseminated intravascular Coagulation<br />\r\nBurns<br />\r\nAbruptio Placentae<br />\r\nInfections<br />\r\nIntrauterine death<br />\r\nCongenital Heart Disease'),
(1487, 0, 'Fibrinogen Level', '-', '-', NULL, NULL, '', 0, 100, 0, 0, NULL, '2024-08-15 14:02:41', '2024-08-15 14:02:41', NULL, 1, NULL),
(1488, 1487, 'Fibrinogen level', NULL, '-', 'mg/dL', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">200 - 400</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 14:02:41', '2024-08-15 14:02:41', NULL, 1, NULL),
(1489, 1487, 'Interpretation :', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 14:02:41', '2024-08-15 14:02:41', NULL, 1, 'FIBRINOGEN, PLASMA-Conversion of Fibrinogen to Fibrin constitutes the final step in formation of clot. It is synthesized primarily in the liver. Quantitative or qualitative deficiency of Fibrinogen leads to poor clot formation and increased bleeding tendency. Fibrinogen is also an acute phase reactant. An increase in fibrinogen level is found in\r\n1) Diabetes\r\n2) Inflammatory conditions\r\n3) Obesity\r\n4) Malignancy\r\n5) Use of oral contraceptives\r\n6) Pregnancy\r\nA decrease in fibrinogen level is observed in conditions associated with increased consumption and/or increased destruction of the protein (fibrinolysis) as listed below.\r\n1) Disseminated Intravascular Coagulation\r\n2) Increased fibrinolysis\r\n3) Congenital hypo/afibrinogenemia\r\n4) Decreased hepatic synthesis\r\nFibrinogen seems to be involved in the pathogenesis of thrombo-cardio-vascular events'),
(1490, 0, 'Fluid - Cytology', '-', '-', NULL, NULL, '', 0, 100, 0, 0, NULL, '2024-08-15 14:04:02', '2024-08-15 14:04:02', NULL, 1, NULL),
(1491, 1490, 'SPECIMEN :', NULL, '-', '', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 14:04:02', '2024-08-15 14:04:02', NULL, 1, NULL),
(1492, 1490, 'GROSS', NULL, '-', '', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 14:04:02', '2024-08-15 14:04:02', NULL, 1, NULL),
(1493, 1490, 'MICROSCOPY', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 14:04:02', '2024-08-15 14:04:02', NULL, 1, 'Red blood cells with plenty of lymphocytes , few polymorphs and reactive mesothelial cells seen.\r\nThere are no malignant cells in the fluid examined.'),
(1494, 1490, 'IMPRESSION (Optional)', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 14:04:02', '2024-08-15 14:04:02', NULL, 1, ''),
(1495, 0, 'FLUID EXAMINATION REPORT', '-', '-', NULL, NULL, '', 0, 100, 0, 0, NULL, '2024-08-15 14:07:28', '2024-08-15 14:07:28', NULL, 1, NULL),
(1496, 1495, 'PHYSICAL EXAMINATION', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 14:07:28', '2024-08-15 14:07:28', NULL, 1, ''),
(1497, 1495, 'Fluid Source', NULL, '-', '', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 14:07:28', '2024-08-15 14:07:28', NULL, 1, NULL),
(1498, 1495, 'Quantity', NULL, '-', 'ml', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 14:07:28', '2024-08-15 14:07:28', NULL, 1, NULL),
(1499, 1495, 'Appearance', NULL, '-', '', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 14:07:28', '2024-08-15 14:07:28', NULL, 1, NULL),
(1500, 1495, 'Color', NULL, '-', '', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 14:07:28', '2024-08-15 14:07:28', NULL, 1, NULL),
(1501, 1495, 'Coagulum', NULL, '-', '', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 14:07:28', '2024-08-15 14:07:28', NULL, 1, NULL),
(1502, 1495, 'Cobweb', NULL, '-', '', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 14:07:28', '2024-08-15 14:07:28', NULL, 1, NULL),
(1503, 1495, 'CHEMICAL EXAMINATION', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 14:07:28', '2024-08-15 14:07:28', NULL, 1, ''),
(1504, 1495, 'Protein (Optional)', NULL, '-', 'g/dl', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 14:07:28', '2024-08-15 14:07:28', NULL, 1, NULL),
(1505, 1495, 'Sugar (Optional)', NULL, '-', 'mg/dl', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 14:07:28', '2024-08-15 14:07:28', NULL, 1, NULL),
(1506, 1495, 'MICROSCOPIC EXAMINATION', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 14:07:28', '2024-08-15 14:07:28', NULL, 1, ''),
(1507, 1495, 'Total Nucleated cells', NULL, '-', '/cumm', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 14:07:28', '2024-08-15 14:07:28', NULL, 1, NULL),
(1508, 1495, 'Lymphocytes', NULL, '-', '%', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 14:07:28', '2024-08-15 14:07:28', NULL, 1, NULL),
(1509, 1495, 'Neutrophils', NULL, '-', '%', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 14:07:28', '2024-08-15 14:07:28', NULL, 1, NULL),
(1510, 1495, 'Reactive Mesothelial cells (Optional)', NULL, '-', '%', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 14:07:28', '2024-08-15 14:07:28', NULL, 1, NULL),
(1511, 1495, 'RBC', NULL, '-', '/cumm', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 14:07:28', '2024-08-15 14:07:28', NULL, 1, NULL),
(1512, 1495, 'GRAM STAIN (Optional)', NULL, '-', '', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 14:07:28', '2024-08-15 14:07:28', NULL, 1, NULL),
(1513, 1495, 'ZN Stain (Optional)', NULL, '-', '', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 14:07:28', '2024-08-15 14:07:28', NULL, 1, NULL),
(1514, 0, 'Gene Expert Plus (Sputum/BAL)', '-', '-', NULL, NULL, '', 0, 100, 0, 0, NULL, '2024-08-15 14:08:28', '2024-08-15 14:08:28', NULL, 1, NULL),
(1515, 1514, 'Type of Specimen', NULL, '-', '', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 14:08:28', '2024-08-15 14:08:28', NULL, 1, NULL),
(1516, 1514, 'Mycobacterium tuberculosis complex', NULL, '-', '', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 14:08:28', '2024-08-15 14:08:28', NULL, 1, NULL),
(1517, 1514, 'Rifampicin resistance', NULL, '-', '', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 14:08:28', '2024-08-15 14:08:28', NULL, 1, NULL),
(1518, 0, 'Haemoglobin', 'HB', 'BLOOD', NULL, NULL, '', 0, 50, 0, 0, NULL, '2024-08-15 14:09:07', '2025-05-17 19:26:34', NULL, 1, NULL),
(1519, 1518, 'Haemoglobin', NULL, 'BLOOD', 'gm/dL', '<p>MALES : 13.0 - 18.0</p><p>FEMALES : 11.0-15.0</p><p><br></p>', 'text', 0, 0, 1, 0, NULL, '2024-08-15 14:09:07', '2025-05-17 19:26:34', NULL, 1, NULL),
(1520, 0, 'HAEMOGLOBIN ELECTROPHORESIS', '-', '-', NULL, NULL, '', 0, 100, 0, 0, NULL, '2024-08-15 14:11:49', '2024-08-15 14:11:49', NULL, 1, NULL),
(1521, 1520, 'Z11 (denatured Hb A)', NULL, '-', '%', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">0.0 - 4.0</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 14:11:49', '2024-08-15 14:11:49', NULL, 1, NULL),
(1522, 1520, 'Unknown Unidentified Peak (Optional)', NULL, '-', '%', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">0.0 - 2.0</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 14:11:49', '2024-08-15 14:11:49', NULL, 1, NULL),
(1523, 1520, 'HbA', NULL, '-', '%', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">96.8 - 97.8</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 14:11:49', '2024-08-15 14:11:49', NULL, 1, NULL),
(1524, 1520, 'HbA2', NULL, '-', '%', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">1.8 - 3.5</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 14:11:49', '2024-08-15 14:11:49', NULL, 1, NULL);
INSERT INTO `tests` (`id`, `parent_id`, `name`, `shortcut`, `sample_type`, `unit`, `reference_range`, `type`, `separated`, `price`, `status`, `title`, `precautions`, `created_at`, `updated_at`, `deleted_at`, `category_id`, `result_temp`) VALUES
(1525, 1520, 'Hb C', NULL, '-', '%', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Absent</span><br></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 14:11:49', '2024-08-15 14:11:49', NULL, 1, NULL),
(1526, 1520, 'Hb D (Optional)', NULL, '-', '%', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Absent</span><br></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 14:11:49', '2024-08-15 14:11:49', NULL, 1, NULL),
(1527, 1520, 'HbF', NULL, '-', '%', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">0.0 - 0.5</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 14:11:49', '2024-08-15 14:11:49', NULL, 1, NULL),
(1528, 1520, 'Hb S', NULL, '-', '%', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Absent</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 14:11:49', '2024-08-15 14:11:49', NULL, 1, NULL),
(1529, 0, 'HEMATOCRIT', 'PCV', '-', NULL, NULL, '', 0, 10, 0, 0, NULL, '2024-08-15 14:12:45', '2025-05-28 16:08:29', '2025-05-28 16:08:29', 1, NULL),
(1530, 1529, 'Packed Cell Volume (PCV)', NULL, '-', '%', '<p>39&nbsp; 51</p>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 14:12:45', '2025-05-28 16:08:29', '2025-05-28 16:08:29', 1, NULL),
(1531, 0, 'HLA - B 27', '-', '-', NULL, NULL, '', 0, 10, 0, 0, NULL, '2024-08-15 14:13:28', '2024-08-15 14:13:28', NULL, 1, NULL),
(1532, 1531, 'Result', NULL, '-', '', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 14:13:28', '2024-08-15 14:13:28', NULL, 1, NULL),
(1533, 1531, 'Method', NULL, '-', '', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 14:13:28', '2024-08-15 14:13:28', NULL, 1, NULL),
(1534, 1531, 'Interpretation', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 14:13:28', '2024-08-15 14:13:28', NULL, 1, 'There is strong association between the presence of HLA-B27 Antigen and an increased incidence of Ankylosing Sponylitis(AS) as well as others disorders, such as Reiter\'s Syndrome, Psoriatic Arthritis and Arthropathies associated with Inflammatory Bowel Disease. These disorders are collectively called seronegative spondyloaarthritis. HLA-B27 Positive patient is more likely to exhibit spondyloarthritis.'),
(1535, 0, 'HOMOCYSTEINE', '-', '-', NULL, NULL, '', 0, 10, 0, 0, NULL, '2024-08-15 14:14:09', '2024-08-15 14:14:09', NULL, 1, NULL),
(1536, 1535, 'Homocysteine*', NULL, '-', 'umol/L', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">5.0-20</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 14:14:09', '2024-08-15 14:14:09', NULL, 1, NULL),
(1537, 1535, 'Interpretation', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 14:14:09', '2024-08-15 14:14:09', NULL, 1, '&nbsp;\r\n<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:500px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Increased Levels</td>\r\n			<td>Increased Levels</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Deranged vitamin B12 metabolism</td>\r\n			<td>-</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Homocyteinuria</td>\r\n			<td>-</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Neoplastic diseases like cancers of ovary, breast and acute lymphoblastic leukemia</td>\r\n			<td>-</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chronic liver disease</td>\r\n			<td>-</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Renal failure</td>\r\n			<td>-</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Usage of various drugs</td>\r\n			<td>-</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Cigarette smoking</td>\r\n			<td>-</td>\r\n		</tr>\r\n	</tbody>\r\n</table>'),
(1538, 0, 'INDIRECT COOMBS TEST', 'ICT', '-', NULL, NULL, '', 0, 100, 0, 0, NULL, '2024-08-15 14:15:00', '2024-08-15 14:15:00', NULL, 1, NULL),
(1539, 1538, 'Coombs Test, Indirect', NULL, '-', '', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 14:15:00', '2024-08-15 14:15:00', NULL, 1, NULL),
(1540, 1538, 'Interpretations', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 14:15:00', '2024-08-15 14:15:00', NULL, 1, 'The indirect Coombs (ICT) test detects circulating antibodies against red blood cells (RBCs). A positive ICT my suggest:\r\nErythroblastosis fetails hemolytic disease.\r\nIncompatible blood match (when used in blood blanks).\r\nAutoimmune or drug-induced hemolytic anemia.'),
(1541, 1538, 'Interfering Factors:', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 14:15:00', '2024-08-15 14:15:00', NULL, 1, 'Drugs that may cause false-positive results include antiarrhythmics, antituberculins, cephalosporins, chlorpromazine (Thorazine), insulin, levodopa, methyldopa (Aldomet), penicillins, phenytoin (Dilantin), quinidine, sulfonamides, and tetracyclines.'),
(1542, 0, 'IRON TIBC', '-', '-', NULL, NULL, '', 0, 10, 0, 0, NULL, '2024-08-15 14:16:05', '2024-08-15 14:16:05', NULL, 1, NULL),
(1543, 1542, 'Sr. Iron', NULL, '-', 'mcg/dl', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">\"MALE: 65 - 175</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">FEMALE: 50 - 170 /</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">FERROZINE</span><br></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 14:16:05', '2024-08-15 14:16:05', NULL, 1, NULL),
(1544, 1542, 'TIBC', NULL, '-', 'mcg/dl', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">200 - 400</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 14:16:05', '2024-08-15 14:16:05', NULL, 1, NULL),
(1545, 1542, 'Transferrin', NULL, '-', 'mg/dL', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">176 - 280</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 14:16:05', '2024-08-15 14:16:05', NULL, 1, NULL),
(1546, 1542, '% Iron Saturation', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 14:16:05', '2024-08-15 14:16:05', NULL, 1, ''),
(1547, 1542, 'Remark', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 14:16:05', '2024-08-15 14:16:05', NULL, 1, 'Increase in the TIBC may be due to iron deficiency anemia, increased production of apotransferrin (e.g. chronic deficiency) or an increased release of ferritin, as in hepatocellular necrosis.Decreases in TIBC can occur with cirrhosis and haemachromatosis due to deficiency in ferritin or in nephrosis due to loss of apotransferrin or in anemia of chronic disease.'),
(1548, 0, 'Karyotyping (Peripheral Blood)', '-', '-', NULL, NULL, '', 0, 10, 0, 0, NULL, '2024-08-15 14:16:26', '2024-08-15 14:16:26', NULL, 1, NULL),
(1549, 1548, 'Result', NULL, '-', '', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 14:16:26', '2024-08-15 14:16:26', NULL, 1, NULL),
(1550, 0, 'LE CELLS', '-', '-', NULL, NULL, '', 0, 100, 0, 0, NULL, '2024-08-15 15:50:02', '2024-08-15 15:50:02', NULL, 1, NULL),
(1551, 1550, 'LE Cell Detection', NULL, '-', '', '', 'select', 0, 0, 0, 0, NULL, '2024-08-15 15:50:02', '2024-08-15 15:50:02', NULL, 1, NULL),
(1552, 0, 'LEAD TEST', '-', '-', NULL, NULL, '', 0, 100, 0, 0, NULL, '2024-08-15 15:50:36', '2024-08-15 15:50:36', NULL, 1, NULL),
(1553, 1552, 'LEAD, BLOOD', NULL, '-', 'μg/L', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Less than 150.0</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 15:50:36', '2024-08-15 15:50:58', NULL, 1, NULL),
(1554, 0, 'LEPTOSPIRA IGM', '-', '-', NULL, NULL, '', 0, 100, 0, 0, NULL, '2024-08-15 15:51:38', '2024-08-15 15:51:38', NULL, 1, NULL),
(1555, 1554, 'Leptospira Antibody-IgM', NULL, '-', '', '', 'select', 0, 0, 0, 0, NULL, '2024-08-15 15:51:38', '2024-08-15 15:51:38', NULL, 1, NULL),
(1556, 0, 'Lipoprotein- a (LP -a)', '-', '-', NULL, NULL, '', 0, 100, 0, 0, NULL, '2024-08-15 15:52:40', '2024-08-15 15:52:40', NULL, 1, NULL),
(1557, 1556, 'LIPOPROTEIN(a); Lp(a), SERUM', NULL, '-', 'mg/dl', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">0 - 30</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 15:52:40', '2024-08-15 15:52:40', NULL, 1, NULL),
(1558, 1556, 'Note', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 15:52:40', '2024-08-15 15:52:40', NULL, 1, '1. LP(a) is a lipoprotein consisitng of LDL, Apo B100 & Apo(a).\r\n2. LP(a) is an indepent risk factor for CHD in patients known or suspected to be at increased rsik due to other factors.\r\n3. Lp(a) levels are genetically determined .\r\n4. However an increase in LP(a) is seen in :\r\n* Estrogen depletion.\r\n* Hypercholesterolemia.\r\n* Severe hypothyroidism.\r\n* Renal failure\r\n* Nephrotic syndrome.\r\n* Uncontrolled diabetes.\r\n5. Lp(a) should not be measured during acute inflammation and for 1 month after a myocardial infarction or stroke.'),
(1559, 0, 'LIPUS ANTICOAGLUTION (Dilute Rusell Viper Venom Time)', '-', '-', NULL, NULL, '', 0, 10, 0, 0, NULL, '2024-08-15 15:53:01', '2024-08-15 15:53:01', NULL, 1, NULL),
(1560, 1559, 'Dilute Rusell Viper Venom Time', NULL, '-', '', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 15:53:01', '2024-08-15 15:53:01', NULL, 1, NULL),
(1561, 0, 'LUPUS ANTICOAGULANT `', 'LA', '-', NULL, NULL, '', 0, 10, 0, 0, NULL, '2024-08-15 15:55:52', '2024-08-15 15:55:52', NULL, 1, NULL),
(1562, 1561, 'Specimen: Citrate Whole Blood (Optional)', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 15:55:52', '2024-08-15 15:55:52', NULL, 1, ''),
(1563, 1561, 'PTT Test (Optional)', NULL, '-', 'seconds', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 15:55:52', '2024-08-15 15:55:52', NULL, 1, NULL),
(1564, 1561, 'PTT Control', NULL, '-', 'Seconds', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 15:55:52', '2024-08-15 15:55:52', NULL, 1, NULL),
(1565, 1561, 'DRVVT :', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 15:55:52', '2024-08-15 15:55:52', NULL, 1, ''),
(1566, 1561, 'Screen Test', NULL, '-', 'Seconds', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 15:55:52', '2024-08-15 15:55:52', NULL, 1, NULL),
(1567, 1561, 'Screen Control', NULL, '-', 'Seconds', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 15:55:52', '2024-08-15 15:55:52', NULL, 1, NULL),
(1568, 1561, 'Screen Ratio (Test/Control)', NULL, '-', '', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 15:55:52', '2024-08-15 15:55:52', NULL, 1, NULL),
(1569, 1561, 'Confirm Test', NULL, '-', 'Seconds', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 15:55:52', '2024-08-15 15:55:52', NULL, 1, NULL),
(1570, 1561, 'Confirm Control', NULL, '-', 'Seconds', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 15:55:52', '2024-08-15 15:55:52', NULL, 1, NULL),
(1571, 1561, 'Confirm Ratio', NULL, '-', '', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 15:55:52', '2024-08-15 15:55:52', NULL, 1, NULL),
(1572, 1561, 'Normalized LAC ratio', NULL, '-', '', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 15:55:52', '2024-08-15 15:55:52', NULL, 1, NULL),
(1573, 1561, 'IMPRESSION', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 15:55:52', '2024-08-15 15:55:52', NULL, 1, '<strong>Interpretation:<br />\r\nScreen/Confirm Ratio</strong><br />\r\nNegative : Less than 1.2<br />\r\nWeak positive : 1.2 - 1.5 (Advice to repeat after 3 months)<br />\r\nModerate positive : 1.52.0<br />\r\nStrong positive : &gt;2.0<br />\r\n<br />\r\nMethod : Dilute Russell&#39;s Viper Venom Test (DRVVT)<br />\r\nPerformed On Automated Coagulation Analyser ACL Top Series.'),
(1574, 0, 'MANTOUX', '-', '-', NULL, NULL, '', 0, 100, 0, 0, NULL, '2024-08-15 15:56:28', '2024-08-15 15:56:28', NULL, 1, NULL),
(1575, 1574, 'Mantoux Test; Tuberculin Skin Test', NULL, '-', 'mm', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Negative Less than 5mm</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">BorderLine 5 to 9mm</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Positve Greater than 10mm</span><br></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 15:56:28', '2024-08-15 15:56:28', NULL, 1, NULL),
(1576, 0, 'MCH (D)', '-', '-', NULL, NULL, '', 0, 100, 0, 0, NULL, '2024-08-15 15:56:55', '2024-08-15 15:56:55', NULL, 1, NULL),
(1577, 1576, 'MEAN CORPUSCULAR HEMOGLOBIN (MCH)', NULL, '-', 'pg', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 15:56:55', '2024-08-15 15:56:55', NULL, 1, NULL),
(1578, 0, 'MCV (D)', '-', '-', NULL, NULL, '', 0, 21, 0, 0, NULL, '2024-08-15 15:57:19', '2024-08-15 15:57:19', NULL, 1, NULL),
(1579, 1578, 'Mean Corpuscular Volume (MCV), Whole Blood', NULL, '-', 'Fl', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 15:57:19', '2024-08-15 15:57:19', NULL, 1, NULL),
(1580, 0, 'MEAN CORPUSCULAR HAEMOGLOBIN CONCENTRATION- MCHC', '-', '-', NULL, NULL, '', 0, 100, 0, 0, NULL, '2024-08-15 15:57:51', '2024-08-15 15:57:51', NULL, 1, NULL),
(1581, 1580, 'MEAN CORPUSCULAR HAEMOGLOBIN CONCENTRATION (MCHC)', NULL, '-', '%', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Adult (1.1Y-100Y ) : 28-36 %</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Infant (0 M-12 M ) : 28-33 %</span><br></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 15:57:51', '2024-08-15 15:57:51', NULL, 1, NULL),
(1582, 0, 'MEAN CORPUSCULAR HAEMOGLOBIN - MCH', '-', '-', NULL, NULL, '', 0, 100, 0, 0, NULL, '2024-08-15 15:58:16', '2024-08-15 15:58:16', NULL, 1, NULL),
(1583, 1582, 'MEAN CORPUSCULAR HAEMOGLOBIN', NULL, '-', 'pg', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">27.00 - 32.00</span><br></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 15:58:16', '2024-08-15 15:58:16', NULL, 1, NULL),
(1584, 0, 'MEAN CORPUSCULAR VOLUME - MCV', '-', '-', NULL, NULL, '', 0, 100, 0, 0, NULL, '2024-08-15 15:58:38', '2024-08-15 15:58:38', NULL, 1, NULL),
(1585, 1584, 'MEAN CORPUSCULAR VOLUME (MCV), WHOLE BLOOD', NULL, '-', 'Fl', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">83.00 - 101.00</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 15:58:38', '2024-08-15 15:58:38', NULL, 1, NULL),
(1586, 0, 'MICROFILARIA (MF)', '-', '-', NULL, NULL, '', 0, 100, 0, 0, NULL, '2024-08-15 15:59:15', '2024-08-15 15:59:15', NULL, 1, NULL),
(1587, 1586, 'Filaria Antigen detection', NULL, '-', '', '', 'select', 0, 0, 0, 0, NULL, '2024-08-15 15:59:15', '2024-08-15 15:59:15', NULL, 1, NULL),
(1588, 1586, 'Interpretation', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 15:59:15', '2024-08-15 15:59:15', NULL, 1, '1. The test is structured to indicate the presence or absence of W.bancrofti antigen in the sample.\r\n2. The absence of antigen does not exclude Filariasis caused by other nematode species.'),
(1589, 0, 'Molecular Karyotyping', '-', '-', NULL, NULL, '', 0, 100, 0, 0, NULL, '2024-08-15 15:59:35', '2024-08-15 15:59:35', NULL, 1, NULL),
(1590, 1589, 'Result', NULL, '-', '', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 15:59:35', '2024-08-15 15:59:35', NULL, 1, NULL),
(1591, 0, 'MPV', '-', '-', NULL, NULL, '', 0, 100, 0, 0, NULL, '2024-08-15 16:00:26', '2024-08-15 16:00:26', NULL, 1, NULL),
(1592, 1591, 'MPV', NULL, '-', 'Fl', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">6.5-12.0</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 16:00:26', '2024-08-15 16:00:26', NULL, 1, NULL),
(1593, 1591, 'Method', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 16:00:26', '2024-08-15 16:00:26', NULL, 1, 'Calculated / EDTA Blood'),
(1594, 0, 'Calculated / EDTA Blood', '-', '-', NULL, NULL, '', 0, 100, 0, 0, NULL, '2024-08-15 16:01:19', '2024-08-15 16:01:19', NULL, 1, NULL),
(1595, 1594, 'NT-Pro-BNP', NULL, '-', 'pg/ml', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">For chronic heart failure optimal cut off to rule in</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Less than 75 Yrs. : 125</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Above &amp; equal to 75 Yrs: 450</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">For acute heart failure optimal cut off to rule in</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Less than 50 Yrs: 450</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Between 50 -75 Yrs: 900</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Above &amp; equal to 75 yrs: 1800</span><br></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 16:01:19', '2024-08-15 16:01:19', NULL, 1, NULL),
(1596, 1594, 'Note', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 16:01:19', '2024-08-15 16:01:19', NULL, 1, '1. NT-pro-BNP value increases with age , elevated levels can be seen in apparently healthy individualwith increasing age<br />\r\n2. NT-pro-BNP values need to be interpreted in conjunction with the medical history, clinical findings and other information<br />\r\n3. NT pro-BNP value &lt;125 pg/mL exclude cardiac dysfunction with a high level of certainty in patients presenting with dyspnea<br />\r\n4. Lack of NT-ProBNP elevation has been reported if Congestive Heart Failure (CHF) is very acute(first hour) or if there is Ventricular inflow obstruction'),
(1597, 1594, 'Comments', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 16:01:19', '2024-08-15 16:01:19', NULL, 1, 'NT-ProBNP is a marker of atrial & ventricular distension due to increased intracardiac pressure, hence it is used as an aid in the diagnosis of CHF. The diagnostic strength of NT-ProBNP is their high sensitivity for ruling out heart failure; however, as the value increases heart failure becomes more likely. NT-ProBNP levels are correlated with New York Heart Association (NYHA) functional classes for CHF.'),
(1598, 1594, 'Clinical Uses', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 16:01:19', '2024-08-15 16:01:19', NULL, 1, '· As an aid in the diagnosis of suspected cases of CHF\r\n· Detection of mild forms of cardiac dysfunction\r\n· To assess severity of heart failure in already diagnosed cases of CHF\r\n· For risk stratification of patients with Acute Coronary Syndrome (ACS) & CHF\r\n· For monitoring therapy in patients with Left Ventricular dysfunction'),
(1599, 0, 'Osmotic Fragility', '-', '-', NULL, NULL, '', 0, 100, 0, 0, NULL, '2024-08-15 16:01:46', '2024-08-15 16:01:46', NULL, 1, NULL),
(1600, 1599, 'Osmotic Fragility', NULL, '-', '', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 16:01:46', '2024-08-15 16:01:46', NULL, 1, NULL),
(1601, 0, 'P-ANCA', '-', '-', NULL, NULL, '', 0, 100, 0, 0, NULL, '2024-08-15 16:02:25', '2024-08-15 16:02:25', NULL, 1, NULL),
(1602, 1601, 'p-ANCA', NULL, '-', '', '', 'select', 0, 0, 0, 0, NULL, '2024-08-15 16:02:25', '2024-08-15 16:02:25', NULL, 1, NULL),
(1603, 1601, 'Interpretation(s)', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 16:02:25', '2024-08-15 16:02:25', NULL, 1, 'ANTINEUTROPHIL CYTOPLASMIC AB(ANCA), SERUM-Anti-Neutrophilic Cytoplasmic Antibody testing is useful in the diagnosis and treatment of autoimmune mediated vasculitides. The diagnosis is made in correlation with the Clinical history , biopsy findings & ANCA positivity .Positive ANCA with cytoplasmic pattern (C - ANCA) is seen in the cases of Wegener\'\'s Granulomatosis. The perinuclear pattern (P - ANCA) is seen in Polyarteritis Nodosa..The final diagnosis should be on the basis of criteria as given by the American College of Rheumatology Or by 2012 revised Chapel Hill consensus conference criteria.'),
(1604, 0, 'PAP SMEAR (CERVICAL & VAGINAL CYTOLOGY)', '-', '-', NULL, NULL, '', 0, 100, 0, 0, NULL, '2024-08-15 16:09:13', '2024-08-15 16:09:13', NULL, 1, NULL),
(1605, 1604, 'Cytology No', NULL, '-', '', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 16:09:14', '2024-08-15 16:09:14', NULL, 1, NULL),
(1606, 1604, 'No. of Slides', NULL, '-', '', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 16:09:14', '2024-08-15 16:09:14', NULL, 1, NULL),
(1607, 1604, 'Type of Smear', NULL, '-', '', '', 'select', 0, 0, 0, 0, NULL, '2024-08-15 16:09:14', '2024-08-15 16:09:14', NULL, 1, NULL),
(1608, 1604, 'Microscopic Description', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 16:09:14', '2024-08-15 16:09:14', NULL, 1, ''),
(1609, 1604, 'Adequacy', NULL, '-', '', '', 'select', 0, 0, 0, 0, NULL, '2024-08-15 16:09:14', '2024-08-15 16:09:14', NULL, 1, NULL),
(1610, 1604, 'Background', NULL, '-', '', '', 'select', 0, 0, 0, 0, NULL, '2024-08-15 16:09:14', '2024-08-15 16:09:14', NULL, 1, NULL),
(1611, 1604, 'Cell Arrangement', NULL, '-', '', '', 'select', 0, 0, 0, 0, NULL, '2024-08-15 16:09:14', '2024-08-15 16:09:14', NULL, 1, NULL),
(1612, 1604, 'Cell Types', NULL, '-', '', '', 'select', 0, 0, 0, 0, NULL, '2024-08-15 16:09:14', '2024-08-15 16:09:14', NULL, 1, NULL),
(1613, 1604, 'Endocervical Cells', NULL, '-', '', '', 'select', 0, 0, 0, 0, NULL, '2024-08-15 16:09:14', '2024-08-15 16:09:14', NULL, 1, NULL),
(1614, 1604, 'Metaplastic Cells', NULL, '-', '', '', 'select', 0, 0, 0, 0, NULL, '2024-08-15 16:09:14', '2024-08-15 16:09:14', NULL, 1, NULL),
(1615, 1604, 'Endomaterial Cells', NULL, '-', '', '', 'select', 0, 0, 0, 0, NULL, '2024-08-15 16:09:14', '2024-08-15 16:09:14', NULL, 1, NULL),
(1616, 1604, 'Neutrophills', NULL, '-', '', '', 'select', 0, 0, 0, 0, NULL, '2024-08-15 16:09:14', '2024-08-15 16:09:14', NULL, 1, NULL),
(1617, 1604, 'Lymphocytes', NULL, '-', '', '', 'select', 0, 0, 0, 0, NULL, '2024-08-15 16:09:14', '2024-08-15 16:09:14', NULL, 1, NULL),
(1618, 1604, 'Organisms', NULL, '-', '', '', 'select', 0, 0, 0, 0, NULL, '2024-08-15 16:09:14', '2024-08-15 16:09:14', NULL, 1, NULL),
(1619, 1604, 'Atypical Cells', NULL, '-', '', '', 'select', 0, 0, 0, 0, NULL, '2024-08-15 16:09:14', '2024-08-15 16:09:14', NULL, 1, NULL),
(1620, 1604, 'Impression', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 16:09:14', '2024-08-15 16:09:14', NULL, 1, ''),
(1621, 1604, 'Impression', NULL, '-', '', '', 'select', 0, 0, 0, 0, NULL, '2024-08-15 16:09:14', '2024-08-15 16:09:14', NULL, 1, NULL),
(1622, 1604, 'Suggested', NULL, '-', '', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 16:09:14', '2024-08-15 16:09:14', NULL, 1, NULL),
(1623, 0, 'Paul Bunnel Test', '-', '-', NULL, NULL, '', 0, 100, 0, 0, NULL, '2024-08-15 18:48:17', '2024-08-15 18:48:17', NULL, 1, NULL),
(1624, 1623, 'Result', NULL, '-', '', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 18:48:17', '2024-08-15 18:48:17', NULL, 1, NULL),
(1625, 0, 'PBS FOR MALARIAL PARASITE', '-', '-', NULL, NULL, '', 0, 100, 0, 0, NULL, '2024-08-15 18:49:14', '2024-08-15 18:49:14', NULL, 1, NULL),
(1626, 1625, 'Result', NULL, '-', '', '', 'select', 0, 0, 0, 0, NULL, '2024-08-15 18:49:14', '2024-08-15 18:49:14', NULL, 1, NULL),
(1627, 0, 'PCR TUBERCULOSIS ( TB - PCR )', '-', '-', NULL, NULL, '', 0, 100, 0, 0, NULL, '2024-08-15 18:50:11', '2024-08-15 18:50:11', NULL, 1, NULL),
(1628, 1627, 'Specimen', NULL, '-', '', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 18:50:11', '2024-08-15 18:50:11', NULL, 1, NULL),
(1629, 1627, 'Mycobacterium Tuberculosis', NULL, '-', '', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 18:50:11', '2024-08-15 18:50:11', NULL, 1, NULL),
(1630, 1627, 'Mycobacterium other than Tuberculosis (Optional)', NULL, '-', '', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 18:50:11', '2024-08-15 18:50:11', NULL, 1, NULL),
(1631, 0, 'PCT', '-', '-', NULL, NULL, '', 0, 100, 0, 0, NULL, '2024-08-15 18:51:33', '2024-08-15 18:51:33', NULL, 1, NULL),
(1632, 1631, 'Procalcitonin', NULL, '-', 'ng/mL', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Low Risk of severe sepsis and/or septic shock: &lt; 0.5 High Risk of severe sepsis and/or septic shock: &gt; 2</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 18:51:33', '2024-08-15 18:51:33', NULL, 1, NULL),
(1633, 1631, 'Procalcitonin', NULL, '-', 'ng/mL', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">&lt;0.05 Healthy Individual &lt;0.5 Low Risk or local bacterial infection &gt;0.5-2.0 moderate risk for progression to severe systemic infection (sepsis) &gt;2.0-10.0 high risk for progession to sever systemic infection (sever sepsis) &gt;10.0 high likelhood of sever sepsis or septic sock.</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 18:51:33', '2024-08-15 18:51:33', NULL, 1, NULL),
(1634, 1631, 'INTERPRETATION :', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 18:51:33', '2024-08-15 18:51:33', NULL, 1, '1. PCT is the prohormone of calcitonin secreted by different types of cells from numerous organs in response to proinflammatory stimulation, particularly bacterial stimulation.\r\n2. Depending upon clinical background, PCT > 0.1 can indicate clinically relevant bacterial infection, requiring antibiotic treatment.\r\n3. PCT is an important marker enabling specific differentiation between bacterial infection and other causes of inflammatory reactions\r\n4. Resorption of septic infection is accompanied by decreases in PCT concentration which returns to normal with half life of 24 hours\r\n5. In certain situations (newborns, polytrauma, burns,major surgery, prolonged or severe cardiogenic shock etc) PCT elevation may be independent of any infectious aggression. The return to normal values is usually rapid.\r\n6. Viral infections, allergies, autoimmune diseases and graft rejection do not lead to significant increase in PCT.\r\nLocalized bacterial infections can lead to moderate increase in PCT levels.'),
(1635, 0, '1. PCT is the prohormone of calcitonin secreted by different types of cells from numerous organs in response to proinflammatory stimulation, particularly bacterial stimulation. 2. Depending u', '-', '-', NULL, NULL, '', 0, 100, 0, 0, NULL, '2024-08-15 18:52:08', '2024-08-15 18:52:08', NULL, 1, NULL),
(1636, 1635, 'Packed Cell Volume (PCV)', NULL, '-', '%', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">39 - 51</span></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 18:52:08', '2024-08-15 18:52:08', NULL, 1, NULL),
(1637, 1635, 'Platelet Count', NULL, '-', 'Lakhs/cumm', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">150 - 410</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 18:52:08', '2024-08-15 18:52:08', NULL, 1, NULL),
(1638, 0, 'PDW', '-', '-', NULL, NULL, '', 0, 10, 0, 0, NULL, '2024-08-15 18:52:43', '2024-08-15 18:52:43', NULL, 1, NULL),
(1639, 1638, 'PDW', NULL, '-', '', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">9.0 - 17.0</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 18:52:43', '2024-08-15 18:52:43', NULL, 1, NULL),
(1640, 1638, 'Method', NULL, '-', '', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 18:52:43', '2024-08-15 18:52:43', NULL, 1, NULL),
(1641, 0, 'PERIPHERAL SMEAR STUDY', '-', '-', NULL, NULL, '', 0, 10, 0, 0, NULL, '2024-08-15 18:55:30', '2024-08-15 18:55:30', NULL, 1, NULL),
(1642, 1641, 'RBC Morphology', NULL, '-', '', '', 'select', 0, 0, 0, 0, NULL, '2024-08-15 18:55:30', '2024-08-15 18:55:30', NULL, 1, NULL),
(1643, 1641, 'WBC Morphology', NULL, '-', '', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 18:55:30', '2024-08-15 18:55:30', NULL, 1, NULL),
(1644, 1641, 'Platelets', NULL, '-', '', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 18:55:30', '2024-08-15 18:55:30', NULL, 1, NULL),
(1645, 1641, 'Hemoparasites', NULL, '-', '', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 18:55:30', '2024-08-15 18:55:30', NULL, 1, NULL),
(1646, 1641, 'plt Graph', NULL, '-', '', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 18:55:30', '2024-08-15 18:55:30', NULL, 1, NULL),
(1647, 1641, 'rbc Graph', NULL, '-', '', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 18:55:30', '2024-08-15 18:55:30', NULL, 1, NULL),
(1648, 1641, 'Wbc Graph', NULL, '-', '', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 18:55:30', '2024-08-15 18:55:30', NULL, 1, NULL),
(1649, 0, 'Phenobarbital (Gardinal)', '-', '-', NULL, NULL, '', 0, 10, 0, 0, NULL, '2024-08-15 18:55:51', '2024-08-15 18:55:51', NULL, 1, NULL),
(1650, 1649, 'Result', NULL, '-', '', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 18:55:51', '2024-08-15 18:55:51', NULL, 1, NULL),
(1651, 0, 'PHENYTOIN LEVEL (Eptoin, Dilantin)', '-', '-', NULL, NULL, '', 0, 10, 0, 0, NULL, '2024-08-15 18:56:28', '2024-08-15 18:56:28', NULL, 1, NULL),
(1652, 1651, 'S. Phenytoin Level', NULL, '-', 'mcg/ml', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">10 - 20</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 18:56:28', '2024-08-15 18:56:28', NULL, 1, NULL),
(1653, 0, 'PHOSPHORUS', '-', '-', NULL, NULL, '', 0, 10, 0, 0, NULL, '2024-08-15 18:57:02', '2024-08-15 18:57:02', NULL, 1, NULL),
(1654, 1653, 'Phosporus- (Serum)', NULL, '-', 'mg/dl', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">2.5 - 5.0</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 18:57:02', '2024-08-15 18:57:02', NULL, 1, NULL),
(1655, 0, 'Plasma Osmolality', '-', '-', NULL, NULL, '', 0, 100, 0, 0, NULL, '2024-08-15 18:58:14', '2024-08-15 18:58:14', NULL, 1, NULL),
(1656, 1655, 'Result', NULL, '-', 'mosm/L', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 18:58:14', '2024-08-15 18:58:14', NULL, 1, NULL),
(1657, 0, 'Platelet Rich Plasma (PRP) Preparation', '-', '-', NULL, NULL, '', 0, 40, 0, 0, NULL, '2024-08-15 18:58:32', '2024-08-15 18:58:32', NULL, 1, NULL),
(1658, 1657, 'Result', NULL, '-', '', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 18:58:32', '2024-08-15 18:58:32', NULL, 1, NULL),
(1659, 0, 'PLATELETS COUNT', '-', '-', NULL, NULL, '', 0, 100, 0, 0, NULL, '2024-08-15 18:59:06', '2024-08-15 18:59:06', NULL, 1, NULL),
(1660, 1659, 'Platelet Count', NULL, '-', 'Lakhs/cmm', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">1.5-4.0 Lakhs/cmm</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 18:59:06', '2024-08-15 18:59:06', NULL, 1, NULL),
(1661, 0, 'PLEURAL FLUID EXAMINATION', '-', '-', NULL, NULL, '', 0, 100, 0, 0, NULL, '2024-08-15 19:04:18', '2024-08-15 19:04:18', NULL, 1, NULL),
(1662, 1661, 'PHYSICAL EXAMINATION', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 19:04:18', '2024-08-15 19:04:18', NULL, 1, ''),
(1663, 1661, 'Colour', NULL, '-', '', '', 'select', 0, 0, 0, 0, NULL, '2024-08-15 19:04:18', '2024-08-15 19:04:18', NULL, 1, NULL),
(1664, 1661, 'Appearance', NULL, '-', '', '', 'select', 0, 0, 0, 0, NULL, '2024-08-15 19:04:18', '2024-08-15 19:04:18', NULL, 1, NULL),
(1665, 1661, 'Volume', NULL, '-', '', '', 'select', 0, 0, 0, 0, NULL, '2024-08-15 19:04:18', '2024-08-15 19:04:18', NULL, 1, NULL),
(1666, 1661, 'CHEMICAL EXAMINATION', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 19:04:18', '2024-08-15 19:04:18', NULL, 1, ''),
(1667, 1661, 'Protein', NULL, '-', 'g/dl', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Transudate: Less than 3</span></p><p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"> Exudate: Greater than 3</span><br></p><div bis_skin_checked=\"1\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 19:04:18', '2024-08-15 19:04:18', NULL, 1, NULL),
(1668, 1661, 'Pleural fluid/Serum Protein ratio (Optional)', NULL, '-', '', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Transudate: Less than 0.50</span></p><p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"> Exudate: Greater than 0.60</span><br></p><div bis_skin_checked=\"1\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 19:04:18', '2024-08-15 19:04:18', NULL, 1, NULL),
(1669, 1661, 'Pleural fluid/ Serum LD ratio (Optional)', NULL, '-', '', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Transudate: Less than 0.60</span></p><p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"> Exudate: Greater than 0.60</span><br></p><div bis_skin_checked=\"1\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 19:04:18', '2024-08-15 19:04:18', NULL, 1, NULL),
(1670, 1661, 'CYTOLOGICAL EXAMINATION', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 19:04:18', '2024-08-15 19:04:18', NULL, 1, ''),
(1671, 1661, 'Total leucocyte count', NULL, '-', 'μL', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Transudate: Less than 1000%B5L </span></p><p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Exudate: Greater than 1000%B5L</span><br></p><div bis_skin_checked=\"1\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 19:04:18', '2024-08-15 19:04:18', NULL, 1, NULL),
(1672, 1661, 'Lymphocytes', NULL, '-', '%', '<p><br></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 19:04:18', '2024-08-15 19:04:18', NULL, 1, NULL),
(1673, 1661, 'Granulocytes', NULL, '-', '%', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 19:04:18', '2024-08-15 19:04:18', NULL, 1, NULL),
(1674, 1661, 'Mesothelial Cells', NULL, '-', '%', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 19:04:18', '2024-08-15 19:04:18', NULL, 1, NULL),
(1675, 1661, 'RBC', NULL, '-', '/hpf', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 19:04:18', '2024-08-15 19:04:18', NULL, 1, NULL),
(1676, 1661, 'Malignant cells', NULL, '-', '', '', 'select', 0, 0, 0, 0, NULL, '2024-08-15 19:04:18', '2024-08-15 19:04:18', NULL, 1, NULL),
(1677, 1661, 'MICROBIOLOGICAL EXAMINATION', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 19:04:18', '2024-08-15 19:04:18', NULL, 1, ''),
(1678, 1661, 'Gram Stain (Optional)', NULL, '-', '', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 19:04:18', '2024-08-15 19:04:18', NULL, 1, NULL),
(1679, 1661, 'ZN Stain', NULL, '-', '', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 19:04:18', '2024-08-15 19:04:18', NULL, 1, NULL),
(1680, 0, 'PROGESTERONE', '-', '-', NULL, NULL, '', 0, 10, 0, 0, NULL, '2024-08-15 19:05:12', '2024-08-15 19:05:12', NULL, 1, NULL),
(1681, 1680, 'SERUM PROGESTERONE', NULL, '-', 'ng/ml', '<p><span style=\"font-weight: bolder; color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Adult Males&nbsp;</span><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">: 0.14 - 2.06</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"font-weight: bolder; color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Menstruating Females :</span><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">&nbsp;Follicular Phase : Less than 0.1 - 0.3 Luteal Phase : 1.2 - 15.9 Post Menopausal Females : Less than 0.1 - 0.2&nbsp;</span><span style=\"font-weight: bolder; color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Pregnant Females :</span><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">&nbsp;1 st Trimester : 2.8 - 147.3 2 nd Trimester : 22.5 - 95.3 3 rd Trimester : 27.9 - 242.5</span><br></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 19:05:12', '2024-08-15 19:05:12', NULL, 1, NULL),
(1682, 1680, 'Notes:', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 19:05:12', '2024-08-15 19:05:12', NULL, 1, 'Clinical Use · Assessment of ovarian function · Assessment of abnormal pregnancy · Detection of progesterone secreting tumors Increased Levels · Luteal phase of menstrual cycle · Pregnancy · Ovarian tumor · Adrenal tumor · Selected steroid hormone biosynthetic defects Decreased Levels · Amenorrhea · Fetal death · Threatened abortion · Gonadal agenesis For males: Progesterone is known as a female hormone, but males need progesterone to produce testosterone. The adrenal glands and testes in males produce progesterone'),
(1683, 0, 'PROTEIN ELECTROPHORESIS', '-', '-', NULL, NULL, '', 0, 100, 0, 0, NULL, '2024-08-15 19:06:50', '2024-08-15 19:06:50', NULL, 1, NULL),
(1684, 1683, 'BETA 2 Globulin', NULL, '-', 'U/L ml', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">0.10 - 0.50</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 19:06:50', '2024-08-15 19:06:50', NULL, 1, NULL),
(1685, 1683, 'Total Protein (Biuret)', NULL, '-', 'g/dL', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">6.0 - 8.0</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 19:06:50', '2024-08-15 19:06:50', NULL, 1, NULL),
(1686, 1683, 'Serum Albumin', NULL, '-', 'g/dL', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">3.30 - 5.70</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 19:06:50', '2024-08-15 19:06:50', NULL, 1, NULL),
(1687, 1683, 'Alpha 1 Globulin', NULL, '-', 'g/dL', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">0.10 - 0.40</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 19:06:50', '2024-08-15 19:06:50', NULL, 1, NULL),
(1688, 1683, 'Alpha 2 Globulin', NULL, '-', 'g/dL', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">0.30 - 0.90</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 19:06:50', '2024-08-15 19:06:50', NULL, 1, NULL),
(1689, 1683, 'Beta 1 Globulin', NULL, '-', 'g/dL', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">0.30 - 0.70</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 19:06:50', '2024-08-15 19:06:50', NULL, 1, NULL),
(1690, 1683, 'Interpretation', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 19:06:50', '2024-08-15 19:06:50', NULL, 1, 'The band pattern and concentrations are suggestive of mild hypogammaglobulinemia. There is no evidence of \'M\' band.'),
(1691, 0, 'PROTHROMBIN TIME ( PT INR )', '-', '-', NULL, NULL, '', 0, 100, 0, 0, NULL, '2024-08-15 19:07:43', '2024-08-15 19:07:43', NULL, 1, NULL),
(1692, 1691, 'Patient Prothrombin Time', NULL, '-', 'Seconds', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">10-14</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 19:07:43', '2024-08-15 19:07:43', NULL, 1, NULL),
(1693, 1691, 'Control Prothrombin Time', NULL, '-', '', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 19:07:43', '2024-08-15 19:07:43', NULL, 1, NULL),
(1694, 1691, 'ISI Value', NULL, '-', '', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 19:07:43', '2024-08-15 19:07:43', NULL, 1, NULL),
(1695, 1691, 'INR', NULL, '-', '', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Normal:0.9 - 1.1</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Therapeutic Level:</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Myocardial infarction:2.0-3.0</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Deep Vein Thrombosis:2.0-3.0</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Artifical Cardiac</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Valve Replacement:3.0-4.5</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Recur Systamic Embolism:3.0 - 4.5</span><br></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 19:07:43', '2024-08-15 19:07:43', NULL, 1, NULL),
(1696, 0, 'PTH (PARATHYROID HORMONE)', '-', '-', NULL, NULL, '', 0, 100, 0, 0, NULL, '2024-08-15 19:08:06', '2024-08-15 19:08:06', NULL, 1, NULL),
(1697, 1696, 'PTH (PARATHYROID HORMONE) INTACT', NULL, '-', 'pg/ml', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">14.0 - 72.0</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 19:08:06', '2024-08-15 19:08:06', NULL, 1, NULL),
(1698, 0, 'PTTK (ACTIVATED PARTIAL THROMBOPLASTIN TIME)', '-', '-', NULL, NULL, '', 0, 100, 0, 0, NULL, '2024-08-15 19:08:35', '2024-08-15 19:08:35', NULL, 1, NULL),
(1699, 1698, 'Patient', NULL, '-', 'Seconds', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 19:08:35', '2024-08-15 19:08:35', NULL, 1, NULL),
(1700, 1698, 'Control', NULL, '-', 'Seconds', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 19:08:35', '2024-08-15 19:08:35', NULL, 1, NULL),
(1701, 0, 'QUADRAPLE TEST', '-', '-', NULL, NULL, '', 0, 100, 0, 0, NULL, '2024-08-15 19:08:52', '2024-08-15 19:08:52', NULL, 1, NULL),
(1702, 1701, 'Result', NULL, '-', '', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 19:08:52', '2024-08-15 19:08:52', NULL, 1, NULL),
(1703, 0, 'QuantiFERON-TB Gold ( QFT )', '-', '-', NULL, NULL, '', 0, 100, 0, 0, NULL, '2024-08-15 19:09:37', '2024-08-15 19:09:37', NULL, 1, NULL),
(1704, 1703, 'Result', NULL, '-', '', '', 'select', 0, 0, 0, 0, NULL, '2024-08-15 19:09:37', '2024-08-15 19:09:37', NULL, 1, NULL),
(1705, 1703, 'Note', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 19:09:37', '2024-08-15 19:09:37', NULL, 1, 'The QuantiFERON-TB Gold test(QFT) is a whole-blood test for detection of infection to M. tuberculosis. The QFT measures the patient\'s immunereactivity to M. tuberculosis, the bacterium that causes TB. Blood samples are mixed with TB antigens and incubated for 16 to 24 hours. The antigens include ESAT-6,TB 7.7 and CFP-10,proteins specific to M. tuberculosis complex. If the patient is infected with M. tuberculosis, the patient\'s lymphocytes will recognize the antigens and release interferon-gamma(IFN-g) in response. Limitations: A negative QuantiFERON-TB Gold result does not preclude the possibility of Mycobacterium tuberculosis infection. Falsely-negative results can be due to the stage of infection (eg, specimen drawn prior to the development of cellular immune response), comorbid conditions that affect immune functions, or other individual immunological factors. QuantiFERON-TB Gold is usually negative in individuals vaccinated with Mycobacterium bovids bacilli Calmette-Guerin. A positive QuantiFERON-TB Gold result should be followed by further medical and diagnostic evaluation for tuberculosis disease. The performance of QuantiFERON-TB Gold has not been evaluated in specimens from: -Individuals with impaired or altered immune functions (HIV infections, transplant patients, those receiving immunosuppressive drugs such as corticosteroids) -Other clinical conditions(eg, diabetes, hematological disorders) -Pregnant women'),
(1706, 0, 'RAPID MALARIA TEST (RMT)', '-', '-', NULL, NULL, '', 0, 10, 0, 0, NULL, '2024-08-15 19:10:52', '2024-08-15 19:10:52', NULL, 1, NULL),
(1707, 1706, 'Antigen for Plasmodium falciparum', NULL, '-', '', '', 'select', 0, 0, 0, 0, NULL, '2024-08-15 19:10:52', '2024-08-15 19:10:52', NULL, 1, NULL),
(1708, 1706, 'Antigen for Plasmodium Vivax', NULL, '-', '', '', 'select', 0, 0, 0, 0, NULL, '2024-08-15 19:10:52', '2024-08-15 19:10:52', NULL, 1, NULL),
(1709, 1706, 'Impression (Optional)', NULL, '-', '', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 19:10:52', '2024-08-15 19:10:52', NULL, 1, NULL),
(1710, 0, 'RDW-CV', '-', '-', NULL, NULL, '', 0, 100, 0, 0, NULL, '2024-08-15 19:11:26', '2024-08-15 19:11:26', NULL, 1, NULL),
(1711, 1710, 'RDW-CV', NULL, '-', '%', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">11-16 %</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 19:11:26', '2024-08-15 19:11:26', NULL, 1, NULL),
(1712, 1710, 'Method', NULL, '-', '', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 19:11:26', '2024-08-15 19:11:26', NULL, 1, NULL),
(1713, 0, 'RDW-SD', '-', '-', NULL, NULL, '', 0, 100, 0, 0, NULL, '2024-08-15 19:11:44', '2024-08-15 19:11:44', NULL, 1, NULL),
(1714, 1713, 'RDW-SD', NULL, '-', '', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">35-56</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 19:11:45', '2024-08-15 19:11:45', NULL, 1, NULL),
(1715, 0, 'RETICULOYTE COUNT', '-', '-', NULL, NULL, '', 0, 100, 0, 0, NULL, '2024-08-15 19:12:41', '2024-08-15 19:12:41', NULL, 1, NULL),
(1716, 1715, 'RETICULOCYTE COUNT', NULL, '-', '%', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Normal Adult : 0.5 - 1.5</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Newborn : 2.5 - 6.5</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 19:12:41', '2024-08-15 19:12:41', NULL, 1, NULL),
(1717, 1715, 'Absolute Reticulocyte count', NULL, '-', '/cumm', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">50000 - 85000</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 19:12:41', '2024-08-15 19:12:41', NULL, 1, NULL),
(1718, 1715, 'Interpretation :', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 19:12:41', '2024-08-15 19:12:41', NULL, 1, 'A higher reticulocytes count observed in bleeding , erythroblastosis fetalis, Hemolytic anemia, Kidney disease with increased erythropoietin production. A lower count of Reticulocyte is observed in cases of Bone marrow failure due to toxicity, tumour, or infection ,Cirrhosis of the liver ,Folate deficiency ,Iron deficiency, kidney disease with decreased erythropoietin production ,Radiation therapy ,Vitamin B-12 deficiency.'),
(1719, 0, 'SICKLING TEST', '-', '-', NULL, NULL, '', 0, 100, 0, 0, NULL, '2024-08-15 19:13:35', '2024-08-15 19:13:35', NULL, 1, NULL),
(1720, 1719, 'Early Sickling Test (EDTA)', NULL, '-', '', '', 'select', 0, 0, 0, 0, NULL, '2024-08-15 19:13:35', '2024-08-15 19:13:35', NULL, 1, NULL),
(1721, 1719, 'Late Sickling Test (EDTA)', NULL, '-', '', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 19:13:35', '2024-08-15 19:13:35', NULL, 1, NULL);
INSERT INTO `tests` (`id`, `parent_id`, `name`, `shortcut`, `sample_type`, `unit`, `reference_range`, `type`, `separated`, `price`, `status`, `title`, `precautions`, `created_at`, `updated_at`, `deleted_at`, `category_id`, `result_temp`) VALUES
(1722, 1719, 'Note:', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 19:13:35', '2024-08-15 19:13:35', NULL, 1, '• Test conducted on EDTA whole blood\r\n• All results must be confirmed by Hemoglobin electrophoresis / HPLC\r\n• False positivity is seen in cases of severe leukocytosis, hyperproteinemia and presence of unstable hemoglobin\r\n• False negativity is seen in cases of low hemoglobin, infants Lessthan 6 months of age & if Hemoglobin S (Hb S) level is Lessthan 20%'),
(1723, 0, 'Sputum for AFB Staining (Zeil Nielson Stain) 2 Days samples', '-', '-', NULL, NULL, '', 0, 100, 0, 0, NULL, '2024-08-15 19:14:26', '2024-08-15 19:14:26', NULL, 1, NULL),
(1724, 1723, 'Day One Sample', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 19:14:26', '2024-08-15 19:14:26', NULL, 1, ''),
(1725, 1723, 'Day Two Sample', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 19:14:26', '2024-08-15 19:14:26', NULL, 1, 'Acid fast bacilli- Not detected'),
(1726, 1723, 'Day Three Sample', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 19:14:26', '2024-08-15 19:14:26', NULL, 1, 'Acid fast bacilli- Not detected'),
(1727, 0, 'Stained HP/Cytology Slides for Opinion', '-', '-', NULL, NULL, '', 0, 100, 0, 0, NULL, '2024-08-15 19:14:43', '2024-08-15 19:14:43', NULL, 1, NULL),
(1728, 1727, 'Result', NULL, '-', '', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 19:14:43', '2024-08-15 19:14:43', NULL, 1, NULL),
(1729, 0, 'STOOL FOR OCCULT BLOOD', '-', '-', NULL, NULL, '', 0, 100, 0, 0, NULL, '2024-08-15 19:15:12', '2024-08-15 19:15:12', NULL, 1, NULL),
(1730, 1729, 'STOOL FOR OCCULT BLOOD', NULL, '-', '', '', 'select', 0, 0, 0, 0, NULL, '2024-08-15 19:15:12', '2024-08-15 19:15:12', NULL, 1, NULL),
(1731, 0, 'TB RNA PCR', '-', '-', NULL, NULL, '', 0, 120, 0, 0, NULL, '2024-08-15 19:16:30', '2024-08-15 19:16:30', NULL, 1, NULL),
(1732, 1731, 'SPECIMEN', NULL, '-', '', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 19:16:30', '2024-08-15 19:16:30', NULL, 1, NULL),
(1733, 1731, 'Method', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 19:16:30', '2024-08-15 19:16:30', NULL, 1, 'RNA PCR (Polymerase Chain Reaction) on a Thermal Cycler Platform.'),
(1734, 1731, 'Result', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 19:16:30', '2024-08-15 19:16:30', NULL, 1, ''),
(1735, 1731, 'Note', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 19:16:30', '2024-08-15 19:16:30', NULL, 1, '1.This test was performed using real-time PCR thermal cycling platform. The test is performed using genus specific primers for mycobacterium tuberculosis complex along with appropriate controlls for the assay. 2. Test results should be corelated with patient symptoms and clinical presentation before a definitive diagnosis is made. A negative result does not rule out the presence of mycobacterium or active disease because the organism may be present at levels below the limit of detection for this assay.'),
(1736, 0, 'TC/HDL Ratio', '-', '-', NULL, NULL, '', 0, 10, 0, 0, NULL, '2024-08-15 19:17:35', '2024-08-15 19:17:35', NULL, 1, NULL),
(1737, 1736, 'TC/HDL Ratio', NULL, '-', '', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">0-5.1</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 19:17:35', '2024-08-15 19:17:35', NULL, 1, NULL),
(1738, 1736, 'Interpretation (Optional)', NULL, '-', '', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 19:17:35', '2024-08-15 19:17:35', NULL, 1, NULL),
(1739, 1736, 'Technology (Optional)', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 19:17:35', '2024-08-15 19:17:35', NULL, 1, ''),
(1740, 1736, 'Description (Optional)', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 19:17:35', '2024-08-15 19:17:35', NULL, 1, ''),
(1741, 0, 'TORCH (10 PARA )', '-', '-', NULL, NULL, '', 0, 2, 0, 0, NULL, '2024-08-15 19:21:42', '2024-08-15 19:21:42', NULL, 1, NULL),
(1742, 1741, 'Toxoplasma-IgG', NULL, '-', 'Index', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Negative: Lessthan 0.7</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Positive: &gt; 1.3</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Equivocal: 0.7-1.3</span><br></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 19:21:42', '2024-08-15 19:21:42', NULL, 1, NULL),
(1743, 1741, 'Toxoplasma-IgM', NULL, '-', 'IU/mL', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Negative: Lessthan 0.8</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Borderline: 0.8-1.11</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Positive: &gt;= 1.1</span><br></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 19:21:42', '2024-08-15 19:21:42', NULL, 1, NULL),
(1744, 1741, 'Rubella (German Measles)-IgG', NULL, '-', 'IU/mL', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Negative: Lessthan 8</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Borderline : 8 - 11</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Positive: &gt;= 11</span><br></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 19:21:42', '2024-08-15 19:21:42', NULL, 1, NULL),
(1745, 1741, 'Rubella (German Measles)- IgM', NULL, '-', 'Ratio', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Negative: Lessthan 0.8</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Equivocal: 0.8-1.0</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Positive: &gt;= 1.0</span><br></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 19:21:42', '2024-08-15 19:21:42', NULL, 1, NULL),
(1746, 1741, 'Cytomegalovirus (CMV) Antibody-IgG', NULL, '-', 'Index', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Negative: Lessthan 0.8</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Positive: &gt;1.2</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Equivocal: 0.8 - 1.2</span><br></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 19:21:42', '2024-08-15 19:21:42', NULL, 1, NULL),
(1747, 1741, 'Cytomegalovirus Antibody-IgM', NULL, '-', 'Index', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Negative: Lessthan 0.8</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Positive: &gt;1.2</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Equivocal: 0.8 - 1.2</span><br></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 19:21:42', '2024-08-15 19:21:42', NULL, 1, NULL),
(1748, 1741, 'Herpes Simplex Virus (HSV) 1-IgG', NULL, '-', 'RU/ml', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Negative: Lessthan 16.0</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Borderline: 16.0 - 22.0</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Positive: &gt; 22.0</span><br></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 19:21:42', '2024-08-15 19:21:42', NULL, 1, NULL),
(1749, 1741, 'Herpes Simplex Virus (HSV) 1-IgM', NULL, '-', 'RU/ml', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Negative: Lessthan 0.8</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Borderline : 0.8-1.1</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Positive: &gt; 1.1</span><br></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 19:21:42', '2024-08-15 19:21:42', NULL, 1, NULL),
(1750, 1741, 'Herpes Simplex Virus (HSV) 2-IgG', NULL, '-', 'RU/ml', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Negative: Lessthan 16</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Positive: &gt;= 22</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Borderline : 16 to 22</span><br></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 19:21:42', '2024-08-15 19:21:42', NULL, 1, NULL),
(1751, 1741, 'Herpes Simplex Virus (HSV) 2-IgM', NULL, '-', 'Ratio', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Negative: Lessthan 0.8</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Borderline: 0.8-1.1</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Positive: &gt; 1.1</span><br></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 19:21:42', '2024-08-15 19:21:42', NULL, 1, NULL),
(1752, 1741, 'Interpretation:', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 19:21:42', '2024-08-15 19:21:42', NULL, 1, 'Increased Levels\r\n• Toxoplasmosis\r\nInterfering Factors\r\n• Rheumatoid factor or antinuclear antibodies can cause false-positive results.\r\n• Other active congenital infections can cause false-positive results.'),
(1753, 0, 'TORCH-5 PARA ( IgG )', '-', '-', NULL, NULL, '', 0, 10, 0, 0, NULL, '2024-08-15 19:23:24', '2024-08-15 19:23:24', NULL, 1, NULL),
(1754, 1753, 'Toxoplasma-IgG', NULL, '-', 'Index', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Negative: Lessthan 0.7</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Positive: &gt; 1.3</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Equivocal: 0.7-1.3</span><br></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 19:23:24', '2024-08-15 19:23:24', NULL, 1, NULL),
(1755, 1753, 'Rubella (German Measles)-IgG', NULL, '-', 'IU/mL', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Negative: Lessthan 8</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Borderline : 8 - 11</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Positive: &gt;= 11</span><br></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 19:23:24', '2024-08-15 19:23:24', NULL, 1, NULL),
(1756, 1753, 'Cytomegalovirus (CMV) Antibody-IgG', NULL, '-', 'Index', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Negative: Lessthan 0.8</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Positive: &gt;1.2</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Equivocal: 0.8 - 1.2</span><br></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 19:23:24', '2024-08-15 19:23:24', NULL, 1, NULL),
(1757, 1753, 'Herpes Simplex Virus (HSV) 1-IgG', NULL, '-', 'RU/ml', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Negative: Lessthan 16.0</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Borderline: 16.0 - 22.0</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Positive: &gt; 22.0</span><br></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 19:23:24', '2024-08-15 19:23:24', NULL, 1, NULL),
(1758, 1753, 'Herpes Simplex Virus (HSV) 2-IgG', NULL, '-', 'RU/ml', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Negative: Lessthan 16</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Positive: &gt;= 22</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Borderline : 16 to 22</span><br></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 19:23:24', '2024-08-15 19:23:24', NULL, 1, NULL),
(1759, 0, 'TORCH-5 PARA ( IgM )', '-', '-', NULL, NULL, '', 0, 10, 0, 0, NULL, '2024-08-15 19:26:29', '2024-08-15 19:26:29', NULL, 1, NULL),
(1760, 1759, 'Toxoplasma-IgM', NULL, '-', 'IU/ml', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Negative: Lessthan 0.8</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Borderline: 0.8-1.11</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Positive: &gt;= 1.1</span><br></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 19:26:29', '2024-08-15 19:26:29', NULL, 1, NULL),
(1761, 1759, 'Rubella (German Measles)- IgM', NULL, '-', 'Ratio', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Negative: Lessthan 0.8</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Equivocal: 0.8-1.0</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Positive: &gt;= 1.0</span><br></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 19:26:29', '2024-08-15 19:26:29', NULL, 1, NULL),
(1762, 1759, 'Cytomegalovirus Antibody-IgM', NULL, '-', 'Index', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Negative: Lessthan 0.8</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Positive: &gt;1.2</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Equivocal: 0.8 - 1.2</span><br></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 19:26:29', '2024-08-15 19:26:29', NULL, 1, NULL),
(1763, 1759, 'Herpes Simplex Virus (HSV) 1-IgM', NULL, '-', 'Ratio', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Negative: Lessthan 0.8</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Borderline : 0.8-1.1</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Positive: &gt; 1.1</span><br></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 19:26:29', '2024-08-15 19:26:29', NULL, 1, NULL),
(1764, 1759, 'Herpes Simplex Virus (HSV) 2-IgM', NULL, '-', 'Ratio', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Negative: Lessthan 0.8</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Borderline: 0.8-1.1</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Positive: &gt; 1.1</span><br></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 19:26:29', '2024-08-15 19:26:29', NULL, 1, NULL),
(1765, 0, 'TOTAL RBC COUNT - RBC', '-', '-', NULL, NULL, '', 0, 10, 0, 0, NULL, '2024-08-15 19:26:49', '2024-08-15 19:26:49', NULL, 1, NULL),
(1766, 1765, 'TOTAL RBC COUNT - RBC', NULL, '-', 'mil/cu.mm', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">4.7 - 6.0</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 19:26:49', '2024-08-15 19:26:49', NULL, 1, NULL),
(1767, 0, 'TOTAL WBC COUNT - TLC', '-', '-', NULL, NULL, '', 0, 100, 0, 0, NULL, '2024-08-15 19:27:09', '2024-08-15 19:27:09', NULL, 1, NULL),
(1768, 1767, 'TOTAL WBC COUNT - TLC', NULL, '-', 'cELL', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">4,000 - 11,000</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 19:27:09', '2024-08-15 19:27:09', NULL, 1, NULL),
(1769, 0, 'TOXOPLASMA - IGM & IGG', '--', '--', NULL, NULL, '', 0, 100, 0, 0, NULL, '2024-08-15 19:28:34', '2024-08-15 19:28:34', NULL, 1, NULL),
(1770, 1769, 'TOXOPLASMA-IgM', NULL, '--', '', '<div class=\"col-lg-1\" bis_skin_checked=\"1\" style=\"font-size: 13px; font-family: system-ui; width: 594.943px; padding-right: 5px; padding-left: 5px; color: rgb(33, 37, 41);\">OD Ratio</div><div class=\"col-lg-4\" bis_skin_checked=\"1\" style=\"font-size: 13px; font-family: system-ui; width: 594.943px; padding-right: 5px; padding-left: 5px; color: rgb(33, 37, 41);\">Negative : lessthen 0.70<br>Equivocal : 0.70 - 1.30<br>Positive : &gt; 1.30</div>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 19:28:34', '2024-08-15 19:28:34', NULL, 1, NULL),
(1771, 1769, 'TOXOPLASMA-IgG', NULL, '--', '', '<div class=\"col-lg-1\" bis_skin_checked=\"1\" style=\"font-size: 13px; font-family: system-ui; width: 594.943px; padding-right: 5px; padding-left: 5px; color: rgb(33, 37, 41);\">OD Ratio</div><div class=\"col-lg-4\" bis_skin_checked=\"1\" style=\"font-size: 13px; font-family: system-ui; width: 594.943px; padding-right: 5px; padding-left: 5px; color: rgb(33, 37, 41);\">Negative : Lessthan 0.80<br>Equivocal : 0.80 - 1.20<br>Positive : &gt; 1.20</div>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 19:28:34', '2024-08-15 19:28:34', NULL, 1, NULL),
(1772, 0, 'TREPONEMA PALLIDIUM HAEMAGGLUTINATION ASSAY', 'TPHA', '-', NULL, NULL, '', 0, 10, 0, 0, NULL, '2024-08-15 19:29:23', '2024-08-15 19:29:23', NULL, 1, NULL),
(1773, 1772, 'TPHA (TREPONEMA PALLIDIUM HAEMAGGLUTINATION ASSAY)', NULL, '-', '', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 19:29:23', '2024-08-15 19:29:23', NULL, 1, NULL),
(1774, 0, 'TRANSFERRIN', '-', '-', NULL, NULL, '', 0, 100, 0, 0, NULL, '2024-08-15 19:30:54', '2024-08-15 19:30:54', NULL, 1, NULL),
(1775, 1774, 'TRANSFERRIN', NULL, '-', 'mg/dL', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">215.00 - 365.00</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 19:30:54', '2024-08-15 19:30:54', NULL, 1, NULL),
(1776, 1774, 'Note:', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 19:30:54', '2024-08-15 19:30:54', NULL, 1, 'Pregnancy and use of oral contraceptive cause increase in transferrin levels'),
(1777, 0, 'TRIPLE MARKER TEST', '-', '-', NULL, NULL, '', 0, 100, 0, 0, NULL, '2024-08-15 19:36:29', '2024-08-15 19:36:29', NULL, 1, NULL),
(1778, 1777, 'Prior(Age) Risk of Down Syndrome', NULL, '-', '', '', 'select', 0, 0, 0, 0, NULL, '2024-08-15 19:36:29', '2024-08-15 19:36:29', NULL, 1, NULL),
(1779, 1777, 'Prior (Age) Risk of Edward Syndrome', NULL, '-', '', '', 'select', 0, 0, 0, 0, NULL, '2024-08-15 19:36:29', '2024-08-15 19:36:29', NULL, 1, NULL),
(1780, 1777, 'Prior (Age) Risk of Patau', NULL, '-', '', '', 'select', 0, 0, 0, 0, NULL, '2024-08-15 19:36:29', '2024-08-15 19:36:29', NULL, 1, NULL),
(1781, 1777, 'Prior (Age) Risk of Turner', NULL, '-', '', '', 'select', 0, 0, 0, 0, NULL, '2024-08-15 19:36:29', '2024-08-15 19:36:29', NULL, 1, NULL),
(1782, 1777, 'Posterior (Final) Risk for Down Syndrome', NULL, '-', '', '', 'select', 0, 0, 0, 0, NULL, '2024-08-15 19:36:29', '2024-08-15 19:36:29', NULL, 1, NULL),
(1783, 1777, 'Posterior (Final) Risk for Edwards Syndrome', NULL, '-', '', '', 'select', 0, 0, 0, 0, NULL, '2024-08-15 19:36:29', '2024-08-15 19:36:29', NULL, 1, NULL),
(1784, 1777, 'Posterior (Final) Risk for Patau', NULL, '-', '', '', 'select', 0, 0, 0, 0, NULL, '2024-08-15 19:36:29', '2024-08-15 19:36:29', NULL, 1, NULL),
(1785, 1777, 'Posterior (Final) Risk for Turner', NULL, '-', '', '', 'select', 0, 0, 0, 0, NULL, '2024-08-15 19:36:29', '2024-08-15 19:36:29', NULL, 1, NULL),
(1786, 1777, 'Risk of Neural Tube Defect', NULL, '-', '', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 19:36:29', '2024-08-15 19:36:29', NULL, 1, NULL),
(1787, 1777, 'Interpretation', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 19:36:29', '2024-08-15 19:36:29', NULL, 1, 'The Second Trimester Screening for the given sample is found screen NEGATIVE.'),
(1788, 1777, 'Note', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 19:36:29', '2024-08-15 19:36:29', NULL, 1, '1. Screening of biochemical markers free hCG-beta, AFP & uE3 is performed using FMF (Fetal Medicine Foundation, UK) approved DELFIA system.\r\nThe risk is calculated by LIFE CYCLE Software, based on the results obtained from biochemical test values and ultrasonographic findings provided by the physicians.\r\n2. Screening test interprets only the relative risk for the particular problem in the\r\npresent pregnancy and this is not a confirmatory diagnostic test.'),
(1789, 0, 'TROPONIN T', '-', '-', NULL, NULL, '', 0, 100, 0, 0, NULL, '2024-08-15 19:37:08', '2024-08-15 19:37:08', NULL, 1, NULL),
(1790, 1789, 'TROPONIN T', NULL, '-', '', '', 'select', 0, 0, 0, 0, NULL, '2024-08-15 19:37:08', '2024-08-15 19:37:08', NULL, 1, NULL),
(1791, 1789, 'Note', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 19:37:08', '2024-08-15 19:37:08', NULL, 1, 'CLINICAL SIGNIFICANCE : Cardiac Troponin T is known as a reliable marker of cardiac tissue injury. It is considered to be more sensitive and specific in diagnosis of Myocardial Infarction than the commonly used markers CKMB and LDH. cTnI is released into blood in 4-6 hrs from the onset of AMI, reaching peak level in 16-30 hrs. Unlike CKMB which returns to normal level in 36-48 hrs, elevated concentrations of cTnI can be detected in blood even 5-8 days after onset. LIMITATIONS : The results are indicative only. The test results should be used in conjunction with clinical symptoms and other diagnostic test results. A negative result for patient sample collected before 4 hrs from the onset of chest pain, does not rule out AMI. A negative result for patient sample collected within 4-16 hrs from the onset of symptoms, rules out AMI. Positive results for the patient suspected of AMI, should be further confirmed by other confirmatory tests and diagnostic techniques. In order to avoid false results due to the time taken for release of cTnI in blood from the time of onset of symptoms, serial sampling is recommended. Specimens with high concentration of rheumatoid factor may interfere with the performance and give a nonspecific result'),
(1792, 0, 'Anti HBc-IgM(hbcag)', '-', '-', NULL, NULL, '', 0, 10, 0, 0, NULL, '2024-08-15 20:04:34', '2024-08-15 20:04:34', NULL, 2, NULL),
(1793, 1792, 'Anti HBc-IgM', NULL, '-', 'S/Co', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Negative: Less than 0.9</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Borderline: 0.9-1.1</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Positive: Greater than 1.1</span><br></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 20:04:34', '2024-08-15 20:04:34', NULL, 2, NULL),
(1794, 0, 'ANTI HBs', '-', '-', NULL, NULL, '', 0, 10, 0, 0, NULL, '2024-08-15 20:05:06', '2024-08-15 20:05:06', NULL, 2, NULL),
(1795, 1794, 'ANTI HBs Ag', NULL, '-', 'mIU/L', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">NON IMMUNE : Less Than 10.0 mIU/L</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 20:05:06', '2024-08-15 20:05:06', NULL, 2, NULL),
(1796, 1794, 'Interpretation', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 20:05:06', '2024-08-15 20:05:06', NULL, 2, '\"1.Hepatitis B surface antibody testing is used to determine hepatitis B immune status.\r\n2.As per current CDC guidlines individuals with anti-HBs levels of 10 mIU/mL or greater after completing an HBV vaccination series are considered protected from hepatitis B.\r\n3.A non immunized person is deemed to be immune to HBV infection if anti-HBs values are greater than or equal to 10.0 mIU/ml which could be due to past HBV infection.\r\n4.Persons with passively acquired antibody (e.g. through recent tranfusion etc) may demonstrate positive anti HB s antibodies which may clear later, in such persons test should be repeated after an appropriate interval for determining correct status of patient.\r\n5.Immunity to HBV is implied by anti-HBs values greater than or equal to 10.0 mIU/ml.\r\n6.This result may represent the antibody response to successful HBV immunization, to past HBV infection or passively acquired antibody (e.g.tranfusion).\"'),
(1797, 0, 'ANTI HCV (ELISA)', '-', '-', NULL, NULL, '', 0, 10, 0, 0, NULL, '2024-08-15 20:05:43', '2024-08-15 20:05:43', NULL, 2, NULL),
(1798, 1797, 'Anti HCV Antibody (HCV) Rapid Screening Test', NULL, '-', '', '', 'select', 0, 0, 0, 0, NULL, '2024-08-15 20:05:43', '2024-08-15 20:05:43', NULL, 2, NULL),
(1799, 1797, 'Note:', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 20:05:43', '2024-08-15 20:05:43', NULL, 2, 'This is a screening test. All positive tests must be reconfirmed and the samples should be submitted further for more specific tests like viral detection by PCR.'),
(1800, 0, 'ANTI HEV IgM', '-', '-', NULL, NULL, '', 0, 100, 0, 0, NULL, '2024-08-15 20:06:20', '2024-08-15 20:06:20', NULL, 2, NULL),
(1801, 1800, 'ANTI HAV IgM', NULL, '-', 'S/Co', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">\"Negative :Less Than- 1.0 S/Co Positive:Greater Than-1.0 S/Co\"</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 20:06:20', '2024-08-15 20:06:20', NULL, 2, NULL),
(1802, 1800, 'Interpretation', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 20:06:20', '2024-08-15 20:06:20', NULL, 2, '\"1.The HEV IgM Enzyme-linked immunosorbent assay is for Qualitative determinatio\';n of IgM-class antibodies to hepatitis E virus in Human serum or plasma.\r\n2.The test results must be interpreted in conjunction with the patient clinical information and other laboratory results.\r\n3.The Border line samples should be retested with a fresh sample.\"'),
(1803, 0, 'ANTI STREPTOLISIN O ( ASO )', 'ASO', 'SERUM', NULL, NULL, '', 0, 300, 0, 0, NULL, '2024-08-15 20:06:51', '2025-05-17 19:21:12', NULL, 2, NULL),
(1804, 1803, 'ANTI STREPTOLISIN O ( ASO )', NULL, 'SERUM', 'NEGATIVE', '<p><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 1, 0, NULL, '2024-08-15 20:06:51', '2025-05-17 19:21:12', NULL, 2, NULL),
(1805, 1803, 'Note', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 20:06:51', '2024-10-06 14:42:03', '2024-10-06 14:42:03', 2, 'When Patient is exposed to harmful bacteria, body produces antibodies. These antibodies help protect body against future infections from the same bacteria. They are specific to the bacteria they were produced against. These antibodies can be detected using blood tests. One such blood test is an antistreptolysin O (ASO) test. The ASO test measures antibodies against streptolysin O. These antibodies are made when exposed to group A Streptococcus (GAS). Symptomatic infections caused by GAS are treated with antibiotics. However, many people don\'t have symptoms. Therefore, their infections may not be detected and treatment may not be provided. Complications- referred to as post-streptococcal complications - can arise if GAS remains in the body. The ASO test is essential in detecting and treating GAS.'),
(1806, 0, 'BRUCELLA ANTIBODY IgG', '-', '-', NULL, NULL, '', 0, 10, 0, 0, NULL, '2024-08-15 20:07:16', '2024-08-15 20:07:16', NULL, 2, NULL),
(1807, 1806, 'Immunoglobulin G (IgG)', NULL, '-', '', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Negative: Less than 1.0</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Positive: Greater than 1.0</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 20:07:16', '2024-08-15 20:07:16', NULL, 2, NULL),
(1808, 0, 'BRUCELLA ANTIBODY IgM', '-', '-', NULL, NULL, '', 0, 10, 0, 0, NULL, '2024-08-15 20:07:42', '2024-08-15 20:07:42', NULL, 2, NULL),
(1809, 1808, 'Immunoglobulin M(IgM)', NULL, '-', '', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Negative : Less than 1.0</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Positive : Greater than 1.0</span><br></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 20:07:42', '2024-08-15 20:07:42', NULL, 2, NULL),
(1810, 0, 'C REACTIVE PROTEIN ( CRP )', 'CRP', 'SERUM', NULL, NULL, '', 0, 500, 0, 0, NULL, '2024-08-15 20:08:42', '2025-05-17 19:13:05', NULL, 2, NULL),
(1811, 1810, 'C REACTIVE PROTEIN ( CRP )', NULL, 'SERUM', '', '<p><br></p>', 'text', 0, 0, 1, 0, NULL, '2024-08-15 20:08:42', '2025-05-26 20:21:19', NULL, 2, NULL),
(1812, 0, 'CHIKUNGUNYA ANTIBODIES IgM & IgG', '-', '-', NULL, NULL, '', 0, 10, 0, 0, NULL, '2024-08-15 20:10:01', '2024-08-15 20:10:01', NULL, 2, NULL),
(1813, 1812, 'Immunoglobulin M ( IgM )', NULL, '-', '', '', 'select', 0, 0, 0, 0, NULL, '2024-08-15 20:10:01', '2024-08-15 20:10:01', NULL, 2, NULL),
(1814, 1812, 'Immunoglobulin M ( IgG )', NULL, '-', '', '', 'select', 0, 0, 0, 0, NULL, '2024-08-15 20:10:01', '2024-08-15 20:10:01', NULL, 2, NULL),
(1815, 1812, 'Description', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 20:10:01', '2024-08-15 20:10:01', NULL, 2, 'Limitations: 1. The test is for in vitro diagnostics use only. 2. This ntest detects presence of IgM Antibodies to Chikungunya in the speciman & should not be used as the sole criterion for the diagnosis of Chikungunya. 3. As with all diagnosis tests, all results must be considered with other clinical information to the physician. 4. If the test result is negative & a clinical symptom persists, additional follow-up tastings using other clinical methods is recommended. Also negative result does not preclude the possibility of an infection of Chikungunya.'),
(1816, 0, 'CMV (CYTOMEGALO VIRUS) - IgG', '-', '-', NULL, NULL, '', 0, 10, 0, 0, NULL, '2024-08-15 20:10:45', '2024-08-15 20:10:45', NULL, 2, NULL),
(1817, 1816, 'CMV - IgG', NULL, '-', 'OD RATIO', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Negative : Less than 0.80</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Equivocal : 0.80 - 1.20</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Positive : Greater than 1.20</span><br></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 20:10:45', '2024-08-15 20:10:45', NULL, 2, NULL),
(1818, 1816, 'Interpretation :', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 20:10:45', '2024-08-15 20:10:45', NULL, 2, 'Cytomelagovirus(CMV) is a herpes virus which can cause serious diseases in infants and adults. CMV can persist in the human body for several years and can cause recurrent infections or be transmitted to other individuals.CMV infections are very commons; 60 - 80% of the population have been infected but most cases are asymptomatic.\r\n\r\nIgG antibodies appears after 1-2 weeks,fall within 1 -2 months & may persist lifelong.'),
(1819, 0, 'CMV (CYTOMEGALO VIRUS) - IGM', '-', '-', NULL, NULL, '', 0, 10, 0, 0, NULL, '2024-08-15 20:11:24', '2024-08-15 20:11:24', NULL, 2, NULL),
(1820, 1819, 'CMV - IgM', NULL, '-', 'OD RATIO', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Negative : Less than 0.80</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Equivocal : 0.80 - 1.20</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Positive : Greater than 1.20</span><br></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 20:11:24', '2024-08-15 20:11:24', NULL, 2, NULL),
(1821, 1819, 'Interpretation :', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 20:11:24', '2024-08-15 20:11:24', NULL, 2, 'Cytomelagovirus(CMV) is a herpes virus which can cause serious diseases in infants and adults. CMV can persist in the human body for several years and can cause recurrent infections or be transmitted to other individuals.CMV infections are very commons; 60 - 80% of the population have been infected but most cases are asymptomatic.\r\n\r\nIgM antibodies produced in acute / late phase of primary infection.'),
(1822, 0, 'COVID IGG', '-', '-', NULL, NULL, '', 0, 1, 0, 0, NULL, '2024-08-15 20:11:43', '2024-08-15 20:11:43', NULL, 2, NULL),
(1823, 1822, 'COVID IGG', NULL, '-', '', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 20:11:43', '2024-08-15 20:11:43', NULL, 2, NULL),
(1824, 0, 'CRP (QUALITATIVE)', '-', '-', NULL, NULL, '', 0, 10, 0, 0, NULL, '2024-08-15 20:12:21', '2025-05-17 19:11:04', '2025-05-17 19:11:04', 2, NULL),
(1825, 1824, 'CRP(QUALITATIVE)', NULL, '-', '', '', 'select', 0, 0, 0, 0, NULL, '2024-08-15 20:12:21', '2025-05-17 19:11:04', '2025-05-17 19:11:04', 2, NULL),
(1826, 1824, 'Note', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 20:12:21', '2025-05-17 19:11:04', '2025-05-17 19:11:04', 2, 'The CRP response frequently precedes clinical symptoms such as infections, inflammatory diseases and malignant neoplasms. Alterations are detectable within 6 to 8 hours and the peak value is reached within 24 to 48 hours. Levels of up to thousandfold the normal value are associated with severe stimuli such as myocardial infarction, major trauma, surgery, or malignant neoplasms. CRP levels can be elevated in the later stages of pregnancy, birth control pills or hormone replacement therapy (i.e., estrogen) and obesity. Significantly decreased CRP values may be obtained from samples taken from patients who have been treated with carboxypenicillins. In very rare cases, gammopathy in particular type IgM (Waldenstrom\'s macroglobulinemia) and patients who have treated or received monoclonal mouse antibodies, may cause unreliable results. CRP determination may replace the classical determination of Erythrocytes Sedimentation Rate (ESR), due to its prompt response to changes in disease activity (CRP increases sooner and then decreases more rapidly than the ESR) and its good correlation to ESR.'),
(1827, 0, 'CRP (QUANTITATIVE)', 'CRP', 'SERUM', NULL, NULL, '', 0, 400, 0, 0, NULL, '2024-08-15 20:13:24', '2025-05-17 19:11:29', '2025-05-17 19:11:29', 2, NULL),
(1828, 1827, 'Specimen', NULL, 'SERUM', '', '', 'text', 0, 0, 1, 0, NULL, '2024-08-15 20:13:24', '2025-05-17 19:11:29', '2025-05-17 19:11:29', 2, NULL),
(1829, 1827, 'CRP', NULL, 'SERUM', 'mg/L', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">LESS THAN - 6.0</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 1, 0, NULL, '2024-08-15 20:13:24', '2025-05-17 19:11:29', '2025-05-17 19:11:29', 2, NULL),
(1830, 1827, 'Note', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 20:13:24', '2024-10-05 19:04:24', '2024-10-05 19:04:24', 2, 'The CRP response frequently precedes clinical symptoms such as infections, inflammatory diseases and malignant neoplasms. Alterations are detectable within 6 to 8 hours and the peak value is reached within 24 to 48 hours. Levels of up to thousandfold the normal value are associated with severe stimuli such as myocardial infarction, major trauma, surgery, or malignant neoplasms. CRP levels can be elevated in the later stages of pregnancy, birth control pills or hormone replacement therapy (i.e., estrogen) and obesity. Significantly decreased CRP values may be obtained from samples taken from patients who have been treated with carboxypenicillins. In very rare cases, gammopathy in particular type IgM (Waldenstrom\'s macroglobulinemia) and patients who have treated or received monoclonal mouse antibodies, may cause unreliable results. CRP determination may replace the classical determination of Erythrocytes Sedimentation Rate (ESR), due to its prompt response to changes in disease activity (CRP increases sooner and then decreases more rapidly than the ESR) and its good correlation to ESR.'),
(1831, 1827, 'Remarks', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 20:13:24', '2025-05-17 19:11:29', '2025-05-17 19:11:29', 2, 'Requested the physician to interpret the results with clinical significance'),
(1832, 0, 'CRP QUANTITATIVE', 'C.R.P', 'SERUM', NULL, NULL, '', 0, 400, 0, 0, NULL, '2024-08-15 20:14:50', '2025-05-17 19:13:41', '2025-05-17 19:13:41', 2, NULL),
(1833, 1832, 'Specimen', NULL, '-', '', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 20:14:50', '2024-10-06 20:34:46', '2024-10-06 20:34:46', 2, NULL),
(1834, 1832, 'CRP', NULL, 'SERUM', 'mg/L', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Less than 6.0</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 1, 0, NULL, '2024-08-15 20:14:50', '2025-05-17 19:13:41', '2025-05-17 19:13:41', 2, NULL),
(1835, 1832, 'Note', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 20:14:50', '2025-05-17 19:13:41', '2025-05-17 19:13:41', 2, 'The CRP response frequently precedes clinical symptoms such as infections, inflammatory diseases and malignant neoplasms. Alterations are detectable with 6 to 8 hours and the peak value is reached with in 24 to 48 hours. Levels of up to thousand fold the normal value are associated with severe stimuli such as myocardial infraction, major trauma, surgery, or malignant neoplasms. CRP levels can be elevated in the later stages of pregnancy, birth control pills or hormone replacement therapy (i.e. estrogen) and obesity. Significantly decreased CRP values may be obtained from samples taken from patients who have been treated with carboxypenicillins. In very rare cases, gammopathy, in particular type IgM (Waldenstrom\'s macroglobulinemia) and patient who have been treated or received monoclonal mouse antibodies, my cause unreliable results. CRP determination may replace the classical determination of Erythrocytes Sedimentation Rate(ESR), due to its prompt response to changes in disease activity (CRP increases sooner and then decreases more rapidly than the ESR) and its good correlation to ESR.'),
(1836, 1832, 'RA Factor', NULL, '-', 'IU/ml', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Less than 14</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 20:14:50', '2024-10-06 20:34:39', '2024-10-06 20:34:39', 2, NULL),
(1837, 0, 'D - DIMER', '-', '-', NULL, NULL, '', 0, 100, 0, 0, NULL, '2024-08-15 20:15:50', '2024-08-15 20:15:50', NULL, 2, NULL),
(1838, 1837, 'D-Dimer Quantitative', NULL, '-', 'ng/ml', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">0 - 500</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 20:15:50', '2024-08-15 20:15:50', NULL, 2, NULL),
(1839, 1837, 'D-Dimer Quantitative(FIA)', NULL, '-', 'ng/ml', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">0 - 500</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 20:15:50', '2024-08-15 20:15:50', NULL, 2, NULL),
(1840, 1837, 'D-Dimer Quantitative', NULL, '-', 'ng/ml', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">0 - 0.5</span><br></p><div bis_skin_checked=\"1\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 20:15:50', '2024-08-15 20:15:50', NULL, 2, NULL),
(1841, 1837, 'Interpretation', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 20:15:50', '2024-08-15 20:15:50', NULL, 2, '1. D-dimer is a fibrin degradation product, a small protein fragment present in the blood after a blood clot is degraded by fibrinolysis. The product increases in conditions including inappropriate fibrinolysis.\r\n2. This assay can aid in the diagnosis of Deep Vein Thrombosis (DVT) & pulmonary embolism (PE). The test results should be correlated with Imaging studies (e.g. Colour Doppler). The negative predicitive value (NPV) with acut off of 0.5 g.ml is 95 to 100% for DVT & PE.\r\n3. Elevated D-dimer is seen in hypercoagulability, DVT (Deep Vein Thrombosis, DIC (Disseminated Intravascular Coagulation), recent surgery, trauma or infection.'),
(1842, 1837, 'Limitations:', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 20:15:50', '2024-08-15 20:15:50', NULL, 2, '1. False Negative: Anticoagulant therapy\r\n2. False Positive: Elderly,Liver disease,Pregnancy, Eclampsia,Heart disease,Rheumatoid arthritis, Some cancers,'),
(1843, 0, 'DENGUE IgM & IgG Antibodies (ELISA)', '-', '-', NULL, NULL, '', 0, 10, 0, 0, NULL, '2024-08-15 20:16:31', '2024-08-15 20:16:31', NULL, 2, NULL),
(1844, 1843, 'Dengue IgM Antibody', NULL, '-', '', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Negative: &lt; 9.0</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Equivocal: 9.0 -10.0</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Positive: &gt; 11.0</span><br></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 20:16:31', '2024-08-15 20:16:31', NULL, 2, NULL),
(1845, 1843, 'Dengue IgG Antibody', NULL, '-', '', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Negative: &lt; 9.0</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Equivocal: 9.0 -10.0</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Positive: &gt; 11.0</span><br></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 20:16:31', '2024-08-15 20:16:31', NULL, 2, NULL),
(1846, 1843, 'Interpretation', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 20:16:31', '2024-08-15 20:16:31', NULL, 2, 'This test detects the presence of Dengue NS1 antigen &IgM, IgG antibodies to dengue virus and should not be used as sole criteria for diagnosis of dengue infection. In early infections and some secondary infections, detectable levels of IgM antibodies may be low. Some patients may not produce detectable levels of antibody within the first 7 to 10 days after infection. Where symptoms persist, patients should be retested 3-5 days after the first testing date. Serological cross-reactivity across the Flavivirus group (Dengue virus, St.Louis encephalitis, Japanese encephalitis, West Nile and yellow fever virus) is common. If the test result is negative and clinical symptoms persist, additional followup testing using other clinical methods is recommended. A negative result at any time does not preclude the possibility of an early infection of Dengue virus. This is only a screening test. Therefore, isolation of virus, antigen detection in fixed tissues, RT-PCR and serological test like hemagglutination inhibition test, more specific alternative diagnosis method must be used in order to obtain a confirmation of dengue virus infection.'),
(1847, 0, 'DENGUE PROFILE ANTIBODIES (RAPID)', 'DENGUE', 'SERUM', NULL, NULL, '', 0, 700, 0, 0, NULL, '2024-08-15 20:17:46', '2024-10-10 13:05:22', NULL, 2, NULL),
(1848, 1847, 'Dengue NS1 Antigen', NULL, 'SERUM', '', '', 'select', 0, 0, 1, 0, NULL, '2024-08-15 20:17:46', '2025-05-17 19:29:14', NULL, 2, NULL),
(1849, 1847, 'Dengue IgM Antibody', NULL, 'SERUM', '', '', 'select', 0, 0, 1, 0, NULL, '2024-08-15 20:17:46', '2025-05-17 19:29:15', NULL, 2, NULL),
(1850, 1847, 'Dengue IgG Antibody', NULL, 'SERUM', '', '', 'select', 0, 0, 1, 0, NULL, '2024-08-15 20:17:46', '2025-05-17 19:29:15', NULL, 2, NULL),
(1851, 1847, 'Interpretation', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 20:17:46', '2024-10-06 14:43:11', '2024-10-06 14:43:11', 2, 'This test detects the presence of Dengue NS1 antigen & IgM, IgG antibodies to dengue virus and should not be used as sole criteria for diagnosis of dengue infection. In early infections and some secondary infections, detectable levels of IgM antibodies may be low. Some patients may not produce detectable levels of antibody within the first 7 to 10 days after infection. Where symptoms persist, patients should be retested 3-5 days after the first testing date. Serological cross-reactivity across the Flavivirus group (Dengue virus, St. Louis encephalitis, Japanese encephalitis, West Nile and yellow fever virus) is common. If the test result is negative and clinical symptoms persist, additional follow up testing using other clinical methods is recommended. A negative result at any time does not preclude the possibility of an early infection of Dengue virus. This is only a screening test. Therefore, isolation of virus, antigen detection in fixed tissues, RT-PCR and serological test like hemagglutination inhibition test, more specific alternative diagnosis method must be used in order to obtain a confirmation of dengue virus infection.'),
(1852, 0, '-', '-', '-', NULL, NULL, '', 0, 10, 0, 0, NULL, '2024-08-15 20:19:05', '2024-08-15 20:19:05', NULL, 2, NULL),
(1853, 1852, 'Dengue NS1 Antigen', NULL, '-', '', '', 'select', 0, 0, 0, 0, NULL, '2024-08-15 20:19:05', '2024-08-15 20:19:05', NULL, 2, NULL),
(1854, 1852, 'Dengue IgM Antibody', NULL, '-', '', '', 'select', 0, 0, 0, 0, NULL, '2024-08-15 20:19:05', '2024-08-15 20:19:05', NULL, 2, NULL),
(1855, 1852, 'Dengue IgG Antibody', NULL, '-', '', '', 'select', 0, 0, 0, 0, NULL, '2024-08-15 20:19:05', '2024-08-15 20:19:05', NULL, 2, NULL),
(1856, 1852, 'Method', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 20:19:05', '2024-08-15 20:19:05', NULL, 2, 'Immunochromatographic card test against NS1 antigen and IgG & IgM Antibody for detection of dengue.');
INSERT INTO `tests` (`id`, `parent_id`, `name`, `shortcut`, `sample_type`, `unit`, `reference_range`, `type`, `separated`, `price`, `status`, `title`, `precautions`, `created_at`, `updated_at`, `deleted_at`, `category_id`, `result_temp`) VALUES
(1857, 1852, 'INTERPRETATION :', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 20:19:05', '2024-08-15 20:19:05', NULL, 2, 'This test detects the presence of Dengue NSI antigen & IgM, IgG antibodies to dengue virus and should not be used as sole criteria for diagnosis of dengue infection. In early infections and some secondary infections, detectable levels of IgM antibodies may be low. Some patients may not produce detectable levels of antibody within the first 7 to 10 days after infection. Where symptoms persist, patients should be retested 3-5 days after the first testing date. Serological cross-reactivity across the Flavivirus group (Dengue virus, St. Louis encephalitis, Japanese encephalitis, West Nile and yellow fever virus) is common. If the test result is negative and clinical symptoms persist, additional followup testing using other clinical methods is recommended. A negative result at any time does not preclude the possibility of an early infection of dengue virus. This is only a screening test. Therefore, isolation of virus, antigen detection in fixed tissues, RT-PCR and serological test like hemaggulutioninhibition test, more specific alternative diagnosis method must be used in order to obtain a confirmation of dengue virus infection.'),
(1858, 0, 'DENGUE NS1 Ag', '-', '-', NULL, NULL, '', 0, 100, 0, 0, NULL, '2024-08-15 20:19:24', '2024-08-15 20:19:24', NULL, 2, NULL),
(1859, 1858, 'DENGUE NS1 Ag', NULL, '-', '', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 20:19:24', '2025-05-17 19:27:26', NULL, 2, NULL),
(1860, 0, 'DENGUE NS1 ANTIGEN (RAPID)', '-', '-', NULL, NULL, '', 0, 10, 0, 0, NULL, '2024-08-15 20:20:28', '2024-08-15 20:20:28', NULL, 2, NULL),
(1861, 1860, 'NS1 Antigen', NULL, '-', '', '', 'select', 0, 0, 0, 0, NULL, '2024-08-15 20:20:28', '2024-08-15 20:20:28', NULL, 2, NULL),
(1862, 1860, 'Method', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 20:20:28', '2024-08-15 20:20:28', NULL, 2, 'Immunochromatographic card test against NS1 antigen for detection of dengue.'),
(1863, 1860, 'Note', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 20:20:28', '2024-08-15 20:20:28', NULL, 2, '1.This test detects presence of dengue NS1 antigen and is a rapid immunochromatografic screening test.\r\nELISA (Gold Standard) test is needed for confirmation.\r\n2. In case of suspected Dengue case with Negative NS1 result, Dengue antibodies (IgG/IgM) testing is advised.'),
(1864, 0, 'Dengue Ns1 Antigen Test (ELISA)', '-', '-', NULL, NULL, '', 0, 10, 0, 0, NULL, '2024-08-15 20:21:05', '2024-08-15 20:21:05', NULL, 2, NULL),
(1865, 1864, 'Dengue NS1 Antigen', NULL, '-', '', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Negative: &lt; 9.0</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Equivocal: 9.0 -10.0</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Positive: &gt; 11.0</span><br></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 20:21:05', '2024-08-15 20:21:05', NULL, 2, NULL),
(1866, 1864, 'Note:', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 20:21:05', '2024-08-15 20:21:05', NULL, 2, '1. Negative result does not rule out Dengue infection.\r\n2. Dengue NS1 antigen is detected in patient serum early in the course of disease between days 19 after the onset of clinical signs. It is no longer detectable in serum after anti NS1 antibodies are produced.\r\n3. All positive sample should be followed up by Dengue antibody testing one week later.'),
(1867, 0, 'Desmoglein - 1', '-', '-', NULL, NULL, '', 0, 100, 0, 0, NULL, '2024-08-15 20:23:02', '2024-08-15 20:23:02', NULL, 2, NULL),
(1868, 1867, 'Desmoglein - 1', NULL, '-', 'U/mL', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">&lt; 20&nbsp; : Negative</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">&gt; =20: Positive</span><br></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 20:23:02', '2024-08-15 20:23:02', NULL, 2, NULL),
(1869, 1867, 'INTERPRETATIONS', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 20:23:02', '2024-08-15 20:23:02', NULL, 2, 'Usefull as an aid in the differential diagnosis of certain pemphigus diseases. Desmoglein 1 (Dsg 1) is a desmosomal cadherin expressed in the stratified squamous epithelia & the target antigen in pemphigus foliaceis(PF). PF is an autoimmune blistering disease of skin & characterized clinically by small flaccid blisters & scaly , crusted erosions.Anti Dsg 1 Ig G autoantibodies are detected in sera from patients with PF & play a pathogenic role in blister formation in PF. Anti Dsg 1 Ig G is also detected in about 60 % of the patients with pemphigus vulgais ( PV) & another type of pemphigus.\r\nCurrently diagnosis of pemphigus largely relies on immunofluorescence testing ( IF). However IF has its own limitations like false positive results in If due to antibodies against any cell surface protein & difficulties in differentiating between PF & PV due to similar staining patterns. To, overcome the problems of IF , ELISA using Dsg 1 is used as a sensitive & specific assay for diagnosis of pemphigus.\r\nClinical specificity & sensitivity of Desmoglein1 (Dsg 1) for PF is 100 % & for PV is 69.2 %. (ref. Kit insert MESACUP Desmoglein Test Dsg 1 ).'),
(1870, 1867, 'CAUTIONS', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 20:23:02', '2024-08-15 20:23:02', NULL, 2, 'As with other diagnostic test procedures , the results obtained with Dsg 1 test serve only as an aid to diagnosis & should not be interpreted as diagnostics in themselves.'),
(1871, 0, 'Desmoglein - 3', '-', '-', NULL, NULL, '', 0, 10, 0, 0, NULL, '2024-08-15 20:24:03', '2024-08-15 20:24:03', NULL, 2, NULL),
(1872, 1871, 'Desmoglein - 3', NULL, '-', 'U/mL', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">&lt; 20 : Negative</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">&gt; =20: Positive</span><br></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 20:24:03', '2024-08-15 20:24:03', NULL, 2, NULL),
(1873, 1871, 'INTERPRETATIONS:', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 20:24:03', '2024-08-15 20:24:03', NULL, 2, 'Usefull as an aid in the differential diagnosis of certain pemphigus diseases. Desmoglein 3 (Dsg 3) is a desmosomal cadherin expressed in the stratified squamous epithelia & the target antigen in pemphigus vlgaris (PV).PV is a fatal autoimmune blistering disease of skin & mucus membrane characterized clinically by flaccid blisters & wide spread painful erosions. Anti Dsg 3 Ig G autoantibodies are detected in sera from patients with PV & play a pathogenic role in blister formation in PV. Anti Dsg 3 Ig G is not found in patient in patient with pemphigus foliaceus (PF) or another type of pemphigus. .\r\nCurrently diagnosis of pemphigus largely relies on immunofluorescence testing ( IF). However IF has its own limitations like false positive results in If due to antibodies against any cell surface protein & difficulties in differentiating between PF & PV due to similar staining patterns. To, overcome the problems of IF , ELISA using Dsg 3 is used as a sensitive & specific assay for diagnosis of pemphigus.\r\nClinical specificity & sensitivity of Desmoglein3 (Dsg 3) for PV is 100 % (ref. Kit insert MESACUP Desmoglein Test Dsg 1 ).'),
(1874, 1871, 'CAUTIONS:', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 20:24:03', '2024-08-15 20:24:03', NULL, 2, 'As with other diagnostic test procedures , the results obtained with Dsg 3 test serve only as an aid to diagnosis & should not be interpreted as diagnostics in themselves.'),
(1875, 0, 'Epstein Barr Virus (VCA) - IgM ANTIBODIES', '-', '-', NULL, NULL, '', 0, 100, 0, 0, NULL, '2024-08-15 20:25:02', '2024-08-15 20:25:02', NULL, 2, NULL),
(1876, 1875, 'EBV (VCA) IGM', NULL, '-', 'U/mL', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">NEGATIVE : &lt; 20</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">INDETERMINATE : 20 - 40</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">POSITIVE : &gt; 40</span><br></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 20:25:02', '2024-08-15 20:25:02', NULL, 2, NULL),
(1877, 1875, 'Note :', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 20:25:02', '2024-08-15 20:25:02', NULL, 2, 'Kindly correlate clinically.VCA IgM titres are elevated during the first 2 months of the disease after which there is reduction in titres of VCA IgM and elevation of VCA IgG and EBNA IgG titre. Hence, it is advised to correlate the result with the clinical history of the patient. If clinically indicated, it is advised to repeat VCA IgG, VCA IgM and NA IgG after 2 to 3 weeks. This will help to confirm the presence of infection, understand its stage and/or rule out serological cross reactivity. False positive EBV VCA IgM results are documented in CMV and other herpesviruses, Parvovirus B19, Toxoplasma gondii, Hepatitis A and HIV infections.\r\nTitres of IgM and IgG antibodies to the viral capsid antigen (VCA) are elevated in the serum of more than 90% of patients at the onset of disease. IgM antibodies to VCA is useful for diagnosis of acute infectious mononucleosis because it is present at elevated titres only during the first two months of the disease. In contrast, IgG antibody to VCA is often used to assess exposure to EBV in the past because it persists for life. IgM VCA antibodies are not demonstrable in the general populations, and thus their presence is virtually diagnostic of acute EBV infection.Antibodies to Early Antigens (EA) are detectable 3 to 4 weeks after the onset of symptoms in patients with Infectious mononucleosis and usually persist for 3 to 6 months. Antibodies to Epstein Barr virus nuclear antigen (EBV-NA) are detectable relatively late (3 to 6 weeks after onset of symptoms) and persist for the lifetime of the patient. The appearance of EBV-NA in a patient with previous VCA-positive and EBV-NA negative is strong evidence of recent EBV infection. The EBV-EA and EBV-NA are also elevated in nasopharyngeal carcinoma, Burkitt\'s lymphoma and chronic active EBV infection.'),
(1878, 1875, 'Limitations:', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 20:25:02', '2024-08-15 20:25:02', NULL, 2, 'Serum specimens drawn early during acute phase of infection may be negative for IgM or IgG class of antibodies.Equivocal results should be followed up with testing of a new serum specimen within 10 to 14 days.Past overt and subclinical infections greatly contribute to high sero-prevalence of various community-related infectious diseases in the general Indian population. Hence, all results must be interpreted in the context of the total clinical history and supplementary findings of other investigative procedures. EBV (VCA) IGM, SERUMEpstein Barr Virus (EBV), classified as human herpes virus type 4, is ubiquitous virus. EBV infection is common, worldwide in distribution and largely subclinical in early childhood. Acute infection in adults results in Infectious Mononucleosis .It has also been aetiologically implicated in Burkitt\'s lymphoma, Nasopharyngeal carcinoma and lymphoproliferative disorders. Less certain is the aetiologic role of EBV in Rheumatoid arthritis, Hodgkin\'s disease and its role as a cofactor in AIDS. It is possible that latent and infectious forms of EBV can coexist throughout life in an individual.'),
(1879, 1875, 'Test Utility:', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 20:25:02', '2024-08-15 20:25:02', NULL, 2, 'EBV-specific antibody testing is useful in patients with suspected acute EBV infection who lack heterophile antibodies and those with atypical infection. Titres of IgM and IgG antibodies to the viral capsid antigen (VCA) are elevated in the serum of more than 90% of patients at the onset of disease. IgM antibodies to VCA is useful for diagnosis of acute infectious mononucleosis because it is present at elevated titres only during the first two months of the disease. In contrast, IgG antibody to VCA is often used to assess exposure to EBV in the past because it persists for life. IgM VCA antibodies are not demonstrable in the general populations, and thus their presence is virtually diagnostic of acute EBV infection.Antibodies to Early Antigens (EA) are detectable 3 to 4 weeks after the onset of symptoms in patients with Infectious mononucleosis and usually persist for 3 to 6 months. Antibodies to Epstein Barr virus nuclear antigen (EBV-NA) are detectable relatively late (3 to 6 weeks after onset of symptoms) and persist for the lifetime of the patient. The appearance of EBV-NA in a patient with previous VCA-positive and EBV-NA negative is strong evidence of recent EBV infection. The EBV-EA and EBV-NA are also elevated in nasopharyngeal carcinoma, Burkitt\'s lymphoma and chronic active EBV infection.\r\nSerum specimens drawn early during acute phase of infection may be negative for IgM or IgG class of antibodies.Equivocal results should be followed up with testing of a new serum specimen within 10 to 14 days.Past overt and subclinical infections greatly contribute to high sero-prevalence of various community-related infectious diseases in the general Indian population. Hence, all results must be interpreted in the context of the total clinical history and supplementary findings of other investigative procedures.'),
(1880, 0, 'HBsAg (AUSTRALIA ANTIGEN)', '-', '-', NULL, NULL, '', 0, 10, 0, 0, NULL, '2024-08-15 20:25:46', '2024-08-15 20:25:46', NULL, 2, NULL),
(1881, 1880, 'Hepatitis B Surface Antigen (HBSAg)-Rapid', NULL, '-', '', '', 'select', 0, 0, 0, 0, NULL, '2024-08-15 20:25:46', '2024-08-15 20:25:46', NULL, 2, NULL),
(1882, 0, 'HBSAg -ELISA', '-', '-', NULL, NULL, '', 0, 10, 0, 0, NULL, '2024-08-15 20:26:07', '2024-08-15 20:26:07', NULL, 2, NULL),
(1883, 1882, 'HBSAg -ELISA', NULL, '-', 'S/CO', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Negative : &lt; = 0.90</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Equivocal : 0.91 - 1.10</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Positive : &gt; = 1.11</span><br></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 20:26:07', '2024-08-15 20:26:07', NULL, 2, NULL),
(1884, 0, 'HELICOBACTER PYLORI IgG & IgM Antibody', '-', '-', NULL, NULL, '', 0, 10, 0, 0, NULL, '2024-08-15 20:27:02', '2024-08-15 20:27:02', NULL, 2, NULL),
(1885, 1884, 'HELICOBACTER PYLORI, IgG Antibody', NULL, '-', 'U/ml', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">&lt; 8 : Negative</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">8 - 12 : Equivocal</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">&gt; 12 : Positive</span><br></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 20:27:02', '2024-08-15 20:27:02', NULL, 2, NULL),
(1886, 1884, 'HELICOBACTER PYLORI, IgM Antibody', NULL, '-', 'U/ml', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">&lt; 8 : Negative</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">8 - 12 : Equivocal</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">&gt; 12 : Positive</span><br></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 20:27:02', '2024-08-15 20:27:02', NULL, 2, NULL),
(1887, 1884, 'Comments :', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 20:27:02', '2024-08-15 20:27:02', NULL, 2, 'Helicobacter pylori is a gram negative bacteria responsible for about 80-90% cases of gastritis and suspected to be a major co-factor for the development of gastric and duodenal ulcers. The colonization of gastric and duodenal mucous membranes with Helicobacter pylori can be detected serologically by enzyme immunoassay tests. IgM antibodies indicate acute infection even if no bacteria are detected on mucous membrane biopsy, indirect immunofluorescence or urease test. IgG antibodies do not distinguish between current and past infection.'),
(1888, 0, 'HEPATITIS A VIRUS - IgG ( HAV - IgG )', '-', '-', NULL, NULL, '', 0, 100, 0, 0, NULL, '2024-08-15 20:28:28', '2024-08-15 20:28:28', NULL, 2, NULL),
(1889, 1888, 'HAV-IgG Ab to Hepatitis A Virus', NULL, '-', '', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Non Reactive: &lt; 1.0</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Reactive: &gt;= 1.0</span><br></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 20:28:28', '2024-08-15 20:28:28', NULL, 2, NULL),
(1890, 0, 'HEPATITIS A VIRUS - IgM ( HAV - IgM )', '-', '-', NULL, NULL, '', 0, 100, 0, 0, NULL, '2024-08-15 20:28:51', '2024-08-15 20:28:51', NULL, 2, NULL),
(1891, 1890, 'HAV-IgM ( ELISA)', NULL, '-', 'S/CO', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Negative : S/Co &lt;0.9</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Equivocal : S/Co 0.9 - 1.0</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Positive : S/Co &gt; 1.1</span><br></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 20:28:51', '2024-08-15 20:28:51', NULL, 2, NULL),
(1892, 0, 'Hepatitis B surface antigen (AuAg) - ELISA', '-', '-', NULL, NULL, '', 0, 10, 0, 0, NULL, '2024-08-15 20:29:25', '2024-08-15 20:29:25', NULL, 2, NULL),
(1893, 1892, 'Result', NULL, '-', '', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 20:29:25', '2024-08-15 20:29:25', NULL, 2, NULL),
(1894, 1892, 'Reference Range', NULL, '-', '', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 20:29:25', '2024-08-15 20:29:25', NULL, 2, NULL),
(1895, 1892, 'Interpretation', NULL, '-', '', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 20:29:25', '2024-08-15 20:29:25', NULL, 2, NULL),
(1896, 1892, 'Method', NULL, '-', '', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 20:29:25', '2024-08-15 20:29:25', NULL, 2, NULL),
(1897, 0, 'HEPATITIS B VIRUS CORE ANTIBODY ( HBcAb )', '-', '-', NULL, NULL, '', 0, 10, 0, 0, NULL, '2024-08-15 20:30:06', '2024-08-15 20:30:06', NULL, 2, NULL),
(1898, 1897, 'HBcAb-IgM', NULL, '-', '', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Negative: Less than 1.0</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Positive: Greater than 1.0</span><br></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 20:30:06', '2024-08-15 20:30:06', NULL, 2, NULL),
(1899, 1897, 'Method', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 20:30:06', '2024-08-15 20:30:06', NULL, 2, 'Enzyme Linked Immunosorbent Assay (ELISA)'),
(1900, 1897, 'Note', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 20:30:06', '2024-08-15 20:30:06', NULL, 2, 'Appears at the onset of symptoms in acute hepatitis B and persists for life. The presence of anti-HBc indicates previous or ongoing infection with hepatitis B virus in an undefined time frame. IgM antibody to hepatitis B core antigen(IgM anti-HBc): Positivity indicates recent infection with hepatitis B virus. Its presence indicates acute infection.'),
(1901, 0, 'HEPATITIS B VIRUS ENVELOPE ANTIBODY ( HBeAb )', '-', '-', NULL, NULL, '', 0, 10, 0, 0, NULL, '2024-08-15 20:41:36', '2024-08-15 20:41:36', NULL, 2, NULL),
(1902, 1901, 'HBeAb-IgM', NULL, '-', '', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Negative: Less than 1.0</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Positive: Greater than 1.0</span><br></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 20:41:36', '2024-08-15 20:41:36', NULL, 2, NULL),
(1903, 0, 'HEPATITIS B VIRUS ENVELOPE ANTIGEN ( HBeAg )', '-', '-', NULL, NULL, '', 0, 100, 0, 0, NULL, '2024-08-15 20:42:16', '2024-08-15 20:42:16', NULL, 2, NULL),
(1904, 1903, 'HEPATITIS B VIRUS ENVELOPE ANTIGEN ( HBeAg )', NULL, '-', '', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Negative: Less than 1.0</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Positive: Greater than 1.0</span><br></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 20:42:16', '2024-08-15 20:42:16', NULL, 2, NULL),
(1905, 1903, 'Note', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 20:42:16', '2024-08-15 20:42:16', NULL, 2, 'HBeAg is the hepatitis B envelope antigen, and anti-HBe are the antibodies produced against this antigen. If HBeAg is detectable in a blood sample, this means that the virus is still active in the liver(and can be transmitted to others). If HBeAg is negative and anti-HBe is positive, this generally means that the virus is inactive. However, this is not always the case. Some people with chronic hepatitis-especially those who have been infected with HBV for many years may have what is known as a \"precore\" or \"core variant\" mutated form of HBV. This can cause HBeAg to be negative and anti-HBe to be positive, even though the virus is still active in the liver.'),
(1906, 0, 'HEPATITIS C VIRUS ( HCV ) Card Test', '-', '-', NULL, NULL, '', 0, 400, 0, 0, NULL, '2024-08-15 20:42:48', '2025-05-28 16:11:34', NULL, 2, NULL),
(1907, 1906, 'HCV', NULL, '-', '', '', 'select', 0, 0, 0, 0, NULL, '2024-08-15 20:42:48', '2025-05-28 16:11:34', NULL, 2, NULL),
(1908, 0, 'HEPATITIS C VIRUS ( HCV ) ELISA', '-', '-', NULL, NULL, '', 0, 10, 0, 0, NULL, '2024-08-15 20:43:57', '2024-08-15 20:43:57', NULL, 2, NULL),
(1909, 1908, 'HEPATITIS C VIRUS ( HCV ) ELISA', NULL, '-', '', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Negative: Less than 0.90</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Equivocal: 0.90 - 1.10</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Positive: Greater than 1.10</span><br></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 20:43:57', '2024-08-15 20:43:57', NULL, 2, NULL),
(1910, 1908, 'Note', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 20:43:57', '2024-08-15 20:43:57', NULL, 2, 'Anti HCV antibody test is a screening test. A positive report doesnot confirm diagnosis and all positive cases should be confirmed by PCR. HCV is now recognized as the primary cause of transfusion associated Non-A, Non-B Hepatitis. The biochemical changes occuring in a HCV infected person are increased levels of serum transaminases. The acute presentation of HCV infection is generally mild, often clinically asymptomatic, with only 10-25% of patients developing jaundice, greater than 50% of infected individuals go on to develop chronic hepatitis with serious and possibly life threatening sequel such as cirrhosis, hepatocellular carcinoma.'),
(1911, 0, 'HEPATITIS E VIRUS - IgM ( HEV IgM )', '-', '-', NULL, NULL, '', 0, 100, 0, 0, NULL, '2024-08-15 20:44:31', '2024-08-15 20:44:31', NULL, 2, NULL),
(1912, 1911, 'HEPATITIS E VIRUS - IGM ( HEV IGM )', NULL, '-', '', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Negative :S/CO &lt;1</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Borderline:S/CO=0.9-1.0</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Positive :S/CO&gt;1</span><br></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 20:44:31', '2024-08-15 20:44:31', NULL, 2, NULL),
(1913, 1911, 'Interpretation', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 20:44:31', '2024-08-15 20:44:31', NULL, 2, 'Hepatitis E is usually an acute infection and does not become a chronic illness. On rare occasions the acute illness can take fulminant shape, pregnant women are at high risk of fulminant liver failure. The great majority of patients who recover from acute infection do not continue to carry HEV and cannot pass on the infection to others. For diagnostic purpose, results should always be assessed in conjunction with the patients medical history, clinical examination and other lab findings.'),
(1914, 0, 'Herpes Simplex Virus 1 & 2 IgG', '-', '-', NULL, NULL, '', 0, 100, 0, 0, NULL, '2024-08-15 20:45:32', '2024-08-15 20:45:32', NULL, 2, NULL),
(1915, 1914, 'HERPES SIMPLEX VIRUS (HSV) 1 + 2 IgG, SERUM', NULL, '-', 'IU/ml', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">lessthan 0.90</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 20:45:32', '2024-08-15 20:45:32', NULL, 2, NULL),
(1916, 1914, 'Note', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 20:45:32', '2024-08-15 20:45:32', NULL, 2, '1. This assay is used for qualitative detection of specific IgG antibodies to Herpes Simplex virus (1+2) in serum samples only. However in interpreting CSF HSV IgG levels it should be done in conjunction with serum IgG levels and ratio of 4:1 is considered significant indicating HSV encephalitis.\r\n2. Positive result indicates past infection with Herpes Simplex virus or administration of HSV immunoglobulins. Pregnant females with positive HSV specific IgG antibodies are considered to be immune and hence risk of transmission of infection to fetus is minimal.\r\n3. Equivocal results should be re-tested in 10-14 days.\r\n4. Negative result indicates person has not been exposed to Herpes Simplex virus in the past. Patients with negative results in suspected disease should be re-tested after 10-14 days. False negative results can be due to immunosuppression or due to low/undetectable level of IgG antibodies.\r\n5. HSV serology cannot distinguish genital from nongenital infections.\r\n6. The result should be interpreted in conjunction with clinical finding and other diagnostic tests. 7. The magnitude of the measured result is not indicative of the amount of antibody present.'),
(1917, 0, 'Herpes Simplex Virus 1 & 2 IgM', '-', '-', NULL, NULL, '', 0, 10, 0, 0, NULL, '2024-08-15 20:46:38', '2024-08-15 20:46:38', NULL, 2, NULL),
(1918, 1917, 'HSV - Herpes Simplex Virus-1 & 2 - IgG', NULL, '-', '- Index', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Negative : &lt;0.8</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Equivocal : 0.8 - 1.2</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Positive : &gt; 1.2</span><br></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 20:46:38', '2024-08-15 20:46:38', NULL, 2, NULL),
(1919, 1917, 'HSV - Herpes Simplex Virus-1 & 2- IgM', NULL, '-', '- Index', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Negative : &lt;0.8</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Equivocal : 0.8 - 1.2</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Positive : &gt; 1.2</span><br></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 20:46:38', '2024-08-15 20:46:38', NULL, 2, NULL),
(1920, 1917, 'Interpretation :', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 20:46:38', '2024-08-15 20:46:38', NULL, 2, 'The Herpes Simplex Virus (HSV) is a member of the Herpesviridae family. of which two types are known : Type 1 ( HSV-1) and Type 2 (HSV-2) which present slight antigenic differences .HSV-1 causes chiefly oral-facial lesion,while HSV-2 is mainly responsible for genital lesions,but this distinction is not binding .both types occasionally causing infection in either anatomical site.HSV may also cause a form of ocular cheratitis and lesions of the central nervous system.\r\n\r\nIgM antibodies produced in acute / late phase of primary infection.'),
(1921, 0, 'HIV (I) PCR REPORT - QUANTITATIVE', '-', '-', NULL, NULL, '', 0, 100, 0, 0, NULL, '2024-08-15 20:47:06', '2024-08-15 20:47:06', NULL, 2, NULL),
(1922, 1921, 'Quantitative Real-Time NASBA PCR for Human Immunodeficiency Virus(HIV -1) RNA', NULL, '-', 'Copies/ml', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 20:47:06', '2024-08-15 20:47:06', NULL, 2, NULL),
(1923, 1921, 'Note', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 20:47:06', '2024-08-15 20:47:06', NULL, 2, 'HIV-1 RNA detection was performed using NucliSENS Easy Q Real-time NASBA (US FDA Approved)platform. The test is performed using primers and fluorescent labeled probes specific for HIV-1 alod with appropriate controls for the assay. The lower detection limit of this test is 20 copies/ml. This test is highly specific for HIV-1 subtypes. The test has been validated at the Precision Diagnostics. The Laboratory report must be interpreted in correlation with the clinical profile of the patient. * IU=International Unit:1 IU = 1 RNA copy * Lineairty (Detection Limits) of the assay is 20 to 2000000 copies/ml'),
(1924, 0, 'HIV 1 & 2 Antibody (Card Test)', '-', '-', NULL, NULL, '', 0, 1, 0, 0, NULL, '2024-08-15 20:48:20', '2024-08-15 20:48:20', NULL, 2, NULL),
(1925, 1924, 'HIV 1 & 2 Antibody (Card Test)', NULL, '-', '', '', 'select', 0, 0, 0, 0, NULL, '2024-08-15 20:48:20', '2024-10-06 14:42:37', NULL, 2, NULL),
(1926, 1924, 'Note', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 20:48:20', '2024-10-06 14:42:31', '2024-10-06 14:42:31', 2, 'The above test is screening test for detection of HIV I and II antibodies in human serum or plasma immobilized on an immunofiltration membrane.HIV I and HIV II viruses share many morphological and biological characteristics.It is likey that due to this reason, their antibodies behave via cross reactivity of 30-70 % then tested using Recombinant proteins.All positive detected sample shall be reconfirmed by using WESTERN BLOT techniques.Negative test results does not exclude the possibility of infection or exposure to HIV.'),
(1927, 0, 'HIV 1-DNA PCR - Qualitative', '-', '-', NULL, NULL, '', 0, 10, 0, 0, NULL, '2024-08-15 21:39:46', '2024-08-15 21:39:46', NULL, 2, NULL),
(1928, 1927, 'HIV -1 DNA', NULL, '-', '', '', 'select', 0, 0, 0, 0, NULL, '2024-08-15 21:39:46', '2024-08-15 21:39:46', NULL, 2, NULL),
(1929, 1927, 'Method', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 21:39:46', '2024-08-15 21:39:46', NULL, 2, 'Nested Polymerase Chain Reaction'),
(1930, 1927, 'Clinical Utility', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 21:39:46', '2024-08-15 21:39:46', NULL, 2, 'HIV DNA PCR is a test, which specifically detects proviral DNA integrated into the host genome. This latent proviral DNA serves as a reservoir for viral replication. The HIV DNA PCR test can detect this latent or inactive HIV virus.HIV DNA PCR is specially useful in following condition - 1. In neonates, where maternal antibodies persists upto 8 months,it is dufficult to differentiate between maternal & infant antibodies. 2. Window period (before Seroconversion)'),
(1931, 1927, 'Interpretation', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 21:39:46', '2024-08-15 21:39:46', NULL, 2, 'Amplification of target specific bands indicate presence of HIV - 1 in the given specimen. A negative report indicates absence of HIV in the given specimen. All the results should always be correlated with clinical status & history of the patient. HIV DNA PCR is a screening test & should not be considered as confirmatory test.'),
(1932, 1927, 'Limitations', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 21:39:46', '2024-08-15 21:39:46', NULL, 2, 'PCR is a highly sensitive technique common reasons for paradoxical results are contamination during specimen collection, selection of inappropriate specimens & inherent PCR inhibitors in the specimen.'),
(1933, 1927, 'References', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 21:39:46', '2024-08-15 21:39:46', NULL, 2, '1. Journal of Infectious Disease 1996 173:68-76 2. HIV guidelines. New York State Department of Health AIDS Institute,2005 Note: This test is standardized & validated at SRL Limited.'),
(1934, 0, 'HIV I& II', '-', '-', NULL, NULL, '', 0, 100, 0, 0, NULL, '2024-08-15 21:40:34', '2024-08-15 21:40:34', NULL, 2, NULL),
(1935, 1934, 'Result', NULL, '-', '', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 21:40:34', '2024-08-15 21:40:34', NULL, 2, NULL),
(1936, 0, 'HIV p24 Antigen Detection-', '-', '-', NULL, NULL, '', 0, 10, 0, 0, NULL, '2024-08-15 21:41:10', '2024-08-15 21:41:10', NULL, 2, NULL),
(1937, 1936, 'HIV P24 Antigen detection', NULL, '-', 'Index', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Negative : &lt; 1.0</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Positive : &gt; = 1.0</span><br></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 21:41:10', '2024-08-15 21:41:10', NULL, 2, NULL),
(1938, 1936, 'Notes', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 21:41:10', '2024-08-15 21:41:10', NULL, 2, 'p24 antigen can generally be detected in serum in the two weeks following the patients infection by HIV1.\r\nIts presence reflects intense multiplication of the virus and hence provides an early diagnosis of the disease at the presero conversion stage.\r\nIn children from HIV1 positive mothers, the presence of p24 antigen at birth indicates early and severe forms of the disease.\r\nAbout 28 weeks after initial exposure, antibodies are produced in response to HIV infection. Once antibodies are produced, the results of the p24 test will usually be negative although the person may be infected with HIV.'),
(1939, 0, 'HLA - B 27', '-', '-', NULL, NULL, '', 0, 10, 0, 0, NULL, '2024-08-15 21:42:19', '2024-08-15 21:42:19', NULL, 2, NULL),
(1940, 1939, 'Result', NULL, '-', '', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 21:42:19', '2024-08-15 21:42:19', NULL, 2, NULL),
(1941, 1939, 'Uses:', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 21:42:19', '2024-08-15 21:42:19', NULL, 2, '<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:500px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>DISEASE</td>\r\n			<td>STRENGTH OF ASSOCIATION</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Ankylosing spondylitis</td>\r\n			<td>++++</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Reiter&rsquo;s syndrome</td>\r\n			<td>++++</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Reactive arthritis (Yersinia, Salmonella, Shigella &amp;<br />\r\n			Chlamydia)</td>\r\n			<td>+++</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Acute anterior uveitis</td>\r\n			<td>+++</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Psoriatic spondylitis</td>\r\n			<td>+++</td>\r\n		</tr>\r\n	</tbody>\r\n</table>'),
(1942, 1939, 'Notes:', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 21:42:19', '2024-08-15 21:42:19', NULL, 2, '• Certain inflammatory and non-inflammatory diseases are associated with the inheritance of HLA alleles .\r\n• Ankylosing spondylitis and several postinfectious arthropathies are associated with the presence of HLA -B27.\r\n• Individuals who inherit this class I allele have a 90 fold greater chance of developing the disease as compared to\r\nthose who do not carry HLA-B27.\r\n• It is postulated that the mechanism underlying this association most probably influences T cell response.\r\n• In cases of HLA-B27 negative Spondyloarthropathy, further testing recommended is HLA-C*06 (Positive in\r\nPsoriatic arthritis) and HLA-B*07 (Positive in Juvenile and Undifferentiated Spondyloarthropathy).'),
(1943, 0, 'hs CRP (High Sensitive C Reactive Protein)', 'CRP HS', 'SERUM', NULL, NULL, '', 0, 500, 0, 0, NULL, '2024-08-15 21:43:00', '2025-05-17 19:16:16', NULL, 2, NULL),
(1944, 1943, 'CRP High Sensitivity CRP', NULL, 'SERUM', 'mg/L', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">• <1.00 -- Low Risk</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">• 1.00 - 3.00 -- Average Risk</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">• 3- 10 -- High Risk</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">• >10 - Persistent elevation may</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">represent Non cardiovascular inflammation</span><br></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 21:43:00', '2025-05-17 19:16:16', NULL, 2, NULL),
(1945, 1943, 'Interpretation :', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 21:43:00', '2025-05-17 19:16:16', NULL, 2, 'High sensitivity CRP (hsCRP) measurements may be used as an independent risk marker for future cardiovascular disease. In conjunction with other findings may be useful for prognosis of recurrent events.High sensitivity C-reactive protein, when used in conjunction with other clinical laboratory evaluation of acute coronary syndromes, may be useful as an independent marker of prognosis for recurrent events, in patients with stable coronary disease or acute coronary syndromes. hsCRP levels should not be substituted for assessment of traditional cardiovascular risk factors. Patients with persistently unexplained, marked evaluation of hsCRP after repeated testing should be evaluated for non - cardiovascular etiologies'),
(1946, 1943, 'Remark', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 21:43:00', '2025-05-17 19:16:16', NULL, 2, 'Clinical significance: hsCRP measurements may be used as an independent risk marker for the identification of individuals at risk for future cardiovascular disease. Elevated CRP values may be indicative of prognosis of individuals with acute coronary syndromes, and may be useful in the management of such individuals.'),
(1947, 0, 'IgA - Immunoglobulin A', '-', '-', NULL, NULL, '', 0, 1000, 0, 0, NULL, '2024-08-15 21:43:25', '2024-08-15 21:43:25', NULL, 2, NULL),
(1948, 1947, 'IgA - Immunoglobulin A', NULL, '-', 'mg/dl', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">82 - 453</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 21:43:25', '2024-08-15 21:43:25', NULL, 2, NULL),
(1949, 0, 'IgG - Immunoglobulin G', '-', '-', NULL, NULL, '', 0, 10, 0, 0, NULL, '2024-08-15 21:43:47', '2024-08-15 21:43:47', NULL, 2, NULL),
(1950, 1949, 'IgG - Immunoglobulin G', NULL, '-', 'mg/dl', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">700 - 1600</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 21:43:47', '2024-08-15 21:43:47', NULL, 2, NULL),
(1951, 0, 'IgM - Immunoglobulin M (IgM)', '-', '-', NULL, NULL, '', 0, 10, 0, 0, NULL, '2024-08-15 21:44:07', '2024-08-15 21:44:07', NULL, 2, NULL),
(1952, 1951, 'IMMUNOGLOBULIN IgM', NULL, '-', 'mg/dl', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">40 - 230</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 21:44:07', '2024-08-15 21:44:07', NULL, 2, NULL),
(1953, 0, 'LEPTOSPIRA ANTIBODY IGM & IGG', '-', '-', NULL, NULL, '', 0, 100, 0, 0, NULL, '2024-08-15 21:44:43', '2024-08-15 21:44:43', NULL, 2, NULL),
(1954, 1953, 'Leptospira Antibody-IgM', NULL, '-', '', '', 'select', 0, 0, 0, 0, NULL, '2024-08-15 21:44:43', '2024-08-15 21:44:43', NULL, 2, NULL),
(1955, 1953, 'Leptospira Antibody IgG', NULL, '-', '', '', 'select', 0, 0, 0, 0, NULL, '2024-08-15 21:44:43', '2024-08-15 21:44:43', NULL, 2, NULL),
(1956, 0, 'Mycoplasma Pneumoniae IgM Antibody', '-', '-', NULL, NULL, '', 0, 100, 0, 0, NULL, '2024-08-15 21:44:58', '2024-08-15 21:44:58', NULL, 2, NULL),
(1957, 1956, 'Result', NULL, '-', '', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 21:44:58', '2024-08-15 21:44:58', NULL, 2, NULL),
(1958, 0, 'ophthalmology check', '-', '-', NULL, NULL, '', 0, 10, 0, 0, NULL, '2024-08-15 21:45:18', '2024-08-15 21:45:18', NULL, 2, NULL),
(1959, 1958, 'ophthalmology check', NULL, '-', '', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 21:45:18', '2024-08-15 21:45:18', NULL, 2, NULL),
(1960, 0, 'RA FACTOR ( QUALITATIVE )', 'RAFACTOR', 'SERUM', NULL, NULL, '', 0, 300, 0, 0, NULL, '2024-08-15 21:45:51', '2025-05-17 19:22:58', NULL, 2, NULL),
(1961, 1960, 'Rheumatoid Factor (RA)-Qualitative', NULL, 'SERUM', '', '', 'select', 0, 0, 0, 0, NULL, '2024-08-15 21:45:51', '2025-05-17 19:22:58', NULL, 2, NULL),
(1962, 0, 'Ra factor (Quantitative)', 'RA', 'SERUM', NULL, NULL, '', 0, 300, 0, 0, NULL, '2024-08-15 21:46:14', '2024-10-06 13:26:40', NULL, 2, NULL),
(1963, 1962, 'RA-Rheumatoid Arthritis FACTOR', NULL, 'SERUM', 'U/ml', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">< 20</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 1, 0, NULL, '2024-08-15 21:46:14', '2024-10-06 13:39:46', NULL, 2, NULL),
(1964, 0, 'RETROVIRUS I & II', '-', '-', NULL, NULL, '', 0, 100, 0, 0, NULL, '2024-08-15 21:46:34', '2024-08-15 21:46:34', NULL, 2, NULL),
(1965, 1964, 'RETROVIRUS I & II', NULL, '-', '', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 21:46:34', '2024-08-15 21:46:34', NULL, 2, NULL),
(1966, 0, 'RUBELLA (GERMAN MEASLES) ANTIBODY IgG', '-', '-', NULL, NULL, '', 0, 100, 0, 0, NULL, '2024-08-15 21:47:17', '2024-08-15 21:47:17', NULL, 2, NULL),
(1967, 1966, 'RUBELLA (GERMAN MEASLES) ANTIBODY IgG', NULL, '-', 'IU/ml', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Negative : &lt; 7.0</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Equivocal : 7 - 10</span></p><div bis_skin_checked=\"1\" style=\"font-size: 13px; font-family: system-ui; color: rgb(33, 37, 41);\">Positive : ≥ 10.0</div>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 21:47:17', '2024-08-15 21:47:17', NULL, 2, NULL),
(1968, 0, 'Rubella Virus Antibody - IgM', '-', '-', NULL, NULL, '', 0, 10, 0, 0, NULL, '2024-08-15 21:47:44', '2024-08-15 21:47:44', NULL, 2, NULL),
(1969, 1968, 'Rubella Virus Antibody - IgM', NULL, '-', 'Index', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Negative: Less than 1.2</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Equivocal: 1.2 - 1.6</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Positive: Greater than 1.6</span><br></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 21:47:44', '2024-08-15 21:47:44', NULL, 2, NULL),
(1970, 0, 'Salmonella typhi IgG & IgM (Card Test)', '-', '-', NULL, NULL, '', 0, 10, 0, 0, NULL, '2024-08-15 21:48:28', '2024-08-15 21:48:28', NULL, 2, NULL),
(1971, 1970, 'IGG', NULL, '-', '', '', 'select', 0, 0, 0, 0, NULL, '2024-08-15 21:48:28', '2024-08-15 21:48:28', NULL, 2, NULL),
(1972, 1970, 'IGM', NULL, '-', '', '', 'select', 0, 0, 0, 0, NULL, '2024-08-15 21:48:28', '2024-08-15 21:48:28', NULL, 2, NULL),
(1973, 0, 'Serum Copper', '-', '-', NULL, NULL, '', 0, 10, 0, 0, NULL, '2024-08-15 21:50:16', '2024-08-15 21:50:16', NULL, 2, NULL),
(1974, 1973, 'COPPER, SERUM (COLORIMETRIC METHOD)', NULL, '-', 'microgm/dl', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">63.5 - 150</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 21:50:16', '2024-08-15 21:50:48', NULL, 2, NULL),
(1975, 1973, 'COPPER, SERUM', NULL, '-', '- ug/dl', '<font color=\"#212529\" face=\"system-ui\"><span style=\"font-size: 13px;\">< 6 months : 20-70<br>6 months-18 Years: 90 - 190<br>Adults :<br>Males : 70 - 140<br>Females : 80 - 155</span></font><br>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 21:50:16', '2024-08-15 21:50:48', NULL, 2, NULL),
(1976, 1973, 'INTERPRETATION', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 21:50:16', '2024-08-15 21:50:48', NULL, 2, ''),
(1977, 1973, 'Note', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 21:50:16', '2024-08-15 21:50:48', NULL, 2, '1. Inductively Coupled Plasma Mass Spectrometry (ICPMS) is used to determine the level of heavy /trace metals in biological tissues.\r\n2. There is a diurnal variation with highest levels in the morning .'),
(1978, 1973, 'Comments:', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 21:50:16', '2024-08-15 21:50:48', NULL, 2, 'Copper is the third most abundant trace element in the human body required for enzymatic reactions. Dietary sources of copper are liver, shell fish, chocolate, nuts and seeds. Copper pipes or vesselsdo not increase the copper content of water unless exposed to acid. Smoking, Strenuous exercise, infections and injuries increase the body\'s need for copper. Ceruloplasmin, a copper proteinis a useful indicator of copper status.'),
(1979, 1973, 'Decreased Levels:', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 21:50:48', '2024-08-15 21:50:48', NULL, 2, 'Wilson\'s disease (stage of the disease) , malnutrition, excessive consumption of zinc, GI disease (Sprue & Celiac disease), Menke s syndrome, burns, Chronic Ischemic heart disease.'),
(1980, 1973, 'Increased Levels:', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 21:50:48', '2024-08-15 21:50:48', NULL, 2, 'Wilson\'s disease (stage of the disease), Infections, Biliary cirrhosis, Leukemia, Typhoid, Hodgkins disease, Thalassemia major, anemia, collagen disease, spondyloarthropathies.'),
(1981, 0, 'Thyroglobulin (Tg)', '-', '-', NULL, NULL, '', 0, 10, 0, 0, NULL, '2024-08-15 21:51:23', '2024-08-15 21:51:23', NULL, 2, NULL),
(1982, 1981, 'Thyroglobulin (Tg)', NULL, '-', 'ng/ml', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">0 - 55</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 21:51:23', '2024-08-15 21:51:23', NULL, 2, NULL),
(1983, 0, 'TISSUE TRANSGLUTAMINASE - IgA ( TTGA )', '-', '-', NULL, NULL, '', 0, 10, 0, 0, NULL, '2024-08-15 21:51:52', '2024-08-15 21:51:52', NULL, 2, NULL),
(1984, 1983, 'TISSUE TRANSGLUTAMINASE - IgA ( TTGA )', NULL, '-', 'U/ml', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Negative: &lt; 20.00</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Weakly Positive: 20 - 30</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Positive: &gt; 30.00</span><br></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 21:51:52', '2024-08-15 21:51:52', NULL, 2, NULL);
INSERT INTO `tests` (`id`, `parent_id`, `name`, `shortcut`, `sample_type`, `unit`, `reference_range`, `type`, `separated`, `price`, `status`, `title`, `precautions`, `created_at`, `updated_at`, `deleted_at`, `category_id`, `result_temp`) VALUES
(1985, 1983, 'Note', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 21:51:52', '2024-08-15 21:51:52', NULL, 2, 'The finding of tissue transglutaminase(tTG) IgA antibodies is specific for celiac disease and possibly for dermatitis herpetiformis. For individuals with moderately to strongly positive results, a diagnosis of celiac disease is likely and the patient should undergo biopsy to confirm the diagnosis. The finding of tTG IgG antibodies may indicate a diagnosis of celiac disease, particularly in individuals who are IgA deficient. For individuals with moderately to strongly positive results, a diagnosis of celiac disease is possible and the patient should undergo a biopsy to confirm the diagnosis. If patients strictly adhere to a gluten-free diet, the unit value of anti-tTG antibodies should begin to decrease within 6 to 12 months of onset of dietary therapy. This test should not be solely relied upon to establish a diagnosis of celiac disease. It should be used to identify patients who have an increased probability of having celiac disease in whom a small intestinal biopsy is recommended. Affected individuals who have been on a gluten-free diet prior to testing may have negative results. For individuals who test negative for tissue transglutaminase (tTG) IgA and positive for tTG IgG, IgA deficiency should be considered. If serology is negative or there is substantial clinical doubt remaining, then further investigation should be performed with endoscopy and bowel biopsy.'),
(1986, 0, 'TOXOPLASMA - IGG', '-', '-', NULL, NULL, '', 0, 10, 0, 0, NULL, '2024-08-15 21:52:42', '2024-08-15 21:52:42', NULL, 1, NULL),
(1987, 1986, 'TOXOPLASMA - IgM', NULL, '-', 'Index', '<p><br></p><p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Negative: lessthan 0.7</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Positive: &gt; 1.3</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Equivocal: 0.7-1.3</span><br></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 21:52:42', '2024-08-15 21:52:42', NULL, 1, NULL),
(1988, 1986, 'Interfering Factors', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 21:52:42', '2024-08-15 21:52:42', NULL, 1, '• Rheumatoid factor or antinuclear antibodies can cause false-positive results.\r\n• Other active congenital infections can cause false-positive results.'),
(1989, 0, 'TOXOPLASMA - IGM', '-', '-', NULL, NULL, '', 0, 10, 0, 0, NULL, '2024-08-15 21:53:12', '2024-08-15 21:53:12', NULL, 2, NULL),
(1990, 1989, 'TOXOPLASMA-IgM', NULL, '-', '', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Non Reactive: Less than 0.9</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Intermediate: 0.9 - 1.1</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Reactive: Greater than 1.1</span><br></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 21:53:12', '2024-08-15 21:53:12', NULL, 2, NULL),
(1991, 0, 'TROPONIN I', '-', '-', NULL, NULL, '', 0, 10, 0, 0, NULL, '2024-08-15 21:53:35', '2024-08-15 21:53:35', NULL, 2, NULL),
(1992, 1991, 'TROPONIN I', NULL, '-', '', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 21:53:35', '2024-08-15 21:53:35', NULL, 2, NULL),
(1993, 1991, 'Interpretation', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 21:53:35', '2024-08-15 21:53:35', NULL, 2, 'This is a qualitative test and hence must be interpreted with clinical condition.\r\nDue to release kinetics of Troponin T, a negative result does not rule out a cardiac infarction or myocardial cell damage with certainty. If suspicion of an infarction persists, the test should be repeated at suitable time intervals as per the guideline. A negative Trop T result must not be used as the sole diagnosti criterion.\r\nTroponin T assay can be used as an aid in differential diagnosis of acute coronary syndrome (ACS) to identify necrosis (e.g acute myocardial infarction (AMI).\r\n>\r\nTest is indicated for risk stratification of patients presenting with ACS and for cardiac risk in patients with chronic renal failure\r\n>\r\nIt is cardio specific and sensitive marker for myocardial damage. In cases of AMI, Troponin T levels in serum rise about 3 to 4 hrs after the occurrence of cardiac symptoms and can remain elevated for up to 14 days.\r\nIt is an independent prognostic marker for predicting near, mid and even long term outcome of patients with ACS.\r\nUseful tool for guiding anti thrombotic therapy (low molecular weight heparins)\r\nMyocardial cell injury leading to elevated Troponin T can also occur in congestive cardiac failure, cardiomyopathy, myocarditis, heart contusion, renal failure, lung embolism, stroke, left ventricular dysfunction in septic shock, and interventional therapy like cardiac surgery, non -cardiac surgery, PTCA and drug induced cardio toxicity.'),
(1994, 0, 'VARICELLA ZOSTER IgG & IgM ANTIBODY', '-', '-', NULL, NULL, '', 0, 10, 0, 0, NULL, '2024-08-15 21:54:23', '2024-08-15 21:54:23', NULL, 2, NULL),
(1995, 1994, 'varicella Zoster IgG Abs', NULL, '-', '', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Negative: Less than 0.8</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Equivocal: 0.8 - 1.2</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Positive: Greater than 1.2</span><br></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 21:54:23', '2024-08-15 21:54:23', NULL, 2, NULL),
(1996, 1994, 'Result', NULL, '-', '', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 21:54:23', '2024-08-15 21:54:23', NULL, 2, NULL),
(1997, 1994, 'Varicella Zoster IgM Abs', NULL, '-', '', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Negative: Less than 0.8</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Equivocal: 0.8 - 1.09</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Positive: Greater than 1.10</span><br></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 21:54:23', '2024-08-15 21:54:23', NULL, 2, NULL),
(1998, 0, 'VARICELLA ZOSTER IgM ANTIBODY', '-', '-', NULL, NULL, '', 0, 10, 0, 0, NULL, '2024-08-15 21:55:10', '2024-08-15 21:55:10', NULL, 2, NULL),
(1999, 1998, 'Varicella Zoster IgM Abs', NULL, '-', '', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Negative: Less than 0.8</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Equivocal: 0.8 - 1.09</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Positive: Greater than 1.10</span><br></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 21:55:10', '2024-08-15 21:55:10', NULL, 2, NULL),
(2000, 1998, 'Result', NULL, '-', '', '', 'select', 0, 0, 0, 0, NULL, '2024-08-15 21:55:10', '2024-08-15 21:55:10', NULL, 2, NULL),
(2001, 0, 'VDRL - Rapid Card', '-', '-', NULL, NULL, '', 0, 10, 0, 0, NULL, '2024-08-15 21:56:01', '2024-08-15 21:56:01', NULL, 2, NULL),
(2002, 2001, 'VDRL (RPR), Serum', NULL, '-', '', '', 'select', 0, 0, 0, 0, NULL, '2024-08-15 21:56:01', '2024-08-15 21:56:01', NULL, 2, NULL),
(2003, 2001, 'Comment', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 21:56:01', '2024-08-15 21:56:01', NULL, 2, '* False positive results may be seen during a variety of acute and chronic conditions.\r\n* Reactive results must be correlated with supportive clinical, historical and epidemiological evidence to arrive at a final diagnosis.\r\n* TPHA / FTA-antibodies is a confirmatory test for Treponema pallidum with very high specificity and sensitivity.'),
(2004, 0, 'WEIL FELIX TEST', '-', '-', NULL, NULL, '', 0, 10, 0, 0, NULL, '2024-08-15 21:57:17', '2024-08-15 21:57:17', NULL, 2, NULL),
(2005, 2004, 'Antigen OX-K', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 21:57:17', '2024-08-15 21:57:17', NULL, 2, 'No agglutination seen even in titre 1:180'),
(2006, 2004, 'Antigen OX-19', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 21:57:17', '2024-08-15 21:57:17', NULL, 2, 'No agglutination seen even in titre 1:180'),
(2007, 2004, 'Antigen OX-2', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 21:57:17', '2024-08-15 21:57:17', NULL, 2, 'No Agglutination seen even in titre 1:180'),
(2008, 2004, 'Interpretation', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 21:57:17', '2024-08-15 21:57:17', NULL, 2, 'Test is Negative'),
(2009, 2004, 'Method', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 21:57:17', '2024-08-15 21:57:17', NULL, 2, 'Slide Agglutination'),
(2010, 2004, 'Note', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 21:57:17', '2024-08-15 21:57:17', NULL, 2, 'Many population of communities can show high levels of residual antibodies often in excess of 1/80 to 1/160. Patients can also show high levels of residual antibodies from previous infections or immunization. For a test to be of clinical significance a rise in titre must be demonstrated not just a high titre for a one off test'),
(2011, 0, 'WESTERN BLOT TEST ( HIV )', '-', '-', NULL, NULL, '', 0, 10, 0, 0, NULL, '2024-08-15 22:00:06', '2024-08-15 22:00:06', NULL, 2, NULL),
(2012, 2011, 'gp 160', NULL, '-', '', '', 'select', 0, 0, 0, 0, NULL, '2024-08-15 22:00:06', '2024-08-15 22:00:06', NULL, 2, NULL),
(2013, 2011, 'gp 120', NULL, '-', '', '', 'select', 0, 0, 0, 0, NULL, '2024-08-15 22:00:06', '2024-08-15 22:00:06', NULL, 2, NULL),
(2014, 2011, 'p 66', NULL, '-', '', '', 'select', 0, 0, 0, 0, NULL, '2024-08-15 22:00:06', '2024-08-15 22:00:06', NULL, 2, NULL),
(2015, 2011, 'p 66', NULL, '-', '', '', 'select', 0, 0, 0, 0, NULL, '2024-08-15 22:00:06', '2024-08-15 22:00:06', NULL, 2, NULL),
(2016, 2011, 'gp -41', NULL, '-', '', '', 'select', 0, 0, 0, 0, NULL, '2024-08-15 22:00:06', '2024-08-15 22:00:06', NULL, 2, NULL),
(2017, 2011, 'p 31', NULL, '-', '', '', 'select', 0, 0, 0, 0, NULL, '2024-08-15 22:00:06', '2024-08-15 22:00:06', NULL, 2, NULL),
(2018, 2011, 'p 24', NULL, '-', '', '', 'select', 0, 0, 0, 0, NULL, '2024-08-15 22:00:06', '2024-08-15 22:00:06', NULL, 2, NULL),
(2019, 2011, 'p 17', NULL, '-', '', '', 'select', 0, 0, 0, 0, NULL, '2024-08-15 22:00:06', '2024-08-15 22:00:06', NULL, 2, NULL),
(2020, 2011, 'HIV 2', NULL, '-', '', '', 'select', 0, 0, 0, 0, NULL, '2024-08-15 22:00:06', '2024-08-15 22:00:06', NULL, 2, NULL),
(2021, 2011, 'Impression', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 22:00:06', '2024-08-15 22:00:06', NULL, 2, 'Non reactive for HIV1 Non reactive for HIV2'),
(2022, 2011, 'Interpretation', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 22:00:06', '2024-08-15 22:00:06', NULL, 2, '<table>\r\n	<tbody>\r\n		<tr>\r\n			<td rowspan=\"4\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td>\r\n			<p>INTERPRETATION</p>\r\n			</td>\r\n			<td>\r\n			<p>PATTERN</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Positive</p>\r\n			</td>\r\n			<td>\r\n			<p>2 ENV ( gp 160,gp 120 or gp 41)<br />\r\n			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; +<br />\r\n			1 GAG ( p 17,p 24 or p 55 )<br />\r\n			or 1POL ( p 31,p 51 or p 66 )</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Indeterminate</p>\r\n			</td>\r\n			<td>\r\n			<p>Variable band pattern short of positive criteria</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Negative</p>\r\n			</td>\r\n			<td>\r\n			<p>Only control band or control band with p51/55/p66 band</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td rowspan=\"2\">\r\n			<p>HIV 2</p>\r\n			</td>\r\n			<td>\r\n			<p>Positive</p>\r\n			</td>\r\n			<td>\r\n			<p>HIV 2 band present</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Negative</p>\r\n			</td>\r\n			<td>\r\n			<p>HIV 2 band absent</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>'),
(2023, 0, 'WIDAL TEST - Slide', '-----', '-', NULL, NULL, '', 0, 100, 0, 0, NULL, '2024-08-15 22:03:46', '2025-02-05 19:53:37', NULL, 2, NULL),
(2024, 2023, 'Widal Slide Agglutination Test (Serum, Agglutination)', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 22:03:46', '2025-05-17 16:26:35', NULL, 2, ''),
(2025, 2023, 'RESULT', NULL, '-', '', '', 'select', 0, 0, 0, 0, NULL, '2024-08-15 22:03:46', '2025-05-17 16:26:35', NULL, 2, NULL),
(2026, 2023, 'Salmonella Typhi - O', NULL, '-', '', '', 'select', 0, 0, 0, 0, NULL, '2024-08-15 22:03:46', '2025-05-17 16:26:35', NULL, 2, NULL),
(2027, 2023, 'Salmonella Typhi - H', NULL, '-', '', '', 'select', 0, 0, 0, 0, NULL, '2024-08-15 22:03:46', '2025-05-17 16:26:35', NULL, 2, NULL),
(2028, 2023, 'Salmonella Paratyphi - AH', NULL, '-', '', '', 'select', 0, 0, 0, 0, NULL, '2024-08-15 22:03:46', '2025-05-17 16:26:35', NULL, 2, NULL),
(2029, 2023, 'Salmonella Paratyphi - BH', NULL, '-', '', '', 'select', 0, 0, 0, 0, NULL, '2024-08-15 22:03:46', '2025-05-17 16:26:35', NULL, 2, NULL),
(2030, 2023, 'INTERPRETATION', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 22:03:46', '2025-05-17 16:26:35', NULL, 2, 'Agglutination titre of 1:80 or more is significant and increase in the titre from the same patient, on repetition of the test after a few days is suggestive of active Salmonella infection. Anamnesis can be seen in vaccinated patients'),
(2031, 0, 'WIDAL TEST - Tube', '-', '-', NULL, NULL, '', 0, 10, 0, 0, NULL, '2024-08-15 22:25:04', '2024-08-15 22:25:04', NULL, 2, NULL),
(2032, 2031, 'Widal Tube Agglutination Test (Serum)', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 22:25:04', '2024-08-15 22:25:04', NULL, 2, ''),
(2033, 2031, 'Table', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 22:25:04', '2024-08-15 22:25:04', NULL, 2, '<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:500px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Agglutination</td>\r\n			<td><br />\r\n			1:20</td>\r\n			<td><br />\r\n			1:40</td>\r\n			<td><br />\r\n			1:80</td>\r\n			<td><br />\r\n			1:160</td>\r\n			<td><br />\r\n			1:320</td>\r\n			<td>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<table id=\"tablelist122\">\r\n				<tbody>\r\n					<tr>\r\n						<td>S. Typhi O</td>\r\n						<td colspan=\"3\">&nbsp;</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<table id=\"tablelist122\">\r\n				<tbody>\r\n					<tr>\r\n						<td>S. Typhi H</td>\r\n						<td colspan=\"3\">&nbsp;</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<table id=\"tablelist122\">\r\n				<tbody>\r\n					<tr>\r\n						<td>S. Paratyphi AH</td>\r\n						<td colspan=\"3\">&nbsp;</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<table id=\"tablelist122\">\r\n				<tbody>\r\n					<tr>\r\n						<td>S. Paratyphi BH</td>\r\n						<td colspan=\"3\">&nbsp;</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>'),
(2034, 0, '24 HRS URINARY ALBUMIN', '-', '-', NULL, NULL, '', 0, 100, 0, 0, NULL, '2024-08-15 22:28:03', '2024-08-15 22:28:03', NULL, 4, NULL),
(2035, 2034, '24 hrs urinary Protein', NULL, '-', 'mg/24hrs', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">0-150</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 22:28:03', '2024-08-15 22:28:03', NULL, 4, NULL),
(2036, 2034, 'Urinary Volume', NULL, '-', 'ml', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 22:28:03', '2024-08-15 22:28:03', NULL, 4, NULL),
(2037, 0, '24 HRS URINARY MICROALBUMIN', '-', '-', NULL, NULL, '', 0, 100, 0, 0, NULL, '2024-08-15 22:28:51', '2024-08-15 22:28:51', NULL, 4, NULL),
(2038, 2037, 'Spot Urine Microalbumin', NULL, '-', 'mg/L', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">0-20</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 22:28:51', '2024-08-15 22:28:51', NULL, 4, NULL),
(2039, 2037, 'Urinary Volume', NULL, '-', 'ml', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 22:28:51', '2024-08-15 22:28:51', NULL, 4, NULL),
(2040, 2037, '24 hrs urine microalbumin', NULL, '-', 'mg/24hrs', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">24 hr collection Category</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Less than 30mg Normal</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">30 - 300mg Microalbuminuria</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">more than 300mg Clinical albuminuria</span><br></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 22:28:51', '2024-08-15 22:28:51', NULL, 4, NULL),
(2041, 0, 'BILE PIGMENTS', '-', '-', NULL, NULL, '', 0, 100, 0, 0, NULL, '2024-08-15 22:29:15', '2024-08-15 22:29:15', NULL, 4, NULL),
(2042, 2041, 'BILE PIGMEN', NULL, '-', '', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 22:29:15', '2024-08-15 22:29:15', NULL, 4, NULL),
(2043, 0, 'BILE SALT AND PIGMENTS - URINE', '-', '-', NULL, NULL, '', 0, 100, 0, 0, NULL, '2024-08-15 22:30:01', '2024-08-15 22:30:01', NULL, 4, NULL),
(2044, 2043, 'Bile Salts', NULL, '-', '', '', 'select', 0, 0, 0, 0, NULL, '2024-08-15 22:30:01', '2024-08-15 22:30:01', NULL, 4, NULL),
(2045, 2043, 'Bile Pigments', NULL, '-', '', '', 'select', 0, 0, 0, 0, NULL, '2024-08-15 22:30:01', '2024-08-15 22:30:01', NULL, 4, NULL),
(2046, 0, 'Bile Salts', '-', '-', NULL, NULL, '', 0, 100, 0, 0, NULL, '2024-08-15 22:30:19', '2024-08-15 22:30:19', NULL, 4, NULL),
(2047, 2046, 'BILE SALTS', NULL, '-', '', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 22:30:19', '2024-08-15 22:30:19', NULL, 4, NULL),
(2048, 0, 'CREATININE CLEARANCE ( 24 HRS URINE )', '-', '-', NULL, NULL, '', 0, 10, 0, 0, NULL, '2024-08-15 22:31:19', '2024-08-15 22:31:19', NULL, 4, NULL),
(2049, 2048, 'Height', NULL, '-', 'Cm', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 22:31:19', '2024-08-15 22:31:19', NULL, 4, NULL),
(2050, 2048, 'Weight', NULL, '-', 'Kg', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 22:31:19', '2024-08-15 22:31:19', NULL, 4, NULL),
(2051, 2048, 'Serum Creatinine', NULL, '-', 'mg/dl', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 22:31:19', '2024-08-15 22:31:19', NULL, 4, NULL),
(2052, 2048, 'Urine Creatinine', NULL, '-', 'mg/dl', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 22:31:19', '2024-08-15 22:31:19', NULL, 4, NULL),
(2053, 2048, 'Urine Volume', NULL, '-', 'ml', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 22:31:19', '2024-08-15 22:31:19', NULL, 4, NULL),
(2054, 0, 'KETONE BODY', '-', '-', NULL, NULL, '', 0, 100, 0, 0, NULL, '2024-08-15 22:32:01', '2024-08-15 22:32:01', NULL, 4, NULL),
(2055, 2054, 'KETONE BODY (BETA HYDROXYBUTYRATE)', NULL, '-', 'mmol/L', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">0.02 - 0.27</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 22:32:01', '2024-08-15 22:32:01', NULL, 4, NULL),
(2056, 0, 'MICROALBUMIN/ALBUMIN : CREATININE RATIO', '-', '-', NULL, NULL, '', 0, 10, 0, 0, NULL, '2024-08-15 22:33:06', '2024-08-15 22:33:06', NULL, 4, NULL),
(2057, 2056, 'MICROALBUMIN/ALBUMIN : CREATININE RATIO (ACR), URINE', NULL, '-', 'mg/L', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">0 - 30</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 22:33:06', '2024-08-15 22:33:06', NULL, 4, NULL),
(2058, 2056, 'Creatinine', NULL, '-', 'mg/L', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">24.00 - 392.00</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 22:33:06', '2024-08-15 22:33:06', NULL, 4, NULL),
(2059, 2056, 'Microalbumin:Creatinine Ratio', NULL, '-', 'mg/g Creat', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">&lt; 30.00</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 22:33:06', '2024-08-15 22:33:06', NULL, 4, NULL),
(2060, 0, 'MOTION ROUTINE', '-', '-', NULL, NULL, '', 0, 100, 0, 0, NULL, '2024-08-15 22:34:14', '2024-08-15 22:34:14', NULL, 4, NULL),
(2061, 2060, 'Apperance', NULL, '-', '', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 22:34:14', '2024-08-15 22:34:14', NULL, 4, NULL),
(2062, 2060, 'Apperance', NULL, '-', '', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 22:34:14', '2024-08-15 22:34:14', NULL, 4, NULL),
(2063, 2060, 'Ova', NULL, '-', '', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 22:34:14', '2024-08-15 22:34:14', NULL, 4, NULL),
(2064, 2060, 'Cyst', NULL, '-', '', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 22:34:14', '2024-08-15 22:34:14', NULL, 4, NULL),
(2065, 2060, 'Pus Cells', NULL, '-', '', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 22:34:14', '2024-08-15 22:34:14', NULL, 4, NULL),
(2066, 2060, 'RBCs', NULL, '-', '', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 22:34:14', '2024-08-15 22:34:14', NULL, 4, NULL),
(2067, 2060, 'RBCs', NULL, '-', '', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 22:34:14', '2024-08-15 22:34:14', NULL, 4, NULL),
(2068, 2060, 'Method', NULL, '-', '', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 22:34:14', '2024-08-15 22:34:14', NULL, 4, NULL),
(2069, 0, 'MALARIA PARASITE (KIT)', 'MP', 'BLOOD', NULL, NULL, '', 0, 200, 0, 0, NULL, '2024-08-15 22:34:37', '2025-05-17 16:36:54', NULL, 4, NULL),
(2070, 2069, 'Malaria Parasite', NULL, 'BLOOD', 'NEGATIVE', '<p><br></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 22:34:37', '2025-05-17 16:36:54', NULL, 4, NULL),
(2071, 0, 'Pregnancy Test', '-', '-', NULL, NULL, '', 0, 100, 0, 0, NULL, '2024-08-15 22:35:35', '2024-08-15 22:35:35', NULL, 4, NULL),
(2072, 2071, 'Pregnancy Test  \\n Method  : Urine, Immunochromatography', NULL, '-', '', '', 'select', 0, 0, 0, 0, NULL, '2024-08-15 22:35:35', '2024-08-15 22:35:35', NULL, 4, NULL),
(2073, 0, 'REDUCING SUBSTANCE', '-', '-', NULL, NULL, '', 0, 100, 0, 0, NULL, '2024-08-15 22:36:20', '2024-08-15 22:36:20', NULL, 4, NULL),
(2074, 2073, 'STOOL EXAMINATION, pH & REDUCING SUBSTANCES (Dipstick, Benedict)', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 22:36:20', '2024-08-15 22:36:20', NULL, 4, ''),
(2075, 2073, 'pH', NULL, '-', '', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 22:36:20', '2024-08-15 22:36:20', NULL, 4, NULL),
(2076, 2073, 'Reducing Substances', NULL, '-', '', '', 'select', 0, 0, 0, 0, NULL, '2024-08-15 22:36:20', '2024-08-15 22:36:20', NULL, 4, NULL),
(2077, 0, 'ROTA VIRUS ANTIGEN DETECTION (STOOL)', '-', '-', NULL, NULL, '', 0, 10, 0, 0, NULL, '2024-08-15 22:36:55', '2024-08-15 22:36:55', NULL, 4, NULL),
(2078, 2077, 'Rota Virus Antigen detection', NULL, '-', '', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Negative</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 22:36:55', '2024-08-15 22:36:55', NULL, 4, NULL),
(2079, 0, 'SEMEN ANALYSIS REPORT', '--', '-', NULL, NULL, '', 0, 41, 0, 0, NULL, '2024-08-15 22:41:43', '2024-08-15 22:41:43', NULL, 4, NULL),
(2080, 2079, 'General Information', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 22:41:43', '2024-08-15 22:41:43', NULL, 4, ''),
(2081, 2079, 'Place of Collection', NULL, '-', '', '', 'select', 0, 0, 0, 0, NULL, '2024-08-15 22:41:43', '2024-08-15 22:41:43', NULL, 4, NULL),
(2082, 2079, 'PHYSICAL EXAMINATION', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 22:41:43', '2024-08-15 22:41:43', NULL, 4, ''),
(2083, 2079, 'Volume', NULL, '-', 'ml', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 22:41:43', '2024-08-15 22:41:43', NULL, 4, NULL),
(2084, 2079, 'Colour', NULL, '-', '', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 22:41:43', '2024-08-15 22:41:43', NULL, 4, NULL),
(2085, 2079, 'Viscocity', NULL, '-', '', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 22:41:43', '2024-08-15 22:41:43', NULL, 4, NULL),
(2086, 2079, 'Liquifaction time', NULL, '-', 'Minutes', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 22:41:43', '2024-08-15 22:41:43', NULL, 4, NULL),
(2087, 2079, 'Period of Sexual Abstinence', NULL, '-', '3 days', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 22:41:43', '2024-08-15 22:41:43', NULL, 4, NULL),
(2088, 2079, 'MICROSCOPIC EXAMINATION', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 22:41:43', '2024-08-15 22:41:43', NULL, 4, ''),
(2089, 2079, 'Sperm Count', NULL, '-', 'million/cu.mm', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">20 - 120</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 22:41:43', '2024-08-15 22:41:43', NULL, 4, NULL),
(2090, 2079, 'Motility (At room temperature)', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 22:41:43', '2024-08-15 22:41:43', NULL, 4, ''),
(2091, 2079, 'Progressive Motility (PR)', NULL, '-', '%', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 22:41:43', '2024-08-15 22:41:43', NULL, 4, NULL),
(2092, 2079, 'Non-Progressive Motility (NP)', NULL, '-', '%', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 22:41:43', '2024-08-15 22:41:43', NULL, 4, NULL),
(2093, 2079, 'Immotility (IM)', NULL, '-', '%', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 22:41:43', '2024-08-15 22:41:43', NULL, 4, NULL),
(2094, 2079, 'Morphology', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 22:41:43', '2024-08-15 22:41:43', NULL, 4, ''),
(2095, 2079, 'Normal Forms', NULL, '-', '%', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 22:41:43', '2024-08-15 22:41:43', NULL, 4, NULL),
(2096, 2079, 'Abnormal Forms', NULL, '-', '%', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 22:41:43', '2024-08-15 22:41:43', NULL, 4, NULL),
(2097, 2079, 'Epithelial cells', NULL, '-', '%', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 22:41:43', '2024-08-15 22:41:43', NULL, 4, NULL),
(2098, 2079, 'Pus Cells', NULL, '-', 'Absent /hpf', '', 'select', 0, 0, 0, 0, NULL, '2024-08-15 22:41:43', '2024-08-15 22:41:43', NULL, 4, NULL),
(2099, 2079, 'RBCs (Optional)', NULL, '-', '', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 22:41:43', '2024-08-15 22:41:43', NULL, 4, NULL),
(2100, 0, 'SPECIFIC GRAVITY', '-', '-', NULL, NULL, '', 0, 100, 0, 0, NULL, '2024-08-15 22:41:59', '2024-08-15 22:41:59', NULL, 4, NULL),
(2101, 2100, 'Urine For Specific Gravity Specific Gravity,', NULL, '-', '', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 22:41:59', '2024-08-15 22:41:59', NULL, 4, NULL),
(2102, 0, 'Stool Hanging drop', '-', '-', NULL, NULL, '', 0, 10, 0, 0, NULL, '2024-08-15 22:42:22', '2024-08-15 22:42:22', NULL, 4, NULL),
(2103, 2102, 'Sample', NULL, '-', '', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 22:42:22', '2024-08-15 22:42:22', NULL, 4, NULL),
(2104, 0, 'TROPONIN T', '-', '-', NULL, NULL, '', 0, 10, 0, 0, NULL, '2024-08-15 22:44:20', '2024-08-15 22:44:20', NULL, 4, NULL),
(2105, 2104, 'Troponin T', NULL, '-', '', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 22:44:20', '2024-08-15 22:44:20', NULL, 4, NULL),
(2106, 2104, 'Kits Used', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 22:44:20', '2024-08-15 22:44:20', NULL, 4, 'Roche\'s CARDIAC Trop T Sensitive test (visual).'),
(2107, 2104, 'Note', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 22:44:20', '2024-08-15 22:44:20', NULL, 4, 'Troponin T and Troponin I are proteins found only in heart muscle\r\ntissue. Although there are some medical conditions in which troponin is\r\nslightly raised without damage to heart muscle (especially in patients\r\non dialysis for chronic renal failure), troponins are normally not\r\ndetectable in the bloodstream.'),
(2108, 0, 'URINARY (SPOT) CREATININE', '-', '-', NULL, NULL, '', 0, 10, 0, 0, NULL, '2024-08-15 22:45:14', '2024-08-15 22:45:14', NULL, 4, NULL),
(2109, 2108, 'URINARY (SPOT) CREATININE', NULL, '-', 'mg/dl', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Less than 40 Yrs: 24 - 392</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Greater than 40 Yrs: 22 - 328</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 22:45:14', '2024-08-15 22:45:14', NULL, 4, NULL),
(2110, 0, 'URINE ACETONE - POST PRANDIAL', '-', '-', NULL, NULL, '', 0, 100, 0, 0, NULL, '2024-08-15 22:45:44', '2024-08-15 22:45:44', NULL, 4, NULL),
(2111, 2110, 'URINE ACETONE - POST PRANDIAL', NULL, '-', 'mg/dl', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Lessthan 1 mg/dl</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 22:45:44', '2024-08-15 22:45:44', NULL, 4, NULL),
(2112, 0, 'URINE ACETONE-FASTING', '-', '-', NULL, NULL, '', 0, 100, 0, 0, NULL, '2024-08-15 22:46:27', '2024-08-15 22:46:27', NULL, 4, NULL),
(2113, 2112, 'URINE ACETONE FASTING', NULL, '-', '', '', 'select', 0, 0, 0, 0, NULL, '2024-08-15 22:46:27', '2024-08-15 22:46:27', NULL, 4, NULL),
(2114, 0, 'URINE ALBUMIN', '-', '-', NULL, NULL, '', 0, 1, 0, 0, NULL, '2024-08-15 22:46:59', '2024-08-15 22:46:59', NULL, 4, NULL),
(2115, 2114, 'URINE ALBUMIN', NULL, '-', 'mg/dL', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Normal / Non diabetic : Lessthan 30</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Microalbuminuria 30-300</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Clinical albuminuria &gt; 300</span><br></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 22:46:59', '2024-08-15 22:46:59', NULL, 4, NULL),
(2116, 2114, 'note', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 22:46:59', '2024-08-15 22:46:59', NULL, 4, 'It is recommended that at least two of three specimens collected within a 3-6 month period be abnormal before considering a patient to be within a diagnostic category.\r\nClinical Use\r\nEarly detection of Diabetic nephropathy\r\nTherapeutic monitoring of patients with Nephropathy\r\nRoutine management of patients with Diabetes'),
(2117, 0, 'URINE ALBUMIN CREATININE RATIO', '-', '-', NULL, NULL, '', 0, 11, 0, 0, NULL, '2024-08-15 22:47:58', '2024-08-15 22:47:58', NULL, 4, NULL),
(2118, 2117, 'URINE ALBUMIN CREATININE RATIO', NULL, '-', 'mg/L', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">less than 30</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 22:47:58', '2024-08-15 22:47:58', NULL, 4, NULL),
(2119, 2117, 'Albumin', NULL, '-', 'md/L', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Normal / Non diabetic : Lessthan 30</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Microalbuminuria 30-300</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Clinical albuminuria &gt; 300</span><br></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 22:47:58', '2024-08-15 22:47:58', NULL, 4, NULL),
(2120, 2117, 'CREATININE', NULL, '-', 'md/L', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">0.6 - 1.2</span><br></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 22:47:58', '2024-08-15 22:47:58', NULL, 4, NULL),
(2121, 0, 'Urine collection bag', '-', '-', NULL, NULL, '', 0, 10, 0, 0, NULL, '2024-08-15 22:48:14', '2024-08-15 22:48:14', NULL, 4, NULL),
(2122, 2121, 'Urine collection bag', NULL, '-', '', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 22:48:14', '2024-08-15 22:48:14', NULL, 4, NULL),
(2123, 0, 'URINE FOR HAEMOGLOBINURIA', '-', '-', NULL, NULL, '', 0, 10, 0, 0, NULL, '2024-08-15 22:49:00', '2024-08-15 22:49:00', NULL, 4, NULL),
(2124, 2123, 'Urine Haemoglobinuria', NULL, '-', '', '', 'select', 0, 0, 0, 0, NULL, '2024-08-15 22:49:00', '2024-08-15 22:49:00', NULL, 4, NULL),
(2125, 0, 'URINE FOR pH', '-', '-', NULL, NULL, '', 0, 100, 0, 0, NULL, '2024-08-15 22:50:01', '2024-08-15 22:50:01', NULL, 4, NULL),
(2126, 2125, 'URINE  pH', NULL, '-', '', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">4.6 to 8.0</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 22:50:01', '2024-08-15 22:50:01', NULL, 4, NULL),
(2127, 0, 'URINE GLUCOSE - FASTING', '-', '-', NULL, NULL, '', 0, 10, 0, 0, NULL, '2024-08-15 22:50:20', '2024-08-15 22:50:20', NULL, 4, NULL),
(2128, 2127, 'URINE GLUCOSE - FASTING', NULL, '-', '', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 22:50:20', '2024-08-15 22:50:20', NULL, 4, NULL),
(2129, 0, 'URINE GLUCOSE - POST PRANDIAL (USPP)', '-', '-', NULL, NULL, '', 0, 100, 0, 0, NULL, '2024-08-15 22:50:38', '2024-08-15 22:50:38', NULL, 4, NULL),
(2130, 2129, 'URINE GLUCOSE - POST PRANDIAL (USPP)', NULL, '-', '%', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">0 - 1</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 22:50:38', '2024-08-15 22:50:38', NULL, 4, NULL),
(2131, 0, 'URINE GLUCOSE -PRE DINNER', '-', '-', NULL, NULL, '', 0, 100, 0, 0, NULL, '2024-08-15 22:51:12', '2024-08-15 22:51:12', NULL, 4, NULL),
(2132, 2131, 'URINE GLUCOSE -PRE DINNER', NULL, '-', '', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 22:51:12', '2024-08-15 22:51:12', NULL, 4, NULL),
(2133, 0, 'URINE MICROALBUMIN', '-', '-', NULL, NULL, '', 0, 10, 0, 0, NULL, '2024-08-15 22:52:19', '2024-08-15 22:52:19', NULL, 4, NULL),
(2134, 2133, 'Microalbumin', NULL, '-', 'mg/L', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Normal: &lt; 2</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Microalbuminuria: 2-20</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Clinical Albuminuria: &gt; 20</span><br></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 22:52:19', '2024-08-15 22:52:19', NULL, 4, NULL),
(2135, 2133, 'Urine Volume in 24 Hours', NULL, '-', 'ml', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 22:52:19', '2024-08-15 22:52:19', NULL, 4, NULL),
(2136, 2133, 'Microalbumin, 24-Hours Urine', NULL, '-', 'mg/24 hrs', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Normal: &lt;30</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Microalbuminuria: 30-299</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Clinical albuminuria: &gt;300</span><br></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 22:52:19', '2024-08-15 22:52:19', NULL, 4, NULL),
(2137, 0, 'Urine Osmolality', '-', '-', NULL, NULL, '', 0, 10, 0, 0, NULL, '2024-08-15 22:52:42', '2024-08-15 22:52:42', NULL, 4, NULL),
(2138, 2137, 'Urine Osmolality', NULL, '-', 'mOsmol/kg', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">500 - 800</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 22:52:42', '2024-08-15 22:52:42', NULL, 4, NULL),
(2139, 0, 'URINE PROTEIN & CREATININE RATIO', '-', '-', NULL, NULL, '', 0, 10, 0, 0, NULL, '2024-08-15 22:54:01', '2024-08-15 22:54:01', NULL, 4, NULL),
(2140, 2139, 'PROTEIN - CREATININE RATIO', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 22:54:01', '2024-08-15 22:54:01', NULL, 4, ''),
(2141, 2139, 'Protein Total', NULL, '-', 'mg/dL', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Lessthan14.0</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 22:54:01', '2024-08-15 22:54:01', NULL, 4, NULL),
(2142, 2139, 'Creatinine', NULL, '-', 'mg/dL', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 22:54:01', '2024-08-15 22:54:01', NULL, 4, NULL),
(2143, 2139, 'Protein Creatinine Ratio', NULL, '-', '', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Lessthan 0.2</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-15 22:54:01', '2024-08-15 22:54:01', NULL, 4, NULL),
(2144, 2139, 'Interpretation', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 22:54:01', '2024-08-15 22:54:01', NULL, 4, '<table border=\"0.5\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:400px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>PROTEIN CREATININE RATIO</td>\r\n			<td>REMARKS</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&lt; 0.20</td>\r\n			<td>Normal</td>\r\n		</tr>\r\n		<tr>\r\n			<td>| 0.20-1.00</td>\r\n			<td>Low grade proteinuria</td>\r\n		</tr>\r\n		<tr>\r\n			<td>1.00-5.00</td>\r\n			<td>Moderate proteinuria</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&gt;5.00</td>\r\n			<td>Nephrosis</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<br />\r\n&nbsp;'),
(2145, 0, 'URINE ROUTINE EXAMINATION REPORT (CUE)', '-', '-', NULL, NULL, '', 0, 42, 0, 0, NULL, '2024-08-15 23:16:59', '2024-08-15 23:16:59', NULL, 4, NULL),
(2146, 2145, 'PHYSICAL EXAMINATION', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 23:16:59', '2024-10-10 13:11:04', NULL, 4, ''),
(2147, 2145, 'Colour', NULL, '-', '', '', 'select', 0, 0, 0, 0, NULL, '2024-08-15 23:16:59', '2024-10-10 13:11:04', NULL, 4, NULL),
(2148, 2145, 'Volume', NULL, '-', 'ml', '', 'select', 0, 0, 0, 0, NULL, '2024-08-15 23:16:59', '2024-10-10 13:11:04', NULL, 4, NULL),
(2149, 2145, 'Appearance', NULL, '-', '', '', 'select', 0, 0, 0, 0, NULL, '2024-08-15 23:16:59', '2024-10-10 13:11:04', NULL, 4, NULL),
(2150, 2145, 'Specific Gravity', NULL, '-', '', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">1.010 - 1.030</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'select', 0, 0, 0, 0, NULL, '2024-08-15 23:16:59', '2024-10-10 13:11:04', NULL, 4, NULL),
(2151, 2145, 'Reaction (PH)', NULL, '-', '4.8 - 7.6', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">4.8 - 7.6</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'select', 0, 0, 0, 0, NULL, '2024-08-15 23:16:59', '2024-10-10 13:11:04', NULL, 4, NULL),
(2152, 2145, 'CHEMICAL EXAMINATION', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 23:16:59', '2024-10-10 13:11:04', NULL, 4, ''),
(2153, 2145, 'ALBUMIN', NULL, '-', '', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Absent</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'select', 0, 0, 1, 0, NULL, '2024-08-15 23:16:59', '2024-10-10 13:11:04', NULL, 4, NULL),
(2154, 2145, 'Glucose', NULL, '-', '', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Absent</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'select', 0, 0, 0, 0, NULL, '2024-08-15 23:16:59', '2024-10-10 13:11:04', NULL, 4, NULL),
(2155, 2145, 'Ketones', NULL, '-', '', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Absent</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'select', 0, 0, 0, 0, NULL, '2024-08-15 23:16:59', '2024-10-10 13:11:04', NULL, 4, NULL),
(2156, 2145, 'Bile Salts & Bile Pigments', NULL, '-', '', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Absent</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'select', 0, 0, 0, 0, NULL, '2024-08-15 23:16:59', '2024-10-10 13:11:04', NULL, 4, NULL),
(2157, 2145, 'Nitrite', NULL, '-', '', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Negative</span><br></p>', 'select', 0, 0, 0, 0, NULL, '2024-08-15 23:16:59', '2024-10-10 13:11:04', NULL, 4, NULL),
(2158, 2145, 'Urobilinogen', NULL, '-', '', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Normal</span><br></p>', 'select', 0, 0, 0, 0, NULL, '2024-08-15 23:16:59', '2024-10-10 13:11:04', NULL, 4, NULL),
(2159, 2145, 'Blood', NULL, '-', '', '', 'select', 0, 0, 0, 0, NULL, '2024-08-15 23:16:59', '2024-10-10 13:11:04', NULL, 4, NULL),
(2160, 2145, 'MICROSCOPIC EXAMINATION', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 23:16:59', '2024-10-10 13:11:04', NULL, 4, ''),
(2161, 2145, 'RBC', NULL, '-', '', '<p><div class=\"col-lg-4\" bis_skin_checked=\"1\" style=\"box-sizing: border-box; font-size: 13px; font-family: system-ui; position: relative; width: 277.734px; padding-right: 5px; padding-left: 5px; -webkit-box-flex: 0; flex: 0 0 33.3333%; max-width: 33.3333%; color: rgb(33, 37, 41); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"></div></p><div class=\"col-lg-1\" bis_skin_checked=\"1\" style=\"box-sizing: border-box; font-size: 13px; font-family: system-ui; position: relative; width: 69.4336px; padding-right: 5px; padding-left: 5px; -webkit-box-flex: 0; flex: 0 0 8.33333%; max-width: 8.33333%; color: rgb(33, 37, 41); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">/hpf</div>', 'select', 0, 0, 0, 0, NULL, '2024-08-15 23:16:59', '2024-10-10 13:11:04', NULL, 4, NULL),
(2162, 2145, 'Pus Cells', NULL, '-', '', '<p><div class=\"col-lg-4\" bis_skin_checked=\"1\" style=\"box-sizing: border-box; font-size: 13px; font-family: system-ui; position: relative; width: 277.734px; padding-right: 5px; padding-left: 5px; -webkit-box-flex: 0; flex: 0 0 33.3333%; max-width: 33.3333%; color: rgb(33, 37, 41); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"></div></p><div class=\"col-lg-1\" bis_skin_checked=\"1\" style=\"box-sizing: border-box; font-size: 13px; font-family: system-ui; position: relative; width: 69.4336px; padding-right: 5px; padding-left: 5px; -webkit-box-flex: 0; flex: 0 0 8.33333%; max-width: 8.33333%; color: rgb(33, 37, 41); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">/hpf</div>', 'select', 0, 0, 0, 0, NULL, '2024-08-15 23:16:59', '2024-10-10 13:11:04', NULL, 4, NULL),
(2163, 2145, 'Epithelial Cells', NULL, '-', '', '<p><div class=\"col-lg-4\" bis_skin_checked=\"1\" style=\"box-sizing: border-box; font-size: 13px; font-family: system-ui; position: relative; width: 277.734px; padding-right: 5px; padding-left: 5px; -webkit-box-flex: 0; flex: 0 0 33.3333%; max-width: 33.3333%; color: rgb(33, 37, 41); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"></div></p><div class=\"col-lg-1\" bis_skin_checked=\"1\" style=\"box-sizing: border-box; font-size: 13px; font-family: system-ui; position: relative; width: 69.4336px; padding-right: 5px; padding-left: 5px; -webkit-box-flex: 0; flex: 0 0 8.33333%; max-width: 8.33333%; color: rgb(33, 37, 41); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">/hpf</div>', 'select', 0, 0, 0, 0, NULL, '2024-08-15 23:16:59', '2024-10-10 13:11:04', NULL, 4, NULL),
(2164, 2145, 'Casts', NULL, '-', '', 'Granular/LPF', 'text', 0, 0, 0, 0, NULL, '2024-08-15 23:16:59', '2024-10-10 13:11:04', NULL, 4, NULL),
(2165, 2145, 'Amorphous Deposit (Optional)', NULL, '-', '', '', 'select', 0, 0, 0, 0, NULL, '2024-08-15 23:16:59', '2024-10-10 13:11:04', NULL, 4, NULL),
(2166, 2145, 'Spermatozoa (Optional)', NULL, '-', '', '', 'select', 0, 0, 0, 0, NULL, '2024-08-15 23:16:59', '2024-10-10 13:11:04', NULL, 4, NULL),
(2167, 0, 'GRAM STAIN REPORT', '-', '-', NULL, NULL, '', 0, 10, 0, 0, NULL, '2024-08-15 23:59:09', '2024-08-15 23:59:09', NULL, 5, NULL),
(2168, 2167, 'SPECIMEN', NULL, '-', '', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 23:59:09', '2024-08-15 23:59:09', NULL, 5, NULL),
(2169, 2167, 'Gram Stain', NULL, '-', '', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 23:59:09', '2024-08-15 23:59:09', NULL, 5, NULL),
(2170, 2167, 'MICROSCOPY', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 23:59:09', '2024-08-15 23:59:09', NULL, 5, ''),
(2171, 2167, 'Pus cells', NULL, '-', '', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 23:59:09', '2024-08-15 23:59:09', NULL, 5, NULL),
(2172, 2167, 'Epithelial cells', NULL, '-', '', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 23:59:09', '2024-08-15 23:59:09', NULL, 5, NULL),
(2173, 2167, 'Yeast', NULL, '-', '', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 23:59:09', '2024-08-15 23:59:09', NULL, 5, NULL),
(2174, 2167, 'RBC', NULL, '-', '', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 23:59:09', '2024-08-15 23:59:09', NULL, 5, NULL),
(2175, 2167, 'Parasite', NULL, '-', '', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 23:59:09', '2024-08-15 23:59:09', NULL, 5, NULL);
INSERT INTO `tests` (`id`, `parent_id`, `name`, `shortcut`, `sample_type`, `unit`, `reference_range`, `type`, `separated`, `price`, `status`, `title`, `precautions`, `created_at`, `updated_at`, `deleted_at`, `category_id`, `result_temp`) VALUES
(2176, 2167, 'Others', NULL, '-', '', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 23:59:09', '2024-08-15 23:59:09', NULL, 5, NULL),
(2177, 2167, 'GRAM STAIN', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-15 23:59:09', '2024-08-15 23:59:09', NULL, 5, ''),
(2178, 2167, 'Gram Positive Bacteria (GPB)', NULL, '-', '', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 23:59:09', '2024-08-15 23:59:09', NULL, 5, NULL),
(2179, 2167, 'Gram Negative Bacteria (GNB)', NULL, '-', '', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 23:59:09', '2024-08-15 23:59:09', NULL, 5, NULL),
(2180, 2167, 'Gram Positive Cocci (GPC)', NULL, '-', '', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 23:59:09', '2024-08-15 23:59:09', NULL, 5, NULL),
(2181, 2167, 'Gram Negative Cocci (GNC)', NULL, '-', '', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 23:59:09', '2024-08-15 23:59:09', NULL, 5, NULL),
(2182, 0, 'FUNGAL SMEAR', '-', '-', NULL, NULL, '', 0, 100, 0, 0, NULL, '2024-08-15 23:59:40', '2024-08-15 23:59:40', NULL, 5, NULL),
(2183, 2182, 'Results', NULL, '-', '', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 23:59:40', '2024-08-15 23:59:40', NULL, 5, NULL),
(2184, 2182, 'Method', NULL, '-', '', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 23:59:40', '2024-08-15 23:59:40', NULL, 5, NULL),
(2185, 2182, 'Nature of Specimen', NULL, '-', '', '', 'text', 0, 0, 0, 0, NULL, '2024-08-15 23:59:40', '2024-08-15 23:59:40', NULL, 5, NULL),
(2186, 0, 'CULTURE & SENSITIVITY - Bactec REPORT', '-', '-', NULL, NULL, '', 0, 10, 0, 0, NULL, '2024-08-16 00:03:26', '2024-08-16 00:03:26', NULL, 5, NULL),
(2187, 2186, 'Specimen', NULL, '-', '', '', 'select', 0, 0, 0, 0, NULL, '2024-08-16 00:03:26', '2024-08-16 00:03:26', NULL, 5, NULL),
(2188, 2186, 'Organism Isolated', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-16 00:03:26', '2024-08-16 00:03:26', NULL, 5, 'No growth after 48 hrs on aerobic culture'),
(2189, 0, 'BMI', 'BMI', '-', NULL, NULL, '', 0, 100, 0, 0, NULL, '2024-08-16 00:04:08', '2024-08-16 00:04:08', NULL, 5, NULL),
(2190, 2189, 'Height', NULL, '-', 'cm', '', 'text', 0, 0, 0, 0, NULL, '2024-08-16 00:04:08', '2024-08-16 00:04:08', NULL, 5, NULL),
(2191, 2189, 'Wight', NULL, '-', 'Kg', '', 'text', 0, 0, 0, 0, NULL, '2024-08-16 00:04:08', '2024-08-16 00:04:08', NULL, 5, NULL),
(2192, 2189, 'BMI', NULL, '-', '', '', 'text', 0, 0, 0, 0, NULL, '2024-08-16 00:04:08', '2024-08-16 00:04:08', NULL, 5, NULL),
(2193, 0, 'ACID -FAST BACILLI - AFB', '-', '-', NULL, NULL, '', 0, 10, 0, 0, NULL, '2024-08-16 00:13:04', '2024-08-16 00:13:04', NULL, 5, NULL),
(2194, 2193, 'Findings', NULL, '-', '', '', 'text', 0, 0, 0, 0, NULL, '2024-08-16 00:13:04', '2024-08-16 00:13:04', NULL, 5, NULL),
(2195, 2193, 'Nature Of Specimen', NULL, '-', '', '', 'text', 0, 0, 0, 0, NULL, '2024-08-16 00:13:04', '2024-08-16 00:13:04', NULL, 5, NULL),
(2196, 0, 'Albumin', '-', 'SERUM', NULL, NULL, '', 0, 100, 0, 0, NULL, '2024-08-16 00:22:27', '2024-10-06 13:36:23', NULL, 6, NULL),
(2197, 2196, 'Albumin', NULL, 'SERUM', 'g/dl', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">3.5 - 5.0</span></p><div><font color=\"#212529\" face=\"system-ui\"><span style=\"font-size: 13px;\"><br></span></font><br></div>', 'text', 0, 0, 1, 0, NULL, '2024-08-16 00:22:27', '2024-10-06 13:39:00', NULL, 6, NULL),
(2198, 0, 'Alcohol', '-', '-', NULL, NULL, '', 0, 1, 0, 0, NULL, '2024-08-16 00:22:53', '2024-08-16 00:22:53', NULL, 6, NULL),
(2199, 2198, 'Alcohol', NULL, '-', '(mg/dL)', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Negative: &lt;10</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-16 00:22:53', '2024-08-16 00:22:53', NULL, 6, NULL),
(2200, 0, 'ALKALINE PHOSPHATASE ( ALP )', '-', '-', NULL, NULL, '', 0, 1, 0, 0, NULL, '2024-08-16 00:23:18', '2024-08-16 00:23:18', NULL, 6, NULL),
(2201, 2200, 'Alkaline Phosphatase (ALP)', NULL, '-', 'U/L', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">98 - 279</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-16 00:23:18', '2024-08-16 00:23:18', NULL, 6, NULL),
(2202, 0, 'Allergy food (Non-Vegetarian)', '--', '--', NULL, NULL, '', 0, 1, 0, 0, NULL, '2024-08-16 00:23:59', '2024-08-16 00:23:59', NULL, 6, NULL),
(2203, 2202, 'Total IgE', NULL, '--', 'kIU/L', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">0 - 1 yrs : 0 - 29 kIU/L</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">1 - 2 yrs : 0 - 49 kIU/L</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">2-3 yrs : 0 - 45 kIU/L</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">3-9 yrs : 0-52 kIU/L</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Adult :0-87.0 kIU/L</span><br></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-16 00:23:59', '2024-08-16 00:24:31', NULL, 6, NULL),
(2204, 2202, 'Interpretation', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-16 00:24:31', '2024-08-16 00:24:31', NULL, 6, 'False positive occur in the following scenarios:\r\n1.You have a small amount of IgE antibody to allergen but are not be truly allergic to that.You can contact the allergen and experience absolutely no reaction to it.\r\n2.Some proteins in foods are cross-reactive with similar proteins in other foods or even environmental allergens like pollens.This cross reactivity can lead, for example, to a falsely positive test for soy in a person witrh peanut allergy, or a positive test to wheat in a person with grass pollen allergy.'),
(2205, 0, 'AMMONIA', '-', '-', NULL, NULL, '', 0, 10, 0, 0, NULL, '2024-08-16 00:25:11', '2024-08-16 00:25:11', NULL, 6, NULL),
(2206, 2205, 'AMMONIA', NULL, '-', 'g/dl', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">30-86</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-16 00:25:11', '2024-08-16 00:25:11', NULL, 6, NULL),
(2207, 2205, 'Interpretation :', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-16 00:25:11', '2024-08-16 00:25:11', NULL, 6, 'Ammonia is metabolized exclusively in the liver through the urea cycle enzymes which convert ammonia into urea. oxic build up of ammonia due to disruption of this metabolism produces neurotoxic effects. Elevated serum levels of ammonia indicate some form of liver failure.\r\nIncreased levels\r\n* Congenital deficiency of Urea cycle enzymes\r\n* Cirrhosis * Acute fulminant hepatitis\r\n* Reye’s syndrome\r\n* Hepatic encephalopathy'),
(2208, 0, 'AMYLASE', '--', 'SERUM', NULL, NULL, '', 0, 300, 0, 0, NULL, '2024-08-16 00:25:51', '2024-10-06 13:33:49', NULL, 6, NULL),
(2209, 2208, 'AMYLASE', NULL, 'SERUM', 'U/L', '<p><font color=\"#212529\" face=\"system-ui\"><span style=\"font-size: 13px;\">UPTO - 80 </span></font></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 1, 0, NULL, '2024-08-16 00:25:51', '2024-10-06 13:34:11', NULL, 6, NULL),
(2210, 2208, 'Interpretation', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-16 00:25:51', '2024-10-06 13:34:11', NULL, 6, 'Elevated values are observed in Pancreatitis, CA Pancrease, Diabetic ketoacidosis, Cholecystitis, Peptic ulcer, Viral hepatitis. Persistant elevated values may suggest necrosis or pseudocyst formation.'),
(2211, 0, 'Anti Sperm Antibody', '-', '-', NULL, NULL, '', 0, 10, 0, 0, NULL, '2024-08-16 00:26:15', '2024-08-16 00:26:15', NULL, 6, NULL),
(2212, 2211, 'Anti Sperm Antibody', NULL, '-', 'U/mL', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">&lt; 60 U/mL</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-16 00:26:15', '2024-08-16 00:26:15', NULL, 6, NULL),
(2213, 0, 'BILIRUBIN', 'BIL', 'SERUM', NULL, NULL, '', 0, 200, 0, 0, NULL, '2024-08-16 00:26:54', '2025-02-05 18:21:58', NULL, 6, NULL),
(2214, 2213, 'Bilirubin - Total', NULL, 'SERUM', 'mg/dL', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">0.0 - 1.0 mg/dl</span><br></p><div bis_skin_checked=\"1\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 1, 0, NULL, '2024-08-16 00:26:54', '2025-05-17 19:33:00', NULL, 6, NULL),
(2215, 2213, 'Bilirubin - Direct', NULL, 'SERUM', 'mg/dL', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">0.0-0.2 mg/dl</span><br></p><div bis_skin_checked=\"1\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 1, 0, NULL, '2024-08-16 00:26:54', '2025-05-17 19:33:00', NULL, 6, NULL),
(2216, 2213, 'Bilirubin - Indirect', NULL, 'SERUM', 'mg/dL', '<p><br></p>', 'text', 0, 0, 1, 0, NULL, '2024-08-16 00:26:54', '2025-05-17 19:33:00', NULL, 6, NULL),
(2217, 0, 'Blood Glucose - (After 75 gms of Glucose)', '-', '-', NULL, NULL, '', 0, 1, 0, 0, NULL, '2024-08-16 00:27:47', '2024-08-16 00:27:47', NULL, 6, NULL),
(2218, 2217, 'Blood Glucose - (After 75 gms of Glucose)', NULL, '-', 'mg/dl', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">70 - 140</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-16 00:27:47', '2024-08-16 00:27:47', NULL, 6, NULL),
(2219, 0, 'Blood Glucose - PG ( 1 hrs After 75 gms of Glucose)', '-', '-', NULL, NULL, '', 0, 10, 0, 0, NULL, '2024-08-16 00:28:07', '2024-08-16 00:28:07', NULL, 6, NULL),
(2220, 2219, 'Blood Glucose - PG ( 1 hrs After 75 gms of Glucose)', NULL, '-', 'mg/dl', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">70-180</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-16 00:28:07', '2024-08-16 00:28:07', NULL, 6, NULL),
(2221, 0, 'Blood Glucose - PG ( 3 hr After 75 gms of Glucose)', '-', '-', NULL, NULL, '', 0, 10, 0, 0, NULL, '2024-08-16 00:28:27', '2024-08-16 00:28:27', NULL, 6, NULL),
(2222, 2221, 'Blood Glucose - PG ( 3 hr After 75 gms of Glucose)', NULL, '-', 'mg/dl', '', 'text', 0, 0, 0, 0, NULL, '2024-08-16 00:28:27', '2024-08-16 00:28:27', NULL, 6, NULL),
(2223, 0, 'Blood Glucose - PG (2 hrs After 100 gms of Glucose', '-', '-', NULL, NULL, '', 0, 10, 0, 0, NULL, '2024-08-16 00:28:46', '2024-08-16 00:28:46', NULL, 6, NULL),
(2224, 2223, 'Blood Glucose - PG (2 hrs After 100 gms of Glucose', NULL, '-', 'mg/dl', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">70 - 155</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-16 00:28:46', '2024-08-16 00:28:46', NULL, 6, NULL),
(2225, 0, 'BLOOD GLUCOSE - PRE DINNER', '-', '-', NULL, NULL, '', 0, 10, 0, 0, NULL, '2024-08-16 00:29:23', '2024-08-16 00:29:23', NULL, 6, NULL),
(2226, 2225, 'BLOOD GLUCOSE - PRE DINNER', NULL, '-', 'mg/dl', '', 'text', 0, 0, 0, 0, NULL, '2024-08-16 00:29:23', '2024-08-16 00:29:23', NULL, 6, NULL),
(2227, 0, 'BLOOD GLUCOSE LEVEL ( PG AFTER 1 HR)', '-', '-', NULL, NULL, '', 0, 10, 0, 0, NULL, '2024-08-16 00:30:31', '2024-08-16 00:30:31', NULL, 6, NULL),
(2228, 2227, 'Blood Glucose Level ( PG After 1 hr)', NULL, '-', 'mg/dl', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">70 - 180</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-16 00:30:31', '2024-08-16 00:30:31', NULL, 6, NULL),
(2229, 2227, 'Urine Sugar (Optional)', NULL, '-', '', '', 'text', 0, 0, 0, 0, NULL, '2024-08-16 00:30:31', '2024-08-16 00:30:31', NULL, 6, NULL),
(2230, 2227, 'Urine Ketones (Optional)', NULL, '-', '', '', 'text', 0, 0, 0, 0, NULL, '2024-08-16 00:30:31', '2024-08-16 00:30:31', NULL, 6, NULL),
(2231, 0, 'BLOOD GLUCOSE LEVEL ( PG AFTER 2 HR)', '-', '-', NULL, NULL, '', 0, 10, 0, 0, NULL, '2024-08-16 00:31:17', '2024-08-16 00:31:17', NULL, 6, NULL),
(2232, 2231, 'Blood Glucose Level (PG After 2hr)', NULL, '-', 'mg/dL', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">70 - 140</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-16 00:31:17', '2024-08-16 00:31:17', NULL, 6, NULL),
(2233, 2231, 'Urine Sugar (Optional)', NULL, '-', '', '', 'text', 0, 0, 0, 0, NULL, '2024-08-16 00:31:17', '2024-08-16 00:31:17', NULL, 6, NULL),
(2234, 2231, 'Urine Ketones (Optional)', NULL, '-', '', '', 'text', 0, 0, 0, 0, NULL, '2024-08-16 00:31:17', '2024-08-16 00:31:17', NULL, 6, NULL),
(2235, 0, 'BLOOD GLUCOSE LEVEL ( PG AFTER 3 HR)', '-', '-', NULL, NULL, '', 0, 21, 0, 0, NULL, '2024-08-16 00:32:05', '2024-08-16 00:32:05', NULL, 6, NULL),
(2236, 2235, 'Blood Glucose Level ( PG After 3 hr)', NULL, '-', 'mg/dl', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">70 - 140</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-16 00:32:05', '2024-08-16 00:32:05', NULL, 6, NULL),
(2237, 2235, 'Urine Sugar (Optional)', NULL, '-', '', '', 'text', 0, 0, 0, 0, NULL, '2024-08-16 00:32:05', '2024-08-16 00:32:05', NULL, 6, NULL),
(2238, 2235, 'Urine Ketones (Optional)', NULL, '-', '', '', 'text', 0, 0, 0, 0, NULL, '2024-08-16 00:32:05', '2024-08-16 00:32:05', NULL, 6, NULL),
(2239, 0, 'FASTING BLOOD SUGAR  (FBS)', '-', '-', NULL, NULL, '', 0, 50, 0, 0, NULL, '2024-08-16 00:33:21', '2025-05-17 14:37:20', NULL, 6, NULL),
(2240, 2239, 'FASTING BLOOD SUGAR', NULL, '-', 'mg/dl', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">70 - 110 mg/dl</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-16 00:33:21', '2025-05-17 14:47:09', NULL, 6, NULL),
(2241, 2239, 'URINE SUGAR (Optional)', NULL, '-', '', '', 'text', 0, 0, 0, 0, NULL, '2024-08-16 00:33:21', '2025-05-17 14:47:09', NULL, 6, NULL),
(2242, 2239, 'URINE KETONES (Optional)', NULL, '-', '', '', 'text', 0, 0, 0, 0, NULL, '2024-08-16 00:33:21', '2025-05-17 14:47:09', NULL, 6, NULL),
(2243, 0, 'BLOOD SUGAR LEVEL (F/PP)', '-', '-', NULL, NULL, '', 0, 10, 0, 0, NULL, '2024-08-16 00:34:55', '2024-08-16 00:34:55', NULL, 6, NULL),
(2244, 2243, 'Glucose Fasting', NULL, '-', 'mg/dl', '<p>60 - 110</p>', 'text', 0, 0, 1, 0, NULL, '2024-08-16 00:34:55', '2024-10-12 13:23:36', NULL, 6, NULL),
(2245, 2243, 'Urine Sugar Fasting', NULL, '-', '', '', 'text', 0, 0, 0, 0, NULL, '2024-08-16 00:34:55', '2024-10-12 13:23:36', NULL, 6, NULL),
(2246, 2243, 'Urine Ketone Fasting', NULL, '-', '', '', 'text', 0, 0, 0, 0, NULL, '2024-08-16 00:34:55', '2024-10-12 13:23:36', NULL, 6, NULL),
(2247, 2243, 'Glucose Post Prandial', NULL, '-', 'mg/dl', '70 - 180', 'text', 0, 0, 1, 0, NULL, '2024-08-16 00:34:55', '2024-10-12 13:23:36', NULL, 6, NULL),
(2248, 2243, 'Urine Sugar Post Prandial', NULL, '-', '', '', 'text', 0, 0, 0, 0, NULL, '2024-08-16 00:34:55', '2024-10-12 13:23:36', NULL, 6, NULL),
(2249, 2243, 'Urine Ketone Post Prandial', NULL, '-', '', '', 'text', 0, 0, 0, 0, NULL, '2024-08-16 00:34:55', '2024-10-12 13:23:36', NULL, 6, NULL),
(2250, 0, 'POST LUNCH BLOOD SUGAR (PLBS)', '--', '-', NULL, NULL, '', 0, 50, 0, 0, NULL, '2024-08-16 00:35:30', '2025-05-17 14:42:19', NULL, 6, NULL),
(2251, 2250, 'POST LUNCH BLOOD SUGAR', NULL, '-', 'mg/dl', '<p>110 - 170 mg/dl</p>', 'text', 0, 0, 0, 0, NULL, '2024-08-16 00:35:30', '2025-05-17 14:42:19', NULL, 6, NULL),
(2252, 0, 'Blood Urea', 'UREA', 'SERUM', NULL, NULL, '', 0, 200, 0, 0, NULL, '2024-08-16 00:35:56', '2025-05-17 19:02:41', NULL, 6, NULL),
(2253, 2252, 'Blood Urea', NULL, 'SERUM', 'mg/dl', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">12 - 45 mg/dl</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 1, 0, NULL, '2024-08-16 00:35:56', '2025-05-17 19:04:06', NULL, 6, NULL),
(2254, 0, 'BLOOD UREA NITROGEN ( BUN )', '-', '-', NULL, NULL, '', 0, 10, 0, 0, NULL, '2024-08-16 00:36:17', '2024-08-16 00:36:17', NULL, 6, NULL),
(2255, 2254, 'BLOOD UREA NITROGEN ( BUN )', NULL, '-', 'mg/dl', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">6 - 21</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-16 00:36:17', '2024-08-16 00:36:17', NULL, 6, NULL),
(2256, 0, 'C-PEPTIDE (F)', '-', '-', NULL, NULL, '', 0, 10, 0, 0, NULL, '2024-08-16 00:36:41', '2024-08-16 00:36:41', NULL, 6, NULL),
(2257, 2256, 'C-PEPTIDE (F)', NULL, '-', 'ng/mL', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">0.8 - 3.5</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-16 00:36:41', '2024-08-16 00:36:41', NULL, 6, NULL),
(2258, 0, 'Ca 19.9', '-', '-', NULL, NULL, '', 0, 10, 0, 0, NULL, '2024-08-16 00:37:04', '2024-08-16 00:37:04', NULL, 6, NULL),
(2259, 2258, 'Ca 19.9', NULL, '-', 'U/mL', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">&lt; 37</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-16 00:37:04', '2024-08-16 00:37:04', NULL, 6, NULL),
(2260, 0, 'CA125', '-', '-', NULL, NULL, '', 0, 10, 0, 0, NULL, '2024-08-16 00:37:28', '2024-08-16 00:37:28', NULL, 6, NULL),
(2261, 2260, 'CA 125', NULL, '-', 'U/mL', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">0 - 35</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-16 00:37:28', '2024-08-16 00:37:28', NULL, 6, NULL),
(2262, 0, 'CalciUM', '-', 'SERUM', NULL, NULL, '', 0, 200, 0, 0, NULL, '2024-08-16 00:37:52', '2025-02-06 12:54:32', NULL, 6, NULL),
(2263, 2262, 'CalciUM', NULL, 'SERUM', 'MG/DL', '<p><font color=\"#212529\" face=\"system-ui\"><span style=\"font-size: 13px;\">8.5 - 10.2</span></font></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-16 00:37:52', '2025-02-06 12:54:32', NULL, 6, NULL),
(2264, 0, 'CALCIUM', '-', 'SERUM', NULL, NULL, '', 0, 200, 0, 0, NULL, '2024-08-16 00:38:16', '2025-02-06 12:55:06', NULL, 6, NULL),
(2265, 2264, 'SERUM CALCIUM', NULL, 'SERUM', 'mg/dl', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">8.5 - 10.5</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 1, 0, NULL, '2024-08-16 00:38:16', '2025-05-22 14:43:14', NULL, 6, NULL),
(2266, 0, 'Chloride(Cl)', '-', '-', NULL, NULL, '', 0, 100, 0, 0, NULL, '2024-08-16 00:38:38', '2025-02-06 13:13:10', NULL, 6, NULL),
(2267, 2266, 'Chloride(Cl)', NULL, '-', 'mEq/L', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">99 - 104</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-16 00:38:38', '2025-02-06 13:13:17', NULL, 6, NULL),
(2268, 0, 'CHYLURIA', '-', '-', NULL, NULL, '', 0, 10, 0, 0, NULL, '2024-08-16 00:38:55', '2024-08-16 00:38:55', NULL, 6, NULL),
(2269, 2268, 'CHYLUREA', NULL, '-', '', '', 'text', 0, 0, 0, 0, NULL, '2024-08-16 00:38:55', '2024-08-16 00:38:55', NULL, 6, NULL),
(2270, 0, 'CK MB', '-', '-', NULL, NULL, '', 0, 1, 0, 0, NULL, '2024-08-16 00:39:16', '2024-08-16 00:39:16', NULL, 6, NULL),
(2271, 2270, 'CK MB', NULL, '-', 'U/L', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">&lt; 25 U/L</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-16 00:39:16', '2024-08-16 00:39:16', NULL, 6, NULL),
(2272, 0, 'CORTISOL Evening (after 4 pm)', '-', '-', NULL, NULL, '', 0, 10, 0, 0, NULL, '2024-08-16 00:40:15', '2024-08-16 00:40:15', NULL, 6, NULL),
(2273, 2272, 'CORTISOL Evening (after 4 pm)', NULL, '-', 'mcg/dl', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Term infant: 1 to 7 days:2.0 - 11.0 Cord Blood: 5.0 - 17.0 </span></p><p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Children 1 to 16 yrs - 8am: 3-21 </span></p><p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Adults: 8am: 5 -23 4pm:3-16 8pm: Less than 50% of am values</span><br></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-16 00:40:15', '2024-08-16 00:40:15', NULL, 6, NULL),
(2274, 0, 'SERUM CREATININE', 'CREATININE', 'SERUM', NULL, NULL, '', 0, 200, 0, 0, NULL, '2024-08-16 00:40:43', '2025-05-17 19:05:46', NULL, 6, NULL),
(2275, 2274, 'CREATININE', NULL, 'SERUM', 'mg/dl', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">0.5 - 1.5 mg/dl</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 1, 0, NULL, '2024-08-16 00:40:43', '2025-05-17 19:05:46', NULL, 6, NULL),
(2276, 0, 'CREATININE PHOSPHOKINASE ( NAC / Total )', '-', '-', NULL, NULL, '', 0, 10, 0, 0, NULL, '2024-08-16 00:41:08', '2024-08-16 00:41:08', NULL, 6, NULL),
(2277, 2276, 'CREATININE PHOSPHOKINASE ( NAC / Total )', NULL, '-', 'IU/L', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">24 - 195</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-16 00:41:08', '2024-08-16 00:41:08', NULL, 6, NULL),
(2278, 0, 'Creatinine Phosphokinase - CPK NAC', '-', '-', NULL, NULL, '', 0, 10, 0, 0, NULL, '2024-08-16 00:41:28', '2024-08-16 00:41:28', NULL, 6, NULL),
(2279, 2278, 'Creatinine Phosphokinase - CPK NAC', NULL, '-', 'U/L', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">46 - 171</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-16 00:41:28', '2024-08-16 00:41:28', NULL, 6, NULL),
(2280, 0, 'CYCLOSPORINE', '-', '-', NULL, NULL, '', 0, 10, 0, 0, NULL, '2024-08-16 00:42:12', '2024-08-16 00:42:12', NULL, 6, NULL),
(2281, 2280, 'CYCLOSPORINE', NULL, '-', 'ug/L', '<p>50 - 400<br></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-16 00:42:12', '2024-08-16 00:42:12', NULL, 6, NULL),
(2282, 0, 'EGFR (GLOMERULAR FILTRATION RATE, ESTIMATED)', '-', '-', NULL, NULL, '', 0, 10, 0, 0, NULL, '2024-08-16 00:42:54', '2024-08-16 00:42:54', NULL, 6, NULL),
(2283, 2282, 'Creatinine, Serum', NULL, '-', 'mg/dL', '<span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">0.67 - 1.17</span><br><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-16 00:42:54', '2024-08-16 00:42:54', NULL, 6, NULL),
(2284, 2282, 'GFR, Estimated', NULL, '-', 'mL/min/1.73m2', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">&gt;90</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Normal in eGFR : 90-120</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Mild decrease in eGFR : 60-89</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Moderate decrease in eGFR : 30-59</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Severe decrease in eGFR : 15-29</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Kidney failure : &lt;15.0</span><br></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-16 00:42:54', '2024-08-16 00:42:54', NULL, 6, NULL),
(2285, 0, 'ELECTROLYTES', '-', '-', NULL, NULL, '', 0, 10, 0, 0, NULL, '2024-08-16 00:43:47', '2024-08-16 00:43:47', NULL, 6, NULL),
(2286, 2285, 'Sodium', NULL, '-', 'mmol/ L', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">136 - 146</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-16 00:43:47', '2024-10-04 16:20:55', NULL, 6, NULL),
(2287, 2285, 'Potassium', NULL, '-', 'mmol/ L', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">3.5 - 5.1</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-16 00:43:47', '2024-10-04 16:20:55', NULL, 6, NULL),
(2288, 2285, 'Chloride', NULL, '-', 'mmol/ L', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">98 - 107</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-16 00:43:47', '2024-10-04 16:20:55', NULL, 6, NULL),
(2289, 2285, 'Bicarbonate', NULL, '-', 'mmol/ L', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">22 - 30</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-16 00:43:47', '2024-10-04 16:20:54', '2024-10-04 16:20:54', 6, NULL),
(2290, 0, 'ESTRADIOL ( E2 )', '-', '-', NULL, NULL, '', 0, 10, 0, 0, NULL, '2024-08-16 00:44:14', '2024-08-16 00:44:14', NULL, 6, NULL),
(2291, 2290, 'ESTRADIOL ( E2 )', NULL, '-', 'pg/ml', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Mid – follicular phase: 99 - 448</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Periovulatory: 349 - 1590</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Mid-luteal phase 180 - 1068</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Post menopausal females: &lt;73 - 147</span><br></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-16 00:44:14', '2024-08-16 00:44:14', NULL, 6, NULL),
(2292, 0, 'FOLLICLE STIMULATING HORMONE ( FSH )', '-', '-', NULL, NULL, '', 0, 41, 0, 0, NULL, '2024-08-16 00:45:08', '2024-08-16 00:45:08', NULL, 6, NULL),
(2293, 2292, 'FOLLICLE STIMULATING HORMONE ( FSH )', NULL, '-', 'mIU/ml', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Follicular 2.50 – 10.20</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Mid Cycle Peak 3.40 – 33.40</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Luteal Phase 1.50 – 9.10</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Post Menopausal 23.00 – 116.30</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Pregnant &lt; 0.30</span><br></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-16 00:45:08', '2024-08-16 00:45:08', NULL, 6, NULL),
(2294, 0, 'FREE PSA (PROSTATE SPECIFIC ANTIGEN)', '-', '-', NULL, NULL, '', 0, 41, 0, 0, NULL, '2024-08-16 00:45:43', '2024-08-16 00:45:43', NULL, 6, NULL),
(2295, 2294, 'FREE PSA (PROSTATE SPECIFIC ANTIGEN)', NULL, '-', 'ng/mL', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">0 - 5.0</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-16 00:45:43', '2024-08-16 00:45:43', NULL, 6, NULL),
(2296, 2294, 'Interpretation', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-16 00:45:43', '2024-08-16 00:45:43', NULL, 6, '<table border=\"0.5\" cellpadding=\"3\" cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td>REFERENCE GROUP</td>\r\n			<td>FREE PSA 0-0.5 ng/mL</td>\r\n			<td>FREE PSA &gt;0.5-2.5 ng/mL</td>\r\n			<td>FREE PSA &gt;2.5-5.0 ng/mL</td>\r\n			<td>FREE PSA &gt;5.0-10 ng/mL</td>\r\n			<td>FREE PSA &gt;10.0 ng/mL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Healthy males</td>\r\n			<td>87.2%</td>\r\n			<td>12.8%</td>\r\n			<td>0%</td>\r\n			<td>0%</td>\r\n			<td>0%</td>\r\n		</tr>\r\n		<tr>\r\n			<td>BPH</td>\r\n			<td>51.9%</td>\r\n			<td>42.9%</td>\r\n			<td>4.2%</td>\r\n			<td>0.5%</td>\r\n			<td>0.5%</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Stage A Prostate Cancer</td>\r\n			<td>38.5%</td>\r\n			<td>42.3%</td>\r\n			<td>11.5%</td>\r\n			<td>3.8%</td>\r\n			<td>3.8%</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Stage B Prostate Cancer</td>\r\n			<td>23.9%</td>\r\n			<td>68.7%</td>\r\n			<td>7.5%</td>\r\n			<td>0%</td>\r\n			<td>0%</td>\r\n		</tr>\r\n	</tbody>\r\n</table>'),
(2297, 0, 'Free PSA / PSA Ratio', '-', '-', NULL, NULL, '', 0, 1, 0, 0, NULL, '2024-08-16 00:46:33', '2024-08-16 00:46:33', NULL, 6, NULL),
(2298, 2297, 'FREE PSA (Prostate Specific Antigen)', NULL, '-', 'ng/mL', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">0 - 5.0</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-16 00:46:33', '2024-08-16 00:46:33', NULL, 6, NULL),
(2299, 2297, 'PSA-Total Prostate Specific Antigen', NULL, '-', 'ng/ml', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">0 - 4.0</span><br></p><div bis_skin_checked=\"1\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-16 00:46:33', '2024-08-16 00:46:33', NULL, 6, NULL),
(2300, 2297, 'FREE PSA / PSA RATIO', NULL, '-', '', '', 'text', 0, 0, 0, 0, NULL, '2024-08-16 00:46:33', '2024-08-16 00:46:33', NULL, 6, NULL),
(2301, 0, 'FSH & LH', '-', '-', NULL, NULL, '', 0, 10, 0, 0, NULL, '2024-08-16 00:47:21', '2024-08-16 00:47:21', NULL, 6, NULL),
(2302, 2301, 'Follicle Stimulating Hormone [FSH]', NULL, '-', 'mIU/ml', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Follicular 2.50 – 10.20</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Mid Cycle Peak 3.40 – 33.40</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Luteal Phase 1.50 – 9.10</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Post Menopausal 23.00 – 116.30</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Pregnant &lt; 0.30</span><br></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-16 00:47:21', '2024-08-16 00:47:21', NULL, 6, NULL),
(2303, 2301, 'Luteinising Hormone (LH)', NULL, '-', 'mIU/ml', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Female</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Normal Menstruating</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Follicular 1.9 - 12.5</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Mid cycle 8.7 - 76.3</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Luteal phase 0.5 - 16.9</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Pregnant &lt; 1.0 - 1.5</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Post menopausal 15.9 - 54.0</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">On contraceptive 0.7 - 5.6</span></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-16 00:47:21', '2024-08-16 00:47:21', NULL, 6, NULL),
(2304, 0, 'FSH / LH / PRL', '-', '-', NULL, NULL, '', 0, 10, 0, 0, NULL, '2024-08-16 00:48:51', '2024-08-16 00:48:51', NULL, 6, NULL),
(2305, 2304, 'Follice Stimulating Hormone (FSH)', NULL, '-', 'mIU/ml', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Follicular 2.50 – 10.20</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Mid Cycle Peak 3.40 – 33.40</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Luteal Phase 1.50 – 9.10</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Post Menopausal 23.00 – 116.30</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Pregnant &lt; 0.30</span><br></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-16 00:48:51', '2024-08-16 00:48:51', NULL, 6, NULL),
(2306, 2304, 'Luteinising Hormone (LH)', NULL, '-', 'mIU/ml', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Female</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Normal Menstruating</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Follicular 1.9 - 12.5</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Mid cycle 8.7 - 76.3</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Luteal phase 0.5 - 16.9</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Pregnant &lt; 1.0 - 1.5</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Post menopausal 15.9 - 54.0</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">On contraceptive 0.7 - 5.6</span><br></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-16 00:48:51', '2024-08-16 00:48:51', NULL, 6, NULL),
(2307, 2304, 'Prolactin (PRL)', NULL, '-', 'ng/mL', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Females: 3.34 - 26.71</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Post Menaupausal 2.74 - 19.64</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-16 00:48:51', '2024-08-16 00:48:51', NULL, 6, NULL),
(2308, 0, 'GAD-65 (GLUTAMIC ACID DECARBOXYLASE- 65)', '-', '-', NULL, NULL, '', 0, 1, 0, 0, NULL, '2024-08-16 00:49:18', '2024-08-16 00:49:18', NULL, 6, NULL),
(2309, 2308, 'Glutamic Acid Decarboxylase- 65 IgG,', NULL, '-', 'IU/ml', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Negative: 0 - 50</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Equivocal: 5.1 - 25.0</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Positive: Greater than 25.0</span><br></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-16 00:49:18', '2024-08-16 00:49:18', NULL, 6, NULL),
(2310, 0, 'GAMMA GLUTAMYL TRANSPEPTIDASE( GGT )', '-', '-', NULL, NULL, '', 0, 10, 0, 0, NULL, '2024-08-16 00:49:47', '2024-08-16 00:49:47', NULL, 6, NULL),
(2311, 2310, 'GGT-Gamma Glutamyl Transpeptidae', NULL, '-', 'U/L', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">0 - 55</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-16 00:49:47', '2024-08-16 00:49:47', NULL, 6, NULL),
(2312, 0, 'GFRE (Glomerular Filtration Rate - Estimated)', '-', '-', NULL, NULL, '', 0, 10, 0, 0, NULL, '2024-08-16 00:50:37', '2024-08-16 00:50:37', NULL, 6, NULL),
(2313, 2312, 'GFR (GLOMERULAR FILTRATION RATE, ESTIMATED)', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-16 00:50:37', '2024-08-16 00:50:37', NULL, 6, ''),
(2314, 2312, 'Creatinine', NULL, '-', 'mg/dL', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">0.67 - 1.17</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-16 00:50:37', '2024-08-16 00:50:37', NULL, 6, NULL),
(2315, 2312, 'GFR, Estimated', NULL, '-', 'mL/min/1.73m2', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">&gt;90</span><br></p><div bis_skin_checked=\"1\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">0.67 - 1.17</span><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-16 00:50:37', '2024-08-16 00:50:37', NULL, 6, NULL),
(2316, 0, 'Globulin', '-', '-', NULL, NULL, '', 0, 10, 0, 0, NULL, '2024-08-16 00:51:00', '2024-08-16 00:51:00', NULL, 6, NULL),
(2317, 2316, 'Globulin', NULL, '-', 'g/dl', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">2.0 - 3.5</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-16 00:51:00', '2024-08-16 00:51:00', NULL, 6, NULL),
(2318, 0, 'Glucose - PG ( 1 hr After 100 gms of Glucose)', '-', '-', NULL, NULL, '', 0, 10, 0, 0, NULL, '2024-08-16 00:51:30', '2024-08-16 00:51:30', NULL, 6, NULL),
(2319, 2318, 'Glucose - PG ( 1 hr After 100 gms of Glucose)', NULL, '-', 'mg/dL', '<p>70-180</p>', 'text', 0, 0, 0, 0, NULL, '2024-08-16 00:51:30', '2024-08-16 00:51:30', NULL, 6, NULL),
(2320, 0, 'Glucose 6 Phosphate Dehydrogenase (G6PD Quantitative)', '-', '-', NULL, NULL, '', 0, 10, 0, 0, NULL, '2024-08-16 00:51:51', '2024-08-16 00:51:51', NULL, 6, NULL),
(2321, 2320, 'G6PD (Qualitative)', NULL, '-', 'min', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Within 60 min</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-16 00:51:51', '2024-08-16 00:51:51', NULL, 6, NULL),
(2322, 0, 'Glucose Challenge Test (GCT) - 1 Hour', '-', '-', NULL, NULL, '', 0, 0, 0, 0, NULL, '2024-08-16 00:52:15', '2024-08-16 00:52:15', NULL, 6, NULL),
(2323, 2322, 'Glucose Challenge Test (GCT) - 1 Hour', NULL, '-', 'mg/dL', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">70 - 140</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-16 00:52:15', '2024-08-16 00:52:15', NULL, 6, NULL),
(2324, 0, 'Glucose One Touch', '-', '-', NULL, NULL, '', 0, 10, 0, 0, NULL, '2024-08-16 00:52:39', '2024-08-16 00:52:39', NULL, 6, NULL),
(2325, 2324, 'Glucose One Touch', NULL, '-', 'mg/dl', '', 'text', 0, 0, 0, 0, NULL, '2024-08-16 00:52:39', '2024-08-16 00:52:39', NULL, 6, NULL),
(2326, 0, 'Glucose Tolerance Test ( 3 Samples)', '-', '-', NULL, NULL, '', 0, 10, 0, 0, NULL, '2024-08-16 00:54:55', '2024-08-16 00:54:55', NULL, 6, NULL),
(2327, 2326, 'Glucose Fasting', NULL, '-', 'mg/dL', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Normal: 70-100</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Impaired Fasting Glucose (IFG): 100-125</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Diabetes Mellitus: &gt;= 126</span><br></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-16 00:54:55', '2024-08-16 00:54:55', NULL, 6, NULL),
(2328, 2326, 'Urine Sugar (Fasting)', NULL, '-', '', '', 'text', 0, 0, 0, 0, NULL, '2024-08-16 00:54:55', '2024-08-16 00:54:55', NULL, 6, NULL),
(2329, 2326, 'Glucose (1 HR)', NULL, '-', 'mg/dL', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">&lt; 200</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-16 00:54:55', '2024-08-16 00:54:55', NULL, 6, NULL),
(2330, 2326, 'Urine sugar (1 hr)', NULL, '-', '', '', 'text', 0, 0, 0, 0, NULL, '2024-08-16 00:54:55', '2024-08-16 00:54:55', NULL, 6, NULL),
(2331, 2326, 'Glucose(2 HR)', NULL, '-', 'mg/dL', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">&lt; 140</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-16 00:54:55', '2024-08-16 00:54:55', NULL, 6, NULL),
(2332, 2326, 'Urine sugar (2hr)', NULL, '-', '', '', 'text', 0, 0, 0, 0, NULL, '2024-08-16 00:54:55', '2024-08-16 00:54:55', NULL, 6, NULL),
(2333, 2326, 'Glucose(3HR)', NULL, '-', 'mg/dL', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">&lt; 140</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-16 00:54:55', '2024-08-16 00:54:55', NULL, 6, NULL),
(2334, 2326, 'Urine sugar (3hr)', NULL, '-', '', '', 'text', 0, 0, 0, 0, NULL, '2024-08-16 00:54:55', '2024-08-16 00:54:55', NULL, 6, NULL),
(2335, 0, 'GLYCOSYLATED HAEMOGLOBIN (GHB / HBA1c)', '-', '-', NULL, NULL, '', 0, 10, 0, 0, NULL, '2024-08-16 00:56:15', '2024-08-16 00:56:15', NULL, 6, NULL),
(2336, 2335, 'HbA1C', NULL, '-', '%', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Below 6.0% - Normal Value</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">6.0% - 7.0% - Good Control</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">7.0% - 8.0% - Fair Control</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">8.0% - 10% - Unsatisfactory Control​</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Above 10% - Poor Control</span><br></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-16 00:56:15', '2024-08-16 00:56:15', NULL, 6, NULL),
(2337, 2335, 'AVERAGE BLOOD GLUCOSE (ABG)', NULL, '-', 'mg/dl', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">90 - 120 mg/dl : Excellent Control</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">121 - 150 mg/dl : Good Control</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">151 - 180 mg/dl : Average Control</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">181 - 210 mg/dl : Action Suggested</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">&gt; 211 mg/dl : Panic Value</span><br></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-16 00:56:15', '2024-08-16 00:56:15', NULL, 6, NULL),
(2338, 0, 'GROWTH HORMONE', '( GH )', '-', NULL, NULL, '', 0, 100, 0, 0, NULL, '2024-08-16 09:39:53', '2024-08-16 09:39:53', NULL, 6, NULL),
(2339, 2338, 'HUMAN GROWTH HORMONE (HGH)', NULL, '-', 'ng/mL', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">&lt; 3.0</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-16 09:39:53', '2024-08-16 09:39:53', NULL, 6, NULL),
(2340, 0, 'HDL Cholesterol', '-', '-', NULL, NULL, '', 0, 10, 0, 0, NULL, '2024-08-16 10:16:26', '2024-08-16 10:16:26', NULL, 6, NULL),
(2341, 2340, 'HDL Cholesterol', NULL, '-', 'mg/dL', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Normal: &gt; 40</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Major Risk for Heart: &lt; 40</span><br></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-16 10:16:26', '2024-08-16 10:16:26', NULL, 6, NULL),
(2342, 0, 'INSULIN (PP)', '-', '-', NULL, NULL, '', 0, 10, 0, 0, NULL, '2024-08-16 10:17:30', '2024-08-16 10:17:30', NULL, 6, NULL),
(2343, 2342, 'INSULIN PP, SERUM', NULL, '-', 'mU/L', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Insulin 30 min : 20-112 mg/dl</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Insulin 60 min : 29-88 mg/dl</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Insulin 90 min : 26-84 mg/dl</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Insulin 120 min : 22-79 mg/dl</span><br></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-16 10:17:30', '2024-08-16 10:17:30', NULL, 6, NULL),
(2344, 0, 'INSULIN LEVEL ( FASTING & POST PRANDIAL )', '-', '-', NULL, NULL, '', 0, 100, 0, 0, NULL, '2024-08-16 10:18:22', '2024-08-16 10:18:22', NULL, 6, NULL),
(2345, 2344, 'INSULIN, FASTING (F) & POST PRANDIAL (PP)', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-16 10:18:22', '2024-08-16 10:18:22', NULL, 6, '');
INSERT INTO `tests` (`id`, `parent_id`, `name`, `shortcut`, `sample_type`, `unit`, `reference_range`, `type`, `separated`, `price`, `status`, `title`, `precautions`, `created_at`, `updated_at`, `deleted_at`, `category_id`, `result_temp`) VALUES
(2346, 2344, 'Insulin, Fasting', NULL, '-', 'μU/mL', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">2.00 - 25.00</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-16 10:18:22', '2024-08-16 10:18:22', NULL, 6, NULL),
(2347, 2344, 'Insulin, PP', NULL, '-', 'μU/mL', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">5.00 - 55.00</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-16 10:18:22', '2024-08-16 10:18:22', NULL, 6, NULL),
(2348, 0, 'INSULIN LEVEL ( FASTING )', '-', '-', NULL, NULL, '', 0, 10, 0, 0, NULL, '2024-08-16 10:18:46', '2024-08-16 10:18:46', NULL, 6, NULL),
(2349, 2348, 'INSULIN LEVEL ( FASTING )', NULL, '-', 'μU/ml', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">1.9 - 23.0</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-16 10:18:46', '2024-08-16 10:18:46', NULL, 6, NULL),
(2350, 0, 'Insulin Level ( Post Prandial /Post Glucose)', '-', '-', NULL, NULL, '', 0, 10, 0, 0, NULL, '2024-08-16 10:19:10', '2024-08-16 10:19:10', NULL, 6, NULL),
(2351, 2350, 'Insulin Post Glucose (Serum)', NULL, '-', 'μU/ml', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Post prandial (2 hours) : 05 - 55</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-16 10:19:10', '2024-08-16 10:19:10', NULL, 6, NULL),
(2352, 0, 'IONIC CALCIUM', '-', '-', NULL, NULL, '', 0, 10, 0, 0, NULL, '2024-08-16 10:19:31', '2024-08-16 10:19:31', NULL, 6, NULL),
(2353, 2352, 'IONIC CALCIUM', NULL, '-', 'meq/L', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">2.0 - 2.4</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-16 10:19:31', '2024-08-16 10:19:31', NULL, 6, NULL),
(2354, 0, 'Calcium Ionized', '--', '-', NULL, NULL, '', 0, 10, 0, 0, NULL, '2024-08-16 10:19:52', '2024-08-16 10:19:52', NULL, 6, NULL),
(2355, 2354, 'Calcium Ionized', NULL, '-', 'mg/dl', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">4.6 - 5.3</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-16 10:19:52', '2024-08-16 10:19:52', NULL, 6, NULL),
(2356, 0, 'IRON', '-', '-', NULL, NULL, '', 0, 120, 0, 0, NULL, '2024-08-16 10:20:26', '2024-08-16 10:20:26', NULL, 6, NULL),
(2357, 2356, 'Iron', NULL, '-', 'mg/dl', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Adults :&nbsp; 60-180</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Children :</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Newborn: 100-250</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Infant : 40-100</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Children : 50-120</span><br></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-16 10:20:26', '2024-08-16 10:20:26', NULL, 6, NULL),
(2358, 0, 'IRON (Fe)', '-', '-', NULL, NULL, '', 0, 10, 0, 0, NULL, '2024-08-16 10:21:00', '2024-08-16 10:21:00', NULL, 6, NULL),
(2359, 2358, 'IRON (Fe)', NULL, '-', 'ug/dl', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Male : 65 - 175 ug/dl</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Female : 59 - 158 ug/dl</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Infant : 36 - 184 ug/d</span><br></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-16 10:21:00', '2024-08-16 10:21:00', NULL, 6, NULL),
(2360, 0, 'KIDNEY FUNCTION TEST (KFT)', '-', '-', NULL, NULL, '', 0, 10, 0, 0, NULL, '2024-08-16 10:23:44', '2024-08-16 10:23:44', NULL, 6, NULL),
(2361, 2360, 'Urea', NULL, '-', 'mg/dL', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">15 - 40</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-16 10:23:44', '2024-10-04 16:13:40', NULL, 6, NULL),
(2362, 2360, 'Creatinine', NULL, '-', 'mg/dL', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">0.7 - 1.2</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-16 10:23:44', '2024-10-04 16:13:40', NULL, 6, NULL),
(2363, 2360, 'Uric Acid', NULL, '-', 'mg/dL', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">3.4 - 7.0</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-16 10:23:44', '2024-10-04 16:13:17', '2024-10-04 16:13:17', 6, NULL),
(2364, 2360, 'Calcium, Total', NULL, '-', 'mg/dL', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">8.70 - 10.40</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-16 10:23:44', '2024-10-04 16:13:21', '2024-10-04 16:13:21', 6, NULL),
(2365, 2360, 'Phosphorus', NULL, '-', 'mg/dL', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">2.40 - 5.10</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-16 10:23:44', '2024-10-04 16:13:23', '2024-10-04 16:13:23', 6, NULL),
(2366, 2360, 'Alkaline Phosphatase (ALP)', NULL, '-', 'U/L', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">30.00 - 120.00</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-16 10:23:44', '2024-10-04 16:13:27', '2024-10-04 16:13:27', 6, NULL),
(2367, 2360, 'Total Protein', NULL, '-', 'g/dL', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">5.70 - 8.20</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-16 10:23:44', '2024-10-04 16:13:29', '2024-10-04 16:13:29', 6, NULL),
(2368, 2360, 'Albumin', NULL, '-', 'g/dL', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">3.20 - 4.80</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-16 10:23:44', '2024-10-04 16:13:31', '2024-10-04 16:13:31', 6, NULL),
(2369, 2360, 'Sodium', NULL, '-', 'mEq/L', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">136.00 - 145.00</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-16 10:23:44', '2024-10-04 16:13:34', '2024-10-04 16:13:34', 6, NULL),
(2370, 2360, 'Potassium', NULL, '-', 'mEq/L', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">3.50 - 5.10</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-16 10:23:44', '2024-10-04 16:13:36', '2024-10-04 16:13:36', 6, NULL),
(2371, 2360, 'Chloride', NULL, '-', 'mEq/L', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">98.00 - 107.00</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-16 10:23:44', '2024-10-04 16:13:38', '2024-10-04 16:13:38', 6, NULL),
(2372, 0, 'LACTATE', '-', '-', NULL, NULL, '', 0, 100, 0, 0, NULL, '2024-08-16 10:24:17', '2024-08-16 10:24:17', NULL, 6, NULL),
(2373, 2372, 'LACTATE', NULL, '-', 'mg/dL', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">4.5 - 19.8</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-16 10:24:17', '2024-08-16 10:24:17', NULL, 6, NULL),
(2374, 0, 'LACTATE DEHYDROGENASE', '( LDH )', '-', NULL, NULL, '', 0, 10, 0, 0, NULL, '2024-08-16 10:24:47', '2024-08-16 10:24:47', NULL, 6, NULL),
(2375, 2374, 'LDH : Lactate Dehydrogenase', NULL, '-', 'IU/L', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">114 - 240</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-16 10:24:47', '2024-08-16 10:24:47', NULL, 6, NULL),
(2376, 0, 'LDL CHOLESTEROL', '-', '-', NULL, NULL, '', 0, 10, 0, 0, NULL, '2024-08-16 10:25:16', '2024-08-16 10:25:16', NULL, 6, NULL),
(2377, 2376, 'LDL CHOLESTEROL', NULL, '-', 'mg/dl', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Optimal : &lt; 100</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Near optimal/above optimal: 100-129</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Borderline high: 130-159</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">High: 160-189</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Very High: &gt;= 190</span><br></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-16 10:25:16', '2024-08-16 10:25:16', NULL, 6, NULL),
(2378, 0, 'LDL/HDL Ratio', '-', '-', NULL, NULL, '', 0, 10, 0, 0, NULL, '2024-08-16 10:25:41', '2024-08-16 10:25:41', NULL, 6, NULL),
(2379, 2378, 'LDL/ HDL RATIO', NULL, '-', 'mg/dl', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">0 - 3.5 / Calculation</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-16 10:25:41', '2024-08-16 10:25:41', NULL, 6, NULL),
(2380, 0, 'LIPASE-', '-', 'SERUM', NULL, NULL, '', 0, 800, 0, 0, NULL, '2024-08-16 10:26:03', '2024-10-06 13:32:00', NULL, 6, NULL),
(2381, 2380, 'LIPASE', NULL, 'SERUM', 'U/L', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">13 - 60</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 1, 0, NULL, '2024-08-16 10:26:04', '2024-10-06 13:32:07', NULL, 6, NULL),
(2382, 0, 'LIPID PROFILE', 'Lipid', 'SERUM', NULL, NULL, '', 0, 500, 0, 0, NULL, '2024-08-16 10:28:26', '2025-05-17 18:52:50', NULL, 6, NULL),
(2383, 2382, 'Total Cholesterol', NULL, 'SERUM', 'mg/dL', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Desirable: Less then 199 mg/dl</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Borderline high : 200 - 239 mg/dl</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">High Risk : More Then 240 mg/dl</span><br></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-16 10:28:26', '2025-06-11 14:28:01', NULL, 6, NULL),
(2384, 2382, 'Triglycerides', NULL, 'SERUM', 'mg/dL', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Desirable : 150 mg/dl</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Borderline High: 150-199 mg/dl</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">High Risk: 200-499 mg/dl</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Very High: >= 500 mg/dl</span><br></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-16 10:28:26', '2025-06-11 14:28:01', NULL, 6, NULL),
(2385, 2382, 'H D L Cholesterol', NULL, 'SERUM', 'mg/dL', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Normal: > 30 mg/dl</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Major Risk for Heart: < 55 mg/dl</span><br></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-16 10:28:26', '2025-06-11 14:28:01', NULL, 6, NULL),
(2386, 2382, 'L D L Cholesterol DIRECT', NULL, 'SERUM', 'mg/dL', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Optimal < 100 mg/dl</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Normal Optimal 100-129 mg/dl</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Borderline High 130-159 mg/dl</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">High 160-189 mg/dl</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Very High > = 190 mg/dl</span><br></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-16 10:28:26', '2025-06-11 14:28:01', NULL, 6, NULL),
(2387, 2382, 'VLDL Cholesterol', NULL, 'SERUM', 'mg/dL', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">5 - 40 mg/dl</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-16 10:28:26', '2025-06-11 14:28:01', NULL, 6, NULL),
(2388, 2382, 'Non HDL Cholesterol', NULL, '-', 'mg/dL', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Desirable: &lt; 130</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Borderline:130-159</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Undesirable: &gt; 160</span><br></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-16 10:28:26', '2024-10-04 16:10:09', '2024-10-04 16:10:09', 6, NULL),
(2389, 2382, 'Phospolipids', NULL, '-', 'mg/dL', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Desirable : 130 - 190</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Borderline : 191 - 250</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">High : &gt; 251</span><br></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-16 10:28:26', '2024-10-04 16:10:15', '2024-10-04 16:10:15', 6, NULL),
(2390, 2382, 'LDL/HDL Ratio', NULL, '-', '', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Desirable/Low Risk : 3.3 - 4.4</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Borderline/Middle Risk : 4.5 - 7.1</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Elevated/High Risk : 7.2 - 11.0</span><br></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-16 10:28:26', '2024-10-04 16:10:19', '2024-10-04 16:10:19', 6, NULL),
(2391, 2382, 'CHOL/HDL Ratio', NULL, '-', '', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Desirable/Low Risk : 0.5 - 3.0</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Borderline/Middle Risk : 3.1 - 6.0</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Elevated/High Risk : &gt;6.1</span><br></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-16 10:28:26', '2024-10-04 16:10:21', '2024-10-04 16:10:21', 6, NULL),
(2392, 0, 'LITHIUM LEVEL', '-', '-', NULL, NULL, '', 0, 10, 0, 0, NULL, '2024-08-16 10:28:57', '2024-08-16 10:28:57', NULL, 6, NULL),
(2393, 2392, 'SERUM LITHIUM', NULL, '-', 'mmol/L', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">0.6 - 1.2</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-16 10:28:57', '2024-08-16 10:28:57', NULL, 6, NULL),
(2394, 0, 'LIVER FUNCTION TEST - LFT', 'LFT', 'SERUM', NULL, NULL, '', 0, 500, 0, 0, NULL, '2024-08-16 10:32:17', '2025-05-17 18:29:56', NULL, 6, NULL),
(2395, 2394, 'Bilirubin - Total', NULL, '-', 'mg/dL', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">0.3 - 1.2</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-16 10:32:17', '2024-10-04 16:11:46', '2024-10-04 16:11:46', 6, NULL),
(2396, 2394, 'Bilirubin - Direct', NULL, '-', 'mg/dL', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">&lt; 0.2</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-16 10:32:17', '2024-10-04 16:11:48', '2024-10-04 16:11:48', 6, NULL),
(2397, 2394, 'Bilirubin - Indirect', NULL, '-', 'mg/dL', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">0.1 - 1.0</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-16 10:32:17', '2024-10-04 16:11:53', '2024-10-04 16:11:53', 6, NULL),
(2398, 2394, 'SGOT', NULL, '-', 'U/L', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">0 - 41</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-16 10:32:17', '2024-10-05 18:34:42', '2024-10-05 18:34:42', 6, NULL),
(2399, 2394, 'SGPT', NULL, '-', 'U/L', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">5 - 40</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-16 10:32:17', '2024-10-05 18:34:44', '2024-10-05 18:34:44', 6, NULL),
(2400, 2394, 'Alkaline Phosphatase', NULL, '-', 'U/L', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">98 - 279</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-16 10:32:17', '2024-10-05 18:34:46', '2024-10-05 18:34:46', 6, NULL),
(2401, 2394, 'GGT-Gamma Glutamyl Transpeptidae', NULL, '-', 'U/L', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">&lt; 55</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-16 10:32:17', '2024-10-04 16:12:17', '2024-10-04 16:12:17', 6, NULL),
(2402, 2394, 'Total Protein', NULL, '-', 'g/dL', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">6.0 - 8.4</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-16 10:32:17', '2024-10-05 18:34:48', '2024-10-05 18:34:48', 6, NULL),
(2403, 2394, 'Albumin', NULL, '-', 'g/dL', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">3.2 - 5.0</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-16 10:32:17', '2024-10-05 18:34:53', '2024-10-05 18:34:53', 6, NULL),
(2404, 2394, 'Globulin', NULL, '-', 'g/dL', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">2.0 - 3.5</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-16 10:32:17', '2024-10-04 16:12:27', '2024-10-04 16:12:27', 6, NULL),
(2405, 2394, 'A/G Ratio', NULL, '-', '', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">1.2 - 2.2</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-16 10:32:17', '2024-10-04 16:12:31', '2024-10-04 16:12:31', 6, NULL),
(2406, 0, 'LUTEINISING HORMONE', '(LH)', '-', NULL, NULL, '', 0, 10, 0, 0, NULL, '2024-08-16 11:19:01', '2024-08-16 11:19:01', NULL, 6, NULL),
(2407, 2406, 'LUTEINISING HORMONE (LH)', NULL, '-', 'mIU/ml', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Female</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Normal Menstruating</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Follicular 1.9 - 12.5</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Mid cycle 8.7 - 76.3</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Luteal phase 0.5 - 16.9</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Pregnant &lt; 1.0 - 1.5</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Post menopausal 15.9 - 54.0</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">On contraceptive 0.7 - 5.6</span><br></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-16 11:19:01', '2024-08-16 11:19:01', NULL, 6, NULL),
(2408, 0, 'MAGNESIUM - SERUM', '-', '-', NULL, NULL, '', 0, 100, 0, 0, NULL, '2024-08-16 11:19:32', '2024-08-16 11:19:32', NULL, 6, NULL),
(2409, 2408, 'Sr. Magnessium', NULL, '-', 'mg/dl', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Men: 1.8-2.6 mg/dl</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Women: 1.9-2.5 mg/dl</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Children: 1.5-2.3 mg/dl</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Neonates: 1.2-2.6 mg/dl</span><br></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-16 11:19:32', '2024-08-16 11:19:32', NULL, 6, NULL),
(2410, 0, 'MICROALBUMIN', '-', '-', NULL, NULL, '', 0, 10, 0, 0, NULL, '2024-08-16 11:19:59', '2024-08-16 11:19:59', NULL, 6, NULL),
(2411, 2410, 'Microalbumin', NULL, '-', 'mg/L', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Normal: &lt; 2</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Microalbuminuria: 2-20</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Clinical Albuminuria: &gt; 20</span><br></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-16 11:19:59', '2024-08-16 11:19:59', NULL, 6, NULL),
(2412, 0, 'ORAL GLUCOSE CHALLENGE TEST - OGCT', '-', '-', NULL, NULL, '', 0, 10, 0, 0, NULL, '2024-08-16 11:20:34', '2024-08-16 11:20:34', NULL, 6, NULL),
(2413, 2412, 'Oral Glucose Given', NULL, '-', 'gm', '', 'text', 0, 0, 0, 0, NULL, '2024-08-16 11:20:34', '2024-08-16 11:20:34', NULL, 6, NULL),
(2414, 2412, 'Blood Glucose (Two Hour)', NULL, '-', 'mg/dl', '', 'text', 0, 0, 0, 0, NULL, '2024-08-16 11:20:34', '2024-08-16 11:20:34', NULL, 6, NULL),
(2415, 0, 'POTASSIUM', '-', '-', NULL, NULL, '', 0, 200, 0, 0, NULL, '2024-08-16 11:20:56', '2025-02-06 13:12:53', NULL, 6, NULL),
(2416, 2415, 'POTASSIUM', NULL, '-', 'meq/Lt', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">3.5 - 5.5</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-16 11:20:56', '2025-02-06 13:12:53', NULL, 6, NULL),
(2417, 0, 'PROLACTIN', '( PRL )', '-', NULL, NULL, '', 0, 10, 0, 0, NULL, '2024-08-16 11:21:28', '2024-08-16 11:21:28', NULL, 6, NULL),
(2418, 2417, 'Prolactin (PRL)', NULL, '-', 'ng/mL', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Females: 3.34 - 26.71</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Post Menaupausal 2.74 - 19.64</span><br></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-16 11:21:29', '2024-08-16 11:21:29', NULL, 6, NULL),
(2419, 0, 'PROSTATE SPECIFIC ANTIGEN ( PSA )', 'PSA', '-', NULL, NULL, '', 0, 10, 0, 0, NULL, '2024-08-16 11:30:58', '2024-08-16 11:30:58', NULL, 6, NULL),
(2420, 2419, 'PSA-total Prostate Specific Antigen', NULL, '-', 'ng/ml', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">0 - 4.0</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-16 11:30:58', '2024-08-16 11:30:58', NULL, 6, NULL),
(2421, 0, 'PROTEIN -S', '-', '-', NULL, NULL, '', 0, 10, 0, 0, NULL, '2024-08-16 11:31:17', '2024-08-16 11:31:17', NULL, 6, NULL),
(2422, 2421, 'Protein S Activity', NULL, '-', '%', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">50 - 140</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-16 11:31:17', '2024-08-16 11:31:17', NULL, 6, NULL),
(2423, 0, 'PROTEIN C', '-', '-', NULL, NULL, '', 0, 10, 0, 0, NULL, '2024-08-16 11:31:42', '2024-08-16 11:31:42', NULL, 6, NULL),
(2424, 2423, 'Protein C', NULL, '-', '%', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">70 - 150</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-16 11:31:42', '2024-08-16 11:31:42', NULL, 6, NULL),
(2425, 0, 'TOTAL PROTEIN', '-', 'SERUM', NULL, NULL, '', 0, 100, 0, 0, NULL, '2024-08-16 11:32:03', '2024-10-06 13:38:37', NULL, 6, NULL),
(2426, 2425, 'Total Protein', NULL, 'SERUM', 'gm/dl', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">6.4 - 8.2</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 1, 0, NULL, '2024-08-16 11:32:03', '2024-10-06 13:38:37', NULL, 6, NULL),
(2427, 0, 'PYRUVATE', '-', '-', NULL, NULL, '', 0, 10, 0, 0, NULL, '2024-08-16 11:32:28', '2024-08-16 11:32:28', NULL, 6, NULL),
(2428, 2427, 'PYRUVATE', NULL, '-', 'mg/dL', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Less Than0.7 mg/dL</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-16 11:32:28', '2024-08-16 11:32:28', NULL, 6, NULL),
(2429, 2427, 'Method', NULL, '-', '', '', 'text', 0, 0, 0, 0, NULL, '2024-08-16 11:32:28', '2024-08-16 11:32:28', NULL, 6, NULL),
(2430, 0, 'PYRUVATE', '-', '-', NULL, NULL, '', 0, 10, 0, 0, NULL, '2024-08-16 11:32:41', '2024-08-16 11:32:41', NULL, 6, NULL),
(2431, 2430, 'PYRUVATE', NULL, '-', 'mg/dL', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Less Than0.7 mg/dL</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-16 11:32:41', '2024-08-16 11:32:41', NULL, 6, NULL),
(2432, 2430, 'Method', NULL, '-', '', '', 'text', 0, 0, 0, 0, NULL, '2024-08-16 11:32:41', '2024-08-16 11:32:41', NULL, 6, NULL),
(2433, 0, 'RANDOM BLOOD SUGAR', 'RBS', 'SERUM', NULL, NULL, '', 0, 50, 0, 0, NULL, '2024-08-16 11:33:24', '2025-05-17 19:17:56', NULL, 6, NULL),
(2434, 2433, 'RANDOM BLOOD SUGAR (RBS)', NULL, 'SERUM', 'mg/dl', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">70 - 160</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-16 11:33:24', '2025-05-17 19:17:56', NULL, 6, NULL),
(2435, 2433, 'Urine Sugar (Optional)', NULL, 'SERUM', '', '', 'text', 0, 0, 0, 0, NULL, '2024-08-16 11:33:24', '2025-05-17 19:17:56', NULL, 6, NULL),
(2436, 2433, 'Urine Ketones (Optional)', NULL, 'SERUM', '', '', 'text', 0, 0, 0, 0, NULL, '2024-08-16 11:33:24', '2025-05-17 19:17:56', NULL, 6, NULL),
(2437, 0, 'RENAL FUNCTION TEST', '(RFT)', 'SERUM', NULL, NULL, '', 0, 300, 0, 0, NULL, '2024-08-16 11:48:13', '2024-10-06 13:24:25', NULL, 6, NULL),
(2438, 2437, 'Blood Urea', NULL, 'SERUM', 'mg/dl', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">12.6 - 45.0</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 1, 0, NULL, '2024-08-16 11:48:13', '2025-02-04 10:17:50', NULL, 6, NULL),
(2439, 2437, 'Sr. Creatinine', NULL, 'SERUM', 'mg/dl', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">0.5 - 1.5</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 1, 0, NULL, '2024-08-16 11:48:13', '2025-02-04 10:17:50', NULL, 6, NULL),
(2440, 2437, 'Serum Uric Acid', NULL, 'SERUM', 'mg/dl', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">MALES : 2.5 - 7.2</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">FEMALES : 2.5 - 6.0</span></div>', 'text', 0, 0, 1, 0, NULL, '2024-08-16 11:48:13', '2025-02-04 10:17:50', NULL, 6, NULL),
(2441, 2437, 'Total Proteins', NULL, 'SERUM', 'g/dl', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">6.4 - 8.3</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 1, 0, NULL, '2024-08-16 11:48:13', '2025-02-04 10:17:50', NULL, 6, NULL),
(2442, 2437, 'Sr. Albumin', NULL, 'SERUM', 'g/dl', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">3.5 - 5.2</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 1, 0, NULL, '2024-08-16 11:48:13', '2025-02-04 10:17:50', NULL, 6, NULL),
(2443, 2437, 'Sr. Globulin', NULL, 'SERUM', 'g/dl', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">2 - 3.5</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-16 11:48:13', '2025-02-04 10:17:50', NULL, 6, NULL),
(2444, 0, 'SCL 70 Anti body', '-', '-', NULL, NULL, '', 0, 100, 0, 0, NULL, '2024-08-16 11:48:46', '2024-08-16 11:48:46', NULL, 6, NULL),
(2445, 2444, 'SCL 70 Anti body', NULL, '-', 'Units', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Negative &lt;20</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Weak positive 20 - 39</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Moderate Positive 40 - 80</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Strong Positive &gt;80 / ELISA</span><br></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-16 11:48:46', '2024-08-16 11:48:46', NULL, 6, NULL),
(2446, 0, 'SERUM FOLIC ACID', '-', '-', NULL, NULL, '', 0, 100, 0, 0, NULL, '2024-08-16 11:49:25', '2024-08-16 11:49:25', NULL, 6, NULL),
(2447, 2446, 'SERUM FOLIC ACID', NULL, '-', 'ng/ml', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Normal : &gt;5.38</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Indeterminate: 3.38 - 5.38</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Deficient : 0.35 - 3.37</span><br><br></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-16 11:49:25', '2024-08-16 11:49:25', NULL, 6, NULL),
(2448, 0, 'Serum Gastrin', '-', '-', NULL, NULL, '', 0, 10, 0, 0, NULL, '2024-08-16 11:49:50', '2024-08-16 11:49:50', NULL, 6, NULL),
(2449, 2448, 'Gastrin', NULL, '-', 'pg/mL', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">13 - 115</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-16 11:49:50', '2024-08-16 11:49:50', NULL, 6, NULL),
(2450, 0, 'SERUM PROTEINS', '-', '-', NULL, NULL, '', 0, 10, 0, 0, NULL, '2024-08-16 11:50:35', '2024-08-16 11:50:35', NULL, 6, NULL),
(2451, 2450, 'SERUM PROTEINS', NULL, '-', 'g/dl', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">6 - 8.3</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-16 11:50:35', '2024-08-16 11:50:35', NULL, 6, NULL),
(2452, 2450, 'SERUM ALBUMIN', NULL, '-', 'g/dl', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">3.2 - 5.0</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-16 11:50:35', '2024-08-16 11:50:35', NULL, 6, NULL),
(2453, 2450, 'SERUM GLOBULIN', NULL, '-', 'g/dl', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">2 - 3.5</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-16 11:50:35', '2024-08-16 11:50:35', NULL, 6, NULL),
(2454, 0, 'SERUM RENIN', '-', '-', NULL, NULL, '', 0, 10, 0, 0, NULL, '2024-08-16 11:50:58', '2024-08-16 11:50:58', NULL, 6, NULL),
(2455, 2454, 'Renin Activity, Plasma', NULL, '-', 'ng/mL/hr', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">0.16 - 5.38</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-16 11:50:58', '2024-08-16 11:50:58', NULL, 6, NULL),
(2456, 0, 'SGOT ( AST )', '-', '-', NULL, NULL, '', 0, 11, 0, 0, NULL, '2024-08-16 11:51:18', '2024-08-16 11:51:18', NULL, 6, NULL),
(2457, 2456, 'SGOT ( AST )', NULL, '-', 'U/L', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">0 - 41</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-16 11:51:18', '2024-08-16 11:51:18', NULL, 6, NULL),
(2458, 0, 'SGPT ( ALT )', '-', '-', NULL, NULL, '', 0, 10, 0, 0, NULL, '2024-08-16 11:51:36', '2024-08-16 11:51:36', NULL, 6, NULL),
(2459, 2458, 'SGPT ( ALT )', NULL, '-', 'U/L', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">5 - 40</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-16 11:51:36', '2024-08-16 11:51:36', NULL, 6, NULL),
(2460, 0, 'Sodium ( Na )', '-', '-', NULL, NULL, '', 0, 200, 0, 0, NULL, '2024-08-16 11:51:53', '2025-02-06 13:12:21', NULL, 6, NULL),
(2461, 2460, 'Sodium', NULL, '-', 'mmol/l', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">136 - 145</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-16 11:51:53', '2025-02-06 13:12:39', NULL, 6, NULL),
(2462, 0, 'TIBC', '-', '-', NULL, NULL, '', 0, 10, 0, 0, NULL, '2024-08-16 11:52:14', '2024-08-16 11:52:14', NULL, 6, NULL),
(2463, 2462, 'T.I.B.C', NULL, '-', 'micro gm/dl', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Adult : 250-450 micro gm/dl</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Infant : 100-400 micro gm/dl / Ferrozine</span><br></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-16 11:52:14', '2024-08-16 11:52:14', NULL, 6, NULL),
(2464, 0, 'Total Cholesterol', '-', '-', NULL, NULL, '', 0, 10, 0, 0, NULL, '2024-08-16 11:52:35', '2024-08-16 11:52:35', NULL, 6, NULL),
(2465, 2464, 'Cholesterol-Total', NULL, '-', 'mg/dl', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Desirable: &lt; 200</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Borderline high : 200 - 239</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Undesirable: &gt;= 240</span><br></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-16 11:52:35', '2024-08-16 11:52:35', NULL, 6, NULL),
(2466, 0, 'Total IgE', '-', '-', NULL, NULL, '', 0, 10, 0, 0, NULL, '2024-08-16 11:53:00', '2024-08-16 11:53:00', NULL, 6, NULL),
(2467, 2466, 'TOTAL IGE', NULL, '-', 'KIU/Lt', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">0.0 - 113.0</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-16 11:53:00', '2024-08-16 11:53:00', NULL, 6, NULL),
(2468, 0, 'TRIGLYCERIDES (TGL)', '-', '-', NULL, NULL, '', 0, 10, 0, 0, NULL, '2024-08-16 11:53:20', '2024-08-16 11:53:20', NULL, 6, NULL),
(2469, 2468, 'Triglycerides', NULL, '-', 'mg/dl', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Normal: &lt; 150</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Borderline High: 150-199</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">High: 200-499</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Very High: &gt;= 500</span><br></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-16 11:53:20', '2024-08-16 11:53:20', NULL, 6, NULL),
(2470, 0, 'Uric Acid', 'S.U.A', 'SERUM', NULL, NULL, '', 0, 300, 0, 0, NULL, '2024-08-16 11:53:37', '2024-10-06 13:29:31', NULL, 6, NULL),
(2471, 2470, 'Uric Acid', NULL, 'SERUM', 'mg/dl', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">MALES : 2.5 - 7.2</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">FEMALES : 2.6 - 6.0</span></div>', 'text', 0, 0, 1, 0, NULL, '2024-08-16 11:53:37', '2024-10-06 13:29:38', NULL, 6, NULL),
(2472, 0, 'URINARY ALBUMIN/CREATININE RATIO', '-', '-', NULL, NULL, '', 0, 10, 0, 0, NULL, '2024-08-16 11:54:33', '2024-08-16 11:54:33', NULL, 6, NULL),
(2473, 2472, 'Spot Urinary Albumin', NULL, '-', 'mg/dl', '', 'text', 0, 0, 0, 0, NULL, '2024-08-16 11:54:33', '2024-08-16 11:54:33', NULL, 6, NULL),
(2474, 2472, 'Spot Urinary Creatinine', NULL, '-', 'mg/dl', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Less than 40 Yrs: 24 - 392</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Greater than 40 Yrs: 22 - 328</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-16 11:54:33', '2024-08-16 11:54:33', NULL, 6, NULL),
(2475, 2472, 'Spot Urinary Albumin/Creatinine ratio', NULL, '-', 'mg/mg', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">A. Child Under Age 2 Yrs:</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Normal Ratio &lt;0.5</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">B. Adults &amp; Children Over Age 2 Yrs:</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">1. Normal Ratio &lt; 0.2</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">2. Nephrotic Ratio &gt; 3.5</span><br></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-16 11:54:33', '2024-08-16 11:54:33', NULL, 6, NULL),
(2476, 0, 'URINE ACETONE - RANDOM', '-', '-', NULL, NULL, '', 0, 10, 0, 0, NULL, '2024-08-16 11:55:00', '2024-08-16 11:55:00', NULL, 6, NULL),
(2477, 2476, 'URINE ACETONE - RANDOM', NULL, '-', '', '', 'select', 0, 0, 0, 0, NULL, '2024-08-16 11:55:00', '2024-08-16 11:55:00', NULL, 6, NULL),
(2478, 0, 'VITAMIN B12', '-', '-', NULL, NULL, '', 0, 10, 0, 0, '1', '2024-08-16 11:55:23', '2024-08-16 11:55:23', NULL, 6, NULL),
(2479, 2478, 'VITAMIN B - 12', NULL, '-', 'pg/mL', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Normal: 180 - 914</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Intermediate: 145 - 180</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Deficient: &lt;= 145</span><br></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-16 11:55:23', '2024-08-16 11:55:23', NULL, 6, NULL),
(2480, 0, 'VITAMIN B6', '-', '-', NULL, NULL, '', 0, 10, 0, 0, NULL, '2024-08-16 11:55:42', '2024-08-16 11:55:42', NULL, 6, NULL),
(2481, 2480, 'Vitamin B6', NULL, '-', 'mg/L', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">5 - 30</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-16 11:55:42', '2024-08-16 11:55:42', NULL, 6, NULL),
(2482, 0, 'VITAMIN D3 (1, 25 DIHYDROXYCHOLECALCIFEROL)', '-', '-', NULL, NULL, '', 0, 10, 0, 0, NULL, '2024-08-16 11:56:00', '2024-08-16 11:56:00', NULL, 6, NULL),
(2483, 2482, 'VITAMIN D3 (1, 25 DIHYDROXYCHOLECALCIFEROL)', NULL, '-', 'ng/ml', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">19.6 - 54.3</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-16 11:56:00', '2024-08-16 11:56:00', NULL, 6, NULL),
(2484, 0, 'VLDL Cholesterol', '-', '-', NULL, NULL, '', 0, 100, 0, 0, NULL, '2024-08-16 11:56:17', '2024-08-16 11:56:17', NULL, 6, NULL),
(2485, 2484, 'VLDL Cholesterol', NULL, '-', 'mg/dL', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">6 - 38</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-16 11:56:17', '2024-08-16 11:56:17', NULL, 6, NULL),
(2486, 0, 'ZINC', '-', '-', NULL, NULL, '', 0, 10, 0, 0, NULL, '2024-08-16 11:56:37', '2024-08-16 11:56:37', NULL, 6, NULL),
(2487, 2486, 'ZINC', NULL, '-', 'ug/dl', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">70 - 150</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-16 11:56:37', '2024-08-16 11:56:37', NULL, 6, NULL),
(2488, 0, 'SERUM FERRITIN', '-', '-', NULL, NULL, '', 0, 10, 0, 0, NULL, '2024-08-16 12:04:13', '2024-08-16 12:04:13', NULL, 7, NULL),
(2489, 2488, 'FERRITIN, SERUM', NULL, '-', 'ng/mL', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">22 - 322</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-16 12:04:13', '2024-08-16 12:04:13', NULL, 7, NULL),
(2490, 0, 'Interleukin 6 (IL-6)', '-', '-', NULL, NULL, '', 0, 10, 0, 0, NULL, '2024-08-16 12:04:53', '2024-08-16 12:04:53', NULL, 7, NULL),
(2491, 2490, 'INTERLEUKIN-6 (IL-6)', NULL, '-', 'pg/ml', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">&lt; 10.0</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Elevated IL-6 levels associated with variety of acute and chronic inflammatory diseases.</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">IL-6 has limited stability, Separate serum within 1 hour and refrigerated immediately. Sample can be stored at greater than 24 hours report may be differ</span><br></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-16 12:04:53', '2024-08-16 12:04:53', NULL, 7, NULL),
(2492, 0, 'Beta HCG', '-', '-', NULL, NULL, '', 0, 100, 0, 0, NULL, '2024-08-18 12:12:00', '2024-08-18 12:12:00', NULL, 8, NULL);
INSERT INTO `tests` (`id`, `parent_id`, `name`, `shortcut`, `sample_type`, `unit`, `reference_range`, `type`, `separated`, `price`, `status`, `title`, `precautions`, `created_at`, `updated_at`, `deleted_at`, `category_id`, `result_temp`) VALUES
(2493, 2492, 'Beta HCG', NULL, '-', 'mIU/mL', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Non-Pregnant Females : &lt; 5.0 weeks of gestation</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">4 wk 5 - 100</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">5 wk 200 - 3000</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">6 wk 10,000 - 80,000</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">7- 14wk 90,000 - 500,000</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">15- 26 wk 5000 - 80,000</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">27 - 40 wk 3000-15,000</span><br></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-18 12:12:00', '2024-08-18 12:12:00', NULL, 8, NULL),
(2494, 0, 'T3 ( TRI-IODOTHYRONINE )', '-', '-', NULL, NULL, '', 0, 100, 0, 0, NULL, '2024-08-18 12:13:01', '2024-08-18 12:13:01', NULL, 8, NULL),
(2495, 2494, 'T3,Total (Triiodothyronine)', NULL, '-', 'ng/ml', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">0-1 Month: 0.6 - 1.6</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">1-24 Month: 0.7 - 2.2</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">2 - 10 Yrs: 1.6 - 2.1</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">11- 14 Yrs: 1.4 - 2.3</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">15 - 17 Yrs: 1.4 -2.1</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">18 Yrs &amp; above: 0.87 - 1.78</span><br></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-18 12:13:01', '2024-08-18 12:13:01', NULL, 8, NULL),
(2496, 2494, 'Interpretation', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-18 12:13:01', '2024-08-18 12:13:01', NULL, 8, 'Euthyroid : 60 to 181\r\nHypothyroid : less than 60\r\nHyperthyroid : greater than 181'),
(2497, 2494, 'Remark', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-08-18 12:13:01', '2024-08-18 12:13:01', NULL, 8, 'T3 blood level is better indicator for defining hyperthyroidism and thyroidal reserve.'),
(2498, 0, 'T4 ( THYROXINE)', '-', '-', NULL, NULL, '', 0, 100, 0, 0, NULL, '2024-08-18 12:13:36', '2024-08-18 12:13:36', NULL, 8, NULL),
(2499, 2498, 'T4,Total (Thyroxine)', NULL, '-', 'μg/dl', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">0 - 11 Month: 7.8 - 16.5</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">1 Yrs - 100 yrs : 5.1 - 14.1</span><br></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-18 12:13:36', '2024-08-18 12:13:36', NULL, 8, NULL),
(2500, 0, 'THYROID FUNCTION TEST ( TFT )', 'TFT', 'SERUM', NULL, NULL, '', 0, 500, 0, 0, NULL, '2024-08-18 12:14:47', '2025-02-05 18:26:19', NULL, 8, NULL),
(2501, 2500, 'Triiodothyronine (T3)', NULL, 'SERUM', 'ng/ml', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">0 - 1 Month: 0.6 - 1.8</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">1-24 Months: 0.9 - 2.0</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">2-10 Yrs: 1.5 - 2.4</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">11 - 14 Yrs: 1.4 - 2.2</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">15 - 17 Yrs: 1.4 -2.1</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">18 Yrs & above: 0.87 - 1.78</span><br></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-18 12:14:47', '2025-05-27 12:43:52', NULL, 8, NULL),
(2502, 2500, 'Thyroxine (T4)', NULL, 'SERUM', 'μg/dl', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">0 - 11 Month: 7.8 - 16.5</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">1 Yrs - 100 yrs : 5.1 - 14.1</span><br></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-18 12:14:47', '2025-05-27 12:43:52', NULL, 8, NULL),
(2503, 2500, 'TSH (Thyroid Stimulating Hormone)', NULL, 'SERUM', 'μIU/ml', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">1 - 3 Days: Less than 13.3</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">1-4 Weeks: 0.6 - 10.0</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">1 Month - 5 Yrs: 0.46 - 8.10</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">6-18 Yrs: 0.37 - 6.00</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">More than 18 Yrs: 0.34 - 5.60</span><br></p><div><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><br></span></div>', 'text', 0, 0, 0, 0, NULL, '2024-08-18 12:14:47', '2025-05-27 12:43:52', NULL, 8, NULL),
(2504, 0, 'TSH (THYROID STIMULATING HORMONE)', '-', '-', NULL, NULL, '', 0, 100, 0, 0, NULL, '2024-08-18 12:15:29', '2024-08-18 12:15:29', NULL, 8, NULL),
(2505, 2504, 'TSH', NULL, '-', 'μIU/ml', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">1 - 3 Days: Less than 13.3</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">1-4 Weeks: 0.6 - 10.0</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">1 Month - 5 Yrs: 0.46 - 8.10</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">6-18 Yrs: 0.37 - 6.00</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">More than 18 Yrs: 0.34 - 5.60</span><br><br></p>', 'text', 0, 0, 0, 0, NULL, '2024-08-18 12:15:29', '2024-08-18 12:15:29', NULL, 8, NULL),
(2506, 0, 'BLOOD SUGAR Fasting, PP, Random, SERUM', 'Fasting', 'BLOOD', NULL, NULL, '', 0, 100, 0, 0, NULL, '2024-10-04 16:18:24', '2024-10-04 16:18:24', NULL, 6, NULL),
(2507, 2506, 'BLOOD SUGAR FASTING', NULL, 'BLOOD', 'mg/dL', '<p>60 - 110</p>', 'text', 0, 0, 0, 0, NULL, '2024-10-04 16:18:24', '2024-10-04 16:18:24', NULL, 6, NULL),
(2508, 2506, 'BLOOD SUGAR PP', NULL, 'BLOOD', 'mg/dL', '<p>70 - 180</p>', 'text', 0, 0, 0, 0, NULL, '2024-10-04 16:18:24', '2024-10-04 16:18:24', NULL, 6, NULL),
(2509, 2506, 'BLOOD SUGAR RANDOM', NULL, 'BLOOD', 'mg/dL', '<p>70 - 160&nbsp;</p>', 'text', 0, 0, 0, 0, NULL, '2024-10-04 16:18:24', '2024-10-04 16:18:24', NULL, 6, NULL),
(2510, 2506, 'SERUM URIC ACID', NULL, 'BLOOD', 'mg/dL', '<p>205 - 7.2</p>', 'text', 0, 0, 0, 0, NULL, '2024-10-04 16:18:24', '2024-10-04 16:18:24', NULL, 6, NULL),
(2511, 1481, 'EXAMPLE', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-10-05 18:08:08', '2024-10-05 18:11:15', '2024-10-05 18:11:15', 1, 'tEST'),
(2512, 2394, 'BILIRUBIN TOTAL', NULL, '-', 'mg/dl', '<p>0.0 - 1.0&nbsp;</p>', 'text', 0, 0, 0, 0, NULL, '2024-10-05 18:33:00', '2024-10-05 18:34:56', '2024-10-05 18:34:56', 6, NULL),
(2513, 2394, 'BILIRUBIN DIRECT', NULL, '-', 'mg/dl', '<p>&lt; 0.25</p>', 'text', 0, 0, 0, 0, NULL, '2024-10-05 18:33:00', '2024-10-05 18:35:03', '2024-10-05 18:35:03', 6, NULL),
(2514, 2394, 'BILIRUBIN INDIRECT', NULL, '-', 'mg/dl', '<p>0.00-0.70</p>', 'text', 0, 0, 0, 0, NULL, '2024-10-05 18:33:00', '2024-10-05 18:35:05', '2024-10-05 18:35:05', 6, NULL),
(2515, 2394, 'TOTAL BILIRUBIN', NULL, 'SERUM', 'mg/dl', '<p>0.2-1.0 mg/dl</p>', 'text', 0, 0, 1, 0, NULL, '2024-10-05 18:47:45', '2025-06-11 15:14:45', NULL, 6, NULL),
(2516, 2394, 'DIRECT BILIRUBIN', NULL, 'SERUM', 'mg/dl', '<p>0.0.02 mg/dl</p>', 'text', 0, 0, 1, 0, NULL, '2024-10-05 18:47:45', '2025-06-11 15:14:45', NULL, 6, NULL),
(2517, 2394, 'IN-DIRECT BILIRUBIN', NULL, 'SERUM', 'mg/dl', '<br>', 'text', 0, 0, 1, 0, NULL, '2024-10-05 18:47:45', '2025-06-11 15:14:45', NULL, 6, NULL),
(2518, 2394, 'SGOT', NULL, 'SERUM', 'U/L', '<p>5 - 40 U/L<br></p>', 'text', 0, 0, 1, 0, NULL, '2024-10-05 18:47:45', '2025-06-11 15:14:45', NULL, 6, NULL),
(2519, 2394, 'SGPT', NULL, 'SERUM', 'U/L', '<p>5 - 40 U/L<br></p>', 'text', 0, 0, 1, 0, NULL, '2024-10-05 18:47:45', '2025-06-11 15:14:45', NULL, 6, NULL),
(2520, 2394, 'ALKALINE PHOSPHATE', NULL, 'SERUM', 'IU/L', '<p>60 - 140 IU/L<br></p>', 'text', 0, 0, 1, 0, NULL, '2024-10-05 18:47:45', '2025-06-11 15:14:45', NULL, 6, NULL),
(2521, 2394, 'TOTAL PROTEIN', NULL, 'SERUM', 'g/dl', '<p>6.0 - 8.5 g/dl&nbsp;</p>', 'text', 0, 0, 1, 0, NULL, '2024-10-05 18:47:45', '2025-06-11 15:14:45', NULL, 6, NULL),
(2522, 2394, 'ALBUMIN', NULL, 'SERUM', 'g/dL', '<p>3.2 - 5.5 g/dl<br></p>', 'text', 0, 0, 1, 0, NULL, '2024-10-05 18:47:45', '2025-06-11 15:14:45', NULL, 6, NULL),
(2523, 1188, '17 ALPHA HYDROXYPROGESTERONE;17-ALPHA OHP, SERUM', NULL, 'SERUM', 'ng/ml', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Children: 0.2 - 0.9</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Men: 0.2 - 2.3</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Women: Follicular Phase:0.2-1.3</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Luteal Phase: 1.0-4.5</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Postmenopausal: 0.2-0.9</span><br></p>', 'text', 0, 0, 1, 0, NULL, '2024-10-05 20:06:15', '2024-10-05 20:07:24', '2024-10-05 20:07:24', 1, NULL),
(2524, 1188, '17 ALPHA HYDROXYPROGESTERONE;17-ALPHA OHP, SERUM', NULL, 'SERUM', 'ng/ml', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Children: 0.2 - 0.9</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Men: 0.2 - 2.3</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Women: Follicular Phase:0.2-1.3</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Luteal Phase: 1.0-4.5</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Postmenopausal: 0.2-0.9</span><br></p>', 'text', 0, 0, 0, 0, NULL, '2024-10-05 20:06:32', '2024-10-05 20:07:26', '2024-10-05 20:07:26', 1, NULL),
(2525, 1188, '17 ALPHA HYDROXYPROGESTERONE;17-ALPHA OHP, SERUM', NULL, 'SERUM', 'ng/ml', '<p><br></p>', 'text', 0, 0, 1, 0, NULL, '2024-10-05 20:06:32', '2024-10-05 23:39:54', NULL, 1, NULL),
(2526, 1188, '17 ALPHA HYDROXYPROGESTERONE;17-ALPHA OHP, SERUM', NULL, 'SERUM', 'ng/ml', '<p><br></p>', 'text', 0, 0, 1, 0, NULL, '2024-10-05 20:07:29', '2024-10-05 20:08:21', '2024-10-05 20:08:21', 1, NULL),
(2527, 1188, 'dsdsf', NULL, 'SERUM', 'dfsf', '', 'text', 0, 0, 0, 0, NULL, '2024-10-05 20:38:21', '2024-10-05 23:39:49', '2024-10-05 23:39:49', 1, NULL),
(2528, 1188, 'ds', NULL, 'SERUM', 'd', '<p>d</p>', 'select', 0, 0, 0, 0, NULL, '2024-10-05 20:40:09', '2024-10-05 23:39:51', '2024-10-05 23:39:51', 1, NULL),
(2529, 1188, 'sd', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-10-05 22:52:16', '2024-10-05 22:52:26', '2024-10-05 22:52:26', 1, ''),
(2530, 1188, 'sd', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2024-10-05 22:54:08', '2024-10-05 22:56:00', '2024-10-05 22:56:00', 1, 'sd'),
(2531, 2394, 'GLOBULIN', NULL, 'SERUM', 'g/dL', '<p>2.3 - 3.5  g/dl</p>', 'text', 0, 0, 1, 0, NULL, '2024-11-18 15:52:19', '2025-06-11 15:14:45', NULL, 6, NULL),
(2532, 2394, 'Albumin / Globulin Ratio ( A/G )', NULL, 'SERUM', '', '<p><br></p>', 'text', 0, 0, 1, 0, NULL, '2024-11-18 15:52:19', '2025-06-11 15:14:45', NULL, 6, NULL),
(2533, 0, 'Complete Blood Picture - CBP', 'CBP', 'Blood', NULL, NULL, '', 0, 300, 0, 0, NULL, '2025-05-14 21:53:30', '2025-05-16 13:59:33', NULL, 1, NULL),
(2534, 2533, 'Hemoglobin', NULL, 'Blood', 'gms%', '<p>Male       : 13.5 - 18.0 gms%</p><p>Female  : 11.5 - 16.0 gms%</p>', 'text', 0, 0, 0, 0, NULL, '2025-05-14 21:53:30', '2025-06-12 01:18:59', NULL, 1, NULL),
(2535, 2533, 'Total RBC Count', NULL, 'Blood', 'mil/Cumm', '<p>(M) 4.5 - 6.0 <span style=\"font-size: 0.875rem;\">mil /Cumm</span></p><p>(F) 3.5 - 5.5 mil /Cumm</p>', 'text', 0, 0, 0, 0, NULL, '2025-05-14 21:53:30', '2025-06-12 01:18:59', NULL, 1, NULL),
(2536, 2533, 'Total WBC Count', NULL, 'Blood', '/Cumm', '<p>4000 - 11000 /Cumm</p>', 'text', 0, 0, 0, 0, NULL, '2025-05-14 21:53:30', '2025-06-12 01:18:59', NULL, 1, NULL),
(2537, 2533, 'Platelet Count', NULL, 'Blood', 'Lakhs/Cumm', '1.5 - 4.0 Lakhs/ Cumm', 'text', 0, 0, 0, 0, NULL, '2025-05-14 21:53:30', '2025-06-12 01:18:59', NULL, 1, NULL),
(2538, 2533, 'PCV', NULL, 'Blood', 'Vol%', '<p>40 - 50 Vol %</p>', 'text', 0, 0, 0, 0, NULL, '2025-05-14 21:53:30', '2025-06-12 01:18:59', NULL, 1, NULL),
(2539, 2533, 'MCV', NULL, 'Blood', 'f1', '<p>83 - 101 f1</p>', 'text', 0, 0, 0, 0, NULL, '2025-05-14 21:53:30', '2025-06-12 01:18:59', NULL, 1, NULL),
(2540, 2533, 'MCH', NULL, 'Blood', 'pg', '<p>27 - 32 pg</p>', 'text', 0, 0, 0, 0, NULL, '2025-05-14 21:53:30', '2025-06-12 01:18:59', NULL, 1, NULL),
(2541, 2533, 'MCHC', NULL, 'Blood', 'gm/dl', '<p>31.5 - 34.5 gm/dl</p>', 'text', 0, 0, 0, 0, NULL, '2025-05-14 21:53:30', '2025-06-12 01:18:59', NULL, 1, NULL),
(2542, 2533, 'Differential Count', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2025-05-14 21:53:30', '2025-06-12 01:18:59', NULL, 1, ''),
(2543, 2533, 'Neutrophils', NULL, 'Blood', '%', '<p>40-70%</p>', 'text', 0, 0, 0, 0, NULL, '2025-05-14 21:53:30', '2025-06-12 01:18:59', NULL, 1, NULL),
(2544, 2533, 'Lymphocytes', NULL, 'Blood', '%', '<p>20 - 40</p>', 'text', 0, 0, 0, 0, NULL, '2025-05-14 21:53:30', '2025-06-12 01:18:59', NULL, 1, NULL),
(2545, 2533, 'Eosinophils', NULL, 'Blood', '%', '<p>01 - 06</p>', 'text', 0, 0, 0, 0, NULL, '2025-05-14 21:53:30', '2025-06-12 01:18:59', NULL, 1, NULL),
(2546, 2533, 'Monophils', NULL, 'Blood', '%', '<p>03 - 08</p>', 'text', 0, 0, 0, 0, NULL, '2025-05-14 21:53:30', '2025-06-12 01:18:59', NULL, 1, NULL),
(2547, 2533, 'Basophils', NULL, 'Blood', '%', '<p>00 - 01</p>', 'text', 0, 0, 0, 0, NULL, '2025-05-14 21:53:30', '2025-06-12 01:18:59', NULL, 1, NULL),
(2548, 2250, 'URINE SUGAR ( Optional )', NULL, '-', 'N/R', '', 'text', 0, 0, 0, 0, NULL, '2025-05-17 13:04:23', '2025-05-17 14:42:19', NULL, 6, NULL),
(2549, 2382, 'LDL', NULL, 'SERUM', 'MG', '', 'text', 0, 0, 0, 0, NULL, '2025-05-21 20:31:47', '2025-05-21 20:39:59', '2025-05-21 20:39:59', 6, NULL),
(2550, 2382, 'TCHOL/HDL Ratio', NULL, 'SERUM', '', '<p>1.3 - 5.0 Ratio</p>', 'text', 0, 0, 0, 0, NULL, '2025-05-21 21:16:58', '2025-06-11 14:28:01', NULL, 6, NULL),
(2551, 2382, 'TCHOL/TGL Ratio', NULL, 'SERUM', '', '<p>1.5 - 3.5 Ratio</p>', 'text', 0, 0, 0, 0, NULL, '2025-05-21 21:16:58', '2025-06-11 14:28:01', NULL, 6, NULL),
(2552, 2382, 'LDL/HDL Ratio', NULL, 'SERUM', '', '<p><br></p>', 'text', 0, 0, 0, 0, NULL, '2025-05-21 21:16:58', '2025-06-11 14:28:01', NULL, 6, NULL),
(2553, 1206, 'ACID PHOSPHOTASE - PROSTATIC FRACTION', NULL, '-', 'ng/ml', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Lessthan or Equal 2</span></p>', 'text', 0, 0, 0, 0, NULL, '2025-06-12 02:30:56', '2025-06-12 02:30:56', NULL, 1, NULL),
(2554, 1206, 'Note:', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2025-06-12 02:30:56', '2025-06-12 02:30:56', NULL, 1, 'Serum markers are not specific for malignancy and values may vary by method.'),
(2555, 1206, 'Limitations:', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2025-06-12 02:30:56', '2025-06-12 02:30:56', NULL, 1, 'Prostatic Acid Phosphatase (PAP) must not be regarded as an absolute test for malignancy since other factors, including benign prostatic hyperplasia, prostatic infarction, and manipulation of the prostate gland may result in elevated serum PAP concentration.\r\nPAP measurements provide little additional information beyond that provided by PSA measurements.\r\nHuman anti-mouse antibodies (HAMA) may be present in specimens from patients who have received immunotherapy utilizing monoclonal antibodies. Other heterophile antibodies also may be present in patient specimens. This assay has been specifically formulated to minimize the effects of these antibodies on the assay. However, carefully evaluate results from patients known to have such antibodies.'),
(2556, 1210, 'ACETYL CHOLINE RECEPTOR BINDING ANTIBODY', NULL, '-', 'nmol/L', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Lessthan 0.40 : Negative</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">0.40 - 0.50 : Equivocal</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">> 0.50 : Positive. Results to be</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">clinically correlated.</span><br></p>', 'text', 0, 0, 0, 0, NULL, '2025-06-12 02:32:28', '2025-06-12 02:33:26', '2025-06-12 02:33:26', 1, NULL),
(2557, 1210, 'Notes:', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2025-06-12 02:32:28', '2025-06-12 02:33:29', '2025-06-12 02:33:29', 1, 'Comments\r\nMyasthenia gravis (MG) is characterized by weakness and easy fatigability that is relieved by rest and Anticholinesterase drugs. The weakness results from an autoantibody-mediated loss of functional acetylcholine receptors in the post-synaptic membrane of skeletal muscle. These antibodies are not found in congenital forms of MG and are uncommon in neurologic conditions other than Acquired MG. Patients with autoimmune liver disease may also be seropositive.\r\nClinical Uses\r\nConfirm the diagnosis of Myasthenia gravis · Distinguish acquired disease (90% positive) from Congenital disease (negative) · Detecting subclinical MG in patients with Thymoma or Graft versus Host disease · Monitoring disease progression in MG or response to Immunotherapy'),
(2558, 1210, 'ACETYL CHOLINE RECEPTOR BINDING ANTIBODY', NULL, '-', 'nmol/L', '<p><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">Lessthan 0.40 : Negative</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">0.40 - 0.50 : Equivocal</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">> 0.50 : Positive. Results to be</span><br style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\"><span style=\"color: rgb(33, 37, 41); font-family: system-ui; font-size: 13px;\">clinically correlated.</span><br></p>', 'text', 0, 0, 0, 0, NULL, '2025-06-12 02:33:31', '2025-06-12 02:36:40', '2025-06-12 02:36:40', 1, NULL),
(2559, 1210, 'Notes:', NULL, NULL, NULL, NULL, '', 0, 0, 0, 1, NULL, '2025-06-12 02:33:31', '2025-06-12 02:36:35', '2025-06-12 02:36:35', 1, 'Comments\r\nMyasthenia gravis (MG) is characterized by weakness and easy fatigability that is relieved by rest and Anticholinesterase drugs. The weakness results from an autoantibody-mediated loss of functional acetylcholine receptors in the post-synaptic membrane of skeletal muscle. These antibodies are not found in congenital forms of MG and are uncommon in neurologic conditions other than Acquired MG. Patients with autoimmune liver disease may also be seropositive.\r\nClinical Uses\r\nConfirm the diagnosis of Myasthenia gravis · Distinguish acquired disease (90% positive) from Congenital disease (negative) · Detecting subclinical MG in patients with Thymoma or Graft versus Host disease · Monitoring disease progression in MG or response to Immunotherapy');

-- --------------------------------------------------------

--
-- Table structure for table `test_comments`
--

CREATE TABLE `test_comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `test_id` int(11) DEFAULT NULL,
  `comment` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `test_comments`
--

INSERT INTO `test_comments` (`id`, `test_id`, `comment`, `created_at`, `updated_at`) VALUES
(1, 1372, 'Carbamazepine (Tegretol) is commonly used in the treatment of Generalized tonic-clonic, Partial &amp; Partial complex seizures. It has also been used in the treatment of pain associated with Trigeminal neuralgia. In early stages of therapy the half life is approximately 24 hours whereas in chronic therapy it is reduced to 15 to 20 hours. Due to relatively long half life of Carbamazepine, the specimen yielding most useful information is the trough concentration. Peak levels collected 4-8 hours after the oral dose is recommended in cases suspected of mild intoxication. Any reduction in liver function results in drug accumulation. The active metabolite is carbamazepine 10, 11 epoxide, which can also have therapeutic and toxic effects, especially in children.', '2024-08-15 12:25:04', '2024-08-15 12:25:04'),
(2, 1552, 'Lead is the most ubiquitous toxic metal detectable in practically all phases of the inert environment and in all biological systems. Industrial exposure to lead is seen in industries manufacturing lead containing paints & ceramic glazes, batteries, water pipes & ammunition. Major exposure of the general population is through food & water. Lead containing toys & paints are a primary source of lead exposure in children. Centre for Disease Control (CDC) recommends universal screening of children from 6 months of age. Acute toxicity isuncommon as compared to chronic toxicity leading to intellectual deficit and lead induced anemias in children.', '2024-08-15 15:50:58', '2024-08-15 15:50:58'),
(3, 1651, '• Phenytoin or Eptoin or Dilatin are different names of the drug.• Concentration above the therapeutic range of 10 to 20 μg/ml can result in toxic effects, which include nystagmus, ataxia, drowsiness, tremor, confusion and psychiatric disturbances.\r\n• Routine monitoring of serum phenytoin concentrations is necessary to maintain therapeutic efficacy and avoid toxicity.\r\n• For diagnostic purpose, results should always be assessed in conjunction with the time of blood collection, dosage and other medical history, clinical examination and related findings.', '2024-08-15 18:56:28', '2024-08-15 18:56:28'),
(4, 1706, 'Method: One step malaria Antigen Rapid Test', '2024-08-15 19:10:52', '2024-08-15 19:10:52'),
(5, 1772, 'Syphilis is a chronic infection that progresses through distinct stages namely Primary, Secondary, Tertiary & Quarternary producing diverse clinical symptoms. The infection is caused by the Spirochaete Treponema acquired usually by sexual contact although the disease may be transmitted through blood transfusion and intra-uterine infection. Positive results indicate both past or present infections. False positive results are seen in patients suffering from Leprosy, Infectious mononucleosis and Connective tissue disorders. This test does not distinguish between Syphilis and other pathogenic treponemal infections. All positive results should be confirmed with FTA-ABS ( Fluorescent Treponemal Antibodies) test', '2024-08-15 19:29:23', '2024-08-15 19:29:23'),
(6, 1774, 'Transferrin is a transport protein which transfers ferric iron from iron stores to bone marrow. In response to short term iron deficiency, transferrin levels rise markedly to twice the normal levels or higher. An elevated level on electrophoresis can have the appearance of a paraprotein in cases of severe iron deficiency. Administration of iron to deficient patients increases the saturation followed by return of transferrin to normal level. Chronic saturation of transferrin occurs in Idiopathic hemachromatosis and Transfusional hemosiderosis. In severe cases of Protein losing nephropathy, transferrin is lost from the circulation in the urine carrying iron with it, thus leading to Hypochromic anemia. Simultaneous measurement of transferrin with ferritin helps to differentiate anemia due to iron deficiency and chronic inflammation.', '2024-08-15 19:30:54', '2024-08-15 19:30:54'),
(7, 1914, 'Herpes simplex virus (HSV) types 1 and 2 are members of the Herpesviridae family, and produce infections that may range from mild stomatitis to disseminated and fatal disease. Infections with HSV types 1 and 2 can differ significantly in their clinical manifestations and severity which can range from gingivostomatitis, keratitis, encephalitis, vesicular skin eruptions, aseptic meningitis, neonatal herpes, genital tract infections, and disseminated primary infection. HSV type 2 primarily causes urogenital infections and is found almost exclusively in adults. HSV type 1 is closely associated with orolabial infection, although genital infection with this virus can be common in certain populations. Once infection occurs, HSV persists in a latent state in sensory ganglia from where it may re-emerge to cause periodic recurrence of infection induced by many stimuli, which may or may not result in clinical lesions. Asymptomatic infections may occur in healthy individuals and during pregnancy. In immunocompromised patients the disease is more severe and they are more likely to have frequent HSV recurrences. This suggests that serum antibody and virus-specific cell-mediated immunity contribute to recovery. Pregnant women who develop genital herpes are two to three times more likely to have spontaneous abortions or deliver a premature infant than are pregnant non-infected women. Infection in neonates occur during passage through birth canal and may result in neurological damage.', '2024-08-15 20:45:32', '2024-08-15 20:45:32'),
(8, 1966, '1 .This assay is used for quantitative detection of specific IgG antibodies to Rubella virus in serum samples.\r\n2. Positive result indicates past infection with Rubella virus or successful immunization. High or increasing Rubella IgG levels in the first year of life, in absence of vaccination or significant risk of postnatal Rubella,are consistent with Congenital Rubella Syndrome (CRS).\r\n3. Negative result indicates person has not been immunized or exposed to Rubella virus in the past.Patients with negative results in suspected disease should be re-tested after 10-14 days. Falsenegative results can be due to immunosuppression or due to low/undetectable level of IgG antibodies.\r\n4. To differentiate between recent and past infection, Rubella IgG avidity test is indicated.\r\n5. The result should be interpreted in conjunction with clinical finding and other diagnostic tests.', '2024-08-15 21:47:17', '2024-08-15 21:47:17'),
(9, 2054, 'Beta hydroxybutyrate, a predominant ketone is an extremely reliable guide for monitoring insulin therapy in the treatment of Diabetic Ketoacidosis (DKA). During successful therapy, Total ketones & Beta Hydroxybutyrate decreases but Acetoacetate increases. It may produce a paradoxical situation, as ketosis may appear to worsen because most of the tests for ketosis detects acetoacetate only whereas Beta hydroxybutyrate measurement quantitates this decrease. Its production increases during decreased carbohydrate availability as in starvation & frequent vomiting or decreased carbohydrate utilization as in Diabetes Mellitus, Glycogen storage diseases, Alkalosis & Salicylate poisoning.\r\nUsage\r\nMonitoring therapy for Diabetic ketoacidosis ·\r\nInvestigating the differential diagnosis in cases of hypoglycemia, acidosis, suspected alcohol ingestion, or an unexplained increase in the anion gap ·\r\nIn pediatric patients, the presence or absence of ketonemia/uria is an essential component in the differential diagnosis of inborn errors of metabolism', '2024-08-15 22:32:01', '2024-08-15 22:32:01');

-- --------------------------------------------------------

--
-- Table structure for table `test_consumptions`
--

CREATE TABLE `test_consumptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `testable_type` varchar(191) DEFAULT NULL,
  `testable_id` bigint(20) UNSIGNED DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `quantity` double(8,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `test_options`
--

CREATE TABLE `test_options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `test_id` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `test_options`
--

INSERT INTO `test_options` (`id`, `name`, `test_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'A ( - VE )', 1332, NULL, '2024-08-15 12:14:15', '2024-10-05 18:06:01'),
(2, 'B ( - VE )', 1332, NULL, '2024-08-15 12:14:15', '2024-10-05 18:06:01'),
(3, 'AB ( - VE )', 1332, NULL, '2024-08-15 12:14:15', '2024-10-05 18:06:01'),
(4, 'O ( - VE )', 1332, NULL, '2024-08-15 12:14:15', '2024-10-05 18:06:01'),
(5, 'A1B1', 1332, '2024-10-05 18:03:35', '2024-08-15 12:14:15', '2024-10-05 18:03:35'),
(6, 'Positive', 1333, NULL, '2024-08-15 12:14:15', '2024-10-05 18:06:01'),
(7, 'Negative', 1333, NULL, '2024-08-15 12:14:15', '2024-10-05 18:06:01'),
(8, 'Colourless', 1390, '2024-08-15 12:38:49', '2024-08-15 12:34:35', '2024-08-15 12:38:49'),
(9, 'Reddish', 1390, '2024-08-15 12:38:49', '2024-08-15 12:34:35', '2024-08-15 12:38:49'),
(10, 'Turbid', 1390, '2024-08-15 12:38:49', '2024-08-15 12:34:35', '2024-08-15 12:38:49'),
(11, 'Crystal Clear', 1391, '2024-08-15 12:41:55', '2024-08-15 12:34:35', '2024-08-15 12:41:55'),
(12, 'Hemorrhagic', 1391, '2024-08-15 12:41:55', '2024-08-15 12:34:35', '2024-08-15 12:41:55'),
(13, '1', 1392, '2024-08-15 12:41:56', '2024-08-15 12:34:35', '2024-08-15 12:41:56'),
(14, '2', 1392, '2024-08-15 12:41:56', '2024-08-15 12:34:35', '2024-08-15 12:41:56'),
(15, '3', 1392, '2024-08-15 12:41:56', '2024-08-15 12:34:35', '2024-08-15 12:41:56'),
(16, 'Absent', 1393, '2024-08-15 12:41:59', '2024-08-15 12:34:35', '2024-08-15 12:41:59'),
(17, 'Present', 1393, '2024-08-15 12:41:59', '2024-08-15 12:34:35', '2024-08-15 12:41:59'),
(18, 'Absent', 1394, '2024-08-15 12:42:00', '2024-08-15 12:34:35', '2024-08-15 12:42:00'),
(19, 'Present', 1394, '2024-08-15 12:42:00', '2024-08-15 12:34:35', '2024-08-15 12:42:00'),
(20, 'Turbid', 1401, NULL, '2024-08-15 12:45:33', '2024-08-15 12:45:33'),
(21, 'Colourless', 1401, NULL, '2024-08-15 12:45:33', '2024-08-15 12:45:33'),
(22, 'Reddish', 1401, NULL, '2024-08-15 12:45:33', '2024-08-15 12:45:33'),
(23, 'Hemorrhagic', 1402, NULL, '2024-08-15 12:45:33', '2024-08-15 12:45:33'),
(24, 'Crystal Clear', 1402, NULL, '2024-08-15 12:45:33', '2024-08-15 12:45:33'),
(25, '1', 1403, NULL, '2024-08-15 12:45:33', '2024-08-15 12:45:33'),
(26, '2', 1403, NULL, '2024-08-15 12:45:33', '2024-08-15 12:45:33'),
(27, '4', 1403, NULL, '2024-08-15 12:45:33', '2024-08-15 12:45:33'),
(28, 'Present', 1404, NULL, '2024-08-15 12:45:33', '2024-08-15 12:45:33'),
(29, 'Absent', 1404, NULL, '2024-08-15 12:45:33', '2024-08-15 12:45:33'),
(30, 'Present', 1405, NULL, '2024-08-15 12:45:33', '2024-08-15 12:45:33'),
(31, 'Absent', 1405, NULL, '2024-08-15 12:45:33', '2024-08-15 12:45:33'),
(32, 'Normocytic Normochromic', 1433, '2024-10-04 13:59:53', '2024-08-15 12:59:16', '2024-10-04 13:59:53'),
(33, 'Microcytosis(+), Hypochromasia(+)', 1433, '2024-10-04 13:59:53', '2024-08-15 12:59:16', '2024-10-04 13:59:53'),
(34, 'Microcytosis (+), Hypochromasia(+), Anisopoikilocytosis (+), Tear drop cells (+)', 1433, '2024-10-04 13:59:53', '2024-08-15 12:59:16', '2024-10-04 13:59:53'),
(35, 'Microcytosis (+), Hypochromasia (+), Anisopoikilocytosis (+), Pencil ceils(+), Tear drop cells (+)', 1433, '2024-10-04 13:59:53', '2024-08-15 12:59:16', '2024-10-04 13:59:53'),
(36, 'Microcytosis (+), Hypochromasia(+), Anisopoikilocytosis (++), Tear drop cells (+), Pencil Cells(+)', 1433, '2024-10-04 13:59:53', '2024-08-15 12:59:16', '2024-10-04 13:59:53'),
(37, 'Macrocytic Normochromic', 1433, '2024-10-04 13:59:53', '2024-08-15 12:59:16', '2024-10-04 13:59:53'),
(38, 'Macrocytosis(+), Normochromasia, Anisopoikilocytosis(+), Macro-ovalocytes seen', 1433, '2024-10-04 13:59:53', '2024-08-15 12:59:16', '2024-10-04 13:59:53'),
(39, 'Normocytic Normochromic, Macrocytes(+)', 1433, '2024-10-04 13:59:53', '2024-08-15 12:59:16', '2024-10-04 13:59:53'),
(40, 'Microcytosis(+), Hypochromasia(+), Anisocytosis(+)', 1433, '2024-10-04 13:59:53', '2024-08-15 12:59:16', '2024-10-04 13:59:53'),
(41, 'Within normal limits', 1434, '2024-10-04 13:59:59', '2024-08-15 12:59:16', '2024-10-04 13:59:59'),
(42, 'Leucocytosis', 1434, '2024-10-04 13:59:59', '2024-08-15 12:59:16', '2024-10-04 13:59:59'),
(43, 'Leucocytosis	Mild EosinophilaLeucopenia', 1434, '2024-10-04 13:59:59', '2024-08-15 12:59:16', '2024-10-04 13:59:59'),
(44, 'Mild Eosinophila', 1434, '2024-10-04 13:59:59', '2024-08-15 12:59:16', '2024-10-04 13:59:59'),
(45, 'Neutrophilic leucocytosis', 1434, '2024-10-04 13:59:59', '2024-08-15 12:59:16', '2024-10-04 13:59:59'),
(46, 'Lymphocytosis', 1434, '2024-10-04 13:59:59', '2024-08-15 12:59:16', '2024-10-04 13:59:59'),
(47, 'Neutrophilic Predominance', 1434, '2024-10-04 13:59:59', '2024-08-15 12:59:16', '2024-10-04 13:59:59'),
(48, 'Leucocytosis, Eosinophilia', 1434, '2024-10-04 13:59:59', '2024-08-15 12:59:16', '2024-10-04 13:59:59'),
(49, 'Neutrophilic leucocytosis with shift to left seen', 1434, '2024-10-04 13:59:59', '2024-08-15 12:59:16', '2024-10-04 13:59:59'),
(50, 'Marked Eosinophilia', 1434, '2024-10-04 13:59:59', '2024-08-15 12:59:16', '2024-10-04 13:59:59'),
(51, 'Few reactive lymphocytes seen', 1434, '2024-10-04 13:59:59', '2024-08-15 12:59:16', '2024-10-04 13:59:59'),
(52, 'Leucopenia, Few reactive lymphocytes seen', 1434, '2024-10-04 13:59:59', '2024-08-15 12:59:16', '2024-10-04 13:59:59'),
(53, 'Eosinophilia', 1434, '2024-10-04 13:59:59', '2024-08-15 12:59:16', '2024-10-04 13:59:59'),
(54, 'Adequate', 1435, '2024-10-04 14:00:04', '2024-08-15 12:59:16', '2024-10-04 14:00:04'),
(55, 'Adequate Few giant platelets seen', 1435, '2024-10-04 14:00:04', '2024-08-15 12:59:16', '2024-10-04 14:00:04'),
(56, 'Adequate on smear', 1435, '2024-10-04 14:00:04', '2024-08-15 12:59:16', '2024-10-04 14:00:04'),
(57, 'Adequate on smear, clumps seen', 1435, '2024-10-04 14:00:04', '2024-08-15 12:59:16', '2024-10-04 14:00:04'),
(58, 'Mild Thrombocytosis', 1435, '2024-10-04 14:00:04', '2024-08-15 12:59:16', '2024-10-04 14:00:04'),
(59, 'Thrombocytopenia, Few giant platelets seen', 1435, '2024-10-04 14:00:04', '2024-08-15 12:59:16', '2024-10-04 14:00:04'),
(60, 'Thrombocytosis', 1435, '2024-10-04 14:00:04', '2024-08-15 12:59:16', '2024-10-04 14:00:04'),
(61, 'Thrombocytopenia', 1435, '2024-10-04 14:00:04', '2024-08-15 12:59:16', '2024-10-04 14:00:04'),
(62, 'Mild Thrombocytopenia, Few giant platelets seen', 1435, '2024-10-04 14:00:04', '2024-08-15 12:59:16', '2024-10-04 14:00:04'),
(63, '<b>Positive</b>', 1479, NULL, '2024-08-15 14:00:30', '2024-08-15 14:00:30'),
(64, 'Negative', 1479, NULL, '2024-08-15 14:00:30', '2024-08-15 14:00:30'),
(65, 'Not Detected', 1551, NULL, '2024-08-15 15:50:02', '2024-08-15 15:50:02'),
(66, 'Detected', 1551, NULL, '2024-08-15 15:50:02', '2024-08-15 15:50:02'),
(67, 'Positive', 1555, NULL, '2024-08-15 15:51:38', '2024-08-15 15:51:38'),
(68, 'Negative', 1555, NULL, '2024-08-15 15:51:38', '2024-08-15 15:51:38'),
(69, 'Negative', 1587, NULL, '2024-08-15 15:59:15', '2024-08-15 15:59:15'),
(70, 'Positive', 1587, NULL, '2024-08-15 15:59:15', '2024-08-15 15:59:15'),
(71, 'Positive', 1602, NULL, '2024-08-15 16:02:25', '2024-08-15 16:02:25'),
(72, 'Negative', 1602, NULL, '2024-08-15 16:02:25', '2024-08-15 16:02:25'),
(73, 'Cervical', 1607, NULL, '2024-08-15 16:09:14', '2024-08-15 16:09:14'),
(74, 'Vaginal Vault', 1607, NULL, '2024-08-15 16:09:14', '2024-08-15 16:09:14'),
(75, 'Satisfactory', 1609, NULL, '2024-08-15 16:09:14', '2024-08-15 16:09:14'),
(76, 'Satisfactory but limited by lack of endocervical cells', 1609, NULL, '2024-08-15 16:09:14', '2024-08-15 16:09:14'),
(77, 'Not satisfactory due to...', 1609, NULL, '2024-08-15 16:09:14', '2024-08-15 16:09:14'),
(78, 'Clean', 1610, NULL, '2024-08-15 16:09:14', '2024-08-15 16:09:14'),
(79, 'Mild Inflammatory', 1610, NULL, '2024-08-15 16:09:14', '2024-08-15 16:09:14'),
(80, 'Mild inflammatory and Hemorrhagic', 1610, NULL, '2024-08-15 16:09:14', '2024-08-15 16:09:14'),
(81, 'Hemorrhagic and Markedly inflammatory', 1610, NULL, '2024-08-15 16:09:14', '2024-08-15 16:09:14'),
(82, 'Inflammatory and Granular', 1610, NULL, '2024-08-15 16:09:14', '2024-08-15 16:09:14'),
(83, 'Moderately Inflammatory', 1610, NULL, '2024-08-15 16:09:14', '2024-08-15 16:09:14'),
(84, 'Single', 1611, NULL, '2024-08-15 16:09:14', '2024-08-15 16:09:14'),
(85, 'Single and in sheets', 1611, NULL, '2024-08-15 16:09:14', '2024-08-15 16:09:14'),
(86, 'Single and in clusters', 1611, NULL, '2024-08-15 16:09:14', '2024-08-15 16:09:14'),
(87, 'Mainly superficial cells & Intermediate cells', 1612, NULL, '2024-08-15 16:09:14', '2024-08-15 16:09:14'),
(88, 'Mainly Intermediate', 1612, NULL, '2024-08-15 16:09:14', '2024-08-15 16:09:14'),
(89, 'Predominantly, Parabasal', 1612, NULL, '2024-08-15 16:09:14', '2024-08-15 16:09:14'),
(90, 'Not Seen', 1613, NULL, '2024-08-15 16:09:14', '2024-08-15 16:09:14'),
(91, 'Present', 1613, NULL, '2024-08-15 16:09:14', '2024-08-15 16:09:14'),
(92, 'Seen', 1614, NULL, '2024-08-15 16:09:14', '2024-08-15 16:09:14'),
(93, 'Not Seen', 1614, NULL, '2024-08-15 16:09:14', '2024-08-15 16:09:14'),
(94, 'Present', 1614, NULL, '2024-08-15 16:09:14', '2024-08-15 16:09:14'),
(95, 'Present', 1615, NULL, '2024-08-15 16:09:14', '2024-08-15 16:09:14'),
(96, 'Not seen', 1615, NULL, '2024-08-15 16:09:14', '2024-08-15 16:09:14'),
(97, 'Few', 1616, NULL, '2024-08-15 16:09:14', '2024-08-15 16:09:14'),
(98, '(+)', 1616, NULL, '2024-08-15 16:09:14', '2024-08-15 16:09:14'),
(99, '(++)', 1616, NULL, '2024-08-15 16:09:14', '2024-08-15 16:09:14'),
(100, '(+++)', 1616, NULL, '2024-08-15 16:09:14', '2024-08-15 16:09:14'),
(101, '(++++)', 1616, NULL, '2024-08-15 16:09:14', '2024-08-15 16:09:14'),
(102, 'Not seen', 1617, NULL, '2024-08-15 16:09:14', '2024-08-15 16:09:14'),
(103, 'Present', 1617, NULL, '2024-08-15 16:09:14', '2024-08-15 16:09:14'),
(104, 'Coccobacilli++', 1618, NULL, '2024-08-15 16:09:14', '2024-08-15 16:09:14'),
(105, 'Doderlain bacilli', 1618, NULL, '2024-08-15 16:09:14', '2024-08-15 16:09:14'),
(106, 'Budding Yeasts Morphologically Consistent with candida spp. sen', 1618, NULL, '2024-08-15 16:09:14', '2024-08-15 16:09:14'),
(107, 'Not seen', 1618, NULL, '2024-08-15 16:09:14', '2024-08-15 16:09:14'),
(108, 'Not Seen', 1619, NULL, '2024-08-15 16:09:14', '2024-08-15 16:09:14'),
(109, 'Seen', 1619, NULL, '2024-08-15 16:09:14', '2024-08-15 16:09:14'),
(110, 'Negative for intraepithelial lesion or malignancy', 1621, NULL, '2024-08-15 16:09:14', '2024-08-15 16:09:14'),
(111, 'Negative for intraepithelial lesion or malignancy but limited by lack of endocervical cells', 1621, NULL, '2024-08-15 16:09:14', '2024-08-15 16:09:14'),
(112, 'Change in flora suggestive of bacterial vaginosis', 1621, NULL, '2024-08-15 16:09:14', '2024-08-15 16:09:14'),
(113, 'Reactive cellular changes associated with inflammation', 1621, NULL, '2024-08-15 16:09:14', '2024-08-15 16:09:14'),
(114, 'Suggestive of atrophy', 1621, NULL, '2024-08-15 16:09:14', '2024-08-15 16:09:14'),
(115, 'Suggestive of atrophy Negative for intraepithelial lesion on malignancy', 1621, NULL, '2024-08-15 16:09:14', '2024-08-15 16:09:14'),
(116, 'Fungal organism consistent with candida species', 1621, NULL, '2024-08-15 16:09:14', '2024-08-15 16:09:14'),
(117, 'Low grade squamous intraepithelial lesion (LSIL)', 1621, NULL, '2024-08-15 16:09:14', '2024-08-15 16:09:14'),
(118, 'ASCUS (Atypical squamous cells of undetermined significance)', 1621, NULL, '2024-08-15 16:09:14', '2024-08-15 16:09:14'),
(119, 'high grade squamous intraepithelial lesion(HSIL)', 1621, NULL, '2024-08-15 16:09:14', '2024-08-15 16:09:14'),
(120, 'Malarial Parasite not Detected', 1626, NULL, '2024-08-15 18:49:14', '2024-08-15 18:49:14'),
(121, 'Ring trophozoites of PLASMODIUM VIVAX seen', 1626, NULL, '2024-08-15 18:49:14', '2024-08-15 18:49:14'),
(122, 'Ring trophozoites of PLASMODIUM FALCIPARUM seen', 1626, NULL, '2024-08-15 18:49:14', '2024-08-15 18:49:14'),
(123, 'Ring trophozoites and Schizonts of PLASMODIUM VIVAX seen', 1626, NULL, '2024-08-15 18:49:14', '2024-08-15 18:49:14'),
(124, 'Ring trophozoites and gametocytes of PLASMODIUM FALCIPARUM seen', 1626, NULL, '2024-08-15 18:49:14', '2024-08-15 18:49:14'),
(125, 'Noemocytic Normochromic', 1642, NULL, '2024-08-15 18:55:30', '2024-08-15 18:55:30'),
(126, 'Microcytosis(+), Hypochromasia(+)', 1642, NULL, '2024-08-15 18:55:30', '2024-08-15 18:55:30'),
(127, 'Microcytosis (+), Hypochromasia(+), Anisopoikilocytosis (+), Tear drop cells (+)', 1642, NULL, '2024-08-15 18:55:30', '2024-08-15 18:55:30'),
(128, 'Microcytosis (+), Hypochromasia (+), Anisopoikilocytosis (+), Pencil ceils(+), Tear drop cells (+)', 1642, NULL, '2024-08-15 18:55:30', '2024-08-15 18:55:30'),
(129, 'Microcytosis (+), Hypochromasia(+), Anisopoikilocytosis (++), Tear drop cells (+), Pencil Cells(+)', 1642, NULL, '2024-08-15 18:55:30', '2024-08-15 18:55:30'),
(130, 'Macrocytic Normochromic', 1642, NULL, '2024-08-15 18:55:30', '2024-08-15 18:55:30'),
(131, 'Macrocytosis(+), Normochromasia, Anisopoikilocytosis(+), Macro-ovalocytes seen', 1642, NULL, '2024-08-15 18:55:30', '2024-08-15 18:55:30'),
(132, 'Normocytic Normochromic, Macrocytes(+)', 1642, NULL, '2024-08-15 18:55:30', '2024-08-15 18:55:30'),
(133, 'Microcytosis(+), Hypochromasia(+), Anisocytosis(+)', 1642, NULL, '2024-08-15 18:55:30', '2024-08-15 18:55:30'),
(134, 'Straw', 1663, NULL, '2024-08-15 19:04:18', '2024-08-15 19:04:18'),
(135, 'Reddish', 1663, NULL, '2024-08-15 19:04:18', '2024-08-15 19:04:18'),
(136, 'Turbid', 1664, NULL, '2024-08-15 19:04:18', '2024-08-15 19:04:18'),
(137, 'Clear', 1664, NULL, '2024-08-15 19:04:18', '2024-08-15 19:04:18'),
(138, 'Hemorrhagic', 1664, NULL, '2024-08-15 19:04:18', '2024-08-15 19:04:18'),
(139, '4', 1665, NULL, '2024-08-15 19:04:18', '2024-08-15 19:04:18'),
(140, '10', 1665, NULL, '2024-08-15 19:04:18', '2024-08-15 19:04:18'),
(141, '20', 1665, NULL, '2024-08-15 19:04:18', '2024-08-15 19:04:18'),
(142, 'Not Seen', 1676, NULL, '2024-08-15 19:04:18', '2024-08-15 19:04:18'),
(143, 'Seen', 1676, NULL, '2024-08-15 19:04:18', '2024-08-15 19:04:18'),
(144, 'Negative', 1704, NULL, '2024-08-15 19:09:37', '2024-08-15 19:09:37'),
(145, 'Positive', 1704, NULL, '2024-08-15 19:09:37', '2024-08-15 19:09:37'),
(146, 'Negative', 1707, NULL, '2024-08-15 19:10:52', '2024-08-15 19:10:52'),
(147, '<b>Positive</b>', 1707, NULL, '2024-08-15 19:10:52', '2024-08-15 19:10:52'),
(148, '<b>Positive</b>', 1708, NULL, '2024-08-15 19:10:52', '2024-08-15 19:10:52'),
(149, 'Negative', 1708, NULL, '2024-08-15 19:10:52', '2024-08-15 19:10:52'),
(150, 'Negative', 1720, NULL, '2024-08-15 19:13:35', '2024-08-15 19:13:35'),
(151, 'Positive', 1720, NULL, '2024-08-15 19:13:35', '2024-08-15 19:13:35'),
(152, 'POSITIVE', 1730, NULL, '2024-08-15 19:15:12', '2024-08-15 19:15:12'),
(153, 'NEGATIVE', 1730, NULL, '2024-08-15 19:15:12', '2024-08-15 19:15:12'),
(154, '1:1000    (Low Risk)', 1778, NULL, '2024-08-15 19:36:29', '2024-08-15 19:36:29'),
(155, '1:1461   (Low Risk)', 1778, NULL, '2024-08-15 19:36:29', '2024-08-15 19:36:29'),
(156, '1:1000   (Low Risk)', 1779, NULL, '2024-08-15 19:36:29', '2024-08-15 19:36:29'),
(157, '1:1461   (Low Risk)', 1779, NULL, '2024-08-15 19:36:29', '2024-08-15 19:36:29'),
(158, '1:1000   (Low Risk)', 1780, NULL, '2024-08-15 19:36:29', '2024-08-15 19:36:29'),
(159, '1:1461   (Low Risk)', 1780, NULL, '2024-08-15 19:36:29', '2024-08-15 19:36:29'),
(160, '1:1461    (Low Risk)', 1781, NULL, '2024-08-15 19:36:29', '2024-08-15 19:36:29'),
(161, '1:1000    (Low Risk)', 1781, NULL, '2024-08-15 19:36:29', '2024-08-15 19:36:29'),
(162, '1:1000    (Low Risk)', 1782, NULL, '2024-08-15 19:36:29', '2024-08-15 19:36:29'),
(163, '1:1461    (Low Risk)', 1782, NULL, '2024-08-15 19:36:29', '2024-08-15 19:36:29'),
(164, '1:1000    (Low Risk)', 1783, NULL, '2024-08-15 19:36:29', '2024-08-15 19:36:29'),
(165, '1:1461    (Low Risk)', 1783, NULL, '2024-08-15 19:36:29', '2024-08-15 19:36:29'),
(166, '1:1461    (Low Risk)', 1784, NULL, '2024-08-15 19:36:29', '2024-08-15 19:36:29'),
(167, '1:1000    (Low Risk)', 1784, NULL, '2024-08-15 19:36:29', '2024-08-15 19:36:29'),
(168, '1:1461    (Low Risk)', 1785, NULL, '2024-08-15 19:36:29', '2024-08-15 19:36:29'),
(169, '1:1000    (Low Risk)', 1785, NULL, '2024-08-15 19:36:29', '2024-08-15 19:36:29'),
(170, 'Positive', 1790, NULL, '2024-08-15 19:37:08', '2024-08-15 19:37:08'),
(171, 'Negative', 1790, NULL, '2024-08-15 19:37:08', '2024-08-15 19:37:08'),
(172, 'Non Reactive', 1798, NULL, '2024-08-15 20:05:43', '2024-08-15 20:05:43'),
(173, '<b>Reactive</b>', 1798, NULL, '2024-08-15 20:05:43', '2024-08-15 20:05:43'),
(174, 'Positive', 1811, '2024-10-07 10:41:16', '2024-08-15 20:08:42', '2024-10-07 10:41:16'),
(175, 'Negative', 1811, '2024-10-07 10:41:16', '2024-08-15 20:08:42', '2024-10-07 10:41:16'),
(176, 'Weakly Positive', 1811, '2024-10-07 10:41:16', '2024-08-15 20:08:42', '2024-10-07 10:41:16'),
(177, 'Positive', 1813, NULL, '2024-08-15 20:10:01', '2024-08-15 20:10:01'),
(178, 'Negative', 1813, NULL, '2024-08-15 20:10:01', '2024-08-15 20:10:01'),
(179, 'Positive', 1814, NULL, '2024-08-15 20:10:01', '2024-08-15 20:10:01'),
(180, 'Negative', 1814, NULL, '2024-08-15 20:10:01', '2024-08-15 20:10:01'),
(181, 'Positive', 1825, '2025-05-17 19:11:04', '2024-08-15 20:12:21', '2025-05-17 19:11:04'),
(182, 'Negative', 1825, '2025-05-17 19:11:04', '2024-08-15 20:12:21', '2025-05-17 19:11:04'),
(183, 'NIL', 1825, '2025-05-17 19:11:04', '2024-08-15 20:12:21', '2025-05-17 19:11:04'),
(184, 'Positive', 1848, NULL, '2024-08-15 20:17:46', '2025-05-17 19:29:15'),
(185, 'Negative', 1848, NULL, '2024-08-15 20:17:46', '2025-05-17 19:29:15'),
(186, 'Positive', 1849, NULL, '2024-08-15 20:17:46', '2025-05-17 19:29:15'),
(187, 'Negative', 1849, NULL, '2024-08-15 20:17:46', '2025-05-17 19:29:15'),
(188, 'Negative', 1850, NULL, '2024-08-15 20:17:46', '2025-05-17 19:29:15'),
(189, 'Positive', 1850, NULL, '2024-08-15 20:17:46', '2025-05-17 19:29:15'),
(190, 'Negative', 1853, NULL, '2024-08-15 20:19:05', '2024-08-15 20:19:05'),
(191, '<b>Positive</b>', 1853, NULL, '2024-08-15 20:19:05', '2024-08-15 20:19:05'),
(192, 'Negative', 1854, NULL, '2024-08-15 20:19:05', '2024-08-15 20:19:05'),
(193, '<b>Positive</b>', 1854, NULL, '2024-08-15 20:19:05', '2024-08-15 20:19:05'),
(194, 'Negative', 1855, NULL, '2024-08-15 20:19:05', '2024-08-15 20:19:05'),
(195, '<b>Positive</b>', 1855, NULL, '2024-08-15 20:19:05', '2024-08-15 20:19:05'),
(196, '<b>Positive</b>', 1861, NULL, '2024-08-15 20:20:28', '2024-08-15 20:20:28'),
(197, 'Negative', 1861, NULL, '2024-08-15 20:20:28', '2024-08-15 20:20:28'),
(198, 'Non-Reactive', 1881, NULL, '2024-08-15 20:25:46', '2024-08-15 20:25:46'),
(199, '<b>Reactive</b>', 1881, NULL, '2024-08-15 20:25:46', '2024-08-15 20:25:46'),
(200, 'Non Reactive', 1907, NULL, '2024-08-15 20:42:48', '2025-05-28 16:11:34'),
(201, 'Reactive', 1907, NULL, '2024-08-15 20:42:48', '2025-05-28 16:11:34'),
(202, 'Non Reactive', 1925, NULL, '2024-08-15 20:48:20', '2024-10-06 14:42:37'),
(203, 'Reactive', 1925, NULL, '2024-08-15 20:48:20', '2024-10-06 14:42:37'),
(204, 'Detected', 1928, NULL, '2024-08-15 21:39:46', '2024-08-15 21:39:46'),
(205, 'Not Detected', 1928, NULL, '2024-08-15 21:39:46', '2024-08-15 21:39:46'),
(206, 'Positive', 1954, NULL, '2024-08-15 21:44:43', '2024-08-15 21:44:43'),
(207, 'Negative', 1954, NULL, '2024-08-15 21:44:43', '2024-08-15 21:44:43'),
(208, 'Positive', 1955, NULL, '2024-08-15 21:44:43', '2024-08-15 21:44:43'),
(209, 'Negative', 1955, NULL, '2024-08-15 21:44:43', '2024-08-15 21:44:43'),
(210, 'Negative', 1961, NULL, '2024-08-15 21:45:51', '2025-05-17 19:22:58'),
(211, 'Positive', 1961, NULL, '2024-08-15 21:45:51', '2025-05-17 19:22:58'),
(212, '-', 1971, NULL, '2024-08-15 21:48:28', '2024-08-15 21:48:28'),
(213, 'Negative', 1971, NULL, '2024-08-15 21:48:28', '2024-08-15 21:48:28'),
(214, 'Positive', 1971, NULL, '2024-08-15 21:48:28', '2024-08-15 21:48:28'),
(215, '-', 1972, NULL, '2024-08-15 21:48:28', '2024-08-15 21:48:28'),
(216, 'Negative', 1972, NULL, '2024-08-15 21:48:28', '2024-08-15 21:48:28'),
(217, 'Positive', 1972, NULL, '2024-08-15 21:48:28', '2024-08-15 21:48:28'),
(218, 'Negative', 2000, NULL, '2024-08-15 21:55:10', '2024-08-15 21:55:10'),
(219, 'Positive', 2000, NULL, '2024-08-15 21:55:10', '2024-08-15 21:55:10'),
(220, '-', 2000, NULL, '2024-08-15 21:55:10', '2024-08-15 21:55:10'),
(221, '<b>Reactive</b>', 2002, NULL, '2024-08-15 21:56:01', '2024-08-15 21:56:01'),
(222, 'Non Reactive', 2002, NULL, '2024-08-15 21:56:01', '2024-08-15 21:56:01'),
(223, 'Detected', 2012, NULL, '2024-08-15 22:00:06', '2024-08-15 22:00:06'),
(224, 'Not Detected', 2012, NULL, '2024-08-15 22:00:06', '2024-08-15 22:00:06'),
(225, 'Detected', 2013, NULL, '2024-08-15 22:00:06', '2024-08-15 22:00:06'),
(226, 'Not Detected', 2013, NULL, '2024-08-15 22:00:06', '2024-08-15 22:00:06'),
(227, 'Detected', 2014, NULL, '2024-08-15 22:00:06', '2024-08-15 22:00:06'),
(228, 'Not Detected', 2014, NULL, '2024-08-15 22:00:06', '2024-08-15 22:00:06'),
(229, 'Detected', 2015, NULL, '2024-08-15 22:00:06', '2024-08-15 22:00:06'),
(230, 'Not Detected', 2015, NULL, '2024-08-15 22:00:06', '2024-08-15 22:00:06'),
(231, 'Detected', 2016, NULL, '2024-08-15 22:00:06', '2024-08-15 22:00:06'),
(232, 'Not Detected', 2016, NULL, '2024-08-15 22:00:06', '2024-08-15 22:00:06'),
(233, 'Detected', 2017, NULL, '2024-08-15 22:00:06', '2024-08-15 22:00:06'),
(234, 'Not Detected', 2017, NULL, '2024-08-15 22:00:06', '2024-08-15 22:00:06'),
(235, 'Detected', 2018, NULL, '2024-08-15 22:00:06', '2024-08-15 22:00:06'),
(236, 'Not Detected', 2018, NULL, '2024-08-15 22:00:06', '2024-08-15 22:00:06'),
(237, 'Detected', 2019, NULL, '2024-08-15 22:00:06', '2024-08-15 22:00:06'),
(238, 'Not Detected', 2019, NULL, '2024-08-15 22:00:06', '2024-08-15 22:00:06'),
(239, 'Detected', 2020, NULL, '2024-08-15 22:00:06', '2024-08-15 22:00:06'),
(240, 'Not Detected', 2020, NULL, '2024-08-15 22:00:06', '2024-08-15 22:00:06'),
(241, 'No Agglutination Seen', 2025, '2025-05-17 16:17:48', '2024-08-15 22:03:46', '2025-05-17 16:17:48'),
(242, '1:20', 2025, '2025-05-17 16:18:03', '2024-08-15 22:03:46', '2025-05-17 16:18:03'),
(243, '1:40', 2025, '2025-05-17 16:19:51', '2024-08-15 22:03:46', '2025-05-17 16:19:51'),
(244, '1:80', 2025, '2025-05-17 16:19:54', '2024-08-15 22:03:46', '2025-05-17 16:19:54'),
(245, '<b>Agglutination Seen(1:160)</b>', 2025, '2025-05-17 15:41:13', '2024-08-15 22:03:46', '2025-05-17 15:41:13'),
(246, '<b>Agglutination Seen(1:240)</b>', 2025, '2025-05-17 15:41:16', '2024-08-15 22:03:46', '2025-05-17 15:41:16'),
(247, '<b>Agglutination Seen(1:320)</b>', 2025, '2025-05-17 15:41:18', '2024-08-15 22:03:46', '2025-05-17 15:41:18'),
(248, 'No Agglutination Seen', 2026, '2025-05-17 16:18:09', '2024-08-15 22:03:46', '2025-05-17 16:18:09'),
(249, '1:40', 2026, NULL, '2024-08-15 22:03:46', '2025-05-17 16:26:35'),
(250, '1:80', 2026, NULL, '2024-08-15 22:03:46', '2025-05-17 16:26:35'),
(251, '1:160', 2026, NULL, '2024-08-15 22:03:46', '2025-05-17 16:26:35'),
(252, '<b>Agglutination Seen(1:160)</b>', 2026, '2025-05-17 15:39:41', '2024-08-15 22:03:46', '2025-05-17 15:39:41'),
(253, '<b>Agglutination Seen(1:240)</b>', 2026, '2025-05-17 15:39:38', '2024-08-15 22:03:46', '2025-05-17 15:39:38'),
(254, '<b>Agglutination Seen(1:320)</b>', 2026, '2025-05-17 15:39:17', '2024-08-15 22:03:46', '2025-05-17 15:39:17'),
(255, 'No Agglutination Seen', 2027, '2025-05-17 16:20:07', '2024-08-15 22:03:46', '2025-05-17 16:20:07'),
(256, '1:40', 2027, NULL, '2024-08-15 22:03:46', '2025-05-17 16:26:35'),
(257, '1:80', 2027, NULL, '2024-08-15 22:03:46', '2025-05-17 16:26:35'),
(258, '1:160', 2027, NULL, '2024-08-15 22:03:46', '2025-05-17 16:26:35'),
(259, '<b>Agglutination Seen(1:160)</b>', 2027, '2025-05-17 15:39:50', '2024-08-15 22:03:46', '2025-05-17 15:39:50'),
(260, '<b>Agglutination Seen(1:240)</b>', 2027, '2025-05-17 15:39:52', '2024-08-15 22:03:46', '2025-05-17 15:39:52'),
(261, '<b>Agglutination Seen(1:320)</b>', 2027, '2025-05-17 15:39:55', '2024-08-15 22:03:46', '2025-05-17 15:39:55'),
(262, 'No Agglutination Seen', 2028, '2025-05-17 16:21:55', '2024-08-15 22:03:46', '2025-05-17 16:21:55'),
(263, 'Agglutination Seen(1:20)', 2028, '2025-05-17 16:22:56', '2024-08-15 22:03:46', '2025-05-17 16:22:56'),
(264, '1:40', 2028, NULL, '2024-08-15 22:03:46', '2025-05-17 16:26:35'),
(265, '1:80', 2028, NULL, '2024-08-15 22:03:46', '2025-05-17 16:26:35'),
(266, '<b>Agglutination Seen(1:160)</b>', 2028, '2025-05-17 15:40:24', '2024-08-15 22:03:46', '2025-05-17 15:40:24'),
(267, '<b>Agglutination Seen(1:240)</b>', 2028, '2025-05-17 15:40:20', '2024-08-15 22:03:46', '2025-05-17 15:40:20'),
(268, '<b>Agglutination Seen(1:320)</b>', 2028, '2025-05-17 15:40:15', '2024-08-15 22:03:46', '2025-05-17 15:40:15'),
(269, 'No Agglutination Seen', 2029, '2025-05-17 16:23:44', '2024-08-15 22:03:46', '2025-05-17 16:23:44'),
(270, '1:20', 2029, NULL, '2024-08-15 22:03:46', '2025-05-17 16:26:35'),
(271, '1:40', 2029, NULL, '2024-08-15 22:03:46', '2025-05-17 16:26:35'),
(272, '1:80', 2029, NULL, '2024-08-15 22:03:46', '2025-05-17 16:26:35'),
(273, '<b>Agglutination Seen(1:160)</b>', 2029, '2025-05-17 15:40:31', '2024-08-15 22:03:46', '2025-05-17 15:40:31'),
(274, '<b>Agglutination Seen(1:240)</b>', 2029, '2025-05-17 15:40:34', '2024-08-15 22:03:46', '2025-05-17 15:40:34'),
(275, '<b>Agglutination Seen(1:320)</b>', 2029, '2025-05-17 15:40:36', '2024-08-15 22:03:46', '2025-05-17 15:40:36'),
(276, 'Present', 2044, NULL, '2024-08-15 22:30:01', '2024-08-15 22:30:01'),
(277, 'Absent', 2044, NULL, '2024-08-15 22:30:01', '2024-08-15 22:30:01'),
(278, 'Present', 2045, NULL, '2024-08-15 22:30:01', '2024-08-15 22:30:01'),
(279, 'Absent', 2045, NULL, '2024-08-15 22:30:01', '2024-08-15 22:30:01'),
(280, 'Negative', 2072, NULL, '2024-08-15 22:35:35', '2024-08-15 22:35:35'),
(281, '<b>Positive</b>', 2072, NULL, '2024-08-15 22:35:35', '2024-08-15 22:35:35'),
(282, 'Positive', 2076, NULL, '2024-08-15 22:36:20', '2024-08-15 22:36:20'),
(283, 'Negative', 2076, NULL, '2024-08-15 22:36:20', '2024-08-15 22:36:20'),
(284, 'Outside', 2081, NULL, '2024-08-15 22:41:43', '2024-08-15 22:41:43'),
(285, 'Laboratory', 2081, NULL, '2024-08-15 22:41:43', '2024-08-15 22:41:43'),
(286, 'Absent', 2098, NULL, '2024-08-15 22:41:43', '2024-08-15 22:41:43'),
(287, 'Occasional', 2098, NULL, '2024-08-15 22:41:43', '2024-08-15 22:41:43'),
(288, '2-4', 2098, NULL, '2024-08-15 22:41:43', '2024-08-15 22:41:43'),
(289, '4-8', 2098, NULL, '2024-08-15 22:41:43', '2024-08-15 22:41:43'),
(290, '8-10', 2098, NULL, '2024-08-15 22:41:43', '2024-08-15 22:41:43'),
(291, '10-15', 2098, NULL, '2024-08-15 22:41:43', '2024-08-15 22:41:43'),
(292, '15-20', 2098, NULL, '2024-08-15 22:41:43', '2024-08-15 22:41:43'),
(293, 'Plenty', 2098, NULL, '2024-08-15 22:41:43', '2024-08-15 22:41:43'),
(294, 'Present', 2113, NULL, '2024-08-15 22:46:27', '2024-08-15 22:46:27'),
(295, 'Absent', 2113, NULL, '2024-08-15 22:46:27', '2024-08-15 22:46:27'),
(296, 'trace', 2113, NULL, '2024-08-15 22:46:27', '2024-08-15 22:46:27'),
(297, 'Nil', 2113, NULL, '2024-08-15 22:46:27', '2024-08-15 22:46:27'),
(298, '-', 2113, NULL, '2024-08-15 22:46:27', '2024-08-15 22:46:27'),
(299, 'Positive', 2124, NULL, '2024-08-15 22:49:00', '2024-08-15 22:49:00'),
(300, 'Negative', 2124, NULL, '2024-08-15 22:49:00', '2024-08-15 22:49:00'),
(301, '-', 2124, NULL, '2024-08-15 22:49:00', '2024-08-15 22:49:00'),
(302, 'Pale Yellow', 2147, NULL, '2024-08-15 23:16:59', '2024-10-10 13:11:04'),
(303, 'Reddish', 2147, NULL, '2024-08-15 23:16:59', '2024-10-10 13:11:04'),
(304, 'Dark Yellow', 2147, NULL, '2024-08-15 23:16:59', '2024-10-10 13:11:04'),
(305, 'Colorless', 2147, NULL, '2024-08-15 23:16:59', '2024-10-10 13:11:04'),
(306, 'Straw Clear', 2147, NULL, '2024-08-15 23:16:59', '2024-10-10 13:11:04'),
(307, 'Straw Yellow, Turbid', 2147, NULL, '2024-08-15 23:16:59', '2024-10-10 13:11:04'),
(308, 'Reddish Yellow', 2147, NULL, '2024-08-15 23:16:59', '2024-10-10 13:11:04'),
(309, '5', 2148, NULL, '2024-08-15 23:16:59', '2024-10-10 13:11:04'),
(310, '10', 2148, NULL, '2024-08-15 23:16:59', '2024-10-10 13:11:04'),
(311, '15', 2148, NULL, '2024-08-15 23:16:59', '2024-10-10 13:11:04'),
(312, '20', 2148, NULL, '2024-08-15 23:16:59', '2024-10-10 13:11:04'),
(313, '25', 2148, NULL, '2024-08-15 23:16:59', '2024-10-10 13:11:04'),
(314, '30', 2148, NULL, '2024-08-15 23:16:59', '2024-10-10 13:11:04'),
(315, '35', 2148, NULL, '2024-08-15 23:16:59', '2024-10-10 13:11:04'),
(316, '08', 2148, NULL, '2024-08-15 23:16:59', '2024-10-10 13:11:04'),
(317, 'Clear', 2149, NULL, '2024-08-15 23:16:59', '2024-10-10 13:11:04'),
(318, 'Slightly Turbid', 2149, NULL, '2024-08-15 23:16:59', '2024-10-10 13:11:04'),
(319, 'Turbid', 2149, NULL, '2024-08-15 23:16:59', '2024-10-10 13:11:04'),
(320, 'Hazy', 2149, '2025-05-17 16:43:03', '2024-08-15 23:16:59', '2025-05-17 16:43:03'),
(321, 'Cloudy', 2149, '2025-05-17 16:43:07', '2024-08-15 23:16:59', '2025-05-17 16:43:07'),
(322, '1.010', 2150, NULL, '2024-08-15 23:16:59', '2024-10-10 13:11:04'),
(323, '1.015', 2150, NULL, '2024-08-15 23:16:59', '2024-10-10 13:11:04'),
(324, '1.020', 2150, NULL, '2024-08-15 23:16:59', '2024-10-10 13:11:04'),
(325, '1.025', 2150, NULL, '2024-08-15 23:16:59', '2024-10-10 13:11:04'),
(326, '1.030', 2150, NULL, '2024-08-15 23:16:59', '2024-10-10 13:11:04'),
(327, '5.5', 2151, '2025-05-17 16:44:12', '2024-08-15 23:16:59', '2025-05-17 16:44:12'),
(328, '6.0', 2151, '2025-05-17 16:44:15', '2024-08-15 23:16:59', '2025-05-17 16:44:15'),
(329, '6.5', 2151, '2025-05-17 16:44:17', '2024-08-15 23:16:59', '2025-05-17 16:44:17'),
(330, '7.0', 2151, '2025-05-17 16:44:20', '2024-08-15 23:16:59', '2025-05-17 16:44:20'),
(331, '7.5', 2151, '2025-05-17 16:44:23', '2024-08-15 23:16:59', '2025-05-17 16:44:23'),
(332, 'Absent', 2153, NULL, '2024-08-15 23:16:59', '2024-10-10 13:11:04'),
(333, 'Trace', 2153, NULL, '2024-08-15 23:16:59', '2024-10-10 13:11:04'),
(334, 'Present (+)', 2153, NULL, '2024-08-15 23:16:59', '2024-10-10 13:11:04'),
(335, 'Present (++)', 2153, NULL, '2024-08-15 23:16:59', '2024-10-10 13:11:04'),
(336, 'Present (+++)', 2153, NULL, '2024-08-15 23:16:59', '2024-10-10 13:11:04'),
(337, 'Present (++++)', 2153, NULL, '2024-08-15 23:16:59', '2024-10-10 13:11:04'),
(338, 'Nill', 2153, '2025-05-17 16:45:50', '2024-08-15 23:16:59', '2025-05-17 16:45:50'),
(339, 'Absent', 2154, NULL, '2024-08-15 23:16:59', '2024-10-10 13:11:04'),
(340, 'Trace', 2154, NULL, '2024-08-15 23:16:59', '2024-10-10 13:11:04'),
(341, 'Present (+)', 2154, NULL, '2024-08-15 23:16:59', '2024-10-10 13:11:04'),
(342, 'Present (++)', 2154, NULL, '2024-08-15 23:16:59', '2024-10-10 13:11:04'),
(343, 'Present (+++)', 2154, NULL, '2024-08-15 23:16:59', '2024-10-10 13:11:04'),
(344, 'Present (++++)', 2154, NULL, '2024-08-15 23:16:59', '2024-10-10 13:11:04'),
(345, 'Nill', 2154, '2025-05-17 16:46:59', '2024-08-15 23:16:59', '2025-05-17 16:46:59'),
(346, 'Absent', 2155, NULL, '2024-08-15 23:16:59', '2024-10-10 13:11:04'),
(347, 'Trace', 2155, NULL, '2024-08-15 23:16:59', '2024-10-10 13:11:04'),
(348, 'Present (+)', 2155, '2025-05-17 17:02:25', '2024-08-15 23:16:59', '2025-05-17 17:02:25'),
(349, 'Present (++)', 2155, '2025-05-17 17:02:28', '2024-08-15 23:16:59', '2025-05-17 17:02:28'),
(350, 'Present (+++)', 2155, '2025-05-17 17:02:45', '2024-08-15 23:16:59', '2025-05-17 17:02:45'),
(351, 'Present (++++)', 2155, '2025-05-17 17:02:48', '2024-08-15 23:16:59', '2025-05-17 17:02:48'),
(352, 'Nill', 2155, NULL, '2024-08-15 23:16:59', '2024-10-10 13:11:04'),
(353, 'Absent', 2156, NULL, '2024-08-15 23:16:59', '2024-10-10 13:11:04'),
(354, 'Present', 2156, NULL, '2024-08-15 23:16:59', '2024-10-10 13:11:04'),
(355, 'Nill', 2156, '2025-05-17 17:01:18', '2024-08-15 23:16:59', '2025-05-17 17:01:18'),
(356, 'Negative', 2157, '2025-05-17 16:47:53', '2024-08-15 23:16:59', '2025-05-17 16:47:53'),
(357, 'Present (+)', 2157, '2025-05-17 16:47:56', '2024-08-15 23:16:59', '2025-05-17 16:47:56'),
(358, 'Present (++)', 2157, '2025-05-17 16:47:59', '2024-08-15 23:16:59', '2025-05-17 16:47:59'),
(359, 'Present (+++)', 2157, '2025-05-17 16:48:01', '2024-08-15 23:16:59', '2025-05-17 16:48:01'),
(360, 'NIL', 2157, '2025-05-17 16:48:04', '2024-08-15 23:16:59', '2025-05-17 16:48:04'),
(361, 'Normal', 2158, '2025-05-17 17:00:31', '2024-08-15 23:16:59', '2025-05-17 17:00:31'),
(362, 'Present', 2158, '2025-05-17 17:00:28', '2024-08-15 23:16:59', '2025-05-17 17:00:28'),
(363, 'Absent', 2158, '2025-05-17 17:00:33', '2024-08-15 23:16:59', '2025-05-17 17:00:33'),
(364, 'Absent', 2159, NULL, '2024-08-15 23:16:59', '2024-10-10 13:11:04'),
(365, 'Trace', 2159, NULL, '2024-08-15 23:16:59', '2024-10-10 13:11:04'),
(366, 'Present (+)', 2159, NULL, '2024-08-15 23:16:59', '2024-10-10 13:11:04'),
(367, 'Present (++)', 2159, NULL, '2024-08-15 23:16:59', '2024-10-10 13:11:04'),
(368, 'Present (+++)', 2159, NULL, '2024-08-15 23:16:59', '2024-10-10 13:11:04'),
(369, 'Absent', 2161, NULL, '2024-08-15 23:16:59', '2024-10-10 13:11:04'),
(370, '2-3', 2161, NULL, '2024-08-15 23:16:59', '2024-10-10 13:11:04'),
(371, '3-5', 2161, NULL, '2024-08-15 23:16:59', '2024-10-10 13:11:04'),
(372, '5-7', 2161, NULL, '2024-08-15 23:16:59', '2024-10-10 13:11:04'),
(373, '8-10', 2161, NULL, '2024-08-15 23:16:59', '2024-10-10 13:11:04'),
(374, '10-12', 2161, NULL, '2024-08-15 23:16:59', '2024-10-10 13:11:04'),
(375, '12-14', 2161, NULL, '2024-08-15 23:16:59', '2024-10-10 13:11:04'),
(376, '14-16', 2161, NULL, '2024-08-15 23:16:59', '2024-10-10 13:11:04'),
(377, '16-18', 2161, NULL, '2024-08-15 23:16:59', '2024-10-10 13:11:04'),
(378, '18-20', 2161, NULL, '2024-08-15 23:16:59', '2024-10-10 13:11:04'),
(379, '20-25', 2161, '2025-05-17 16:58:53', '2024-08-15 23:16:59', '2025-05-17 16:58:53'),
(380, '25-30', 2161, '2025-05-17 16:58:45', '2024-08-15 23:16:59', '2025-05-17 16:58:45'),
(381, '30-35', 2161, '2025-05-17 16:58:43', '2024-08-15 23:16:59', '2025-05-17 16:58:43'),
(382, '35-40', 2161, '2025-05-17 16:58:40', '2024-08-15 23:16:59', '2025-05-17 16:58:40'),
(383, '40-45', 2161, '2025-05-17 16:58:36', '2024-08-15 23:16:59', '2025-05-17 16:58:36'),
(384, '45-50', 2161, '2025-05-17 16:58:34', '2024-08-15 23:16:59', '2025-05-17 16:58:34'),
(385, 'Plenty (>100)', 2161, NULL, '2024-08-15 23:16:59', '2024-10-10 13:11:04'),
(386, '1-2', 2162, NULL, '2024-08-15 23:16:59', '2024-10-10 13:11:04'),
(387, '2-3', 2162, NULL, '2024-08-15 23:16:59', '2024-10-10 13:11:04'),
(388, '3-5', 2162, NULL, '2024-08-15 23:16:59', '2024-10-10 13:11:04'),
(389, '4-6', 2162, NULL, '2024-08-15 23:16:59', '2024-10-10 13:11:04'),
(390, '6-8', 2162, NULL, '2024-08-15 23:16:59', '2024-10-10 13:11:04'),
(391, '8-10', 2162, NULL, '2024-08-15 23:16:59', '2024-10-10 13:11:04'),
(392, '10-12', 2162, NULL, '2024-08-15 23:16:59', '2024-10-10 13:11:04'),
(393, '12-14', 2162, NULL, '2024-08-15 23:16:59', '2024-10-10 13:11:04'),
(394, '15-20', 2162, NULL, '2024-08-15 23:16:59', '2024-10-10 13:11:04'),
(395, '20-25', 2162, NULL, '2024-08-15 23:16:59', '2024-10-10 13:11:04'),
(396, '25-30', 2162, NULL, '2024-08-15 23:16:59', '2024-10-10 13:11:04'),
(397, '1-2', 2163, NULL, '2024-08-15 23:16:59', '2024-10-10 13:11:04'),
(398, '2-4', 2163, NULL, '2024-08-15 23:16:59', '2024-10-10 13:11:04'),
(399, '4-6', 2163, NULL, '2024-08-15 23:16:59', '2024-10-10 13:11:04'),
(400, '4-6', 2163, '2025-05-17 16:52:57', '2024-08-15 23:16:59', '2025-05-17 16:52:57'),
(401, '6-8', 2163, NULL, '2024-08-15 23:16:59', '2024-10-10 13:11:04'),
(402, '8-10', 2163, NULL, '2024-08-15 23:16:59', '2024-10-10 13:11:04'),
(403, '10-12', 2163, NULL, '2024-08-15 23:16:59', '2024-10-10 13:11:04'),
(404, '12-14', 2163, NULL, '2024-08-15 23:16:59', '2024-10-10 13:11:04'),
(405, '14-16', 2163, NULL, '2024-08-15 23:16:59', '2024-10-10 13:11:04'),
(406, '16-18', 2163, NULL, '2024-08-15 23:16:59', '2024-10-10 13:11:04'),
(407, '18-20', 2163, NULL, '2024-08-15 23:16:59', '2024-10-10 13:11:04'),
(408, '20-25', 2163, '2025-05-17 16:57:44', '2024-08-15 23:16:59', '2025-05-17 16:57:44'),
(409, '25-30', 2163, '2025-05-17 16:57:41', '2024-08-15 23:16:59', '2025-05-17 16:57:41'),
(410, 'Amorphous Urates', 2165, '2025-05-17 16:55:38', '2024-08-15 23:16:59', '2025-05-17 16:55:38'),
(411, 'Amorphous Phosphates', 2165, '2025-05-17 16:55:35', '2024-08-15 23:16:59', '2025-05-17 16:55:35'),
(412, 'Absent', 2165, '2025-05-17 16:55:24', '2024-08-15 23:16:59', '2025-05-17 16:55:24'),
(413, '-', 2165, '2025-05-17 16:55:20', '2024-08-15 23:16:59', '2025-05-17 16:55:20'),
(414, 'Absent', 2166, '2025-05-17 16:55:01', '2024-08-15 23:16:59', '2025-05-17 16:55:01'),
(415, 'Present', 2166, '2025-05-17 16:54:58', '2024-08-15 23:16:59', '2025-05-17 16:54:58'),
(416, 'Urine', 2187, NULL, '2024-08-16 00:03:26', '2024-08-16 00:03:26'),
(417, 'Sputum', 2187, NULL, '2024-08-16 00:03:26', '2024-08-16 00:03:26'),
(418, 'Pleural fluid', 2187, NULL, '2024-08-16 00:03:26', '2024-08-16 00:03:26'),
(419, 'Drain tip', 2187, NULL, '2024-08-16 00:03:26', '2024-08-16 00:03:26'),
(420, 'Cerebrospinal fluid', 2187, NULL, '2024-08-16 00:03:26', '2024-08-16 00:03:26'),
(421, 'Peritoneal fluid', 2187, NULL, '2024-08-16 00:03:26', '2024-08-16 00:03:26'),
(422, 'Pus', 2187, NULL, '2024-08-16 00:03:26', '2024-08-16 00:03:26'),
(423, 'Throat Swap', 2187, NULL, '2024-08-16 00:03:26', '2024-08-16 00:03:26'),
(424, 'Semen', 2187, NULL, '2024-08-16 00:03:26', '2024-08-16 00:03:26'),
(425, 'Stool', 2187, NULL, '2024-08-16 00:03:26', '2024-08-16 00:03:26'),
(426, 'Reactive', 2477, NULL, '2024-08-16 11:55:00', '2024-08-16 11:55:00'),
(427, 'Non- Reactive', 2477, NULL, '2024-08-16 11:55:00', '2024-08-16 11:55:00'),
(428, NULL, 1433, '2024-10-04 09:14:56', '2024-10-03 22:43:30', '2024-10-04 09:14:56'),
(429, NULL, 1434, '2024-10-04 09:15:10', '2024-10-03 22:43:30', '2024-10-04 09:15:10'),
(430, NULL, 1435, '2024-10-04 09:15:04', '2024-10-03 22:43:30', '2024-10-04 09:15:04'),
(431, NULL, 1433, '2024-10-04 09:20:37', '2024-10-04 09:15:41', '2024-10-04 09:20:37'),
(432, NULL, 1434, '2024-10-04 09:20:19', '2024-10-04 09:15:41', '2024-10-04 09:20:19'),
(433, NULL, 1435, '2024-10-04 09:20:27', '2024-10-04 09:15:41', '2024-10-04 09:20:27'),
(434, NULL, 1433, '2024-10-04 13:59:53', '2024-10-04 09:21:58', '2024-10-04 13:59:53'),
(435, NULL, 1434, '2024-10-04 13:59:59', '2024-10-04 09:21:58', '2024-10-04 13:59:59'),
(436, NULL, 1435, '2024-10-04 14:00:04', '2024-10-04 09:21:58', '2024-10-04 14:00:04'),
(437, '<b>Agglutination Seen(160:80) </b>', 2029, '2025-05-17 15:40:39', '2024-10-05 15:45:28', '2025-05-17 15:40:39'),
(438, '-', 2165, '2025-05-17 16:55:18', '2024-10-05 15:50:43', '2025-05-17 16:55:18'),
(439, '-', 2166, '2025-05-17 16:54:55', '2024-10-05 15:50:43', '2025-05-17 16:54:55'),
(440, 'A  ( + VE )', 1332, NULL, '2024-10-05 18:04:16', '2024-10-05 18:06:01'),
(441, 'B ( + VE )', 1332, NULL, '2024-10-05 18:04:16', '2024-10-05 18:06:01'),
(442, 'AB ( + VE )', 1332, NULL, '2024-10-05 18:04:16', '2024-10-05 18:06:01'),
(443, 'O ( + VE )', 1332, NULL, '2024-10-05 18:04:16', '2024-10-05 18:06:01'),
(444, '<b>Negitve</b>', 2528, '2024-10-05 23:39:51', '2024-10-05 20:45:41', '2024-10-05 23:39:51'),
(445, '-', 2157, '2025-05-17 16:48:06', '2024-10-06 14:13:33', '2025-05-17 16:48:06'),
(446, NULL, 2029, '2024-10-07 16:52:14', '2024-10-07 16:30:35', '2024-10-07 16:52:14'),
(447, '<b> POSITIVE </b>', 2029, '2024-10-07 17:02:51', '2024-10-07 16:52:55', '2024-10-07 17:02:51'),
(448, 'NEGETIVE', 2028, '2024-10-07 17:02:54', '2024-10-07 16:58:32', '2024-10-07 17:02:54'),
(449, '<b> POSITIVE </b>', 2025, '2025-05-17 15:41:22', '2024-10-07 17:03:41', '2025-05-17 15:41:22'),
(450, '1:160', 2025, '2025-05-17 16:19:57', '2024-10-07 17:03:41', '2025-05-17 16:19:57'),
(451, '<b>Agglutination Seen(160:80)</b>', 2025, '2025-05-17 15:41:25', '2024-10-07 17:03:41', '2025-05-17 15:41:25'),
(452, '<b>Agglutination Seen(160:80)</b>', 2026, '2025-05-17 15:39:12', '2024-10-07 17:03:41', '2025-05-17 15:39:12'),
(453, '<b>Agglutination Seen(160:80)</b>', 2027, '2025-05-17 15:39:58', '2024-10-07 17:03:41', '2025-05-17 15:39:58'),
(454, '<b>Agglutination Seen(160:80)</b>', 2028, '2025-05-17 15:40:17', '2024-10-07 17:03:41', '2025-05-17 15:40:17'),
(455, '<b>Agglutination Seen(160:80)</b>', 2029, '2025-05-17 15:40:45', '2024-10-07 17:03:41', '2025-05-17 15:40:45'),
(456, '<b> Positive </b>', 2029, '2025-05-17 15:40:42', '2024-10-07 18:28:22', '2025-05-17 15:40:42'),
(457, '-', 2149, '2025-05-17 16:43:10', '2024-10-10 11:13:31', '2025-05-17 16:43:10'),
(458, 'NEGATIVE', 2156, NULL, '2024-10-10 11:13:31', '2024-10-10 13:11:04'),
(459, '-', 2158, '2025-05-17 17:00:09', '2024-10-10 11:13:31', '2025-05-17 17:00:09'),
(460, 'NEGATIVE', 2159, NULL, '2024-10-10 11:13:31', '2024-10-10 13:11:04'),
(461, '--', 2161, '2025-05-17 16:49:57', '2024-10-10 11:13:31', '2025-05-17 16:49:57'),
(462, '5 - 6', 2162, '2025-05-17 16:50:39', '2024-10-10 11:13:31', '2025-05-17 16:50:39'),
(463, '2 - 4', 2163, '2025-05-17 16:53:30', '2024-10-10 11:13:31', '2025-05-17 16:53:30'),
(464, NULL, 2165, '2025-05-17 16:55:15', '2024-10-10 13:12:25', '2025-05-17 16:55:15'),
(465, NULL, 2166, '2025-05-17 16:54:52', '2024-10-10 13:12:25', '2025-05-17 16:54:52'),
(466, '4 -6', 2162, '2025-05-17 16:50:41', '2024-10-16 11:02:08', '2025-05-17 16:50:41'),
(467, '2 - 3', 2163, '2025-05-17 16:53:25', '2024-10-16 11:02:08', '2025-05-17 16:53:25'),
(468, NULL, 2150, '2025-05-17 16:43:22', '2024-10-23 12:10:07', '2025-05-17 16:43:22'),
(469, NULL, 2151, NULL, '2024-10-23 12:10:07', '2024-10-23 12:10:07'),
(470, NULL, 2158, '2025-05-17 17:00:04', '2024-10-23 12:10:07', '2025-05-17 17:00:04'),
(471, '8 - 10', 2161, '2025-05-17 16:50:01', '2024-10-23 12:10:07', '2025-05-17 16:50:01'),
(472, '5 - 7', 2162, '2025-05-17 16:50:44', '2024-10-23 20:01:56', '2025-05-17 16:50:44'),
(473, '2+', 2153, '2025-05-17 16:45:38', '2024-10-24 19:15:17', '2025-05-17 16:45:38'),
(474, '20 - 25', 2161, '2025-05-17 16:50:05', '2024-10-24 19:15:17', '2025-05-17 16:50:05'),
(475, '16 - 18', 2162, '2025-05-17 16:50:46', '2024-10-24 19:15:17', '2025-05-17 16:50:46'),
(476, '5 - 7', 2163, '2025-05-17 16:53:23', '2024-10-24 19:15:17', '2025-05-17 16:53:23'),
(477, NULL, 2147, '2025-05-17 17:13:34', '2024-10-24 20:55:43', '2025-05-17 17:13:34'),
(478, NULL, 2148, '2025-05-17 17:14:17', '2024-10-24 20:55:43', '2025-05-17 17:14:17'),
(479, NULL, 2149, '2025-05-17 16:43:13', '2024-10-24 20:55:43', '2025-05-17 16:43:13'),
(480, NULL, 2153, '2025-05-17 16:45:36', '2024-10-24 20:55:43', '2025-05-17 16:45:36'),
(481, NULL, 2154, '2025-05-17 16:47:02', '2024-10-24 20:55:43', '2025-05-17 16:47:02'),
(482, NULL, 2155, '2025-05-17 17:02:51', '2024-10-24 20:55:43', '2025-05-17 17:02:51'),
(483, NULL, 2156, '2025-05-17 17:01:58', '2024-10-24 20:55:43', '2025-05-17 17:01:58'),
(484, NULL, 2157, '2025-05-17 16:48:09', '2024-10-24 20:55:43', '2025-05-17 16:48:09'),
(485, NULL, 2159, '2025-05-17 16:59:42', '2024-10-24 20:55:43', '2025-05-17 16:59:42'),
(486, NULL, 2161, '2025-05-17 16:58:08', '2024-10-24 20:55:43', '2025-05-17 16:58:08'),
(487, NULL, 2162, '2025-05-17 16:50:49', '2024-10-24 20:55:43', '2025-05-17 16:50:49'),
(488, NULL, 2163, '2025-05-17 16:53:09', '2024-10-24 20:55:43', '2025-05-17 16:53:09'),
(489, '7 -9', 2163, '2025-05-17 16:53:20', '2024-11-02 12:40:33', '2025-05-17 16:53:20'),
(490, '14 - 16', 2161, '2025-05-17 16:50:09', '2024-11-12 16:24:56', '2025-05-17 16:50:09'),
(491, '7 - 9', 2162, '2025-05-17 16:50:51', '2024-11-12 16:24:56', '2025-05-17 16:50:51'),
(492, '4 - 5', 2163, '2025-05-17 16:53:12', '2024-11-12 16:24:56', '2025-05-17 16:53:12'),
(493, '10.3', 1961, '2025-05-17 19:22:42', '2024-11-13 12:58:43', '2025-05-17 19:22:42'),
(494, NULL, 1961, '2025-05-17 19:22:51', '2024-11-20 15:03:02', '2025-05-17 19:22:51'),
(495, '8.7', 1961, '2025-05-17 19:22:46', '2024-11-20 15:03:15', '2025-05-17 19:22:46'),
(496, '1+', 2153, '2025-05-17 16:45:33', '2024-11-23 13:32:15', '2025-05-17 16:45:33'),
(497, '8-9', 2162, '2025-05-17 16:50:54', '2024-11-23 13:32:15', '2025-05-17 16:50:54'),
(498, '7.3', 1961, '2025-05-17 19:22:48', '2024-11-26 18:39:46', '2025-05-17 19:22:48'),
(499, '7 - 8', 2161, '2025-05-17 16:50:12', '2024-12-04 15:49:19', '2025-05-17 16:50:12'),
(500, '>=1.030', 2150, '2025-05-17 16:43:25', '2024-12-04 18:14:34', '2025-05-17 16:43:25'),
(501, '6 -8', 2161, '2025-05-17 16:50:14', '2024-12-04 18:14:34', '2025-05-17 16:50:14'),
(502, '10 - 14', 2162, '2025-05-17 16:50:57', '2024-12-04 18:14:34', '2025-05-17 16:50:57'),
(503, '2  -4', 2163, '2025-05-17 16:53:14', '2024-12-04 18:14:34', '2025-05-17 16:53:14'),
(504, '10 - 12', 2162, '2025-05-17 16:50:59', '2024-12-05 15:05:01', '2025-05-17 16:50:59'),
(505, '5 - 8', 2162, '2025-05-17 16:51:01', '2024-12-09 12:31:02', '2025-05-17 16:51:01'),
(506, '6 - 8', 2162, '2025-05-17 16:51:03', '2024-12-10 14:40:18', '2025-05-17 16:51:03'),
(507, '12 - 15', 2162, '2025-05-17 16:51:05', '2024-12-14 12:14:10', '2025-05-17 16:51:05'),
(508, '5 -8', 2163, '2025-05-17 16:53:17', '2024-12-14 12:14:10', '2025-05-17 16:53:17'),
(509, NULL, 2025, '2025-02-05 19:53:33', '2024-12-20 15:07:32', '2025-02-05 19:53:33'),
(510, '4 - 5', 2162, '2025-05-17 16:51:08', '2024-12-24 16:16:03', '2025-05-17 16:51:08'),
(511, '1 - 2', 2163, '2025-05-17 16:53:33', '2024-12-24 16:16:03', '2025-05-17 16:53:33'),
(512, '1 8 -24', 2161, '2025-05-17 16:50:17', '2024-12-27 12:44:37', '2025-05-17 16:50:17'),
(513, '6  - 8', 2162, '2025-05-17 16:51:11', '2024-12-27 12:44:37', '2025-05-17 16:51:11'),
(514, NULL, 1825, '2025-05-17 19:11:04', '2024-12-29 10:02:12', '2025-05-17 19:11:04'),
(515, 'NIL', 2161, '2025-05-17 16:50:20', '2025-01-02 12:55:10', '2025-05-17 16:50:20'),
(516, '14 - 18', 2162, '2025-05-17 16:51:13', '2025-01-09 19:22:29', '2025-05-17 16:51:13'),
(517, '5 - 6', 2163, '2025-05-17 16:53:36', '2025-01-09 19:22:29', '2025-05-17 16:53:36'),
(518, '2 -3', 2163, '2025-05-17 16:53:39', '2025-01-16 20:43:09', '2025-05-17 16:53:39'),
(519, '6 - 8', 2161, '2025-05-17 16:49:28', '2025-01-18 16:36:53', '2025-05-17 16:49:28'),
(520, 'Slightly Positive', 1850, NULL, '2025-01-20 19:03:09', '2025-05-17 19:29:15'),
(521, '1 +', 2153, '2025-05-17 16:45:31', '2025-01-21 19:59:18', '2025-05-17 16:45:31'),
(522, '14 - 18', 2161, '2025-05-17 16:49:24', '2025-01-21 19:59:18', '2025-05-17 16:49:24'),
(523, '3 - 4', 2163, '2025-05-17 16:53:42', '2025-01-21 19:59:18', '2025-05-17 16:53:42'),
(524, '10 - 12', 2161, '2025-05-17 16:49:22', '2025-01-23 07:57:21', '2025-05-17 16:49:22'),
(525, '3 - 4', 2162, '2025-05-17 16:51:17', '2025-02-02 14:09:31', '2025-05-17 16:51:17'),
(526, '6.9', 1825, '2025-05-17 19:11:04', '2025-02-03 11:51:39', '2025-05-17 19:11:04'),
(527, '8 - 9', 2162, '2025-05-17 16:51:20', '2025-02-21 12:57:28', '2025-05-17 16:51:20'),
(528, NULL, 2025, '2025-05-17 16:13:48', '2025-02-24 18:15:15', '2025-05-17 16:13:48'),
(529, 'Negative', 1626, NULL, '2025-02-28 12:39:12', '2025-02-28 12:39:12'),
(530, 'QNS', 2150, NULL, '2025-03-05 11:39:29', '2025-03-05 11:39:29'),
(531, '-', 2159, NULL, '2025-03-05 11:39:29', '2025-03-05 11:39:29'),
(532, '6-8/HPF', 2162, '2025-05-17 16:52:26', '2025-03-05 11:39:29', '2025-05-17 16:52:26'),
(533, '3-4/HPF', 2163, '2025-05-17 16:53:53', '2025-03-05 11:39:29', '2025-05-17 16:53:53'),
(534, '--', 2156, '2025-05-17 17:02:01', '2025-04-08 13:30:17', '2025-05-17 17:02:01'),
(535, '__', 2157, '2025-05-17 16:48:12', '2025-04-08 13:30:17', '2025-05-17 16:48:12'),
(536, '--', 2158, '2025-05-17 17:00:01', '2025-04-08 13:30:17', '2025-05-17 17:00:01'),
(537, '--', 2159, '2025-05-17 16:59:37', '2025-04-08 13:30:17', '2025-05-17 16:59:37'),
(538, '5-6/HPF', 2162, '2025-05-17 16:52:28', '2025-04-08 13:30:17', '2025-05-17 16:52:28'),
(539, '1-2/HPF', 2163, '2025-05-17 16:53:51', '2025-04-08 13:30:17', '2025-05-17 16:53:51'),
(540, '--', 2148, '2025-05-17 17:14:22', '2025-04-15 16:27:18', '2025-05-17 17:14:22'),
(541, '--', 2151, NULL, '2025-04-15 16:27:18', '2025-04-15 16:27:18'),
(542, '--', 2155, '2025-05-17 17:02:54', '2025-04-15 16:27:18', '2025-05-17 17:02:54'),
(543, '--', 2157, '2025-05-17 16:48:14', '2025-04-15 16:27:18', '2025-05-17 16:48:14'),
(544, '3-4/HPF', 2162, '2025-05-17 16:52:31', '2025-04-15 16:27:18', '2025-05-17 16:52:31'),
(545, '--', 2165, '2025-05-17 16:55:12', '2025-04-15 16:27:18', '2025-05-17 16:55:12'),
(546, '--', 2166, '2025-05-17 16:54:48', '2025-04-15 16:27:18', '2025-05-17 16:54:48'),
(547, NULL, 1708, NULL, '2025-05-09 18:14:21', '2025-05-09 18:14:21'),
(548, '1', 2025, '2025-05-17 16:19:59', '2025-05-15 13:20:14', '2025-05-17 16:19:59'),
(549, '1:320', 2026, NULL, '2025-05-15 20:21:25', '2025-05-17 16:26:35'),
(550, '1:320', 2027, NULL, '2025-05-15 20:21:25', '2025-05-17 16:26:35'),
(551, '1:160', 2028, NULL, '2025-05-15 20:21:25', '2025-05-17 16:26:35'),
(552, '1:160', 2029, NULL, '2025-05-15 20:21:25', '2025-05-17 16:26:35'),
(553, '1:160', 2027, '2025-05-17 16:21:16', '2025-05-16 14:04:07', '2025-05-17 16:21:16'),
(554, 'Slightly Positive', 1849, NULL, '2025-05-16 14:05:54', '2025-05-17 19:29:15'),
(555, NULL, 2025, NULL, '2025-05-19 14:18:22', '2025-05-19 14:18:22'),
(556, NULL, 2155, NULL, '2025-05-19 20:43:51', '2025-05-19 20:43:51'),
(557, NULL, 2157, NULL, '2025-05-19 20:43:51', '2025-05-19 20:43:51'),
(558, NULL, 2158, NULL, '2025-05-19 20:43:51', '2025-05-19 20:43:51'),
(559, NULL, 2165, NULL, '2025-05-19 20:43:51', '2025-05-19 20:43:51'),
(560, NULL, 2166, NULL, '2025-05-19 20:43:51', '2025-05-19 20:43:51'),
(561, 'NIL', 2157, NULL, '2025-05-21 11:55:05', '2025-05-21 11:55:05'),
(562, 'NIL', 2158, NULL, '2025-05-21 11:55:05', '2025-05-21 11:55:05'),
(563, 'NIL', 2165, NULL, '2025-05-21 11:55:05', '2025-05-21 11:55:05'),
(564, 'NIL', 2166, NULL, '2025-05-21 11:55:05', '2025-05-21 11:55:05'),
(565, NULL, 2028, NULL, '2025-05-21 12:10:32', '2025-05-21 12:10:32'),
(566, NULL, 2147, NULL, '2025-05-21 12:10:41', '2025-05-21 12:10:41'),
(567, NULL, 2148, NULL, '2025-05-21 12:10:41', '2025-05-21 12:10:41'),
(568, NULL, 2149, NULL, '2025-05-21 12:10:41', '2025-05-21 12:10:41'),
(569, NULL, 2150, NULL, '2025-05-21 12:10:41', '2025-05-21 12:10:41'),
(570, NULL, 2153, NULL, '2025-05-21 12:10:41', '2025-05-21 12:10:41'),
(571, NULL, 2154, NULL, '2025-05-21 12:10:41', '2025-05-21 12:10:41'),
(572, NULL, 2156, NULL, '2025-05-21 12:10:41', '2025-05-21 12:10:41'),
(573, NULL, 2159, NULL, '2025-05-21 12:10:41', '2025-05-21 12:10:41'),
(574, NULL, 2161, NULL, '2025-05-21 12:10:41', '2025-05-21 12:10:41'),
(575, NULL, 2162, NULL, '2025-05-21 12:10:41', '2025-05-21 12:10:41'),
(576, NULL, 2163, NULL, '2025-05-21 12:10:41', '2025-05-21 12:10:41'),
(577, '160', 2025, NULL, '2025-05-22 09:58:12', '2025-05-22 09:58:12'),
(578, '1:20', 2028, NULL, '2025-05-22 14:55:06', '2025-05-22 14:55:06'),
(579, 'Acidic', 2151, NULL, '2025-05-25 10:04:17', '2025-05-25 10:04:17'),
(580, 'POSITIVE.', 2072, NULL, '2025-05-27 10:54:48', '2025-05-27 10:54:48'),
(581, 'NIL', 2154, NULL, '2025-05-30 09:52:01', '2025-05-30 09:52:01'),
(582, 'POSITIVE', 2025, NULL, '2025-06-11 17:56:48', '2025-06-11 17:56:48');

-- --------------------------------------------------------

--
-- Table structure for table `test_prices`
--

CREATE TABLE `test_prices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `test_id` int(11) NOT NULL DEFAULT 0,
  `branch_id` int(11) NOT NULL DEFAULT 0,
  `price` double(8,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `test_prices`
--

INSERT INTO `test_prices` (`id`, `test_id`, `branch_id`, `price`, `created_at`, `updated_at`) VALUES
(1, 1188, 1, 1.00, '2024-08-15 10:31:26', '2024-08-15 10:31:26'),
(4, 1190, 1, 1.00, '2024-08-15 10:35:47', '2024-08-15 10:35:47'),
(7, 1194, 1, 1.00, '2024-08-15 11:09:51', '2024-08-15 11:09:51'),
(10, 1197, 1, 350.00, '2024-08-15 11:10:33', '2025-06-11 14:45:58'),
(13, 1199, 1, 1.00, '2024-08-15 11:11:21', '2024-08-15 11:11:21'),
(16, 1201, 1, 1.00, '2024-08-15 11:12:23', '2024-08-15 11:12:23'),
(19, 1204, 1, 1.00, '2024-08-15 11:13:30', '2024-08-15 11:13:30'),
(22, 1206, 1, 1.00, '2024-08-15 11:14:55', '2024-08-15 11:14:55'),
(25, 1210, 1, 1.00, '2024-08-15 11:16:16', '2024-08-15 11:16:16'),
(28, 1213, 1, 1.00, '2024-08-15 11:18:53', '2024-08-15 11:18:53'),
(31, 1217, 1, 1.00, '2024-08-15 11:21:12', '2024-08-15 11:21:12'),
(34, 1220, 1, 1.00, '2024-08-15 11:22:22', '2024-08-15 11:22:22'),
(37, 1222, 1, 1.00, '2024-08-15 11:22:53', '2024-08-15 11:22:53'),
(40, 1224, 1, 1.00, '2024-08-15 11:25:07', '2024-08-15 11:25:07'),
(43, 1229, 1, 1.00, '2024-08-15 11:27:31', '2024-08-15 11:27:31'),
(46, 1232, 1, 1.00, '2024-08-15 11:34:08', '2024-08-15 11:34:08'),
(49, 1248, 1, 1.00, '2024-08-15 11:35:45', '2024-08-15 11:35:45'),
(52, 1252, 1, 100.00, '2024-08-15 11:36:22', '2024-08-15 11:36:22'),
(55, 1254, 1, 100.00, '2024-08-15 11:38:35', '2024-08-15 11:38:35'),
(58, 1261, 1, 100.00, '2024-08-15 11:39:43', '2024-08-15 11:39:43'),
(61, 1265, 1, 100.00, '2024-08-15 11:40:18', '2024-08-15 11:40:18'),
(64, 1267, 1, 100.00, '2024-08-15 11:40:55', '2024-08-15 11:40:55'),
(67, 1269, 1, 10.00, '2024-08-15 11:42:40', '2024-08-15 11:42:40'),
(70, 1271, 1, 100.00, '2024-08-15 11:57:03', '2024-08-15 11:57:03'),
(73, 1273, 1, 100.00, '2024-08-15 11:57:57', '2024-08-15 11:57:57'),
(76, 1276, 1, 100.00, '2024-08-15 11:58:30', '2024-08-15 11:58:30'),
(79, 1278, 1, 10.00, '2024-08-15 11:59:28', '2024-08-15 11:59:28'),
(82, 1281, 1, 100.00, '2024-08-15 12:00:12', '2024-08-15 12:00:12'),
(85, 1283, 1, 100.00, '2024-08-15 12:02:16', '2024-08-15 12:02:16'),
(88, 1291, 1, 220.00, '2024-08-15 12:03:10', '2024-08-15 12:03:10'),
(91, 1294, 1, 100.00, '2024-08-15 12:03:43', '2024-08-15 12:03:43'),
(94, 1296, 1, 100.00, '2024-08-15 12:04:19', '2024-08-15 12:04:19'),
(97, 1299, 1, 100.00, '2024-08-15 12:04:49', '2024-08-15 12:04:49'),
(100, 1301, 1, 100.00, '2024-08-15 12:05:29', '2024-08-15 12:05:29'),
(103, 1303, 1, 100.00, '2024-08-15 12:05:59', '2024-08-15 12:05:59'),
(106, 1305, 1, 100.00, '2024-08-15 12:06:35', '2024-08-15 12:06:35'),
(109, 1308, 1, 100.00, '2024-08-15 12:08:05', '2024-08-15 12:08:05'),
(112, 1316, 1, 120.00, '2024-08-15 12:10:00', '2024-08-15 12:10:00'),
(115, 1318, 1, 100.00, '2024-08-15 12:10:27', '2024-08-15 12:10:27'),
(118, 1320, 1, 100.00, '2024-08-15 12:10:54', '2024-08-15 12:10:54'),
(121, 1322, 1, 100.00, '2024-08-15 12:11:19', '2024-08-15 12:11:19'),
(124, 1324, 1, 100.00, '2024-08-15 12:11:54', '2025-02-06 12:57:24'),
(127, 1327, 1, 50.00, '2024-08-15 12:12:21', '2025-02-06 12:57:24'),
(130, 1329, 1, 10.00, '2024-08-15 12:12:42', '2024-08-15 12:12:42'),
(133, 1331, 1, 50.00, '2024-08-15 12:14:15', '2025-04-24 12:57:05'),
(136, 1334, 1, 100.00, '2024-08-15 12:14:43', '2024-08-15 12:14:43'),
(139, 1336, 1, 100.00, '2024-08-15 12:17:57', '2024-08-15 12:17:57'),
(142, 1352, 1, 100.00, '2024-08-15 12:18:37', '2024-08-15 12:18:37'),
(145, 1355, 1, 100.00, '2024-08-15 12:19:31', '2024-08-15 12:19:31'),
(148, 1359, 1, 1.00, '2024-08-15 12:20:40', '2024-08-15 12:20:40'),
(151, 1362, 1, 100.00, '2024-08-15 12:21:24', '2024-08-15 12:21:24'),
(154, 1365, 1, 10.00, '2024-08-15 12:22:49', '2024-08-15 12:22:49'),
(157, 1369, 1, 100.00, '2024-08-15 12:23:34', '2024-08-15 12:23:34'),
(160, 1372, 1, 100.00, '2024-08-15 12:25:04', '2024-08-15 12:25:04'),
(163, 1375, 1, 10.00, '2024-08-15 12:25:59', '2024-08-15 12:25:59'),
(166, 1378, 1, 100.00, '2024-08-15 12:27:08', '2024-08-15 12:27:08'),
(169, 1381, 1, 100.00, '2024-08-15 12:29:47', '2024-08-15 12:29:47'),
(172, 1389, 1, 210.00, '2024-08-15 12:34:35', '2024-08-15 12:34:35'),
(175, 1408, 1, 10.00, '2024-08-15 12:47:01', '2024-08-15 12:47:01'),
(178, 1412, 1, 100.00, '2024-08-15 12:47:44', '2024-08-15 12:47:44'),
(181, 1414, 1, 50.00, '2024-08-15 12:49:08', '2025-02-06 12:59:10'),
(184, 1416, 1, 500.00, '2024-08-15 12:59:16', '2025-05-14 21:26:20'),
(187, 1437, 1, 300.00, '2024-08-15 13:54:18', '2024-10-10 14:57:23'),
(190, 1459, 1, 100.00, '2024-08-15 13:54:51', '2024-08-15 13:54:51'),
(193, 1461, 1, 100.00, '2024-08-15 13:55:18', '2024-08-15 13:55:18'),
(196, 1463, 1, 10.00, '2024-08-15 13:55:53', '2024-08-15 13:55:53'),
(199, 1465, 1, 10.00, '2024-08-15 13:56:53', '2024-08-15 13:56:53'),
(202, 1467, 1, 100.00, '2024-08-15 13:57:28', '2024-08-15 13:57:28'),
(205, 1469, 1, 100.00, '2024-08-15 13:58:41', '2024-08-15 13:58:41'),
(208, 1475, 1, 210.00, '2024-08-15 13:59:21', '2024-08-15 13:59:21'),
(211, 1478, 1, 100.00, '2024-08-15 14:00:30', '2024-08-15 14:00:30'),
(214, 1481, 1, 200.00, '2024-08-15 14:01:17', '2025-02-06 12:59:39'),
(217, 1484, 1, 100.00, '2024-08-15 14:02:07', '2024-08-15 14:02:07'),
(220, 1487, 1, 100.00, '2024-08-15 14:02:41', '2024-08-15 14:02:41'),
(223, 1490, 1, 100.00, '2024-08-15 14:04:02', '2024-08-15 14:04:02'),
(226, 1495, 1, 100.00, '2024-08-15 14:07:28', '2024-08-15 14:07:28'),
(229, 1514, 1, 100.00, '2024-08-15 14:08:28', '2024-08-15 14:08:28'),
(232, 1518, 1, 50.00, '2024-08-15 14:09:07', '2025-04-24 12:56:55'),
(235, 1520, 1, 100.00, '2024-08-15 14:11:49', '2024-08-15 14:11:49'),
(241, 1531, 1, 10.00, '2024-08-15 14:13:28', '2024-08-15 14:13:28'),
(244, 1535, 1, 10.00, '2024-08-15 14:14:09', '2024-08-15 14:14:09'),
(247, 1538, 1, 100.00, '2024-08-15 14:15:00', '2024-08-15 14:15:00'),
(250, 1542, 1, 10.00, '2024-08-15 14:16:05', '2024-08-15 14:16:05'),
(253, 1548, 1, 10.00, '2024-08-15 14:16:26', '2024-08-15 14:16:26'),
(256, 1550, 1, 100.00, '2024-08-15 15:50:02', '2024-08-15 15:50:02'),
(259, 1552, 1, 100.00, '2024-08-15 15:50:36', '2024-08-15 15:50:36'),
(262, 1554, 1, 100.00, '2024-08-15 15:51:38', '2024-08-15 15:51:38'),
(265, 1556, 1, 100.00, '2024-08-15 15:52:40', '2024-08-15 15:52:40'),
(268, 1559, 1, 10.00, '2024-08-15 15:53:01', '2024-08-15 15:53:01'),
(271, 1561, 1, 10.00, '2024-08-15 15:55:52', '2024-08-15 15:55:52'),
(274, 1574, 1, 100.00, '2024-08-15 15:56:28', '2024-08-15 15:56:28'),
(277, 1576, 1, 100.00, '2024-08-15 15:56:55', '2024-08-15 15:56:55'),
(280, 1578, 1, 21.00, '2024-08-15 15:57:19', '2024-08-15 15:57:19'),
(283, 1580, 1, 100.00, '2024-08-15 15:57:51', '2024-08-15 15:57:51'),
(286, 1582, 1, 100.00, '2024-08-15 15:58:16', '2024-08-15 15:58:16'),
(289, 1584, 1, 100.00, '2024-08-15 15:58:38', '2024-08-15 15:58:38'),
(292, 1586, 1, 100.00, '2024-08-15 15:59:15', '2024-08-15 15:59:15'),
(295, 1589, 1, 100.00, '2024-08-15 15:59:35', '2024-08-15 15:59:35'),
(298, 1591, 1, 100.00, '2024-08-15 16:00:26', '2024-08-15 16:00:26'),
(301, 1594, 1, 100.00, '2024-08-15 16:01:19', '2024-08-15 16:01:19'),
(304, 1599, 1, 100.00, '2024-08-15 16:01:46', '2024-08-15 16:01:46'),
(307, 1601, 1, 100.00, '2024-08-15 16:02:25', '2024-08-15 16:02:25'),
(310, 1604, 1, 100.00, '2024-08-15 16:09:14', '2024-08-15 16:09:14'),
(313, 1623, 1, 100.00, '2024-08-15 18:48:17', '2024-08-15 18:48:17'),
(316, 1625, 1, 150.00, '2024-08-15 18:49:14', '2024-10-10 15:06:04'),
(319, 1627, 1, 100.00, '2024-08-15 18:50:11', '2024-08-15 18:50:11'),
(322, 1631, 1, 100.00, '2024-08-15 18:51:33', '2024-08-15 18:51:33'),
(325, 1635, 1, 100.00, '2024-08-15 18:52:08', '2024-08-15 18:52:08'),
(328, 1638, 1, 10.00, '2024-08-15 18:52:43', '2024-08-15 18:52:43'),
(331, 1641, 1, 10.00, '2024-08-15 18:55:30', '2024-08-15 18:55:30'),
(334, 1649, 1, 10.00, '2024-08-15 18:55:51', '2024-08-15 18:55:51'),
(337, 1651, 1, 10.00, '2024-08-15 18:56:28', '2024-08-15 18:56:28'),
(340, 1653, 1, 10.00, '2024-08-15 18:57:02', '2024-08-15 18:57:02'),
(343, 1655, 1, 100.00, '2024-08-15 18:58:14', '2024-08-15 18:58:14'),
(346, 1657, 1, 40.00, '2024-08-15 18:58:32', '2024-08-15 18:58:32'),
(349, 1659, 1, 100.00, '2024-08-15 18:59:06', '2024-08-15 18:59:06'),
(352, 1661, 1, 100.00, '2024-08-15 19:04:18', '2024-08-15 19:04:18'),
(355, 1680, 1, 10.00, '2024-08-15 19:05:12', '2024-08-15 19:05:12'),
(358, 1683, 1, 100.00, '2024-08-15 19:06:50', '2024-08-15 19:06:50'),
(361, 1691, 1, 100.00, '2024-08-15 19:07:43', '2024-08-15 19:07:43'),
(364, 1696, 1, 100.00, '2024-08-15 19:08:06', '2024-08-15 19:08:06'),
(367, 1698, 1, 100.00, '2024-08-15 19:08:35', '2024-08-15 19:08:35'),
(370, 1701, 1, 100.00, '2024-08-15 19:08:52', '2024-08-15 19:08:52'),
(373, 1703, 1, 100.00, '2024-08-15 19:09:37', '2024-08-15 19:09:37'),
(376, 1706, 1, 200.00, '2024-08-15 19:10:52', '2025-06-11 14:37:46'),
(379, 1710, 1, 100.00, '2024-08-15 19:11:26', '2024-08-15 19:11:26'),
(382, 1713, 1, 100.00, '2024-08-15 19:11:45', '2024-08-15 19:11:45'),
(385, 1715, 1, 100.00, '2024-08-15 19:12:41', '2024-08-15 19:12:41'),
(388, 1719, 1, 100.00, '2024-08-15 19:13:35', '2024-08-15 19:13:35'),
(391, 1723, 1, 100.00, '2024-08-15 19:14:26', '2024-08-15 19:14:26'),
(394, 1727, 1, 100.00, '2024-08-15 19:14:43', '2024-08-15 19:14:43'),
(397, 1729, 1, 100.00, '2024-08-15 19:15:12', '2024-08-15 19:15:12'),
(400, 1731, 1, 120.00, '2024-08-15 19:16:30', '2024-08-15 19:16:30'),
(403, 1736, 1, 10.00, '2024-08-15 19:17:35', '2024-08-15 19:17:35'),
(406, 1741, 1, 2.00, '2024-08-15 19:21:42', '2024-08-15 19:21:42'),
(409, 1753, 1, 10.00, '2024-08-15 19:23:24', '2024-08-15 19:23:24'),
(412, 1759, 1, 10.00, '2024-08-15 19:26:29', '2024-08-15 19:26:29'),
(415, 1765, 1, 10.00, '2024-08-15 19:26:49', '2024-08-15 19:26:49'),
(418, 1767, 1, 100.00, '2024-08-15 19:27:09', '2024-08-15 19:27:09'),
(421, 1769, 1, 100.00, '2024-08-15 19:28:34', '2024-08-15 19:28:34'),
(424, 1772, 1, 10.00, '2024-08-15 19:29:23', '2024-08-15 19:29:23'),
(427, 1774, 1, 100.00, '2024-08-15 19:30:54', '2024-08-15 19:30:54'),
(430, 1777, 1, 100.00, '2024-08-15 19:36:29', '2024-08-15 19:36:29'),
(433, 1789, 1, 100.00, '2024-08-15 19:37:08', '2024-08-15 19:37:08'),
(436, 1792, 1, 10.00, '2024-08-15 20:04:34', '2024-08-15 20:04:34'),
(439, 1794, 1, 10.00, '2024-08-15 20:05:06', '2024-08-15 20:05:06'),
(442, 1797, 1, 800.00, '2024-08-15 20:05:43', '2024-10-10 15:01:29'),
(445, 1800, 1, 100.00, '2024-08-15 20:06:20', '2024-08-15 20:06:20'),
(448, 1803, 1, 400.00, '2024-08-15 20:06:51', '2025-02-06 13:11:40'),
(451, 1806, 1, 10.00, '2024-08-15 20:07:16', '2024-08-15 20:07:16'),
(454, 1808, 1, 10.00, '2024-08-15 20:07:42', '2024-08-15 20:07:42'),
(457, 1810, 1, 500.00, '2024-08-15 20:08:42', '2025-06-11 14:43:48'),
(460, 1812, 1, 10.00, '2024-08-15 20:10:01', '2024-08-15 20:10:01'),
(463, 1816, 1, 10.00, '2024-08-15 20:10:45', '2024-08-15 20:10:45'),
(466, 1819, 1, 10.00, '2024-08-15 20:11:24', '2024-08-15 20:11:24'),
(469, 1822, 1, 1.00, '2024-08-15 20:11:43', '2024-08-15 20:11:43'),
(481, 1837, 1, 100.00, '2024-08-15 20:15:50', '2024-08-15 20:15:50'),
(484, 1843, 1, 10.00, '2024-08-15 20:16:31', '2024-08-15 20:16:31'),
(487, 1847, 1, 600.00, '2024-08-15 20:17:46', '2025-06-11 14:38:17'),
(490, 1852, 1, 10.00, '2024-08-15 20:19:05', '2024-08-15 20:19:05'),
(493, 1858, 1, 350.00, '2024-08-15 20:19:24', '2024-10-10 14:58:06'),
(496, 1860, 1, 350.00, '2024-08-15 20:20:28', '2024-10-10 14:58:06'),
(499, 1864, 1, 10.00, '2024-08-15 20:21:05', '2024-08-15 20:21:05'),
(502, 1867, 1, 100.00, '2024-08-15 20:23:02', '2024-08-15 20:23:02'),
(505, 1871, 1, 10.00, '2024-08-15 20:24:03', '2024-08-15 20:24:03'),
(508, 1875, 1, 100.00, '2024-08-15 20:25:02', '2024-08-15 20:25:02'),
(511, 1880, 1, 200.00, '2024-08-15 20:25:46', '2024-10-10 15:00:56'),
(514, 1882, 1, 600.00, '2024-08-15 20:26:07', '2024-10-10 15:00:56'),
(517, 1884, 1, 10.00, '2024-08-15 20:27:02', '2024-08-15 20:27:02'),
(520, 1888, 1, 100.00, '2024-08-15 20:28:28', '2024-08-15 20:28:28'),
(523, 1890, 1, 100.00, '2024-08-15 20:28:51', '2024-08-15 20:28:51'),
(526, 1892, 1, 10.00, '2024-08-15 20:29:25', '2024-08-15 20:29:25'),
(529, 1897, 1, 10.00, '2024-08-15 20:30:06', '2024-08-15 20:30:06'),
(532, 1901, 1, 10.00, '2024-08-15 20:41:36', '2024-08-15 20:41:36'),
(535, 1903, 1, 100.00, '2024-08-15 20:42:16', '2024-08-15 20:42:16'),
(538, 1906, 1, 350.00, '2024-08-15 20:42:48', '2025-06-11 14:43:48'),
(541, 1908, 1, 10.00, '2024-08-15 20:43:57', '2024-08-15 20:43:57'),
(544, 1911, 1, 100.00, '2024-08-15 20:44:31', '2024-08-15 20:44:31'),
(547, 1914, 1, 100.00, '2024-08-15 20:45:32', '2024-08-15 20:45:32'),
(550, 1917, 1, 10.00, '2024-08-15 20:46:38', '2024-08-15 20:46:38'),
(553, 1921, 1, 100.00, '2024-08-15 20:47:06', '2024-08-15 20:47:06'),
(556, 1924, 1, 300.00, '2024-08-15 20:48:20', '2025-06-11 14:43:48'),
(559, 1927, 1, 10.00, '2024-08-15 21:39:46', '2024-08-15 21:39:46'),
(562, 1934, 1, 100.00, '2024-08-15 21:40:34', '2024-08-15 21:40:34'),
(565, 1936, 1, 10.00, '2024-08-15 21:41:10', '2024-08-15 21:41:10'),
(568, 1939, 1, 10.00, '2024-08-15 21:42:19', '2024-08-15 21:42:19'),
(571, 1943, 1, 10.00, '2024-08-15 21:43:00', '2024-08-15 21:43:00'),
(574, 1947, 1, 1000.00, '2024-08-15 21:43:25', '2024-08-15 21:43:25'),
(577, 1949, 1, 10.00, '2024-08-15 21:43:47', '2024-08-15 21:43:47'),
(580, 1951, 1, 10.00, '2024-08-15 21:44:07', '2024-08-15 21:44:07'),
(583, 1953, 1, 100.00, '2024-08-15 21:44:43', '2024-08-15 21:44:43'),
(586, 1956, 1, 100.00, '2024-08-15 21:44:58', '2024-08-15 21:44:58'),
(589, 1958, 1, 10.00, '2024-08-15 21:45:18', '2024-08-15 21:45:18'),
(592, 1960, 1, 300.00, '2024-08-15 21:45:51', '2025-02-06 13:11:40'),
(595, 1962, 1, 10.00, '2024-08-15 21:46:14', '2024-08-15 21:46:14'),
(598, 1964, 1, 100.00, '2024-08-15 21:46:34', '2024-08-15 21:46:34'),
(601, 1966, 1, 100.00, '2024-08-15 21:47:17', '2024-08-15 21:47:17'),
(604, 1968, 1, 10.00, '2024-08-15 21:47:44', '2024-08-15 21:47:44'),
(607, 1970, 1, 10.00, '2024-08-15 21:48:28', '2024-08-15 21:48:28'),
(610, 1973, 1, 10.00, '2024-08-15 21:50:16', '2024-08-15 21:50:16'),
(613, 1981, 1, 10.00, '2024-08-15 21:51:23', '2024-08-15 21:51:23'),
(616, 1983, 1, 10.00, '2024-08-15 21:51:52', '2024-08-15 21:51:52'),
(619, 1986, 1, 10.00, '2024-08-15 21:52:42', '2024-08-15 21:52:42'),
(622, 1989, 1, 10.00, '2024-08-15 21:53:12', '2024-08-15 21:53:12'),
(625, 1991, 1, 1200.00, '2024-08-15 21:53:35', '2025-02-06 13:11:40'),
(628, 1994, 1, 10.00, '2024-08-15 21:54:23', '2024-08-15 21:54:23'),
(631, 1998, 1, 10.00, '2024-08-15 21:55:10', '2024-08-15 21:55:10'),
(634, 2001, 1, 100.00, '2024-08-15 21:56:01', '2025-06-11 14:38:17'),
(637, 2004, 1, 10.00, '2024-08-15 21:57:17', '2024-08-15 21:57:17'),
(640, 2011, 1, 10.00, '2024-08-15 22:00:06', '2024-08-15 22:00:06'),
(643, 2023, 1, 100.00, '2024-08-15 22:03:46', '2024-10-10 14:58:17'),
(646, 2031, 1, 10.00, '2024-08-15 22:25:04', '2024-08-15 22:25:04'),
(649, 2034, 1, 100.00, '2024-08-15 22:28:03', '2024-08-15 22:28:03'),
(652, 2037, 1, 100.00, '2024-08-15 22:28:51', '2024-08-15 22:28:51'),
(655, 2041, 1, 100.00, '2024-08-15 22:29:15', '2024-08-15 22:29:15'),
(658, 2043, 1, 100.00, '2024-08-15 22:30:01', '2024-08-15 22:30:01'),
(661, 2046, 1, 100.00, '2024-08-15 22:30:19', '2024-08-15 22:30:19'),
(664, 2048, 1, 10.00, '2024-08-15 22:31:19', '2024-08-15 22:31:19'),
(667, 2054, 1, 100.00, '2024-08-15 22:32:01', '2024-08-15 22:32:01'),
(670, 2056, 1, 10.00, '2024-08-15 22:33:06', '2024-08-15 22:33:06'),
(673, 2060, 1, 100.00, '2024-08-15 22:34:14', '2024-08-15 22:34:14'),
(676, 2069, 1, 100.00, '2024-08-15 22:34:37', '2024-08-15 22:34:37'),
(679, 2071, 1, 100.00, '2024-08-15 22:35:35', '2024-08-15 22:35:35'),
(682, 2073, 1, 100.00, '2024-08-15 22:36:20', '2024-08-15 22:36:20'),
(685, 2077, 1, 10.00, '2024-08-15 22:36:55', '2024-08-15 22:36:55'),
(688, 2079, 1, 41.00, '2024-08-15 22:41:43', '2024-08-15 22:41:43'),
(691, 2100, 1, 100.00, '2024-08-15 22:41:59', '2024-08-15 22:41:59'),
(694, 2102, 1, 10.00, '2024-08-15 22:42:22', '2024-08-15 22:42:22'),
(697, 2104, 1, 1200.00, '2024-08-15 22:44:20', '2025-02-06 13:11:40'),
(700, 2108, 1, 10.00, '2024-08-15 22:45:14', '2024-08-15 22:45:14'),
(703, 2110, 1, 100.00, '2024-08-15 22:45:44', '2024-08-15 22:45:44'),
(706, 2112, 1, 100.00, '2024-08-15 22:46:27', '2024-08-15 22:46:27'),
(709, 2114, 1, 1.00, '2024-08-15 22:46:59', '2024-08-15 22:46:59'),
(712, 2117, 1, 11.00, '2024-08-15 22:47:58', '2024-08-15 22:47:58'),
(715, 2121, 1, 10.00, '2024-08-15 22:48:14', '2024-08-15 22:48:14'),
(718, 2123, 1, 10.00, '2024-08-15 22:49:00', '2024-08-15 22:49:00'),
(721, 2125, 1, 100.00, '2024-08-15 22:50:01', '2024-08-15 22:50:01'),
(724, 2127, 1, 10.00, '2024-08-15 22:50:20', '2024-08-15 22:50:20'),
(727, 2129, 1, 100.00, '2024-08-15 22:50:38', '2024-08-15 22:50:38'),
(730, 2131, 1, 100.00, '2024-08-15 22:51:12', '2024-08-15 22:51:12'),
(733, 2133, 1, 10.00, '2024-08-15 22:52:19', '2024-08-15 22:52:19'),
(736, 2137, 1, 10.00, '2024-08-15 22:52:42', '2024-08-15 22:52:42'),
(739, 2139, 1, 10.00, '2024-08-15 22:54:01', '2024-08-15 22:54:01'),
(742, 2145, 1, 150.00, '2024-08-15 23:16:59', '2024-10-10 15:03:44'),
(745, 2167, 1, 10.00, '2024-08-15 23:59:09', '2024-08-15 23:59:09'),
(748, 2182, 1, 100.00, '2024-08-15 23:59:40', '2024-08-15 23:59:40'),
(751, 2186, 1, 10.00, '2024-08-16 00:03:26', '2024-08-16 00:03:26'),
(754, 2189, 1, 100.00, '2024-08-16 00:04:08', '2024-08-16 00:04:08'),
(757, 2193, 1, 10.00, '2024-08-16 00:13:04', '2024-08-16 00:13:04'),
(760, 2196, 1, 10.00, '2024-08-16 00:22:27', '2024-08-16 00:22:27'),
(763, 2198, 1, 1.00, '2024-08-16 00:22:53', '2024-08-16 00:22:53'),
(766, 2200, 1, 1.00, '2024-08-16 00:23:18', '2024-08-16 00:23:18'),
(769, 2202, 1, 1.00, '2024-08-16 00:23:59', '2024-08-16 00:23:59'),
(772, 2205, 1, 10.00, '2024-08-16 00:25:11', '2024-08-16 00:25:11'),
(775, 2208, 1, 10.00, '2024-08-16 00:25:51', '2024-08-16 00:25:51'),
(778, 2211, 1, 10.00, '2024-08-16 00:26:15', '2024-08-16 00:26:15'),
(781, 2213, 1, 200.00, '2024-08-16 00:26:54', '2025-02-06 13:11:40'),
(784, 2217, 1, 1.00, '2024-08-16 00:27:47', '2024-08-16 00:27:47'),
(787, 2219, 1, 10.00, '2024-08-16 00:28:07', '2024-08-16 00:28:07'),
(790, 2221, 1, 10.00, '2024-08-16 00:28:27', '2024-08-16 00:28:27'),
(793, 2223, 1, 10.00, '2024-08-16 00:28:46', '2024-08-16 00:28:46'),
(796, 2225, 1, 10.00, '2024-08-16 00:29:23', '2024-08-16 00:29:23'),
(799, 2227, 1, 10.00, '2024-08-16 00:30:31', '2024-08-16 00:30:31'),
(802, 2231, 1, 10.00, '2024-08-16 00:31:17', '2024-08-16 00:31:17'),
(805, 2235, 1, 21.00, '2024-08-16 00:32:05', '2024-08-16 00:32:05'),
(808, 2239, 1, 100.00, '2024-08-16 00:33:21', '2024-10-10 14:59:43'),
(811, 2243, 1, 200.00, '2024-08-16 00:34:55', '2024-10-10 14:59:43'),
(814, 2250, 1, 100.00, '2024-08-16 00:35:30', '2024-10-10 14:59:43'),
(817, 2252, 1, 200.00, '2024-08-16 00:35:56', '2024-10-10 15:02:51'),
(820, 2254, 1, 10.00, '2024-08-16 00:36:17', '2024-08-16 00:36:17'),
(823, 2256, 1, 10.00, '2024-08-16 00:36:41', '2024-08-16 00:36:41'),
(826, 2258, 1, 10.00, '2024-08-16 00:37:04', '2024-08-16 00:37:04'),
(829, 2260, 1, 10.00, '2024-08-16 00:37:28', '2024-08-16 00:37:28'),
(832, 2262, 1, 200.00, '2024-08-16 00:37:52', '2025-02-06 13:11:40'),
(835, 2264, 1, 200.00, '2024-08-16 00:38:16', '2025-02-06 13:11:40'),
(838, 2266, 1, 10.00, '2024-08-16 00:38:38', '2024-08-16 00:38:38'),
(841, 2268, 1, 10.00, '2024-08-16 00:38:55', '2024-08-16 00:38:55'),
(844, 2270, 1, 1.00, '2024-08-16 00:39:16', '2024-08-16 00:39:16'),
(847, 2272, 1, 10.00, '2024-08-16 00:40:15', '2024-08-16 00:40:15'),
(850, 2274, 1, 200.00, '2024-08-16 00:40:43', '2025-02-05 19:56:49'),
(853, 2276, 1, 10.00, '2024-08-16 00:41:08', '2024-08-16 00:41:08'),
(856, 2278, 1, 10.00, '2024-08-16 00:41:28', '2024-08-16 00:41:28'),
(859, 2280, 1, 10.00, '2024-08-16 00:42:12', '2024-08-16 00:42:12'),
(862, 2282, 1, 10.00, '2024-08-16 00:42:54', '2024-08-16 00:42:54'),
(865, 2285, 1, 500.00, '2024-08-16 00:43:47', '2025-02-06 13:11:40'),
(868, 2290, 1, 10.00, '2024-08-16 00:44:14', '2024-08-16 00:44:14'),
(871, 2292, 1, 41.00, '2024-08-16 00:45:08', '2024-08-16 00:45:08'),
(874, 2294, 1, 41.00, '2024-08-16 00:45:43', '2024-08-16 00:45:43'),
(877, 2297, 1, 1.00, '2024-08-16 00:46:33', '2024-08-16 00:46:33'),
(880, 2301, 1, 10.00, '2024-08-16 00:47:21', '2024-08-16 00:47:21'),
(883, 2304, 1, 10.00, '2024-08-16 00:48:51', '2024-08-16 00:48:51'),
(886, 2308, 1, 1.00, '2024-08-16 00:49:18', '2024-08-16 00:49:18'),
(889, 2310, 1, 200.00, '2024-08-16 00:49:47', '2025-06-11 14:45:58'),
(892, 2312, 1, 10.00, '2024-08-16 00:50:37', '2024-08-16 00:50:37'),
(895, 2316, 1, 10.00, '2024-08-16 00:51:00', '2024-08-16 00:51:00'),
(898, 2318, 1, 10.00, '2024-08-16 00:51:30', '2024-08-16 00:51:30'),
(901, 2320, 1, 10.00, '2024-08-16 00:51:51', '2024-08-16 00:51:51'),
(904, 2322, 1, 0.00, '2024-08-16 00:52:15', '2024-08-16 00:52:15'),
(907, 2324, 1, 10.00, '2024-08-16 00:52:39', '2024-08-16 00:52:39'),
(910, 2326, 1, 10.00, '2024-08-16 00:54:55', '2024-08-16 00:54:55'),
(913, 2335, 1, 500.00, '2024-08-16 00:56:15', '2024-10-10 15:03:15'),
(916, 2338, 1, 100.00, '2024-08-16 09:39:53', '2024-08-16 09:39:53'),
(919, 2340, 1, 10.00, '2024-08-16 10:16:26', '2024-08-16 10:16:26'),
(922, 2342, 1, 10.00, '2024-08-16 10:17:30', '2024-08-16 10:17:30'),
(925, 2344, 1, 100.00, '2024-08-16 10:18:22', '2024-08-16 10:18:22'),
(928, 2348, 1, 10.00, '2024-08-16 10:18:46', '2024-08-16 10:18:46'),
(931, 2350, 1, 10.00, '2024-08-16 10:19:10', '2024-08-16 10:19:10'),
(934, 2352, 1, 10.00, '2024-08-16 10:19:31', '2024-08-16 10:19:31'),
(937, 2354, 1, 10.00, '2024-08-16 10:19:52', '2024-08-16 10:19:52'),
(940, 2356, 1, 120.00, '2024-08-16 10:20:26', '2024-08-16 10:20:26'),
(943, 2358, 1, 10.00, '2024-08-16 10:21:00', '2024-08-16 10:21:00'),
(946, 2360, 1, 300.00, '2024-08-16 10:23:44', '2024-10-10 15:02:39'),
(949, 2372, 1, 100.00, '2024-08-16 10:24:17', '2024-08-16 10:24:17'),
(952, 2374, 1, 10.00, '2024-08-16 10:24:47', '2024-08-16 10:24:47'),
(955, 2376, 1, 10.00, '2024-08-16 10:25:16', '2024-08-16 10:25:16'),
(958, 2378, 1, 10.00, '2024-08-16 10:25:41', '2024-08-16 10:25:41'),
(961, 2380, 1, 10.00, '2024-08-16 10:26:04', '2024-08-16 10:26:04'),
(964, 2382, 1, 500.00, '2024-08-16 10:28:26', '2024-10-10 15:01:58'),
(967, 2392, 1, 10.00, '2024-08-16 10:28:57', '2024-08-16 10:28:57'),
(970, 2394, 1, 500.00, '2024-08-16 10:32:17', '2025-05-14 21:26:20'),
(973, 2406, 1, 10.00, '2024-08-16 11:19:01', '2024-08-16 11:19:01'),
(976, 2408, 1, 100.00, '2024-08-16 11:19:32', '2024-08-16 11:19:32'),
(979, 2410, 1, 10.00, '2024-08-16 11:19:59', '2024-08-16 11:19:59'),
(982, 2412, 1, 10.00, '2024-08-16 11:20:34', '2024-08-16 11:20:34'),
(985, 2415, 1, 200.00, '2024-08-16 11:20:56', '2025-02-06 13:11:40'),
(988, 2417, 1, 100.00, '2024-08-16 11:21:28', '2025-02-06 13:11:40'),
(991, 2419, 1, 10.00, '2024-08-16 11:30:58', '2024-08-16 11:30:58'),
(994, 2421, 1, 10.00, '2024-08-16 11:31:17', '2024-08-16 11:31:17'),
(997, 2423, 1, 10.00, '2024-08-16 11:31:42', '2024-08-16 11:31:42'),
(1000, 2425, 1, 10.00, '2024-08-16 11:32:03', '2024-08-16 11:32:03'),
(1003, 2427, 1, 10.00, '2024-08-16 11:32:28', '2024-08-16 11:32:28'),
(1006, 2430, 1, 10.00, '2024-08-16 11:32:41', '2024-08-16 11:32:41'),
(1009, 2433, 1, 100.00, '2024-08-16 11:33:24', '2024-10-10 14:59:43'),
(1012, 2437, 1, 350.00, '2024-08-16 11:48:13', '2025-06-11 14:43:48'),
(1015, 2444, 1, 100.00, '2024-08-16 11:48:46', '2024-08-16 11:48:46'),
(1018, 2446, 1, 100.00, '2024-08-16 11:49:25', '2024-08-16 11:49:25'),
(1021, 2448, 1, 10.00, '2024-08-16 11:49:50', '2024-08-16 11:49:50'),
(1024, 2450, 1, 10.00, '2024-08-16 11:50:35', '2024-08-16 11:50:35'),
(1027, 2454, 1, 10.00, '2024-08-16 11:50:58', '2024-08-16 11:50:58'),
(1030, 2456, 1, 100.00, '2024-08-16 11:51:18', '2025-02-06 13:11:40'),
(1033, 2458, 1, 100.00, '2024-08-16 11:51:36', '2025-02-06 13:11:40'),
(1036, 2460, 1, 200.00, '2024-08-16 11:51:53', '2025-02-06 13:11:40'),
(1039, 2462, 1, 10.00, '2024-08-16 11:52:14', '2024-08-16 11:52:14'),
(1042, 2464, 1, 10.00, '2024-08-16 11:52:35', '2024-08-16 11:52:35'),
(1045, 2466, 1, 10.00, '2024-08-16 11:53:00', '2024-08-16 11:53:00'),
(1048, 2468, 1, 10.00, '2024-08-16 11:53:20', '2024-08-16 11:53:20'),
(1051, 2470, 1, 300.00, '2024-08-16 11:53:37', '2024-10-10 15:00:16'),
(1054, 2472, 1, 10.00, '2024-08-16 11:54:33', '2024-08-16 11:54:33'),
(1057, 2476, 1, 10.00, '2024-08-16 11:55:00', '2024-08-16 11:55:00'),
(1060, 2478, 1, 10.00, '2024-08-16 11:55:23', '2024-08-16 11:55:23'),
(1063, 2480, 1, 10.00, '2024-08-16 11:55:42', '2024-08-16 11:55:42'),
(1066, 2482, 1, 10.00, '2024-08-16 11:56:00', '2024-08-16 11:56:00'),
(1069, 2484, 1, 100.00, '2024-08-16 11:56:17', '2024-08-16 11:56:17'),
(1072, 2486, 1, 10.00, '2024-08-16 11:56:37', '2024-08-16 11:56:37'),
(1075, 2488, 1, 10.00, '2024-08-16 12:04:13', '2024-08-16 12:04:13'),
(1078, 2490, 1, 10.00, '2024-08-16 12:04:53', '2024-08-16 12:04:53'),
(1081, 2492, 1, 1000.00, '2024-08-18 12:12:00', '2025-02-06 13:11:40'),
(1084, 2494, 1, 100.00, '2024-08-18 12:13:01', '2024-08-18 12:13:01'),
(1087, 2498, 1, 100.00, '2024-08-18 12:13:36', '2024-08-18 12:13:36'),
(1090, 2500, 1, 500.00, '2024-08-18 12:14:47', '2024-10-10 15:03:24'),
(1093, 2504, 1, 100.00, '2024-08-18 12:15:29', '2024-08-18 12:15:29'),
(1096, 2506, 1, 300.00, '2024-10-04 16:18:24', '2024-10-10 14:59:43'),
(1097, 2533, 1, 300.00, '2025-05-14 21:53:30', '2025-05-28 18:52:51');

-- --------------------------------------------------------

--
-- Table structure for table `test_reference_ranges`
--

CREATE TABLE `test_reference_ranges` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `test_id` int(11) DEFAULT NULL,
  `gender` varchar(191) DEFAULT NULL,
  `age_unit` varchar(191) DEFAULT NULL,
  `age_from` double DEFAULT NULL,
  `age_from_days` double DEFAULT NULL,
  `age_to` double DEFAULT NULL,
  `age_to_days` double DEFAULT NULL,
  `critical_low_from` varchar(191) DEFAULT NULL,
  `normal_from` varchar(191) DEFAULT NULL,
  `normal_to` varchar(191) DEFAULT NULL,
  `critical_high_from` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `test_reference_ranges`
--

INSERT INTO `test_reference_ranges` (`id`, `test_id`, `gender`, `age_unit`, `age_from`, `age_from_days`, `age_to`, `age_to_days`, `critical_low_from`, `normal_from`, `normal_to`, `critical_high_from`, `created_at`, `updated_at`) VALUES
(48, 2525, 'male', 'year', 10, 3650, 100, 36500, '10', '10', '10', '15', '2024-10-05 23:39:54', '2024-10-05 23:39:54'),
(64, 2471, 'both', 'year', 1, 365, 100, 36500, '2.5', '2.5', '7.2', '7.2', '2024-10-06 13:29:38', '2024-10-06 13:29:38'),
(66, 2381, 'both', 'year', 1, 365, 100, 36500, '13', '10', '60', '60', '2024-10-06 13:32:07', '2024-10-06 13:32:07'),
(69, 2209, 'both', 'year', 1, 365, 100, 36500, '01', '01', '80', '80', '2024-10-06 13:34:11', '2024-10-06 13:34:11'),
(71, 2426, 'both', 'year', 1, 365, 100, 36500, '6.4', '6.4', '8.2', '8.2', '2024-10-06 13:38:37', '2024-10-06 13:38:37'),
(72, 2197, 'both', 'year', 1, 365, 100, 36500, '3.5', '3.5', '5.0', '5.0', '2024-10-06 13:39:00', '2024-10-06 13:39:00'),
(73, 1963, 'both', 'year', 1, 365, 100, 36500, '0.5', '0.5', '20', '20', '2024-10-06 13:39:46', '2024-10-06 13:39:46'),
(107, 2244, 'both', 'year', 1, 365, 100, 36500, '60', '60', '110', '110', '2024-10-12 13:23:36', '2024-10-12 13:23:36'),
(108, 2247, 'both', 'year', 1, 365, 100, 36500, '70', '70', '180', '180', '2024-10-12 13:23:36', '2024-10-12 13:23:36'),
(117, 1417, 'both', 'year', 12, 4380, 65, 23725, '11', '12', '18', '18', '2024-10-15 20:45:09', '2024-10-15 20:45:09'),
(118, 1418, 'both', 'year', 12, 4380, 65, 23725, '3.5', '3.5', '6.0', '6.0', '2024-10-15 20:45:09', '2024-10-15 20:45:09'),
(119, 1420, 'both', 'year', 1, 365, 100, 36500, '4,000', '4,000', '11,000', '11,000', '2024-10-15 20:45:09', '2024-10-15 20:45:09'),
(120, 1425, 'both', 'year', 1, 365, 100, 36500, '1.5', '1.5', '4.5', '4.5', '2024-10-15 20:45:09', '2024-10-15 20:45:09'),
(172, 2438, 'both', 'year', 1, 365, 100, 36500, '10', '10', '45', '45.0', '2025-02-04 10:17:50', '2025-02-04 10:17:50'),
(173, 2439, 'both', 'year', 1, 365, 100, 36500, '0.5', '0.5', '1.5', '1.6', '2025-02-04 10:17:50', '2025-02-04 10:17:50'),
(174, 2440, 'both', 'year', 1, 365, 100, 36500, '2.5', '2.5', '7.2', '7.2', '2025-02-04 10:17:50', '2025-02-04 10:17:50'),
(175, 2441, 'both', 'year', 1, 365, 100, 36500, '6.4', '6.4', '8.3', '8.3', '2025-02-04 10:17:50', '2025-02-04 10:17:50'),
(176, 2442, 'both', 'year', 1, 365, 100, 36500, '3.5', '3.5', '5.2', '5.2', '2025-02-04 10:17:50', '2025-02-04 10:17:50'),
(183, 2263, 'both', 'day', 1, 1, 100, 100, '8.51', '8.51', '10.2', '10.2', '2025-02-06 12:54:32', '2025-02-06 12:54:32'),
(284, 2253, 'both', 'year', 1, 365, 100, 36500, '0', '1', '45', '45', '2025-05-17 19:04:06', '2025-05-17 19:04:06'),
(285, 2275, 'both', 'year', 1, 365, 100, 36500, '0.5', '0.5', '1.5', '1.5', '2025-05-17 19:05:46', '2025-05-17 19:05:46'),
(289, 1482, 'both', 'year', 1, 365, 70, 25550, '0', '1', '20', '20', '2025-05-17 19:19:16', '2025-05-17 19:19:16'),
(290, 1804, 'both', 'year', 5, 1825, 100, 36500, '0.0', '0.5', '200', '200', '2025-05-17 19:21:12', '2025-05-17 19:21:12'),
(291, 1519, 'both', 'year', 10, 3650, 70, 25550, '11.0', '11.0', '18.0', '18.0', '2025-05-17 19:26:34', '2025-05-17 19:26:34'),
(305, 1811, 'both', 'year', 1, 365, 100, 36500, '1.0', '1.0', '6.0', '6.0', '2025-05-26 20:21:19', '2025-05-26 20:21:19'),
(342, 2515, 'male', 'year', 10, 3650, 50, 18250, '0', '0', '1.0', '1.0', '2025-06-11 15:14:45', '2025-06-11 15:14:45'),
(343, 2516, 'both', 'year', 10, 3650, 70, 25550, '0.25', '0.0', '0.025', '0.03', '2025-06-11 15:14:45', '2025-06-11 15:14:45'),
(344, 2517, 'both', 'year', 10, 3650, 70, 25550, '0.0', '0.0', '0.7', '0.7', '2025-06-11 15:14:45', '2025-06-11 15:14:45'),
(345, 2518, 'both', 'year', 10, 3650, 70, 25550, '0', '0', '41', '41', '2025-06-11 15:14:45', '2025-06-11 15:14:45'),
(346, 2519, 'both', 'year', 10, 3650, 70, 25550, '5', '5', '40', '40', '2025-06-11 15:14:45', '2025-06-11 15:14:45'),
(347, 2520, 'both', 'year', 10, 3650, 70, 25550, '98', '98', '279', '279', '2025-06-11 15:14:45', '2025-06-11 15:14:45'),
(348, 2521, 'both', 'year', 10, 3650, 70, 25550, '6', '6', '8.4', '8.4', '2025-06-11 15:14:45', '2025-06-11 15:14:45'),
(349, 2522, 'both', 'year', 10, 3650, 70, 25550, '3.2', '3.2', '5.0', '5.0', '2025-06-11 15:14:45', '2025-06-11 15:14:45'),
(350, 2531, 'both', 'year', 10, 3650, 70, 25550, '2.3', '2.3', '3.5', '3.5', '2025-06-11 15:14:45', '2025-06-11 15:14:45'),
(351, 2534, 'male', 'year', 0, 0, 5, 1825, '13.5', '13.5', '17', '17', '2025-06-12 01:18:59', '2025-06-12 01:18:59'),
(352, 2534, 'female', 'year', 1, 365, 99, 36135, '11.5', '11.5', '15', '15', '2025-06-12 01:18:59', '2025-06-12 01:18:59'),
(353, 2535, 'both', 'year', 1, 365, 99, 36135, '3.5', '3.5', '5.5', '5.5', '2025-06-12 01:18:59', '2025-06-12 01:18:59'),
(354, 2536, 'both', 'year', 1, 365, 99, 36135, '4000', '4000', '11000', '11000', '2025-06-12 01:18:59', '2025-06-12 01:18:59'),
(355, 2537, 'both', 'year', 1, 365, 99, 36135, '1.5', '1.5', '4.5', '4.5', '2025-06-12 01:18:59', '2025-06-12 01:18:59'),
(356, 2538, 'both', 'year', 1, 365, 99, 36135, '40', '40', '54', '54', '2025-06-12 01:18:59', '2025-06-12 01:18:59'),
(357, 2539, 'both', 'year', 1, 365, 99, 36135, '78', '78', '98', '98', '2025-06-12 01:18:59', '2025-06-12 01:18:59'),
(358, 2543, 'both', 'year', 1, 365, 99, 36135, '40', '40', '65', '65', '2025-06-12 01:18:59', '2025-06-12 01:18:59'),
(359, 2544, 'both', 'year', 1, 365, 99, 36135, '20', '20', '45', '45', '2025-06-12 01:18:59', '2025-06-12 01:18:59'),
(360, 2545, 'both', 'year', 1, 365, 99, 36135, '01', '01', '06', '06', '2025-06-12 01:18:59', '2025-06-12 01:18:59'),
(361, 2546, 'both', 'year', 1, 365, 99, 36135, '02', '02', '10', '10', '2025-06-12 01:18:59', '2025-06-12 01:18:59'),
(362, 2547, 'both', 'year', 1, 365, 99, 36135, '00', '00', '01', '01', '2025-06-12 01:18:59', '2025-06-12 01:18:59');

-- --------------------------------------------------------

--
-- Table structure for table `timezones`
--

CREATE TABLE `timezones` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text DEFAULT NULL,
  `timezone` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `timezones`
--

INSERT INTO `timezones` (`id`, `name`, `timezone`, `created_at`, `updated_at`) VALUES
(1, '(GMT-10:00) America/Adak (Hawaii-Aleutian Standard Time)', 'America/Adak', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(2, '(GMT-10:00) America/Atka (Hawaii-Aleutian Standard Time)', 'America/Atka', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(3, '(GMT-9:00) America/Anchorage (Alaska Standard Time)', 'America/Anchorage', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(4, '(GMT-9:00) America/Juneau (Alaska Standard Time)', 'America/Juneau', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(5, '(GMT-9:00) America/Nome (Alaska Standard Time)', 'America/Nome', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(6, '(GMT-9:00) America/Yakutat (Alaska Standard Time)', 'America/Yakutat', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(7, '(GMT-8:00) America/Dawson (Pacific Standard Time)', 'America/Dawson', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(8, '(GMT-8:00) America/Ensenada (Pacific Standard Time)', 'America/Ensenada', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(9, '(GMT-8:00) America/Los_Angeles (Pacific Standard Time)', 'America/Los_Angeles', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(10, '(GMT-8:00) America/Tijuana (Pacific Standard Time)', 'America/Tijuana', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(11, '(GMT-8:00) America/Vancouver (Pacific Standard Time)', 'America/Vancouver', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(12, '(GMT-8:00) America/Whitehorse (Pacific Standard Time)', 'America/Whitehorse', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(13, '(GMT-8:00) Canada/Pacific (Pacific Standard Time)', 'Canada/Pacific', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(14, '(GMT-8:00) Canada/Yukon (Pacific Standard Time)', 'Canada/Yukon', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(15, '(GMT-8:00) Mexico/BajaNorte (Pacific Standard Time)', 'Mexico/BajaNorte', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(16, '(GMT-7:00) America/Boise (Mountain Standard Time)', 'America/Boise', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(17, '(GMT-7:00) America/Cambridge_Bay (Mountain Standard Time)', 'America/Cambridge_Bay', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(18, '(GMT-7:00) America/Chihuahua (Mountain Standard Time)', 'America/Chihuahua', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(19, '(GMT-7:00) America/Dawson_Creek (Mountain Standard Time)', 'America/Dawson_Creek', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(20, '(GMT-7:00) America/Denver (Mountain Standard Time)', 'America/Denver', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(21, '(GMT-7:00) America/Edmonton (Mountain Standard Time)', 'America/Edmonton', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(22, '(GMT-7:00) America/Hermosillo (Mountain Standard Time)', 'America/Hermosillo', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(23, '(GMT-7:00) America/Inuvik (Mountain Standard Time)', 'America/Inuvik', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(24, '(GMT-7:00) America/Mazatlan (Mountain Standard Time)', 'America/Mazatlan', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(25, '(GMT-7:00) America/Phoenix (Mountain Standard Time)', 'America/Phoenix', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(26, '(GMT-7:00) America/Shiprock (Mountain Standard Time)', 'America/Shiprock', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(27, '(GMT-7:00) America/Yellowknife (Mountain Standard Time)', 'America/Yellowknife', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(28, '(GMT-7:00) Canada/Mountain (Mountain Standard Time)', 'Canada/Mountain', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(29, '(GMT-7:00) Mexico/BajaSur (Mountain Standard Time)', 'Mexico/BajaSur', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(30, '(GMT-6:00) America/Belize (Central Standard Time)', 'America/Belize', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(31, '(GMT-6:00) America/Cancun (Central Standard Time)', 'America/Cancun', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(32, '(GMT-6:00) America/Chicago (Central Standard Time)', 'America/Chicago', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(33, '(GMT-6:00) America/Costa_Rica (Central Standard Time)', 'America/Costa_Rica', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(34, '(GMT-6:00) America/El_Salvador (Central Standard Time)', 'America/El_Salvador', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(35, '(GMT-6:00) America/Guatemala (Central Standard Time)', 'America/Guatemala', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(36, '(GMT-6:00) America/Knox_IN (Central Standard Time)', 'America/Knox_IN', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(37, '(GMT-6:00) America/Managua (Central Standard Time)', 'America/Managua', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(38, '(GMT-6:00) America/Menominee (Central Standard Time)', 'America/Menominee', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(39, '(GMT-6:00) America/Merida (Central Standard Time)', 'America/Merida', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(40, '(GMT-6:00) America/Mexico_City (Central Standard Time)', 'America/Mexico_City', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(41, '(GMT-6:00) America/Monterrey (Central Standard Time)', 'America/Monterrey', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(42, '(GMT-6:00) America/Rainy_River (Central Standard Time)', 'America/Rainy_River', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(43, '(GMT-6:00) America/Rankin_Inlet (Central Standard Time)', 'America/Rankin_Inlet', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(44, '(GMT-6:00) America/Regina (Central Standard Time)', 'America/Regina', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(45, '(GMT-6:00) America/Swift_Current (Central Standard Time)', 'America/Swift_Current', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(46, '(GMT-6:00) America/Tegucigalpa (Central Standard Time)', 'America/Tegucigalpa', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(47, '(GMT-6:00) America/Winnipeg (Central Standard Time)', 'America/Winnipeg', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(48, '(GMT-6:00) Canada/Central (Central Standard Time)', 'Canada/Central', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(49, '(GMT-6:00) Canada/East-Saskatchewan (Central Standard Time)', 'Canada/East-Saskatchewan', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(50, '(GMT-6:00) Canada/Saskatchewan (Central Standard Time)', 'Canada/Saskatchewan', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(51, '(GMT-6:00) Chile/EasterIsland (Easter Is. Time)', 'Chile/EasterIsland', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(52, '(GMT-6:00) Mexico/General (Central Standard Time)', 'Mexico/General', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(53, '(GMT-5:00) America/Atikokan (Eastern Standard Time)', 'America/Atikokan', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(54, '(GMT-5:00) America/Bogota (Colombia Time)', 'America/Bogota', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(55, '(GMT-5:00) America/Cayman (Eastern Standard Time)', 'America/Cayman', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(56, '(GMT-5:00) America/Coral_Harbour (Eastern Standard Time)', 'America/Coral_Harbour', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(57, '(GMT-5:00) America/Detroit (Eastern Standard Time)', 'America/Detroit', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(58, '(GMT-5:00) America/Fort_Wayne (Eastern Standard Time)', 'America/Fort_Wayne', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(59, '(GMT-5:00) America/Grand_Turk (Eastern Standard Time)', 'America/Grand_Turk', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(60, '(GMT-5:00) America/Guayaquil (Ecuador Time)', 'America/Guayaquil', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(61, '(GMT-5:00) America/Havana (Cuba Standard Time)', 'America/Havana', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(62, '(GMT-5:00) America/Indianapolis (Eastern Standard Time)', 'America/Indianapolis', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(63, '(GMT-5:00) America/Iqaluit (Eastern Standard Time)', 'America/Iqaluit', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(64, '(GMT-5:00) America/Jamaica (Eastern Standard Time)', 'America/Jamaica', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(65, '(GMT-5:00) America/Lima (Peru Time)', 'America/Lima', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(66, '(GMT-5:00) America/Louisville (Eastern Standard Time)', 'America/Louisville', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(67, '(GMT-5:00) America/Montreal (Eastern Standard Time)', 'America/Montreal', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(68, '(GMT-5:00) America/Nassau (Eastern Standard Time)', 'America/Nassau', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(69, '(GMT-5:00) America/New_York (Eastern Standard Time)', 'America/New_York', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(70, '(GMT-5:00) America/Nipigon (Eastern Standard Time)', 'America/Nipigon', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(71, '(GMT-5:00) America/Panama (Eastern Standard Time)', 'America/Panama', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(72, '(GMT-5:00) America/Pangnirtung (Eastern Standard Time)', 'America/Pangnirtung', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(73, '(GMT-5:00) America/Port-au-Prince (Eastern Standard Time)', 'America/Port-au-Prince', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(74, '(GMT-5:00) America/Resolute (Eastern Standard Time)', 'America/Resolute', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(75, '(GMT-5:00) America/Thunder_Bay (Eastern Standard Time)', 'America/Thunder_Bay', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(76, '(GMT-5:00) America/Toronto (Eastern Standard Time)', 'America/Toronto', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(77, '(GMT-5:00) Canada/Eastern (Eastern Standard Time)', 'Canada/Eastern', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(78, '(GMT-4:-30) America/Caracas (Venezuela Time)', 'America/Caracas', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(79, '(GMT-4:00) America/Anguilla (Atlantic Standard Time)', 'America/Anguilla', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(80, '(GMT-4:00) America/Antigua (Atlantic Standard Time)', 'America/Antigua', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(81, '(GMT-4:00) America/Aruba (Atlantic Standard Time)', 'America/Aruba', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(82, '(GMT-4:00) America/Asuncion (Paraguay Time)', 'America/Asuncion', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(83, '(GMT-4:00) America/Barbados (Atlantic Standard Time)', 'America/Barbados', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(84, '(GMT-4:00) America/Blanc-Sablon (Atlantic Standard Time)', 'America/Blanc-Sablon', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(85, '(GMT-4:00) America/Boa_Vista (Amazon Time)', 'America/Boa_Vista', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(86, '(GMT-4:00) America/Campo_Grande (Amazon Time)', 'America/Campo_Grande', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(87, '(GMT-4:00) America/Cuiaba (Amazon Time)', 'America/Cuiaba', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(88, '(GMT-4:00) America/Curacao (Atlantic Standard Time)', 'America/Curacao', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(89, '(GMT-4:00) America/Dominica (Atlantic Standard Time)', 'America/Dominica', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(90, '(GMT-4:00) America/Eirunepe (Amazon Time)', 'America/Eirunepe', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(91, '(GMT-4:00) America/Glace_Bay (Atlantic Standard Time)', 'America/Glace_Bay', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(92, '(GMT-4:00) America/Goose_Bay (Atlantic Standard Time)', 'America/Goose_Bay', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(93, '(GMT-4:00) America/Grenada (Atlantic Standard Time)', 'America/Grenada', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(94, '(GMT-4:00) America/Guadeloupe (Atlantic Standard Time)', 'America/Guadeloupe', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(95, '(GMT-4:00) America/Guyana (Guyana Time)', 'America/Guyana', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(96, '(GMT-4:00) America/Halifax (Atlantic Standard Time)', 'America/Halifax', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(97, '(GMT-4:00) America/La_Paz (Bolivia Time)', 'America/La_Paz', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(98, '(GMT-4:00) America/Manaus (Amazon Time)', 'America/Manaus', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(99, '(GMT-4:00) America/Marigot (Atlantic Standard Time)', 'America/Marigot', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(100, '(GMT-4:00) America/Martinique (Atlantic Standard Time)', 'America/Martinique', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(101, '(GMT-4:00) America/Moncton (Atlantic Standard Time)', 'America/Moncton', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(102, '(GMT-4:00) America/Montserrat (Atlantic Standard Time)', 'America/Montserrat', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(103, '(GMT-4:00) America/Port_of_Spain (Atlantic Standard Time)', 'America/Port_of_Spain', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(104, '(GMT-4:00) America/Porto_Acre (Amazon Time)', 'America/Porto_Acre', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(105, '(GMT-4:00) America/Porto_Velho (Amazon Time)', 'America/Porto_Velho', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(106, '(GMT-4:00) America/Puerto_Rico (Atlantic Standard Time)', 'America/Puerto_Rico', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(107, '(GMT-4:00) America/Rio_Branco (Amazon Time)', 'America/Rio_Branco', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(108, '(GMT-4:00) America/Santiago (Chile Time)', 'America/Santiago', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(109, '(GMT-4:00) America/Santo_Domingo (Atlantic Standard Time)', 'America/Santo_Domingo', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(110, '(GMT-4:00) America/St_Barthelemy (Atlantic Standard Time)', 'America/St_Barthelemy', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(111, '(GMT-4:00) America/St_Kitts (Atlantic Standard Time)', 'America/St_Kitts', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(112, '(GMT-4:00) America/St_Lucia (Atlantic Standard Time)', 'America/St_Lucia', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(113, '(GMT-4:00) America/St_Thomas (Atlantic Standard Time)', 'America/St_Thomas', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(114, '(GMT-4:00) America/St_Vincent (Atlantic Standard Time)', 'America/St_Vincent', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(115, '(GMT-4:00) America/Thule (Atlantic Standard Time)', 'America/Thule', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(116, '(GMT-4:00) America/Tortola (Atlantic Standard Time)', 'America/Tortola', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(117, '(GMT-4:00) America/Virgin (Atlantic Standard Time)', 'America/Virgin', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(118, '(GMT-4:00) Antarctica/Palmer (Chile Time)', 'Antarctica/Palmer', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(119, '(GMT-4:00) Atlantic/Bermuda (Atlantic Standard Time)', 'Atlantic/Bermuda', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(120, '(GMT-4:00) Atlantic/Stanley (Falkland Is. Time)', 'Atlantic/Stanley', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(121, '(GMT-4:00) Brazil/Acre (Amazon Time)', 'Brazil/Acre', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(122, '(GMT-4:00) Brazil/West (Amazon Time)', 'Brazil/West', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(123, '(GMT-4:00) Canada/Atlantic (Atlantic Standard Time)', 'Canada/Atlantic', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(124, '(GMT-4:00) Chile/Continental (Chile Time)', 'Chile/Continental', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(125, '(GMT-3:-30) America/St_Johns (Newfoundland Standard Time)', 'America/St_Johns', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(126, '(GMT-3:-30) Canada/Newfoundland (Newfoundland Standard Time)', 'Canada/Newfoundland', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(127, '(GMT-3:00) America/Araguaina (Brasilia Time)', 'America/Araguaina', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(128, '(GMT-3:00) America/Bahia (Brasilia Time)', 'America/Bahia', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(129, '(GMT-3:00) America/Belem (Brasilia Time)', 'America/Belem', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(130, '(GMT-3:00) America/Buenos_Aires (Argentine Time)', 'America/Buenos_Aires', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(131, '(GMT-3:00) America/Catamarca (Argentine Time)', 'America/Catamarca', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(132, '(GMT-3:00) America/Cayenne (French Guiana Time)', 'America/Cayenne', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(133, '(GMT-3:00) America/Cordoba (Argentine Time)', 'America/Cordoba', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(134, '(GMT-3:00) America/Fortaleza (Brasilia Time)', 'America/Fortaleza', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(135, '(GMT-3:00) America/Godthab (Western Greenland Time)', 'America/Godthab', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(136, '(GMT-3:00) America/Jujuy (Argentine Time)', 'America/Jujuy', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(137, '(GMT-3:00) America/Maceio (Brasilia Time)', 'America/Maceio', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(138, '(GMT-3:00) America/Mendoza (Argentine Time)', 'America/Mendoza', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(139, '(GMT-3:00) America/Miquelon (Pierre & Miquelon Standard Time)', 'America/Miquelon', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(140, '(GMT-3:00) America/Montevideo (Uruguay Time)', 'America/Montevideo', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(141, '(GMT-3:00) America/Paramaribo (Suriname Time)', 'America/Paramaribo', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(142, '(GMT-3:00) America/Recife (Brasilia Time)', 'America/Recife', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(143, '(GMT-3:00) America/Rosario (Argentine Time)', 'America/Rosario', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(144, '(GMT-3:00) America/Santarem (Brasilia Time)', 'America/Santarem', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(145, '(GMT-3:00) America/Sao_Paulo (Brasilia Time)', 'America/Sao_Paulo', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(146, '(GMT-3:00) Antarctica/Rothera (Rothera Time)', 'Antarctica/Rothera', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(147, '(GMT-3:00) Brazil/East (Brasilia Time)', 'Brazil/East', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(148, '(GMT-2:00) America/Noronha (Fernando de Noronha Time)', 'America/Noronha', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(149, '(GMT-2:00) Atlantic/South_Georgia (South Georgia Standard Time)', 'Atlantic/South_Georgia', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(150, '(GMT-2:00) Brazil/DeNoronha (Fernando de Noronha Time)', 'Brazil/DeNoronha', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(151, '(GMT-1:00) America/Scoresbysund (Eastern Greenland Time)', 'America/Scoresbysund', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(152, '(GMT-1:00) Atlantic/Azores (Azores Time)', 'Atlantic/Azores', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(153, '(GMT-1:00) Atlantic/Cape_Verde (Cape Verde Time)', 'Atlantic/Cape_Verde', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(154, '(GMT+0:00) Africa/Abidjan (Greenwich Mean Time)', 'Africa/Abidjan', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(155, '(GMT+0:00) Africa/Accra (Ghana Mean Time)', 'Africa/Accra', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(156, '(GMT+0:00) Africa/Bamako (Greenwich Mean Time)', 'Africa/Bamako', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(157, '(GMT+0:00) Africa/Banjul (Greenwich Mean Time)', 'Africa/Banjul', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(158, '(GMT+0:00) Africa/Bissau (Greenwich Mean Time)', 'Africa/Bissau', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(159, '(GMT+0:00) Africa/Casablanca (Western European Time)', 'Africa/Casablanca', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(160, '(GMT+0:00) Africa/Conakry (Greenwich Mean Time)', 'Africa/Conakry', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(161, '(GMT+0:00) Africa/Dakar (Greenwich Mean Time)', 'Africa/Dakar', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(162, '(GMT+0:00) Africa/El_Aaiun (Western European Time)', 'Africa/El_Aaiun', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(163, '(GMT+0:00) Africa/Freetown (Greenwich Mean Time)', 'Africa/Freetown', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(164, '(GMT+0:00) Africa/Lome (Greenwich Mean Time)', 'Africa/Lome', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(165, '(GMT+0:00) Africa/Monrovia (Greenwich Mean Time)', 'Africa/Monrovia', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(166, '(GMT+0:00) Africa/Nouakchott (Greenwich Mean Time)', 'Africa/Nouakchott', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(167, '(GMT+0:00) Africa/Ouagadougou (Greenwich Mean Time)', 'Africa/Ouagadougou', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(168, '(GMT+0:00) Africa/Sao_Tome (Greenwich Mean Time)', 'Africa/Sao_Tome', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(169, '(GMT+0:00) Africa/Timbuktu (Greenwich Mean Time)', 'Africa/Timbuktu', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(170, '(GMT+0:00) America/Danmarkshavn (Greenwich Mean Time)', 'America/Danmarkshavn', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(171, '(GMT+0:00) Atlantic/Canary (Western European Time)', 'Atlantic/Canary', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(172, '(GMT+0:00) Atlantic/Faeroe (Western European Time)', 'Atlantic/Faeroe', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(173, '(GMT+0:00) Atlantic/Faroe (Western European Time)', 'Atlantic/Faroe', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(174, '(GMT+0:00) Atlantic/Madeira (Western European Time)', 'Atlantic/Madeira', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(175, '(GMT+0:00) Atlantic/Reykjavik (Greenwich Mean Time)', 'Atlantic/Reykjavik', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(176, '(GMT+0:00) Atlantic/St_Helena (Greenwich Mean Time)', 'Atlantic/St_Helena', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(177, '(GMT+0:00) Europe/Belfast (Greenwich Mean Time)', 'Europe/Belfast', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(178, '(GMT+0:00) Europe/Dublin (Greenwich Mean Time)', 'Europe/Dublin', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(179, '(GMT+0:00) Europe/Guernsey (Greenwich Mean Time)', 'Europe/Guernsey', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(180, '(GMT+0:00) Europe/Isle_of_Man (Greenwich Mean Time)', 'Europe/Isle_of_Man', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(181, '(GMT+0:00) Europe/Jersey (Greenwich Mean Time)', 'Europe/Jersey', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(182, '(GMT+0:00) Europe/Lisbon (Western European Time)', 'Europe/Lisbon', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(183, '(GMT+0:00) Europe/London (Greenwich Mean Time)', 'Europe/London', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(184, '(GMT+1:00) Africa/Algiers (Central European Time)', 'Africa/Algiers', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(185, '(GMT+1:00) Africa/Bangui (Western African Time)', 'Africa/Bangui', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(186, '(GMT+1:00) Africa/Brazzaville (Western African Time)', 'Africa/Brazzaville', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(187, '(GMT+1:00) Africa/Ceuta (Central European Time)', 'Africa/Ceuta', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(188, '(GMT+1:00) Africa/Douala (Western African Time)', 'Africa/Douala', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(189, '(GMT+1:00) Africa/Kinshasa (Western African Time)', 'Africa/Kinshasa', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(190, '(GMT+1:00) Africa/Lagos (Western African Time)', 'Africa/Lagos', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(191, '(GMT+1:00) Africa/Libreville (Western African Time)', 'Africa/Libreville', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(192, '(GMT+1:00) Africa/Luanda (Western African Time)', 'Africa/Luanda', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(193, '(GMT+1:00) Africa/Malabo (Western African Time)', 'Africa/Malabo', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(194, '(GMT+1:00) Africa/Ndjamena (Western African Time)', 'Africa/Ndjamena', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(195, '(GMT+1:00) Africa/Niamey (Western African Time)', 'Africa/Niamey', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(196, '(GMT+1:00) Africa/Porto-Novo (Western African Time)', 'Africa/Porto-Novo', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(197, '(GMT+1:00) Africa/Tunis (Central European Time)', 'Africa/Tunis', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(198, '(GMT+1:00) Africa/Windhoek (Western African Time)', 'Africa/Windhoek', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(199, '(GMT+1:00) Arctic/Longyearbyen (Central European Time)', 'Arctic/Longyearbyen', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(200, '(GMT+1:00) Atlantic/Jan_Mayen (Central European Time)', 'Atlantic/Jan_Mayen', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(201, '(GMT+1:00) Europe/Amsterdam (Central European Time)', 'Europe/Amsterdam', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(202, '(GMT+1:00) Europe/Andorra (Central European Time)', 'Europe/Andorra', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(203, '(GMT+1:00) Europe/Belgrade (Central European Time)', 'Europe/Belgrade', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(204, '(GMT+1:00) Europe/Berlin (Central European Time)', 'Europe/Berlin', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(205, '(GMT+1:00) Europe/Bratislava (Central European Time)', 'Europe/Bratislava', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(206, '(GMT+1:00) Europe/Brussels (Central European Time)', 'Europe/Brussels', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(207, '(GMT+1:00) Europe/Budapest (Central European Time)', 'Europe/Budapest', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(208, '(GMT+1:00) Europe/Copenhagen (Central European Time)', 'Europe/Copenhagen', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(209, '(GMT+1:00) Europe/Gibraltar (Central European Time)', 'Europe/Gibraltar', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(210, '(GMT+1:00) Europe/Ljubljana (Central European Time)', 'Europe/Ljubljana', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(211, '(GMT+1:00) Europe/Luxembourg (Central European Time)', 'Europe/Luxembourg', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(212, '(GMT+1:00) Europe/Madrid (Central European Time)', 'Europe/Madrid', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(213, '(GMT+1:00) Europe/Malta (Central European Time)', 'Europe/Malta', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(214, '(GMT+1:00) Europe/Monaco (Central European Time)', 'Europe/Monaco', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(215, '(GMT+1:00) Europe/Oslo (Central European Time)', 'Europe/Oslo', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(216, '(GMT+1:00) Europe/Paris (Central European Time)', 'Europe/Paris', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(217, '(GMT+1:00) Europe/Podgorica (Central European Time)', 'Europe/Podgorica', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(218, '(GMT+1:00) Europe/Prague (Central European Time)', 'Europe/Prague', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(219, '(GMT+1:00) Europe/Rome (Central European Time)', 'Europe/Rome', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(220, '(GMT+1:00) Europe/San_Marino (Central European Time)', 'Europe/San_Marino', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(221, '(GMT+1:00) Europe/Sarajevo (Central European Time)', 'Europe/Sarajevo', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(222, '(GMT+1:00) Europe/Skopje (Central European Time)', 'Europe/Skopje', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(223, '(GMT+1:00) Europe/Stockholm (Central European Time)', 'Europe/Stockholm', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(224, '(GMT+1:00) Europe/Tirane (Central European Time)', 'Europe/Tirane', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(225, '(GMT+1:00) Europe/Vaduz (Central European Time)', 'Europe/Vaduz', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(226, '(GMT+1:00) Europe/Vatican (Central European Time)', 'Europe/Vatican', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(227, '(GMT+1:00) Europe/Vienna (Central European Time)', 'Europe/Vienna', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(228, '(GMT+1:00) Europe/Warsaw (Central European Time)', 'Europe/Warsaw', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(229, '(GMT+1:00) Europe/Zagreb (Central European Time)', 'Europe/Zagreb', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(230, '(GMT+1:00) Europe/Zurich (Central European Time)', 'Europe/Zurich', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(231, '(GMT+2:00) Africa/Blantyre (Central African Time)', 'Africa/Blantyre', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(232, '(GMT+2:00) Africa/Bujumbura (Central African Time)', 'Africa/Bujumbura', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(233, '(GMT+2:00) Africa/Cairo (Eastern European Time)', 'Africa/Cairo', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(234, '(GMT+2:00) Africa/Gaborone (Central African Time)', 'Africa/Gaborone', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(235, '(GMT+2:00) Africa/Harare (Central African Time)', 'Africa/Harare', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(236, '(GMT+2:00) Africa/Johannesburg (South Africa Standard Time)', 'Africa/Johannesburg', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(237, '(GMT+2:00) Africa/Kigali (Central African Time)', 'Africa/Kigali', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(238, '(GMT+2:00) Africa/Lubumbashi (Central African Time)', 'Africa/Lubumbashi', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(239, '(GMT+2:00) Africa/Lusaka (Central African Time)', 'Africa/Lusaka', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(240, '(GMT+2:00) Africa/Maputo (Central African Time)', 'Africa/Maputo', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(241, '(GMT+2:00) Africa/Maseru (South Africa Standard Time)', 'Africa/Maseru', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(242, '(GMT+2:00) Africa/Mbabane (South Africa Standard Time)', 'Africa/Mbabane', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(243, '(GMT+2:00) Africa/Tripoli (Eastern European Time)', 'Africa/Tripoli', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(244, '(GMT+2:00) Asia/Amman (Eastern European Time)', 'Asia/Amman', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(245, '(GMT+2:00) Asia/Beirut (Eastern European Time)', 'Asia/Beirut', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(246, '(GMT+2:00) Asia/Damascus (Eastern European Time)', 'Asia/Damascus', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(247, '(GMT+2:00) Asia/Gaza (Eastern European Time)', 'Asia/Gaza', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(248, '(GMT+2:00) Asia/Istanbul (Eastern European Time)', 'Asia/Istanbul', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(249, '(GMT+2:00) Asia/Jerusalem (Israel Standard Time)', 'Asia/Jerusalem', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(250, '(GMT+2:00) Asia/Nicosia (Eastern European Time)', 'Asia/Nicosia', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(251, '(GMT+2:00) Asia/Tel_Aviv (Israel Standard Time)', 'Asia/Tel_Aviv', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(252, '(GMT+2:00) Europe/Athens (Eastern European Time)', 'Europe/Athens', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(253, '(GMT+2:00) Europe/Bucharest (Eastern European Time)', 'Europe/Bucharest', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(254, '(GMT+2:00) Europe/Chisinau (Eastern European Time)', 'Europe/Chisinau', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(255, '(GMT+2:00) Europe/Helsinki (Eastern European Time)', 'Europe/Helsinki', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(256, '(GMT+2:00) Europe/Istanbul (Eastern European Time)', 'Europe/Istanbul', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(257, '(GMT+2:00) Europe/Kaliningrad (Eastern European Time)', 'Europe/Kaliningrad', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(258, '(GMT+2:00) Europe/Kiev (Eastern European Time)', 'Europe/Kiev', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(259, '(GMT+2:00) Europe/Mariehamn (Eastern European Time)', 'Europe/Mariehamn', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(260, '(GMT+2:00) Europe/Minsk (Eastern European Time)', 'Europe/Minsk', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(261, '(GMT+2:00) Europe/Nicosia (Eastern European Time)', 'Europe/Nicosia', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(262, '(GMT+2:00) Europe/Riga (Eastern European Time)', 'Europe/Riga', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(263, '(GMT+2:00) Europe/Simferopol (Eastern European Time)', 'Europe/Simferopol', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(264, '(GMT+2:00) Europe/Sofia (Eastern European Time)', 'Europe/Sofia', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(265, '(GMT+2:00) Europe/Tallinn (Eastern European Time)', 'Europe/Tallinn', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(266, '(GMT+2:00) Europe/Tiraspol (Eastern European Time)', 'Europe/Tiraspol', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(267, '(GMT+2:00) Europe/Uzhgorod (Eastern European Time)', 'Europe/Uzhgorod', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(268, '(GMT+2:00) Europe/Vilnius (Eastern European Time)', 'Europe/Vilnius', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(269, '(GMT+2:00) Europe/Zaporozhye (Eastern European Time)', 'Europe/Zaporozhye', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(270, '(GMT+3:00) Africa/Addis_Ababa (Eastern African Time)', 'Africa/Addis_Ababa', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(271, '(GMT+3:00) Africa/Asmara (Eastern African Time)', 'Africa/Asmara', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(272, '(GMT+3:00) Africa/Asmera (Eastern African Time)', 'Africa/Asmera', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(273, '(GMT+3:00) Africa/Dar_es_Salaam (Eastern African Time)', 'Africa/Dar_es_Salaam', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(274, '(GMT+3:00) Africa/Djibouti (Eastern African Time)', 'Africa/Djibouti', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(275, '(GMT+3:00) Africa/Kampala (Eastern African Time)', 'Africa/Kampala', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(276, '(GMT+3:00) Africa/Khartoum (Eastern African Time)', 'Africa/Khartoum', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(277, '(GMT+3:00) Africa/Mogadishu (Eastern African Time)', 'Africa/Mogadishu', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(278, '(GMT+3:00) Africa/Nairobi (Eastern African Time)', 'Africa/Nairobi', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(279, '(GMT+3:00) Antarctica/Syowa (Syowa Time)', 'Antarctica/Syowa', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(280, '(GMT+3:00) Asia/Aden (Arabia Standard Time)', 'Asia/Aden', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(281, '(GMT+3:00) Asia/Baghdad (Arabia Standard Time)', 'Asia/Baghdad', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(282, '(GMT+3:00) Asia/Bahrain (Arabia Standard Time)', 'Asia/Bahrain', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(283, '(GMT+3:00) Asia/Kuwait (Arabia Standard Time)', 'Asia/Kuwait', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(284, '(GMT+3:00) Asia/Qatar (Arabia Standard Time)', 'Asia/Qatar', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(285, '(GMT+3:00) Europe/Moscow (Moscow Standard Time)', 'Europe/Moscow', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(286, '(GMT+3:00) Europe/Volgograd (Volgograd Time)', 'Europe/Volgograd', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(287, '(GMT+3:00) Indian/Antananarivo (Eastern African Time)', 'Indian/Antananarivo', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(288, '(GMT+3:00) Indian/Comoro (Eastern African Time)', 'Indian/Comoro', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(289, '(GMT+3:00) Indian/Mayotte (Eastern African Time)', 'Indian/Mayotte', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(290, '(GMT+3:30) Asia/Tehran (Iran Standard Time)', 'Asia/Tehran', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(291, '(GMT+4:00) Asia/Baku (Azerbaijan Time)', 'Asia/Baku', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(292, '(GMT+4:00) Asia/Dubai (Gulf Standard Time)', 'Asia/Dubai', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(293, '(GMT+4:00) Asia/Muscat (Gulf Standard Time)', 'Asia/Muscat', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(294, '(GMT+4:00) Asia/Tbilisi (Georgia Time)', 'Asia/Tbilisi', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(295, '(GMT+4:00) Asia/Yerevan (Armenia Time)', 'Asia/Yerevan', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(296, '(GMT+4:00) Europe/Samara (Samara Time)', 'Europe/Samara', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(297, '(GMT+4:00) Indian/Mahe (Seychelles Time)', 'Indian/Mahe', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(298, '(GMT+4:00) Indian/Mauritius (Mauritius Time)', 'Indian/Mauritius', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(299, '(GMT+4:00) Indian/Reunion (Reunion Time)', 'Indian/Reunion', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(300, '(GMT+4:30) Asia/Kabul (Afghanistan Time)', 'Asia/Kabul', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(301, '(GMT+5:00) Asia/Aqtau (Aqtau Time)', 'Asia/Aqtau', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(302, '(GMT+5:00) Asia/Aqtobe (Aqtobe Time)', 'Asia/Aqtobe', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(303, '(GMT+5:00) Asia/Ashgabat (Turkmenistan Time)', 'Asia/Ashgabat', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(304, '(GMT+5:00) Asia/Ashkhabad (Turkmenistan Time)', 'Asia/Ashkhabad', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(305, '(GMT+5:00) Asia/Dushanbe (Tajikistan Time)', 'Asia/Dushanbe', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(306, '(GMT+5:00) Asia/Karachi (Pakistan Time)', 'Asia/Karachi', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(307, '(GMT+5:00) Asia/Oral (Oral Time)', 'Asia/Oral', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(308, '(GMT+5:00) Asia/Samarkand (Uzbekistan Time)', 'Asia/Samarkand', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(309, '(GMT+5:00) Asia/Tashkent (Uzbekistan Time)', 'Asia/Tashkent', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(310, '(GMT+5:00) Asia/Yekaterinburg (Yekaterinburg Time)', 'Asia/Yekaterinburg', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(311, '(GMT+5:00) Indian/Kerguelen (French Southern & Antarctic Lands Time)', 'Indian/Kerguelen', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(312, '(GMT+5:00) Indian/Maldives (Maldives Time)', 'Indian/Maldives', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(313, '(GMT+5:30) Asia/Calcutta (India Standard Time)', 'Asia/Calcutta', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(314, '(GMT+5:30) Asia/Colombo (India Standard Time)', 'Asia/Colombo', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(315, '(GMT+5:30) Asia/Kolkata (India Standard Time)', 'Asia/Kolkata', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(316, '(GMT+5:45) Asia/Katmandu (Nepal Time)', 'Asia/Katmandu', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(317, '(GMT+6:00) Antarctica/Mawson (Mawson Time)', 'Antarctica/Mawson', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(318, '(GMT+6:00) Antarctica/Vostok (Vostok Time)', 'Antarctica/Vostok', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(319, '(GMT+6:00) Asia/Almaty (Alma-Ata Time)', 'Asia/Almaty', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(320, '(GMT+6:00) Asia/Bishkek (Kirgizstan Time)', 'Asia/Bishkek', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(321, '(GMT+6:00) Asia/Dacca (Bangladesh Time)', 'Asia/Dacca', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(322, '(GMT+6:00) Asia/Dhaka (Bangladesh Time)', 'Asia/Dhaka', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(323, '(GMT+6:00) Asia/Novosibirsk (Novosibirsk Time)', 'Asia/Novosibirsk', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(324, '(GMT+6:00) Asia/Omsk (Omsk Time)', 'Asia/Omsk', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(325, '(GMT+6:00) Asia/Qyzylorda (Qyzylorda Time)', 'Asia/Qyzylorda', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(326, '(GMT+6:00) Asia/Thimbu (Bhutan Time)', 'Asia/Thimbu', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(327, '(GMT+6:00) Asia/Thimphu (Bhutan Time)', 'Asia/Thimphu', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(328, '(GMT+6:00) Indian/Chagos (Indian Ocean Territory Time)', 'Indian/Chagos', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(329, '(GMT+6:30) Asia/Rangoon (Myanmar Time)', 'Asia/Rangoon', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(330, '(GMT+6:30) Indian/Cocos (Cocos Islands Time)', 'Indian/Cocos', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(331, '(GMT+7:00) Antarctica/Davis (Davis Time)', 'Antarctica/Davis', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(332, '(GMT+7:00) Asia/Bangkok (Indochina Time)', 'Asia/Bangkok', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(333, '(GMT+7:00) Asia/Ho_Chi_Minh (Indochina Time)', 'Asia/Ho_Chi_Minh', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(334, '(GMT+7:00) Asia/Hovd (Hovd Time)', 'Asia/Hovd', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(335, '(GMT+7:00) Asia/Jakarta (West Indonesia Time)', 'Asia/Jakarta', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(336, '(GMT+7:00) Asia/Krasnoyarsk (Krasnoyarsk Time)', 'Asia/Krasnoyarsk', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(337, '(GMT+7:00) Asia/Phnom_Penh (Indochina Time)', 'Asia/Phnom_Penh', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(338, '(GMT+7:00) Asia/Pontianak (West Indonesia Time)', 'Asia/Pontianak', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(339, '(GMT+7:00) Asia/Saigon (Indochina Time)', 'Asia/Saigon', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(340, '(GMT+7:00) Asia/Vientiane (Indochina Time)', 'Asia/Vientiane', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(341, '(GMT+7:00) Indian/Christmas (Christmas Island Time)', 'Indian/Christmas', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(342, '(GMT+8:00) Antarctica/Casey (Western Standard Time (Australia))', 'Antarctica/Casey', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(343, '(GMT+8:00) Asia/Brunei (Brunei Time)', 'Asia/Brunei', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(344, '(GMT+8:00) Asia/Choibalsan (Choibalsan Time)', 'Asia/Choibalsan', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(345, '(GMT+8:00) Asia/Chongqing (China Standard Time)', 'Asia/Chongqing', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(346, '(GMT+8:00) Asia/Chungking (China Standard Time)', 'Asia/Chungking', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(347, '(GMT+8:00) Asia/Harbin (China Standard Time)', 'Asia/Harbin', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(348, '(GMT+8:00) Asia/Hong_Kong (Hong Kong Time)', 'Asia/Hong_Kong', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(349, '(GMT+8:00) Asia/Irkutsk (Irkutsk Time)', 'Asia/Irkutsk', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(350, '(GMT+8:00) Asia/Kashgar (China Standard Time)', 'Asia/Kashgar', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(351, '(GMT+8:00) Asia/Kuala_Lumpur (Malaysia Time)', 'Asia/Kuala_Lumpur', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(352, '(GMT+8:00) Asia/Kuching (Malaysia Time)', 'Asia/Kuching', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(353, '(GMT+8:00) Asia/Macao (China Standard Time)', 'Asia/Macao', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(354, '(GMT+8:00) Asia/Macau (China Standard Time)', 'Asia/Macau', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(355, '(GMT+8:00) Asia/Makassar (Central Indonesia Time)', 'Asia/Makassar', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(356, '(GMT+8:00) Asia/Manila (Philippines Time)', 'Asia/Manila', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(357, '(GMT+8:00) Asia/Shanghai (China Standard Time)', 'Asia/Shanghai', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(358, '(GMT+8:00) Asia/Singapore (Singapore Time)', 'Asia/Singapore', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(359, '(GMT+8:00) Asia/Taipei (China Standard Time)', 'Asia/Taipei', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(360, '(GMT+8:00) Asia/Ujung_Pandang (Central Indonesia Time)', 'Asia/Ujung_Pandang', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(361, '(GMT+8:00) Asia/Ulaanbaatar (Ulaanbaatar Time)', 'Asia/Ulaanbaatar', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(362, '(GMT+8:00) Asia/Ulan_Bator (Ulaanbaatar Time)', 'Asia/Ulan_Bator', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(363, '(GMT+8:00) Asia/Urumqi (China Standard Time)', 'Asia/Urumqi', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(364, '(GMT+8:00) Australia/Perth (Western Standard Time (Australia))', 'Australia/Perth', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(365, '(GMT+8:00) Australia/West (Western Standard Time (Australia))', 'Australia/West', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(366, '(GMT+8:45) Australia/Eucla (Central Western Standard Time (Australia))', 'Australia/Eucla', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(367, '(GMT+9:00) Asia/Dili (Timor-Leste Time)', 'Asia/Dili', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(368, '(GMT+9:00) Asia/Jayapura (East Indonesia Time)', 'Asia/Jayapura', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(369, '(GMT+9:00) Asia/Pyongyang (Korea Standard Time)', 'Asia/Pyongyang', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(370, '(GMT+9:00) Asia/Seoul (Korea Standard Time)', 'Asia/Seoul', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(371, '(GMT+9:00) Asia/Tokyo (Japan Standard Time)', 'Asia/Tokyo', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(372, '(GMT+9:00) Asia/Yakutsk (Yakutsk Time)', 'Asia/Yakutsk', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(373, '(GMT+9:30) Australia/Adelaide (Central Standard Time (South Australia))', 'Australia/Adelaide', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(374, '(GMT+9:30) Australia/Broken_Hill (Central Standard Time (South Australia/New South Wales))', 'Australia/Broken_Hill', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(375, '(GMT+9:30) Australia/Darwin (Central Standard Time (Northern Territory))', 'Australia/Darwin', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(376, '(GMT+9:30) Australia/North (Central Standard Time (Northern Territory))', 'Australia/North', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(377, '(GMT+9:30) Australia/South (Central Standard Time (South Australia))', 'Australia/South', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(378, '(GMT+9:30) Australia/Yancowinna (Central Standard Time (South Australia/New South Wales))', 'Australia/Yancowinna', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(379, '(GMT+10:00) Antarctica/DumontDUrville (Dumont-d\'Urville Time)', 'Antarctica/DumontDUrville', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(380, '(GMT+10:00) Asia/Sakhalin (Sakhalin Time)', 'Asia/Sakhalin', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(381, '(GMT+10:00) Asia/Vladivostok (Vladivostok Time)', 'Asia/Vladivostok', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(382, '(GMT+10:00) Australia/ACT (Eastern Standard Time (New South Wales))', 'Australia/ACT', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(383, '(GMT+10:00) Australia/Brisbane (Eastern Standard Time (Queensland))', 'Australia/Brisbane', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(384, '(GMT+10:00) Australia/Canberra (Eastern Standard Time (New South Wales))', 'Australia/Canberra', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(385, '(GMT+10:00) Australia/Currie (Eastern Standard Time (New South Wales))', 'Australia/Currie', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(386, '(GMT+10:00) Australia/Hobart (Eastern Standard Time (Tasmania))', 'Australia/Hobart', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(387, '(GMT+10:00) Australia/Lindeman (Eastern Standard Time (Queensland))', 'Australia/Lindeman', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(388, '(GMT+10:00) Australia/Melbourne (Eastern Standard Time (Victoria))', 'Australia/Melbourne', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(389, '(GMT+10:00) Australia/NSW (Eastern Standard Time (New South Wales))', 'Australia/NSW', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(390, '(GMT+10:00) Australia/Queensland (Eastern Standard Time (Queensland))', 'Australia/Queensland', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(391, '(GMT+10:00) Australia/Sydney (Eastern Standard Time (New South Wales))', 'Australia/Sydney', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(392, '(GMT+10:00) Australia/Tasmania (Eastern Standard Time (Tasmania))', 'Australia/Tasmania', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(393, '(GMT+10:00) Australia/Victoria (Eastern Standard Time (Victoria))', 'Australia/Victoria', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(394, '(GMT+10:30) Australia/LHI (Lord Howe Standard Time)', 'Australia/LHI', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(395, '(GMT+10:30) Australia/Lord_Howe (Lord Howe Standard Time)', 'Australia/Lord_Howe', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(396, '(GMT+11:00) Asia/Magadan (Magadan Time)', 'Asia/Magadan', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(397, '(GMT+12:00) Antarctica/McMurdo (New Zealand Standard Time)', 'Antarctica/McMurdo', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(398, '(GMT+12:00) Antarctica/South_Pole (New Zealand Standard Time)', 'Antarctica/South_Pole', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(399, '(GMT+12:00) Asia/Anadyr (Anadyr Time)', 'Asia/Anadyr', '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(400, '(GMT+12:00) Asia/Kamchatka (Petropavlovsk-Kamchatski Time)', 'Asia/Kamchatka', '2023-09-14 17:08:20', '2023-09-14 17:08:20');

-- --------------------------------------------------------

--
-- Table structure for table `transfers`
--

CREATE TABLE `transfers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` varchar(191) DEFAULT NULL,
  `from_branch_id` int(11) DEFAULT NULL,
  `to_branch_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transfer_products`
--

CREATE TABLE `transfer_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transfer_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `quantity` double(8,2) DEFAULT NULL,
  `from_branch_id` int(11) DEFAULT NULL,
  `to_branch_id` int(11) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `email_verified_at` datetime DEFAULT NULL,
  `password` varchar(191) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `token` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `signature` text DEFAULT NULL,
  `theme` varchar(191) DEFAULT NULL,
  `avatar` varchar(191) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `last_activity` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `token`, `created_at`, `updated_at`, `signature`, `theme`, `avatar`, `deleted_at`, `last_activity`) VALUES
(1, 'SuperAdmin', 'admin@ulabsoft.in', NULL, '$2y$10$V1OlvTXkkkd3N7faveB2YOyw1iYfBX2pznjYP2MyiK6G54zrfgHNq', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_branches`
--

CREATE TABLE `user_branches` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_branches`
--

INSERT INTO `user_branches` (`id`, `user_id`, `branch_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`id`, `user_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2023-09-14 17:08:20', '2023-09-14 17:08:20'),
(21, 10, 2, '2025-06-13 18:11:34', '2025-06-13 18:11:34');

-- --------------------------------------------------------

--
-- Table structure for table `visits`
--

CREATE TABLE `visits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `patient_id` int(11) DEFAULT NULL,
  `lat` double(8,2) DEFAULT NULL,
  `lng` double(8,2) DEFAULT NULL,
  `zoom_level` int(11) DEFAULT NULL,
  `visit_date` varchar(191) DEFAULT NULL,
  `attach` varchar(191) DEFAULT NULL,
  `read` tinyint(1) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL,
  `visit_address` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `visit_tests`
--

CREATE TABLE `visit_tests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `visit_id` int(11) DEFAULT NULL,
  `testable_type` varchar(191) NOT NULL,
  `testable_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subject` (`subject_type`,`subject_id`),
  ADD KEY `causer` (`causer_type`,`causer_id`),
  ADD KEY `activity_log_log_name_index` (`log_name`);

--
-- Indexes for table `adjustments`
--
ALTER TABLE `adjustments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adjustment_products`
--
ALTER TABLE `adjustment_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `antibiotics`
--
ALTER TABLE `antibiotics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `branches`
--
ALTER TABLE `branches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `branch_products`
--
ALTER TABLE `branch_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chats`
--
ALTER TABLE `chats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contracts`
--
ALTER TABLE `contracts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contract_prices`
--
ALTER TABLE `contract_prices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contract_prices_priceable_type_priceable_id_index` (`priceable_type`,`priceable_id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cultures`
--
ALTER TABLE `cultures`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `culture_comments`
--
ALTER TABLE `culture_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `culture_options`
--
ALTER TABLE `culture_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `culture_prices`
--
ALTER TABLE `culture_prices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expense_categories`
--
ALTER TABLE `expense_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `group_cultures`
--
ALTER TABLE `group_cultures`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `group_culture_options`
--
ALTER TABLE `group_culture_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `group_culture_results`
--
ALTER TABLE `group_culture_results`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `group_packages`
--
ALTER TABLE `group_packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `group_payments`
--
ALTER TABLE `group_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `group_tests`
--
ALTER TABLE `group_tests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `group_test_results`
--
ALTER TABLE `group_test_results`
  ADD PRIMARY KEY (`id`);

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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `package_prices`
--
ALTER TABLE `package_prices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `package_tests`
--
ALTER TABLE `package_tests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `package_tests_testable_type_testable_id_index` (`testable_type`,`testable_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_methods`
--
ALTER TABLE `payment_methods`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `product_consumptions`
--
ALTER TABLE `product_consumptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_consumptions_testable_type_testable_id_index` (`testable_type`,`testable_id`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase_payments`
--
ALTER TABLE `purchase_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase_products`
--
ALTER TABLE `purchase_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_permissions`
--
ALTER TABLE `role_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `short_urls`
--
ALTER TABLE `short_urls`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `short_code` (`short_code`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tests`
--
ALTER TABLE `tests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `test_comments`
--
ALTER TABLE `test_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `test_consumptions`
--
ALTER TABLE `test_consumptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `test_consumptions_testable_type_testable_id_index` (`testable_type`,`testable_id`);

--
-- Indexes for table `test_options`
--
ALTER TABLE `test_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `test_prices`
--
ALTER TABLE `test_prices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `test_reference_ranges`
--
ALTER TABLE `test_reference_ranges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `timezones`
--
ALTER TABLE `timezones`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transfers`
--
ALTER TABLE `transfers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transfer_products`
--
ALTER TABLE `transfer_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_branches`
--
ALTER TABLE `user_branches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `visits`
--
ALTER TABLE `visits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `visit_tests`
--
ALTER TABLE `visit_tests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `visit_tests_testable_type_testable_id_index` (`testable_type`,`testable_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `adjustments`
--
ALTER TABLE `adjustments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `adjustment_products`
--
ALTER TABLE `adjustment_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `antibiotics`
--
ALTER TABLE `antibiotics`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `branches`
--
ALTER TABLE `branches`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `branch_products`
--
ALTER TABLE `branch_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `chats`
--
ALTER TABLE `chats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contracts`
--
ALTER TABLE `contracts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contract_prices`
--
ALTER TABLE `contract_prices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=248;

--
-- AUTO_INCREMENT for table `cultures`
--
ALTER TABLE `cultures`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `culture_comments`
--
ALTER TABLE `culture_comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `culture_options`
--
ALTER TABLE `culture_options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `culture_prices`
--
ALTER TABLE `culture_prices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=165;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expense_categories`
--
ALTER TABLE `expense_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `group_cultures`
--
ALTER TABLE `group_cultures`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `group_culture_options`
--
ALTER TABLE `group_culture_options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `group_culture_results`
--
ALTER TABLE `group_culture_results`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `group_packages`
--
ALTER TABLE `group_packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `group_payments`
--
ALTER TABLE `group_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `group_tests`
--
ALTER TABLE `group_tests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `group_test_results`
--
ALTER TABLE `group_test_results`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT for table `modules`
--
ALTER TABLE `modules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `package_prices`
--
ALTER TABLE `package_prices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `package_tests`
--
ALTER TABLE `package_tests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `patients`
--
ALTER TABLE `patients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_methods`
--
ALTER TABLE `payment_methods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_consumptions`
--
ALTER TABLE `product_consumptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchase_payments`
--
ALTER TABLE `purchase_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchase_products`
--
ALTER TABLE `purchase_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `role_permissions`
--
ALTER TABLE `role_permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=499;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `short_urls`
--
ALTER TABLE `short_urls`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tests`
--
ALTER TABLE `tests`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2560;

--
-- AUTO_INCREMENT for table `test_comments`
--
ALTER TABLE `test_comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `test_consumptions`
--
ALTER TABLE `test_consumptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `test_options`
--
ALTER TABLE `test_options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=583;

--
-- AUTO_INCREMENT for table `test_prices`
--
ALTER TABLE `test_prices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1098;

--
-- AUTO_INCREMENT for table `test_reference_ranges`
--
ALTER TABLE `test_reference_ranges`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=363;

--
-- AUTO_INCREMENT for table `timezones`
--
ALTER TABLE `timezones`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=401;

--
-- AUTO_INCREMENT for table `transfers`
--
ALTER TABLE `transfers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transfer_products`
--
ALTER TABLE `transfer_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_branches`
--
ALTER TABLE `user_branches`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_roles`
--
ALTER TABLE `user_roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `visits`
--
ALTER TABLE `visits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `visit_tests`
--
ALTER TABLE `visit_tests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
