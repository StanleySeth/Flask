-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 25, 2026 at 10:06 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `online`
--

-- --------------------------------------------------------

--
-- Table structure for table `beverages`
--

CREATE TABLE `beverages` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `brand` varchar(100) NOT NULL,
  `volume` varchar(50) NOT NULL,
  `expiry` date NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `stock` int(11) NOT NULL,
  `photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `beverages`
--

INSERT INTO `beverages` (`id`, `name`, `brand`, `volume`, `expiry`, `price`, `stock`, `photo`) VALUES
(1, 'sodas', 'coca cola', '200ml', '2026-08-20', 250.00, 5, 'beverages.jpg'),
(2, 'sodas', 'coca cola', '200ml', '2026-08-20', 250.00, 5, 'beverages.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `constructionmaterials`
--

CREATE TABLE `constructionmaterials` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `weight` decimal(10,2) NOT NULL,
  `unit` varchar(20) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `stock` int(11) NOT NULL,
  `photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `constructionmaterials`
--

INSERT INTO `constructionmaterials` (`id`, `name`, `category`, `weight`, `unit`, `price`, `stock`, `photo`) VALUES
(1, 'Block', 'concrete', 25.05, '8', 500.00, 3, 'concrete.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `emp_id` int(50) NOT NULL,
  `emp_name` text NOT NULL,
  `hire_date` date NOT NULL,
  `salary` int(50) NOT NULL,
  `dept_id` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`emp_id`, `emp_name`, `hire_date`, `salary`, `dept_id`) VALUES
(1, 'Stanley', '2026-02-12', 70000, 1),
(2, 'Seth', '2020-01-19', 60000, 3),
(3, 'Matugah', '2012-03-03', 50000, 2),
(4, 'Sydney', '2021-11-21', 200000, 3),
(5, 'Violah', '2023-10-30', 50000, 2),
(6, 'Lookman', '2026-02-12', 205000, 1),
(7, 'Alvarez', '2022-03-26', 75000, 1),
(8, 'Griezman', '2020-12-12', 63500, 3),
(9, 'Leon', '2012-12-12', 202000, 2),
(10, 'Mark', '2016-11-30', 55000, 2),
(11, 'Olsen', '2019-11-30', 85000, 2),
(12, 'Andrew', '2019-10-31', 95000, 2),
(13, 'Tanasha', '2018-11-30', 65000, 2),
(14, 'Alfresco', '2021-11-30', 85500, 3),
(15, 'Lemisah', '2011-01-30', 555000, 3),
(16, 'Liam', '2019-09-30', 66600, 3),
(17, 'Quincy', '2025-05-23', 59000, 3),
(18, 'Dianne', '2024-04-22', 90000, 1),
(19, 'Ruby', '2021-11-20', 81000, 1),
(20, 'Gray', '2024-05-15', 71500, 3),
(21, 'Gina', '2024-04-19', 79500, 3),
(22, 'Riley', '2020-12-18', 103000, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `beverages`
--
ALTER TABLE `beverages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `constructionmaterials`
--
ALTER TABLE `constructionmaterials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`emp_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `beverages`
--
ALTER TABLE `beverages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `constructionmaterials`
--
ALTER TABLE `constructionmaterials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `emp_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
