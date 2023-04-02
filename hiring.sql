-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 02, 2023 at 02:48 PM
-- Server version: 5.5.39
-- PHP Version: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `hiring`
--

-- --------------------------------------------------------

--
-- Table structure for table `hr_tbl`
--

CREATE TABLE IF NOT EXISTS `hr_tbl` (
`Id` int(50) NOT NULL,
  `Hname` varchar(50) NOT NULL,
  `Hemail` varchar(50) NOT NULL,
  `Hmobile` varchar(50) NOT NULL,
  `Hpass` varchar(50) NOT NULL,
  `Hdesignation` varchar(50) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1002 ;

--
-- Dumping data for table `hr_tbl`
--

INSERT INTO `hr_tbl` (`Id`, `Hname`, `Hemail`, `Hmobile`, `Hpass`, `Hdesignation`) VALUES
(1001, 'Aakash Jain', 'aakash@gmail.com', '9945711008', '12345', 'Sales Executive');

-- --------------------------------------------------------

--
-- Table structure for table `job_tbl`
--

CREATE TABLE IF NOT EXISTS `job_tbl` (
`Id` int(50) NOT NULL,
  `Jname` varchar(50) NOT NULL,
  `Jdesc` varchar(50) NOT NULL,
  `Jsalary` varchar(50) NOT NULL,
  `Jqualities` varchar(50) NOT NULL,
  `Jexperience` varchar(50) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `job_tbl`
--

INSERT INTO `job_tbl` (`Id`, `Jname`, `Jdesc`, `Jsalary`, `Jqualities`, `Jexperience`) VALUES
(3, 'Junior Developer', 'Creative And Logically Strong , Good In DSA', '3-3.5', 'Agreeableness', 'Freshers '),
(4, 'Senior Developer ', 'Creative And Logically Strong , Good In DSA', '3-3.5 LPA', 'Openness', 'Min 3 Yrs'),
(5, 'Summer Internship', 'Java/C/C++', '3-3.5 LPA', 'Extraversion', '0');

-- --------------------------------------------------------

--
-- Table structure for table `personal_tbl`
--

CREATE TABLE IF NOT EXISTS `personal_tbl` (
  `Jid` int(50) NOT NULL,
`Id` int(50) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Date` date NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Contact` varchar(50) NOT NULL,
  `Location` varchar(50) NOT NULL,
  `Qaulification` varchar(50) NOT NULL,
  `O` int(30) NOT NULL,
  `C` int(30) NOT NULL,
  `E` int(30) NOT NULL,
  `A` int(30) NOT NULL,
  `N` int(30) NOT NULL,
  `Result` int(30) NOT NULL,
  `Status` varchar(50) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1011 ;

--
-- Dumping data for table `personal_tbl`
--

INSERT INTO `personal_tbl` (`Jid`, `Id`, `Name`, `Date`, `Email`, `Contact`, `Location`, `Qaulification`, `O`, `C`, `E`, `A`, `N`, `Result`, `Status`) VALUES
(0, 1001, 'Aakash Jain', '2002-05-11', 'aakashjain110502@gmail.com', '8080390571', '71 Subhash Colony, Shirpur', 'B.Tech(Computer Science)', 20, 20, 20, 20, 20, 100, 'ShortList'),
(0, 1002, 'Kaustubh Borse', '2001-12-31', 'kborse@gmail.com', '7666168610', 'Nandurbar', 'B.Tech(Computer Science)', 10, 12, 0, 8, 15, 45, 'Failed'),
(0, 1003, 'Priyal Ashok Jain', '2003-11-09', 'priyal@gmail.com', '95487100247', 'Ramesh vatika , Subhash Colony, Shirpur', 'B.Tech(Computer Science)', 12, 7, 20, 7, 20, 66, 'ShortList'),
(0, 1004, 'Maggi Patil', '2002-05-03', 'maggi@gmail.com', '9945711022', 'Chopda', 'B.Tech(Computer Science)', 10, 13, 20, 20, 20, 0, 'Pending'),
(0, 1005, 'Anil Bafna', '0000-00-00', 'anil@gmail.com', '9423288471', '71 Subhash Colony, Shirpur', 'B.Tech(Computer Science)', 0, 0, 0, 0, 0, 0, 'Pending'),
(0, 1006, 'Ankita Jain', '1993-12-19', 'ankita@gmail.com', '9823598271', '90 Subhash Colony, Shirpur', '', 20, 9, 20, 20, 5, 20, 'ShortList'),
(0, 1007, 'Tejas Shimpi', '2022-08-28', 'shimpit45@gmail.com', '7666168610', 'Chopda', 'B.Tech(Computer Science)', 0, 0, 0, 0, 0, 0, 'Pending'),
(4, 1008, 'Gauresh Suryvanshi', '2022-08-06', 'gauresh@gmail.com', '9945711008', 'Chopda', 'B.Tech(Computer Science)', 20, 9, 20, 20, 16, 20, 'ShortList'),
(5, 1009, 'Kushal Jain', '2002-05-15', 'kushal@gmail.com', '9925784566', 'Shrinagar', 'B.Tech(Computer Science)', 9, 9, 5, 9, 13, 0, 'Pending'),
(4, 1010, 'Tejas Shimpi', '2022-10-06', 'admin@gmail.com', '95487100247', 'Nandurbar', 'B.Tech(Computer Science)', 0, 0, 0, 0, 0, 0, 'Pending');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hr_tbl`
--
ALTER TABLE `hr_tbl`
 ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `job_tbl`
--
ALTER TABLE `job_tbl`
 ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `personal_tbl`
--
ALTER TABLE `personal_tbl`
 ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `hr_tbl`
--
ALTER TABLE `hr_tbl`
MODIFY `Id` int(50) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1002;
--
-- AUTO_INCREMENT for table `job_tbl`
--
ALTER TABLE `job_tbl`
MODIFY `Id` int(50) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `personal_tbl`
--
ALTER TABLE `personal_tbl`
MODIFY `Id` int(50) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1011;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
