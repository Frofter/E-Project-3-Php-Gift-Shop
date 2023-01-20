-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 19, 2022 at 06:25 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'Art'),
(2, 'Hand Bag'),
(3, 'Doll'),
(4, 'Greeting Card'),
(5, 'Beauty Product'),
(6, 'Wallet');

-- --------------------------------------------------------

--
-- Table structure for table `command`
--

CREATE TABLE `command` (
  `id` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `dat` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `statut` varchar(1000) NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `command`
--

INSERT INTO `command` (`id`, `id_product`, `quantity`, `dat`, `statut`, `id_user`) VALUES
(131, 48, 1, '2022-11-02 07:53:03', 'paid', 12),
(132, 43, 2, '2022-11-02 07:56:44', 'paid', 12),
(133, 36, 1, '2022-11-02 07:56:44', 'paid', 12),
(134, 35, 1, '2022-11-02 07:56:44', 'paid', 12),
(135, 30, 1, '2022-11-02 07:56:44', 'paid', 12),
(136, 23, 2, '2022-11-02 07:56:44', 'paid', 12);

-- --------------------------------------------------------

--
-- Table structure for table `details_command`
--

CREATE TABLE `details_command` (
  `id` int(11) NOT NULL,
  `product` varchar(1000) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `id_command` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `user` varchar(1000) NOT NULL,
  `address` varchar(1000) NOT NULL,
  `country` varchar(1000) NOT NULL,
  `city` varchar(1000) NOT NULL,
  `statut` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `details_command`
--

INSERT INTO `details_command` (`id`, `product`, `quantity`, `price`, `id_command`, `id_user`, `user`, `address`, `country`, `city`, `statut`) VALUES
(35, 'Park Painting', 1, 1200, 131, 12, 'f a t', 'anarkali bazar', 'India', 'lahore', 'done'),
(36, 'Book Card', 2, 100, 132, 12, 'f a t', 'anarkali bazar', 'India', 'lahore', 'done'),
(37, 'Glittery Grey Purse', 1, 1800, 133, 12, 'f a t', 'anarkali bazar', 'India', 'lahore', 'done'),
(38, 'Makeup Kit', 1, 800, 134, 12, 'f a t', 'anarkali bazar', 'India', 'lahore', 'done'),
(39, 'Pink Barbie', 1, 700, 135, 12, 'f a t', 'anarkali bazar', 'India', 'lahore', 'done'),
(40, 'Brownish Black Wallet', 2, 700, 136, 12, 'f a t', 'anarkali bazar', 'India', 'lahore', 'done');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `id_category` int(11) NOT NULL,
  `name` varchar(1000) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `price` int(11) NOT NULL,
  `thumbnail` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `id_category`, `name`, `description`, `price`, `thumbnail`) VALUES
(20, 6, 'Dark Brown Wallet', 'Leather Dark Brown Wallet for men', 400, '3.png'),
(21, 6, 'Purpulish Brown Wallet', 'Purpulish Brown Wallet for men. This wallet is very light.', 300, 'wallet.png'),
(23, 6, 'Brownish Black Wallet', 'Brownish Black Wallet for men', 350, '2.png'),
(24, 6, 'Light Black Wallet', 'Light Black Wallet for men', 200, '4.png'),
(25, 6, 'Black Wallet', 'Black Wallet for men', 300, '5.png'),
(26, 3, 'Creepy Doll', 'Wierd Creepy Orange Hair Purple Dress Doll', 200, 'Doll4.png'),
(27, 3, 'Farm Doll', 'Pink Farm Doll', 350, 'Doll1.png'),
(28, 3, 'Glittery Doll', 'Glitter neck Doll', 400, 'Doll3.png'),
(29, 3, 'Red Doll', 'Red Dress Doll', 500, 'Doll5.png'),
(30, 3, 'Pink Barbie', 'Pink Barbie Doll', 700, 'Doll2.png'),
(31, 5, 'Porducts Set', 'Beauty Products Set with brushes, nail polish, eye linear etc ', 1200, 'BP5.png'),
(32, 5, 'Porducts Set', 'Beauty Product set with brushes, creams etc', 1000, 'BP4.png'),
(33, 5, 'Porducts Set', 'Beauty Products set with brushes, creams, deodrant etc', 1400, 'BP3.png'),
(34, 5, 'Porducts Set', 'Beauty Products set with perfume, lipstick, eyelinear etc', 1100, 'BP2.png'),
(35, 5, 'Makeup Kit', 'full makeup kit', 800, 'BP1.png'),
(36, 2, 'Glittery Grey Purse', 'Glittery Grey Purse for women', 1800, 'HB5.png'),
(37, 2, 'Combo Purse Deal', 'Combo of fulffy pink and white Purse for women', 2000, 'HB4.png'),
(38, 2, 'Light Purple Purse', 'Light Purple Purple Purse for women', 1300, 'HB3.png'),
(39, 2, 'Triple Combo Purse Deal', 'Triple Combo Purse Deal Purses in black, white and light blue for women', 2500, 'HB2.png'),
(40, 2, 'Black Purse', 'Black Purse for women', 1600, 'HB1.png'),
(41, 4, 'Happy New Year Card ', 'Happy New Year Card ', 30, 'GC5.png'),
(42, 4, 'Happy Birthday Card', 'Happy Birthday Card', 20, 'GC4.png'),
(43, 4, 'Book Card', 'Book Card to write something', 50, 'GC3.png'),
(44, 4, 'Happy Birthday Card', 'Happy Birthday Card Cake Design on the inside', 50, 'GC2.png'),
(45, 4, 'Happy Birthday Card', 'Happy Birthday Card ', 20, 'GC1.png'),
(46, 1, 'Rainbow Leaf', 'Rainbow Leaf for decoration', 1000, 'A5.png'),
(47, 1, 'Splashy Painting', 'Splashy Painting for decoration', 800, 'A4.png'),
(48, 1, 'Park Painting', 'Park Painting for decoration', 1200, 'A3.png'),
(49, 1, 'Cheap Painting', 'Cheap Painting for decoration', 500, 'A2.png'),
(50, 1, 'Sunny Village Painting', 'Sunny Village Painting for decoration', 800, 'A1.png');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `firstname` varchar(1000) NOT NULL,
  `lastname` varchar(1000) NOT NULL,
  `password` varchar(1000) NOT NULL,
  `address` varchar(1000) NOT NULL,
  `city` varchar(1000) NOT NULL,
  `country` varchar(1000) NOT NULL,
  `role` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `firstname`, `lastname`, `password`, `address`, `city`, `country`, `role`) VALUES
(12, 'fat@email.com', 'f', 'a t', '0d8dc086e16e3ac48f05d555994da7d7', 'anarkali bazar', 'lahore', 'India', 'client'),
(13, 'farhad@email.com', 'farhad', 'ahmed', '86d99c1e69aa7f365d2a82c4e4fdbd8b', 'fb area', 'karachi', 'India', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `command`
--
ALTER TABLE `command`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `details_command`
--
ALTER TABLE `details_command`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `command`
--
ALTER TABLE `command`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;

--
-- AUTO_INCREMENT for table `details_command`
--
ALTER TABLE `details_command`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
