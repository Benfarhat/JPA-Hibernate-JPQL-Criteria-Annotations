-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 31, 2018 at 10:05 AM
-- Server version: 5.7.21
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `usersdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `fullname`, `email`, `password`) VALUES
(2, 'John Doe', 'JohnDoe@gmail.com', 'NoOneCanGuessIt'),
(3, 'John Doe', 'JohnDoe@gmail.com', 'Secret'),
(4, 'Jane Doe', 'Jane.Doe@gmail.com', 'NotSoSecret'),
(5, 'John Doe', 'JohnDoe@gmail.com', 'Secret'),
(6, 'Jane Doe', 'Jane.Doe@gmail.com', 'NotSoSecret'),
(7, 'John Doe', 'JohnDoe@gmail.com', 'Secret'),
(8, 'Jane Doe', 'Jane.Doe@gmail.com', 'NotSoSecret'),
(9, 'John Doe', 'JohnDoe@gmail.com', 'Secret'),
(10, 'Jane Doe', 'Jane.Doe@gmail.com', 'NotSoSecret'),
(11, 'John Doe', 'JohnDoe@gmail.com', 'Secret'),
(12, 'Jane Doe', 'Jane.Doe@gmail.com', 'NotSoSecret'),
(13, 'John Doe', 'JohnDoe@gmail.com', 'Secret'),
(14, 'Jane Doe', 'Jane.Doe@gmail.com', 'NotSoSecret'),
(15, 'John Doe', 'JohnDoe@gmail.com', 'Secret'),
(16, 'Jane Doe', 'Jane.Doe.gmail.com', 'NotSoSecret'),
(17, 'John Doe', 'JohnDoe@gmail.com', 'Secret'),
(18, 'Jane Doe', 'Jane.Doe.gmail.com', 'NotSoSecret'),
(19, 'John Doe', 'JohnDoe@gmail.com', 'Secret'),
(20, 'Jane Doe', 'Jane.Doe.gmail.com', 'NotSoSecret'),
(21, 'John Doe', 'JohnDoe@gmail.com', 'Secret'),
(22, 'Jane Doe', 'Jane.Doe.gmail.com', 'NotSoSecret'),
(23, 'John Doe', 'JohnDoe@gmail.com', 'Secret'),
(24, 'Jane Doe', 'Jane.Doe.gmail.com', 'NotSoSecret'),
(25, 'John Doe', 'JohnDoe@gmail.com', 'Secret'),
(26, 'Jane Doe', 'Jane.Doe.gmail.com', 'NotSoSecret'),
(27, 'John Doe', 'JohnDoe@gmail.com', 'Secret'),
(28, 'Jane Doe', 'Jane.Doe.gmail.com', 'NotSoSecret'),
(29, 'John Doe', 'JohnDoe@gmail.com', 'Secret'),
(30, 'Jane Doe', 'Jane.Doe.gmail.com', 'NotSoSecret'),
(31, 'John Doe', 'JohnDoe@gmail.com', 'Secret'),
(32, 'Jane Doe', 'Jane.Doe.gmail.com', 'NotSoSecret'),
(33, 'John Doe', 'JohnDoe@gmail.com', 'Secret'),
(34, 'Jane Doe', 'Jane.Doe.gmail.com', 'NotSoSecret'),
(35, 'John Doe', 'JohnDoe@gmail.com', 'Secret'),
(36, 'Jane Doe', 'Jane.Doe.gmail.com', 'NotSoSecret'),
(37, 'John Doe', 'JohnDoe@gmail.com', 'Secret'),
(38, 'Jane Doe', 'Jane.Doe.gmail.com', 'NotSoSecret'),
(39, 'John Doe', 'JohnDoe@gmail.com', 'Secret'),
(40, 'Jane Doe', 'Jane.Doe.gmail.com', 'NotSoSecret');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
