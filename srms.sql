-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 06, 2023 at 06:04 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `srms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', 'f925916e2754e5e03f75dd58a5733251', '2022-01-01 10:30:57');

-- --------------------------------------------------------

--
-- Table structure for table `tblclasses`
--

CREATE TABLE `tblclasses` (
  `id` int(11) NOT NULL,
  `ClassName` varchar(80) DEFAULT NULL,
  `ClassNameNumeric` varchar(40) DEFAULT NULL,
  `Section` varchar(5) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblclasses`
--

INSERT INTO `tblclasses` (`id`, `ClassName`, `ClassNameNumeric`, `Section`, `CreationDate`, `UpdationDate`) VALUES
(1, 'FY IT (1St sem)', '1', NULL, '2023-03-04 04:14:57', NULL),
(3, 'FY IT (2nd sem)', '2', NULL, '2023-03-04 04:38:30', NULL),
(4, 'SY IT(3rd sem)', '3', NULL, '2023-03-04 04:39:29', NULL),
(5, 'SY IT(4th sem)', '4', NULL, '2023-03-04 04:39:44', NULL),
(9, 'SY IT ', 'sem-4', NULL, '2023-03-04 05:55:36', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblnotice`
--

CREATE TABLE `tblnotice` (
  `id` int(11) NOT NULL,
  `noticeTitle` varchar(255) DEFAULT NULL,
  `noticeDetails` mediumtext,
  `postingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblnotice`
--

INSERT INTO `tblnotice` (`id`, `noticeTitle`, `noticeDetails`, `postingDate`) VALUES
(2, 'Notice regarding result Delearation', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Adipiscing elit ut aliquam purus. Vel risus commodo viverra maecenas. Et netus et malesuada fames ac turpis egestas sed. Cursus eget nunc scelerisque viverra mauris in aliquam sem fringilla. Ornare arcu odio ut sem nulla pharetra diam. Vel pharetra vel turpis nunc eget lorem dolor sed. Velit ut tortor pretium viverra suspendisse. In ornare quam viverra orci sagittis eu. Viverra tellus in hac habitasse. Donec massa sapien faucibus et molestie. Libero justo laoreet sit amet cursus sit amet dictum. Dignissim diam quis enim lobortis scelerisque fermentum dui.\r\n\r\nEget nulla facilisi etiam dignissim. Quisque non tellus orci ac. Amet cursus sit amet dictum sit amet justo donec. Interdum velit euismod in pellentesque massa. Condimentum lacinia quis vel eros donec ac odio. Magna eget est lorem ipsum dolor. Bibendum at varius vel pharetra vel turpis nunc eget lorem. Pellentesque adipiscing commodo elit at imperdiet dui accumsan sit amet. Maecenas accumsan lacus vel facilisis volutpat est velit egestas dui. Massa tincidunt dui ut ornare lectus sit amet est placerat. Nisi quis eleifend quam adipiscing vitae.', '2022-01-01 14:34:58'),
(3, 'Test Notice', 'This is for testing purposes only.  This is for testing purposes only.  This is for testing purposes only.  This is for testing purposes only.  This is for testing purposes only.  This is for testing purposes only.  This is for testing purposes only.  This is for testing purposes only.  This is for testing purposes only.  This is for testing purposes only.  This is for testing purposes only.  This is for testing purposes only.  This is for testing purposes only.  This is for testing purposes only.  This is for testing purposes only.  This is for testing purposes only.  This is for testing purposes only.  ', '2022-01-01 14:48:32');

-- --------------------------------------------------------

--
-- Table structure for table `tblresult`
--

CREATE TABLE `tblresult` (
  `id` int(11) NOT NULL,
  `StudentId` int(11) DEFAULT NULL,
  `ClassId` int(11) DEFAULT NULL,
  `SubjectId` int(11) DEFAULT NULL,
  `marks` int(11) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblresult`
--

INSERT INTO `tblresult` (`id`, `StudentId`, `ClassId`, `SubjectId`, `marks`, `PostingDate`, `UpdationDate`) VALUES
(2, 1, 1, 2, 100, '2022-01-01 10:30:57', NULL),
(3, 1, 1, 1, 80, '2022-01-01 10:30:57', NULL),
(4, 1, 1, 5, 78, '2022-01-01 10:30:57', NULL),
(5, 1, 1, 4, 60, '2022-01-01 10:30:57', NULL),
(6, 2, 4, 2, 90, '2022-01-01 10:30:57', NULL),
(7, 2, 4, 1, 75, '2022-01-01 10:30:57', NULL),
(8, 2, 4, 5, 56, '2022-01-01 10:30:57', NULL),
(9, 2, 4, 4, 80, '2022-01-01 10:30:57', NULL),
(10, 4, 7, 2, 54, '2022-01-01 10:30:57', NULL),
(11, 4, 7, 1, 85, '2022-01-01 10:30:57', NULL),
(12, 4, 7, 5, 55, '2022-01-01 10:30:57', NULL),
(13, 4, 7, 7, 65, '2022-01-01 10:30:57', NULL),
(14, 5, 8, 2, 75, '2022-01-01 10:30:57', NULL),
(15, 5, 8, 1, 56, '2022-01-01 10:30:57', NULL),
(16, 5, 8, 5, 52, '2022-01-01 10:30:57', NULL),
(17, 5, 8, 4, 80, '2022-01-01 10:30:57', NULL),
(18, 6, 9, 8, 80, '2022-01-01 15:20:18', NULL),
(19, 6, 9, 8, 70, '2022-01-01 15:20:18', NULL),
(20, 6, 9, 2, 90, '2022-01-01 15:20:18', NULL),
(21, 6, 9, 1, 60, '2022-01-01 15:20:18', NULL),
(22, 7, 2, 5, 56, '2023-03-03 00:21:55', NULL),
(23, 8, 1, 6, 65, '2023-03-03 01:42:31', NULL),
(24, 8, 1, 6, 25, '2023-03-03 01:42:31', NULL),
(25, 8, 1, 2, 62, '2023-03-03 01:42:31', NULL),
(26, 8, 1, 2, 25, '2023-03-03 01:42:31', NULL),
(27, 8, 1, 2, 25, '2023-03-03 01:42:31', NULL),
(28, 8, 1, 5, 62, '2023-03-03 01:42:31', NULL),
(29, 8, 1, 5, 64, '2023-03-03 01:42:31', NULL),
(30, 8, 1, 5, 62, '2023-03-03 01:42:31', NULL),
(31, 8, 1, 1, 64, '2023-03-03 01:42:31', NULL),
(32, 8, 1, 1, 62, '2023-03-03 01:42:31', NULL),
(33, 8, 1, 4, 62, '2023-03-03 01:42:31', NULL),
(34, 8, 1, 4, 6, '2023-03-03 01:42:31', NULL),
(35, 8, 1, 4, 2, '2023-03-03 01:42:31', NULL),
(36, 10, 2, 6, 65, '2023-03-04 04:25:29', NULL),
(37, 10, 2, 2, 56, '2023-03-04 04:25:29', NULL),
(38, 10, 2, 5, 65, '2023-03-04 04:25:29', NULL),
(39, 10, 2, 1, 56, '2023-03-04 04:25:29', NULL),
(40, 10, 2, 4, 65, '2023-03-04 04:25:29', NULL),
(41, 14, 4, 18, 56, '2023-03-04 04:50:27', NULL),
(42, 14, 4, 18, 65, '2023-03-04 04:50:27', NULL),
(43, 14, 4, 16, 45, '2023-03-04 04:50:27', NULL),
(44, 14, 4, 15, 62, '2023-03-04 04:50:27', NULL),
(45, 14, 4, 17, 46, '2023-03-04 04:50:27', NULL),
(46, 15, 4, 18, 56, '2023-03-04 04:59:31', NULL),
(47, 15, 4, 18, 82, '2023-03-04 04:59:31', NULL),
(48, 15, 4, 16, 78, '2023-03-04 04:59:31', NULL),
(49, 15, 4, 15, 87, '2023-03-04 04:59:31', NULL),
(50, 15, 4, 17, 95, '2023-03-04 04:59:31', NULL),
(51, 11, 1, 6, 56, '2023-03-04 05:17:25', NULL),
(52, 11, 1, 2, 64, '2023-03-04 05:17:25', NULL),
(53, 11, 1, 5, 84, '2023-03-04 05:17:25', NULL),
(54, 11, 1, 1, 68, '2023-03-04 05:17:25', NULL),
(55, 11, 1, 4, 89, '2023-03-04 05:17:25', NULL),
(56, 17, 6, 23, 56, '2023-03-04 05:50:33', NULL),
(57, 17, 6, 21, 65, '2023-03-04 05:50:33', NULL),
(58, 17, 6, 19, 55, '2023-03-04 05:50:33', NULL),
(59, 17, 6, 20, 65, '2023-03-04 05:50:33', NULL),
(60, 17, 6, 22, 56, '2023-03-04 05:50:33', NULL),
(61, 18, 9, 23, 65, '2023-03-04 05:57:29', NULL),
(62, 18, 9, 21, 56, '2023-03-04 05:57:29', NULL),
(63, 18, 9, 19, 85, '2023-03-04 05:57:29', NULL),
(64, 18, 9, 20, 68, '2023-03-04 05:57:29', NULL),
(65, 18, 9, 22, 45, '2023-03-04 05:57:29', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblstudents`
--

CREATE TABLE `tblstudents` (
  `StudentId` int(11) NOT NULL,
  `StudentName` varchar(100) DEFAULT NULL,
  `RollId` varchar(100) DEFAULT NULL,
  `StudentEmail` varchar(100) DEFAULT NULL,
  `Gender` varchar(10) DEFAULT NULL,
  `DOB` varchar(100) DEFAULT NULL,
  `ClassId` int(11) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL,
  `Status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblstudents`
--

INSERT INTO `tblstudents` (`StudentId`, `StudentName`, `RollId`, `StudentEmail`, `Gender`, `DOB`, `ClassId`, `RegDate`, `UpdationDate`, `Status`) VALUES
(10, 'Amaan Shaikh', '4541685456218546', 'IT', 'Male', '2000-02-22', 2, '2023-03-04 04:25:05', NULL, 1),
(11, 'Saikh Amaan', '2020016400223161', 'IT', 'Male', '2001-02-02', 1, '2023-03-04 04:35:50', NULL, 1),
(12, 'Patel Vishal', '2020016400181336', 'IT', 'Male', '2002-02-22', 1, '2023-03-04 04:37:35', NULL, 1),
(13, 'Khan Aaftab', '2020016400196645', 'IT', 'Male', '2000-02-06', 3, '2023-03-04 04:41:22', NULL, 1),
(14, 'Gupta Anish', '2020016400196653', 'IT', 'Male', '2000-02-05', 4, '2023-03-04 04:50:06', NULL, 1),
(15, 'Shaikh Amaan', '2020016400223161', 'IT', 'Male', '2001-02-05', 4, '2023-03-04 04:58:50', NULL, 1),
(16, 'Patil Anmol', '2020016400217141', 'IT', 'Male', '2001-02-05', 5, '2023-03-04 05:25:48', NULL, 1),
(17, 'om', ' 124444444444444', 'IT', 'Male', '2001-02-08', 6, '2023-03-04 05:49:17', NULL, 1),
(18, 'Patil Anmol', '2020016400217141', 'IT', 'Male', '2001-02-05', 9, '2023-03-04 05:57:11', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblsubjectcombination`
--

CREATE TABLE `tblsubjectcombination` (
  `id` int(11) NOT NULL,
  `ClassId` int(11) DEFAULT NULL,
  `SubjectId` int(11) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Updationdate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsubjectcombination`
--

INSERT INTO `tblsubjectcombination` (`id`, `ClassId`, `SubjectId`, `status`, `CreationDate`, `Updationdate`) VALUES
(42, 2, 1, 1, '2023-03-04 04:21:50', NULL),
(43, 2, 2, 1, '2023-03-04 04:21:54', NULL),
(44, 2, 4, 1, '2023-03-04 04:21:58', NULL),
(45, 2, 5, 1, '2023-03-04 04:22:03', NULL),
(46, 2, 6, 1, '2023-03-04 04:22:07', NULL),
(47, 3, 7, 1, '2023-03-04 04:42:15', NULL),
(48, 3, 8, 1, '2023-03-04 04:42:21', NULL),
(49, 3, 11, 1, '2023-03-04 04:42:25', NULL),
(50, 3, 12, 1, '2023-03-04 04:42:31', NULL),
(52, 1, 1, 1, '2023-03-04 04:43:49', NULL),
(53, 1, 2, 1, '2023-03-04 04:44:09', NULL),
(54, 1, 4, 1, '2023-03-04 04:44:15', NULL),
(55, 1, 5, 1, '2023-03-04 04:44:20', NULL),
(56, 1, 6, 1, '2023-03-04 04:44:25', NULL),
(58, 4, 15, 1, '2023-03-04 04:46:27', NULL),
(59, 4, 16, 1, '2023-03-04 04:46:33', NULL),
(60, 4, 18, 0, '2023-03-04 04:46:39', '2023-03-04 05:00:11'),
(61, 4, 18, 1, '2023-03-04 04:46:44', '2023-03-04 05:00:24'),
(62, 4, 17, 1, '2023-03-04 04:47:21', NULL),
(63, 4, 14, 1, '2023-03-04 04:56:27', NULL),
(64, 6, 19, 1, '2023-03-04 05:49:57', NULL),
(65, 6, 20, 1, '2023-03-04 05:50:02', NULL),
(66, 6, 21, 1, '2023-03-04 05:50:05', NULL),
(67, 6, 22, 1, '2023-03-04 05:50:11', NULL),
(68, 6, 23, 1, '2023-03-04 05:50:14', NULL),
(69, 9, 19, 1, '2023-03-04 05:55:59', NULL),
(70, 9, 20, 1, '2023-03-04 05:56:02', NULL),
(71, 9, 21, 1, '2023-03-04 05:56:06', NULL),
(72, 9, 22, 1, '2023-03-04 05:56:09', NULL),
(73, 9, 23, 1, '2023-03-04 05:56:16', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblsubjects`
--

CREATE TABLE `tblsubjects` (
  `id` int(11) NOT NULL,
  `SubjectName` varchar(100) NOT NULL,
  `SubjectCode` varchar(100) DEFAULT NULL,
  `Creationdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsubjects`
--

INSERT INTO `tblsubjects` (`id`, `SubjectName`, `SubjectCode`, `Creationdate`, `UpdationDate`) VALUES
(1, 'Imperative Programming	', 'USIT101', '2022-01-01 10:30:57', NULL),
(2, 'Digital Electronics	', 'USIT102', '2022-01-01 10:30:57', NULL),
(4, 'Operating Systems	', 'USIT103', '2022-01-01 10:30:57', NULL),
(5, 'Discrete Mathematics	', 'USIT104', '2022-01-01 10:30:57', NULL),
(6, 'Communication Skills	', 'USIT105', '2022-01-01 10:30:57', NULL),
(7, 'Object Oriented Programming	', 'USIT201', '2022-01-01 10:30:57', NULL),
(8, 'Microprocessor Architecture	', 'USIT202', '2022-01-01 10:30:57', NULL),
(11, 'Web Programming	', 'USIT203', '2023-03-03 00:31:39', NULL),
(12, 'Numerical and Statistical Methods	', 'USIT204', '2023-03-03 00:31:53', NULL),
(13, 'Green Computing	', 'USIT205', '2023-03-03 00:32:01', NULL),
(14, 'Python Programming	', 'USIT301', '2023-03-03 00:32:23', NULL),
(15, 'Data Structures	', 'USIT302', '2023-03-03 00:32:34', NULL),
(16, 'Computer Networks	', 'USIT303', '2023-03-03 00:32:42', NULL),
(17, 'Database Management Systems	', 'USIT304', '2023-03-03 00:32:53', NULL),
(18, 'Applied Mathematics	', 'USIT305', '2023-03-03 00:33:02', NULL),
(19, 'Core Java	', 'USIT401', '2023-03-03 00:33:17', NULL),
(20, 'Introduction to Embedded Systems	', 'USIT402', '2023-03-03 00:33:26', NULL),
(21, 'Computer Oriented Statistical Techniques	', 'USIT403', '2023-03-03 00:33:34', NULL),
(22, 'Software Engineering	', 'USIT404', '2023-03-03 00:33:43', NULL),
(23, 'Computer Graphics and Animation	', 'USIT405', '2023-03-03 00:33:50', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblclasses`
--
ALTER TABLE `tblclasses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblnotice`
--
ALTER TABLE `tblnotice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblresult`
--
ALTER TABLE `tblresult`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblstudents`
--
ALTER TABLE `tblstudents`
  ADD PRIMARY KEY (`StudentId`);

--
-- Indexes for table `tblsubjectcombination`
--
ALTER TABLE `tblsubjectcombination`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblsubjects`
--
ALTER TABLE `tblsubjects`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblclasses`
--
ALTER TABLE `tblclasses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tblnotice`
--
ALTER TABLE `tblnotice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblresult`
--
ALTER TABLE `tblresult`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `tblstudents`
--
ALTER TABLE `tblstudents`
  MODIFY `StudentId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tblsubjectcombination`
--
ALTER TABLE `tblsubjectcombination`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `tblsubjects`
--
ALTER TABLE `tblsubjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
