-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 03, 2021 at 01:45 PM
-- Server version: 10.3.25-MariaDB-0ubuntu0.20.04.1
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
-- Database: `pstaph_3_db`
--
-- --------------------------------------------------------
--
-- Stand-in structure for view `CollectorGames`
-- (See below for the actual view)
--
CREATE TABLE `CollectorGames` (
`ItemID` int(11)
,`Publisher` varchar(15)
,`PlatformID` int(11)
,`Price` float
,`Description` varchar(250)
,`Edition` varchar(25)
,`ConditionID` varchar(15)
);
-- --------------------------------------------------------
--
-- Table structure for table `Contact`
--
CREATE TABLE `Contact` (
  `ContactID` int(11) NOT NULL,
  `FirstName` varchar(20) DEFAULT NULL,
  `LastName` varchar(20) DEFAULT NULL,
  `Email` varchar(30) DEFAULT NULL,
  `PhoneNumber` int(11) DEFAULT NULL,
  `Address` varchar(50) DEFAULT NULL,
  `EmergencyPhone` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
--
-- Dumping data for table `Contact`
--
INSERT INTO `Contact` (`ContactID`, `FirstName`, `LastName`, `Email`, 
`PhoneNumber`, `Address`, `EmergencyPhone`) VALUES
(1, 'Admin', 'Admin', 'Admin@Admin.com', 555555555, '5555 Admin', 555555555),
(2, 'Parker', 'Staph', 'Manager@HobbyStore.com', 315165354, '5301 Hearthstone', 
345654366),
(3, 'Bob', 'Dave', 'Dave@HobbyStore.com', 654564564, '5463 BlahBlah Road', 
246536364),
(4, 'Hank', 'HIll', 'Propane@HobbyStore.com', 253453465, '3463 Propane Lane', 
423423425),
(6, 'Bobby', 'Hill', 'ImokDad@Propane.com', 363453453, '5555 Pronepane Lane', 
234234234);
-- --------------------------------------------------------
--
-- Table structure for table `Customer`
--
CREATE TABLE `Customer` (
  `CustomerID` int(11) NOT NULL,
  `RewardsMemberID` int(11) DEFAULT NULL,
  `ContactID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
--
-- Dumping data for table `Customer`
--
INSERT INTO `Customer` (`CustomerID`, `RewardsMemberID`, `ContactID`) VALUES
(1, 1, 6);
-- --------------------------------------------------------
--
-- Table structure for table `Employee`
--
CREATE TABLE `Employee` (
  `EmployeID` int(11) NOT NULL,
  `RoleID` int(11) DEFAULT NULL,
  `ContactID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
--
-- Dumping data for table `Employee`
--
INSERT INTO `Employee` (`EmployeID`, `RoleID`, `ContactID`) VALUES
(1, 1, 2),
(2, 2, 3),
(3, 3, 4);
-- --------------------------------------------------------
--
-- Table structure for table `Item`
--
CREATE TABLE `Item` (
  `ItemID` int(11) NOT NULL,
  `Publisher` varchar(15) DEFAULT NULL,
  `PlatformID` int(11) DEFAULT NULL,
  `Price` float DEFAULT NULL,
  `Description` varchar(250) DEFAULT NULL,
  `Edition` varchar(25) DEFAULT NULL,
  `ConditionID` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
--
-- Dumping data for table `Item`
--
INSERT INTO `Item` (`ItemID`, `Publisher`, `PlatformID`, `Price`, `Description`, 
`Edition`, `ConditionID`) VALUES
(1, 'Sony', 1, 49.99, 'Marvel\'s Spider-Man: Miles Morales: Regular Edition', 
'Regular', 'New'),
(2, 'Capcom', 1, 219.99, 'Resident Evil 8: Collectors Edition', 'Collector', 
'New'),
(3, 'Nintendo', 3, 100, 'Fire Emblem: Three houses special edition', 'Collector', 
'New'),
(4, 'Microsoft', 2, 69.99, 'Halo Infinite: Regular edition', 'Regular', 'New');
-- --------------------------------------------------------
--
-- Table structure for table `Member`
--
CREATE TABLE `Member` (
  `RewardsMemberID` int(11) NOT NULL,
  `MemberTeir` int(11) DEFAULT NULL,
  `MemberStartDate` date DEFAULT NULL,
  `MememberEndDate` date DEFAULT NULL,
  `RewardPoints` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
--
-- Dumping data for table `Member`
--
INSERT INTO `Member` (`RewardsMemberID`, `MemberTeir`, `MemberStartDate`, 
`MememberEndDate`, `RewardPoints`) VALUES
(1, 2, '2021-05-01', '2022-05-01', 53);
-- --------------------------------------------------------
--
-- Table structure for table `Platform`
--
CREATE TABLE `Platform` (
  `PlatformID` int(11) NOT NULL,
  `PlatformName` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
--
-- Dumping data for table `Platform`
--
INSERT INTO `Platform` (`PlatformID`, `PlatformName`) VALUES
(1, 'Playstation5'),
(2, 'XboxSeriesX'),
(3, 'NintendoSwitch');
-- --------------------------------------------------------
--
-- Stand-in structure for view `PlayStation5Games`
-- (See below for the actual view)
--
CREATE TABLE `PlayStation5Games` (
`ItemID` int(11)
,`Publisher` varchar(15)
,`PlatformID` int(11)
,`Price` float
,`Description` varchar(250)
,`Edition` varchar(25)
,`ConditionID` varchar(15)
);
-- --------------------------------------------------------
--
-- Table structure for table `Repair`
--
CREATE TABLE `Repair` (
  `RepairID` int(11) NOT NULL,
  `EmployeID` int(11) DEFAULT NULL,
  `SystemID` int(11) DEFAULT NULL,
  `RepairPrice` float DEFAULT NULL,
  `Description` varchar(250) DEFAULT NULL,
  `StartDate` date DEFAULT NULL,
  `EndDate` date DEFAULT NULL,
  `Status` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
--
-- Dumping data for table `Repair`
--
INSERT INTO `Repair` (`RepairID`, `EmployeID`, `SystemID`, `RepairPrice`, 
`Description`, `StartDate`, `EndDate`, `Status`) VALUES
(1, 2, 1, 59.99, 'HDMI PORT BROKE', '2021-05-01', '2021-05-04', 'FIXED'),
(2, 2, 2, 29.99, 'USB PORT BROKE', '2021-05-01', '2021-05-31', 'WAITING ON PART');
-- --------------------------------------------------------
--
-- Table structure for table `Role`
--
CREATE TABLE `Role` (
  `RoleID` int(11) NOT NULL,
  `RoleName` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
--
-- Dumping data for table `Role`
--
INSERT INTO `Role` (`RoleID`, `RoleName`) VALUES
(1, 'Manager'),
(2, 'Repair'),
(3, 'Sales');
-- --------------------------------------------------------
--
-- Table structure for table `Sale`
--
CREATE TABLE `Sale` (
  `SaleID` int(11) NOT NULL,
  `ItemID` int(11) DEFAULT NULL,
  `CustomerID` int(11) DEFAULT NULL,
  `RepairID` int(11) DEFAULT NULL,
  `SaleDate` date DEFAULT NULL,
  `SalePrice` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
--
-- Dumping data for table `Sale`
--
INSERT INTO `Sale` (`SaleID`, `ItemID`, `CustomerID`, `RepairID`, `SaleDate`, 
`SalePrice`) VALUES
(1, 1, 1, NULL, '2021-05-01', 59.99),
(2, 2, 1, 1, '2021-05-02', 29.99);
--
-- Triggers `Sale`
--
DELIMITER $$
CREATE TRIGGER `Sale_before_year_move` BEFORE DELETE ON `Sale` FOR EACH ROW BEGIN
INSERT INTO Sales2020
SET
SaleID = OLD.SaleID,
ItemID = OLD.ItemID,
CustomerID = OLD.CustomerID,
RepairID = OLD.RepairID,
SaleDate = OLD.SaleDate,
SalePrice = OLD.SalePrice,
changeMadeBy = USER (),
changeDate = NOW();
END
$$
DELIMITER ;
-- --------------------------------------------------------
--
-- Table structure for table `Supplier`
--
CREATE TABLE `Supplier` (
  `SystemID` int(11) NOT NULL,
  `PlatformID` int(11) DEFAULT NULL,
  `PartID` varchar(50) DEFAULT NULL,
  `Tools` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
--
-- Dumping data for table `Supplier`
--
INSERT INTO `Supplier` (`SystemID`, `PlatformID`, `PartID`, `Tools`) VALUES
(1, 1, '2fh5ds', '36tg5'),
(2, 1, '24243fs', 'f44fe');
-- --------------------------------------------------------
--
-- Table structure for table `System`
--
CREATE TABLE `System` (
  `SystemID` int(11) NOT NULL,
  `SystemName` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
--
-- Dumping data for table `System`
--
INSERT INTO `System` (`SystemID`, `SystemName`) VALUES
(1, 'Playstation5'),
(2, 'XboxSeriesX');
-- --------------------------------------------------------
--
-- Structure for view `CollectorGames`
--
DROP TABLE IF EXISTS `CollectorGames`;
CREATE ALGORITHM=UNDEFINED DEFINER=`pstaph`@`localhost` SQL SECURITY DEFINER VIEW 
`CollectorGames`  AS  select `Item`.`ItemID` AS `ItemID`,`Item`.`Publisher` AS 
`Publisher`,`Item`.`PlatformID` AS `PlatformID`,`Item`.`Price` AS 
`Price`,`Item`.`Description` AS `Description`,`Item`.`Edition` AS 
`Edition`,`Item`.`ConditionID` AS `ConditionID` from `Item` where `Item`.`Edition` 
= 'Collector' ;
-- --------------------------------------------------------
--
-- Structure for view `PlayStation5Games`
--
DROP TABLE IF EXISTS `PlayStation5Games`;
CREATE ALGORITHM=UNDEFINED DEFINER=`pstaph`@`localhost` SQL SECURITY DEFINER VIEW 
`PlayStation5Games`  AS  select `Item`.`ItemID` AS `ItemID`,`Item`.`Publisher` AS 
`Publisher`,`Item`.`PlatformID` AS `PlatformID`,`Item`.`Price` AS 
`Price`,`Item`.`Description` AS `Description`,`Item`.`Edition` AS 
`Edition`,`Item`.`ConditionID` AS `ConditionID` from `Item` where 
`Item`.`PlatformID` = 1 ;
--
-- Indexes for dumped tables
--
--
-- Indexes for table `Contact`
--
ALTER TABLE `Contact`
  ADD PRIMARY KEY (`ContactID`);
--
-- Indexes for table `Customer`
--
ALTER TABLE `Customer`
  ADD PRIMARY KEY (`CustomerID`),
  ADD KEY `RewardsMemberID` (`RewardsMemberID`),
  ADD KEY `ContactID` (`ContactID`);
--
-- Indexes for table `Employee`
--
ALTER TABLE `Employee`
  ADD PRIMARY KEY (`EmployeID`),
  ADD KEY `RoleID` (`RoleID`),
  ADD KEY `ContactID` (`ContactID`);
--
-- Indexes for table `Item`
--
ALTER TABLE `Item`
  ADD PRIMARY KEY (`ItemID`),
  ADD KEY `PlatformID` (`PlatformID`);
--
-- Indexes for table `Member`
--
ALTER TABLE `Member`
  ADD PRIMARY KEY (`RewardsMemberID`);
--
-- Indexes for table `Platform`
--
ALTER TABLE `Platform`
  ADD PRIMARY KEY (`PlatformID`);
--
-- Indexes for table `Repair`
--
ALTER TABLE `Repair`
  ADD PRIMARY KEY (`RepairID`),
  ADD KEY `SystemID` (`SystemID`),
  ADD KEY `EmployeID` (`EmployeID`);
--
-- Indexes for table `Role`
--
ALTER TABLE `Role`
  ADD PRIMARY KEY (`RoleID`);
--
-- Indexes for table `Sale`
--
ALTER TABLE `Sale`
  ADD PRIMARY KEY (`SaleID`),
  ADD KEY `CustomerID` (`CustomerID`),
  ADD KEY `RepairID` (`RepairID`);
--
-- Indexes for table `Supplier`
--
ALTER TABLE `Supplier`
  ADD PRIMARY KEY (`SystemID`),
  ADD KEY `PlatformID` (`PlatformID`);
--
-- Indexes for table `System`
--
ALTER TABLE `System`
  ADD PRIMARY KEY (`SystemID`);
--
-- Constraints for dumped tables
--
--
-- Constraints for table `Customer`
--
ALTER TABLE `Customer`
  ADD CONSTRAINT `Customer_ibfk_1` FOREIGN KEY (`RewardsMemberID`) REFERENCES 
`Member` (`RewardsMemberID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `Customer_ibfk_2` FOREIGN KEY (`ContactID`) REFERENCES `Contact` 
(`ContactID`) ON UPDATE CASCADE;
--
-- Constraints for table `Employee`
--
ALTER TABLE `Employee`
  ADD CONSTRAINT `Employee_ibfk_1` FOREIGN KEY (`RoleID`) REFERENCES `Role` 
(`RoleID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `Employee_ibfk_2` FOREIGN KEY (`ContactID`) REFERENCES `Contact` 
(`ContactID`) ON UPDATE CASCADE;
--
-- Constraints for table `Item`
--
ALTER TABLE `Item`
  ADD CONSTRAINT `Item_ibfk_1` FOREIGN KEY (`PlatformID`) REFERENCES `Platform` 
(`PlatformID`) ON UPDATE CASCADE;
--
-- Constraints for table `Repair`
--
ALTER TABLE `Repair`
  ADD CONSTRAINT `Repair_ibfk_1` FOREIGN KEY (`SystemID`) REFERENCES `System` 
(`SystemID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `Repair_ibfk_2` FOREIGN KEY (`EmployeID`) REFERENCES `Employee` 
(`EmployeID`) ON UPDATE CASCADE;
--
-- Constraints for table `Sale`
--
ALTER TABLE `Sale`
  ADD CONSTRAINT `Sale_ibfk_1` FOREIGN KEY (`CustomerID`) REFERENCES `Customer` 
(`CustomerID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `Sale_ibfk_2` FOREIGN KEY (`RepairID`) REFERENCES `Repair` 
(`RepairID`) ON UPDATE CASCADE;
--
-- Constraints for table `Supplier`
--
ALTER TABLE `Supplier`
  ADD CONSTRAINT `Supplier_ibfk_1` FOREIGN KEY (`PlatformID`) REFERENCES `Platform`
(`PlatformID`) ON UPDATE CASCADE;
COMMIT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;