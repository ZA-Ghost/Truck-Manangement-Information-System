-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 21, 2023 at 09:35 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `truckmanagementis`
--

-- --------------------------------------------------------

--
-- Table structure for table `employeemanagement`
--

CREATE TABLE `employeemanagement` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `surname` varchar(50) DEFAULT NULL,
  `idNumber` varchar(20) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `contactNumber` int(10) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `health` varchar(50) DEFAULT NULL,
  `licenseType` varchar(50) DEFAULT NULL,
  `employeeNumber` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employeemanagement`
--

INSERT INTO `employeemanagement` (`id`, `name`, `surname`, `idNumber`, `address`, `contactNumber`, `email`, `health`, `licenseType`, `employeeNumber`) VALUES
(10, 'Ghost', 'Ghost', '987654', 'Ghost Street', 123456789, 'ghost@gmail.com', 'Good', 'C1', 'Ghost1'),
(11, 'Test', 'Test', '111111111111111', 'erdgtfghjkdghf5ey', 123456789, 'test@gmail.com', 'Employee has no health issues', 'Code 10, C4', 'Test123');

-- --------------------------------------------------------

--
-- Table structure for table `fuelmanagement`
--

CREATE TABLE `fuelmanagement` (
  `id` int(11) NOT NULL,
  `employeeNumber` varchar(11) DEFAULT NULL,
  `driverName` varchar(50) DEFAULT NULL,
  `driverSurname` varchar(50) DEFAULT NULL,
  `truckNumberPlate` varchar(20) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `pricePerLitre` decimal(10,2) DEFAULT NULL,
  `litresPouredIn` decimal(10,2) DEFAULT NULL,
  `amountSpent` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fuelmanagement`
--

INSERT INTO `fuelmanagement` (`id`, `employeeNumber`, `driverName`, `driverSurname`, `truckNumberPlate`, `date`, `pricePerLitre`, `litresPouredIn`, `amountSpent`) VALUES
(2, 'Ghost1', 'Ghost', 'Ghost', 'Ghost', '2023-06-06', 10.00, 10.00, 12.00),
(3, 'Test123', 'Testing', 'Ghost', 'TMIS GP', '2023-12-15', 23.00, 70.00, 700.00);

-- --------------------------------------------------------

--
-- Table structure for table `logindetails`
--

CREATE TABLE `logindetails` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `logindetails`
--

INSERT INTO `logindetails` (`username`, `password`) VALUES
('ghost', 'ghost');

-- --------------------------------------------------------

--
-- Table structure for table `offencemanagement`
--
-- Error reading structure for table truckmanagementis.offencemanagement: #1932 - Table &#039;truckmanagementis.offencemanagement&#039; doesn&#039;t exist in engine
-- Error reading data for table truckmanagementis.offencemanagement: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `truckmanagementis`.`offencemanagement`&#039; at line 1

-- --------------------------------------------------------

--
-- Table structure for table `routes`
--

CREATE TABLE `routes` (
  `id` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `driverName` varchar(50) DEFAULT NULL,
  `driverSurname` varchar(50) DEFAULT NULL,
  `truckNumberPlate` varchar(20) DEFAULT NULL,
  `truckVinNumber` varchar(50) DEFAULT NULL,
  `departureLocation` varchar(100) DEFAULT NULL,
  `destinationLocation` varchar(100) DEFAULT NULL,
  `routeApprovedBy` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `routes`
--

INSERT INTO `routes` (`id`, `date`, `driverName`, `driverSurname`, `truckNumberPlate`, `truckVinNumber`, `departureLocation`, `destinationLocation`, `routeApprovedBy`) VALUES
(2, '2023-06-08', 'Ghost', 'Ghost', 'Ghost', 'Ghost', 'Ghost', 'Ghost', 'Ghost');

-- --------------------------------------------------------

--
-- Table structure for table `servicemanagement`
--

CREATE TABLE `servicemanagement` (
  `id` int(11) NOT NULL,
  `brand` varchar(50) DEFAULT NULL,
  `model` varchar(50) DEFAULT NULL,
  `dateBought` date DEFAULT NULL,
  `vinNumber` varchar(50) DEFAULT NULL,
  `numberPlate` varchar(20) DEFAULT NULL,
  `licenseDisk` date DEFAULT NULL,
  `kilometers` int(11) DEFAULT NULL,
  `dateServiced` date DEFAULT NULL,
  `diagnosis` text DEFAULT NULL,
  `cost` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `servicemanagement`
--

INSERT INTO `servicemanagement` (`id`, `brand`, `model`, `dateBought`, `vinNumber`, `numberPlate`, `licenseDisk`, `kilometers`, `dateServiced`, `diagnosis`, `cost`) VALUES
(6, 'Ghost', 'ghost', '2023-06-14', 'Ghost', 'fghdsc', '2023-06-07', 30, '2023-06-15', 'Brake Pads, Tires, Petrol', 4.00);

-- --------------------------------------------------------

--
-- Table structure for table `trafficoffencemanagement`
--

CREATE TABLE `trafficoffencemanagement` (
  `id` int(200) NOT NULL,
  `date` varchar(100) NOT NULL,
  `offence` varchar(200) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `driver` varchar(200) NOT NULL,
  `vehicle` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `trafficoffencemanagement`
--

INSERT INTO `trafficoffencemanagement` (`id`, `date`, `offence`, `amount`, `driver`, `vehicle`) VALUES
(1, '2023-12-19', 'Exceeded Speed Limit: 80 in a 60 zone', '52', 'test', 'ghost'),
(2, '2023-11-29', 'Exceeded Speed Limit: 80 in a 60 zone', '15', 'test', 'ghost'),
(3, '2023-12-14', 'Exceeded Speed Limit: 80 in a 60 zone', '54', 'test', 'ghost'),
(4, '2023-12-13', 'Exceeded Speed Limit: 80 in a 60 zone', '454', 'test', 'ghost');

-- --------------------------------------------------------

--
-- Table structure for table `truckmanagement`
--

CREATE TABLE `truckmanagement` (
  `id` int(11) NOT NULL,
  `brand` varchar(50) DEFAULT NULL,
  `model` varchar(50) DEFAULT NULL,
  `dateBought` date DEFAULT NULL,
  `vinNumber` varchar(50) DEFAULT NULL,
  `numberPlate` varchar(20) DEFAULT NULL,
  `licenseDisk` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `truckmanagement`
--

INSERT INTO `truckmanagement` (`id`, `brand`, `model`, `dateBought`, `vinNumber`, `numberPlate`, `licenseDisk`) VALUES
(8, 'Ghost Brand', 'Ghost Model', '2023-06-07', 'Ghost VIN', 'Ghost_ZA GP', '2023-06-29'),
(9, 'Nogwaja', '4x4', '2023-12-15', '12345', 'TMIS GP', '2023-12-23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employeemanagement`
--
ALTER TABLE `employeemanagement`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fuelmanagement`
--
ALTER TABLE `fuelmanagement`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `routes`
--
ALTER TABLE `routes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `servicemanagement`
--
ALTER TABLE `servicemanagement`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trafficoffencemanagement`
--
ALTER TABLE `trafficoffencemanagement`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `truckmanagement`
--
ALTER TABLE `truckmanagement`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employeemanagement`
--
ALTER TABLE `employeemanagement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `fuelmanagement`
--
ALTER TABLE `fuelmanagement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `routes`
--
ALTER TABLE `routes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `servicemanagement`
--
ALTER TABLE `servicemanagement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `trafficoffencemanagement`
--
ALTER TABLE `trafficoffencemanagement`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `truckmanagement`
--
ALTER TABLE `truckmanagement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
