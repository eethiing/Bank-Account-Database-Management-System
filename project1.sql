-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 22, 2020 at 09:23 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project1`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `ACC_NO` char(10) NOT NULL,
  `ACC_NAME` varchar(30) NOT NULL,
  `BALANCE` decimal(12,2) NOT NULL,
  `ACC_STATUS` varchar(15) DEFAULT NULL,
  `ACC_TYPE` varchar(20) DEFAULT NULL,
  `CUST_ID` char(12) NOT NULL,
  `BRANCH_CODE` char(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`ACC_NO`, `ACC_NAME`, `BALANCE`, `ACC_STATUS`, `ACC_TYPE`, `CUST_ID`, `BRANCH_CODE`) VALUES
('1101414721', 'David How', '32.50', 'inactive', 'Savings accounts', '357398389827', 'CTBBMYKL'),
('1128191356', 'Chitose Ichinose', '2718.70', 'active', 'Savings accounts', '397570433580', 'BISLMYKA'),
('1153425215', 'Jackson Lee', '24121.43', 'active', 'Savings accounts', '747780574093', 'ALSRMYKL'),
('1158536965', 'Samus Davis', '183921.21', 'active', 'Savings accounts', '406694341037', 'MFBBMYKL'),
('1192313521', 'Chee Kwang Lim', '12312.28', 'active', 'Current Account', '965466626700', 'ALSRMYKL'),
('1198578550', 'Mir San', '4521.18', 'active', 'Fixed Deposit', '687097862935', 'PHBMMYKL'),
('1876219460', 'Mitchell Lee', '65023.20', 'active', 'Savings accounts', '488313508949', 'ALSRMYKL'),
('2586479235', 'Samuel Lee', '102392.30', 'active', 'Savings Account', '860146691614', 'BISLMYKA'),
('2650498612', 'Asami Kira', '1802.28', 'active', 'Current Account', '436072348672', 'CTBBMYKL'),
('5315986458', 'Jane Lee', '200.00', 'not active', 'Savings Account', '506181744999', 'MFBBMYKL'),
('5641986254', 'Asa Ki', '3231223.00', 'active', 'Fixed Deposit', '721900905878', 'PHBMMYKL'),
('7532698465', 'Michael Lee', '50.00', 'not active', 'Savings Account', '205508939311', 'MFBBMYKL'),
('9615736984', 'David Kim', '560023.20', 'active', 'Savings accounts', '556790018987', 'BISLMYKA');

-- --------------------------------------------------------

--
-- Table structure for table `bank`
--

CREATE TABLE `bank` (
  `BANK_CODE` char(8) NOT NULL,
  `BANK_NAME` varchar(30) NOT NULL,
  `BANK_ADDRESS` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bank`
--

INSERT INTO `bank` (`BANK_CODE`, `BANK_NAME`, `BANK_ADDRESS`) VALUES
('12345678', 'Wishful Bank', '10, South Avenue'),
('45235443', 'Rememberance Bank', '88, Kallisburg Town'),
('52686425', 'Life Bank', '12, Dallas Downtown'),
('77832416', 'Helpful Bank', '73, North Wing City'),
('98257601', 'Era Bank', '43, New Island');

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `BRANCH_CODE` char(8) NOT NULL,
  `BRANCH_ADDRESS` varchar(100) NOT NULL,
  `BANK_CODE` char(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`BRANCH_CODE`, `BRANCH_ADDRESS`, `BANK_CODE`) VALUES
('ALSRMYKL', '22, Downtown Road', '77832416'),
('BISLMYKA', '72, Success Street', '45235443'),
('CTBBMYKL', '26, Pithole Street', '45235443'),
('MFBBMYKL', '17, Wellington Road', '12345678'),
('PHBMMYKL', '10, Richmond Road', '12345678');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `CUST_ID` char(12) NOT NULL,
  `CUST_FNAME` varchar(20) NOT NULL,
  `CUST_LNAME` varchar(20) NOT NULL,
  `CUST_ADDRESS` varchar(100) NOT NULL,
  `CONTACT_NO` char(10) NOT NULL,
  `EMAIL` varchar(40) DEFAULT NULL,
  `CUST_TYPE` varchar(20) DEFAULT NULL,
  `BRANCH_CODE` char(8) NOT NULL,
  `EMP_ID` char(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`CUST_ID`, `CUST_FNAME`, `CUST_LNAME`, `CUST_ADDRESS`, `CONTACT_NO`, `EMAIL`, `CUST_TYPE`, `BRANCH_CODE`, `EMP_ID`) VALUES
('205508939311', 'Michael', 'Lee', '129,Boulveyard', '0127986672', 'Michael@yahoo.com', 'Normal', 'CTBBMYKL', '8797023'),
('357398389827', 'David', 'How', '70,Dreamy Road', '0166628887', 'DavidHow@hotmail.com', 'Normal', 'CTBBMYKL', '6666802'),
('397570433580', 'Chitose', 'Ichinose', '193,Hillsburg Hill', '0127444772', 'Chitose@yahoo.com', 'Normal', 'BISLMYKA', '1111159'),
('406694341037', 'Samus', 'Davis', '17,Mould Street', '0139695737', 'SDavis@gmail.com', 'Premium', 'MFBBMYKL', '7652258'),
('436072348672', 'Asami', 'Kira', '78,Monte Street', '0138579287', 'AsamiKira@hotmail.com', 'Normal', 'BISLMYKA', '7898615'),
('488313508949', 'Mitchell', 'Lee', '98,Boulder Street', '0136664237', 'Mitchellee@gmail.com', 'Normal', 'CTBBMYKL', '8797023'),
('506181744999', 'Jane', 'Lee', '12,Starry Boulveyard', '0173432172', 'JaneLee@yahoo.com', 'Normal', 'MFBBMYKL', '7652258'),
('556790018987', 'David', 'Kim', '23,Rainbow Road', '017429287', 'DavidKim@hotmail.com', 'Normal', 'MFBBMYKL', '2423753'),
('687097862935', 'Mir', 'San', '19,Boulveyard', '0129927772', 'Mir@yahoo.com', 'Normal', 'PHBMMYKL', '5554528'),
('721900905878', 'Asa', 'Ki', '23,Dreamy Road', '0166629287', 'AsaKi@hotmail.com', 'Premium', 'PHBMMYKL', '2341097'),
('747780574093', 'Jackson', 'Lee', '17,Starry Street', '0125556437', 'JacksonL@gmail.com', 'Normal', 'ALSRMYKL', '7892649'),
('860146691614', 'Samuel', 'Lee', '17,Boulder Street', '0139646437', 'Slee@gmail.com', 'Premium', 'PHBMMYKL', '5554528'),
('965466626700', 'Chee Kwang', 'Lim', '19,Avenue Yard', '0123214312', 'LimCK@yahoo.com', 'Normal', 'ALSRMYKL', '2452876');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `EMP_ID` char(7) NOT NULL,
  `EMP_FNAME` varchar(20) DEFAULT NULL,
  `EMP_LNAME` varchar(20) DEFAULT NULL,
  `EMP_POSITION` varchar(20) DEFAULT NULL,
  `BRANCH_CODE` char(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`EMP_ID`, `EMP_FNAME`, `EMP_LNAME`, `EMP_POSITION`, `BRANCH_CODE`) VALUES
('1111159', 'John', 'Wee', 'Officer', 'BISLMYKA'),
('2341097', 'Jonathan', 'Lim', 'Manager', 'PHBMMYKL'),
('2423753', 'Richard', 'Lee', 'Officer', 'MFBBMYKL'),
('2452876', 'David', 'Lee', 'Officer', 'ALSRMYKL'),
('2512456', 'Sam', 'Ho', 'Clerk', 'MFBBMYKL'),
('3636235', 'Mei', 'Lim', 'Manager', 'MFBBMYKL'),
('4863521', 'William', 'Chong', 'Manager', 'ALSRMYKL'),
('5467981', 'Mira', 'Ki', 'Clerk', 'PHBMMYKL'),
('5554528', 'Nexon', 'Lim', 'Clerk', 'BISLMYKA'),
('6666802', 'Samira', 'Tee', 'Manager', 'CTBBMYKL'),
('7652258', 'Kira', 'Lee', 'Officer', 'MFBBMYKL'),
('7777894', 'Kelvin', 'Reeves', 'Clerk', 'CTBBMYKL'),
('7828091', 'John', 'Lee', 'Officer', 'PHBMMYKL'),
('7892649', 'Robert', 'Lu', 'Officer', 'ALSRMYKL'),
('7898615', 'Karls', 'Lee', 'Manager', 'BISLMYKA'),
('8797023', 'James', 'Lee', 'Officer', 'CTBBMYKL');

-- --------------------------------------------------------

--
-- Table structure for table `loan`
--

CREATE TABLE `loan` (
  `LOAN_ID` char(17) NOT NULL,
  `INTEREST_RATE` decimal(5,2) NOT NULL,
  `LOAN_TYPE` varchar(20) DEFAULT NULL,
  `LOAN_PERIOD` int(11) NOT NULL,
  `LOAN_AMOUNT` decimal(12,2) NOT NULL,
  `CUST_ID` char(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `loan`
--

INSERT INTO `loan` (`LOAN_ID`, `INTEREST_RATE`, `LOAN_TYPE`, `LOAN_PERIOD`, `LOAN_AMOUNT`, `CUST_ID`) VALUES
('12242565728134020', '2.30', 'Personal loan', 5, '5000.00', '406694341037'),
('21325755342157021', '3.15', 'Personal loan', 7, '10000.00', '747780574093'),
('31627121456190831', '2.85', 'House loan', 9, '300000.00', '687097862935'),
('45658302966511112', '2.65', 'Car loan', 10, '180000.00', '397570433580'),
('56648020613199222', '3.10', 'House loan', 10, '500000.00', '357398389827'),
('66777343225678544', '2.65', 'Car loan', 12, '135000.00', '965466626700');

-- --------------------------------------------------------

--
-- Table structure for table `loan_app`
--

CREATE TABLE `loan_app` (
  `LOAN_ID` char(17) NOT NULL,
  `CUST_ID` char(12) NOT NULL,
  `DATE_BORROWED` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `loan_app`
--

INSERT INTO `loan_app` (`LOAN_ID`, `CUST_ID`, `DATE_BORROWED`) VALUES
('12242565728134020', '406694341037', '2011-08-09'),
('21325755342157021', '747780574093', '2012-07-20'),
('31627121456190831', '687097862935', '2013-10-29'),
('45658302966511112', '397570433580', '2014-06-14'),
('56648020613199222', '357398389827', '2016-12-24'),
('66777343225678544', '965466626700', '2019-02-12');

-- --------------------------------------------------------

--
-- Table structure for table `ownership`
--

CREATE TABLE `ownership` (
  `ACC_NO` char(10) NOT NULL,
  `CUST_ID` char(12) NOT NULL,
  `DATE_CREATED` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ownership`
--

INSERT INTO `ownership` (`ACC_NO`, `CUST_ID`, `DATE_CREATED`) VALUES
('1128191356', '397570433580', '2018-05-21'),
('1153425215', '747780574093', '2005-01-23'),
('1158536965', '406694341037', '2010-09-01'),
('1192313521', '965466626700', '2020-07-09'),
('1198578550', '687097862935', '2016-05-31'),
('1876219460', '488313508949', '2013-11-15'),
('2586479235', '860146691614', '2004-03-21'),
('2650498612', '436072348672', '2012-04-09'),
('5315986458', '506181744999', '2019-07-08'),
('5641986254', '721900905878', '2019-06-18'),
('7532698465', '205508939311', '2019-10-01'),
('9615736984', '556790018987', '2016-01-02');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `REFERENCE_NO` char(9) NOT NULL,
  `RECEPIENT_NAME` varchar(30) NOT NULL,
  `TRANSACTION_AMOUNT` decimal(12,2) NOT NULL,
  `TRANSACTION_DATE` date NOT NULL,
  `ACC_NO` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`REFERENCE_NO`, `RECEPIENT_NAME`, `TRANSACTION_AMOUNT`, `TRANSACTION_DATE`, `ACC_NO`) VALUES
('123451231', 'Nurul ', '125.80', '2016-06-09', '5641986254'),
('123456789', 'Awang', '200.30', '2020-08-02', '1876219460'),
('145623118', 'Wendy Wong', '2300.00', '2019-04-05', '1101414721'),
('145678129', 'Sherene Yeoh', '230.00', '2020-03-04', '2650498612'),
('812356941', 'June Osborne', '500.50', '2019-04-05', '2650498612'),
('815362182', 'Chris Khoo', '2210.90', '2018-06-02', '1128191356'),
('821302654', 'Jackson', '300.00', '2019-08-01', '7532698465'),
('839102859', 'Delvin Low', '1920.93', '2019-07-30', '1158536965'),
('842031569', 'Sarah Yen', '123.20', '2018-09-11', '5641986254'),
('849102859', 'Mei Yi Lim', '342.00', '2020-09-10', '1158536965'),
('849119283', 'Hui Qi Yap', '53.12', '2020-09-10', '1153425215'),
('849753698', 'Jason Lim', '50.00', '2019-11-05', '1876219460');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`ACC_NO`),
  ADD KEY `CUST_ID` (`CUST_ID`),
  ADD KEY `BRANCH_CODE` (`BRANCH_CODE`);

--
-- Indexes for table `bank`
--
ALTER TABLE `bank`
  ADD PRIMARY KEY (`BANK_CODE`);

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`BRANCH_CODE`),
  ADD KEY `BANK_CODE` (`BANK_CODE`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`CUST_ID`),
  ADD KEY `BRANCH_CODE` (`BRANCH_CODE`),
  ADD KEY `EMP_ID` (`EMP_ID`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`EMP_ID`),
  ADD KEY `BRANCH_CODE` (`BRANCH_CODE`);

--
-- Indexes for table `loan`
--
ALTER TABLE `loan`
  ADD PRIMARY KEY (`LOAN_ID`),
  ADD KEY `CUST_ID` (`CUST_ID`);

--
-- Indexes for table `loan_app`
--
ALTER TABLE `loan_app`
  ADD KEY `LOAN_ID` (`LOAN_ID`),
  ADD KEY `CUST_ID` (`CUST_ID`);

--
-- Indexes for table `ownership`
--
ALTER TABLE `ownership`
  ADD PRIMARY KEY (`ACC_NO`,`CUST_ID`),
  ADD KEY `CUST_ID` (`CUST_ID`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`REFERENCE_NO`),
  ADD KEY `ACC_NO` (`ACC_NO`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `account`
--
ALTER TABLE `account`
  ADD CONSTRAINT `account_ibfk_1` FOREIGN KEY (`CUST_ID`) REFERENCES `customer` (`CUST_ID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `account_ibfk_2` FOREIGN KEY (`BRANCH_CODE`) REFERENCES `branch` (`BRANCH_CODE`) ON UPDATE CASCADE;

--
-- Constraints for table `branch`
--
ALTER TABLE `branch`
  ADD CONSTRAINT `branch_ibfk_1` FOREIGN KEY (`BANK_CODE`) REFERENCES `bank` (`BANK_CODE`) ON UPDATE CASCADE;

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`BRANCH_CODE`) REFERENCES `branch` (`BRANCH_CODE`) ON UPDATE CASCADE,
  ADD CONSTRAINT `customer_ibfk_2` FOREIGN KEY (`EMP_ID`) REFERENCES `employee` (`EMP_ID`) ON UPDATE CASCADE;

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`BRANCH_CODE`) REFERENCES `branch` (`BRANCH_CODE`) ON UPDATE CASCADE;

--
-- Constraints for table `loan`
--
ALTER TABLE `loan`
  ADD CONSTRAINT `loan_ibfk_1` FOREIGN KEY (`CUST_ID`) REFERENCES `customer` (`CUST_ID`) ON UPDATE CASCADE;

--
-- Constraints for table `loan_app`
--
ALTER TABLE `loan_app`
  ADD CONSTRAINT `loan_app_ibfk_1` FOREIGN KEY (`LOAN_ID`) REFERENCES `loan` (`LOAN_ID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `loan_app_ibfk_2` FOREIGN KEY (`CUST_ID`) REFERENCES `customer` (`CUST_ID`) ON UPDATE CASCADE;

--
-- Constraints for table `ownership`
--
ALTER TABLE `ownership`
  ADD CONSTRAINT `ownership_ibfk_1` FOREIGN KEY (`ACC_NO`) REFERENCES `account` (`ACC_NO`) ON UPDATE CASCADE,
  ADD CONSTRAINT `ownership_ibfk_2` FOREIGN KEY (`CUST_ID`) REFERENCES `customer` (`CUST_ID`) ON UPDATE CASCADE;

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_ibfk_1` FOREIGN KEY (`ACC_NO`) REFERENCES `account` (`ACC_NO`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
