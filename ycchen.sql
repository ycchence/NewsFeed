-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 16, 2018 at 11:00 PM
-- Server version: 5.7.17-log
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ycchen`
--

-- --------------------------------------------------------

--
-- Table structure for table `ycchen`
--

CREATE TABLE `ycchen` (
  `key` int(11) NOT NULL,
  `posttime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id` text NOT NULL,
  `comment` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ycchen`
--

INSERT INTO `ycchen` (`key`, `posttime`, `id`, `comment`) VALUES
(101, '2018-03-16 20:28:48', 'Text News', 'Hi there, You can use Filter button with empty to come back.'),
(102, '2018-03-16 20:46:56', 'Test News', 'Hi there'),
(103, '2018-03-16 20:47:16', 'Testing News', 'Hi there'),
(104, '2018-03-16 22:14:48', 'Testing News 2', 'Finished!!!');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ycchen`
--
ALTER TABLE `ycchen`
  ADD PRIMARY KEY (`key`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ycchen`
--
ALTER TABLE `ycchen`
  MODIFY `key` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
