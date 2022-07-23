-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 21, 2021 at 09:25 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pengaduan_masyarakat`
--

-- --------------------------------------------------------

--
-- Table structure for table `masyarakat`
--

CREATE TABLE `masyarakat` (
  `nik` char(16) NOT NULL,
  `nama` varchar(35) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(32) NOT NULL,
  `telp` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `masyarakat`
--

INSERT INTO `masyarakat` (`nik`, `nama`, `username`, `password`, `telp`) VALUES
('001', 'Muhammad Ulil Albab', 'ulil', '123', '098089634352'),
('002', 'kaka', 'kaka', '321', '07697343622'),
('003', 'Adit', 'adit', '321', '098089634352');

-- --------------------------------------------------------

--
-- Table structure for table `pengaduan`
--

CREATE TABLE `pengaduan` (
  `id_pengaduan` int(11) NOT NULL,
  `tgl_pengaduan` date NOT NULL,
  `nik` char(16) NOT NULL,
  `isi_laporan` text NOT NULL,
  `foto` varchar(255) NOT NULL,
  `status` enum('0','proses','selesai','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pengaduan`
--

INSERT INTO `pengaduan` (`id_pengaduan`, `tgl_pengaduan`, `nik`, `isi_laporan`, `foto`, `status`) VALUES
(9, '2021-04-19', '001', 'Saya akan melaporkan kejadian ini', 'pantai.JPG', 'selesai'),
(10, '2021-04-19', '001', 'urtutrutrutru', 'logo.png', 'selesai'),
(11, '2021-04-19', '001', 'test', '3D.png', 'selesai'),
(12, '2021-04-19', '001', 'test 2', 'blokgame.png', 'selesai'),
(13, '2021-04-20', '001', 'qweere', '', 'selesai'),
(14, '2021-04-20', '003', 'saya mengadu', 'Untitled.png', 'selesai'),
(15, '2021-04-20', '001', 'saya mengadu', 'profil.png', 'selesai'),
(16, '2021-04-20', '001', 'pengaduan', 'blokkontak.png', 'selesai'),
(17, '2021-04-20', '001', 'ulil mengadu', 'blokmenu.png', 'selesai'),
(18, '2021-04-21', '001', 'pengaduan1', 'menu.png', 'selesai'),
(19, '2021-04-21', '001', 'pengaduan dengan foto', 'pantai.JPG', 'selesai'),
(20, '2021-04-21', '002', 'pengaduan dengan foto', 'logo.png', 'selesai'),
(21, '2021-04-21', '002', 'pengaduan dengan foto 3', 'profile1.png', 'selesai'),
(22, '2021-04-21', '001', 'pengaduan dengan video', 'Untitled.camproj', '0');

-- --------------------------------------------------------

--
-- Table structure for table `petugas`
--

CREATE TABLE `petugas` (
  `id_petugas` int(11) NOT NULL,
  `nama_petugas` varchar(35) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(32) NOT NULL,
  `telp` varchar(13) NOT NULL,
  `level` enum('admin','petugas','','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `petugas`
--

INSERT INTO `petugas` (`id_petugas`, `nama_petugas`, `username`, `password`, `telp`, `level`) VALUES
(1, 'admin', 'admin', 'admin', '0123', 'admin'),
(2, 'petugas', 'petugas', 'petugas', '52345345634', 'petugas'),
(3, 'Admin2', 'admin2', 'admin2', '087762434726', 'admin'),
(4, 'Admin3', 'admin3', 'admin3', '087762434726', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `tanggapan`
--

CREATE TABLE `tanggapan` (
  `id_tanggapan` int(11) NOT NULL,
  `id_pengaduan` int(11) NOT NULL,
  `tgl_tanggapan` date NOT NULL,
  `tanggapan` text NOT NULL,
  `foto` varchar(255) NOT NULL,
  `id_petugas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tanggapan`
--

INSERT INTO `tanggapan` (`id_tanggapan`, `id_pengaduan`, `tgl_tanggapan`, `tanggapan`, `foto`, `id_petugas`) VALUES
(10, 1, '2021-03-27', '          \r\n        saya akan memproses laporan ini', '', 1),
(11, 2, '2021-03-27', '          \r\n        iya sudah dtaggapi', '', 1),
(12, 4, '2021-04-07', '          \r\n        urlu6r6ur7887', '', 1),
(13, 5, '2021-04-16', '          \r\n        saya akan menanggapi', '', 1),
(14, 3, '2021-04-16', '          \r\n        rgerg', '', 1),
(15, 6, '2021-04-16', '          \r\n        dthdrhdrtyhrdt', '', 1),
(16, 7, '2021-04-16', '          sya aakan meneafe\r\n        ', '', 1),
(17, 9, '2021-04-19', '          \r\n        Saya akan menanggapi laporan ini', '', 1),
(18, 10, '2021-04-19', '          \r\n        sudah saya tanggapi', '', 1),
(19, 11, '2021-04-19', '          \r\n        sudah tertanggapi', '', 2),
(20, 12, '2021-04-20', '          qqq\r\n        ', '', 1),
(21, 13, '2021-04-20', '          \r\n        wr', '', 1),
(22, 14, '2021-04-20', '        akan saya tanggapi  \r\n        ', '', 2),
(23, 15, '2021-04-20', '          \r\n        saya menanggapi ini', '', 1),
(24, 17, '2021-04-20', '          \r\n        yyyy', '', 2),
(25, 16, '2021-04-21', '          \r\n        oooo', 'menu.png', 2),
(26, 19, '2021-04-21', '          \r\n        tanggapan dengan foto', 'pantai.JPG', 1),
(27, 20, '2021-04-21', '          \r\n        tanggapan dengan foto', 'lionv1.jpg', 1),
(28, 21, '2021-04-21', '          \r\n       tanggapan dengan foto3 ', 'logo.png', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `masyarakat`
--
ALTER TABLE `masyarakat`
  ADD PRIMARY KEY (`nik`),
  ADD KEY `nik` (`nik`);

--
-- Indexes for table `pengaduan`
--
ALTER TABLE `pengaduan`
  ADD PRIMARY KEY (`id_pengaduan`),
  ADD KEY `id_pengaduan` (`id_pengaduan`,`nik`),
  ADD KEY `nik` (`nik`);

--
-- Indexes for table `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`id_petugas`),
  ADD KEY `id_petugas` (`id_petugas`);

--
-- Indexes for table `tanggapan`
--
ALTER TABLE `tanggapan`
  ADD PRIMARY KEY (`id_tanggapan`),
  ADD KEY `id_pengaduan` (`id_pengaduan`,`id_petugas`),
  ADD KEY `id_petugas` (`id_petugas`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pengaduan`
--
ALTER TABLE `pengaduan`
  MODIFY `id_pengaduan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `petugas`
--
ALTER TABLE `petugas`
  MODIFY `id_petugas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tanggapan`
--
ALTER TABLE `tanggapan`
  MODIFY `id_tanggapan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `pengaduan`
--
ALTER TABLE `pengaduan`
  ADD CONSTRAINT `pengaduan_ibfk_1` FOREIGN KEY (`nik`) REFERENCES `masyarakat` (`nik`);

--
-- Constraints for table `tanggapan`
--
ALTER TABLE `tanggapan`
  ADD CONSTRAINT `tanggapan_ibfk_1` FOREIGN KEY (`id_pengaduan`) REFERENCES `pengaduan` (`id_pengaduan`),
  ADD CONSTRAINT `tanggapan_ibfk_2` FOREIGN KEY (`id_petugas`) REFERENCES `petugas` (`id_petugas`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
