-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 03, 2020 at 04:09 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `drama`
--

-- --------------------------------------------------------

--
-- Table structure for table `menu_drama`
--

CREATE TABLE `menu_drama` (
  `id` int(11) NOT NULL,
  `nama_drama` varchar(128) NOT NULL,
  `image` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu_drama`
--

INSERT INTO `menu_drama` (`id`, `nama_drama`, `image`) VALUES
(1, 'Doctor Prisoner', 'dr.jpg'),
(2, 'Duel', 'duel.jpg'),
(3, 'Memories of the Alhambra', 'memories.jpg'),
(4, 'Hell Is Other People', 'strangers.jpg'),
(5, 'Voice 1, 2, 3', 'voice.jpg'),
(6, 'Signal', 'signal.webp'),
(7, 'Legend of the Blue Sea', 'legend.webp'),
(8, 'Remember: War of the Son', 'remember.jpg'),
(9, 'Terius Behind Me', 'terius.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `menu_drama`
--
ALTER TABLE `menu_drama`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `menu_drama`
--
ALTER TABLE `menu_drama`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
