-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 05, 2024 at 08:32 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `stage`
--

-- --------------------------------------------------------

--
-- Table structure for table `affectation`
--

CREATE TABLE `affectation` (
  `code_app` varchar(10) NOT NULL,
  `matricule` int(11) NOT NULL,
  `date_creation` date DEFAULT curdate()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `affectation`
--

INSERT INTO `affectation` (`code_app`, `matricule`, `date_creation`) VALUES
('01', 1, '2024-01-01'),
('02', 2, '2024-01-15'),
('03', 3, '2024-02-01'),
('01', 4, '2024-02-15'),
('02', 5, '2024-03-01'),
('03', 6, '2024-03-15'),
('01', 7, '2024-04-01'),
('02', 8, '2024-04-15'),
('03', 9, '2024-05-01'),
('01', 10, '2024-05-15'),
('03', 10, '2024-06-16'),
('02', 11, '2024-06-01'),
('03', 12, '2024-06-15'),
('01', 13, '2024-07-01'),
('02', 14, '2024-07-15'),
('03', 15, '2024-08-01'),
('01', 16, '2024-08-15'),
('02', 17, '2024-09-01'),
('03', 18, '2024-09-15'),
('01', 19, '2024-10-01'),
('02', 20, '2024-10-15'),
('03', 21, '2024-11-01'),
('01', 22, '2024-11-15'),
('02', 23, '2024-12-01'),
('03', 24, '2024-12-15'),
('01', 25, '2025-01-01'),
('02', 26, '2025-01-15'),
('03', 27, '2025-02-01'),
('01', 28, '2025-02-15'),
('02', 29, '2025-03-01'),
('03', 30, '2025-03-15'),
('01', 31, '2025-04-01'),
('02', 32, '2025-04-15'),
('03', 33, '2025-05-01'),
('01', 34, '2025-05-15'),
('02', 35, '2025-06-01'),
('03', 36, '2025-06-15'),
('01', 37, '2025-07-01'),
('02', 38, '2025-07-15'),
('03', 39, '2025-08-01'),
('01', 40, '2025-08-15'),
('02', 41, '2025-09-01'),
('03', 42, '2025-09-15'),
('01', 43, '2025-10-01'),
('02', 44, '2025-10-15'),
('03', 45, '2025-11-01'),
('01', 46, '2025-11-15'),
('02', 47, '2025-12-01'),
('03', 48, '2025-12-15'),
('01', 49, '2026-01-01'),
('02', 50, '2026-01-15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `affectation`
--
ALTER TABLE `affectation`
  ADD PRIMARY KEY (`matricule`,`code_app`),
  ADD KEY `code_app` (`code_app`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `affectation`
--
ALTER TABLE `affectation`
  ADD CONSTRAINT `affectation_ibfk_1` FOREIGN KEY (`matricule`) REFERENCES `employes` (`matricule`),
  ADD CONSTRAINT `affectation_ibfk_2` FOREIGN KEY (`code_app`) REFERENCES `application` (`code_app`),
  ADD CONSTRAINT `affectation_ibfk_3` FOREIGN KEY (`matricule`) REFERENCES `employes` (`matricule`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
