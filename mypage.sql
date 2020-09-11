-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 10, 2020 at 09:33 PM
-- Server version: 5.6.49-cll-lve
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mypage`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact_log`
--

CREATE TABLE `contact_log` (
  `id` int(11) NOT NULL,
  `firstname` varchar(255) CHARACTER SET utf8 NOT NULL,
  `lastname` varchar(255) CHARACTER SET utf8 NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8 NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 NOT NULL,
  `textarea` text CHARACTER SET utf8 NOT NULL,
  `date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact_log`
--

INSERT INTO `contact_log` (`id`, `firstname`, `lastname`, `phone`, `email`, `textarea`, `date`) VALUES
(1, 'dor', 'levy', 'eden50155@gmail.com', '0525938898', '', '2020-02-09 07:26:27'),
(2, 'dor', 'levy', 'eden50155@gmail.com', '0525938899', '', '2020-02-09 07:28:32'),
(3, 'dor', 'levy', 'eden50155@gmail.com', '0525938898', '', '2020-02-09 07:32:50'),
(4, 'das', '', 'eden50155@gmail.com', '0525938898', 'das', '2020-02-09 07:39:50'),
(5, 'dssad', '', 'dasd@gmail.com', '0525938898', 'dsadas', '2020-02-09 07:42:28'),
(6, 'dsa', '', 'eden50155@gmail.com', '0525938898', 'dsa', '2020-02-09 07:52:35'),
(7, 'dor', 'dsadas', 'eden50155@gmail.com', '0525938898', 'levy', '2020-02-09 07:56:09'),
(8, 'dor', 'dsadas', 'eden50155@gmail.com', '0525938898', 'levy', '2020-02-09 07:56:34'),
(9, 'dor', 'dsdas', 'eden50155@gmail.com', '0525938898', 'levy', '2020-02-09 07:56:45'),
(10, 'dor', '', 'eden50155@gmail.com', '0525938898', 'das', '2020-02-09 07:57:41'),
(11, 'dor', 'dsadas', 'eden50155@gmail.com', '0525938898', 'dsa', '2020-02-09 07:58:40'),
(12, 'dor', 'dsadas', 'eden50155@gmail.com', '0525938898', 'dsa', '2020-02-09 07:58:47'),
(13, 'dor', 'heyooo', 'eden50155@gmail.com', '0525938898', 'dsa', '2020-02-09 07:59:01'),
(14, 'Levy', 'Dor', 'dorlevy@gmail.com', '0525938898', 'test tesdt test', '2020-02-09 08:00:15'),
(15, 'dor', 'levy', 'eden50155@gmail.com', '0525938898', 'dsdadasdasadsadsadssdaads', '2020-02-09 08:01:03'),
(16, 'dor', 'levy', 'eden50155@gmail.com', '0525938898', 'dsdadasdasadsadsadssdaads', '2020-02-09 08:01:07'),
(17, 'dor', 'levy', 'eden50155@gmail.com', '0525938898', 'dsdadasdasadsadsadssdaads', '2020-02-09 08:01:10'),
(18, 'dor', 'levy', 'eden50155@gmail.com', '0525938898', 'dsdadasdasadsadsadssdaads', '2020-02-09 08:01:10'),
(19, 'dor', 'levy', 'eden50155@gmail.com', '0525938898', 'dsdadasdasadsadsadssdaads', '2020-02-09 08:01:10'),
(20, 'dor', 'levy', 'eden50155@gmail.com', '0525938898', 'dsadasa', '2020-02-09 08:02:09'),
(21, 'dor', 'levy', 'eden50155@gmail.com', '0525938898', 'dasdsdasdasdsadsa', '2020-02-09 08:04:21'),
(22, 'dor', 'levy', 'eden50155@gmail.com', '0525938898', 'dasdsdasdasdsadsa', '2020-02-09 08:04:26'),
(23, 'dor', 'levy', 'eden50155@gmail.com', '0525938898', 'dsadasads', '2020-02-09 08:05:06'),
(24, 'dor', 'levy', 'eden50155@gmail.com', '0525938898', 'dsfsdfdfs', '2020-02-09 08:25:07'),
(25, 'dsa', 'dsa', 'dsa@gmail.com', '0525938898', 'dsadasdas', '2020-02-09 08:27:18'),
(26, 'dsa', 'dsa', 'arad@gmail.com', '0525938898', 'dsasdaads', '2020-02-09 08:28:51'),
(27, 'dor', 'dsa', 'eden50155@gmail.com', '0525938898', 'dsadssad', '2020-02-09 08:30:15'),
(28, 'ds', 'sds', 'eden50155@gmail.com', '0525938898', 'sdsdsd', '2020-02-09 08:33:18'),
(29, 'dor', 'levy', 'eden50155@gmail.com', '0525938898', 'dassadads', '2020-02-09 08:38:16'),
(30, 'dor', 'levy', 'eden50155@gmail.com', '0525938898', 'dsadasdas', '2020-02-09 08:39:02'),
(31, 'dsa', 'das', 'eden50155@gmail.com', '0525938898', 'dsaadsasd', '2020-02-09 08:41:07'),
(32, 'dsa', 'dsa', 'eden50155@gmail.com', '0525938898', 'dsadassad', '2020-02-09 08:42:01'),
(33, 'dor', 'levy', 'eden50155@gmail.com', '0525938898', 'dsadsadsa', '2020-02-09 08:43:09'),
(34, 'dsa', 'dsa', 'dsa@gmail.com', '0525938898', 'dsadas', '2020-02-09 08:44:54'),
(35, 'dor', 'levy', 'eden50155@gmail.com', '0525938898', 'gef', '2020-02-09 08:46:03'),
(36, 'dsaads', 'fddas', 'daniel@gmail.com', '0525938898', 'dsadasads', '2020-02-09 08:46:28'),
(37, 'dor', 'levy', 'eden50155@gmail.com', '0525938898', 'dsadsa', '2020-02-09 08:50:06'),
(38, 'dor', 'dsa', 'eden50155@gmail.com', '0525938898', 'dsadsasad', '2020-02-09 08:55:41'),
(39, 'dor', 'levy', 'eden50155@gmail.com', '0525938898', 'dsadasdas', '2020-02-09 08:56:24'),
(40, 'dor', 'levy', 'dsa@gmail.com', '0525938898', 'dsadasdas', '2020-02-09 08:57:43'),
(41, 'dsa', 'das', 'dsa@gmail.com', '0525938898', 'dsadass', '2020-02-09 08:58:57'),
(42, 'dssd', 'sdsd', 'dsa@gmail.com', '0525938898', 'sdsdsd', '2020-02-09 09:02:32'),
(43, 'Levy', 'Dor', 'ddl105095@gmail.com', '0525938898', 'Test from phone', '2020-02-09 09:04:14'),
(44, 'Hi', '', '', '0525366264', 'Mami', '2020-02-09 09:04:17'),
(45, 'levy', 'Dor', 'dorlevy1@hotmail.com', '0525938898', 'hey this is some test', '2020-02-09 09:23:55'),
(46, 'dor', 'levy', 'ddl105095@gmail.com', '0525938898', 'dordasdjl;k', '2020-02-13 17:01:19'),
(47, 'Dor', 'levy', 'dordylanlevywv@gmail.com', '0525938898', 'Try', '2020-03-10 14:07:22'),
(48, 'dor', 'levy', 'dordylanlevywv@gmail.com', '0525938898', 'dor dor', '2020-03-24 03:11:31'),
(49, 'אתר חדש', 'נסיון', 'ddl105095@gmail.com', '0525938898', 'נסיון אתר חדש', '2020-06-09 09:56:51'),
(50, 'נסיון', 'נסיון', 'ddl105095@gmail.com', '0525938898', 'נסיון', '2020-06-09 10:00:21'),
(51, 'dd', 'dd', 'dd@dd.com', '0525938898', 'sd', '2020-06-09 10:10:18'),
(52, 'dor', 'levy', 'dd@dd.com', '0525938898', 'adsadsadsads', '2020-06-09 10:27:48'),
(53, 'dor', 'levy', 'dd@dd.com', '0525938898', 'adsadsadsads', '2020-06-09 10:29:18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact_log`
--
ALTER TABLE `contact_log`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact_log`
--
ALTER TABLE `contact_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
