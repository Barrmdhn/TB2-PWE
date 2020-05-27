-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 15, 2020 at 03:19 AM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_tiketseminar`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_konsumen`
--

CREATE TABLE `tbl_konsumen` (
  `no_identitas` int(8) NOT NULL,
  `nama_konsumen` varchar(64) NOT NULL,
  `almt_komsumen` varchar(100) NOT NULL,
  `telepon` varchar(13) NOT NULL,
  `umur` int(2) NOT NULL,
  `jenis_kelamin` varchar(10) NOT NULL,
  `tmp_lahir` varchar(100) NOT NULL,
  `tanggal` date NOT NULL,
  `foto` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_konsumen`
--

INSERT INTO `tbl_konsumen` (`no_identitas`, `nama_konsumen`, `almt_komsumen`, `telepon`, `umur`, `jenis_kelamin`, `tmp_lahir`, `tanggal`, `foto`) VALUES
(521001, 'Budi Sp', 'padang', '087236123', 23, 'Pria', 'kalimantan', '0000-00-00', 'Koala.jpg'),
(521005, 'Erin', 'Pekanbaru', '09230291', 23, 'Wanita', 'Pekanbaru', '1993-01-14', 'Hydrangeas.jpg'),
(521002, 'Erin', 'Palangkaraya', '023489234', 24, 'Wanita', 'Jember', '0000-00-00', 'Tulips.jpg'),
(521004, 'Cut mutia', 'Aceh', '32849238', 24, 'Wanita', 'Aceh', '0000-00-00', 'Hydrangeas.jpg'),
(521006, 'Ruly', 'padang', '01239834', 23, 'Pria', 'padang', '1993-02-11', 'Koala.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pegawai`
--

CREATE TABLE `tbl_pegawai` (
  `no_pegawai` int(15) NOT NULL,
  `nama_pegawai` varchar(32) NOT NULL,
  `alamat_pegawai` varchar(100) NOT NULL,
  `jenis_kelamin` varchar(10) NOT NULL,
  `umur_pegawai` int(11) NOT NULL,
  `telepon` varchar(13) NOT NULL,
  `tmp_lahir` varchar(100) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `foto` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pegawai`
--

INSERT INTO `tbl_pegawai` (`no_pegawai`, `nama_pegawai`, `alamat_pegawai`, `jenis_kelamin`, `umur_pegawai`, `telepon`, `tmp_lahir`, `tgl_lahir`, `foto`) VALUES
(620002, 'Mr. Bean', 'Inggris', 'Pria', 26, '00002', 'Inggris', '1990-02-02', 'Tulips.jpg'),
(620003, 'Anto Hermawan', 'padang', 'Pria', 25, '03420394', 'Padang', '1991-00-00', 'Koala.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pembayaran`
--

CREATE TABLE `tbl_pembayaran` (
  `no_pembayaran` varchar(11) NOT NULL,
  `no_tiket` varchar(18) NOT NULL,
  `tgl_pembayaran` date NOT NULL,
  `hari_pembayaran` varchar(6) NOT NULL,
  `jumlah_tiket` int(3) NOT NULL,
  `harga_tiket` int(10) NOT NULL,
  `total_pembayaran` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pembayaran`
--

INSERT INTO `tbl_pembayaran` (`no_pembayaran`, `no_tiket`, `tgl_pembayaran`, `hari_pembayaran`, `jumlah_tiket`, `harga_tiket`, `total_pembayaran`) VALUES
('00002', 'DM00002', '2017-01-13', 'Jum\'at', 2, 500000, '1000000'),
('00001', 'DM00002', '2017-01-19', 'Rabu', 1, 500000, '500000');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tiket`
--

CREATE TABLE `tbl_tiket` (
  `no_konsumen` int(12) NOT NULL,
  `no_tiket` varchar(12) NOT NULL,
  `tgl` date NOT NULL,
  `hari` varchar(6) NOT NULL,
  `waktu_seminar` time NOT NULL,
  `nama_seminar` varchar(8) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_tiket`
--

INSERT INTO `tbl_tiket` (`no_konsumen`, `no_tiket`, `tgl`, `hari`, `waktu_seminar`, `nama_seminar`) VALUES
(521001, 'DM00001', '2017-01-21', 'Kamis', '12:00:00', 'PDG'),
(521002, 'DM00002', '2017-01-21', 'Senin', '12:31:00', 'MDN'),
(521004, 'DM00003', '2017-01-21', 'Jum\'at', '11:11:00', 'JKT'),
(521005, 'DM00004', '2017-01-28', 'Rabu', '11:11:00', 'PDG');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_konsumen`
--
ALTER TABLE `tbl_konsumen`
  ADD PRIMARY KEY (`no_identitas`);

--
-- Indexes for table `tbl_pembayaran`
--
ALTER TABLE `tbl_pembayaran`
  ADD PRIMARY KEY (`no_pembayaran`);

--
-- Indexes for table `tbl_tiket`
--
ALTER TABLE `tbl_tiket`
  ADD PRIMARY KEY (`no_tiket`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
