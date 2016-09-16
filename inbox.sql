-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 16, 2016 at 06:20 PM
-- Server version: 5.5.50-0ubuntu0.14.04.1
-- PHP Version: 5.6.23-1+deprecated+dontuse+deb.sury.org~trusty+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `node`
--

-- --------------------------------------------------------

--
-- Table structure for table `inbox`
--

CREATE TABLE IF NOT EXISTS `inbox` (
  `MID` bigint(20) NOT NULL AUTO_INCREMENT,
  `MSGTO` bigint(20) NOT NULL DEFAULT '0',
  `MSGFROM` bigint(20) NOT NULL DEFAULT '0',
  `message` text NOT NULL,
  `PID` bigint(20) NOT NULL DEFAULT '0',
  `FID` bigint(20) NOT NULL DEFAULT '0',
  `time` varchar(20) NOT NULL DEFAULT '',
  `unread` char(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`MID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `inbox`
--

INSERT INTO `inbox` (`MID`, `MSGTO`, `MSGFROM`, `message`, `PID`, `FID`, `time`, `unread`) VALUES
(1, 2, 1, 'hello', 1, 0, '1473676367', '0'),
(2, 2, 1, 'hello', 2, 0, '1473676367', '0'),
(3, 1, 2, 'test first', 1, 0, '1474008992', '0'),
(4, 2, 16, 'test by ram', 2, 0, '1474015088', '0'),
(5, 1, 16, 'test last', 1, 0, '1474008998', '0'),
(6, 1, 16, 'tested first', 2, 0, '1474008992', '0'),
(7, 16, 1, 'tested 16', 1, 0, '1474008996', '0'),
(8, 16, 1, 'tested last', 2, 0, '1474009098', '0');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
