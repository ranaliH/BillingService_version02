-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 15, 2022 at 05:50 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `paf`
--

-- --------------------------------------------------------

--
-- Table structure for table `reg_cus_billing`
--

CREATE TABLE `reg_cus_billing` (
  `invoiceNo` int(5) NOT NULL,
  `date` varchar(25) NOT NULL,
  `cusName` varchar(25) NOT NULL,
  `accNo` int(8) NOT NULL,
  `noOfUnits` int(11) NOT NULL,
  `unitPrice` double NOT NULL,
  `tax` double NOT NULL,
  `totalAmount` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reg_cus_billing`
--

INSERT INTO `reg_cus_billing` (`invoiceNo`, `date`, `cusName`, `accNo`, `noOfUnits`, `unitPrice`, `tax`, `totalAmount`) VALUES
(1, '2022-04-01', 'H.L.Fernando', 236589123, 152, 32, 480, 5344),
(4, '2022-02-01', 'P.K.Oman', 985463255, 32, 5, 60, 220),
(5, '2022-02-01', 'Jhon', 978954628, 100, 28, 480, 3280),
(6, '2022-03-05', 'N Somapala', 125478412, 100, 28, 480, 3280),
(8, '2022-04-23', 'test', 98454789, 78, 10, 90, 870);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
