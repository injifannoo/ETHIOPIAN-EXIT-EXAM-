-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 30, 2023 at 09:42 PM
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
-- Database: `eueep`
--

-- --------------------------------------------------------

--
-- Table structure for table `exit_exam`
--

CREATE TABLE `exit_exam` (
  `EXIT_ID` int(11) NOT NULL,
  `QUESTION` text NOT NULL,
  `OPTION_1` text NOT NULL,
  `OPTION_2` text NOT NULL,
  `OPTION_3` text NOT NULL,
  `OPTION_4` text NOT NULL,
  `ANSWER` text NOT NULL,
  `EXAM_YEAR` int(11) DEFAULT NULL,
  `SUBJECT_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `exit_exam`
--

INSERT INTO `exit_exam` (`EXIT_ID`, `QUESTION`, `OPTION_1`, `OPTION_2`, `OPTION_3`, `OPTION_4`, `ANSWER`, `EXAM_YEAR`, `SUBJECT_ID`) VALUES
(1, 'one plus one is equals to?', '1', '20000000000', '9999', '8', '5', 2015, 1),
(2, 'one plus one is equals to?', '10', '20', '30', '40', '50', 2015, 1),
(5, 'what is law?', 'role', 'low', 'high', 'none', 'high', 2015, 12),
(8, 'what is economics means', 'eco', 'coco', 'noko', 'none', 'none', 2015, 15),
(9, 'what is cs', 'cs', 'cs', 'cs', 'cs', 'cs', 2015, 7),
(10, 'what does cs means?', 'cs', 'cs', 'cs', 'cs', 'cs', 2015, 25),
(12, 'nnn', 'n', 'm', 'm', 'm', 'm', 2015, 6),
(14, 'ncnmc', 'hhj', 'jjjk', 'kkl', 'jdjd', 'nmnmnm', 2015, 4),
(15, 'what is nurs?', 'u', 'i', 'm', 'h', 'm', 2015, 23),
(16, 'wowo', 'ww', 'ff', 'ff', 'dd', 'gg', 2015, 22),
(17, 'what is physics?', 'man', 'law', 'kebede', 'alemu', 'alemu', 2015, 2),
(18, 'pppppppp', 'p', 'p', 'p', 'p', 'p', 2015, 2),
(21, 'TRETYTER', 'RJKER', 'RRU', 'RRRR', 'RERER', 'RRR', 2015, 1);

-- --------------------------------------------------------

--
-- Table structure for table `field`
--

CREATE TABLE `field` (
  `FIELD_ID` int(11) NOT NULL,
  `FIELD_NAME` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `field`
--

INSERT INTO `field` (`FIELD_ID`, `FIELD_NAME`) VALUES
(1, 'Natural science'),
(2, 'Social science'),
(3, 'Health science'),
(4, 'Informatics'),
(5, 'Engineering');

-- --------------------------------------------------------

--
-- Table structure for table `model_exam`
--

CREATE TABLE `model_exam` (
  `MODEL_ID` int(11) NOT NULL,
  `QUESTION` text NOT NULL,
  `OPTION_1` text NOT NULL,
  `OPTION_2` text NOT NULL,
  `OPTION_3` text NOT NULL,
  `OPTION_4` text NOT NULL,
  `ANSWER` text NOT NULL,
  `EXAM_YEAR` int(11) DEFAULT NULL,
  `SUBJECT_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `model_exam`
--

INSERT INTO `model_exam` (`MODEL_ID`, `QUESTION`, `OPTION_1`, `OPTION_2`, `OPTION_3`, `OPTION_4`, `ANSWER`, `EXAM_YEAR`, `SUBJECT_ID`) VALUES
(2, 'what is civil engineering means', 'eco', 'coco', 'noko', 'none', 'none', 2015, 32);

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `SUBJECT_ID` int(11) NOT NULL,
  `SUBJECT_NAME` varchar(100) NOT NULL,
  `FIELD_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`SUBJECT_ID`, `SUBJECT_NAME`, `FIELD_ID`) VALUES
(1, 'Mathematics', 1),
(2, 'Physics', 1),
(3, 'Chemistry', 1),
(4, 'Biology', 1),
(5, 'Geology', 1),
(6, 'Sport Science', 1),
(7, 'Mathmathics teacher Edu', 1),
(8, 'Physics teacher Edu', 1),
(9, 'Chemistry teacher Edu', 1),
(10, 'Biology teacher Edu', 1),
(11, 'Physical Education', 1),
(12, 'Law', 2),
(13, 'Polotical Science', 2),
(14, 'PADM', 2),
(15, 'Economics', 2),
(16, 'Acounting', 2),
(17, 'Business', 2),
(18, 'Medicine', 3),
(19, 'Dental Medicine', 3),
(20, 'Pharmacy', 3),
(21, 'Radiology', 3),
(22, 'Anesthesia', 3),
(23, 'Nursing', 3),
(24, 'Midwifer', 3),
(25, 'Computer Science', 4),
(26, 'Information system', 4),
(27, 'Information Techenology', 4),
(28, 'Software Engineering', 5),
(29, 'Biomedical Engineering', 5),
(30, 'Chemical Engineering', 5),
(31, 'Mechanical Engineering', 5),
(32, 'Civil Engineering', 5),
(33, 'Stastics', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `exit_exam`
--
ALTER TABLE `exit_exam`
  ADD PRIMARY KEY (`EXIT_ID`),
  ADD KEY `SUBJECT_ID` (`SUBJECT_ID`);

--
-- Indexes for table `field`
--
ALTER TABLE `field`
  ADD PRIMARY KEY (`FIELD_ID`);

--
-- Indexes for table `model_exam`
--
ALTER TABLE `model_exam`
  ADD PRIMARY KEY (`MODEL_ID`),
  ADD KEY `SUBJECT_ID` (`SUBJECT_ID`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`SUBJECT_ID`),
  ADD KEY `FIELD_ID` (`FIELD_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `exit_exam`
--
ALTER TABLE `exit_exam`
  MODIFY `EXIT_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `field`
--
ALTER TABLE `field`
  MODIFY `FIELD_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `model_exam`
--
ALTER TABLE `model_exam`
  MODIFY `MODEL_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `SUBJECT_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `exit_exam`
--
ALTER TABLE `exit_exam`
  ADD CONSTRAINT `exit_exam_ibfk_1` FOREIGN KEY (`SUBJECT_ID`) REFERENCES `subject` (`SUBJECT_ID`);

--
-- Constraints for table `model_exam`
--
ALTER TABLE `model_exam`
  ADD CONSTRAINT `model_exam_ibfk_1` FOREIGN KEY (`SUBJECT_ID`) REFERENCES `subject` (`SUBJECT_ID`);

--
-- Constraints for table `subject`
--
ALTER TABLE `subject`
  ADD CONSTRAINT `subject_ibfk_1` FOREIGN KEY (`FIELD_ID`) REFERENCES `field` (`FIELD_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
