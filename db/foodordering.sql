-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: May 01, 2024 at 08:59 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `foodordering`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'major', '202cb962ac59075b964b07152d234b70');

-- --------------------------------------------------------

--
-- Table structure for table `basket`
--

CREATE TABLE `basket` (
  `id` int(11) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `contact_number` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `total` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `date_made` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `basket`
--

INSERT INTO `basket` (`id`, `customer_name`, `contact_number`, `address`, `email`, `total`, `status`, `date_made`) VALUES
(13, 'Wada', '08065463632', 'Wadagailcom', 'gg@gmail.com', '700', 'pending', '2016-12-31 15:50:21'),
(14, 'Shifanaaz Sheikh', '9373092865', 'abcd regrjy ', 'shifanaazsheikh02@gmail.com', '250', 'pending', '2024-04-30 13:22:13'),
(15, 'arti manputra', '9373092865', 'jijau girls hostel', 'arti02@gmail.com', '1400', 'confirmed', '2024-04-30 13:26:50'),
(16, 'Neha Wakte', '9373092865', 'balarshah', 'neha345@gmail.com', '2100', 'confirmed', '2024-04-30 13:33:13'),
(17, 'Shifanaaz Sheikh', '99999', 'hostel', 'sharfasheikh3@gmail.com', '250', 'confirmed', '2024-05-01 12:25:12');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `customer_name`, `subject`, `email`, `message`) VALUES
(1, 'Adam Abdulrahman', 'Late Delivery', 'abdulflezy13@yahoo.com', 'Please ensure that your delivery guys deliver the meals at the required time because they are often late.'),
(2, 'Zainab Adamu', 'Late Delivery', 'Zee@yahoo.com', 'I need an email of the GM if possible');

-- --------------------------------------------------------

--
-- Table structure for table `food`
--

CREATE TABLE `food` (
  `id` int(11) NOT NULL,
  `food_name` varchar(255) NOT NULL,
  `food_category` varchar(255) NOT NULL,
  `food_price` varchar(255) NOT NULL,
  `food_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `food`
--

INSERT INTO `food` (`id`, `food_name`, `food_category`, `food_price`, `food_description`) VALUES
(1, 'spicyburger', 'lunch', '50.00', 'Vestibulum tortor quam feugiat vitae ultricies eget tempor sit amet ante Donec eu libero sit amet quam egestas semper Aenean ultricies mi vitae est Mauris placerat eleifend leo Quisque sit amet est et sapien ullamcorper pharetra Vestibulum erat wisi condimentum sed commodo vitae'),
(2, 'snailchoc', 'breakfast', '50.00', 'Vestibulum tortor quam feugiat vitae ultricies eget tempor sit amet ante Donec eu libero sit amet quam egestas semper Aenean ultricies mi vitae est Mauris placerat eleifend leo Quisque sit amet est et sapien ullamcorper pharetra Vestibulum erat wisi condimentum sed commodo vitae'),
(3, 'salad', 'lunch', '50.00', 'Vestibulum tortor quam feugiat vitae ultricies eget tempor sit amet ante Donec eu libero sit amet quam egestas semper Aenean ultricies mi vitae est Mauris placerat eleifend leo Quisque sit amet est et sapien ullamcorper pharetra Vestibulum erat wisi condimentum sed commodo vitae'),
(4, 'pizza', 'lunch', '350.00', 'Vestibulum tortor quam feugiat vitae ultricies eget tempor sit amet ante Donec eu libero sit amet quam egestas semper Aenean ultricies mi vitae est Mauris placerat eleifend leo Quisque sit amet est et sapien ullamcorper pharetra Vestibulum erat wisi condimentum sed commodo vitae'),
(5, 'shawarma', 'breakfast', '350.00', 'Vestibulum tortor quam feugiat vitae ultricies eget tempor sit amet ante Donec eu libero sit amet quam egestas semper Aenean ultricies mi vitae est Mauris placerat eleifend leo Quisque sit amet est et sapien ullamcorper pharetra Vestibulum erat wisi condimentum sed commodo vitae'),
(6, 'Rice', 'lunch', '50.00', 'This is a tasty meal i bet you dont want miss enjoying the yummy taste'),
(7, 'Jellyfish', 'dinner', '400', 'Try this delicay and i promise you will keep coming back for more'),
(8, 'Ice Cream', 'special', '4000', 'desc'),
(9, 'Pounded Yam', 'dinner', '800', 'This is one of our best meal and it is prepared deliciously for you'),
(10, 'Eba and Vegetable', 'dinner', '600', 'This is a very nice combination'),
(11, 'Somovita and Egusi soup', 'breakfast', '800', 'Semovita is one of the delicacies you definitely want to try for breakfast');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `item_id` int(11) NOT NULL,
  `order_id` varchar(100) NOT NULL,
  `food` varchar(100) NOT NULL,
  `qty` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`item_id`, `order_id`, `food`, `qty`) VALUES
(1, '13', 'pizza', '2'),
(2, '14', 'spicyburger', '5'),
(3, '14', ' snailchoc', '1'),
(4, '14', ' Ice Cream', '9'),
(5, '15', 'shawarma', '4'),
(6, '15', ' Somovita and Egusi soup', '3'),
(7, '16', 'pizza', '6'),
(8, '17', 'spicyburger', '5');

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

CREATE TABLE `reservation` (
  `reserve_id` int(11) NOT NULL,
  `no_of_guest` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `date_res` varchar(100) NOT NULL,
  `time` varchar(100) NOT NULL,
  `suggestions` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reservation`
--

INSERT INTO `reservation` (`reserve_id`, `no_of_guest`, `email`, `phone`, `date_res`, `time`, `suggestions`) VALUES
(1, '2', 'abdulflezy13@yahoo.com', '09087676543', '2016-12-14', '15:00', 'suggestions suggestions suggestions'),
(2, '2', 'abdulflezy13@ymail.com', '09087676546', '2016-12-30', '18:00', 'suggestions suggestions suggestions'),
(3, '2', 'shifanaazsheikh02@gmail.com', '8888888888', '2002-04-04', '05:30', 'vbuidfhvbui'),
(4, '2', 'omkar@gmail.com', '12245654', '2024-04-18', '23:41', 'romantic setup with gf'),
(5, '2', 'arti02@gmail.com', '3454365', '2024-04-30', '20:25', 'window table date setup');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `basket`
--
ALTER TABLE `basket`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`reserve_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `basket`
--
ALTER TABLE `basket`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `food`
--
ALTER TABLE `food`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `reserve_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
