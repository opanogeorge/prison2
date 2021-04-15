-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 06, 2015 at 09:06 PM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `prisonpro`
--
CREATE DATABASE IF NOT EXISTS `prisonpro` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `prisonpro`;

-- --------------------------------------------------------

--
-- Table structure for table `admin_tbl`
--

CREATE TABLE IF NOT EXISTS `admin_tbl` (
  `Admin_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Admin_Name` varchar(20) NOT NULL,
  `Admin_Password` varchar(20) NOT NULL,
  PRIMARY KEY (`Admin_Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `admin_tbl`
--

INSERT INTO `admin_tbl` (`Admin_Id`, `Admin_Name`, `Admin_Password`) VALUES
(2, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `announce`
--

CREATE TABLE IF NOT EXISTS `announce` (
  `to` varchar(17) NOT NULL,
  `Id` varchar(13) NOT NULL,
  `subject` varchar(14) NOT NULL,
  `message` varchar(70) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `announce`
--

INSERT INTO `announce` (`to`, `Id`, `subject`, `message`) VALUES
('adminstrator', '8882', 'complain', 'sms');

-- --------------------------------------------------------

--
-- Table structure for table `capacity`
--

CREATE TABLE IF NOT EXISTS `capacity` (
  `id` int(23) NOT NULL AUTO_INCREMENT,
  `number` int(34) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `capacity`
--

INSERT INTO `capacity` (`id`, `number`) VALUES
(1, 500),
(2, 750),
(3, 1000),
(4, 1500);

-- --------------------------------------------------------

--
-- Table structure for table `court`
--

CREATE TABLE IF NOT EXISTS `court` (
  `National_id` int(12) NOT NULL,
  `File_number` varchar(14) NOT NULL,
  `Dateoftrial` date NOT NULL,
  `Sentence` varchar(14) NOT NULL,
  `Location` varchar(15) NOT NULL,
  PRIMARY KEY (`National_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `newprison`
--

CREATE TABLE IF NOT EXISTS `newprison` (
  `pno` int(25) NOT NULL AUTO_INCREMENT,
  `pname` varchar(25) NOT NULL,
  `location` varchar(25) NOT NULL,
  `opendate` varchar(25) NOT NULL,
  `contact` int(25) NOT NULL,
  `capacity` int(25) NOT NULL,
  PRIMARY KEY (`pno`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23841 ;

--
-- Dumping data for table `newprison`
--

INSERT INTO `newprison` (`pno`, `pname`, `location`, `opendate`, `contact`, `capacity`) VALUES
(7, 'LAMU', 'LAMU', '2015-02-12', 765546353, 500),
(23340, 'JNKIM', 'NAIROBI', '2015-02-12', 2147483647, 0),
(23344, 'JNKIM', 'NAIROBI', '2015-02-12', 2147483647, 0),
(23840, 'JNKIM', 'NAIROBI', '2015-02-12', 2147483647, 0);

-- --------------------------------------------------------

--
-- Table structure for table `officer`
--

CREATE TABLE IF NOT EXISTS `officer` (
  `National_id` int(11) NOT NULL,
  `Telephone` int(12) NOT NULL,
  `From_prison` varchar(12) NOT NULL,
  `To_prison` varchar(12) NOT NULL,
  `Dateoftransfer` date NOT NULL,
  PRIMARY KEY (`National_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `officer`
--

INSERT INTO `officer` (`National_id`, `Telephone`, `From_prison`, `To_prison`, `Dateoftransfer`) VALUES
(674484, 2147483647, 'LANGATA', 'SHIMOLATEWA', '2015-01-20');

-- --------------------------------------------------------

--
-- Table structure for table `officerdetails`
--

CREATE TABLE IF NOT EXISTS `officerdetails` (
  `id` int(12) NOT NULL,
  `fullname` varchar(25) NOT NULL,
  `address` varchar(25) NOT NULL,
  `dateofbirth` varchar(25) NOT NULL,
  `gender` varchar(25) NOT NULL,
  `telephone` int(25) NOT NULL,
  `education` varchar(25) NOT NULL,
  `experience` varchar(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `officerdetails`
--

INSERT INTO `officerdetails` (`id`, `fullname`, `address`, `dateofbirth`, `gender`, `telephone`, `education`, `experience`) VALUES
(33333333, 'yum', 'rtthjkj', '1989-04-12', 'Female', 99666666, 'PDG', '1-6 months'),
(44444444, 'Emmanuel', 'Lngatta', '2015-02-12', 'Male', 2147483647, 'Certificate', '1-2years'),
(45555555, 'yamiv', 'rongai', '1977-02-12', '', 2147483647, 'Certificate', '5-7yrs');

-- --------------------------------------------------------

--
-- Table structure for table `policestation_tbl`
--

CREATE TABLE IF NOT EXISTS `policestation_tbl` (
  `Station_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Station_Name` varchar(20) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `City` varchar(20) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Mobile` int(11) NOT NULL,
  `UserName` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL,
  PRIMARY KEY (`Station_Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=898 ;

--
-- Dumping data for table `policestation_tbl`
--

INSERT INTO `policestation_tbl` (`Station_Id`, `Station_Name`, `Address`, `City`, `Email`, `Mobile`, `UserName`, `Password`) VALUES
(897, 'kimaya', 'kimaya', 'nairobi', 'policpol@police.com', 888766, 'police', 'police');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE IF NOT EXISTS `registration` (
  `id` int(10) NOT NULL DEFAULT '0',
  `Full_Name` varchar(23) NOT NULL,
  `DOB` date NOT NULL,
  `datein` varchar(12) NOT NULL,
  `dateout` varchar(12) NOT NULL,
  `Address` varchar(20) NOT NULL,
  `County` varchar(20) NOT NULL,
  `Gender` varchar(20) NOT NULL,
  `Education` varchar(20) NOT NULL,
  `Marital` varchar(20) NOT NULL,
  `Offence` varchar(90) NOT NULL,
  `Sentence` varchar(13) NOT NULL,
  `File_num` varchar(12) NOT NULL,
  `prison` varchar(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `Full_Name`, `DOB`, `datein`, `dateout`, `Address`, `County`, `Gender`, `Education`, `Marital`, `Offence`, `Sentence`, `File_num`, `prison`) VALUES
(6567, 'Thomas Owino Kamau', '0000-00-00', '01/24/2011', '10/12/2016', 'Kiseria', '02', '01', '01', '04', 'i m oan', '01', '09078766', 'LANGATA'),
(9786575, 'Owino Kamau', '0000-00-00', '01/24/2014', '10/12/2016', '', '', '01', '04', '01', 'kill peopl', '05', '88999777', 'LANGATA'),
(89758536, 'WENJO', '2003-03-16', '2003-03-16', '2003-03-16', 'Kabamzqre', 'Nairobi', 'Male', 'Never', 'Divorced', 'Killing', '2 years', 'NBI-06654', '');

-- --------------------------------------------------------

--
-- Table structure for table `transfer`
--

CREATE TABLE IF NOT EXISTS `transfer` (
  `National_id` int(16) NOT NULL,
  `File_num` varchar(16) NOT NULL,
  `From_prison` varchar(17) NOT NULL,
  `To_prison` varchar(18) NOT NULL,
  `Dateoftransfer` date NOT NULL,
  PRIMARY KEY (`National_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transfer`
--

INSERT INTO `transfer` (`National_id`, `File_num`, `From_prison`, `To_prison`, `Dateoftransfer`) VALUES
(666544, '', 'LANGATA', 'SHIMOLATEWA', '2010-10-10'),
(966544, '', 'LANGATA', 'KODIAGA', '2010-10-10'),
(980977, 'NBI-89654', 'KODIAGA', 'KODIAGA', '2002-02-23');

-- --------------------------------------------------------

--
-- Table structure for table `user_tbl`
--

CREATE TABLE IF NOT EXISTS `user_tbl` (
  `User_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(20) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `City` varchar(20) NOT NULL,
  `Mobile` int(11) NOT NULL,
  `Email` varchar(20) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `BirthDate` date NOT NULL,
  `UserName` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `Station_Name` varchar(20) NOT NULL,
  `VerificationProof` varchar(100) NOT NULL,
  PRIMARY KEY (`User_Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `user_tbl`
--

INSERT INTO `user_tbl` (`User_Id`, `Name`, `Address`, `City`, `Mobile`, `Email`, `Gender`, `BirthDate`, `UserName`, `Password`, `Station_Name`, `VerificationProof`) VALUES
(1, 'user', 'user', 'nairobi', 988887, 'user@user.com', 'male', '2013-11-04', 'user', 'user', 'user', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `visitor`
--

CREATE TABLE IF NOT EXISTS `visitor` (
  `id` int(12) NOT NULL COMMENT 'national id',
  `fullname` varchar(25) NOT NULL,
  `address` varchar(25) NOT NULL,
  `dateofvisit` varchar(25) NOT NULL,
  `timein` varchar(24) NOT NULL,
  `timeout` varchar(23) NOT NULL,
  `relationship` varchar(25) NOT NULL,
  `telephone` int(13) NOT NULL,
  `prisoner` varchar(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `visitor`
--

INSERT INTO `visitor` (`id`, `fullname`, `address`, `dateofvisit`, `timein`, `timeout`, `relationship`, `telephone`, `prisoner`) VALUES
(89999089, 'Emmillie', 'Rongai', '2015-02-12', '12:00am', '5:00pm', 'other', 2147483647, 'Qin Yun');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
