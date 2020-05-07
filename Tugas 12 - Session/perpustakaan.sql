-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 07, 2020 at 08:23 PM
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
-- Database: `perpustakaan`
--

-- --------------------------------------------------------

--
-- Table structure for table `akun`
--

CREATE TABLE `akun` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `role` enum('Mahasiswa','Pegawai') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `akun`
--

INSERT INTO `akun` (`id`, `username`, `password`, `role`) VALUES
(1, 'user', 'user', 'Mahasiswa'),
(2, 'admin', 'admin', 'Pegawai');

-- --------------------------------------------------------

--
-- Table structure for table `data_buku`
--

CREATE TABLE `data_buku` (
  `id` int(11) NOT NULL,
  `kode_buku` varchar(10) NOT NULL,
  `judul_buku` varchar(255) NOT NULL,
  `pengarang` varchar(255) NOT NULL,
  `kategori_buku` varchar(255) NOT NULL,
  `penerbit` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `data_buku`
--

INSERT INTO `data_buku` (`id`, `kode_buku`, `judul_buku`, `pengarang`, `kategori_buku`, `penerbit`) VALUES
(1, '1708561001', 'Akuntansi Pengantar 1', 'Supardi', 'Pendidikan', 'Gava Media'),
(2, '1708561002', 'Manajemen Penerbitan Jurnal Ilmiah\r\n', 'Lukman S', 'Pendidikan', 'Sagung Seto'),
(3, '1708561003', 'PRAMOEDYA ANANTA TOER : Biografi Singkat (1925-2006)\r\n', 'Muhammad Rifai', 'Biografi', 'Garasi'),
(4, '1708561004', 'Buku Petunjuk Praktis Pencabutan Gigi\r\n', 'M. Hendra Chandha', 'Kesehatan', 'Sagung Seto'),
(5, '1708561005', 'Biografi Gus Dur ; The Authorized Biography of KH. Abdurrahman Wahid (Soft Cover)\r\n', 'Greg Barton', 'Biografi', 'LKiS'),
(6, '1708561006', 'Pemrograman Web Membuat Sistem Informasi Akademik Sekolah Dengan PHP-MYSQL & Dreamweaver\r\n', 'Bunafit Nugroho', 'Pendidikan', 'Gava Media'),
(7, '1708561007', 'Diagnosis Dan Tatalaksana Kegawat Daruratan Tulang Belakang', 'Tjokorda G. B. Mahadewa & Sri Maliawan', 'Kesehatan', 'Sagung Seto'),
(8, '1708561008', 'DNA Forensik', 'Yoni Fuadah Syukriani', 'Kesehatan', 'Sagung Seto'),
(9, '1708561009', 'Perawatan Luka\r\n', 'Suriadi', 'Kesehatan', 'Sagung Seto'),
(10, '1708561010', 'Pengolahan Citra Digital : Konsep dan Teori\r\n', 'Fajar Astuti Hermawati', 'Pendidikan', 'Andi Offset'),
(11, '1708561011', 'Bung Karno\r\n', 'Jonar T. H. Situmorang', 'Biografi', 'Ar-Ruzz Media'),
(12, '1708561012', 'USG Obstetri Ginekologi Dasar Untuk Dokter\r\n', 'Judi Januadi Edjun', 'Kesehatan', 'Sagung Seto'),
(13, '1708561013', 'Teori dan Aplikasi Struktur Data Menggunakan Java', 'Abdul Kadir', 'Pendidikan', 'Andi'),
(14, '1708561014', 'Panduan Praktis Sistem Kendali Digital\r\n', 'Azwardi Dan Cekmas Cekdin', 'Pendidikan', 'Andi Offset');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `akun`
--
ALTER TABLE `akun`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_buku`
--
ALTER TABLE `data_buku`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `akun`
--
ALTER TABLE `akun`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `data_buku`
--
ALTER TABLE `data_buku`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
