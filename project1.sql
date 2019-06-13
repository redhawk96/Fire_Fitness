-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 13, 2019 at 06:38 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
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
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `admin_name` varchar(20) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `admin_name`, `password`) VALUES
(1, 'abishan', 'abi123'),
(2, 'uditha', 'uditha123');

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `member_ID` varchar(10) NOT NULL,
  `invoice_ID` varchar(50) NOT NULL,
  `gym_total` double NOT NULL,
  `sports_total` double NOT NULL,
  `membership_fee` double NOT NULL,
  `total_payment` double NOT NULL,
  `confirmed_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`member_ID`, `invoice_ID`, `gym_total`, `sports_total`, `membership_fee`, `total_payment`, `confirmed_date`, `status`) VALUES
('M003', '100', 0, 1400, 3000, 4400, '2018-06-09 09:11:51', 'Pending'),
('M002', '102', 2200, 0, 2000, 4200, '2018-06-13 06:12:56', 'paid'),
('M008', '106', 1300, 3600, 3000, 7900, '2018-06-12 14:22:42', 'paid'),
('M015', '107', 0, 1400, 5000, 6400, '2018-06-13 08:11:30', 'Pending'),
('M016', '108', 0, 1000, 3000, 4000, '2018-08-08 11:11:15', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `ID` varchar(10) NOT NULL,
  `fName` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL,
  `member_type` varchar(20) NOT NULL,
  `Gender` varchar(20) NOT NULL,
  `Age` int(11) NOT NULL,
  `EMail` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`ID`, `fName`, `password`, `member_type`, `Gender`, `Age`, `EMail`) VALUES
('M002', 'Sohan', 'sohan96', 'Silver', 'Male', 21, 'sohan96@gmail.com'),
('M003', 'fasrin', 'aleem123', 'Gold', 'Male', 20, 'fasrin@gmail.com'),
('M004', 'jahrin', 'jahrin12', 'Bronze', 'Male', 21, 'jahrin@gmail.com'),
('M005', 'Kirul', 'kirul123', 'Platinum', 'Male', 21, 'kirul@gmail.com'),
('M006', 'Nirash', 'nirash123', 'Silver', 'Male', 23, 'nirash@gmail.com'),
('M007', 'Uditha', '1234567', 'Platinum', 'male', 22, 'uditha@gmail.com'),
('M008', 'Waseem', 'waseem123', 'Gold', 'male', 20, 'waseem@gmail.com'),
('M009', 'Savini', 'savini1996', 'Bronze', 'female', 22, 'savini@gmail.com'),
('M010', 'Amashi', 'nigga123', 'Platinum', 'female', 21, 'nigga@gmail.com'),
('M011', 'Kaushka', 'dias@123', 'Gold', 'male', 20, 'kaushka@gmail.com'),
('M012', 'Sachith', 'sachith', 'Bronze', 'male', 23, 'sachi@gmail.com'),
('M013', 'manoj007', 'manoj123', 'Platinum', 'male', 21, 'lalala@lol.lk'),
('M014', 'Ishan', 'ishan@123', 'Gold', 'male', 21, 'ishanksen@gmail.com'),
('M015', 'sohan12', 's123', 'Platinum', 'male', 18, 'danushka@gmail.com'),
('M016', 'kalani', 'kalani1000', 'Gold', 'female', 32, 'kalanilakshani64@gmail.com'),
('M017', 'janadi', 'jana123', 'Gold', 'female', 21, 'janadi@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

CREATE TABLE `schedule` (
  `schedule_ID` varchar(10) NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schedule`
--

INSERT INTO `schedule` (`schedule_ID`, `start_time`, `end_time`) VALUES
('TM001', '08:30:00', '10:30:00'),
('TM002', '11:00:00', '13:00:00'),
('TM003', '13:30:00', '15:30:00'),
('TM004', '16:00:00', '18:00:00'),
('TM005', '20:00:00', '22:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `sports`
--

CREATE TABLE `sports` (
  `sport_ID` varchar(10) NOT NULL,
  `sport_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sports`
--

INSERT INTO `sports` (`sport_ID`, `sport_name`) VALUES
('S001', 'Badminton'),
('S002', 'TableTennis'),
('S003', 'Futsal'),
('S004', 'Swimming');

-- --------------------------------------------------------

--
-- Table structure for table `sports_trainer`
--

CREATE TABLE `sports_trainer` (
  `trainer_ID` varchar(10) NOT NULL,
  `trainer_name` varchar(30) NOT NULL,
  `sport` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sports_trainer`
--

INSERT INTO `sports_trainer` (`trainer_ID`, `trainer_name`, `sport`) VALUES
('ST001', 'Dwayne', 'S001'),
('ST002', 'Jack', 'S002'),
('ST003', 'Amila', 'S003'),
('ST004', 'Ravi', 'S004'),
('ST005', 'Joseph', 'S001'),
('ST006', 'Matthew', 'S002'),
('ST007', 'Alan', 'S003'),
('ST008', 'Laxman Alwis', 'S004'),
('ST009', 'Rohan', 'S001');

-- --------------------------------------------------------

--
-- Table structure for table `sports_trainer_booking`
--

CREATE TABLE `sports_trainer_booking` (
  `member_ID` varchar(10) NOT NULL,
  `sports_trainer_ID` varchar(10) NOT NULL,
  `Date` date NOT NULL,
  `schedule_ID` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sports_trainer_booking`
--

INSERT INTO `sports_trainer_booking` (`member_ID`, `sports_trainer_ID`, `Date`, `schedule_ID`) VALUES
('M003', 'ST004', '2018-06-14', 'TM004'),
('M008', 'ST003', '2018-06-20', 'TM003'),
('M008', 'ST005', '2018-05-25', 'TM001'),
('M015', 'ST008', '2018-06-20', 'TM002'),
('M016', 'ST005', '2018-08-17', 'TM001');

-- --------------------------------------------------------

--
-- Table structure for table `sports_trainer_schedule`
--

CREATE TABLE `sports_trainer_schedule` (
  `trainer_ID` varchar(10) NOT NULL,
  `schedule_ID` varchar(10) NOT NULL,
  `day` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sports_trainer_schedule`
--

INSERT INTO `sports_trainer_schedule` (`trainer_ID`, `schedule_ID`, `day`) VALUES
('ST001', 'TM001', 'Monday'),
('ST002', 'TM002', 'Tuesday'),
('ST003', 'TM003', 'Wednesday'),
('ST004', 'TM004', 'Thursday'),
('ST005', 'TM001', 'Friday'),
('ST006', 'TM003', 'Saturday'),
('ST007', 'TM005', 'Sunday'),
('ST008', 'TM002', 'Wednesday'),
('ST009', 'TM004', 'Friday');

-- --------------------------------------------------------

--
-- Stand-in structure for view `test`
-- (See below for the actual view)
--
CREATE TABLE `test` (
`userID` varchar(10)
,`first_Name` varchar(20)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `test1`
-- (See below for the actual view)
--
CREATE TABLE `test1` (
`time_ID` varchar(10)
,`first_time` time
);

-- --------------------------------------------------------

--
-- Table structure for table `trainer`
--

CREATE TABLE `trainer` (
  `Trainer_ID` varchar(10) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Specialization` varchar(10) NOT NULL,
  `Contact_Number` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trainer`
--

INSERT INTO `trainer` (`Trainer_ID`, `Name`, `Specialization`, `Contact_Number`) VALUES
('T002', 'Kevin', 'W001', '0712377516'),
('T003', 'Ramesh', 'W004', '0761163892'),
('T004', 'Katrina', 'W001', '0752174826'),
('T005', 'Andrew', 'W003', '0721753871'),
('T006', 'Uditha perera', 'W003', '0711832750'),
('T007', 'Jeewan', 'W002', '789126460'),
('T008', 'Tharushi', 'W001', '0775125836'),
('T009', 'Sunil', 'W004', '0701567126'),
('T010', 'Wesley', 'W002', '0764231886'),
('T011', 'peter', 'W002', '0784569841');

-- --------------------------------------------------------

--
-- Table structure for table `trainer_booking`
--

CREATE TABLE `trainer_booking` (
  `member_ID` varchar(10) NOT NULL,
  `trainer_ID` varchar(10) NOT NULL,
  `workout_ID` varchar(10) NOT NULL,
  `Date` date NOT NULL,
  `schedule_ID` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trainer_booking`
--

INSERT INTO `trainer_booking` (`member_ID`, `trainer_ID`, `workout_ID`, `Date`, `schedule_ID`) VALUES
('M002', 'T010', 'W002', '2018-05-27', 'TM002'),
('M004', 'T004', 'W001', '2018-06-12', 'TM003'),
('M004', 'T004', 'W001', '2018-06-19', 'TM003'),
('M004', 'T008', 'W001', '2018-06-15', 'TM002'),
('M005', 'T008', 'W001', '2018-06-15', 'TM002'),
('M008', 'T005', 'W003', '2018-06-16', 'TM005'),
('M009', 'T010', 'W002', '2018-06-17', 'TM002'),
('M010', 'T002', 'W001', '2018-06-13', 'TM003');

-- --------------------------------------------------------

--
-- Table structure for table `trainer_schedule`
--

CREATE TABLE `trainer_schedule` (
  `trainer_ID` varchar(10) NOT NULL,
  `schedule_ID` varchar(10) NOT NULL,
  `day` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trainer_schedule`
--

INSERT INTO `trainer_schedule` (`trainer_ID`, `schedule_ID`, `day`) VALUES
('T002', 'TM003', 'Wednesday'),
('T003', 'TM001', 'Thursday'),
('T004', 'TM003', 'Tuesday'),
('T005', 'TM003', 'Tuesday'),
('T005', 'TM005', 'Saturday'),
('T006', 'TM003', 'Saturday'),
('T007', 'TM003', 'Friday'),
('T008', 'TM002', 'Friday'),
('T009', 'TM001', 'Tuesday'),
('T009', 'TM004', 'Thursday'),
('T010', 'TM002', 'Sunday');

-- --------------------------------------------------------

--
-- Table structure for table `workout`
--

CREATE TABLE `workout` (
  `workout_ID` varchar(10) NOT NULL,
  `workout_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `workout`
--

INSERT INTO `workout` (`workout_ID`, `workout_name`) VALUES
('W001', 'Yoga'),
('W002', 'Cardio'),
('W003', 'Pilates'),
('W004', 'Weights');

-- --------------------------------------------------------

--
-- Structure for view `test`
--
DROP TABLE IF EXISTS `test`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `test`  AS  select `member`.`ID` AS `userID`,`member`.`fName` AS `first_Name` from `member` ;

-- --------------------------------------------------------

--
-- Structure for view `test1`
--
DROP TABLE IF EXISTS `test1`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `test1`  AS  select `schedule`.`schedule_ID` AS `time_ID`,`schedule`.`start_time` AS `first_time` from `schedule` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_name` (`admin_name`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`invoice_ID`),
  ADD KEY `fk_invoice` (`member_ID`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `schedule`
--
ALTER TABLE `schedule`
  ADD PRIMARY KEY (`schedule_ID`);

--
-- Indexes for table `sports`
--
ALTER TABLE `sports`
  ADD PRIMARY KEY (`sport_ID`);

--
-- Indexes for table `sports_trainer`
--
ALTER TABLE `sports_trainer`
  ADD PRIMARY KEY (`trainer_ID`),
  ADD KEY `fk_sports_trainer` (`sport`);

--
-- Indexes for table `sports_trainer_booking`
--
ALTER TABLE `sports_trainer_booking`
  ADD PRIMARY KEY (`member_ID`,`sports_trainer_ID`,`schedule_ID`,`Date`) USING BTREE,
  ADD KEY `fk2_sports_trainer_booking` (`sports_trainer_ID`),
  ADD KEY `fk3_sports-trainer_booking` (`schedule_ID`);

--
-- Indexes for table `sports_trainer_schedule`
--
ALTER TABLE `sports_trainer_schedule`
  ADD PRIMARY KEY (`trainer_ID`,`schedule_ID`),
  ADD KEY `fks_sports_trainer_schedule` (`schedule_ID`);

--
-- Indexes for table `trainer`
--
ALTER TABLE `trainer`
  ADD PRIMARY KEY (`Trainer_ID`),
  ADD KEY `fk_trainer` (`Specialization`);

--
-- Indexes for table `trainer_booking`
--
ALTER TABLE `trainer_booking`
  ADD PRIMARY KEY (`member_ID`,`trainer_ID`,`workout_ID`,`Date`,`schedule_ID`),
  ADD KEY `fk2_trainer_booking` (`trainer_ID`),
  ADD KEY `fk3_trainer_booking` (`workout_ID`),
  ADD KEY `fk4_trainer_booking` (`schedule_ID`);

--
-- Indexes for table `trainer_schedule`
--
ALTER TABLE `trainer_schedule`
  ADD PRIMARY KEY (`trainer_ID`,`schedule_ID`),
  ADD KEY `fk2_trainer_schedule` (`schedule_ID`);

--
-- Indexes for table `workout`
--
ALTER TABLE `workout`
  ADD PRIMARY KEY (`workout_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `invoice`
--
ALTER TABLE `invoice`
  ADD CONSTRAINT `fk_invoice` FOREIGN KEY (`member_ID`) REFERENCES `member` (`ID`);

--
-- Constraints for table `sports_trainer`
--
ALTER TABLE `sports_trainer`
  ADD CONSTRAINT `fk_sports_trainer` FOREIGN KEY (`sport`) REFERENCES `sports` (`sport_ID`);

--
-- Constraints for table `sports_trainer_booking`
--
ALTER TABLE `sports_trainer_booking`
  ADD CONSTRAINT `fk1_sports_trainer_booking` FOREIGN KEY (`member_ID`) REFERENCES `member` (`ID`),
  ADD CONSTRAINT `fk2_sports_trainer_booking` FOREIGN KEY (`sports_trainer_ID`) REFERENCES `sports_trainer` (`trainer_ID`),
  ADD CONSTRAINT `fk3_sports-trainer_booking` FOREIGN KEY (`schedule_ID`) REFERENCES `schedule` (`schedule_ID`);

--
-- Constraints for table `sports_trainer_schedule`
--
ALTER TABLE `sports_trainer_schedule`
  ADD CONSTRAINT `fk1_sports_trainer_schedule` FOREIGN KEY (`trainer_ID`) REFERENCES `sports_trainer` (`trainer_ID`),
  ADD CONSTRAINT `fks_sports_trainer_schedule` FOREIGN KEY (`schedule_ID`) REFERENCES `schedule` (`schedule_ID`);

--
-- Constraints for table `trainer`
--
ALTER TABLE `trainer`
  ADD CONSTRAINT `fk_trainer` FOREIGN KEY (`Specialization`) REFERENCES `workout` (`workout_ID`);

--
-- Constraints for table `trainer_booking`
--
ALTER TABLE `trainer_booking`
  ADD CONSTRAINT `fk1_trainer_booking` FOREIGN KEY (`member_ID`) REFERENCES `member` (`ID`),
  ADD CONSTRAINT `fk2_trainer_booking` FOREIGN KEY (`trainer_ID`) REFERENCES `trainer` (`Trainer_ID`),
  ADD CONSTRAINT `fk3_trainer_booking` FOREIGN KEY (`workout_ID`) REFERENCES `workout` (`workout_ID`),
  ADD CONSTRAINT `fk4_trainer_booking` FOREIGN KEY (`schedule_ID`) REFERENCES `schedule` (`schedule_ID`);

--
-- Constraints for table `trainer_schedule`
--
ALTER TABLE `trainer_schedule`
  ADD CONSTRAINT `fk1_trainer_schedule` FOREIGN KEY (`trainer_ID`) REFERENCES `trainer` (`Trainer_ID`),
  ADD CONSTRAINT `fk2_trainer_schedule` FOREIGN KEY (`schedule_ID`) REFERENCES `schedule` (`schedule_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
