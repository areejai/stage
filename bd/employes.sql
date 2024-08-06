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
-- Table structure for table `employes`
--

CREATE TABLE `employes` (
  `num_demande` int(11) NOT NULL,
  `matricule` int(11) NOT NULL,
  `nom` varchar(50) DEFAULT NULL,
  `prenom` varchar(50) DEFAULT NULL,
  `point_de_vente` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employes`
--

INSERT INTO `employes` (`num_demande`, `matricule`, `nom`, `prenom`, `point_de_vente`) VALUES
(1, 1, 'Ben Ali', 'Mohamed', 'Tunis'),
(2, 2, 'Trabelsi', 'Hanen', 'Sfax'),
(3, 3, 'Jebali', 'Ahmed', 'Sousse'),
(4, 4, 'Bouazizi', 'Faten', 'Gabes'),
(5, 5, 'Karoui', 'Walid', 'Bizerte'),
(6, 6, 'Chahed', 'Ines', 'Kairouan'),
(7, 7, 'Ghannouchi', 'Sami', 'Gafsa'),
(8, 8, 'Mabrouk', 'Lina', 'Monastir'),
(9, 9, 'Essid', 'Rim', 'Ariana'),
(10, 10, 'Marzouki', 'Nabil', 'Sidi Bouzid'),
(11, 11, 'Sghaier', 'Amira', 'Nabeul'),
(12, 12, 'Feki', 'Hassene', 'Tebourba'),
(13, 13, 'Benzarti', 'Aida', 'Zarzis'),
(14, 14, 'Dhouib', 'Hichem', 'Medenine'),
(15, 15, 'Haddad', 'Sofia', 'La Marsa'),
(16, 16, 'Mallek', 'Rania', 'Djerba'),
(17, 17, 'Guesmi', 'Farouk', 'Béja'),
(18, 18, 'Bouchoucha', 'Sara', 'Jendouba'),
(19, 19, 'Hajji', 'Khaled', 'El Kef'),
(20, 20, 'Bourguiba', 'Sami', 'Siliana'),
(21, 21, 'Gharbi', 'Nadia', 'Mateur'),
(22, 22, 'Lajili', 'Youssef', 'Ksar es-Sid'),
(23, 23, 'Kefi', 'Noura', 'Medenine'),
(24, 24, 'Zouari', 'Omar', 'Djerba'),
(25, 25, 'Hannachi', 'Meriem', 'Mannouba'),
(26, 26, 'Tounsi', 'Ali', 'Kairouan'),
(27, 27, 'Cherif', 'Khalil', 'Bizerte'),
(28, 28, 'Maalej', 'Nabila', 'Sfax'),
(29, 29, 'Dridi', 'Hassan', 'Sousse'),
(30, 30, 'Belkadhi', 'Fayza', 'Gafsa'),
(31, 31, 'Bouraoui', 'Anis', 'Kebili'),
(32, 32, 'Ben Youssef', 'Youssef', 'Zarzis'),
(33, 33, 'Riahi', 'Houssem', 'Tunis'),
(34, 34, 'Salah', 'Mouna', 'La Marsa'),
(35, 35, 'Saidi', 'Hela', 'Nabeul'),
(36, 36, 'Fendri', 'Moez', 'Jendouba'),
(37, 37, 'Naccache', 'Sami', 'Tebourba'),
(38, 38, 'Toumi', 'Hedi', 'Sidi Bouzid'),
(39, 39, 'Mbarek', 'Rania', 'Siliana'),
(40, 40, 'Sabbagh', 'Nabil', 'El Kef'),
(41, 41, 'Ghedira', 'Hichem', 'Monastir'),
(42, 42, 'Boudhina', 'Khaled', 'Tunis'),
(43, 43, 'Ammar', 'Saber', 'Djerba'),
(44, 44, 'Belaid', 'Omar', 'Sfax'),
(45, 45, 'Ammar', 'Sana', 'Bizerte'),
(46, 46, 'Hammami', 'Houssein', 'Medenine'),
(47, 47, 'Ghedir', 'Khalil', 'Kairouan'),
(48, 48, 'Brahim', 'Chokri', 'Gafsa'),
(49, 49, 'Hammami', 'Rim', 'Sousse'),
(50, 50, 'Khadraoui', 'Hedi', 'Nabeul');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employes`
--
ALTER TABLE `employes`
  ADD PRIMARY KEY (`num_demande`),
  ADD UNIQUE KEY `num_demande` (`num_demande`),
  ADD KEY `matricule` (`matricule`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
