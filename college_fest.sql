-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 04, 2022 at 05:23 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `college_fest`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `name` varchar(50) NOT NULL,
  `contactNo` varchar(10) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`name`, `contactNo`, `username`, `password`) VALUES
('priyanshu', '7225945678', 'admin_pg', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `eventName` varchar(20) NOT NULL,
  `eventDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`eventName`, `eventDate`) VALUES
('Cultural', '2021-09-09'),
('Other', '2021-09-10'),
('Sports', '2021-09-11'),
('Technical', '2021-09-12');

-- --------------------------------------------------------

--
-- Table structure for table `manageevent`
--

CREATE TABLE `manageevent` (
  `username` varchar(20) NOT NULL,
  `eventName` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `manageevent`
--

INSERT INTO `manageevent` (`username`, `eventName`) VALUES
('admin_pg', 'Cultural'),
('admin_pg', 'Other'),
('admin_pg', 'Sports'),
('admin_pg', 'Technical');

-- --------------------------------------------------------

--
-- Table structure for table `manageprogram`
--

CREATE TABLE `manageprogram` (
  `username` varchar(20) NOT NULL,
  `programName` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `manageprogram`
--

INSERT INTO `manageprogram` (`username`, `programName`) VALUES
('admin_pg', 'Art exhibition'),
('admin_pg', 'Badminton'),
('admin_pg', 'Chess'),
('admin_pg', 'Coding'),
('admin_pg', 'Dance'),
('admin_pg', 'Group Discussion'),
('admin_pg', 'Painting'),
('admin_pg', 'Penetration Testing'),
('admin_pg', 'Poetry slams'),
('admin_pg', 'python workshop'),
('admin_pg', 'Quiz'),
('admin_pg', 'Race(100 m)'),
('admin_pg', 'Race(200 m)'),
('admin_pg', 'Rangoli'),
('admin_pg', 'Singing'),
('admin_pg', 'Sketching'),
('admin_pg', 'Table tennis'),
('admin_pg', 'Tech Project'),
('admin_pg', 'workshop on java');

-- --------------------------------------------------------

--
-- Table structure for table `participate`
--

CREATE TABLE `participate` (
  `enrollmentNo` varchar(10) NOT NULL,
  `programName` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `participate`
--

INSERT INTO `participate` (`enrollmentNo`, `programName`) VALUES
('dx1800304', 'Poetry slams'),
('dx1800304', 'Painting'),
('dx1800304', 'Race(100 m)'),
('dx1800304', 'Coding'),
('dx1800304', 'Tech Project'),
('dx1800304', 'workshop on java'),
('dx1800304', 'Quiz');

-- --------------------------------------------------------

--
-- Table structure for table `program`
--

CREATE TABLE `program` (
  `programName` varchar(20) NOT NULL,
  `eventName` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `program`
--

INSERT INTO `program` (`programName`, `eventName`) VALUES
('Dance', 'Cultural'),
('Poetry slams', 'Cultural'),
('Singing', 'Cultural'),
('Art exhibition', 'Other'),
('Painting', 'Other'),
('Rangoli', 'Other'),
('Sketching', 'Other'),
('Badminton', 'Sports'),
('Chess', 'Sports'),
('Race(100 m)', 'Sports'),
('Race(200 m)', 'Sports'),
('Table tennis', 'Sports'),
('Coding', 'Technical'),
('Group Discussion', 'Technical'),
('Penetration Testing', 'Technical'),
('python workshop', 'Technical'),
('Quiz', 'Technical'),
('Tech Project', 'Technical'),
('workshop on java', 'Technical');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `name` varchar(50) NOT NULL,
  `enrollmentNo` varchar(10) NOT NULL,
  `contactNo` varchar(10) NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`name`, `enrollmentNo`, `contactNo`, `password`) VALUES
('priyanshu gupta', 'dx1800304', '7225989749', '123456');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`eventName`);

--
-- Indexes for table `manageevent`
--
ALTER TABLE `manageevent`
  ADD KEY `eventName` (`eventName`),
  ADD KEY `username` (`username`);

--
-- Indexes for table `manageprogram`
--
ALTER TABLE `manageprogram`
  ADD KEY `programName` (`programName`),
  ADD KEY `username` (`username`);

--
-- Indexes for table `participate`
--
ALTER TABLE `participate`
  ADD KEY `enrollmentNo` (`enrollmentNo`),
  ADD KEY `programName` (`programName`);

--
-- Indexes for table `program`
--
ALTER TABLE `program`
  ADD PRIMARY KEY (`programName`),
  ADD KEY `eventName` (`eventName`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`enrollmentNo`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `manageevent`
--
ALTER TABLE `manageevent`
  ADD CONSTRAINT `manageevent_ibfk_1` FOREIGN KEY (`eventName`) REFERENCES `event` (`eventName`),
  ADD CONSTRAINT `manageevent_ibfk_2` FOREIGN KEY (`username`) REFERENCES `admin` (`username`);

--
-- Constraints for table `manageprogram`
--
ALTER TABLE `manageprogram`
  ADD CONSTRAINT `manageprogram_ibfk_1` FOREIGN KEY (`programName`) REFERENCES `program` (`programName`),
  ADD CONSTRAINT `manageprogram_ibfk_2` FOREIGN KEY (`username`) REFERENCES `admin` (`username`);

--
-- Constraints for table `participate`
--
ALTER TABLE `participate`
  ADD CONSTRAINT `participate_ibfk_1` FOREIGN KEY (`enrollmentNo`) REFERENCES `student` (`enrollmentNo`),
  ADD CONSTRAINT `participate_ibfk_2` FOREIGN KEY (`programName`) REFERENCES `program` (`programName`);

--
-- Constraints for table `program`
--
ALTER TABLE `program`
  ADD CONSTRAINT `program_ibfk_1` FOREIGN KEY (`eventName`) REFERENCES `event` (`eventName`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
