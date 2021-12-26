-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 26, 2021 at 02:26 PM
-- Server version: 8.0.27
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `public_address_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
CREATE TABLE IF NOT EXISTS `message` (
  `id` int NOT NULL AUTO_INCREMENT,
  `message` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `message`, `created_at`) VALUES
(1, 'hello', '2021-12-26 00:00:00'),
(2, 'hello', '2021-12-26 00:00:00'),
(3, 'train number 1 2 3 4', '2021-12-26 00:00:00'),
(4, 'English Bhai', '2021-12-26 00:00:00'),
(5, 'the train arriving platform 4 is the delayed 11.4 77 service to London Bridge train from London Victoria', '2021-12-26 00:00:00'),
(6, 'train arriving at platform 4 to the delayed 11.4 712 London Bridge train from London Victoria', '2021-12-26 00:00:00'),
(7, 'train number 12304 14 to Delhi Rajdhani Express from Mughalsarai Allahabad airport arrival status and platform number 3', '2021-12-26 00:00:00'),
(8, '22637 Sagar Express from Madurai 2135 from platform number 3', '2021-12-26 00:00:00'),
(9, 'attention train number 123 2017 New Delhi Rajdhani Express Mughalsarai Allahabad Kanpur identity platform number 3', '2021-12-26 00:00:00'),
(10, 'Mahavir attention please train number 13010 New Delhi Rajdhani express via Mughal Sarai Allahabad Kanpur is arriving shortly on platform number 3', '2021-12-26 00:00:00'),
(11, 'Mahavir attention please train number 1 2 3 2017 New Delhi Rajdhani express via Mughalsarai Allahabad Kanpur is arriving shortly on platform number 3', '2021-12-26 00:00:00'),
(12, 'may I have your attention please train number 13010 New Delhi express Mughal Sarai Allahabad arriving shortly on platform number 3', '2021-12-26 00:00:00'),
(13, 'passengers attention please train 22637 Pandian Express found for Madurai will leave at 21:30 hours from platform number 3', '2021-12-26 00:00:00'),
(14, 'hello', '2019-02-22 00:41:30'),
(15, 'hi hello welcome', '2021-12-26 18:26:01'),
(16, 'trains arriving at platform number 5', '2021-12-26 18:29:00');

-- --------------------------------------------------------

--
-- Table structure for table `user_registration`
--

DROP TABLE IF EXISTS `user_registration`;
CREATE TABLE IF NOT EXISTS `user_registration` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `email` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_registration`
--

INSERT INTO `user_registration` (`id`, `username`, `password`, `email`) VALUES
(1, 'priya', '123', 'priyaprem08@gmail.com'),
(2, 'dharshini', '123', 'sample@sample.com'),
(3, 'sample', '123', 'sample@sample.com'),
(13, 'sampleuser2', '123', 'sample@gmail.com'),
(12, 'sampleuser', '123', 'sample@gmail.com');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
