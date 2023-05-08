-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 08, 2023 at 04:56 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `college`
--

-- --------------------------------------------------------

--
-- Table structure for table `result`
--

CREATE TABLE `result` (
  `roll_no` int(11) NOT NULL,
  `prn` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `mother_name` varchar(20) NOT NULL,
  `branch` varchar(30) NOT NULL,
  `class` varchar(10) NOT NULL,
  `year_of_exam` year(4) NOT NULL,
  `semester` int(11) NOT NULL,
  `wt_mse` int(11) NOT NULL,
  `daa_mse` int(11) NOT NULL,
  `cd_mse` int(11) NOT NULL,
  `cc_mse` int(11) NOT NULL,
  `wt_ese` int(11) NOT NULL,
  `daa_ese` int(11) NOT NULL,
  `cd_ese` int(11) NOT NULL,
  `cc_ese` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `result`
--

INSERT INTO `result` (`roll_no`, `prn`, `name`, `mother_name`, `branch`, `class`, `year_of_exam`, `semester`, `wt_mse`, `daa_mse`, `cd_mse`, `cc_mse`, `wt_ese`, `daa_ese`, `cd_ese`, `cc_ese`) VALUES
(48, 12120456, 'Pushkar Pophali', 'Rajani', 'Computer Engineering', 'TY', 2022, 1, 80, 90, 85, 90, 78, 90, 87, 78),
(56, 12120465, 'Harsh Upadhye', 'Suhani', 'Computer Engineering', 'TY', 2022, 1, 98, 78, 73, 89, 94, 92, 88, 67),
(70, 12123454, 'Vishal Rothe', 'Vandana', 'Computer Engineering', 'TY', 2022, 1, 91, 94, 89, 79, 90, 81, 93, 88),
(31, 12120908, 'Janhvi Bhandekar', 'Archana', 'Computer Engineering', 'TY', 2022, 1, 87, 90, 96, 95, 78, 89, 92, 90);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
