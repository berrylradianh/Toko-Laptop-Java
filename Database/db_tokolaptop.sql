-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 28, 2021 at 03:13 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_tokolaptop`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `nama_lengkap` varchar(30) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` varchar(15) NOT NULL,
  `no_hp` varchar(15) NOT NULL,
  `alamat` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `nama_lengkap`, `username`, `password`, `no_hp`, `alamat`) VALUES
(11, 'Berryl Radian Hamesha', 'berryl', '123456789', '0895372643218', 'Wonogiri'),
(12, 'Muhammad Refa Walada Mushtofa', 'refa', '123456789', '083848988030', 'Ponorogo'),
(13, 'Vinka Kharisma Adzania', 'vinka', '123456789', '081234722218', 'Gresik');

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `id_brand` int(11) NOT NULL,
  `nama_brand` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`id_brand`, `nama_brand`) VALUES
(6, 'Asus'),
(7, 'Acer'),
(8, 'Lenovo'),
(9, 'MSI'),
(10, 'HP');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id_customer` int(11) NOT NULL,
  `nama_lengkap` varchar(30) NOT NULL,
  `no_hp` varchar(15) NOT NULL,
  `alamat` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id_customer`, `nama_lengkap`, `no_hp`, `alamat`) VALUES
(5, 'Alda Nelva Putri Sumita', '0826548763218', 'Ponorogo'),
(6, 'Dwi Elok Nuraini', '0823548765188', 'Magetan'),
(7, 'Andre Maulana Mustofa', '0823215487965', 'Ponorogo'),
(8, 'Ahmad Alfaruq', '0823598754248', 'Surabaya'),
(9, 'Safira Dyah Satiti', '0823215488965', 'Surakarta');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id_product` int(11) NOT NULL,
  `id_supplier` int(11) NOT NULL,
  `id_brand` int(11) NOT NULL,
  `versi` varchar(255) NOT NULL,
  `storage` int(11) NOT NULL,
  `ram` int(11) NOT NULL,
  `processor` varchar(20) NOT NULL,
  `harga` int(11) NOT NULL,
  `stok` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id_product`, `id_supplier`, `id_brand`, `versi`, `storage`, `ram`, `processor`, `harga`, `stok`) VALUES
(4, 8, 6, 'Asus Vivobook A509FA-FHD454 - Slate Grey', 512, 4, 'Intel Celeron', 6099000, 15),
(5, 7, 6, 'Asus Creator K3400PH-OLED757', 512, 8, 'Intel Core i7', 15999000, 30),
(6, 6, 6, 'Asus VivoBook K513EA-OLED324', 256, 4, 'Intel core i3', 8699000, 40),
(7, 4, 6, 'Asus Zenbook UX363EA-OLED551 Touch 360⁰ - Pine Grey', 512, 8, 'Intel core i5', 17999000, 20),
(8, 5, 6, 'Asus Vivobook Flip TP401MA-VIPS422 Touch 360⁰ - Light Grey', 256, 4, 'intel celeron', 7499000, 10),
(9, 4, 8, 'Lenovo Yoga Slim 7-14ITL05 LPID - Slate Grey', 512, 8, 'intel core i5', 14549000, 25),
(10, 5, 8, 'Lenovo IdeaPad Slim 3-14ITL6 R1ID - Grey', 512, 8, 'intel core i5', 11749000, 25);

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `id_supplier` int(11) NOT NULL,
  `nama_perusahaan` varchar(50) NOT NULL,
  `alamat_perusahaan` varchar(255) NOT NULL,
  `contact_person` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`id_supplier`, `nama_perusahaan`, `alamat_perusahaan`, `contact_person`) VALUES
(4, 'PT. Trikomindo Kharis Utama', 'Ruko Permata Ancol Blok G16. Jl. RE Martadinata. Kel. Pademangan Barat. Kec. Pademangan. , Jakarta Utara, DKI Jakarta', '0811878330'),
(5, 'PT. Lintas Virtual Globalindo', 'Komplek Ruko Mutiara Bekasi Center Blok B10 No. 1, Bekasi', '08121868349'),
(6, 'CV. Samudera Teknikindo Selaras', ' Jl. Tarum Barat 2, Ruko Pasar Bersih B-7 (Pintu 11) Kawasan Industri Jababeka II, Jayamukti, Cikarang, Bekasi - Jawa Barat', '081219415790'),
(7, 'PT. Sukses Mandiri Cemerlang', 'RUKO PASAR LARIS B NO.7 RT.005 RW.013 DURI KOSAMBI, CENGKARENG, JAKARTA BARAT, DKI JAKARTA 11750, JAKARTA BARAT, DKI Jakarta', '085100230773'),
(8, 'Netsolusi Teknologi', 'Mangga Dua Square Lt. 2 Blok B.10-12<br />Jl. Gunung Sahari Raya No. 1<br />Jakarta Utara, Jakarta Utara, DKI Jakarta', '081283452663');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `id_transaction` int(11) NOT NULL,
  `id_admin` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `id_customer` int(11) NOT NULL,
  `tanggal` date NOT NULL DEFAULT current_timestamp(),
  `qty` int(11) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`id_transaction`, `id_admin`, `id_product`, `id_customer`, `tanggal`, `qty`, `total`) VALUES
(35, 11, 4, 5, '2021-12-27', 1, 6099000),
(36, 11, 5, 6, '2021-12-27', 2, 31998000),
(37, 11, 5, 7, '2021-12-27', 1, 15999000),
(38, 12, 6, 8, '2021-12-27', 3, 26097000),
(39, 12, 7, 9, '2021-12-27', 1, 17999000),
(40, 12, 8, 5, '2021-12-27', 4, 29996000),
(41, 13, 9, 6, '2021-12-27', 1, 14549000),
(42, 13, 10, 7, '2021-12-27', 1, 11749000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`id_brand`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id_customer`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id_product`),
  ADD KEY `id_brand` (`id_brand`),
  ADD KEY `id_supplier` (`id_supplier`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id_supplier`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id_transaction`),
  ADD KEY `id_user` (`id_admin`),
  ADD KEY `id_product` (`id_product`),
  ADD KEY `id_customer` (`id_customer`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `brand`
--
ALTER TABLE `brand`
  MODIFY `id_brand` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id_customer` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id_product` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id_supplier` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id_transaction` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`id_brand`) REFERENCES `brand` (`id_brand`),
  ADD CONSTRAINT `product_ibfk_2` FOREIGN KEY (`id_supplier`) REFERENCES `supplier` (`id_supplier`);

--
-- Constraints for table `transaction`
--
ALTER TABLE `transaction`
  ADD CONSTRAINT `transaction_ibfk_1` FOREIGN KEY (`id_admin`) REFERENCES `admin` (`id_admin`),
  ADD CONSTRAINT `transaction_ibfk_2` FOREIGN KEY (`id_product`) REFERENCES `product` (`id_product`),
  ADD CONSTRAINT `transaction_ibfk_3` FOREIGN KEY (`id_customer`) REFERENCES `customer` (`id_customer`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
