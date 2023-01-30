-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 04, 2021 at 07:27 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `buyersinfo`
--

-- --------------------------------------------------------

--
-- Table structure for table `addbuyers`
--

CREATE TABLE `addbuyers` (
  `Name` varchar(255) DEFAULT NULL,
  `ContactNo` varchar(20) NOT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `Gender` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `addbuyers`
--

INSERT INTO `addbuyers` (`Name`, `ContactNo`, `Email`, `Address`, `Gender`) VALUES
('Maruf', '01575034327', 'marufcoed4243@gmail.com', 'Dhaka, Mirpur', 'Male'),
('Mithu', '01907840170', 'golamrabbani3010@gmail.com', 'Rangpur, Bangladesh', 'Male');

--
-- Triggers `addbuyers`
--
DELIMITER $$
CREATE TRIGGER `safe_Delete_buyers` BEFORE DELETE ON `addbuyers` FOR EACH ROW BEGIN

INSERT INTO d_addbuyers(Name,ContactNo,Email,Address,Gender)

VALUES(OLD.Name,OLD.ContactNo,OLD.Email,OLD.Address,OLD.Gender);

END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `d_addbuyers`
--

CREATE TABLE `d_addbuyers` (
  `Name` varchar(255) DEFAULT NULL,
  `ContactNo` varchar(20) NOT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `Gender` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `d_addbuyers`
--

INSERT INTO `d_addbuyers` (`Name`, `ContactNo`, `Email`, `Address`, `Gender`) VALUES
('Tareq', '01921456068', 'adnantareq2@gmail.com', 'Bahadurpur', 'Male'),
('Rahima', '415485748', 'asfdjk@gmail.com', 'dhaka', 'Male');

-- --------------------------------------------------------

--
-- Table structure for table `d_product`
--

CREATE TABLE `d_product` (
  `ProductId` int(11) DEFAULT NULL,
  `ProductName` varchar(255) DEFAULT NULL,
  `ProductRate` int(11) DEFAULT NULL,
  `ProductDescription` varchar(255) DEFAULT NULL,
  `Activate` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `d_product`
--

INSERT INTO `d_product` (`ProductId`, `ProductName`, `ProductRate`, `ProductDescription`, `Activate`) VALUES
(1, 'Bulb', 100, 'LightUp', 'YES'),
(3, 'Bread', 15, 'Sweet Products', 'NO'),
(2, 'Puma', 50, 'Shoes', 'NO');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `ProductId` int(11) DEFAULT NULL,
  `ProductName` varchar(255) DEFAULT NULL,
  `ProductRate` int(11) DEFAULT NULL,
  `ProductDescription` varchar(255) DEFAULT NULL,
  `Activate` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`ProductId`, `ProductName`, `ProductRate`, `ProductDescription`, `Activate`) VALUES
(1, 'LED Light', 100, 'Light Up EveryWhere', 'YES');

--
-- Triggers `product`
--
DELIMITER $$
CREATE TRIGGER `safe_Delete_product` BEFORE DELETE ON `product` FOR EACH ROW BEGIN

INSERT INTO d_product(ProductId,ProductName,ProductRate,ProductDescription,Activate)

VALUES(OLD.ProductId,OLD.ProductName,OLD.ProductRate,OLD.ProductDescription,OLD.Activate);

END
$$
DELIMITER ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addbuyers`
--
ALTER TABLE `addbuyers`
  ADD PRIMARY KEY (`ContactNo`);

--
-- Indexes for table `d_addbuyers`
--
ALTER TABLE `d_addbuyers`
  ADD PRIMARY KEY (`ContactNo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
