-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 28, 2022 at 08:13 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pbo_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `nama`, `username`, `password`) VALUES
(2, 'admin', 'admin', 'admin'),
(3, 'ray', 'ray', 'ray'),
(4, 'davit', 'davit', 'davit');

-- --------------------------------------------------------

--
-- Table structure for table `harga`
--

CREATE TABLE `harga` (
  `id` int(11) NOT NULL,
  `status` varchar(50) NOT NULL,
  `kelas` varchar(20) NOT NULL,
  `harga` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `harga`
--

INSERT INTO `harga` (`id`, `status`, `kelas`, `harga`) VALUES
(1, 'dewasa', 'Bisnis', '1500000'),
(2, 'anak', 'Bisnis', '750000'),
(3, 'dewasa', 'ekonomi', '650000'),
(4, 'anak', 'ekonomi', '325000');

-- --------------------------------------------------------

--
-- Table structure for table `penumpang`
--

CREATE TABLE `penumpang` (
  `id` varchar(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `awal` varchar(50) NOT NULL,
  `tujuan` varchar(50) NOT NULL,
  `berangkat` varchar(50) NOT NULL,
  `tiba` varchar(50) NOT NULL,
  `tanggal` varchar(50) NOT NULL,
  `kereta` varchar(50) NOT NULL,
  `gerbong` varchar(50) NOT NULL,
  `dewasa` varchar(50) NOT NULL,
  `anak` varchar(50) NOT NULL,
  `total` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penumpang`
--

INSERT INTO `penumpang` (`id`, `nama`, `alamat`, `awal`, `tujuan`, `berangkat`, `tiba`, `tanggal`, `kereta`, `gerbong`, `dewasa`, `anak`, `total`) VALUES
('0000000.1', 'ray', 'klaten', 'YOGYAKARTA(YIA)', 'SURABAYA (SBY)', '08.30 WIB', '10.00 WIB', 'Sun May 29 00:41:28 ICT 2022', 'CITILINK', 'EKONOMI', '1', '0', 'Rp. 650000'),
('0000000.2', 'Davit', 'jogja', 'YOGYAKARTA(YIA)', 'DENPASAR (DPS)', '08.30 WIB', '10.00 WIB', 'Sun May 29 00:41:54 ICT 2022', 'LION AIR', 'BISNIS', '1', '0', 'Rp. 1500000'),
('0000000.3', 'susilo', 'pedan', 'YOGYAKARTA(YIA)', 'JAKARTA (JKT)', '08.30 WIB', '10.00 WIB', 'Sun May 29 00:54:21 ICT 2022', 'LION AIR', 'EKONOMI', '1', '1', 'Rp. 975000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `harga`
--
ALTER TABLE `harga`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `penumpang`
--
ALTER TABLE `penumpang`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `harga`
--
ALTER TABLE `harga`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
