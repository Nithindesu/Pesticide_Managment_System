-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 16, 2023 at 01:10 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crops`
--

-- --------------------------------------------------------

--
-- Table structure for table `pest_details`
--

CREATE TABLE `pest_details` (
  `CROP` varchar(100) DEFAULT NULL,
  `PESTICIDE` varchar(100) DEFAULT NULL,
  `PRECAUTION` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pest_details`
--

INSERT INTO `pest_details` (`CROP`, `PESTICIDE`, `PRECAUTION`) VALUES
('WHEAT', 'GREY GOOSE', 'WEAR A MASK'),
('PADDY', 'JACK DANIELS', 'WEAR A MASK'),
('MIRCHI', 'BLENDERS PRIDE', 'WEAR A MASK'),
('TOBACC0', '100 PIPERS', 'WEAR A MASK'),
('PULSES', 'MANSION HOUSE', 'WEAR A MASK');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`fname`, `lname`, `email`, `password`) VALUES
('', '', 'cse190001062@iiti.ac.in', '$2y$10$yhEV11KSyE08/iK2iCjmE.qvYAwloUZ/8DHCYywmkED'),
('PRAVEEN', 'SEELAM', 'cse190001062@iiti.ac.in', 'ppp'),
('PRAVEEN', 'SEELAM', 'cse190001056@iiti.ac.in', 'ppp');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
