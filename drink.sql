-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 29, 2019 at 04:23 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `drink`
--

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `banner_id` int(11) NOT NULL,
  `banner_name` varchar(255) NOT NULL,
  `banner_image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`banner_id`, `banner_name`, `banner_image`) VALUES
(1, 'Coffee01', '/img/banner/coffee01.jpg'),
(2, 'Coffee02', '/img/banner/coffee02.jpg'),
(3, 'Coffee03', '/img/banner/coffee03.jpg'),
(4, 'Coffee04', '/img/banner/coffee04.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `drink`
--

CREATE TABLE `drink` (
  `drink_id` int(11) NOT NULL,
  `drink_name` varchar(255) NOT NULL,
  `drink_image` varchar(255) NOT NULL,
  `drink_price` float NOT NULL,
  `menu_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `drink`
--

INSERT INTO `drink` (`drink_id`, `drink_name`, `drink_image`, `drink_price`, `menu_id`) VALUES
(1, 'Squash tea\r\n', 'http://gongcha.com.vn/wp-content/uploads/2018/02/Tr%C3%A0-B%C3%AD-%C4%90ao-Milkfoam-1.png', 3.75, 6),
(2, 'Oolong tea\r\n', 'http://gongcha.com.vn/wp-content/uploads/2018/02/Tr%C3%A0-Oolong-Milkfoam-2.png', 3.75, 6),
(3, 'Alisan tea\r\n', 'http://gongcha.com.vn/wp-content/uploads/2018/02/Tr%C3%A0-Alisan-Milkfoam-1.png', 3.75, 6),
(4, 'Earl tea', 'http://gongcha.com.vn/wp-content/uploads/2018/02/Tr%C3%A0-Earl-Grey-Milkfoam-1.png', 3.75, 6),
(5, 'Black tea', 'http://gongcha.com.vn/wp-content/uploads/2018/02/Tr%C3%A0-%C4%90en-Milkfoam-1.png', 3.75, 6),
(6, 'Green tea', 'http://gongcha.com.vn/wp-content/uploads/2018/02/Tr%C3%A0-Xanh-Milkfoam-1.png', 3.75, 6),
(7, 'Milk Tea Red Bean', 'http://gongcha.com.vn/wp-content/uploads/2018/02/Tr%C3%A0-s%E1%BB%AFa-Matcha-%C4%91%E1%BA%ADu-%C4%91%E1%BB%8F-1.png', 3.75, 5),
(8, 'Milk Tea Oolong 3J', 'http://gongcha.com.vn/wp-content/uploads/2018/02/Tr%C3%A0-s%E1%BB%AFa-Oolong-3J-1.png', 3.75, 5),
(9, 'Milk Tea Pudding Read Bean', 'http://gongcha.com.vn/wp-content/uploads/2018/02/Tr%C3%A0-s%E1%BB%AFa-Pudding-%C4%91%E1%BA%ADu-%C4%91%E1%BB%8F-1.png', 3.75, 5),
(10, 'Milk Tea Chocolate', 'http://gongcha.com.vn/wp-content/uploads/2018/02/Tr%C3%A0-s%E1%BB%AFa-Chocolate-1.png', 3.75, 5),
(11, 'Milk Tea Caramel', 'http://gongcha.com.vn/wp-content/uploads/2018/02/Tr%C3%A0-s%E1%BB%AFa-Caramel-1.png', 3.75, 5),
(12, 'Milk Tea Black Pearl', 'http://gongcha.com.vn/wp-content/uploads/2018/02/Tr%C3%A0-s%E1%BB%AFa-Caramel-1.png', 3.75, 5),
(13, 'Squash Tea', 'http://gongcha.com.vn/wp-content/uploads/2018/02/Tr%C3%A0-B%C3%AD-%C4%90ao-Alisan-1.png', 3.75, 4),
(14, 'Squash Tea ', 'http://gongcha.com.vn/wp-content/uploads/2018/02/Tr%C3%A0-B%C3%AD-%C4%90ao-1.png', 3.75, 4),
(15, 'Earl Grey Tea ', 'http://gongcha.com.vn/wp-content/uploads/2018/02/Tr%C3%A0-Early-Grey-1.png', 3.75, 4),
(16, 'Oolong Tea ', 'http://gongcha.com.vn/wp-content/uploads/2018/02/Tr%C3%A0-Oolong-1.png', 3.75, 4),
(17, 'Black Tea ', 'http://gongcha.com.vn/wp-content/uploads/2018/02/Tr%C3%A0-%C4%90en-1.png', 3.75, 4),
(18, 'Green Tea ', 'http://gongcha.com.vn/wp-content/uploads/2018/02/Tr%C3%A0-Xanh-1.png', 3.75, 4),
(19, 'QQ Green Tea ', 'http://gongcha.com.vn/wp-content/uploads/2018/02/QQ-Tr%C3%A0-xanh-chanh-d%C3%A2y-1.png', 3.75, 1),
(20, 'Lemon Ai-yu and White Pearl ', 'http://gongcha.com.vn/wp-content/uploads/2018/02/Chanh-Aiyu-tr%C3%A2n-ch%C3%A2u-tr%E1%BA%AFng-1.png', 3.75, 1),
(21, 'Pink Peach ', 'http://gongcha.com.vn/wp-content/uploads/2018/02/imgpsh_fullsize.png', 3.75, 1),
(22, 'Fig Oolong Tea', 'http://gongcha.com.vn/wp-content/uploads/2018/02/Oolong-v%E1%BA%A3i-1.png', 3.75, 1),
(23, 'Fig Alisan Tea', 'http://gongcha.com.vn/wp-content/uploads/2018/02/Alisan-v%E1%BA%A3i-1.png', 3.75, 1),
(24, 'Mango Alisan Tea', 'http://gongcha.com.vn/wp-content/uploads/2018/02/Alisan-xo%C3%A0i-1.png', 3.75, 1),
(25, 'Lemon Green Tea', 'http://gongcha.com.vn/wp-content/uploads/2018/02/Xanh-%C4%91%C3%A0o-1.png', 3.75, 1),
(26, 'Lemon Alisan Green Tea', 'http://gongcha.com.vn/wp-content/uploads/2018/02/Xanh-%C4%91%C3%A0o-1.png', 3.75, 1),
(27, 'Peach Black Tea', 'http://gongcha.com.vn/wp-content/uploads/2018/02/%C4%90en-%C4%91%C3%A0o-1.png', 3.75, 1),
(28, 'Peach Green Tea', 'http://gongcha.com.vn/wp-content/uploads/2018/02/Xanh-%C4%91%C3%A0o-1.png', 3.75, 1),
(29, 'Chocolate Grind', 'http://gongcha.com.vn/wp-content/uploads/2018/02/Chocolate-%C4%91%C3%A1-xay-1.png', 3.75, 2),
(30, 'Taro Grind', 'http://gongcha.com.vn/wp-content/uploads/2018/02/Khoai-m%C3%B4n-%C4%91%C3%A1-xay-1.png', 3.75, 2),
(31, 'Matcha Grind', 'http://gongcha.com.vn/wp-content/uploads/2018/02/Matcha-%C4%91%C3%A1-xay-1.png', 3.75, 2),
(32, 'Yakult Peach Grind', 'http://gongcha.com.vn/wp-content/uploads/2018/02/Yakult-%C4%91%C3%A1-xay-1.png', 3.75, 2),
(33, 'Mango Grind', 'http://gongcha.com.vn/wp-content/uploads/2018/02/Xo%C3%A0i-%C4%91%C3%A1-xay-1.png', 3.75, 2),
(34, 'Peach Tea Grind', 'http://gongcha.com.vn/wp-content/uploads/2018/02/Tr%C3%A0-%C4%91%C3%A0o-%C4%91%C3%A1-tuy%E1%BA%BFt-fix.png', 3.75, 2),
(35, 'Milk Cream', 'http://gongcha.com.vn/wp-content/uploads/2018/03/Kem-S%E1%BB%AFa.png', 2, 3),
(36, 'Vera', 'http://gongcha.com.vn/wp-content/uploads/2018/03/Nha-%C4%90am.png', 2, 3),
(37, 'Seeds', 'http://gongcha.com.vn/wp-content/uploads/2018/03/H%E1%BA%A1t-%C3%89.png', 2, 3),
(38, 'Black Pearl', 'http://gongcha.com.vn/wp-content/uploads/2018/03/Tr%C3%A2n-Ch%C3%A2u-%C4%90en.png', 2, 3),
(39, 'White Pearl', 'http://gongcha.com.vn/wp-content/uploads/2018/03/Tr%C3%A2n-Ch%C3%A2u-Tr%E1%BA%AFng.png', 2, 3),
(40, 'Red Bean', 'http://gongcha.com.vn/wp-content/uploads/2018/03/%C4%90%E1%BA%ADu-%C4%90%E1%BB%8F.png', 2, 3),
(41, 'Jelly Black', 'http://gongcha.com.vn/wp-content/uploads/2018/03/S%C6%B0%C6%A1ng-s%C3%A1o.png', 2, 3),
(42, 'Jelly Brown', 'http://gongcha.com.vn/wp-content/uploads/2018/03/Th%E1%BA%A1ch-N%C3%A2u.png', 2, 3),
(43, 'Jelly Fruits', 'http://gongcha.com.vn/wp-content/uploads/2018/03/Th%E1%BA%A1ch-tr%C3%A1i-c%C3%A2y.png', 2, 3),
(44, 'Jelly Ai-yu', 'http://gongcha.com.vn/wp-content/uploads/2018/03/Th%E1%BA%A1ch-Ai-yu.png', 2, 3),
(45, 'Jelly Coconut', 'http://gongcha.com.vn/wp-content/uploads/2018/03/Th%E1%BA%A1ch-D%E1%BB%ABa.png', 2, 3),
(46, 'Pudding', 'http://gongcha.com.vn/wp-content/uploads/2018/03/%E5%B8%83%E4%B8%81-pudding.png', 2, 3),
(47, 'Combo 2', 'http://gongcha.com.vn/wp-content/uploads/2018/02/Combo2loaihat-2.png', 2.5, 3),
(48, 'Combo 3', 'http://gongcha.com.vn/wp-content/uploads/2018/03/Combo-3-lo%E1%BA%A1i-h%E1%BA%A1t.png', 2.5, 3);

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `menu_id` int(11) NOT NULL,
  `menu_name` varchar(255) NOT NULL,
  `menu_image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`menu_id`, `menu_name`, `menu_image`) VALUES
(1, 'Mixed Drink', 'http://gongcha.com.vn/wp-content/uploads/2018/02/QQ-Tr%C3%A0-xanh-chanh-d%C3%A2y-1.png'),
(2, 'Ice Drink', 'http://gongcha.com.vn/wp-content/uploads/2018/02/Chocolate-%C4%91%C3%A1-xay-1.png'),
(3, 'Topping', 'http://gongcha.com.vn/wp-content/uploads/2018/03/Tr%C3%A2n-Ch%C3%A2u-Tr%E1%BA%AFng.png'),
(4, 'Original Tea', 'http://gongcha.com.vn/wp-content/uploads/2018/02/Tr%C3%A0-B%C3%AD-%C4%90ao-Alisan-1.png'),
(5, 'Milk Tea', 'http://gongcha.com.vn/wp-content/uploads/2018/02/Tr%C3%A0-s%E1%BB%AFa-Hokkaido-1.png'),
(6, 'Special Drink', 'http://gongcha.com.vn/wp-content/uploads/2018/02/Tr%C3%A0-B%C3%AD-%C4%90ao-Milkfoam-1.png');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_phone` varchar(20) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `user_birthday` date NOT NULL,
  `user_address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_phone`, `user_name`, `user_birthday`, `user_address`) VALUES
(1, '+66634217393', 'Mac', '1989-06-27', '20/12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`banner_id`);

--
-- Indexes for table `drink`
--
ALTER TABLE `drink`
  ADD PRIMARY KEY (`drink_id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`menu_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_phone` (`user_phone`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `banner_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `drink`
--
ALTER TABLE `drink`
  MODIFY `drink_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
