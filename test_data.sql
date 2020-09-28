-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 28, 2020 at 06:19 PM
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
-- Database: `weather_dress`
--

-- --------------------------------------------------------

--
-- Table structure for table `accessories`
--

CREATE TABLE `accessories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `brand` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `accessories`
--

INSERT INTO `accessories` (`id`, `brand`, `type`, `color`, `price`) VALUES
(1, 'Tom Tailor\r\n', 'hat', 'brown\r\n', 149.99),
(2, 'Ralph Lauren\r\n', 'hat', 'purple\r\n', 9.49),
(3, 'Supreme\r\n', 'glasses', 'yellow\r\n', 99.49),
(4, 'Supreme\r\n', 'umbrella', 'blue\r\n', 79.99),
(5, 'Supreme\r\n', 'umbrella', 'yellow\r\n', 39.99),
(6, 'Nike\r\n', 'glasses', 'yellow\r\n', 39.29),
(7, 'Tom Tailor\r\n', 'glasses', 'yellow\r\n', 9.29),
(8, 'Adidas\r\n', 'glasses', 'yellow\r\n', 89.49),
(9, 'Adidas\r\n', 'glasses', 'purple\r\n', 159.29),
(10, 'Nike\r\n', 'glasses', 'red\r\n', 129.29),
(11, 'Supreme\r\n', 'umbrella', 'orange\r\n', 89.29),
(12, 'Ralph Lauren\r\n', 'hat', 'orange\r\n', 149.99),
(13, 'Nike\r\n', 'umbrella', 'gray\r\n', 69.99),
(14, 'Ralph Lauren\r\n', 'hat', 'yellow\r\n', 9.99),
(15, 'Calvin Klein\r\n', 'glasses', 'white\r\n', 139.99),
(16, 'Supreme\r\n', 'glasses', 'yellow\r\n', 129.49),
(17, 'Calvin Klein\r\n', 'umbrella', 'gray\r\n', 39.49),
(18, 'Ralph Lauren\r\n', 'glasses', 'black\r\n', 129.49),
(19, 'Tommy Hilfiger\r\n', 'glasses', 'blue\r\n', 129.29),
(20, 'Nike\r\n', 'glasses', 'white\r\n', 169.49);

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
(34, '2014_10_12_000000_create_users_table', 1),
(35, '2014_10_12_100000_create_password_resets_table', 1),
(36, '2019_08_19_000000_create_failed_jobs_table', 1),
(37, '2020_08_26_160743_create_products_table', 1),
(38, '2020_09_16_141954_create_accessories_table', 2);

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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `season` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `clothing` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `season`, `gender`, `type`, `brand`, `clothing`, `color`, `price`) VALUES
(1, 'fall/spring', 'male', 'shoes', 'Tom Tailor\r\n', 'rubber boots\r\n', 'white\r\n', 99.29),
(2, 'fall/spring', 'male', 'shoes', 'Nike\r\n', 'sneakers\r\n', 'green\r\n', 109.29),
(3, 'fall/spring', 'male', 'shoes', 'Adidas\r\n', 'rubber boots\r\n', 'purple\r\n', 89.99),
(4, 'fall/spring', 'male', 'shoes', 'Adidas\r\n', 'rubber boots\r\n', 'pink\r\n', 89.49),
(5, 'fall/spring', 'male', 'shoes', 'Levi\r\n', 'sneakers\r\n', 'blue\r\n', 179.29),
(6, 'fall/spring', 'male', 'shoes', 'Adidas\r\n', 'rubber boots\r\n', 'blue\r\n', 139.49),
(7, 'fall/spring', 'male', 'shoes', 'Supreme\r\n', 'rubber boots\r\n', 'blue\r\n', 129.99),
(8, 'fall/spring', 'male', 'shoes', 'Levi\r\n', 'rubber boots\r\n', 'blue\r\n', 189.49),
(9, 'fall/spring', 'male', 'shoes', 'Tommy Hilfiger\r\n', 'rubber boots\r\n', 'brown\r\n', 99.29),
(10, 'fall/spring', 'male', 'shoes', 'Supreme\r\n', 'rubber boots\r\n', 'red\r\n', 39.99),
(11, 'summer', 'male', 'shoes', 'Nike\r\n', 'slippers\r\n', 'brown\r\n', 49.29),
(12, 'summer', 'male', 'shoes', 'Calvin Klein\r\n', 'sandals\r\n', 'purple\r\n', 89.99),
(13, 'summer', 'male', 'shoes', 'Levi\r\n', 'sandals\r\n', 'black\r\n', 79.29),
(14, 'summer', 'male', 'shoes', 'Tom Tailor\r\n', 'slippers\r\n', 'orange\r\n', 119.99),
(15, 'summer', 'male', 'shoes', 'Calvin Klein\r\n', 'slippers\r\n', 'yellow\r\n', 189.99),
(16, 'summer', 'male', 'shoes', 'Ralph Lauren\r\n', 'slippers\r\n', 'brown\r\n', 139.99),
(17, 'summer', 'male', 'shoes', 'Tommy Hilfiger\r\n', 'sandals\r\n', 'gray\r\n', 149.29),
(18, 'summer', 'male', 'shoes', 'Nike\r\n', 'slippers\r\n', 'pink\r\n', 89.49),
(19, 'summer', 'male', 'shoes', 'Supreme\r\n', 'slippers\r\n', 'white\r\n', 119.99),
(20, 'summer', 'male', 'shoes', 'Adidas\r\n', 'flip Flops\r\n', 'white\r\n', 89.29),
(21, 'winter', 'male', 'shoes', 'Tom Tailor\r\n', 'military Shoes\r\n', 'blue\r\n', 199.99),
(22, 'winter', 'male', 'shoes', 'Calvin Klein\r\n', 'military Shoes\r\n', 'yellow\r\n', 139.29),
(23, 'winter', 'male', 'shoes', 'Calvin Klein\r\n', 'military Shoes\r\n', 'black\r\n', 179.29),
(24, 'winter', 'male', 'shoes', 'Supreme\r\n', 'military Shoes\r\n', 'green\r\n', 89.49),
(25, 'winter', 'male', 'shoes', 'Calvin Klein\r\n', 'Leather Boots\r\n', 'purple\r\n', 139.99),
(26, 'winter', 'male', 'shoes', 'Adidas\r\n', 'military Shoes\r\n', 'blue\r\n', 199.49),
(27, 'winter', 'male', 'shoes', 'Tom Tailor\r\n', 'military Shoes\r\n', 'orange\r\n', 149.99),
(28, 'winter', 'male', 'shoes', 'Nike\r\n', 'Leather Boots\r\n', 'purple\r\n', 139.29),
(29, 'winter', 'male', 'shoes', 'Calvin Klein\r\n', 'Leather Boots\r\n', 'pink\r\n', 169.29),
(30, 'winter', 'male', 'shoes', 'Tom Tailor\r\n', 'military Shoes\r\n', 'gray\r\n', 19.29),
(31, 'winter', 'male', 'legs_clothing', 'Tommy Hilfiger\r\n', 'pants\r\n', 'pink\r\n', 9.29),
(32, 'winter', 'male', 'legs_clothing', 'Tom Tailor\r\n', 'trousers\r\n', 'purple\r\n', 139.99),
(33, 'winter', 'male', 'legs_clothing', 'Adidas\r\n', 'pants\r\n', 'gray\r\n', 109.99),
(34, 'winter', 'male', 'legs_clothing', 'Tom Tailor\r\n', 'jeans\r\n', 'purple\r\n', 89.99),
(35, 'winter', 'male', 'legs_clothing', 'Tommy Hilfiger\r\n', 'jeans\r\n', 'white\r\n', 149.29),
(36, 'winter', 'male', 'legs_clothing', 'Nike\r\n', 'jeans\r\n', 'orange\r\n', 19.99),
(37, 'winter', 'male', 'legs_clothing', 'Ralph Lauren\r\n', 'trousers\r\n', 'brown\r\n', 79.49),
(38, 'winter', 'male', 'legs_clothing', 'Adidas\r\n', 'trousers\r\n', 'green\r\n', 199.49),
(39, 'winter', 'male', 'legs_clothing', 'Supreme\r\n', 'trousers\r\n', 'green\r\n', 69.49),
(40, 'winter', 'male', 'legs_clothing', 'Adidas\r\n', 'jeans\r\n', 'black\r\n', 39.49),
(41, 'summer', 'male', 'legs_clothing', 'Adidas\r\n', 'bathing shorts\r\n', 'pink\r\n', 139.49),
(42, 'summer', 'male', 'legs_clothing', 'Tom Tailor\r\n', 'bathing shorts\r\n', 'black\r\n', 49.29),
(43, 'summer', 'male', 'legs_clothing', 'Tommy Hilfiger\r\n', 'bathing shorts\r\n', 'pink\r\n', 69.49),
(44, 'summer', 'male', 'legs_clothing', 'Calvin Klein\r\n', 'bathing shorts\r\n', 'red\r\n', 169.99),
(45, 'summer', 'male', 'legs_clothing', 'Adidas\r\n', 'shorts\r\n', 'black\r\n', 59.99),
(46, 'summer', 'male', 'legs_clothing', 'Adidas\r\n', 'shorts\r\n', 'green\r\n', 149.99),
(47, 'summer', 'male', 'legs_clothing', 'Levi\r\n', 'bathing shorts\r\n', 'red\r\n', 159.99),
(48, 'summer', 'male', 'legs_clothing', 'Levi\r\n', 'bathing shorts\r\n', 'orange\r\n', 139.49),
(49, 'summer', 'male', 'legs_clothing', 'Adidas\r\n', 'bathing shorts\r\n', 'orange\r\n', 119.49),
(50, 'summer', 'male', 'legs_clothing', 'Calvin Klein\r\n', 'shorts\r\n', 'black\r\n', 139.49),
(51, 'fall/spring', 'male', 'legs_clothing', 'Tommy Hilfiger\r\n', 'pants\r\n', 'black\r\n', 79.29),
(52, 'fall/spring', 'male', 'legs_clothing', 'Adidas\r\n', 'jeans\r\n', 'red\r\n', 79.99),
(53, 'fall/spring', 'male', 'legs_clothing', 'Tom Tailor\r\n', 'trousers\r\n', 'black\r\n', 49.49),
(54, 'fall/spring', 'male', 'legs_clothing', 'Ralph Lauren\r\n', 'pants\r\n', 'green\r\n', 69.49),
(55, 'fall/spring', 'male', 'legs_clothing', 'Levi\r\n', 'trousers\r\n', 'brown\r\n', 109.99),
(56, 'fall/spring', 'male', 'legs_clothing', 'Ralph Lauren\r\n', 'jeans\r\n', 'purple\r\n', 149.99),
(57, 'fall/spring', 'male', 'legs_clothing', 'Ralph Lauren\r\n', 'trousers\r\n', 'blue\r\n', 89.29),
(58, 'fall/spring', 'male', 'legs_clothing', 'Calvin Klein\r\n', 'jeans\r\n', 'purple\r\n', 99.49),
(59, 'fall/spring', 'male', 'legs_clothing', 'Adidas\r\n', 'jeans\r\n', 'brown\r\n', 179.49),
(60, 'fall/spring', 'male', 'legs_clothing', 'Tom Tailor\r\n', 'trousers\r\n', 'purple\r\n', 179.49),
(61, 'fall/spring', 'male', 'top_clothing', 'Calvin Klein\r\n', 'hoodie\r\n', 'purple\r\n', 149.99),
(62, 'fall/spring', 'male', 'top_clothing', 'Tom Tailor\r\n', 'hoodie\r\n', 'pink\r\n', 49.29),
(63, 'fall/spring', 'male', 'top_clothing', 'Supreme\r\n', 'jumper\r\n', 'white\r\n', 189.29),
(64, 'fall/spring', 'male', 'top_clothing', 'Nike\r\n', 'shirt\r\n', 'black\r\n', 49.29),
(65, 'fall/spring', 'male', 'top_clothing', 'Ralph Lauren\r\n', 'sweater\r\n', 'brown\r\n', 179.99),
(66, 'fall/spring', 'male', 'top_clothing', 'Supreme\r\n', 'sweater\r\n', 'black\r\n', 29.29),
(67, 'fall/spring', 'male', 'top_clothing', 'Adidas\r\n', 'hoodie\r\n', 'green\r\n', 129.99),
(68, 'fall/spring', 'male', 'top_clothing', 'Levi\r\n', 'hoodie\r\n', 'green\r\n', 49.29),
(69, 'fall/spring', 'male', 'top_clothing', 'Ralph Lauren\r\n', 'sweater\r\n', 'red\r\n', 169.99),
(70, 'fall/spring', 'male', 'top_clothing', 'Tommy Hilfiger\r\n', 'jumper\r\n', 'blue\r\n', 129.29),
(71, 'summer', 'male', 'top_clothing', 'Adidas\r\n', 't-shirt\r\n', 'blue\r\n', 39.29),
(72, 'summer', 'male', 'top_clothing', 'Tom Tailor\r\n', 't-shirt\r\n', 'purple\r\n', 39.29),
(73, 'summer', 'male', 'top_clothing', 'Adidas\r\n', 'polo\r\n', 'green\r\n', 119.99),
(74, 'summer', 'male', 'top_clothing', 'Supreme\r\n', 't-shirt\r\n', 'white\r\n', 9.49),
(75, 'summer', 'male', 'top_clothing', 'Nike\r\n', 't-shirt\r\n', 'yellow\r\n', 189.49),
(76, 'summer', 'male', 'top_clothing', 'Adidas\r\n', 't-shirt\r\n', 'purple\r\n', 109.29),
(77, 'summer', 'male', 'top_clothing', 'Adidas\r\n', 't-shirt\r\n', 'green\r\n', 119.29),
(78, 'summer', 'male', 'top_clothing', 'Levi\r\n', 't-shirt\r\n', 'brown\r\n', 119.99),
(79, 'summer', 'male', 'top_clothing', 'Levi\r\n', 'polo\r\n', 'purple\r\n', 169.49),
(80, 'summer', 'male', 'top_clothing', 'Adidas\r\n', 'polo\r\n', 'pink\r\n', 129.29),
(81, 'winter', 'male', 'top_clothing', 'Nike\r\n', 'coat\r\n', 'yellow\r\n', 59.49),
(82, 'winter', 'male', 'top_clothing', 'Calvin Klein\r\n', 'coat\r\n', 'green\r\n', 99.49),
(83, 'winter', 'male', 'top_clothing', 'Levi\r\n', 'jacket\r\n', 'red\r\n', 129.49),
(84, 'winter', 'male', 'top_clothing', 'Nike\r\n', 'coat\r\n', 'yellow\r\n', 69.99),
(85, 'winter', 'male', 'top_clothing', 'Supreme\r\n', 'coat\r\n', 'orange\r\n', 169.99),
(86, 'winter', 'male', 'top_clothing', 'Tom Tailor\r\n', 'jacket\r\n', 'yellow\r\n', 59.99),
(87, 'winter', 'male', 'top_clothing', 'Levi\r\n', 'jacket\r\n', 'red\r\n', 189.49),
(88, 'winter', 'male', 'top_clothing', 'Levi\r\n', 'jacket\r\n', 'red\r\n', 139.29),
(89, 'winter', 'male', 'top_clothing', 'Supreme\r\n', 'coat\r\n', 'white\r\n', 109.29),
(90, 'winter', 'male', 'top_clothing', 'Calvin Klein\r\n', 'jacket\r\n', 'brown\r\n', 59.99),
(91, 'winter', 'female', 'top_clothing', 'Burberry\r\n', 'Polished Blazer\r\n', 'green\r\n', 39.29),
(92, 'winter', 'female', 'top_clothing', 'Zara\r\n', 'Polished Blazer\r\n', 'white\r\n', 49.99),
(93, 'winter', 'female', 'top_clothing', 'Hermes\r\n', 'Polished Blazer\r\n', 'red\r\n', 49.29),
(94, 'winter', 'female', 'top_clothing', 'Chanel\r\n', 'Wool Coat\r\n', 'pink\r\n', 119.99),
(95, 'winter', 'female', 'top_clothing', 'H&M\r\n', 'Wool Coat\r\n', 'black\r\n', 59.49),
(96, 'winter', 'female', 'top_clothing', 'Prada\r\n', 'Polished Blazer\r\n', 'yellow\r\n', 79.49),
(97, 'winter', 'female', 'top_clothing', 'H&M\r\n', 'Sweater\r\n', 'blue\r\n', 139.99),
(98, 'winter', 'female', 'top_clothing', 'Hermes\r\n', 'Sweater\r\n', 'blue\r\n', 79.29),
(99, 'winter', 'female', 'top_clothing', 'Burberry\r\n', 'Wool Coat\r\n', 'brown\r\n', 69.29),
(100, 'winter', 'female', 'top_clothing', 'Gucci\r\n', 'Wool Coat\r\n', 'yellow\r\n', 29.29),
(101, 'fall/spring', 'female', 'top_clothing', 'Prada\r\n', 'Tunic Top\r\n', 'orange\r\n', 49.49),
(102, 'fall/spring', 'female', 'top_clothing', 'H&M\r\n', 'Longline Top\r\n', 'purple\r\n', 9.49),
(103, 'fall/spring', 'female', 'top_clothing', 'Zara\r\n', 'Tunic Top\r\n', 'purple\r\n', 9.99),
(104, 'fall/spring', 'female', 'top_clothing', 'Gucci\r\n', 'High Low Top\r\n', 'black\r\n', 119.99),
(105, 'fall/spring', 'female', 'top_clothing', 'Gucci\r\n', 'Wrap Top\r\n', 'blue\r\n', 189.29),
(106, 'fall/spring', 'female', 'top_clothing', 'Burberry\r\n', 'Longline Top\r\n', 'yellow\r\n', 99.29),
(107, 'fall/spring', 'female', 'top_clothing', 'Hermes\r\n', 'Wrap Top\r\n', 'pink\r\n', 49.29),
(108, 'fall/spring', 'female', 'top_clothing', 'Armani\r\n', 'High Low Top\r\n', 'black\r\n', 129.29),
(109, 'fall/spring', 'female', 'top_clothing', 'Chanel\r\n', 'High Low Top\r\n', 'gray\r\n', 149.49),
(110, 'fall/spring', 'female', 'top_clothing', 'Prada\r\n', 'High Low Top\r\n', 'purple\r\n', 149.99),
(111, 'summer', 'female', 'top_clothing', 'Gucci\r\n', 'Blouse\r\n', 'black\r\n', 29.29),
(112, 'summer', 'female', 'top_clothing', 'H&M\r\n', 'Crop Top\r\n', 'pink\r\n', 119.99),
(113, 'summer', 'female', 'top_clothing', 'Fendi\r\n', 'Blouse\r\n', 'purple\r\n', 109.49),
(114, 'summer', 'female', 'top_clothing', 'Prada\r\n', 'Tube Top\r\n', 'red\r\n', 119.29),
(115, 'summer', 'female', 'top_clothing', 'Prada\r\n', 'Tank Top\r\n', 'white\r\n', 9.99),
(116, 'summer', 'female', 'top_clothing', 'Hermes\r\n', 'Blouse\r\n', 'green\r\n', 189.29),
(117, 'summer', 'female', 'top_clothing', 'Armani\r\n', 'Tube Top\r\n', 'black\r\n', 139.99),
(118, 'summer', 'female', 'top_clothing', 'Hermes\r\n', 'Tube Top\r\n', 'blue\r\n', 139.29),
(119, 'summer', 'female', 'top_clothing', 'Chanel\r\n', 'Blouse\r\n', 'purple\r\n', 39.49),
(120, 'summer', 'female', 'top_clothing', 'Burberry\r\n', 'Crop Top\r\n', 'black\r\n', 159.99),
(121, 'summer', 'female', 'legs_clothing', 'Versace\r\n', 'jeans shorts\r\n', 'yellow\r\n', 59.49),
(122, 'summer', 'female', 'legs_clothing', 'Hermes\r\n', 'shorts\r\n', 'gray\r\n', 159.99),
(123, 'summer', 'female', 'legs_clothing', 'Burberry\r\n', 'skirt\r\n', 'pink\r\n', 159.99),
(124, 'summer', 'female', 'legs_clothing', 'H&M\r\n', 'skirt\r\n', 'yellow\r\n', 79.99),
(125, 'summer', 'female', 'legs_clothing', 'H&M\r\n', 'jeans shorts\r\n', 'orange\r\n', 89.99),
(126, 'summer', 'female', 'legs_clothing', 'Gucci\r\n', 'shorts\r\n', 'brown\r\n', 19.49),
(127, 'summer', 'female', 'legs_clothing', 'Hermes\r\n', 'skirt\r\n', 'gray\r\n', 139.99),
(128, 'summer', 'female', 'legs_clothing', 'Gucci\r\n', 'jeans shorts\r\n', 'gray\r\n', 19.29),
(129, 'summer', 'female', 'legs_clothing', 'Chanel\r\n', 'jeans shorts\r\n', 'purple\r\n', 199.99),
(130, 'summer', 'female', 'legs_clothing', 'Versace\r\n', 'jeans shorts\r\n', 'black\r\n', 149.49),
(131, 'fall/spring', 'female', 'legs_clothing', 'Gucci\r\n', 'pants\r\n', 'gray\r\n', 179.29),
(132, 'fall/spring', 'female', 'legs_clothing', 'Fendi\r\n', 'jeans\r\n', 'black\r\n', 109.29),
(133, 'fall/spring', 'female', 'legs_clothing', 'Fendi\r\n', 'Leggings\r\n', 'orange\r\n', 29.49),
(134, 'fall/spring', 'female', 'legs_clothing', 'Prada\r\n', 'trousers\r\n', 'green\r\n', 179.29),
(135, 'fall/spring', 'female', 'legs_clothing', 'Hermes\r\n', 'pants\r\n', 'black\r\n', 9.99),
(136, 'fall/spring', 'female', 'legs_clothing', 'Burberry\r\n', 'trousers\r\n', 'white\r\n', 139.29),
(137, 'fall/spring', 'female', 'legs_clothing', 'Burberry\r\n', 'pants\r\n', 'purple\r\n', 129.99),
(138, 'fall/spring', 'female', 'legs_clothing', 'Burberry\r\n', 'Leggings\r\n', 'orange\r\n', 179.49),
(139, 'fall/spring', 'female', 'legs_clothing', 'Gucci\r\n', 'pants\r\n', 'purple\r\n', 129.49),
(140, 'fall/spring', 'female', 'legs_clothing', 'Versace\r\n', 'trousers\r\n', 'black\r\n', 109.29),
(141, 'winter', 'female', 'legs_clothing', 'Chanel\r\n', 'skirt & stockings\r\n', 'white\r\n', 189.49),
(142, 'winter', 'female', 'legs_clothing', 'Versace\r\n', 'jeans\r\n', 'yellow\r\n', 169.29),
(143, 'winter', 'female', 'legs_clothing', 'Fendi\r\n', 'pants\r\n', 'black\r\n', 139.29),
(144, 'winter', 'female', 'legs_clothing', 'H&M\r\n', 'Leggings\r\n', 'orange\r\n', 189.49),
(145, 'winter', 'female', 'legs_clothing', 'Chanel\r\n', 'skirt & stockings\r\n', 'yellow\r\n', 89.49),
(146, 'winter', 'female', 'legs_clothing', 'Armani\r\n', 'pants\r\n', 'yellow\r\n', 139.49),
(147, 'winter', 'female', 'legs_clothing', 'Chanel\r\n', 'jeans\r\n', 'orange\r\n', 59.29),
(148, 'winter', 'female', 'legs_clothing', 'H&M\r\n', 'pants\r\n', 'orange\r\n', 189.99),
(149, 'winter', 'female', 'legs_clothing', 'Gucci\r\n', 'Leggings\r\n', 'red\r\n', 189.99),
(150, 'winter', 'female', 'legs_clothing', 'Versace\r\n', 'Leggings\r\n', 'yellow\r\n', 179.29),
(151, 'winter', 'female', 'shoes', 'Hermes\r\n', 'Ankle Boots\r\n', 'red\r\n', 79.29),
(152, 'winter', 'female', 'shoes', 'H&M\r\n', 'Ankle Boots\r\n', 'gray\r\n', 169.29),
(153, 'winter', 'female', 'shoes', 'Versace\r\n', 'Ankle Boots\r\n', 'purple\r\n', 39.29),
(154, 'winter', 'female', 'shoes', 'Burberry\r\n', 'Military Boots\r\n', 'green\r\n', 29.99),
(155, 'winter', 'female', 'shoes', 'Prada\r\n', 'Chelsea Boots\r\n', 'blue\r\n', 69.49),
(156, 'winter', 'female', 'shoes', 'Chanel\r\n', 'Chelsea Boots\r\n', 'red\r\n', 79.49),
(157, 'winter', 'female', 'shoes', 'H&M\r\n', 'Chelsea Boots\r\n', 'orange\r\n', 189.29),
(158, 'winter', 'female', 'shoes', 'Prada\r\n', 'Calf Boots\r\n', 'green\r\n', 149.29),
(159, 'winter', 'female', 'shoes', 'Gucci\r\n', 'Chelsea Boots\r\n', 'brown\r\n', 199.29),
(160, 'winter', 'female', 'shoes', 'Fendi\r\n', 'Military Boots\r\n', 'red\r\n', 179.99),
(161, 'summer', 'female', 'shoes', 'Armani\r\n', 'Mules\r\n', 'yellow\r\n', 9.99),
(162, 'summer', 'female', 'shoes', 'Prada\r\n', 'Mules\r\n', 'yellow\r\n', 79.49),
(163, 'summer', 'female', 'shoes', 'H&M\r\n', 'Flip Flops\r\n', 'brown\r\n', 119.49),
(164, 'summer', 'female', 'shoes', 'Burberry\r\n', 'Mules\r\n', 'pink\r\n', 149.99),
(165, 'summer', 'female', 'shoes', 'Chanel\r\n', 'Wedges\r\n', 'gray\r\n', 19.99),
(166, 'summer', 'female', 'shoes', 'Armani\r\n', 'Wedges\r\n', 'pink\r\n', 109.29),
(167, 'summer', 'female', 'shoes', 'Versace\r\n', 'Ballerinas\r\n', 'brown\r\n', -0.51),
(168, 'summer', 'female', 'shoes', 'Fendi\r\n', 'Ballerinas\r\n', 'green\r\n', 99.99),
(169, 'summer', 'female', 'shoes', 'Chanel\r\n', 'Wedges\r\n', 'green\r\n', 79.99),
(170, 'summer', 'female', 'shoes', 'Zara\r\n', 'Wedges\r\n', 'purple\r\n', 189.49),
(171, 'fall/spring', 'female', 'shoes', 'Burberry\r\n', 'Trainers\r\n', 'blue\r\n', 69.49),
(172, 'fall/spring', 'female', 'shoes', 'Gucci\r\n', 'Heels\r\n', 'black\r\n', 49.49),
(173, 'fall/spring', 'female', 'shoes', 'Armani\r\n', 'Canvas Shoes\r\n', 'yellow\r\n', 9.49),
(174, 'fall/spring', 'female', 'shoes', 'Chanel\r\n', 'Canvas Shoes\r\n', 'green\r\n', 79.49),
(175, 'fall/spring', 'female', 'shoes', 'Burberry\r\n', 'Brogues\r\n', 'red\r\n', 149.29),
(176, 'fall/spring', 'female', 'shoes', 'Prada\r\n', 'Canvas Shoes\r\n', 'red\r\n', 189.29),
(177, 'fall/spring', 'female', 'shoes', 'Versace\r\n', 'Brogues\r\n', 'green\r\n', 59.29),
(178, 'fall/spring', 'female', 'shoes', 'Chanel\r\n', 'Canvas Shoes\r\n', 'brown\r\n', 69.29),
(179, 'fall/spring', 'female', 'shoes', 'Burberry\r\n', 'Trainers\r\n', 'black\r\n', 79.49),
(180, 'fall/spring', 'female', 'shoes', 'Hermes\r\n', 'Trainers\r\n', 'blue\r\n', 19.99);

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
-- Indexes for dumped tables
--

--
-- Indexes for table `accessories`
--
ALTER TABLE `accessories`
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
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
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
-- AUTO_INCREMENT for table `accessories`
--
ALTER TABLE `accessories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=181;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
