-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 29, 2020 at 12:43 PM
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
-- Database: `final_praktikum`
--

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `id_buku` int(11) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `tahun` int(11) NOT NULL,
  `penulis` varchar(100) NOT NULL,
  `ISBN` varchar(13) NOT NULL,
  `pic` varchar(100) NOT NULL,
  `kategori` varchar(32) NOT NULL,
  `rak` int(11) NOT NULL,
  `stok` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`id_buku`, `judul`, `tahun`, `penulis`, `ISBN`, `pic`, `kategori`, `rak`, `stok`) VALUES
(1, 'Teknologi Informasi Pendidikan', 2013, 'Audini Nifira Putri', '9781449361327', 'buku1.jpg', 'Teknologi', 1, 2),
(2, 'Teknologi Tepat Guna', 2009, 'Audini Nifira Putri', '9780321607379', 'buku2.png', 'Teknologi', 2, 1),
(3, 'Teknologi Big Data', 2013, 'Audini Nifira Putri', '9788187972839', 'buku3.jpg', 'Teknologi', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `pinjaman`
--

CREATE TABLE `pinjaman` (
  `id_pinjam` int(11) NOT NULL,
  `id_buku` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `tgl_ambil` date NOT NULL,
  `tgl_kembali` date NOT NULL,
  `status` enum('mohon','dipinjam','dikembalikan','batal') NOT NULL DEFAULT 'mohon'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pinjaman`
--

INSERT INTO `pinjaman` (`id_pinjam`, `id_buku`, `id_user`, `tgl_ambil`, `tgl_kembali`, `status`) VALUES
(7, 1, 4, '2020-05-04', '2020-05-06', 'mohon');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(256) NOT NULL,
  `role` enum('suadmin','user','admin','nonaktif') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `user_name`, `email`, `password`, `role`) VALUES
(1, 'suadmin', 'suadmin@unud.ac.id', '$2y$10$uTuCH49R4c6glC5RhHAwEOnU6WYO3exskFZ5dpg9vLuf.yu/OpTU.', 'suadmin'),
(2, 'admin', 'admin@unud.ac.id', '$2y$10$uPw8vG.wuuy8rIppIFzZLu8.jF0aiJltKmwn6GrUMhPiOVneR/fwW', 'admin'),
(3, 'audini', 'audininp@gmail.com', '$2y$10$80AJOm0MQ06AA1dEsFLYKuJ50AgMpKg4tbOdcsOgFgEuVwQy57yE6', 'user'),
(4, 'audininp', 'audininifirap@gmail.com', '$2y$10$JjfnixLn.fVx6jMABD7FHe4R8AcOzd/BkJ3ctaHYREFdU31/CYwtK', 'user'),
(5, 'indradewi', 'ayumadesurya@gmail.com', '$2y$10$Re3vlvKfFNl56hHlnXT47exsVnAo9rXZULjbL5eecreuHIs00.rsm', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id_buku`);

--
-- Indexes for table `pinjaman`
--
ALTER TABLE `pinjaman`
  ADD PRIMARY KEY (`id_pinjam`),
  ADD KEY `id_buku` (`id_buku`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `buku`
--
ALTER TABLE `buku`
  MODIFY `id_buku` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `pinjaman`
--
ALTER TABLE `pinjaman`
  MODIFY `id_pinjam` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `pinjaman`
--
ALTER TABLE `pinjaman`
  ADD CONSTRAINT `pinjaman_ibfk_1` FOREIGN KEY (`id_buku`) REFERENCES `buku` (`id_buku`),
  ADD CONSTRAINT `pinjaman_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
