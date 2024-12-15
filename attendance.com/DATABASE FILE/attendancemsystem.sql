-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 17, 2024 at 04:07 PM
-- Server version: 8.0.27
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `attendancemsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

DROP TABLE IF EXISTS `tbladmin`;
CREATE TABLE IF NOT EXISTS `tbladmin` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `emailAddress` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`Id`, `firstName`, `lastName`, `emailAddress`, `password`) VALUES
(1, 'DIEUMERCI ', 'MIKALA ', 'mikala@gmail.com', 'D00F5D5217896FB7FD601412CB890830');

-- --------------------------------------------------------

--
-- Table structure for table `tblattendance`
--

DROP TABLE IF EXISTS `tblattendance`;
CREATE TABLE IF NOT EXISTS `tblattendance` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `admissionNo` varchar(255) NOT NULL,
  `classId` varchar(10) NOT NULL,
  `classArmId` varchar(10) NOT NULL,
  `sessionTermId` varchar(10) NOT NULL,
  `status` varchar(10) NOT NULL,
  `dateTimeTaken` varchar(20) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblattendance`
--

INSERT INTO `tblattendance` (`Id`, `admissionNo`, `classId`, `classArmId`, `sessionTermId`, `status`, `dateTimeTaken`) VALUES
(1, 'AD001', '1', '1', '1', '1', '2024-02-17');

-- --------------------------------------------------------

--
-- Table structure for table `tblclass`
--

DROP TABLE IF EXISTS `tblclass`;
CREATE TABLE IF NOT EXISTS `tblclass` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `className` varchar(255) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblclass`
--

INSERT INTO `tblclass` (`Id`, `className`) VALUES
(1, 's.1'),
(2, 'S.2'),
(3, 'S.3'),
(4, 'S.4');

-- --------------------------------------------------------

--
-- Table structure for table `tblclassarms`
--

DROP TABLE IF EXISTS `tblclassarms`;
CREATE TABLE IF NOT EXISTS `tblclassarms` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `classId` varchar(10) NOT NULL,
  `classArmName` varchar(255) NOT NULL,
  `isAssigned` varchar(10) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblclassarms`
--

INSERT INTO `tblclassarms` (`Id`, `classId`, `classArmName`, `isAssigned`) VALUES
(1, '1', 'A', '1'),
(2, '1', 'B', '0'),
(3, '2', 'A', '0'),
(4, '2', 'B', '0');

-- --------------------------------------------------------

--
-- Table structure for table `tblclassteacher`
--

DROP TABLE IF EXISTS `tblclassteacher`;
CREATE TABLE IF NOT EXISTS `tblclassteacher` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `emailAddress` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phoneNo` varchar(50) NOT NULL,
  `classId` varchar(10) NOT NULL,
  `classArmId` varchar(10) NOT NULL,
  `dateCreated` varchar(50) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblclassteacher`
--

INSERT INTO `tblclassteacher` (`Id`, `firstName`, `lastName`, `emailAddress`, `password`, `phoneNo`, `classId`, `classArmId`, `dateCreated`) VALUES
(2, 'Mikara', 'Bonguja', 'mikala@gmail.com', '32250170a0dca92d53ec9624f336ca24', '+256 781 533314', '1', '1', '2024-02-17');

-- --------------------------------------------------------

--
-- Table structure for table `tblsessionterm`
--

DROP TABLE IF EXISTS `tblsessionterm`;
CREATE TABLE IF NOT EXISTS `tblsessionterm` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `sessionName` varchar(50) NOT NULL,
  `termId` varchar(50) NOT NULL,
  `isActive` varchar(10) NOT NULL,
  `dateCreated` varchar(50) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsessionterm`
--

INSERT INTO `tblsessionterm` (`Id`, `sessionName`, `termId`, `isActive`, `dateCreated`) VALUES
(1, 'SST ', '1', '1', '2024-02-17'),
(2, 'Maths', '1', '0', '2024-02-17'),
(3, 'Goegraphy', '1', '0', '2024-02-17'),
(4, 'Agriculture', '1', '0', '2024-02-17');

-- --------------------------------------------------------

--
-- Table structure for table `tblstudents`
--

DROP TABLE IF EXISTS `tblstudents`;
CREATE TABLE IF NOT EXISTS `tblstudents` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `otherName` varchar(255) NOT NULL,
  `admissionNumber` varchar(255) NOT NULL,
  `password` varchar(50) NOT NULL,
  `classId` varchar(10) NOT NULL,
  `classArmId` varchar(10) NOT NULL,
  `dateCreated` varchar(50) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblstudents`
--

INSERT INTO `tblstudents` (`Id`, `firstName`, `lastName`, `otherName`, `admissionNumber`, `password`, `classId`, `classArmId`, `dateCreated`) VALUES
(1, 'lucky', 'Tumuhimbise', 'Clever', 'AD001', '12345', '1', '1', '2024-02-17');

-- --------------------------------------------------------

--
-- Table structure for table `tblterm`
--

DROP TABLE IF EXISTS `tblterm`;
CREATE TABLE IF NOT EXISTS `tblterm` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `termName` varchar(20) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblterm`
--

INSERT INTO `tblterm` (`Id`, `termName`) VALUES
(1, 'First Term'),
(2, 'Second Term'),
(3, 'Third Term');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
