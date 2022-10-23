-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 23, 2022 at 04:19 PM
-- Server version: 5.7.24
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `taxi`
--

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
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `location_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`id`, `created_at`, `updated_at`, `location_name`) VALUES
(1, NULL, NULL, 'Beograd'),
(2, NULL, NULL, 'Novi Sad'),
(3, NULL, NULL, 'Nis'),
(4, NULL, NULL, 'Subotica'),
(5, NULL, NULL, 'Sombor'),
(6, NULL, NULL, 'Kragujevac'),
(7, NULL, NULL, 'Zrenjanin'),
(8, NULL, NULL, 'Becej'),
(9, NULL, NULL, 'Indjija'),
(10, NULL, NULL, 'Uzice'),
(11, NULL, NULL, 'Zlatibor'),
(12, NULL, NULL, 'Pancevo'),
(13, NULL, NULL, 'Novi Pazar'),
(14, NULL, NULL, 'Krusevac'),
(15, NULL, NULL, 'Kraljevo'),
(16, NULL, NULL, 'Cacak'),
(17, NULL, NULL, 'Sabac'),
(18, NULL, NULL, 'Loznica'),
(19, NULL, NULL, 'Leskovac'),
(20, NULL, NULL, 'Jagodina'),
(21, NULL, NULL, 'Vranje'),
(22, NULL, NULL, 'Pirot'),
(23, NULL, NULL, 'Kosovska Mitrovica'),
(24, NULL, NULL, 'Smederevo'),
(25, NULL, NULL, 'Valjevo'),
(26, NULL, NULL, '');

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
(16, '2014_10_12_000000_create_users_table', 1),
(17, '2014_10_12_100000_create_password_resets_table', 1),
(18, '2019_08_19_000000_create_failed_jobs_table', 1),
(19, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(20, '2022_09_29_132413_create_taxi_table', 1),
(21, '2022_10_19_134841_create_locations_table', 2),
(22, '2022_10_19_141629_add_location_name_to_locations', 3);

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `taxi`
--

CREATE TABLE `taxi` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `phone_number` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `taxi`
--

INSERT INTO `taxi` (`id`, `name`, `location`, `website`, `created_at`, `updated_at`, `phone_number`) VALUES
(1, 'City Plus Taxi', 'Novi Sad', '', NULL, NULL, '021 450 450'),
(2, 'Crveni Taxi', 'Novi Sad', '', NULL, NULL, '021 44 55 77'),
(3, 'Delta Taxi', 'Novi Sad', '', NULL, NULL, '021 553 333'),
(4, 'Dezurni Taxi', 'Novi Sad', '', NULL, NULL, '021 455 666'),
(5, 'Grand Taxi', 'Novi Sad', '', NULL, NULL, '021 443 100'),
(6, 'Maksi-Novosadjani Taxi', 'Novi Sad', '', NULL, NULL, '021 400 555'),
(7, 'MBR Taxi', 'Novi Sad', '', NULL, NULL, '021 500 222'),
(8, 'Nacionalni Taxi', 'Novi Sad', '', NULL, NULL, '021 444 888'),
(9, 'Nas Taxi', 'Novi Sad', '', NULL, NULL, '021 6 300 300'),
(10, 'Novus Taxi', 'Novi Sad', '', NULL, NULL, '021 500 700'),
(11, 'Pan Taxi', 'Novi Sad', '', NULL, NULL, '021 455 555'),
(23, 'Red Taxi', 'Novi Sad', '', NULL, NULL, '021 52 51 50'),
(24, 'SOS Taxi', 'Novi Sad', '', NULL, NULL, '021 450 400'),
(25, 'Taxi Mirko', 'Novi Sad', '', NULL, NULL, '021 813 250'),
(26, 'VIP Taxi', 'Novi Sad', '', NULL, NULL, '021 444 000'),
(27, 'Vojvodjani Taxi', 'Novi Sad', '', NULL, NULL, '021 522 333'),
(28, 'Alfa Bell Taxi', 'Beograd', '', NULL, NULL, '011 19807'),
(29, 'Alo Taxi', 'Beograd', '', NULL, NULL, '011 3564 555'),
(30, 'As Taxi', 'Beograd', '', NULL, NULL, '011 328 3333'),
(31, 'Aurorspan Taxi', 'Beograd', '', NULL, NULL, '011 369 9333'),
(32, 'Radio Beo Taxi', 'Beograd', '', NULL, NULL, '011 19999'),
(33, 'Beogradski Taxi', 'Beograd', '', NULL, NULL, '011 19801'),
(34, 'CD Prepsis Taxi', 'Beograd', '', NULL, NULL, '011 3047 722'),
(35, 'Čukarički Plavi Taxi', 'Beograd', '', NULL, NULL, '011 355 59 99'),
(36, 'Euro Taxi', 'Beograd', '', NULL, NULL, '011 3033 367'),
(37, 'Gold Taxi', 'Beograd', '', NULL, NULL, '011 3291 818'),
(38, 'Lux Taxi', 'Beograd', '', NULL, NULL, '011 3033 123'),
(39, 'Maxiss Taxi', 'Beograd', '', NULL, NULL, '011 19804'),
(40, 'Nacionalni Taxi', 'Beograd', '', NULL, NULL, '011 3777 999'),
(41, 'NBA Taxi', 'Beograd', '', NULL, NULL, ' 011 3185 777 '),
(42, 'Pink Taxi', 'Beograd', '', NULL, NULL, '011 19803'),
(43, 'Plavi Taxi', 'Beograd', '', NULL, NULL, '011 3 555 333'),
(44, 'Sigurni Taxi BG', 'Beograd', '', NULL, NULL, '011 19898'),
(45, 'Taxi Bel', 'Beograd', '', NULL, NULL, '011 19808'),
(46, 'Taxi M', 'Beograd', '', NULL, NULL, '011 316 26 26'),
(47, 'Taxi Plus', 'Beograd', '', NULL, NULL, '011 361 58 12'),
(48, 'Zeleni Taxi', 'Beograd', '', NULL, NULL, '011 324 60 88'),
(49, 'Žuti Taxi', 'Beograd', '', NULL, NULL, '011 19802'),
(50, 'Bingo Taxi', 'Nis', '', NULL, NULL, '018 531 080'),
(51, 'Boom Taxi', 'Nis', '', NULL, NULL, '018 9715'),
(52, 'Bros Taxi', 'Nis', '', NULL, NULL, '018 41 555 41'),
(53, 'Delta Taxi', 'Nis', '', NULL, NULL, '018 222 999'),
(54, 'Duga Taxi', 'Nis', '', NULL, NULL, 'Duga Taxi'),
(55, 'Euro Taxi', 'Nis', '', NULL, NULL, '018 531 151'),
(56, 'Inter Plus Taxi', 'Nis', '', NULL, NULL, '018 30 90 60'),
(57, 'Naissus Taxi', 'Nis', '', NULL, NULL, '018 22 99 99'),
(58, 'OK Taxi', 'Nis', '', NULL, NULL, '018 20 10 10'),
(59, 'Pink Taxi', 'Nis', '', NULL, NULL, '018 214 442'),
(60, 'VIP Taxi', 'Nis', '', NULL, NULL, '018 310 0 310'),
(71, 'City Taxi', 'Kragujevac', '', NULL, NULL, '034 36 35 35'),
(72, 'Happy Taxi', 'Kragujevac', '', NULL, NULL, '034 38 55 55'),
(73, 'Maxi-Taxi', 'Kragujevac', '', NULL, NULL, '034 36 36 00'),
(74, 'Mega Taxi', 'Kragujevac', '', NULL, NULL, '034 36 36 39'),
(75, 'Panda Taxi', 'Kragujevac', '', NULL, NULL, '034 353 636'),
(77, 'Pink Taxi', 'Kragujevac', '', NULL, NULL, '034 30 10 40'),
(78, 'Profi Taxi', 'Kragujevac', '', NULL, NULL, '034 362 362'),
(79, 'SOS Taxi', 'Kragujevac', '', NULL, NULL, '034 305 500'),
(80, 'Alfa Taxi', 'Subotica', '', NULL, NULL, '064 2015800'),
(81, 'Ekonomik Taxi', 'Subotica', '', NULL, NULL, '063 7440004'),
(82, 'LaPro Taxi', 'Subotica', '', NULL, NULL, '060 7323222'),
(83, 'Omega Taxi', 'Subotica', '', NULL, NULL, '024 559911'),
(84, 'Prozivka Taxi', 'Subotica', '', NULL, NULL, '065 9765000'),
(85, 'Taxi 9', 'Subotica', '', NULL, NULL, '065 9999560'),
(86, 'Yu taxi', 'Subotica', '', NULL, NULL, '065 5559761'),
(87, 'Boban Taxi', 'Subotica', '', NULL, NULL, '063 1770523'),
(88, 'Halo Taxi Subotica', 'Subotica', '', NULL, NULL, '069 766000'),
(89, 'Pan Taxi', 'Subotica', '', NULL, NULL, '065 6524000'),
(90, 'Taxi Totes', 'Subotica', '', NULL, NULL, '065 6263065'),
(91, 'Palić Taxi', 'Subotica', '', NULL, NULL, '024 754754'),
(92, 'I-TAXI NAVIGATOR doo', 'Zrenjanin', '', NULL, NULL, '023 566566'),
(93, 'EKO TAKSI', 'Zrenjanin', '', NULL, NULL, '023 525525'),
(94, 'Prvi Taxi Zrenjanin', 'Zrenjanin', '', NULL, NULL, '023 266999'),
(95, 'AS TAXI', 'Zrenjanin', '', NULL, NULL, '023 611111'),
(96, 'Crveno Beli Taxi', 'Zrenjanin', '', NULL, NULL, '023 222222'),
(97, 'Vaš Taxi', 'Zrenjanin', '', NULL, NULL, '023 222555'),
(98, 'Dejan Cerović', 'Zrenjanin', '', NULL, NULL, '023 546770'),
(99, 'Samostalni Prevoz Putnika Taxi Aleksandar Cukic PR Zrenjanin', 'Zrenjanin', '', NULL, NULL, '064 1473515'),
(100, 'Taksista Sasa Jovanovic PR Zrenjanin', 'Zrenjanin', '', NULL, NULL, '023 524664'),
(101, 'R-Taxi Sluzba', 'Sombor', '', NULL, NULL, '025 450450'),
(102, 'Lav-Prevoz', 'Sombor', '', NULL, NULL, '025 444555'),
(103, '\'ALO TAXI Sombor', 'Sombor', '', NULL, NULL, '025 469469'),
(104, 'R-Taxi', 'Sombor', '', NULL, NULL, '025 422336'),
(105, 'MAXI TAXI Sombor', 'Sombor', '', NULL, NULL, '025 442222'),
(106, 'STAR TAXI', 'Sombor', '', NULL, NULL, '025 425425'),
(107, 'Pink Taksi Sombor', 'Sombor', '', NULL, NULL, '025 440000'),
(108, 'Gradski Taxi', 'Sombor', '', NULL, NULL, '025 315315'),
(109, 'Lux Taxi Sombor', 'Sombor', '', NULL, NULL, '060 3563560'),
(110, 'Taxi Bell', 'Becej', '', NULL, NULL, '062 302594'),
(111, 'Royal Taxi Becej', 'Becej', '', NULL, NULL, '069 700250'),
(112, 'TAXI BIGA', 'Becej', '', NULL, NULL, '062 1127130'),
(113, 'KOJA TAXI', 'Becej', '', NULL, NULL, '063 8631627'),
(114, 'Zoki Boss Taxi', 'Becej', '', NULL, NULL, '062 476255'),
(115, 'Taxi bell bečej', 'Becej', '', NULL, NULL, '066 004422'),
(116, 'Taxi Mile', 'Becej', '', NULL, NULL, '060 1423088'),
(117, 'OK Taxi', 'Becej', '', NULL, NULL, '021 6916948'),
(118, 'Labud', 'Becej', '', NULL, NULL, '063 7591434'),
(119, 'Plus Taxi', 'Becej', '', NULL, NULL, '063 8060423'),
(120, 'Taxi Indjija', 'Indjija', '', NULL, NULL, '060/0555-312'),
(121, 'IVICA RAJIĆ', 'Indjija', '', NULL, NULL, '+381 (0)22 551363'),
(122, 'Zdravo Bravo Taksi', 'Uzice', '', NULL, NULL, '031 554422'),
(123, 'Taxi 500-600', 'Uzice', '', NULL, NULL, '031 3341313'),
(124, 'Taksi S', 'Uzice', '', NULL, NULL, '031 826110'),
(125, 'UE Orange Taxi', 'Uzice', '', NULL, NULL, '064 1506096'),
(126, 'Taksi Miloje Ivanović', 'Uzice', '', NULL, NULL, '063 7769963'),
(127, 'Rajs-Taxi', 'Uzice', '', NULL, NULL, '064 6388962'),
(128, 'Djordje', 'Uzice', '', NULL, NULL, '011 516878'),
(129, 'Mata Taxi', 'Uzice', '', NULL, NULL, '063 1018819'),
(130, 'Djoka Taksi', 'Uzice', '', NULL, NULL, '065 5179707'),
(131, 'Taxi Gogan', 'Uzice', '', NULL, NULL, '066 9120143'),
(132, 'TAXI ZLATIBOR', 'Zlatibor', '', NULL, NULL, '060 0206310'),
(133, 'Taxi Zlatibor - Maxi Taksi Zlatibor', 'Zlatibor', '', NULL, NULL, '063 8807415'),
(134, 'Taxi In Zlatibor', 'Zlatibor', '', NULL, NULL, '064 5139717'),
(135, 'Taksi Zlatibor Joksimovic', 'Zlatibor', '', NULL, NULL, '064 1311451'),
(136, 'Taxi Mixa Zlatibor ', 'Zlatibor', '', NULL, NULL, '060 5281414'),
(137, 'Taxi Miso Zlatibor', 'Zlatibor', '', NULL, NULL, '063 624559'),
(138, 'Mirko Babic PR, Taksi Prevoz Cajetina', 'Zlatibor', '', NULL, NULL, '031 831715'),
(139, 'Taxi 500-600', 'Zlatibor', '', NULL, NULL, '031 3341313'),
(140, 'Laguna Taxi', 'Pancevo', '', NULL, NULL, '013 333666'),
(141, 'Golub Taxi', 'Pancevo', '', NULL, NULL, '013 355555'),
(142, 'TAXI Petrol', 'Pancevo', '', NULL, NULL, '013 2511642'),
(143, 'Alfa Taxi Novi Pazar', 'Novi Pazar', '', NULL, NULL, '062 424242'),
(144, 'YELLOW CAB MAXI TAXI AKICA', 'Novi Pazar', '', NULL, NULL, '020 333333'),
(145, 'KES', 'Novi Pazar', '', NULL, NULL, '064 662076'),
(146, 'Taxi', 'Novi Pazar', '', NULL, NULL, '020 319911'),
(147, 'Euro Radio Taxi', 'Novi Pazar', '', NULL, NULL, '063 7101600'),
(148, 'Taxi Novi Pazar - ABE', 'Novi Pazar', '', NULL, NULL, '064 1342565'),
(149, 'Taxi Ademovic Paso Preduzetnik Novi Pazar', 'Novi Pazar', '', NULL, NULL, '020 314233'),
(150, 'Taxi Samed Rovcanin ', 'Novi Pazar', '', NULL, NULL, '063 8859326'),
(151, 'NEXT Taxi ', 'Krusevac', '', NULL, NULL, '0800 010012'),
(152, 'Astra Taxi', 'Krusevac', '', NULL, NULL, '+38137456456'),
(153, 'Boss Taxi', 'Krusevac', '', NULL, NULL, '+38137444555'),
(154, 'Euro Taxi', 'Krusevac', '', NULL, NULL, '+38137494949'),
(155, 'Grand Taxi', 'Krusevac', '', NULL, NULL, '+38137464646'),
(156, 'Kruna Taxi', 'Krusevac', '', NULL, NULL, '+381379860'),
(157, 'Bond Taksi', 'Kraljevo', '', NULL, NULL, '036 311911'),
(158, 'AS TAXI', 'Kraljevo', '', NULL, NULL, '+381 36 323 323'),
(159, 'PRO TAXI', 'Kraljevo', '', NULL, NULL, '036/315-888'),
(160, 'Premier Taxi Čačak', 'Cacak', '', NULL, NULL, '069 5150515'),
(161, 'Ča taxi', 'Cacak', '', NULL, NULL, '032 320032'),
(162, 'ČAKSI TAXI', 'Cacak', '', NULL, NULL, '065 3339707'),
(163, 'Mega Taxi', 'Cacak', '', NULL, NULL, '032 360360'),
(164, 'AS TAXI', 'Cacak', '', NULL, NULL, '032 320333'),
(165, 'Taxi', 'Cacak', '', NULL, NULL, '032 232346'),
(166, 'Grand TAXI Čačak', 'Cacak', '', NULL, NULL, '032 5122200'),
(167, 'Taxi Goran ', 'Sabac', '', NULL, NULL, '015 351603'),
(168, 'TAXI PREVOZ ŠABAC', 'Sabac', '', NULL, NULL, '066 347700'),
(169, 'Taxi Sremcevic', 'Sabac', '', NULL, NULL, '064 1200664'),
(170, 'Taxi', 'Sabac', '', NULL, NULL, '063 1038874'),
(171, 'Taxi Sreten', 'Sabac', '', NULL, NULL, '063 265480'),
(172, 'Taksi Ninko', 'Sabac', '', NULL, NULL, '064 2345965'),
(173, 'Naš Taksi', 'Loznica', '', NULL, NULL, '015 876133'),
(174, 'Naj Taksi', 'Loznica', '', NULL, NULL, '064 2436220'),
(175, 'S Taxi', 'Loznica', '', NULL, NULL, '015 872872'),
(176, 'Rasevic Taxi', 'Loznica', '', NULL, NULL, '015 891195'),
(177, 'Moj Taxi Loznica', 'Loznica', '', NULL, NULL, '064 1100366'),
(178, 'Srdjan S Taxi', 'Loznica', '', NULL, NULL, '065 8721872'),
(179, 'Taksi', 'Leskovac', '', NULL, NULL, '0800 011016'),
(180, 'Twins Taxi', 'Leskovac', '', NULL, NULL, '065 9926599'),
(181, 'Taksi Prevoz Ivan', 'Leskovac', '', NULL, NULL, '063 8000475'),
(182, 'Cammeo taxi Leskovac', 'Leskovac', '', NULL, NULL, '016 600070'),
(183, 'Bozidar Stojiljkovic', 'Leskovac', '', NULL, NULL, '061 1181851'),
(184, 'Taksi Mikic Zoran', 'Leskovac', '', NULL, NULL, '016 3477249'),
(185, 'Taxi Boom', 'Jagodina', '', NULL, NULL, '035 8203203'),
(186, 'Vip Taxi Jagodina', 'Jagodina', '', NULL, NULL, '069 740740'),
(187, 'AKT TAXI', 'Jagodina', '', NULL, NULL, '0800 035035'),
(188, 'Gala taxi d.o.o.', 'Jagodina', '', NULL, NULL, '063 8252525'),
(189, 'Djole Taxi', 'Jagodina', '', NULL, NULL, '035 225205'),
(190, 'Jagodina Taksi-024', 'Jagodina', '', NULL, NULL, '035 274963'),
(191, 'CITY TAXI', 'Vranje', '', NULL, NULL, '017 415415'),
(192, 'Moj TAXI 2015', 'Vranje', '', NULL, NULL, '017 7101101'),
(193, 'VRANJE TAXI IVICA', 'Vranje', '', NULL, NULL, '062 8658444'),
(194, 'Pink taxi ', 'Vranje', '', NULL, NULL, '060 0400108'),
(195, 'Cobra Taksi', 'Vranje', '', NULL, NULL, '060 3004191'),
(196, 'PINK TAXI 017', 'Vranje', '', NULL, NULL, '062 1400100'),
(197, 'Fox', 'Pirot', '', NULL, NULL, '010 321111'),
(198, 'Maxi Taxi', 'Pirot', '', NULL, NULL, '010 313110'),
(199, 'Taxi', 'Pirot', '', NULL, NULL, '010 444444444'),
(200, 'Fles-Taxi', 'Pirot', '', NULL, NULL, '010 2346108'),
(201, 'PI Taxi', 'Pirot', '', NULL, NULL, '010 310372'),
(202, 'Taxi-Dejan', 'Pirot', '', NULL, NULL, '010 322125'),
(203, 'Taxi Era', 'Kosovska Mitrovica', '', NULL, NULL, '+383 49 660 002'),
(204, 'VIP TAXI', 'Kosovska Mitrovica', '', NULL, NULL, '+386 49 740 330'),
(205, 'Radio Taxi LEONARDI', 'Kosovska Mitrovica', '', NULL, NULL, '+386 49 116 868'),
(206, 'Alfa Taxi Novi Pazar', 'Kosovska Mitrovica', '', NULL, NULL, '062 424242'),
(207, 'Pepsi Taxi', 'Smederevo', '', NULL, NULL, '064 8579000'),
(208, 'Pink Radio Taksi SD', 'Smederevo', '', NULL, NULL, '026 227137'),
(209, 'TAXI PREVOZ SMEDEREVO', 'Smederevo', '', NULL, NULL, '061 2097301'),
(210, 'Bravo Taxi', 'Smederevo', '', NULL, NULL, '026 672700'),
(211, 'ZUKI-TAXI', 'Smederevo', '', NULL, NULL, '064 9115989'),
(212, 'Gradski Taxi Valjevo', 'Valjevo', '', NULL, NULL, '014 291129'),
(213, 'TAXI PREVOZ VALJEVO', 'Valjevo', '', NULL, NULL, '066 012965'),
(214, 'Valjevo Taksi', 'Valjevo', '', NULL, NULL, '062 486719'),
(215, 'TAXI PREVOZ', 'Valjevo', '', NULL, NULL, '060 4243042'),
(216, 'City 014', 'Valjevo', '', NULL, NULL, '011 215191');

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
(1, 'Verlie Lueilwitz', 'jcollins@example.com', '2022-09-29 15:00:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'aVjKm07JrB', '2022-09-29 15:00:06', '2022-09-29 15:00:06'),
(2, 'Lyla Kunde', 'gerry03@example.org', '2022-09-29 15:00:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'jjvx98ENWi', '2022-09-29 15:00:06', '2022-09-29 15:00:06'),
(3, 'Garrick Moen', 'schmeler.oma@example.net', '2022-09-29 15:00:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'FGvuPcJWVf', '2022-09-29 15:00:06', '2022-09-29 15:00:06'),
(4, 'Prof. Osborne Bogan', 'etoy@example.com', '2022-09-29 15:00:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'LunT2WnRjS', '2022-09-29 15:00:06', '2022-09-29 15:00:06'),
(5, 'Prof. Darwin Windler IV', 'brekke.brian@example.org', '2022-09-29 15:00:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'qvySZ3hFrz', '2022-09-29 15:00:06', '2022-09-29 15:00:06');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `taxi`
--
ALTER TABLE `taxi`
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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `taxi`
--
ALTER TABLE `taxi`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=217;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
