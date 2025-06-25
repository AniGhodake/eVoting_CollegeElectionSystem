-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 03, 2021 at 12:56 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.2.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `voting`
--

-- --------------------------------------------------------

--
-- Table structure for table `candidate`
--

CREATE TABLE `candidate` (
  `candidate_id` int(10) NOT NULL,
  `position` varchar(25) NOT NULL,
  `firstname` varchar(20) NOT NULL,
  `lastname` varchar(20) NOT NULL,
  `year` varchar(15) NOT NULL,
  `date` date NOT NULL,
  `gender` varchar(7) NOT NULL,
  `img` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `candidate`
--

INSERT INTO `candidate` (`candidate_id`, `position`, `firstname`, `lastname`, `year`, `date`, `gender`, `img`) VALUES
(36, 'GENERAL SECRETARY (GS)', 'Hrushikesh', 'salgaonkar', '1st Year', '2020-02-05', 'Male', 'upload/male3.jpg'),
(37, 'GENERAL SECRETARY (GS)', 'abc', 'xyz', '1st Year', '2021-01-01', 'Male', 'upload/male3.jpg'),
(38, 'UNIVERSITY REPRESENTATIVE', 'shubham', 'Thanage', '2nd Year', '2020-06-17', 'Male', 'upload/male3.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(10) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` varchar(15) NOT NULL,
  `firstname` varchar(20) NOT NULL,
  `lastname` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `username`, `password`, `firstname`, `lastname`) VALUES
(2, 'shubh', 'shubh', 'Hrushikesh', 'salgaonkar'),
(6, 'admin', 'admin', 'Shubham', 'Thanage');

-- --------------------------------------------------------

--
-- Table structure for table `voters`
--

CREATE TABLE `voters` (
  `voters_id` int(10) NOT NULL,
  `id_number` int(10) NOT NULL,
  `password` varchar(8) NOT NULL,
  `firstname` varchar(20) NOT NULL,
  `lastname` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `date` date NOT NULL,
  `branch` varchar(15) NOT NULL,
  `year_level` varchar(15) NOT NULL,
  `status` varchar(8) NOT NULL,
  `account` varchar(8) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `voters`
--

INSERT INTO `voters` (`voters_id`, `id_number`, `password`, `firstname`, `lastname`, `email`, `date`, `branch`, `year_level`, `status`, `account`) VALUES
(34, 8989, 'jO71gVAC', 'Shubham', 'Thanage', 'shubhamthanage1@gmail.com', '2020-06-10', 'MBA', '2nd Year', 'Unvoted', ''),
(35, 8787, 'Xdo7R2AC', 'dada', 'mule', 'abc@gmail.com', '2021-11-10', 'MCA', '1st Year', 'Unvoted', ''),
(33, 6767, '1caJQP1U', 'ganesh', 'patil', 'xyz@gmail.com', '2021-01-01', 'M.TECH', '3rd Year', 'Unvoted', ''),
(32, 1111, 'JwCNkkvD', 'hrushi', 'Salgaonkar', 'salgaonkar.hrushi@gmail.com', '2020-12-29', 'MCA', '3rd Year', 'Unvoted', '');

-- --------------------------------------------------------

--
-- Table structure for table `votes`
--

CREATE TABLE `votes` (
  `vote_id` int(10) NOT NULL,
  `candidate_id` int(10) NOT NULL,
  `voters_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `votes`
--

INSERT INTO `votes` (`vote_id`, `candidate_id`, `voters_id`) VALUES
(26, 0, 5),
(27, 0, 5),
(28, 0, 5),
(29, 0, 5),
(30, 0, 5),
(31, 0, 5),
(32, 0, 5),
(33, 0, 5),
(34, 1, 3),
(35, 0, 3),
(36, 0, 3),
(37, 0, 3),
(38, 0, 3),
(39, 0, 3),
(40, 0, 3),
(41, 0, 3),
(42, 0, 3),
(43, 0, 3),
(44, 0, 3),
(45, 1, 4),
(46, 0, 4),
(47, 0, 4),
(48, 0, 4),
(49, 0, 4),
(50, 0, 4),
(51, 0, 4),
(52, 0, 4),
(53, 0, 4),
(54, 0, 4),
(55, 0, 4),
(56, 1, 6),
(57, 0, 6),
(58, 0, 6),
(59, 0, 6),
(60, 0, 6),
(61, 0, 6),
(62, 0, 6),
(63, 0, 6),
(64, 0, 6),
(65, 0, 6),
(66, 0, 6),
(67, 0, 12),
(68, 0, 12),
(69, 0, 12),
(70, 0, 12),
(71, 0, 12),
(72, 0, 12),
(73, 5, 14),
(74, 0, 14),
(75, 0, 14),
(76, 0, 14),
(77, 0, 14),
(78, 0, 14),
(79, 5, 9),
(80, 0, 9),
(81, 0, 9),
(82, 0, 9),
(83, 0, 9),
(84, 0, 9),
(85, 5, 8),
(86, 0, 8),
(87, 0, 8),
(88, 0, 8),
(89, 0, 8),
(90, 0, 8),
(91, 0, 20),
(92, 0, 20),
(93, 0, 20),
(94, 0, 20),
(95, 0, 20),
(96, 12, 20),
(97, 0, 21),
(98, 6, 21),
(99, 0, 21),
(100, 13, 21),
(101, 0, 21),
(102, 0, 21),
(103, 0, 25),
(104, 0, 25),
(105, 0, 25),
(106, 24, 25),
(107, 0, 25),
(108, 0, 25);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `candidate`
--
ALTER TABLE `candidate`
  ADD PRIMARY KEY (`candidate_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `voters`
--
ALTER TABLE `voters`
  ADD PRIMARY KEY (`voters_id`);

--
-- Indexes for table `votes`
--
ALTER TABLE `votes`
  ADD PRIMARY KEY (`vote_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `candidate`
--
ALTER TABLE `candidate`
  MODIFY `candidate_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `voters`
--
ALTER TABLE `voters`
  MODIFY `voters_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `votes`
--
ALTER TABLE `votes`
  MODIFY `vote_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
