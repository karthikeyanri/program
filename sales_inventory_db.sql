-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 16, 2021 at 01:24 AM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sales_inventory_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `category_list`
--

DROP TABLE IF EXISTS `category_list`;
CREATE TABLE IF NOT EXISTS `category_list` (
  `id` int(30) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category_list`
--

INSERT INTO `category_list` (`id`, `name`) VALUES
(1, 'Can Goods'),
(2, 'Shampoo'),
(3, 'Hygiene'),
(4, 'Snacks'),
(5, 'Drinks');

-- --------------------------------------------------------

--
-- Table structure for table `customer_list`
--

DROP TABLE IF EXISTS `customer_list`;
CREATE TABLE IF NOT EXISTS `customer_list` (
  `id` int(30) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `contact` varchar(30) NOT NULL,
  `address` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer_list`
--

INSERT INTO `customer_list` (`id`, `name`, `contact`, `address`) VALUES
(3, 'karthikeyan', '9360113974', 'sample only'),
(4, 'vijay kumar', '7354493615', 'sample only'),
(5, 'parama', '7241196354', 'sample only'),
(6, 'Kannan A C', '7532148965', 'sample');

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

DROP TABLE IF EXISTS `inventory`;
CREATE TABLE IF NOT EXISTS `inventory` (
  `id` int(30) NOT NULL AUTO_INCREMENT,
  `product_id` int(30) NOT NULL,
  `qty` int(30) NOT NULL,
  `type` tinyint(1) NOT NULL COMMENT '1= stockin , 2 = stockout',
  `stock_from` varchar(100) NOT NULL COMMENT 'sales/receiving',
  `form_id` int(30) NOT NULL,
  `other_details` text NOT NULL,
  `remarks` text NOT NULL,
  `date_updated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`id`, `product_id`, `qty`, `type`, `stock_from`, `form_id`, `other_details`, `remarks`, `date_updated`) VALUES
(18, 1, 2, 2, 'Sales', 0, '{\"price\":\"75\",\"qty\":\"2\"}', 'Stock out from Sales-00000000\r\n', '2020-09-22 15:19:22'),
(19, 1, 2, 2, 'Sales', 0, '{\"price\":\"75\",\"qty\":\"2\"}', 'Stock out from Sales-00000000\r\n', '2020-09-22 15:20:03'),
(31, 1, 100, 1, 'receiving', 4, '{\"price\":\"50\",\"qty\":\"100\"}', 'Stock from Receiving-00000000\n', '2021-10-28 10:20:23'),
(32, 4, 100, 1, 'receiving', 4, '{\"price\":\"10\",\"qty\":\"100\"}', 'Stock from Receiving-00000000\n', '2021-10-28 10:20:23'),
(33, 3, 100, 1, 'receiving', 4, '{\"price\":\"15\",\"qty\":\"100\"}', 'Stock from Receiving-00000000\n', '2021-10-28 10:20:23'),
(34, 6, 100, 1, 'receiving', 4, '{\"price\":\"40\",\"qty\":\"100\"}', 'Stock from Receiving-00000000\n', '2021-10-28 10:20:23'),
(35, 5, 100, 1, 'receiving', 4, '{\"price\":\"50\",\"qty\":\"100\"}', 'Stock from Receiving-00000000\n', '2021-10-28 10:20:23'),
(36, 1, 2, 2, 'Sales', 9, '{\"price\":\"75\",\"qty\":\"2\"}', 'Stock out from Sales-00000000\n', '2021-10-28 10:21:48'),
(37, 4, 10, 2, 'Sales', 9, '{\"price\":\"10\",\"qty\":\"10\"}', 'Stock out from Sales-00000000\n', '2021-10-28 10:21:48'),
(38, 4, 5, 2, 'Sales', 10, '{\"price\":\"10\",\"qty\":\"5\"}', 'Stock out from Sales-71280659\n', '2021-10-29 10:32:08'),
(39, 3, 2, 2, 'Sales', 10, '{\"price\":\"30\",\"qty\":\"2\"}', 'Stock out from Sales-71280659\n', '2021-10-29 10:32:08'),
(40, 6, 5, 2, 'Sales', 10, '{\"price\":\"42\",\"qty\":\"5\"}', 'Stock out from Sales-71280659\n', '2021-10-29 10:32:08'),
(41, 1, 4, 2, 'Sales', 11, '{\"price\":\"75\",\"qty\":\"4\"}', 'Stock out from Sales-82957131\n', '2021-10-29 10:33:34'),
(42, 8, 100, 1, 'receiving', 5, '{\"price\":\"40\",\"qty\":\"100\"}', 'Stock from Receiving-17229212\n', '2021-10-29 10:36:30'),
(43, 8, 10, 2, 'Sales', 12, '{\"price\":\"40\",\"qty\":\"10\"}', 'Stock out from Sales-98385500\n', '2021-10-29 10:36:55'),
(44, 4, 5, 2, 'Sales', 13, '{\"price\":\"10\",\"qty\":\"5\"}', 'Stock out from Sales-55911593\n', '2021-10-29 10:46:49'),
(45, 8, 5, 2, 'Sales', 13, '{\"price\":\"40\",\"qty\":\"5\"}', 'Stock out from Sales-55911593\n', '2021-10-29 10:46:49'),
(46, 4, 1, 2, 'Sales', 14, '{\"price\":\"10\",\"qty\":\"1\"}', 'Stock out from Sales-57598615\n', '2021-10-29 11:04:11'),
(47, 1, 1, 2, 'Sales', 14, '{\"price\":\"75\",\"qty\":\"1\"}', 'Stock out from Sales-57598615\n', '2021-10-29 11:04:11'),
(48, 8, 1, 1, 'receiving', 6, '{\"price\":\"40\",\"qty\":\"1\"}', 'Stock from Receiving-19808025\n', '2021-10-29 11:16:01'),
(49, 4, 1, 2, 'Sales', 15, '{\"price\":\"10\",\"qty\":\"1\"}', 'Stock out from Sales-60441601\n', '2021-11-01 09:00:17'),
(50, 4, 1, 2, 'Sales', 16, '{\"price\":\"10\",\"qty\":\"1\"}', 'Stock out from Sales-96819872\n', '2021-11-01 13:56:05'),
(51, 8, 2, 2, 'Sales', 16, '{\"price\":\"40\",\"qty\":\"2\"}', 'Stock out from Sales-96819872\n', '2021-11-01 13:56:05'),
(53, 4, 10, 1, 'receiving', 9, '{\"price\":\"10\",\"qty\":\"10\"}', 'Stock from Receiving-25698529\n', '2021-11-01 15:56:41'),
(54, 8, 10, 1, 'receiving', 9, '{\"price\":\"10\",\"qty\":\"10\"}', 'Stock from Receiving-25698529\n', '2021-11-01 15:56:41'),
(55, 3, 100, 1, 'receiving', 10, '{\"price\":\"15\",\"qty\":\"100\"}', 'Stock from Receiving-74888058\n', '2021-11-08 12:23:05'),
(56, 10, 10, 1, 'receiving', 11, '{\"price\":\"18\",\"qty\":\"10\"}', 'Stock from Receiving-15422919\n', '2021-11-08 12:23:52'),
(57, 10, 10, 2, 'Sales', 17, '{\"price\":\"50\",\"qty\":\"10\"}', 'Stock out from Sales-50993622\n', '2021-11-08 12:24:44'),
(58, 10, 10, 1, 'receiving', 12, '{\"price\":\"30\",\"qty\":\"10\"}', 'Stock from Receiving-59795589\n', '2021-11-08 12:31:40');

-- --------------------------------------------------------

--
-- Table structure for table `product_list`
--

DROP TABLE IF EXISTS `product_list`;
CREATE TABLE IF NOT EXISTS `product_list` (
  `id` int(30) NOT NULL AUTO_INCREMENT,
  `category_id` int(30) NOT NULL,
  `sku` varchar(50) NOT NULL,
  `price` double NOT NULL,
  `name` varchar(150) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_list`
--

INSERT INTO `product_list` (`id`, `category_id`, `sku`, `price`, `name`, `description`) VALUES
(3, 5, '91643291', 30, 'Lemon Iced Tea', 'Lemon Iced Tea 350ml'),
(4, 4, '11762968', 10, 'Chips (big)', 'Big Chip'),
(5, 1, '74628529', 25, 'Tuna', 'Tuna'),
(6, 1, '213546465', 42, 'sugar can', 'simply waste'),
(8, 5, '31647559', 40, 'cocola', '1 liter'),
(10, 5, '46926021', 50, 'milk', 'kaka');

-- --------------------------------------------------------

--
-- Table structure for table `receiving_list`
--

DROP TABLE IF EXISTS `receiving_list`;
CREATE TABLE IF NOT EXISTS `receiving_list` (
  `id` int(30) NOT NULL AUTO_INCREMENT,
  `ref_no` varchar(100) NOT NULL,
  `supplier_id` int(30) NOT NULL,
  `total_amount` double NOT NULL,
  `date_added` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `receiving_list`
--

INSERT INTO `receiving_list` (`id`, `ref_no`, `supplier_id`, `total_amount`, `date_added`) VALUES
(4, '00000000\n', 4, 16500, '2021-10-28 10:20:23'),
(5, '17229212\n', 4, 4000, '2021-10-29 10:36:30'),
(6, '19808025\n', 4, 40, '2021-10-29 11:16:01'),
(9, '25698529\n', 4, 200, '2021-11-01 15:56:41'),
(10, '74888058\n', 4, 1500, '2021-11-08 12:23:05'),
(11, '15422919\n', 23, 180, '2021-11-08 12:23:52'),
(12, '59795589\n', 4, 300, '2021-11-08 12:31:40');

-- --------------------------------------------------------

--
-- Table structure for table `sales_list`
--

DROP TABLE IF EXISTS `sales_list`;
CREATE TABLE IF NOT EXISTS `sales_list` (
  `id` int(30) NOT NULL AUTO_INCREMENT,
  `ref_no` varchar(30) NOT NULL,
  `customer_id` int(30) NOT NULL,
  `total_amount` double NOT NULL,
  `amount_tendered` double NOT NULL,
  `amount_change` double NOT NULL,
  `date_updated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sales_list`
--

INSERT INTO `sales_list` (`id`, `ref_no`, `customer_id`, `total_amount`, `amount_tendered`, `amount_change`, `date_updated`) VALUES
(9, '00000000\n', 5, 250, 300, 50, '2021-10-28 10:21:48'),
(10, '71280659\n', 5, 320, 500, 180, '2021-10-29 10:32:08'),
(11, '82957131\n', 0, 300, 300, 0, '2021-10-29 10:33:34'),
(12, '98385500\n', 3, 400, 500, 100, '2021-10-29 10:36:55'),
(13, '55911593\n', 5, 250, 500, 250, '2021-10-29 10:46:49'),
(14, '57598615\n', 3, 85, 100, 15, '2021-10-29 11:04:11'),
(15, '60441601\n', 0, 10, 100, 90, '2021-11-01 09:00:17'),
(16, '96819872\n', 6, 90, 100, 10, '2021-11-01 13:56:05'),
(17, '50993622\n', 3, 500, 2000, 1500, '2021-11-08 12:24:44');

-- --------------------------------------------------------

--
-- Table structure for table `supplier_list`
--

DROP TABLE IF EXISTS `supplier_list`;
CREATE TABLE IF NOT EXISTS `supplier_list` (
  `id` int(30) NOT NULL AUTO_INCREMENT,
  `supplier_name` varchar(50) NOT NULL,
  `contact` bigint(10) NOT NULL,
  `address` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `supplier_list`
--

INSERT INTO `supplier_list` (`id`, `supplier_name`, `contact`, `address`) VALUES
(4, 'vikey', 6383108944, 'cinimala'),
(23, 'karthikeyan', 8973544936, 'sdwclnkeav');

-- --------------------------------------------------------

--
-- Table structure for table `system_settings`
--

DROP TABLE IF EXISTS `system_settings`;
CREATE TABLE IF NOT EXISTS `system_settings` (
  `id` int(30) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `email` varchar(200) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `cover_img` text NOT NULL,
  `about_content` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `system_settings`
--

INSERT INTO `system_settings` (`id`, `name`, `email`, `contact`, `cover_img`, `about_content`) VALUES
(1, 'Online Food Ordering System', 'info@sample.com', '+6948 8542 623', '1600654680_photo-1504674900247-0877df9cc836.jpg', '&lt;p style=&quot;text-align: center; background: transparent; position: relative;&quot;&gt;&lt;span style=&quot;font-size:28px;background: transparent; position: relative;&quot;&gt;ABOUT US&lt;/span&gt;&lt;/b&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align: center; background: transparent; position: relative;&quot;&gt;&lt;span style=&quot;background: transparent; position: relative; font-size: 14px;&quot;&gt;&lt;span style=&quot;font-size:28px;background: transparent; position: relative;&quot;&gt;&lt;b style=&quot;margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; text-align: justify;&quot;&gt;Lorem Ipsum&lt;/b&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-weight: 400; text-align: justify;&quot;&gt;&amp;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&amp;#x2019;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&lt;/span&gt;&lt;br&gt;&lt;/span&gt;&lt;/b&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align: center; background: transparent; position: relative;&quot;&gt;&lt;span style=&quot;background: transparent; position: relative; font-size: 14px;&quot;&gt;&lt;span style=&quot;font-size:28px;background: transparent; position: relative;&quot;&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-weight: 400; text-align: justify;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/b&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align: center; background: transparent; position: relative;&quot;&gt;&lt;span style=&quot;background: transparent; position: relative; font-size: 14px;&quot;&gt;&lt;span style=&quot;font-size:28px;background: transparent; position: relative;&quot;&gt;&lt;h2 style=&quot;font-size:28px;background: transparent; position: relative;&quot;&gt;Where does it come from?&lt;/h2&gt;&lt;p style=&quot;text-align: center; margin-bottom: 15px; padding: 0px; color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-weight: 400;&quot;&gt;Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.&lt;/p&gt;&lt;/span&gt;&lt;/b&gt;&lt;/span&gt;&lt;/p&gt;');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(30) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '2' COMMENT '1=admin , 2 = cashier',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `type`) VALUES
(1, 'Administrator', 'admin', 'admin123', 1),
(4, 'vikey', 'viki', 'viki123', 2);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
