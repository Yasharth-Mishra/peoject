-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 19, 2023 at 06:03 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` varchar(20) NOT NULL,
  `user_id` varchar(20) NOT NULL,
  `product_id` varchar(20) NOT NULL,
  `price` varchar(10) NOT NULL,
  `qty` varchar(2) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` varchar(20) NOT NULL,
  `user_id` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `number` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(200) NOT NULL,
  `address_type` varchar(10) NOT NULL,
  `method` varchar(50) NOT NULL,
  `product_id` varchar(20) NOT NULL,
  `price` varchar(10) NOT NULL,
  `qty` varchar(2) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `status` varchar(50) NOT NULL DEFAULT 'in progress'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `number`, `email`, `address`, `address_type`, `method`, `product_id`, `price`, `qty`, `date`, `status`) VALUES
('h33NO61wNzh8yEkQseo4', 'Le4bTt8ntLihy0vgCf6x', 'ADHARSH DEVADAS', '9892363324', 'adarshdevdas@gmail.com', 'Shivprasad CHS , A2 , 2/12 , Sector 18 ,, Near Vidya Bhawan School , Nerul , NaviMumbai, NaviMumbai, India - 400706', 'home', 'credit or debit card', '47jpPz4J0mubO82KpNrU', '15', '1', '2023-03-19', 'in progress'),
('TWSVpyErLadobZLEUYDQ', 'Le4bTt8ntLihy0vgCf6x', 'ADHARSH DEVADAS', '9892363324', 'adarshdevdas@gmail.com', 'Shivprasad CHS , A2 , 2/12 , Sector 18 ,, Near Vidya Bhawan School , Nerul , NaviMumbai, NaviMumbai, India - 400706', 'home', 'credit or debit card', 'VrqcIHrpgQI8xzskgKIO', '65', '1', '2023-03-19', 'in progress'),
('cLOxPsrhRN4f1HG7y2ol', 'Le4bTt8ntLihy0vgCf6x', 'ADHARSH DEVADAS', '9892363324', 'adarshdevdas@gmail.com', 'Shivprasad CHS , A2 , 2/12 , Sector 18 ,, Near Vidya Bhawan School , Nerul , NaviMumbai, NaviMumbai, India - 400706', 'home', 'credit or debit card', '9Y34kTaZhYpPbIH5Grkz', '70', '1', '2023-03-19', 'in progress');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `price` varchar(10) NOT NULL,
  `image` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `image`) VALUES
('47jpPz4J0mubO82KpNrU', 'apple', '15', 'tBasiA0XdDIgxC9ZRlGv.jpg'),
('VrqcIHrpgQI8xzskgKIO', 'alootikki', '65', 'TDIpZtiXBbpuFKlETFFt.jfif'),
('9Y34kTaZhYpPbIH5Grkz', 'Coke', '70', 'PmifmXmM2YBzNK950Yx8.jpg'),
('k2GIbfISnHpba24xsSVC', 'sprite', '80', '9uHCv0rwQc1bRq7p03PQ.jpg'),
('IjFdgCW5d3pjDmyV78Mi', 'Pizza', '250', 'UoG6BCi4v2ynz9xRsqRm.jfif'),
('QJ1b871XoUdjbbgVgUX6', 'Vada', '15', '3inVwa5pdtJ2PDU2q42C.jfif');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
