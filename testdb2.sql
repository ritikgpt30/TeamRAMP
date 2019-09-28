-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 28, 2019 at 08:28 PM
-- Server version: 5.7.26
-- PHP Version: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `testdb2`
--

-- --------------------------------------------------------

--
-- Table structure for table `hotels`
--

DROP TABLE IF EXISTS `hotels`;
CREATE TABLE IF NOT EXISTS `hotels` (
  `hotel_ID` int(11) NOT NULL,
  `hotel_name` text CHARACTER SET hp8 NOT NULL,
  `place_ID` int(11) NOT NULL,
  `rooms_available` int(100) NOT NULL,
  PRIMARY KEY (`hotel_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hotels`
--

INSERT INTO `hotels` (`hotel_ID`, `hotel_name`, `place_ID`, `rooms_available`) VALUES
(1, 'Hotel Residency Fort', 1, 100),
(2, 'Hotel Le Grande', 1, 100),
(3, 'Hotel Kohinoor', 1, 9),
(4, 'The Oriental Residency', 1, 25),
(5, 'The Resort', 1, 56),
(6, 'Radison Blue Hotel', 2, 23),
(7, 'Bloorons Hotel', 2, 59),
(8, 'Eros Hotel', 2, 85),
(9, 'Hotel Grand Godwin', 2, 78),
(10, 'Hotel The Royal Plaza', 2, 65),
(11, 'The Monarch Luxur', 3, 45),
(12, 'Radison Bengaluru', 3, 78);

-- --------------------------------------------------------

--
-- Table structure for table `places`
--

DROP TABLE IF EXISTS `places`;
CREATE TABLE IF NOT EXISTS `places` (
  `place_ID` int(11) NOT NULL,
  `place_name` text NOT NULL,
  PRIMARY KEY (`place_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `places`
--

INSERT INTO `places` (`place_ID`, `place_name`) VALUES
(1, 'Mumbai'),
(2, 'Delhi'),
(3, 'Bangalore'),
(4, 'Hyderabad'),
(5, 'Chennai'),
(6, 'Kolkata'),
(7, 'Roorkee'),
(8, 'Cuttack'),
(9, 'Kanpur'),
(10, 'Bhubaneswar');

-- --------------------------------------------------------

--
-- Table structure for table `travel`
--

DROP TABLE IF EXISTS `travel`;
CREATE TABLE IF NOT EXISTS `travel` (
  `vehicle_ID` int(11) NOT NULL,
  `vehicle_type` text NOT NULL,
  `origin` int(11) NOT NULL,
  `destination` int(11) NOT NULL,
  `time` time NOT NULL,
  `website_ID` text NOT NULL,
  `Price` int(11) NOT NULL,
  PRIMARY KEY (`vehicle_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `User_Name` text CHARACTER SET hp8 NOT NULL,
  `Password` text CHARACTER SET hp8 NOT NULL,
  `Email_Adress` text CHARACTER SET hp8 NOT NULL,
  `Phone_Number` bigint(20) NOT NULL,
  `Age` int(11) NOT NULL,
  `Gender` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`User_Name`, `Password`, `Email_Adress`, `Phone_Number`, `Age`, `Gender`) VALUES
('Ajay Mati', 'abc', 'ajaymati1000@gmail.com', 6370542274, 18, 'male'),
('adiyta sharma', 'abcde', 'aditya@gmail.com', 6984561237, 19, 'other');

-- --------------------------------------------------------

--
-- Table structure for table `websites`
--

DROP TABLE IF EXISTS `websites`;
CREATE TABLE IF NOT EXISTS `websites` (
  `website_ID` int(11) NOT NULL,
  `Webadress` text NOT NULL,
  `type` text NOT NULL,
  PRIMARY KEY (`website_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `websites`
--

INSERT INTO `websites` (`website_ID`, `Webadress`, `type`) VALUES
(1, 'www.trivago.com', 'Hotel'),
(2, 'www.goibibo.com', 'Hotel'),
(3, 'www.oyo.com', 'Hotel'),
(4, 'www.booking.com', 'Hotel'),
(5, 'www.hotels.com', 'Hotel'),
(6, 'www.redbus.com', 'Travel'),
(7, 'www.maharajatravels.com', 'Travel'),
(8, 'www.volvoindia.com', 'Travel'),
(9, 'www.homeaway.com', 'Travel'),
(10, 'www.ola.com', 'Travel');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
