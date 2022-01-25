-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 29, 2020 at 06:46 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `news-site`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `post` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`, `post`) VALUES
(34, 'Sports',1),
(41, 'Politics', 1),
(44, 'National',1),
(50, 'Bihar Latest',1),
(55, 'Bihar Election',1),
(56, 'Latest Job', 1),
(58, 'Education', 1);

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `post_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `category` varchar(100) NOT NULL,
  `post_date` varchar(50) NOT NULL,
  `author` int(11) NOT NULL,
  `post_img` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`post_id`, `title`, `description`, `category`, `post_date`, `author`, `post_img`) VALUES
(10, 'IPL 2020', 'IPL 2020 will start Sept after Unlock-4 and hold in UAE All Rules are Same', '34', '25 Aug, 2020', 39, 'sports1.jpg'),
(11, 'PUBG Banned in India', 'After Tiktok Pubg is on the way for Banned in India and 117 aaps are also Banned.', '44', '27 Aug, 2020', 40, 'entertainment1.jpg'),
(12, 'JP Nadda in Darbhanga', ' JP Cames in Darbhanga For Bihar Election.', '41', '13Sept, 2020', 39, '1600003035-download (11).jpg'),
(13, 'Bihar Election News', 'Election Commision Will Declare Date very Soon Expected date is Oct -Nov.', '50', '28 Aug, 2020', 39, '1599641139-download (9).jpg'),
(14, 'Bihar Ki baat', 'Chalo kare Bihar Ki baat Bihar kranti ke sath.', '32', '19 Jan, 2020', 39, '1599640802-biharimg.jpg'),
(15, 'Raghu Babu No More', 'Raghuvendra pd Yadav is no more in Delhi AIIMS .', '50', '13 Sept, 2020', 40, '1600003902-download (11).jpg'),
(16, 'SSC Announced New JOb Vacancy ', '.', '56', '13 Sept, 2020', 39, '1600006846-download (13).jpg'),
(17,'New Education Policy','The National Education Policy 2020 (NEP 2020),The policy aims to transform Indias education system by 2030.','54','13 Sept, 2020',39,'1600006846-download (13).jpg');
-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `websitename` varchar(60) NOT NULL,
  `logo` varchar(50) NOT NULL,
  `footerdesc` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `websitename`, `logo`, `footerdesc`) VALUES
(1, 'BiharKranti', 'biharkrantiimage.jpeg', '© Copyright 2020 BiharKranti.com| <a href=\"https://www.BiharKranti.com\">Contacts Us</a>');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(40) DEFAULT NULL,
  `role` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `first_name`, `last_name`, `username`, `password`, `role`) VALUES
(39, 'Rahul', 'Gupta', 'rahul','21232f297a57a5a743894a0e4a801fc3', 1),
(40, 'Rajiv', 'Kumar', 'rajiv','9a9af43c15771eaf3b2db8bb28a2829d', 1),
(41, 'Rahul', 'Kumar', 'rahulkr','7ebc2c8aa51f075ccc653a0f8e86fbb4', 0),
(42, 'Ayush', 'Pandey', 'ayush','21232f297a57a5a743894a0e4a801fc3', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`post_id`),
  ADD UNIQUE KEY `post_id` (`post_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
