-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 11, 2021 at 05:27 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cpmsphp`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `up_time` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `username`, `password`, `up_time`) VALUES
(1, 'Will Williams', 'admin', 'admin', 'May, Saturday, 05:24 pm');

-- --------------------------------------------------------

--
-- Table structure for table `circle`
--

CREATE TABLE `circle` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(20) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `circle`
--

INSERT INTO `circle` (`id`, `name`, `username`, `email`, `password`, `date`) VALUES
(1, 'Demo', 'demo', 'demo@demo.com', 'password', '2021-05-10'),
(2, 'Liam Johnson', 'liam', 'liam@gmail.com', 'password', '2021-05-11'),
(3, 'Erma Anderson', 'erma', 'erma@gmail.com', 'password', '2021-05-11'),
(4, 'Jamie Morgan', 'jamie', 'jamie@gmail.com', 'password', '2021-05-11'),
(5, 'Karen Owen', 'karen', 'karen@gmail.com', 'password', '2021-05-11'),
(6, 'Charlie Bruce', 'charlie', 'charlie@gmail.com', 'password', '2021-05-11'),
(7, 'Charles Rousseau', 'charles', 'charles58@gmail.com', 'password', '2021-05-11'),
(8, 'George Carlson', 'george', 'george@gmail.com', 'password', '2021-05-11');

-- --------------------------------------------------------

--
-- Table structure for table `cmp_log`
--

CREATE TABLE `cmp_log` (
  `id` int(11) NOT NULL,
  `user_id` int(3) NOT NULL,
  `name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(80) NOT NULL,
  `phone no` varchar(10) NOT NULL,
  `subject` varchar(150) NOT NULL,
  `complain` varchar(300) NOT NULL,
  `ref_no` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cmp_log`
--

INSERT INTO `cmp_log` (`id`, `user_id`, `name`, `username`, `email`, `phone no`, `subject`, `complain`, `ref_no`) VALUES
(1, 1, 'Demo', 'demo', 'demo@demo.com', '7854125400', 'Test 1', 'Test1 with demo', 1747926),
(2, 2, 'Liam Johnson', 'liam', 'liam@gmail.com', '8520001269', 'Customer Services Department', 'Dear Sir/Madam, I\'ve recently ordered a new pair of soccer cleats (item #69694582) from your website last week (May 7th). I received the order on May 10th, but unfortunately when I opened it, I saw that the cleats were used. Cleats were dirty enough and there was a small tear in front part where the', 1845767),
(3, 3, 'Erma Anderson', 'erma', 'erma@gmail.com', '1547800002', 'Complaint Letter To Company', 'I am disappointed with your company\'s service because the provided service was much unsatisfactory as . . . . . . . . . . . . . . . .', 689799),
(4, 4, 'Jamie Morgan', 'jamie', 'jamie@gmail.com', '3540002158', 'Regarding Excessive Fees', 'Dear Sir/Madam, On May 10th I enrolled in a debt repayment plan with company. The purpose of the repayment plan was to help me repay my debts quickly and efficiently. Company\'s fee structure of explanation of fee structure is excessive and not in the best interest of the client. These fees were not ', 2993246),
(5, 8, 'George Carlson', 'george', 'george@gmail.com', '3450002547', 'Regarding Services', 'Dear Sir/Madam, I bought an item (#ASTRO58_D7) last week, I\'ve also attached a copy of my receipt for your kind information. I\'m writing to you because the service was not carried out with necessary skill, care and diligence. Used materials were not of merchantable quality. I also rang and spoke to ', 1018191);

-- --------------------------------------------------------

--
-- Table structure for table `dummy`
--

CREATE TABLE `dummy` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `user_name` varchar(20) NOT NULL,
  `email` varchar(170) NOT NULL,
  `post` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dummy`
--

INSERT INTO `dummy` (`id`, `name`, `user_name`, `email`, `post`, `password`, `time`) VALUES
(1, 'Eng', 'eng', 'eng@gmail.com', 'Demo', 'password', '2021-05-11 13:25:23'),
(2, 'Wendy Foster', 'wendy', 'wendy@gmail.com', 'CIM', 'password', '2021-05-11 14:39:14'),
(3, 'John Russel', 'john', 'johnr@gmail.com', 'CSCP', 'password', '2021-05-11 14:41:51');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `subject` varchar(40) NOT NULL,
  `story` text NOT NULL,
  `session_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `subject`, `story`, `session_name`) VALUES
(1, 'Test Title', 'Test Story. . .', 'admin'),
(2, 'Demo Test 2', 'Story 2, Story 2', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE `test` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `phno` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test`
--

INSERT INTO `test` (`id`, `name`, `phno`) VALUES
(1, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `view_cmp`
--

CREATE TABLE `view_cmp` (
  `id` int(11) NOT NULL,
  `ref_no` varchar(20) NOT NULL,
  `name` varchar(220) NOT NULL,
  `email` varchar(220) NOT NULL,
  `phone no` varchar(220) NOT NULL,
  `subject` varchar(220) NOT NULL,
  `complain` text NOT NULL,
  `dummy` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `view_cmp`
--

INSERT INTO `view_cmp` (`id`, `ref_no`, `name`, `email`, `phone no`, `subject`, `complain`, `dummy`) VALUES
(3, '1747926', 'Demo', 'demo@demo.com', '7854125400', 'Test 1', 'Test1 with demo', 'Eng '),
(4, '1845767', 'Liam Johnson', 'liam@gmail.com', '8520001269', 'Customer Services Department', 'Dear Sir/Madam, I\'ve recently ordered a new pair of soccer cleats (item #69694582) from your website last week (May 7th). I received the order on May 10th, but unfortunately when I opened it, I saw that the cleats were used. Cleats were dirty enough and there was a small tear in front part where the', 'Wendy Foster '),
(5, '1018191', 'George Carlson', 'george@gmail.com', '3450002547', 'Regarding Services', 'Dear Sir/Madam, I bought an item (#ASTRO58_D7) last week, I\'ve also attached a copy of my receipt for your kind information. I\'m writing to you because the service was not carried out with necessary skill, care and diligence. Used materials were not of merchantable quality. I also rang and spoke to ', 'John Russel ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `circle`
--
ALTER TABLE `circle`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cmp_log`
--
ALTER TABLE `cmp_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dummy`
--
ALTER TABLE `dummy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `view_cmp`
--
ALTER TABLE `view_cmp`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `circle`
--
ALTER TABLE `circle`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `cmp_log`
--
ALTER TABLE `cmp_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `dummy`
--
ALTER TABLE `dummy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `test`
--
ALTER TABLE `test`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `view_cmp`
--
ALTER TABLE `view_cmp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
