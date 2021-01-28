-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 28, 2021 at 03:16 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `almoasher`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'مشاكل الأطفال', '2021-01-28 07:33:43', '2021-01-28 07:33:43'),
(2, 'مشاكل المراهقة', NULL, NULL),
(3, 'الاكتئاب', NULL, NULL),
(4, 'القلق والوسواس', NULL, NULL),
(5, 'استشارات الزوج/مشاكل العلاقات', NULL, NULL),
(6, 'اضطرابات الفصام', NULL, NULL),
(7, 'الادمان', NULL, NULL),
(8, 'المشاكل الجنسية', NULL, NULL),
(9, 'مشاكل الشيخوخة', NULL, NULL);

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
(4, '2014_10_12_000000_create_users_table', 1),
(5, '2019_08_19_000000_create_failed_jobs_table', 1),
(6, '2021_01_27_205456_create_categories_table', 1),
(7, '2021_01_28_072501_create_user_categories_table', 1),
(9, '2021_01_28_091323_add_session_cost_to_users_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` decimal(6,2) NOT NULL DEFAULT 0.00,
  `desc` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_count` bigint(20) NOT NULL DEFAULT 0,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `session_cost` int(11) DEFAULT NULL,
  `job` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `rating`, `desc`, `avatar`, `session_count`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `session_cost`, `job`) VALUES
(1, 'داليا عبدالباسط عبد الحكيم الخضيري', '3.00', 'Repellendus molestias laboriosam voluptatem itaque at ad. Magnam repellat est quis ut delectus. Eum quae quia ipsa dolores molestias est. Enim corrupti tenetur facilis aut porro dolor.', 'https://lorempixel.com/640/480/?63093', 4, 'danny60@example.net', '2021-01-28 06:16:57', '$2y$10$cNKsNxvPJj9sztwe4MoGWeeTzrTbIMzy85xTwMn0mj7xkqT23pERK', 'QmR3rDrcbr', '2021-01-28 06:17:10', '2021-01-28 08:11:59', 100, NULL),
(2, 'تقى العقل', '4.00', 'Recusandae autem ut est et quo voluptatem. Molestiae in maxime at quae earum laudantium. Est beatae eum similique expedita aperiam architecto dolor.', 'https://lorempixel.com/640/480/?17076', 1, 'lwhite@example.net', '2021-01-28 06:16:58', '$2y$10$dIbDduwdQT3QycitJYg9Zu8k2H6JenFU2QWhPgSeh6Xkq34heTlbS', 'a3deT8JBnl', '2021-01-28 06:17:10', '2021-01-28 08:11:59', 112, 'معالج نفسي'),
(3, 'ممدوح الصقيه', '3.00', 'Ipsam natus quo facere harum magni dolor modi. Iste porro id odio magni. Assumenda aliquid ut neque architecto quas et rerum.', 'https://lorempixel.com/640/480/?26859', 9, 'annamarie.turcotte@example.net', '2021-01-28 06:16:58', '$2y$10$BieqRrKX6EkQdMLgXZOIheVTZbQJYpusscQPUbDwjZnolexZu1IDS', '0NSHDS9Ndr', '2021-01-28 06:17:10', '2021-01-28 08:11:59', 124, 'معالج نفسي'),
(4, 'سلام باشا', '3.00', 'Aut ut fugiat odio delectus. Placeat voluptatem nulla aliquid sit. Molestias enim eum sit error ut qui dicta.', 'https://lorempixel.com/640/480/?38167', 2, 'harvey95@example.net', '2021-01-28 06:16:58', '$2y$10$.nd6yw7IrE3NP0YQX7hd1.1OwctUsUgbv5aftDhPpSfMQotHIo.ZO', 'JxBwJq8kxo', '2021-01-28 06:17:10', '2021-01-28 08:12:00', 136, 'معالج نفسي'),
(5, 'شوان مقداد مصباح الخضيري', '4.00', 'Maxime vitae ullam quasi illo exercitationem dolores. Velit corporis vel aspernatur nam illo quia sit. Veritatis fugiat est fuga qui.', 'https://lorempixel.com/640/480/?33901', 4, 'feil.peggie@example.com', '2021-01-28 06:16:58', '$2y$10$bMoQgC0q8eWbcFfoZPDC6unILWJ4eHomyRzwqEUpF8duR7hX.1r/K', 'QO69kv3aqc', '2021-01-28 06:17:10', '2021-01-28 08:12:00', 148, 'معالج نفسي'),
(6, 'ناجي عمر العسكر', '3.00', 'Rerum quaerat aut dolorum iste sunt voluptates. A deleniti quis modi eum. Quia omnis quia harum autem.', 'https://lorempixel.com/640/480/?56848', 5, 'gilberto.ruecker@example.com', '2021-01-28 06:16:58', '$2y$10$VuUx7AOAfqWTW1UR9W2/8O.qbAWZ0B6zMyWTcWs6t61kLxvyDU/6S', 'Gg57IZfSAi', '2021-01-28 06:17:10', '2021-01-28 08:12:00', 160, 'معالج نفسي'),
(7, 'الآنسة آيات الحميد', '5.00', 'Dolores beatae autem ut aut ut cumque magni. Necessitatibus iste magnam commodi possimus maiores modi nobis. Eligendi fugiat deserunt omnis. Id mollitia tempore tenetur ut.', 'https://lorempixel.com/640/480/?30053', 8, 'gottlieb.lisandro@example.org', '2021-01-28 06:16:58', '$2y$10$RpGdmY9FIGQSmZ8D/MKoSeiboY5JARnjRelF44PSWHekGBohQ56ZO', 'uv8P4nT2OU', '2021-01-28 06:17:11', '2021-01-28 08:12:00', 172, 'معالج نفسي'),
(8, 'المهندسة ريهام العتيبي', '2.00', 'Ut nesciunt sequi possimus non ipsum quos non voluptas. Minima omnis dolores voluptas ipsum voluptate. Ut quis maxime repellat itaque ipsam eius ex.', 'https://lorempixel.com/640/480/?93587', 5, 'qhartmann@example.com', '2021-01-28 06:16:58', '$2y$10$096CRS4Ih9vGirVyjLgI8OLnMLdmkY8EB60zs/E1ZsG5UcIKL59M2', 'j8o5NnBzf8', '2021-01-28 06:17:11', '2021-01-28 08:12:00', 184, 'معالج نفسي'),
(9, 'شفاء القحطاني', '1.00', 'Enim laudantium est quasi reprehenderit. Est eum et porro est. A deleniti velit dolore atque veniam molestias. Possimus quas hic sed velit adipisci odio. Dolor eos aliquam repudiandae saepe.', 'https://lorempixel.com/640/480/?54831', 9, 'annabelle56@example.com', '2021-01-28 06:16:58', '$2y$10$.OjKn8oNcXb.2nX5KLJqT.LibARhhuYSQ9LXLcytyZj6lDaCgCnTW', 'fwXtsTRaPY', '2021-01-28 06:17:11', '2021-01-28 08:12:00', 196, 'معالج نفسي'),
(10, 'حسناء الحسين', '1.00', 'Deleniti explicabo et optio modi aperiam. Reiciendis fugiat nihil unde saepe. Ut officia est earum. Suscipit velit reprehenderit id vel aliquam. Pariatur in omnis qui temporibus quaerat.', 'https://lorempixel.com/640/480/?57756', 1, 'kerluke.idell@example.com', '2021-01-28 06:16:58', '$2y$10$4N.ISc10ACnZJJqyYAXY6.54kDc/S5nebl4YHEukbCyEEvc0M1jjG', 'UnDil1HLDv', '2021-01-28 06:17:11', '2021-01-28 08:12:00', 208, 'معالج نفسي'),
(11, 'عدلي عبد الغني العمرو', '4.00', 'Ut quia et corporis. Dignissimos sint voluptatem facilis qui. Neque illo laboriosam culpa corrupti culpa ipsum molestias.', 'https://lorempixel.com/640/480/?30509', 6, 'fspencer@example.net', '2021-01-28 06:16:58', '$2y$10$JSDS.BvnL7REEZbn8RDZc.jbKB/UOV0tLwHjUUN4ivB6glx3q4ac6', 'xqA3Qty83C', '2021-01-28 06:17:11', '2021-01-28 08:12:00', 220, 'معالج نفسي'),
(12, 'جمال العسكر', '3.00', 'Voluptatibus nihil quasi vitae distinctio et. Est necessitatibus cum vel voluptate impedit. Vero cum impedit ipsam quia inventore.', 'https://lorempixel.com/640/480/?28865', 9, 'iblock@example.com', '2021-01-28 06:16:58', '$2y$10$31PCKATrCqdETMILv5AWqOgqiUy7aPJ0awH0IN376cm8d28w0Sr.W', 'ZtF23FX8XQ', '2021-01-28 06:17:11', '2021-01-28 08:12:00', 232, 'معالج نفسي'),
(13, 'دلال لطف راجي الراجحي', '3.00', 'Alias adipisci blanditiis expedita ducimus. Similique voluptatem perspiciatis eligendi corporis. Molestias sed assumenda praesentium vero itaque facere totam tenetur. Qui suscipit et et quos.', 'https://lorempixel.com/640/480/?48932', 2, 'streich.dane@example.org', '2021-01-28 06:16:59', '$2y$10$wrbrtEauSBoCe1TnVZ2SBe5Gwv.PM4/RijEeUQwjc2kQDkHRttTYK', 'U7OVYJKmb5', '2021-01-28 06:17:11', '2021-01-28 08:12:00', 244, 'معالج نفسي'),
(14, 'ركان خالد عون السمير', '3.00', 'Occaecati quas et delectus qui laudantium a. Consequatur perferendis et voluptatem perspiciatis aut magnam. Doloribus voluptatem quos magnam deserunt. Omnis autem error qui.', 'https://lorempixel.com/640/480/?90583', 5, 'monty.boyer@example.com', '2021-01-28 06:16:59', '$2y$10$6U87or/zb8qWmGeiT3thZuZJX8JrJriogWgRSwaoh7P4hnB7cy5n6', 'BPewJqEAl2', '2021-01-28 06:17:11', '2021-01-28 08:12:00', 256, 'معالج نفسي'),
(15, 'إيمان كمال برماوي', '4.00', 'Sint illo iusto ut et repellat in. Quisquam vel delectus voluptatem accusantium ullam libero. Nulla repudiandae et tempore nostrum et recusandae.', 'https://lorempixel.com/640/480/?83299', 6, 'zrogahn@example.org', '2021-01-28 06:16:59', '$2y$10$wiekrtylStNLSZJFMGRXZOTqAEiHk5HMcvmIgqfwxks8GuhKlbvJq', 'qKaj6YmZl6', '2021-01-28 06:17:11', '2021-01-28 08:12:00', 268, 'معالج نفسي'),
(16, 'زمان عميد الصقير', '5.00', 'Vitae error ea dignissimos natus aut iure. Eos illum laudantium voluptates distinctio dolores maxime exercitationem. Veritatis voluptas ex qui aut beatae. Et atque sapiente blanditiis.', 'https://lorempixel.com/640/480/?26279', 6, 'donald.beahan@example.org', '2021-01-28 06:16:59', '$2y$10$ZPXrcPS9crPPQRbk4snhauIoG3Juom2Q0DCOIXi4Im9pu3VzhJ27K', 'PRoh5o1rSo', '2021-01-28 06:17:11', '2021-01-28 08:12:00', 280, 'معالج نفسي'),
(17, 'المهندسة فادية الداوود', '4.00', 'Distinctio consequuntur vero labore nostrum nobis. Eum nulla perferendis nisi. Voluptas aut placeat et aut eos officiis. Praesentium et perspiciatis in consequatur qui voluptas.', 'https://lorempixel.com/640/480/?95657', 9, 'felton14@example.com', '2021-01-28 06:16:59', '$2y$10$ghUJ.yYbliumPVsmesP3n.Nvj7GjRilwvKw5aF50EkphM5bCf2eye', 'SbIon8H0E5', '2021-01-28 06:17:11', '2021-01-28 08:12:00', 292, 'معالج نفسي'),
(18, 'بثينة حابس عامر الحنتوشي', '4.00', 'Accusamus nihil ab dicta et eum. Explicabo cum id sunt voluptatibus facilis voluptates ut. Nulla ad totam temporibus praesentium non.', 'https://lorempixel.com/640/480/?69621', 5, 'leuschke.wellington@example.org', '2021-01-28 06:16:59', '$2y$10$L7Elq3QtfwtjKAX8swZFJuG4xVBHZm0e3m/Sp4AAbgJ9X6QtjlQ6K', 'r5i25e4AJT', '2021-01-28 06:17:11', '2021-01-28 08:12:00', 304, 'معالج نفسي'),
(19, 'سامر نبيل الماجد', '2.00', 'Sunt et qui repellendus totam autem aut. Aut est neque quibusdam qui quaerat ea. Blanditiis dolore et natus.', 'https://lorempixel.com/640/480/?33740', 7, 'aliya63@example.com', '2021-01-28 06:16:59', '$2y$10$k5STliXnKB1wNn9OZj4DwuQsF4s1MKF78HXINdMDHAMejfs59a7DC', 'ndMl47HBuD', '2021-01-28 06:17:11', '2021-01-28 08:12:00', 316, 'معالج نفسي'),
(20, 'نوفان ادم العمرو', '4.00', 'Quisquam qui expedita inventore et id molestiae. Iusto explicabo et non est. Velit est corrupti tempore sit sed. Praesentium consequatur aut accusamus natus repudiandae fugit minus enim.', 'https://lorempixel.com/640/480/?21539', 9, 'jerel05@example.org', '2021-01-28 06:16:59', '$2y$10$v8576SBzd/LONtscPwdqouyPNL8JzIwL/lH1YazjLQnDJCvu2qG.m', '7o5IzZ0OB2', '2021-01-28 06:17:11', '2021-01-28 08:12:00', 328, 'معالج نفسي'),
(21, 'المهندسة ليدا برماوي', '3.00', 'Totam porro sed qui ut sint autem et. In et sit ullam ut provident commodi est. Necessitatibus assumenda fugit nemo unde in deserunt laudantium beatae.', 'https://lorempixel.com/640/480/?86671', 1, 'schmitt.myrtis@example.org', '2021-01-28 06:16:59', '$2y$10$6ToJtZhaOsFKSwTB/gzf2.f3jgbspPgdSLiTyZ.WN3p8zZoDCLtwa', 'PUxgqEYF90', '2021-01-28 06:17:11', '2021-01-28 08:12:00', 340, 'معالج نفسي'),
(22, 'نجاة الشهيل', '4.00', 'Eligendi et temporibus ab possimus voluptatem. Reprehenderit magnam odio et omnis. Vel et qui molestiae possimus sapiente quos.', 'https://lorempixel.com/640/480/?67182', 7, 'jmetz@example.net', '2021-01-28 06:16:59', '$2y$10$ytznwsZUiV.qOPnmdlATNOOqImWTcIcjHkJt.Z6EebrZiJuYjJ98a', 'UgplOj4u9o', '2021-01-28 06:17:11', '2021-01-28 08:12:00', 352, 'معالج نفسي'),
(23, 'حبيبة الفريدي', '4.00', 'Eos itaque facilis rerum sint eos modi dolorem. Incidunt nisi est sit. Nam et aspernatur molestiae.', 'https://lorempixel.com/640/480/?98420', 3, 'uschulist@example.net', '2021-01-28 06:16:59', '$2y$10$9XMFiSNQcy0WqT/Dmt4EfuFAVvbg5hAcjelQytHoHmsDAnM5P0cwG', 'SnkLnivGaY', '2021-01-28 06:17:11', '2021-01-28 08:12:00', 364, 'معالج نفسي'),
(24, 'وداد الحميد', '1.00', 'Molestiae eveniet eligendi quae. Reiciendis nobis iste accusamus totam consectetur magnam. A provident dolor ut amet est aut. Quia ullam quis voluptatem omnis.', 'https://lorempixel.com/640/480/?77077', 3, 'keebler.kaylie@example.net', '2021-01-28 06:17:00', '$2y$10$wk2RTkecQpbXMFQ0rcDiVuO2rPheBrynikfCgCG.mEMo9w6jZrSfa', 'vqshbO6mV7', '2021-01-28 06:17:11', '2021-01-28 08:12:00', 376, 'معالج نفسي'),
(25, 'عبد السلام الأسمري', '5.00', 'Ut voluptas consequuntur asperiores quaerat aut. Qui incidunt et et eligendi nulla veniam omnis. Aliquam explicabo eos aperiam et omnis.', 'https://lorempixel.com/640/480/?49408', 7, 'zula.champlin@example.org', '2021-01-28 06:17:00', '$2y$10$P6QlNW/cSqDIn5ewnIBeSuAPPVQW13J8D2iELuUHWMKJ.BApTiCMm', 'Tr6cbNPTEq', '2021-01-28 06:17:11', '2021-01-28 08:12:00', 388, 'معالج نفسي'),
(26, 'راغدة السماري', '4.00', 'Voluptatem similique sunt voluptas sed hic tempora. Et odio voluptate aut enim quisquam quisquam laboriosam dolor. Assumenda tempora tenetur quod excepturi enim voluptas.', 'https://lorempixel.com/640/480/?36980', 9, 'keshaun.rath@example.org', '2021-01-28 06:17:00', '$2y$10$sc4hQ8.cHrZcoCXRjhXNKu4yLvuxlws4uomnYjV0Dzd/wXqDla/ta', 'WA54Ezlrty', '2021-01-28 06:17:11', '2021-01-28 08:12:00', 400, 'معالج نفسي'),
(27, 'وصفي نبراس الداوود', '5.00', 'Nobis ducimus dolores neque dolores sunt tenetur. Suscipit qui beatae aut autem nihil. Laboriosam numquam mollitia facere ducimus cumque vel. Recusandae non tenetur est sequi.', 'https://lorempixel.com/640/480/?47841', 6, 'earnestine38@example.com', '2021-01-28 06:17:00', '$2y$10$dDT1H1SUbaZVzke/FJLYveGmltGsOr6Gf5dhu2.KQPXszwbvRo4Xu', 'u6U8AdHJm0', '2021-01-28 06:17:11', '2021-01-28 08:12:00', 412, 'معالج نفسي'),
(28, 'رداد العرفج', '4.00', 'Distinctio assumenda sed at enim. Enim consequatur qui assumenda magnam sed sit. Neque nam rerum dolor deserunt.', 'https://lorempixel.com/640/480/?79650', 8, 'jeanette.schimmel@example.org', '2021-01-28 06:17:00', '$2y$10$7ak4kwurHTQTO8Lsg4VqGencRhuWf6QBe4b8XtkNjwJOV.oUeDSaW', 'lBSwTF01nm', '2021-01-28 06:17:11', '2021-01-28 08:12:00', 424, 'معالج نفسي'),
(29, 'سكينة العتيبي', '5.00', 'Et qui minima corrupti architecto consequatur. Est id nulla ad suscipit sit ipsam quia saepe. Tempore aliquid odio rerum enim.', 'https://lorempixel.com/640/480/?17712', 6, 'sipes.enola@example.net', '2021-01-28 06:17:00', '$2y$10$/sqGoWpydJ0iLJ.ttMEWC.8XDcXJQgUA.ZVHcoEOgK/uRJPBjdlKy', 'lLjEb0u3nA', '2021-01-28 06:17:11', '2021-01-28 08:12:00', 436, 'معالج نفسي'),
(30, 'سما الراجحي', '4.00', 'Consequatur itaque non quaerat. Asperiores non ut voluptates quae hic. Amet corrupti quia ullam cum magnam corrupti.', 'https://lorempixel.com/640/480/?38114', 6, 'kaelyn.schmidt@example.com', '2021-01-28 06:17:01', '$2y$10$ly5jjUnet2RiHwoGBbRfWedjEwP6fBWfkCSlPBTtq9ziea3HDLyum', 'BlbaEapGHo', '2021-01-28 06:17:12', '2021-01-28 08:12:00', 448, 'معالج نفسي'),
(31, 'عون سهل ايمن السويلم', '4.00', 'Exercitationem qui itaque asperiores cum est quas impedit ea. Nesciunt cupiditate eos et eum fugit iusto aut. Magnam corporis quibusdam qui reiciendis ut sed quis. Esse vitae quis modi.', 'https://lorempixel.com/640/480/?86701', 9, 'haven08@example.net', '2021-01-28 06:17:01', '$2y$10$EaL4R7DYpQCUc0yEM3IuP.Oq1CuLQczWqc/t2SAuwy0YZiyT8N98O', 'NzWaqsQNd3', '2021-01-28 06:17:12', '2021-01-28 08:12:01', 460, 'معالج نفسي'),
(32, 'رغد العتيبي', '3.00', 'Occaecati dolore iure maxime modi optio. Sunt repellat non et quas sunt. Aliquid delectus voluptatem nostrum sit.', 'https://lorempixel.com/640/480/?64639', 1, 'mary00@example.org', '2021-01-28 06:17:01', '$2y$10$d89NOoGlVmBMAKKdgpyFne99sXOcVjx7skqZtlq7dngODE7mshAGa', 'gB3jilOMHM', '2021-01-28 06:17:12', '2021-01-28 08:12:01', 472, 'معالج نفسي'),
(33, 'ميسون العتيبي', '2.00', 'Quis ut nihil tempora. Quia ut saepe accusantium amet. Qui eos consectetur aut rem. Voluptatem aut delectus consequuntur est cumque perferendis.', 'https://lorempixel.com/640/480/?54972', 4, 'gerlach.dave@example.com', '2021-01-28 06:17:01', '$2y$10$aWduNp/kpKBWAgKWd/QUXelJCq4SfXCDtuCvruCWkDBCwasVKd3Dm', 'unVtsXBoLo', '2021-01-28 06:17:12', '2021-01-28 08:12:01', 484, 'معالج نفسي'),
(34, 'اياد الصامل', '2.00', 'Magni incidunt est amet et. Eos officiis sunt vitae cum voluptate ipsa repudiandae minus. Qui ut modi aut deleniti quisquam saepe facere eos.', 'https://lorempixel.com/640/480/?58620', 2, 'nokon@example.net', '2021-01-28 06:17:01', '$2y$10$QQGDX6Olx7GJdjMQ0BWTauozFGAnCB5TrdcmKqEJeuhSnQ9bWQaJ6', 'R0q7DdqPPV', '2021-01-28 06:17:12', '2021-01-28 08:12:01', 496, 'معالج نفسي'),
(35, 'سنن السماري', '4.00', 'Minus voluptatem explicabo esse sed architecto. Sit libero totam nobis dolorem enim. Ullam possimus porro aliquam.', 'https://lorempixel.com/640/480/?94777', 6, 'fay.luettgen@example.com', '2021-01-28 06:17:01', '$2y$10$Z1pDUqae0vtPmpuEfPRpgej6297/ZanhFd.1UgqlK2v8H7uHvZmpK', 'D8CRJ3salA', '2021-01-28 06:17:12', '2021-01-28 08:12:01', 508, 'معالج نفسي'),
(36, 'رافت مكي', '4.00', 'Voluptates occaecati aut quam et et. Placeat commodi vitae id explicabo sapiente quae qui minus. Rerum earum et et omnis. Ea dolorem sit sint cumque sed.', 'https://lorempixel.com/640/480/?57643', 2, 'auer.betsy@example.org', '2021-01-28 06:17:01', '$2y$10$uJwmL.v8Vw2SwahYWGGs0enRviDrt.ow4oDziusOWjbktceRVPL1q', 'XHEIWnlYC8', '2021-01-28 06:17:12', '2021-01-28 08:12:01', 520, 'معالج نفسي'),
(37, 'المهندسة زين مدني', '4.00', 'Eaque quo ullam soluta tenetur ratione quibusdam. Libero inventore impedit iusto quisquam dolorum sunt aperiam. Minima natus voluptatem ut eos. Natus doloremque culpa amet sed corrupti ipsa unde.', 'https://lorempixel.com/640/480/?87638', 2, 'shemar95@example.com', '2021-01-28 06:17:01', '$2y$10$WDkFeYRKty9BcMXlbM1xsuPAM4D7P9lofdCMvljnkCY7648pppo0u', '2ztkZKBskL', '2021-01-28 06:17:12', '2021-01-28 08:12:01', 532, 'معالج نفسي'),
(38, 'اويس عبداللطيف عبادة الفرحان', '5.00', 'Rem accusantium quae quam. Nesciunt ut ad a praesentium sunt accusamus. Ut aut neque et quasi sunt vitae atque. Consequatur animi sint itaque voluptatum.', 'https://lorempixel.com/640/480/?56094', 5, 'eemard@example.org', '2021-01-28 06:17:01', '$2y$10$.WQ2MgMMVjFvnIIDFRUjjeHLPo3WRwowF1sKNh091lKObegaf4TWu', 'VN9rOKIzec', '2021-01-28 06:17:12', '2021-01-28 08:12:01', 544, 'معالج نفسي'),
(39, 'رمال العتيبي', '4.00', 'Provident quo et eos maiores est perspiciatis eum. Cupiditate cumque quod quas magnam. Sit aliquam aliquid nesciunt facere.', 'https://lorempixel.com/640/480/?10679', 1, 'percy.gerhold@example.net', '2021-01-28 06:17:01', '$2y$10$L/1teUAQv2bdfAY9vY.5peH/JEEAAxmHt32Qa/byKA6aO3PK/YquG', 'KS9Abqn80E', '2021-01-28 06:17:12', '2021-01-28 08:12:01', 556, 'معالج نفسي'),
(40, 'ايمن سقا', '3.00', 'Illum reiciendis dolore consequuntur rem ex deserunt. Porro et aperiam quaerat temporibus maxime. Quia necessitatibus in voluptates error et.', 'https://lorempixel.com/640/480/?77670', 2, 'gschaefer@example.com', '2021-01-28 06:17:02', '$2y$10$dTsESp85EExHEPVnrddkmu5pT37leokudJtjooE1056jseaoFbSo.', 'UBiOtQKdgu', '2021-01-28 06:17:12', '2021-01-28 08:12:01', 568, 'معالج نفسي'),
(41, 'رضوان العرفج', '5.00', 'Consequatur facilis unde dolore blanditiis et consequuntur id. Animi atque et et in. Id accusamus aut minima numquam cum voluptatem. Autem fugiat ut asperiores voluptatem magni.', 'https://lorempixel.com/640/480/?14907', 8, 'durgan.rosina@example.net', '2021-01-28 06:17:02', '$2y$10$yAYPY4TnUtmlW0KX5LezCO1d6iF1SF5.61KJuYqsm4C6BlzD7M8W2', '96Bl7xqwtW', '2021-01-28 06:17:12', '2021-01-28 08:12:01', 580, 'معالج نفسي'),
(42, 'الدكتورة ميساء السيف', '5.00', 'Molestiae doloribus autem quia et quis. Ipsa saepe nulla blanditiis nam. Voluptates ipsa aperiam voluptas accusantium quo dolore. Aliquam voluptates repellat illo sit. Laudantium ut et dolorem.', 'https://lorempixel.com/640/480/?91292', 2, 'arch.grimes@example.com', '2021-01-28 06:17:02', '$2y$10$W9j9bQ1KiiSiszmroiwofuipXvEM7PA3eJpi999/WZJQA7yCd266i', 'KDUGeD6TkR', '2021-01-28 06:17:12', '2021-01-28 08:12:01', 592, 'معالج نفسي'),
(43, 'جود السالم', '3.00', 'Iste consectetur adipisci quidem temporibus quos voluptates quas architecto. Aliquam adipisci nemo aut deleniti est quae natus.', 'https://lorempixel.com/640/480/?69514', 8, 'bartoletti.derek@example.com', '2021-01-28 06:17:02', '$2y$10$VFmaN0lTfD2ZHPFdHtnQd.ujuQx0wWkPxPiCsbC5wzgXwpnipx5ze', 'bQT8aBOwGX', '2021-01-28 06:17:12', '2021-01-28 08:12:01', 604, 'معالج نفسي'),
(44, 'مهدي القحطاني', '2.00', 'Quis natus ipsam molestiae deserunt odio iure. Quia ullam placeat veniam pariatur in. Culpa dolore culpa voluptatem quam eum quaerat magni. Itaque magnam pariatur ut provident.', 'https://lorempixel.com/640/480/?66500', 8, 'allan66@example.net', '2021-01-28 06:17:02', '$2y$10$.NWur11R1deyrUR5eDneLuaLKpae6skOu9F2001zvz3sU4f1LfLbG', 'dVCffbWe8y', '2021-01-28 06:17:12', '2021-01-28 08:12:01', 616, 'معالج نفسي'),
(45, 'سيلفا العنزي', '5.00', 'Voluptatem suscipit debitis quas et ut qui. At odit perferendis optio animi.', 'https://lorempixel.com/640/480/?32503', 9, 'rogahn.prudence@example.org', '2021-01-28 06:17:03', '$2y$10$9gZ1ehKmd4HCkbI/9cf.OeD3La5I9JZruAXGBADoZfWW6svC2U9jO', '6Gu8g7YBIi', '2021-01-28 06:17:12', '2021-01-28 08:12:01', 628, 'معالج نفسي'),
(46, 'المهندسة نسيمة الأسمري', '5.00', 'Illum voluptatem numquam dolore rerum est non et. Autem quia necessitatibus autem magnam. Ratione id aperiam esse et sint.', 'https://lorempixel.com/640/480/?36044', 8, 'garth.kutch@example.net', '2021-01-28 06:17:03', '$2y$10$issnea3SnboDZFy.ISfa3u5RXSqnWzM.YaMm7dxy7EB5FY3ZHE202', 'XpNcSiLw5U', '2021-01-28 06:17:12', '2021-01-28 08:12:01', 640, 'معالج نفسي'),
(47, 'المهندسة دعاء الفريدي', '2.00', 'Facere voluptatem nostrum odit eveniet porro. Omnis hic expedita vel quia nihil minus. Qui ut ad molestiae eos. Ut aut consequatur corrupti alias enim veniam.', 'https://lorempixel.com/640/480/?65529', 4, 'gene75@example.net', '2021-01-28 06:17:03', '$2y$10$6qY2Uhk.SpdE11WsdEGVi.TSMfWyi5Qkhxce.6f3nrKXSZBUQvgSC', 'ukERDvccgg', '2021-01-28 06:17:12', '2021-01-28 08:12:01', 652, 'معالج نفسي'),
(48, 'قتاده ناصر أيهم الزامل', '4.00', 'Dolorem eos eligendi molestiae quis veniam dicta. Adipisci corporis sapiente et rem. Reprehenderit ut ut nihil quo.', 'https://lorempixel.com/640/480/?66415', 5, 'collin.romaguera@example.com', '2021-01-28 06:17:03', '$2y$10$YsEmrrhdHB7utkwXQ/8BqeJDFH/GhHeqjw5hOI2kII5Ot6Jt7VEpS', 'l6cQ9hlcPj', '2021-01-28 06:17:13', '2021-01-28 08:12:01', 664, 'معالج نفسي'),
(49, 'زكية السعيد', '4.00', 'Sequi odio consequatur quaerat eos. Qui quidem aut sint sed aut sed itaque id. Vero nisi eum rerum alias deleniti qui sit.', 'https://lorempixel.com/640/480/?89180', 5, 'neva60@example.net', '2021-01-28 06:17:03', '$2y$10$46Ic.P1p6IDMfc94MErYguG0JMQb/hpGwc55ZX89WIE6/vtqilefa', 'cFfoTX6HCY', '2021-01-28 06:17:13', '2021-01-28 08:12:01', 676, 'معالج نفسي'),
(50, 'حسناء مشهور العسكر', '5.00', 'Aut cum mollitia consequatur deserunt repellat. Est officiis vero eligendi aspernatur labore qui quae. Sit et ratione quas voluptatem.', 'https://lorempixel.com/640/480/?28834', 9, 'terry.bart@example.com', '2021-01-28 06:17:03', '$2y$10$y.Y.pXPSYxKBVVMx9SUuDOJL5p/8jbLBSSF1Uwjgk9lbEv657Gmi.', 'G5WbHMRGn5', '2021-01-28 06:17:13', '2021-01-28 08:12:01', 688, 'معالج نفسي'),
(51, 'عبد الناصر فريد الأسمري', '4.00', 'Est aperiam et molestiae reiciendis unde ipsa similique. Ea reprehenderit et sit dolore autem. Et autem illum similique voluptas molestiae quos.', 'https://lorempixel.com/640/480/?24500', 4, 'marcus.schmitt@example.org', '2021-01-28 06:17:03', '$2y$10$bFtw6FioDRL1COaWW2aXUOTgIgD6944DV4GP23vYPFzcx8JA/HdCW', '45b0vL2QIJ', '2021-01-28 06:17:13', '2021-01-28 08:12:01', 700, 'معالج نفسي'),
(52, 'بيان المنيف', '1.00', 'Non deserunt omnis assumenda est. Occaecati mollitia odio numquam saepe. Dicta voluptatibus quod voluptates delectus sit autem laborum. Dolorem qui ea soluta maxime.', 'https://lorempixel.com/640/480/?76573', 7, 'grace34@example.com', '2021-01-28 06:17:03', '$2y$10$/I1DyNUgQyc2drpEzGIOsuvvDWu5rJU0GQ5ffnujeC.c8RF7FJe4a', 'nV1B0tZ1px', '2021-01-28 06:17:13', '2021-01-28 08:12:01', 712, 'معالج نفسي'),
(53, 'عملا السماعيل', '2.00', 'Praesentium quia ea et esse dolor vel. Perspiciatis itaque qui et eum vero. Doloribus eligendi facere qui rem consectetur optio distinctio necessitatibus.', 'https://lorempixel.com/640/480/?60043', 1, 'linwood63@example.org', '2021-01-28 06:17:03', '$2y$10$ksHvSqSb.5CQ8XFQ/5u1u.03aS3R2UOoV71x8dp/4PwM0YaUeEUB.', 'Dt5W0x72ju', '2021-01-28 06:17:13', '2021-01-28 08:12:01', 724, 'معالج نفسي'),
(54, 'سما عبد الحليم مدين الزامل', '3.00', 'Repellat minus quasi magnam incidunt. Qui dolorem enim est hic. In perferendis aspernatur aut ipsum sint ullam eveniet.', 'https://lorempixel.com/640/480/?94932', 4, 'renner.audreanne@example.net', '2021-01-28 06:17:03', '$2y$10$C19H20vXGk75L7zbeK15wuUEt7dYAFGr8xO0Gdot33PfiAGsMbHkO', 'gwuyLbAwxj', '2021-01-28 06:17:13', '2021-01-28 08:12:01', 736, 'معالج نفسي'),
(55, 'فيفيان جواهرجي', '3.00', 'Sequi porro quibusdam corrupti itaque. Neque autem totam velit recusandae qui odit tenetur alias. Et adipisci velit tenetur voluptatum magni.', 'https://lorempixel.com/640/480/?76396', 6, 'turner.stracke@example.org', '2021-01-28 06:17:04', '$2y$10$LYTvFz8N9aP1Cv9dercpxOgA65QayFO9BjxROaaGYEXyn1t/h75B.', 'zkZLHZQ32M', '2021-01-28 06:17:13', '2021-01-28 08:12:01', 748, 'معالج نفسي'),
(56, 'لورا فاخر مؤنس العرفج', '4.00', 'Soluta dolor magnam occaecati repellendus ipsa. Sit aut magni illo optio odit ipsam voluptatum. Fugiat est eos alias rerum accusantium. Non expedita voluptatibus repudiandae deleniti.', 'https://lorempixel.com/640/480/?39949', 7, 'lockman.agnes@example.net', '2021-01-28 06:17:04', '$2y$10$8IVX5lu5zKjAAvOxEGVgaOGFxDVwQHBTpd1Led9D1r4MqgSSWzNT.', 'RUh2NP9Tub', '2021-01-28 06:17:13', '2021-01-28 08:12:01', 760, 'معالج نفسي'),
(57, 'أزهار الشيباني', '4.00', 'Ipsam sint et sapiente sed expedita explicabo rem. Sit quia quis adipisci est magni quidem. Non error id dolores eligendi harum. Sed aut molestias dolor similique quasi.', 'https://lorempixel.com/640/480/?63175', 8, 'ortiz.shyann@example.net', '2021-01-28 06:17:04', '$2y$10$R9Ofy9rQ924i6E5bW/PHZuWPFWHPYuOGMivZIiNYLdAdB.XL5oile', 'eZrAOddBsg', '2021-01-28 06:17:13', '2021-01-28 08:12:02', 772, 'معالج نفسي'),
(58, 'ينال راكان الشيباني', '4.00', 'Amet et omnis nesciunt voluptate occaecati odit. Libero vel non nostrum. Ut aut eius molestias.', 'https://lorempixel.com/640/480/?98940', 7, 'kovacek.araceli@example.org', '2021-01-28 06:17:04', '$2y$10$bGGwUFwy8O1bi8AJXPXEhOct9HAIEQDt1s.OZK.i369TtKdTNHcaG', 'Gp1rwCSut4', '2021-01-28 06:17:13', '2021-01-28 08:12:02', 784, 'معالج نفسي'),
(59, 'عبد الحكيم سكوت يوسف الماجد', '1.00', 'Nesciunt numquam et nesciunt voluptatibus. Neque dolor officiis aperiam rerum. Enim praesentium id doloribus voluptatem iusto tempora rem. Eos ab ex facilis ipsum blanditiis omnis dolores.', 'https://lorempixel.com/640/480/?96974', 4, 'catalina.hane@example.net', '2021-01-28 06:17:04', '$2y$10$LzzbcvCKJ7RHwc1Csf3HveWYAPzhgkWduUOn06FxZFB4JLJUrfgtK', 'dwc7JaNCZ3', '2021-01-28 06:17:13', '2021-01-28 08:12:02', 796, 'معالج نفسي'),
(60, 'منذر عبداالله المشيقح', '5.00', 'Qui alias sit quo at a. Aut nam dicta totam animi. Iure natus dolor eaque accusantium beatae unde.', 'https://lorempixel.com/640/480/?95076', 8, 'durgan.taryn@example.com', '2021-01-28 06:17:05', '$2y$10$8nLj64RsIMvw9/RLP7.yzOBl8uoqswQed0BGqpiTM8if59w9yBekK', 'eLTKmb5I1C', '2021-01-28 06:17:13', '2021-01-28 08:12:02', 808, 'معالج نفسي'),
(61, 'هدى عبيدة برماوي', '1.00', 'Qui ut ut exercitationem placeat aspernatur. Porro quia velit facilis laboriosam eos molestiae porro. Aut tempore sequi reprehenderit inventore labore accusamus dolore.', 'https://lorempixel.com/640/480/?40031', 4, 'klocko.lance@example.com', '2021-01-28 06:17:05', '$2y$10$ESTnTAPF00leMGI/sCzAteJuQAOcd8TnC.DLVcE0PbBqbaWP38xcG', 'j4CYNoAEGL', '2021-01-28 06:17:13', '2021-01-28 08:12:02', 820, 'معالج نفسي'),
(62, 'مشاري عون الحميد', '4.00', 'Porro voluptatem et qui quos laborum aut quia sed. Ut explicabo sit impedit est. Ut sequi autem quo et aliquid sed ut.', 'https://lorempixel.com/640/480/?35306', 2, 'ebraun@example.com', '2021-01-28 06:17:05', '$2y$10$ZebEp6Hu2XEG4vdnLiojFum5Sjew90oPhq7p3lmsOaXfLyrd5c07e', '2BFltKE8qw', '2021-01-28 06:17:13', '2021-01-28 08:12:02', 832, 'معالج نفسي'),
(63, 'جراح مسعود العمرو', '4.00', 'Mollitia provident earum nemo explicabo. Consectetur odit et exercitationem dolores autem. Itaque ducimus accusantium rem laudantium in officia ex. Ut dolores eius recusandae.', 'https://lorempixel.com/640/480/?78189', 9, 'funk.alessia@example.org', '2021-01-28 06:17:05', '$2y$10$.RrJ6OSXZ3TqUE0rjBxSX.ZXU.I8YIjj3WpQLDFcAHis3sqHipc.6', 'vlcbH4R5lv', '2021-01-28 06:17:13', '2021-01-28 08:12:02', 844, 'معالج نفسي'),
(64, 'سلام القحطاني', '4.00', 'Dolorem qui fuga soluta ex. Illo sit error distinctio consectetur. Delectus similique nesciunt repudiandae minus. Nulla distinctio perspiciatis quod quos ut officiis ut.', 'https://lorempixel.com/640/480/?78926', 5, 'tschroeder@example.com', '2021-01-28 06:17:05', '$2y$10$kwEqtIsJiuZQ0k.rf/KKjO5XSbOfmHD3iiz5vdQQHmMECAksh85Re', 'DFvksdu2ZQ', '2021-01-28 06:17:13', '2021-01-28 08:12:02', 856, 'معالج نفسي'),
(65, 'زيدان الجريد', '4.00', 'Architecto velit repellat culpa qui quo. Et mollitia animi quo sed aut at cum officiis. Animi maxime et ut et.', 'https://lorempixel.com/640/480/?28682', 5, 'gswift@example.net', '2021-01-28 06:17:05', '$2y$10$mN./dAfoEo0c/ngnM9VT0urgB0qhCFIHGrVipuY9j3wdGNbylbRU6', 'sJb5OfHNBl', '2021-01-28 06:17:13', '2021-01-28 08:12:02', 868, 'معالج نفسي'),
(66, 'ايسر المطرفي', '5.00', 'Sint itaque facilis ut doloremque rerum magnam consequatur. Consectetur quasi dolores fugiat illum soluta repudiandae. Odit unde aut quae nobis in ut sed.', 'https://lorempixel.com/640/480/?46655', 8, 'daugherty.estella@example.org', '2021-01-28 06:17:05', '$2y$10$pq.04GTO.2z3tKehLC77s.0y4iaZlPcVZOetB34BxDsZAVvTf..9.', 'FT55CtzZTa', '2021-01-28 06:17:13', '2021-01-28 08:12:02', 880, 'معالج نفسي'),
(67, 'عبد المولى المشيقح', '5.00', 'Ut debitis dolores aut sapiente in aliquam est consequatur. Non consequatur officia ut itaque perferendis. Qui eum placeat qui pariatur.', 'https://lorempixel.com/640/480/?87077', 7, 'reuben09@example.com', '2021-01-28 06:17:05', '$2y$10$EbqmWHkgXv8oH/3wXB8l1OG.Tnmj4dpe4D406q88d4uUr2SJQmbuq', 'DhKSgKPomj', '2021-01-28 06:17:13', '2021-01-28 08:12:02', 892, 'معالج نفسي'),
(68, 'الآنسة لينة الخالدي', '3.00', 'Repudiandae aliquam quisquam reprehenderit doloribus aut sint sit. Aliquid accusamus ducimus dolorem aut quidem.', 'https://lorempixel.com/640/480/?53352', 9, 'reggie32@example.com', '2021-01-28 06:17:05', '$2y$10$z9m73E.GrklVmOuiDpwPseXBNdG63RBHT5IrqA8Jhdje4DMhsGuQ6', 'qgLW5ccpju', '2021-01-28 06:17:13', '2021-01-28 08:12:02', 904, 'معالج نفسي'),
(69, 'شرين السعيد', '4.00', 'Voluptatem dolores et occaecati ex et fuga enim. Omnis eius architecto aut tenetur dolores.', 'https://lorempixel.com/640/480/?25875', 4, 'jarrod.schroeder@example.net', '2021-01-28 06:17:05', '$2y$10$x9A29ERTq5ZCXVJGu2BJYOb72KK8Jqk/Bqk88zP8ATFFGTWxFZS/2', 'LPhYvbbRY5', '2021-01-28 06:17:13', '2021-01-28 08:12:02', 916, 'معالج نفسي'),
(70, 'هند عبد الحافظ الصقيه', '4.00', 'Fugiat necessitatibus et similique vero enim natus voluptate. Ipsum ut voluptas omnis sit quibusdam sed quis magni. Quo tempore ut eum et soluta nam. Qui aut dicta aspernatur cupiditate et voluptate.', 'https://lorempixel.com/640/480/?57808', 1, 'zboncak.linwood@example.net', '2021-01-28 06:17:05', '$2y$10$ksU9bF/0VA49UpDCZk7Iy..hrzKIIl40Va5wxwDJ16x0kfRLCXmxK', 'tjgb6yJ55S', '2021-01-28 06:17:13', '2021-01-28 08:12:02', 928, 'معالج نفسي'),
(71, 'عزيز مكي', '3.00', 'Fuga officia ut commodi dolor qui cumque. Dolores nesciunt nisi et quas autem maxime non. Alias illum unde quam voluptatibus.', 'https://lorempixel.com/640/480/?50004', 7, 'mohr.ashly@example.com', '2021-01-28 06:17:06', '$2y$10$djSoVlyctR32glQ9hJmXEeowsTQgCorDEIH1qKtrsDN8uIRl2/blK', 'b5wr7fxn1z', '2021-01-28 06:17:14', '2021-01-28 08:12:02', 940, 'معالج نفسي'),
(72, 'السيدة نداء السماعيل', '5.00', 'Sunt qui dolores dolor qui id distinctio omnis omnis. Itaque tenetur corporis consequuntur ullam nostrum. Veritatis consequuntur magnam laboriosam occaecati veniam.', 'https://lorempixel.com/640/480/?95112', 3, 'fthompson@example.org', '2021-01-28 06:17:06', '$2y$10$yaufEWvOiPLFoPCEy4b12uXQFPxHYmhREUo3NDLYk3aFFjDhDEIDa', '8fOk8cylEB', '2021-01-28 06:17:14', '2021-01-28 08:12:02', 952, 'معالج نفسي'),
(73, 'هيا علاء عمار باشا', '4.00', 'Sint in aut nesciunt accusantium ad velit amet. Eos quidem fugit sunt quod. Fugiat pariatur corrupti ullam ut sit sunt est. Et sequi autem ullam.', 'https://lorempixel.com/640/480/?86209', 3, 'annalise.kautzer@example.com', '2021-01-28 06:17:06', '$2y$10$S5eDSTXXqXneRii1ZGixHeQDbdKJvAMwSdwUoBbEK28p.LootvlZG', 'uVYDAXHtka', '2021-01-28 06:17:14', '2021-01-28 08:12:02', 964, 'معالج نفسي'),
(74, 'ميسا القحطاني', '5.00', 'Reiciendis veniam quasi perferendis id dicta. Veritatis voluptas animi consequatur ullam rerum totam quam. Labore nihil nihil impedit quos.', 'https://lorempixel.com/640/480/?25166', 5, 'oconnell.pierce@example.com', '2021-01-28 06:17:06', '$2y$10$0qM1jC13h1BhJNMlgVLCSebv1jG2e/CafU3o0ePEYHyGO8Mqr6aTu', 'syJBN7pEpY', '2021-01-28 06:17:14', '2021-01-28 08:12:02', 976, 'معالج نفسي'),
(75, 'رقية عثمان بكر القحطاني', '5.00', 'Amet est velit iure odio itaque deserunt. Sint aut excepturi unde sequi nihil enim dolorem. Modi iste corporis sint est voluptatem est et. Placeat ut vel aliquam non rerum.', 'https://lorempixel.com/640/480/?82958', 8, 'ken31@example.org', '2021-01-28 06:17:06', '$2y$10$Q95IsdDNXUqcVFLKDb0.MuCP0Zd564jC6fpOvgpZ0YKBTkBATvdRC', 'vZhGKWx3Fq', '2021-01-28 06:17:14', '2021-01-28 08:12:02', 988, 'معالج نفسي'),
(76, 'مي الأسمري', '3.00', 'Impedit at voluptatem sapiente illum tempora. Qui non quo dicta ipsa dicta. Nihil accusamus nisi consequatur aut. At occaecati qui voluptatum nam ut omnis at. Sit eos aut sed est a.', 'https://lorempixel.com/640/480/?47093', 2, 'kcremin@example.org', '2021-01-28 06:17:07', '$2y$10$nJkyz3u1AXvWleo3iLoxBuyubtqX3O74NiF9mO8h9VHzAorG0fry2', '2qtnsJUJtn', '2021-01-28 06:17:14', '2021-01-28 08:12:02', 1000, 'معالج نفسي'),
(77, 'يونس العرفج', '4.00', 'Maxime necessitatibus eos ad maiores. Modi vitae aliquid eaque quibusdam nemo animi. Iste ea quam ut voluptatum. Est ut expedita vel.', 'https://lorempixel.com/640/480/?57392', 4, 'myrtle.kling@example.net', '2021-01-28 06:17:07', '$2y$10$N/ZYrnQxCyBpsl22dESCu.H4xqUPsCnp2H6NaQ8rdcgN/rFjM4/L2', 'NfamWcyzze', '2021-01-28 06:17:14', '2021-01-28 08:12:02', 1012, 'معالج نفسي'),
(78, 'نهيدة السماري', '4.00', 'Id officiis minus voluptatibus ipsam exercitationem. Doloremque voluptates placeat velit. Delectus sint temporibus voluptates praesentium quis dolorem.', 'https://lorempixel.com/640/480/?25971', 3, 'jadyn17@example.com', '2021-01-28 06:17:07', '$2y$10$ZXaN/Wktd.MC.mr0DVkAg.DB3t6UR7VoEFtdlsIVPvcrwmVrhb/l6', 'L70JmQ24tE', '2021-01-28 06:17:14', '2021-01-28 08:12:02', 1024, 'معالج نفسي'),
(79, 'نهاد السويلم', '3.00', 'Rem sunt aut sunt voluptatem totam. In repudiandae quo veniam nulla sint sequi.', 'https://lorempixel.com/640/480/?24289', 7, 'adrienne.gerlach@example.org', '2021-01-28 06:17:07', '$2y$10$koX3m6frLKYYDTvCzIDvOO6waoDjmOAHge6t1UrcC.cTxhgF/hPbC', '9cWsgqqF2W', '2021-01-28 06:17:14', '2021-01-28 08:12:02', 1036, 'معالج نفسي'),
(80, 'عبد الرحمن اصلان المنيف', '5.00', 'Exercitationem et rerum non incidunt assumenda assumenda. Cupiditate iure impedit ullam pariatur. Qui aspernatur sit nobis adipisci pariatur.', 'https://lorempixel.com/640/480/?64259', 6, 'bahringer.amos@example.org', '2021-01-28 06:17:07', '$2y$10$rypP9HodHonkDBUndsZ1hen6mR50KmCJna3qr.t3aRs/NlNry5p9S', '8XNgkyDjav', '2021-01-28 06:17:14', '2021-01-28 08:12:02', 1048, 'معالج نفسي'),
(81, 'السيدة منال مدني', '4.00', 'Officia rerum voluptas molestias. Debitis id vero dolor dolor qui. Est odit dolor voluptate eius nobis culpa eius ipsam. Rerum a mollitia rerum laudantium. Rem et non corrupti saepe.', 'https://lorempixel.com/640/480/?56088', 4, 'javier93@example.net', '2021-01-28 06:17:07', '$2y$10$yLAI./MbNFw3HhrgTeBtYOMe8aPHYbteOeBN4LesLTPpdldARwts2', 'o6Nv6ReFup', '2021-01-28 06:17:14', '2021-01-28 08:12:02', 1060, 'معالج نفسي'),
(82, 'مديحة طلال العقل', '2.00', 'Beatae aut suscipit ipsa est velit enim accusantium tenetur. Aut et nemo est omnis dolor quis. Id quia accusamus voluptas reiciendis voluptatem. Labore harum atque sequi est.', 'https://lorempixel.com/640/480/?83527', 4, 'brisa.bayer@example.net', '2021-01-28 06:17:07', '$2y$10$IjP2skmfVicCaa0fBrYuSuOwg/CUda0PhodHdmDMUXuR0130/SwO6', '2P1qd2isIZ', '2021-01-28 06:17:14', '2021-01-28 08:12:03', 1072, 'معالج نفسي'),
(83, 'ميرال عمر السالم', '3.00', 'Praesentium atque voluptas dignissimos tenetur ut occaecati. Ut adipisci qui non temporibus vitae repellat aut. Minima sit labore ratione itaque nesciunt beatae qui.', 'https://lorempixel.com/640/480/?43899', 7, 'akeebler@example.net', '2021-01-28 06:17:08', '$2y$10$.XkdFZ86erNiLWjEy5tnmuQxhq7gg35cLgSaZ5a8AWp6hhpmi9AbG', 'IahhO2rpgL', '2021-01-28 06:17:14', '2021-01-28 08:12:03', 1084, 'معالج نفسي'),
(84, 'سهل الزامل', '5.00', 'In inventore est non error ducimus. Officia omnis doloribus autem ducimus. Nihil explicabo quos et nisi veniam nostrum.', 'https://lorempixel.com/640/480/?12070', 7, 'cordia.murray@example.net', '2021-01-28 06:17:08', '$2y$10$fYsiHrA/RusHgb7giLTQ/enqhW/C7p/nAL90pEaiNFWf28q11IsAG', '6zHWLgrKCu', '2021-01-28 06:17:14', '2021-01-28 08:12:03', 1096, 'معالج نفسي'),
(85, 'نزال عباس سامي الخضيري', '3.00', 'Occaecati consequatur molestiae velit nihil. Neque et id dolorum. Quia ea assumenda quas et porro quis similique ducimus. Ea mollitia explicabo odit minima incidunt. Quasi qui et aperiam enim.', 'https://lorempixel.com/640/480/?25380', 5, 'jaquan.roob@example.org', '2021-01-28 06:17:08', '$2y$10$L/3FCjSaySaPbXR80JXK0u4FnIea82.hqyOEPigeCfMKy1kXfvEzW', 'Zp1ywcCZpV', '2021-01-28 06:17:14', '2021-01-28 08:12:03', 1108, 'معالج نفسي'),
(86, 'مجد صادق ضرغام العتيبي', '5.00', 'Nulla dicta maxime veniam qui itaque ducimus. Sed voluptatem molestiae dolores ex dolorem veniam voluptate. Facere eos ratione exercitationem autem incidunt aut tempore.', 'https://lorempixel.com/640/480/?40021', 6, 'candida95@example.com', '2021-01-28 06:17:08', '$2y$10$14C/fV8TBHkVdD3ca3rCt.zuG4hdIoqYo3Y.SO1.TkbSqYKGnfPSu', 'L1Vm1FfraK', '2021-01-28 06:17:14', '2021-01-28 08:12:03', 1120, 'معالج نفسي'),
(87, 'فايزة ادهم العتيبي', '3.00', 'Ut quia veniam et error accusantium aliquid. Praesentium ut vero facere officia. Cumque et repellat qui qui laborum alias.', 'https://lorempixel.com/640/480/?97337', 4, 'treutel.nova@example.org', '2021-01-28 06:17:08', '$2y$10$VoRH98YBO5g3zQBZeEhSDeGSJQNaVewuVCQaGnvXYkPIl2c18alom', 'asXCM2k3nj', '2021-01-28 06:17:14', '2021-01-28 08:12:03', 1132, 'معالج نفسي'),
(88, 'الآنسة إيناس السويلم', '4.00', 'Aperiam repellendus nihil est qui hic voluptatem. Facere nihil qui id id in vel ab. Ut laborum et qui aut. Ut amet quos consectetur.', 'https://lorempixel.com/640/480/?63092', 1, 'malvina89@example.net', '2021-01-28 06:17:08', '$2y$10$/ipu/g//iYSJk/YLGOVqY.BGvQuWOVat63N6y.ptOT36jV17fHYXu', 'MW0cHHSiVb', '2021-01-28 06:17:14', '2021-01-28 08:12:03', 1144, 'معالج نفسي'),
(89, 'ألاء الفرحان', '2.00', 'Est sint expedita ut. Quasi eum atque magni veritatis rerum voluptatum cumque. Dolores harum et molestiae repudiandae doloremque earum praesentium provident.', 'https://lorempixel.com/640/480/?12980', 8, 'elza.daugherty@example.com', '2021-01-28 06:17:08', '$2y$10$KPWjVRzYnIcAoPKhZaKID.85DDPy2jtYY7.vrrzGXGvI.S2ZWg0yi', 'ByvSyYNYoC', '2021-01-28 06:17:14', '2021-01-28 08:12:03', 1156, 'معالج نفسي'),
(90, 'رنده المطرفي', '1.00', 'Repellat quis quas voluptatem. Autem est cumque nihil facere sequi et praesentium. Dolorem qui asperiores autem dicta qui excepturi. Aspernatur in cumque qui.', 'https://lorempixel.com/640/480/?31415', 1, 'lennie06@example.net', '2021-01-28 06:17:08', '$2y$10$woCpOFEWUvDHqcSg0htic.vdkP8GFgqCWOF/U2crXv0ABzdDdwd6u', 'pVlIIFLoYT', '2021-01-28 06:17:14', '2021-01-28 08:12:03', 1168, 'معالج نفسي'),
(91, 'السيدة سلام مدني', '1.00', 'Minima maxime unde dignissimos ea omnis sit voluptas. Quam magni sint voluptatem enim. Animi rem saepe magnam est ut placeat ipsam. Dolorem id incidunt quia aspernatur.', 'https://lorempixel.com/640/480/?30434', 6, 'myra.orn@example.net', '2021-01-28 06:17:08', '$2y$10$Pu68XWdf/vXFiMT9K5tSzefMgJXc9Tjxl1JBAh.4gNilD5DwkVUNC', '4Dg9Wldx3s', '2021-01-28 06:17:14', '2021-01-28 08:12:03', 1180, 'معالج نفسي'),
(92, 'صادق مراد الراجحي', '2.00', 'Qui iusto unde dolores minima. Similique tempore sequi at ut quo aut. Et molestiae fugit ratione. Repudiandae commodi in eaque et beatae.', 'https://lorempixel.com/640/480/?90204', 7, 'kbergstrom@example.com', '2021-01-28 06:17:09', '$2y$10$W/mso1sfP7XqM8iIqrJ1r.lrYEGSi/yPP9WOberxPNVxyczV4uGVi', '6Ulsab5nJV', '2021-01-28 06:17:14', '2021-01-28 08:12:03', 1192, 'معالج نفسي'),
(93, 'الآنسة نوران جواهرجي', '3.00', 'Facilis non temporibus quidem dolor. Sit aut quisquam quis aspernatur laborum nulla soluta. Minima sit laboriosam quia autem voluptas fuga.', 'https://lorempixel.com/640/480/?73011', 9, 'dayton17@example.net', '2021-01-28 06:17:09', '$2y$10$ZLsjxReL48.sc51QUkbJf.RZJKXxxEzWp3fLrOMc8FdMjbsx0aXlu', 'ZLrILdSlEr', '2021-01-28 06:17:14', '2021-01-28 08:12:03', 1204, 'معالج نفسي'),
(94, 'باسل يزيد مكي', '2.00', 'Laboriosam labore modi eligendi sit. Consequatur porro tempore eos omnis quis distinctio ut. Omnis numquam nulla doloremque non eligendi animi. Vel possimus tenetur quia deleniti voluptas.', 'https://lorempixel.com/640/480/?10408', 3, 'alene.turcotte@example.net', '2021-01-28 06:17:09', '$2y$10$i5TpIaSk0kql9Z4LNA/rL.23w0ogEUw8pp0v15zr2hWgh42HP/0nO', 'nhyhB0AjT8', '2021-01-28 06:17:14', '2021-01-28 08:12:03', 1216, 'معالج نفسي'),
(95, 'سما المشيقح', '1.00', 'Dignissimos sed repellendus voluptas est aut soluta velit suscipit. Tenetur perferendis voluptatem voluptatem sint repellat. Ipsam omnis officiis sequi illum nulla qui.', 'https://lorempixel.com/640/480/?38093', 7, 'orion.zemlak@example.org', '2021-01-28 06:17:09', '$2y$10$wMU3Zr6FKwfKXzITxFVCqe1deOrl3/G15ql9UdbKWVF4LWPMpEQLq', 'rb9uVsiv2H', '2021-01-28 06:17:14', '2021-01-28 08:12:03', 1228, 'معالج نفسي'),
(96, 'الدكتورة تالة الفرحان', '4.00', 'Veritatis aut cupiditate aut velit mollitia doloribus. Quo sit et quaerat repudiandae itaque ex error. Minima itaque nihil repudiandae eos.', 'https://lorempixel.com/640/480/?49128', 4, 'art06@example.net', '2021-01-28 06:17:09', '$2y$10$7b3haQdpxrDZlgoQqmKQI.Krz1cChyMpqIzEfLC9JsDdnAzfJxfyS', 'v9xLwRFJjg', '2021-01-28 06:17:14', '2021-01-28 08:12:03', 1240, 'معالج نفسي'),
(97, 'السيدة أسيل الشهيل', '5.00', 'Commodi nihil aut quae eos est. Libero ut in dolorem ratione. Facere id cum ad iure praesentium voluptatem repellat magni. Quis accusantium praesentium esse.', 'https://lorempixel.com/640/480/?34153', 8, 'king.albert@example.com', '2021-01-28 06:17:10', '$2y$10$DXomjrGybXTS7q9kE5CJ9eTPN5ojdr3y0oqaba/Swht0aYCKg7Vg2', 'IzRpBwjgTt', '2021-01-28 06:17:15', '2021-01-28 08:12:03', 1252, 'معالج نفسي'),
(98, 'بليغ مطيع السويلم', '1.00', 'Et eos in id qui. Ducimus omnis dicta eos tenetur non odit. Vel amet beatae reprehenderit est sit dolorem sint. Excepturi omnis reiciendis quidem mollitia optio qui nostrum.', 'https://lorempixel.com/640/480/?37889', 1, 'showell@example.com', '2021-01-28 06:17:10', '$2y$10$9FaiQI182JX96cJq3Kt.V.d/xTHdlUlLU532UByj1E68I9dJkhwx2', '1ojvW7T8YN', '2021-01-28 06:17:15', '2021-01-28 08:12:03', 1264, 'معالج نفسي'),
(99, 'إخلاص نبيل أكثم الداوود', '2.00', 'Quasi iusto est in ab cum earum cumque laudantium. Earum voluptas et quasi doloremque. Qui alias nihil non illo.', 'https://lorempixel.com/640/480/?90869', 1, 'kutch.floyd@example.com', '2021-01-28 06:17:10', '$2y$10$XWZBa4X9crpiZI2rPTjojuNWGXyL2r5Lzj6KlGorqZ/DT8njr1ODO', 'WeYsPVixhk', '2021-01-28 06:17:15', '2021-01-28 08:12:03', 1276, 'معالج نفسي'),
(100, 'مثنى الصامل', '4.00', 'Quod voluptatum ut aut quia. Perferendis ea assumenda corporis ut. Ratione quam aut ut sunt fugit.', 'https://lorempixel.com/640/480/?46205', 3, 'dietrich.kody@example.net', '2021-01-28 06:17:10', '$2y$10$Uv2gWvzyJa/sRhRJ7k0SveBW8UXqkEwrOjk6k6VakwBM6hxAsDa3a', 'ZuyXECOy8i', '2021-01-28 06:17:15', '2021-01-28 08:12:03', 1288, 'معالج نفسي');

-- --------------------------------------------------------

--
-- Table structure for table `user_categories`
--

CREATE TABLE `user_categories` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_categories`
--

INSERT INTO `user_categories` (`user_id`, `category_id`) VALUES
(1, 5),
(1, 3),
(2, 2),
(2, 6),
(1, 5),
(2, 5),
(3, 5),
(4, 5),
(5, 5),
(6, 5),
(7, 5),
(8, 5),
(9, 5),
(10, 5),
(11, 5),
(12, 5),
(13, 5),
(14, 5),
(15, 5),
(16, 5),
(17, 5),
(18, 5),
(19, 5),
(20, 5),
(21, 5),
(22, 5),
(23, 5),
(24, 5),
(25, 5),
(26, 5),
(27, 5),
(28, 5),
(29, 5),
(30, 5),
(31, 5),
(32, 5),
(33, 5),
(34, 5),
(35, 5),
(36, 5),
(37, 5),
(38, 5),
(39, 5),
(40, 5),
(41, 5),
(42, 5),
(43, 5),
(44, 5),
(45, 5),
(46, 5),
(47, 5),
(48, 5),
(49, 5),
(50, 5),
(51, 5),
(52, 5),
(53, 5),
(54, 5),
(55, 5),
(56, 5),
(57, 5),
(58, 5),
(59, 5),
(60, 5),
(61, 5),
(62, 5),
(63, 5),
(64, 5),
(65, 5),
(66, 5),
(67, 5),
(68, 5),
(69, 5),
(70, 5),
(71, 5),
(72, 5),
(73, 5),
(74, 5),
(75, 5),
(76, 5),
(77, 5),
(78, 5),
(79, 5),
(80, 5),
(81, 5),
(82, 5),
(83, 5),
(84, 5),
(85, 5),
(86, 5),
(87, 5),
(88, 5),
(89, 5),
(90, 5),
(91, 5),
(92, 5),
(93, 5),
(94, 5),
(95, 5),
(96, 5),
(97, 5),
(98, 5),
(99, 5),
(100, 5),
(1, 6),
(2, 6),
(3, 6),
(4, 6),
(5, 6),
(6, 6),
(7, 6),
(8, 6),
(9, 6),
(10, 6),
(11, 6),
(12, 6),
(13, 6),
(14, 6),
(15, 6),
(16, 6),
(17, 6),
(18, 6),
(19, 6),
(20, 6),
(21, 6),
(22, 6),
(23, 6),
(24, 6),
(25, 6),
(26, 6),
(27, 6),
(28, 6),
(29, 6),
(30, 6),
(31, 6),
(32, 6),
(33, 6),
(34, 6),
(35, 6),
(36, 6),
(37, 6),
(38, 6),
(39, 6),
(40, 6),
(41, 6),
(42, 6),
(43, 6),
(44, 6),
(45, 6),
(46, 6),
(47, 6),
(48, 6),
(49, 6),
(50, 6),
(51, 6),
(52, 6),
(53, 6),
(54, 6),
(55, 6),
(56, 6),
(57, 6),
(58, 6),
(59, 6),
(60, 6),
(61, 6),
(62, 6),
(63, 6),
(64, 6),
(65, 6),
(66, 6),
(67, 6),
(68, 6),
(69, 6),
(70, 6),
(71, 6),
(72, 6),
(73, 6),
(74, 6),
(75, 6),
(76, 6),
(77, 6),
(78, 6),
(79, 6),
(80, 6),
(81, 6),
(82, 6),
(83, 6),
(84, 6),
(85, 6),
(86, 6),
(87, 6),
(88, 6),
(89, 6),
(90, 6),
(91, 6),
(92, 6),
(93, 6),
(94, 6),
(95, 6),
(96, 6),
(97, 6),
(98, 6),
(99, 6),
(100, 6),
(1, 6),
(2, 6),
(3, 6),
(4, 6),
(5, 6),
(6, 6),
(7, 6),
(8, 6),
(9, 6),
(10, 6),
(11, 6),
(12, 6),
(13, 6),
(14, 6),
(15, 6),
(16, 6),
(17, 6),
(18, 6),
(19, 6),
(20, 6),
(21, 6),
(22, 6),
(23, 6),
(24, 6),
(25, 6),
(26, 6),
(27, 6),
(28, 6),
(29, 6),
(30, 6),
(31, 6),
(32, 6),
(33, 6),
(34, 6),
(35, 6),
(36, 6),
(37, 6),
(38, 6),
(39, 6),
(40, 6),
(41, 6),
(42, 6),
(43, 6),
(44, 6),
(45, 6),
(46, 6),
(47, 6),
(48, 6),
(49, 6),
(50, 6),
(51, 6),
(52, 6),
(53, 6),
(54, 6),
(55, 6),
(56, 6),
(57, 6),
(58, 6),
(59, 6),
(60, 6),
(61, 6),
(62, 6),
(63, 6),
(64, 6),
(65, 6),
(66, 6),
(67, 6),
(68, 6),
(69, 6),
(70, 6),
(71, 6),
(72, 6),
(73, 6),
(74, 6),
(75, 6),
(76, 6),
(77, 6),
(78, 6),
(79, 6),
(80, 6),
(81, 6),
(82, 6),
(83, 6),
(84, 6),
(85, 6),
(86, 6),
(87, 6),
(88, 6),
(89, 6),
(90, 6),
(91, 6),
(92, 6),
(93, 6),
(94, 6),
(95, 6),
(96, 6),
(97, 6),
(98, 6),
(99, 6),
(100, 6);

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
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_categories`
--
ALTER TABLE `user_categories`
  ADD KEY `user_categories_user_id_foreign` (`user_id`),
  ADD KEY `user_categories_category_id_foreign` (`category_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `user_categories`
--
ALTER TABLE `user_categories`
  ADD CONSTRAINT `user_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_categories_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
