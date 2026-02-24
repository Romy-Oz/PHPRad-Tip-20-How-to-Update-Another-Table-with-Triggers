-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 24, 2026 at 05:45 AM
-- Server version: 8.0.19
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jualbeliromyoz`
--

-- --------------------------------------------------------

--
-- Table structure for table `barangromyoz`
--

CREATE TABLE `barangromyoz` (
  `Barang_IdRomyOz` int NOT NULL,
  `NamaBarangRomyOz` varchar(30) NOT NULL,
  `HargaBarangRomyOz` int NOT NULL,
  `JumlahBarangRomyOz` int NOT NULL,
  `KodeBarangRomyOz` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `barangromyoz`
--

INSERT INTO `barangromyoz` (`Barang_IdRomyOz`, `NamaBarangRomyOz`, `HargaBarangRomyOz`, `JumlahBarangRomyOz`, `KodeBarangRomyOz`) VALUES
(1, 'Pensil HB', 1500, 0, '899000000001'),
(2, 'Pulpen Biru', 2000, 0, '899000000002'),
(3, 'Buku Tulis', 5000, 0, '899000000003'),
(4, 'Penghapus', 1000, 0, '899000000004'),
(5, 'Rautan', 1200, 0, '899000000005'),
(6, 'Spidol Merah', 3500, 0, '899000000006'),
(7, 'Spidol Biru', 3500, 0, '899000000007'),
(8, 'Penggaris 30cm', 2500, 0, '899000000008'),
(9, 'Tip-Ex', 4000, 0, '899000000009'),
(10, 'Kertas HVS', 40000, 0, '899000000010'),
(11, 'Amplop', 500, 0, '899000000011'),
(12, 'Map Plastik', 1500, 0, '899000000012'),
(13, 'Sticky Notes', 8000, 0, '899000000013'),
(14, 'Binder', 20000, 0, '899000000014'),
(15, 'Kalkulator', 75000, 0, '899000000015'),
(16, 'Stempel', 20000, 0, '899000000016'),
(17, 'Lakban', 6000, 0, '899000000017'),
(18, 'Double Tape', 7000, 0, '899000000018'),
(19, 'Lem Kertas', 4000, 0, '899000000019'),
(20, 'Lem UHU', 10000, 0, '899000000020');

-- --------------------------------------------------------

--
-- Table structure for table `belidetailromyoz`
--

CREATE TABLE `belidetailromyoz` (
  `BeliDetail_IdRomyOz` int NOT NULL,
  `Barang_Id_FKRomyOz` int DEFAULT NULL,
  `KuantitasBeliRomyOz` int DEFAULT NULL,
  `HargaBeliRomyOz` int DEFAULT NULL,
  `BeliHId_FKRomyOz` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `belihromyoz`
--

CREATE TABLE `belihromyoz` (
  `BeliHidRomyOz` int NOT NULL,
  `Supplier_Id_FKRomyOz` int DEFAULT NULL,
  `TanggalRomyOz` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jualdetailromyoz`
--

CREATE TABLE `jualdetailromyoz` (
  `JualDetail_IdRomyOz` int NOT NULL,
  `Barang_Id_FKRomyOz` int DEFAULT NULL,
  `KuantitasJualRomyOz` int DEFAULT NULL,
  `HargaJualRomyOz` int DEFAULT NULL,
  `JualHId_FKRomyOz` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jualhromyoz`
--

CREATE TABLE `jualhromyoz` (
  `JualHidRomyOz` int NOT NULL,
  `Pelanggan_Id_FKRomyOz` int DEFAULT NULL,
  `TanggalRomyOz` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pelangganromyoz`
--

CREATE TABLE `pelangganromyoz` (
  `Pelanggan_IdRomyOz` int NOT NULL,
  `PelangganNamaRomyOz` varchar(255) DEFAULT NULL,
  `Pelanggan_HPRomyOz` varchar(20) DEFAULT NULL,
  `PelangganKodeRomyOz` varchar(6) DEFAULT NULL,
  `Pelanggan_EmailRomyOz` varchar(255) DEFAULT NULL,
  `Pelanggan_CityRomyOz` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `pelangganromyoz`
--

INSERT INTO `pelangganromyoz` (`Pelanggan_IdRomyOz`, `PelangganNamaRomyOz`, `Pelanggan_HPRomyOz`, `PelangganKodeRomyOz`, `Pelanggan_EmailRomyOz`, `Pelanggan_CityRomyOz`) VALUES
(1, 'Ayu Kristiani Waruwu', '081111111001', 'PLG001', 'ayu.waruwu@mail.com', 'London'),
(2, 'Dwi Hindri Jannatun Naffarin', '081111111002', 'PLG002', 'dwi.naffarin@mail.com', 'Tokyo'),
(3, 'Muhammad Arya Juanda', '081111111003', 'PLG003', 'arya.juanda@mail.com', 'Paris'),
(4, 'Nurul Azkia', '081111111004', 'PLG004', 'nurul.azkia@mail.com', 'New York'),
(5, 'Husnul Khatimah', '081111111005', 'PLG005', 'husnul.khatimah@mail.com', 'Dubai'),
(6, 'Kamelia Manalu', '081111111006', 'PLG006', 'kamelia.manalu@mail.com', 'Singapore'),
(7, 'Novia Rahmah', '081111111007', 'PLG007', 'novia.rahmah@mail.com', 'Seoul'),
(8, 'Rubiatu Rahmah', '081111111008', 'PLG008', 'rubiatu.rahmah@mail.com', 'Sydney'),
(9, 'Mulia Rahmi', '081111111009', 'PLG009', 'mulia.rahmi@mail.com', 'Amsterdam'),
(10, 'Rini Fahlina', '081111111010', 'PLG010', 'rini.fahlina@mail.com', 'Berlin'),
(11, 'Azharuddin', '081111111011', 'PLG011', 'azharuddin@mail.com', 'Rome'),
(12, 'Muhammad Iqbal Satria Fernando', '081111111012', 'PLG012', 'iqbal.fernando@mail.com', 'Madrid'),
(13, 'Nezza Wulan Sari', '081111111013', 'PLG013', 'nezza.sari@mail.com', 'Bangkok'),
(14, 'Sherina Amanda Putri', '081111111014', 'PLG014', 'sherina.putri@mail.com', 'Istanbul'),
(15, 'Yoga Respati', '081111111015', 'PLG015', 'yoga.respati@mail.com', 'Toronto'),
(16, 'Anes Aulya', '081111111016', 'PLG016', 'anes.aulya@mail.com', 'Los Angeles'),
(17, 'Denny Seanusa Pratama', '081111111017', 'PLG017', 'denny.pratama@mail.com', 'Chicago'),
(18, 'Hapizah Nur Haliza', '081111111018', 'PLG018', 'hapizah.haliza@mail.com', 'Melbourne'),
(19, 'Eka Dewi Mariana', '081111111019', 'PLG019', 'eka.mariana@mail.com', 'Zurich'),
(20, 'Muhammad Syahri Junia Hidayat', '081111111020', 'PLG020', 'syahri.hidayat@mail.com', 'Vienna'),
(21, 'Rizki Faradilla', '081111111021', 'PLG021', 'rizki.faradilla@mail.com', 'Prague'),
(22, 'Azra\' Aliya Muthmainna', '081111111022', 'PLG022', 'azra.aliya@mail.com', 'Doha'),
(23, 'Muhammad Ikhsan', '081111111023', 'PLG023', 'ikhsan@mail.com', 'Hong Kong'),
(24, 'Norsyifa', '081111111024', 'PLG024', 'norsyifa@mail.com', 'Shanghai'),
(25, 'Talitha Agyfa Rayya', '081111111025', 'PLG025', 'talitha.rayya@mail.com', 'Kuala Lumpur'),
(26, 'Trasia Lumbantoruan', '081111111026', 'PLG026', 'trasia.lumbantoruan@mail.com', 'Oslo'),
(27, 'Riska Raudatul Jannah', '081111111027', 'PLG027', 'riska.jannah@mail.com', 'Stockholm'),
(28, 'Yazid Nikmatullah', '081111111028', 'PLG028', 'yazid.nikmatullah@mail.com', 'Copenhagen');

-- --------------------------------------------------------

--
-- Table structure for table `supplierromyoz`
--

CREATE TABLE `supplierromyoz` (
  `Supplier_IdRomyOz` int NOT NULL,
  `SupplierNamaRomyOz` varchar(255) DEFAULT NULL,
  `Supplier_HPRomyOz` varchar(20) DEFAULT NULL,
  `SupplierKodeRomyOz` varchar(6) DEFAULT NULL,
  `Supplier_EmailRomyOz` varchar(255) DEFAULT NULL,
  `Supplier_CityRomyOz` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `supplierromyoz`
--

INSERT INTO `supplierromyoz` (`Supplier_IdRomyOz`, `SupplierNamaRomyOz`, `Supplier_HPRomyOz`, `SupplierKodeRomyOz`, `Supplier_EmailRomyOz`, `Supplier_CityRomyOz`) VALUES
(1, 'Global Stationery Ltd', '081900000001', 'SUP001', 'global@sup.com', 'Singapore'),
(2, 'Tokyo Office Supply', '081900000002', 'SUP002', 'tokyo@sup.com', 'Tokyo'),
(3, 'Berlin Paper GmbH', '081900000003', 'SUP003', 'berlin@sup.com', 'Berlin'),
(4, 'Dubai Trading LLC', '081900000004', 'SUP004', 'dubai@sup.com', 'Dubai'),
(5, 'Sydney Office Mart', '081900000005', 'SUP005', 'sydney@sup.com', 'Sydney'),
(6, 'Paris Supply Co', '081900000006', 'SUP006', 'paris@sup.com', 'Paris'),
(7, 'New York Stationery', '081900000007', 'SUP007', 'ny@sup.com', 'New York'),
(8, 'Amsterdam Office BV', '081900000008', 'SUP008', 'ams@sup.com', 'Amsterdam'),
(9, 'Seoul Business Supply', '081900000009', 'SUP009', 'seoul@sup.com', 'Seoul'),
(10, 'Toronto Wholesale', '081900000010', 'SUP010', 'toronto@sup.com', 'Toronto');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barangromyoz`
--
ALTER TABLE `barangromyoz`
  ADD PRIMARY KEY (`Barang_IdRomyOz`),
  ADD UNIQUE KEY `KodeBarangRomyOz` (`KodeBarangRomyOz`);

--
-- Indexes for table `belidetailromyoz`
--
ALTER TABLE `belidetailromyoz`
  ADD PRIMARY KEY (`BeliDetail_IdRomyOz`),
  ADD KEY `Barang_Id_FKRomyOz` (`Barang_Id_FKRomyOz`),
  ADD KEY `BeliHId_FKRomyOz` (`BeliHId_FKRomyOz`);

--
-- Indexes for table `belihromyoz`
--
ALTER TABLE `belihromyoz`
  ADD PRIMARY KEY (`BeliHidRomyOz`),
  ADD KEY `Supplier_Id_FKRomyOz` (`Supplier_Id_FKRomyOz`);

--
-- Indexes for table `jualdetailromyoz`
--
ALTER TABLE `jualdetailromyoz`
  ADD PRIMARY KEY (`JualDetail_IdRomyOz`),
  ADD KEY `Barang_Id_FKRomyOz` (`Barang_Id_FKRomyOz`),
  ADD KEY `JualHId_FKRomyOz` (`JualHId_FKRomyOz`);

--
-- Indexes for table `jualhromyoz`
--
ALTER TABLE `jualhromyoz`
  ADD PRIMARY KEY (`JualHidRomyOz`),
  ADD KEY `Pelanggan_Id_FKRomyOz` (`Pelanggan_Id_FKRomyOz`);

--
-- Indexes for table `pelangganromyoz`
--
ALTER TABLE `pelangganromyoz`
  ADD PRIMARY KEY (`Pelanggan_IdRomyOz`),
  ADD UNIQUE KEY `PelangganKodeRomyOz` (`PelangganKodeRomyOz`);

--
-- Indexes for table `supplierromyoz`
--
ALTER TABLE `supplierromyoz`
  ADD PRIMARY KEY (`Supplier_IdRomyOz`),
  ADD UNIQUE KEY `SupplierKodeRomyOz` (`SupplierKodeRomyOz`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barangromyoz`
--
ALTER TABLE `barangromyoz`
  MODIFY `Barang_IdRomyOz` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `belidetailromyoz`
--
ALTER TABLE `belidetailromyoz`
  MODIFY `BeliDetail_IdRomyOz` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `belihromyoz`
--
ALTER TABLE `belihromyoz`
  MODIFY `BeliHidRomyOz` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jualdetailromyoz`
--
ALTER TABLE `jualdetailromyoz`
  MODIFY `JualDetail_IdRomyOz` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jualhromyoz`
--
ALTER TABLE `jualhromyoz`
  MODIFY `JualHidRomyOz` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pelangganromyoz`
--
ALTER TABLE `pelangganromyoz`
  MODIFY `Pelanggan_IdRomyOz` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `supplierromyoz`
--
ALTER TABLE `supplierromyoz`
  MODIFY `Supplier_IdRomyOz` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `belidetailromyoz`
--
ALTER TABLE `belidetailromyoz`
  ADD CONSTRAINT `belidetailromyoz_ibfk_1` FOREIGN KEY (`Barang_Id_FKRomyOz`) REFERENCES `barangromyoz` (`Barang_IdRomyOz`) ON DELETE RESTRICT,
  ADD CONSTRAINT `belidetailromyoz_ibfk_2` FOREIGN KEY (`BeliHId_FKRomyOz`) REFERENCES `belihromyoz` (`BeliHidRomyOz`) ON DELETE RESTRICT;

--
-- Constraints for table `belihromyoz`
--
ALTER TABLE `belihromyoz`
  ADD CONSTRAINT `belihromyoz_ibfk_1` FOREIGN KEY (`Supplier_Id_FKRomyOz`) REFERENCES `supplierromyoz` (`Supplier_IdRomyOz`) ON DELETE RESTRICT;

--
-- Constraints for table `jualdetailromyoz`
--
ALTER TABLE `jualdetailromyoz`
  ADD CONSTRAINT `jualdetailromyoz_ibfk_1` FOREIGN KEY (`Barang_Id_FKRomyOz`) REFERENCES `barangromyoz` (`Barang_IdRomyOz`) ON DELETE RESTRICT,
  ADD CONSTRAINT `jualdetailromyoz_ibfk_2` FOREIGN KEY (`JualHId_FKRomyOz`) REFERENCES `jualhromyoz` (`JualHidRomyOz`) ON DELETE RESTRICT;

--
-- Constraints for table `jualhromyoz`
--
ALTER TABLE `jualhromyoz`
  ADD CONSTRAINT `jualhromyoz_ibfk_1` FOREIGN KEY (`Pelanggan_Id_FKRomyOz`) REFERENCES `pelangganromyoz` (`Pelanggan_IdRomyOz`) ON DELETE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
