-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 04, 2020 at 03:59 PM
-- Server version: 5.7.23
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pra`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
CREATE TABLE IF NOT EXISTS `customers` (
  `name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`name`, `address`) VALUES
('John', 'Highway 21');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
CREATE TABLE IF NOT EXISTS `message` (
  `msg` varchar(255) DEFAULT NULL,
  `id` int(11) DEFAULT NULL,
  `dt` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`msg`, `id`, `dt`) VALUES
('hello', 1, NULL),
('hello', 2, NULL),
('train number 1 2 3 4', 2, NULL),
('English Bhai', 2, NULL),
('the train arriving platform 4 is the delayed 11.4 77 service to London Bridge train from London Victoria', 2, NULL),
('train arriving at platform 4 to the delayed 11.4 712 London Bridge train from London Victoria', 2, NULL),
('train number 12304 14 to Delhi Rajdhani Express from Mughalsarai Allahabad airport arrival status and platform number 3', 2, NULL),
('22637 Sagar Express from Madurai 2135 from platform number 3', 2, NULL),
('attention train number 123 2017 New Delhi Rajdhani Express Mughalsarai Allahabad Kanpur identity platform number 3', 2, NULL),
('Mahavir attention please train number 13010 New Delhi Rajdhani express via Mughal Sarai Allahabad Kanpur is arriving shortly on platform number 3', 2, NULL),
('Mahavir attention please train number 1 2 3 2017 New Delhi Rajdhani express via Mughalsarai Allahabad Kanpur is arriving shortly on platform number 3', 2, NULL),
('may I have your attention please train number 13010 New Delhi express Mughal Sarai Allahabad arriving shortly on platform number 3', 2, NULL),
('passengers attention please train 22637 Pandian Express found for Madurai will leave at 21:30 hours from platform number 3', 2, NULL),
('hello', 2, '2019-02-22 00:41:30');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `uname` varchar(255) DEFAULT NULL,
  `pass` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`uname`, `pass`) VALUES
('xaviour', '111'),
('nagavasudha', '222'),
('varshini', '333');

-- --------------------------------------------------------

--
-- Table structure for table `userreg`
--

DROP TABLE IF EXISTS `userreg`;
CREATE TABLE IF NOT EXISTS `userreg` (
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `emailid` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userreg`
--

INSERT INTO `userreg` (`username`, `password`, `emailid`) VALUES
('priya', '123', 'priyaprem08@gmail.com');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
