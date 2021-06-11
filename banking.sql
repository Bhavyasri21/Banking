-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 11, 2021 at 08:32 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `banking`
--

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `id` int(20) NOT NULL,
  `from_acc` varchar(30) NOT NULL,
  `to_acc` varchar(30) NOT NULL,
  `amount` int(20) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`id`, `from_acc`, `to_acc`, `amount`, `date`) VALUES
(1, 'hgfb', 'bhavya', 400000, '2021-06-10'),
(2, 'hgfb', 'bhavya', 10000, '2021-06-10'),
(3, 'bhavya', 'hgfb', 345678, '2021-06-10'),
(4, 'bhavya', 'sravani', 20000, '2021-06-10'),
(5, 'bhavya', 'pooji', 30000, '2021-06-10'),
(6, 'sandhya', 'sravani', 100, '2021-06-10'),
(7, 'sandhya', 'sravani', 100, '2021-06-10'),
(8, 'hgfb', 'ravi', 2000, '2021-06-10');

-- --------------------------------------------------------

--
-- Table structure for table `userlogin`
--

CREATE TABLE `userlogin` (
  `id` int(11) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `balance` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `userlogin`
--

INSERT INTO `userlogin` (`id`, `username`, `password`, `email`, `balance`) VALUES
(1, 'pooji', '123', 'pooji123@gmail.com', 50000),
(2, 'sandhya', '123', 'dgfhkj,gnmb@gmail.com', 1799),
(3, 'sravani', '123', 'sravani123@gmail.com', 30200),
(6, 'bhavya', '123', 'bhavyasri@123gmail.com', 19014322),
(8, 'hgfb', '23', 'dsgvbjfn@gmai.con', 390467),
(55, 'ravi', '123', 'ravi@gmail.com', 14340),
(77, 'abc', '123', 'bnfbvh@gmail.com', 10000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlogin`
--
ALTER TABLE `userlogin`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `userlogin`
--
ALTER TABLE `userlogin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
