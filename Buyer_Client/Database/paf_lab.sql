-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 14, 2021 at 05:36 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `paf_lab`
--

-- --------------------------------------------------------

--
-- Table structure for table `buyers`
--

CREATE TABLE `buyers` (
  `buyerID` int(11) NOT NULL,
  `firstName` varchar(15) NOT NULL,
  `lastName` varchar(15) NOT NULL,
  `address` varchar(50) NOT NULL,
  `email` varchar(25) NOT NULL,
  `phoneNo` varchar(10) NOT NULL,
  `userName` varchar(15) NOT NULL,
  `password` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `buyers`
--

INSERT INTO `buyers` (`buyerID`, `firstName`, `lastName`, `address`, `email`, `phoneNo`, `userName`, `password`) VALUES
(1, 'kumari', 'walpola', 'Naththandiya', 'kumari@gmail.com', '702335123', 'kumari2021', 'kumari15'),
(2, 'Naveen', 'Perera', 'Negambo', 'navee@gmail.com', '777123456', 'Nav123', 'Navee@1'),
(3, 'Supun', 'Perera', 'Kuliyapitiya', 'supun@gmail.com', '785648230', 'supun@', 'spun@123'),
(4, 'Chamika ', 'Perera', 'Kurunegala', 'chamika@gmail.com', '777123456', 'chamika99', 'cpm2021'),
(5, 'Tharusha', 'Jayalath', 'Weyangoda', 'tharushaj@gmail.com', '755494230', 'Tharusha', 'tharusha22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buyers`
--
ALTER TABLE `buyers`
  ADD PRIMARY KEY (`buyerID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `buyers`
--
ALTER TABLE `buyers`
  MODIFY `buyerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
