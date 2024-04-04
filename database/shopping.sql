-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 20, 2020 at 11:01 AM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopee`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cart_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `item_id` int(11) NOT NULL,
  `item_brand` varchar(200) NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `item_price` double(10,2) NOT NULL,
  `item_image` varchar(255) NOT NULL,
  `item_register` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`item_id`, `item_brand`, `item_name`, `item_price`, `item_image`, `item_register`) VALUES
(1, 'Colgate', 'Toothpaste', 50.00, './assets/products/01_toothpaste.jpeg', '2023-01-17 20:48:49'),
(2, 'Lakme', 'Lipstick', 500.00, './assets/products/02_lipstick.jpg', '2022-06-11 01:17:49'),
(3, 'Adidas', 'Shoes', 3000.00, './assets/products/03_shoes.jpeg', '2021-06-17 00:25:28'),
(4, 'Levis', 'T-shirt', 1000.00, './assets/products/04_t_shirt.png', '2022-03-12 16:11:08'),
(5, 'furniture', 'table', 20000.00, './assets/products/05_furniture.png', '2022-02-11 21:51:37'),
(6, 'Lays', 'Chips', 20.00, './assets/products/06_lays.jpg', '2022-05-01 07:24:02'),
(7, 'Boat', 'Speaker', 1500.00, './assets/products/07_speaker.jpg', '2021-08-27 12:48:45'),
(8, 'Mrf', 'Bat', 1500.00, './assets/products/08_bat.jpg', '2023-09-08 06:42:36'),
(9, 'Quartz', 'Clock', 1500.00, './assets/products/09_clock.jpg', '2021-02-24 11:01:52'),
(10, 'Kalyan', 'Jewellery', 10000.00, './assets/products/10_jwellery.jpg', '2022-12-25 12:59:15'),
(11, 'Vector', 'Football', 750.00, './assets/products/11_football.jpg', '2022-06-06 05:33:03'),
(12, 'Cutlery', 'Plates', 1500.00, './assets/products/12_cutlery.jpg', '2023-09-24 03:09:39'),
(13, 'Doms', 'Pouch', 100.00, './assets/products/13_stationary.jpg', '2021-02-06 16:09:58');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `register_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `first_name`, `last_name`, `register_date`) VALUES
(1, 'Rohit', 'Sharma', '2019-04-08 09:07:23'),
(2, 'Virat', 'Kohli', '2020-03-15 18:04:14'),
(3, 'Kl', 'Rahul', '2022-10-23 20:02:20');


-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `cart_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
