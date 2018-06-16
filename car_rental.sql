-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 16, 2018 at 05:08 PM
-- Server version: 10.1.33-MariaDB
-- PHP Version: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `car_rental`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_accessories`
--

CREATE TABLE `tbl_accessories` (
  `accessories_ID` int(11) NOT NULL,
  `type` varchar(22) COLLATE utf8_bin NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `tbl_accessories`
--

INSERT INTO `tbl_accessories` (`accessories_ID`, `type`, `amount`) VALUES
(2, 'GPS', 1),
(3, 'kids chair', 2),
(4, 'GPS', 1),
(5, 'kids chair', 2),
(6, 'GPS', 1),
(7, 'kids chair', 2),
(8, 'GPS', 1),
(9, 'kids chair', 2),
(10, 'GPS', 1),
(11, 'kids chair', 2),
(12, 'GPS', 1),
(13, 'kids chair', 2),
(14, 'GPS', 1),
(15, 'kids chair', 2),
(16, 'GPS', 1),
(17, 'kids chair', 2),
(18, 'GPS', 1),
(19, 'kids chair', 2),
(20, 'GPS', 1),
(21, 'kids chair', 2),
(22, 'GPS', 1),
(23, 'kids chair', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cars`
--

CREATE TABLE `tbl_cars` (
  `car_id` int(11) NOT NULL,
  `brand` varchar(22) COLLATE utf8_bin NOT NULL,
  `model` varchar(22) COLLATE utf8_bin NOT NULL,
  `year` int(11) NOT NULL,
  `color` varchar(11) COLLATE utf8_bin NOT NULL,
  `capacity` int(11) NOT NULL,
  `type` enum('Van','Cabrio','Limousine','family') COLLATE utf8_bin NOT NULL,
  `fk_location_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `tbl_cars`
--

INSERT INTO `tbl_cars` (`car_id`, `brand`, `model`, `year`, `color`, `capacity`, `type`, `fk_location_ID`) VALUES
(1, 'BMV', '1', 2017, 'red', 5, 'family', 1),
(2, 'audi', 'x1', 2016, 'blue', 4, 'family', 2),
(3, 'nisan', 'xy2', 2018, 'blue', 8, 'Van', 4),
(4, 'suzuki', 'mo9', 2015, 'yello', 5, 'Cabrio', 4),
(5, 'fiat', 'de3', 2016, 'blue', 2, 'Cabrio', 8),
(6, 'nisan', 'xy2', 2018, 'blue', 8, 'Van', 4),
(7, 'suzuki', 'mo9', 2015, 'yello', 5, 'Cabrio', 4),
(8, 'fiat', 'de3', 2016, 'blue', 2, 'Cabrio', 8),
(9, 'nisan', 'xy2', 2018, 'blue', 8, 'Van', 4),
(10, 'suzuki', 'mo9', 2015, 'yello', 5, 'Cabrio', 4),
(11, 'fiat', 'de3', 2016, 'blue', 2, 'Cabrio', 8),
(12, 'nisan', 'xy2', 2018, 'blue', 8, 'Van', 4),
(13, 'suzuki', 'mo9', 2015, 'yello', 5, 'Cabrio', 4),
(14, 'fiat', 'de3', 2016, 'blue', 2, 'Cabrio', 8),
(15, 'nisan', 'xy2', 2018, 'blue', 8, 'Van', 4),
(16, 'suzuki', 'mo9', 2015, 'yello', 5, 'Cabrio', 4),
(17, 'fiat', 'de3', 2016, 'blue', 2, 'Cabrio', 8),
(18, 'nisan', 'xy2', 2018, 'blue', 8, 'Van', 4),
(19, 'suzuki', 'mo9', 2015, 'yello', 5, 'Cabrio', 4),
(20, 'fiat', 'de3', 2016, 'blue', 2, 'Cabrio', 8),
(21, 'nisan', 'xy2', 2018, 'blue', 8, 'Van', 4),
(22, 'suzuki', 'mo9', 2015, 'yello', 5, 'Cabrio', 4),
(23, 'fiat', 'de3', 2016, 'blue', 2, 'Cabrio', 8),
(24, 'nisan', 'xy2', 2018, 'blue', 8, 'Van', 4),
(25, 'suzuki', 'mo9', 2015, 'yello', 5, 'Cabrio', 4),
(26, 'fiat', 'de3', 2016, 'blue', 2, 'Cabrio', 8),
(27, 'nisan', 'xy2', 2018, 'blue', 8, 'Van', 4),
(28, 'suzuki', 'mo9', 2015, 'yello', 5, 'Cabrio', 4),
(29, 'fiat', 'de3', 2016, 'blue', 2, 'Cabrio', 8),
(30, 'nisan', 'xy2', 2018, 'blue', 8, 'Van', 4),
(31, 'suzuki', 'mo9', 2015, 'yello', 5, 'Cabrio', 4),
(32, 'fiat', 'de3', 2016, 'blue', 2, 'Cabrio', 8),
(33, 'nisan', 'xy2', 2018, 'blue', 8, 'Van', 4),
(34, 'suzuki', 'mo9', 2015, 'yello', 5, 'Cabrio', 4),
(35, 'fiat', 'de3', 2016, 'blue', 2, 'Cabrio', 8),
(36, 'nisan', 'xy2', 2018, 'blue', 8, 'Van', 4),
(37, 'suzuki', 'mo9', 2015, 'yello', 5, 'Cabrio', 4),
(38, 'fiat', 'de3', 2016, 'blue', 2, 'Cabrio', 8),
(39, 'nisan', 'xy2', 2018, 'blue', 8, 'Van', 4),
(40, 'suzuki', 'mo9', 2013, 'yello', 5, 'Cabrio', 4),
(41, 'fiat', 'de3', 2016, 'blue', 2, 'Cabrio', 7),
(42, 'nisan', 'xy2', 2018, 'blue', 8, 'Van', 4),
(43, 'suzuki', 'mo9', 2014, 'yello', 5, 'Cabrio', 4),
(44, 'fiat', 'de3', 2016, 'blue', 2, 'Cabrio', 6),
(45, 'nisan', 'xy2', 2018, 'blue', 8, 'Van', 4),
(46, 'suzuki', 'mo9', 2018, 'yello', 5, 'Cabrio', 4),
(47, 'fiat', 'de3', 2016, 'blue', 7, '', 5),
(48, 'nisan', 'xy2', 2018, 'blue', 8, 'Van', 4),
(49, 'suzuki', 'mo9', 2014, 'yello', 5, 'Cabrio', 4),
(50, 'fiat', 'de3', 2016, 'blue', 2, 'Cabrio', 8),
(51, 'nisan', 'xy2', 2018, 'blue', 8, 'Van', 4),
(52, 'suzuki', 'mo9', 2015, 'yello', 5, 'Cabrio', 4),
(53, 'fiat', 'de3', 2016, 'blue', 2, 'Cabrio', 9),
(54, 'nisan', 'xy2', 2018, 'blue', 8, 'Van', 4),
(55, 'suzuki', 'mo9', 2018, 'yello', 5, 'Cabrio', 4),
(56, 'fiat', 'de3', 2016, 'blue', 2, 'Cabrio', 3),
(57, 'nisan', 'xy2', 2018, 'blue', 8, 'Van', 4),
(58, 'suzuki', 'mo9', 2017, 'yello', 5, 'Cabrio', 4),
(59, 'fiat', 'de3', 2016, 'blue', 2, 'Cabrio', 2),
(60, 'nisan', 'xy2', 2018, 'blue', 8, 'Van', 4),
(61, 'suzuki', 'mo9', 2016, 'yello', 5, 'Cabrio', 4),
(62, 'fiat', 'de3', 2016, 'blue', 8, '', 2),
(63, 'nisan', 'xy2', 2018, 'blue', 8, 'Van', 4),
(64, 'suzuki', 'mo9', 2015, 'yello', 5, 'Cabrio', 4),
(65, 'fiat', 'de3', 2016, 'blue', 2, 'Cabrio', 2),
(66, 'nisan', 'xy2', 2018, 'blue', 8, 'Van', 4),
(67, 'suzuki', 'mo9', 2011, 'yello', 5, 'Cabrio', 4),
(68, 'fiat', 'de3', 2016, 'blue', 2, 'Cabrio', 3),
(69, 'nisan', 'xy2', 2018, 'blue', 8, 'Van', 4),
(70, 'suzuki', 'mo9', 2018, 'yello', 5, 'Cabrio', 4),
(71, 'fiat', 'de3', 2016, 'blue', 2, 'Cabrio', 3),
(72, 'nisan', 'xy2', 2018, 'blue', 8, 'Van', 4),
(73, 'suzuki', 'mo9', 2015, 'yello', 5, 'Cabrio', 4),
(74, 'fiat', 'de3', 2016, 'blue', 2, 'Cabrio', 1),
(75, 'nisan', 'xy2', 2018, 'blue', 8, 'Van', 4),
(76, 'suzuki', 'mo9', 2017, 'yello', 5, 'Cabrio', 4),
(77, 'fiat', 'de3', 2016, 'blue', 2, 'Cabrio', 1),
(78, 'nisan', 'xy2', 2018, 'blue', 8, 'Van', 4),
(79, 'suzuki', 'mo9', 2015, 'yello', 5, 'Cabrio', 4),
(80, 'fiat', 'de3', 2016, 'blue', 8, '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customers`
--

CREATE TABLE `tbl_customers` (
  `customer_id` int(11) NOT NULL,
  `first_name` varchar(22) COLLATE utf8_bin NOT NULL,
  `last_name` varchar(22) COLLATE utf8_bin NOT NULL,
  `gender` enum('Male','Female','','') COLLATE utf8_bin NOT NULL,
  `Age` int(11) NOT NULL,
  `license_nummber` varchar(10) COLLATE utf8_bin NOT NULL,
  `phone` int(11) NOT NULL,
  `Address` varchar(22) COLLATE utf8_bin NOT NULL,
  `city` varchar(22) COLLATE utf8_bin NOT NULL,
  `zip_code` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `tbl_customers`
--

INSERT INTO `tbl_customers` (`customer_id`, `first_name`, `last_name`, `gender`, `Age`, `license_nummber`, `phone`, `Address`, `city`, `zip_code`) VALUES
(1, 'alex', 'hardo', 'Male', 31, '123c547', 369852, 'wien 1120', 'wien', 1120),
(2, 'alex', 'hardo', 'Male', 31, '123c547', 369852, 'wien 1120', 'wien', 1120),
(3, 'alex', 'hardo', 'Male', 31, '123c547', 369852, 'wien 1120', 'wien', 1120),
(4, 'alex', 'hardo', 'Male', 31, '123c547', 369852, 'wien 1120', 'wien', 1120),
(5, 'alex', 'hardo', 'Male', 31, '123c547', 369852, 'wien 1120', 'wien', 1120),
(6, 'alex', 'hardo', 'Male', 31, '123c547', 369852, 'wien 1120', 'wien', 1120),
(7, 'alex', 'hardo', 'Male', 31, '123c547', 369852, 'wien 1120', 'wien', 1120),
(8, 'alex', 'hardo', 'Male', 31, '123c547', 369852, 'wien 1120', 'wien', 1120),
(9, 'alex', 'hardo', 'Male', 31, '123c547', 369852, 'wien 1120', 'wien', 1120),
(27, 'sandra', 'newman', 'Female', 21, '123c547', 369852, 'wien 1010', 'wien', 1010),
(28, 'sandra', 'newman', 'Female', 21, '123c547', 369852, 'wien 1010', 'wien', 1010),
(29, 'sandra', 'newman', 'Female', 21, '123c547', 369852, 'wien 1010', 'wien', 1010),
(30, 'sandra', 'newman', 'Female', 21, '123c547', 369852, 'wien 1010', 'wien', 1010),
(31, 'sandra', 'newman', 'Female', 21, '123c547', 369852, 'wien 1010', 'wien', 1010),
(32, 'sandra', 'newman', 'Female', 21, '123c547', 369852, 'wien 1010', 'wien', 1010),
(33, 'sandra', 'newman', 'Female', 21, '123c547', 369852, 'wien 1010', 'wien', 1010),
(34, 'sandra', 'newman', 'Female', 21, '123c547', 369852, 'wien 1010', 'wien', 1010),
(35, 'sandra', 'newman', 'Female', 21, '123c547', 369852, 'wien 1010', 'wien', 1010),
(36, 'sandra', 'newman', 'Female', 21, '123c547', 369852, 'wien 1010', 'wien', 1010),
(37, 'sandra', 'newman', 'Female', 21, '123c547', 369852, 'wien 1010', 'wien', 1010),
(38, 'sandra', 'newman', 'Female', 21, '123c547', 369852, 'wien 1010', 'wien', 1010),
(39, 'sandra', 'newman', 'Female', 21, '123c547', 369852, 'wien 1010', 'wien', 1010),
(40, 'sandra', 'newman', 'Female', 21, '123c547', 369852, 'wien 1010', 'wien', 1010),
(41, 'sandra', 'newman', 'Female', 21, '123c547', 369852, 'wien 1010', 'wien', 1010),
(42, 'sandra', 'newman', 'Female', 21, '123c547', 369852, 'wien 1010', 'wien', 1010),
(43, 'Christina', 'john', 'Female', 33, 'acv6589', 65428, 'wien 1010', 'wien', 1010),
(44, 'john', 'doglas', 'Male', 25, 'acv6589', 65428, 'wien 1120', 'wien', 1010),
(45, 'john', 'doglas', 'Male', 25, 'acv6589', 65428, 'wien 1120', 'wien', 1010),
(46, 'Christina', 'john', 'Female', 33, 'acv6589', 65428, 'wien 1010', 'wien', 1010),
(47, 'john', 'doglas', 'Male', 25, 'acv6589', 65428, 'wien 1120', 'wien', 1010),
(48, 'Christina', 'john', 'Female', 33, 'acv6589', 65428, 'wien 1010', 'wien', 1010),
(49, 'john', 'doglas', 'Male', 25, 'acv6589', 65428, 'wien 1120', 'wien', 1010),
(50, 'Christina', 'john', 'Female', 33, 'acv6589', 65428, 'wien 1010', 'wien', 1010),
(51, 'Christina', 'john', 'Female', 33, 'acv6589', 65428, 'wien 1010', 'wien', 1010),
(52, 'john', 'doglas', 'Male', 25, 'acv6589', 65428, 'wien 1120', 'wien', 1010),
(53, 'Christina', 'john', 'Female', 33, 'acv6589', 65428, 'wien 1010', 'wien', 1010),
(54, 'john', 'doglas', 'Male', 25, 'acv6589', 65428, 'wien 1120', 'wien', 1010),
(55, 'Christina', 'john', 'Female', 33, 'acv6589', 65428, 'wien 1010', 'wien', 1010),
(56, 'Christina', 'john', 'Female', 33, 'acv6589', 65428, 'wien 1010', 'wien', 1010),
(57, 'john', 'doglas', 'Male', 25, 'acv6589', 65428, 'wien 1120', 'wien', 1010),
(58, 'john', 'doglas', 'Male', 25, 'acv6589', 65428, 'wien 1120', 'wien', 1010),
(59, 'Christina', 'john', 'Female', 33, 'acv6589', 65428, 'wien 1010', 'wien', 1010),
(60, 'john', 'doglas', 'Male', 25, 'acv6589', 65428, 'wien 1120', 'wien', 1010),
(61, 'Christina', 'john', 'Female', 33, 'acv6589', 65428, 'wien 1010', 'wien', 1010),
(62, 'john', 'doglas', 'Male', 25, 'acv6589', 65428, 'wien 1120', 'wien', 1010),
(63, 'Christina', 'john', 'Female', 33, 'acv6589', 65428, 'wien 1010', 'wien', 1010),
(64, 'Christina', 'john', 'Female', 33, 'acv6589', 65428, 'wien 1010', 'wien', 1010),
(65, 'john', 'doglas', 'Male', 25, 'acv6589', 65428, 'wien 1120', 'wien', 1010),
(66, 'Christina', 'john', 'Female', 33, 'acv6589', 65428, 'wien 1010', 'wien', 1010),
(67, 'john', 'doglas', 'Male', 25, 'acv6589', 65428, 'wien 1120', 'wien', 1010),
(68, 'Christina', 'john', 'Female', 33, 'acv6589', 65428, 'wien 1010', 'wien', 1010);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_deal`
--

CREATE TABLE `tbl_deal` (
  `deal_ID` int(11) NOT NULL,
  `car_brand` varchar(22) COLLATE utf8_bin NOT NULL,
  `car_model` varchar(22) COLLATE utf8_bin NOT NULL,
  `number_of_cars` int(11) NOT NULL,
  `price_per_car` int(11) NOT NULL,
  `date` date NOT NULL,
  `fk_location_ID` int(11) NOT NULL,
  `fk_supplier_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `tbl_deal`
--

INSERT INTO `tbl_deal` (`deal_ID`, `car_brand`, `car_model`, `number_of_cars`, `price_per_car`, `date`, `fk_location_ID`, `fk_supplier_ID`) VALUES
(1, 'BMW', 'x1', 5, 20500, '2018-06-05', 1, 2),
(2, 'BMW', 'x1', 5, 20500, '2018-06-05', 1, 2),
(3, 'BMW', 'x1', 5, 20500, '2018-06-05', 1, 2),
(4, 'BMW', 'x1', 5, 20500, '2018-06-05', 1, 2),
(5, 'BMW', 'x1', 5, 20500, '2018-06-05', 1, 2),
(6, 'BMW', 'x1', 5, 20500, '2018-06-05', 1, 2),
(7, 'BMW', 'x1', 5, 20500, '2018-06-05', 1, 2),
(8, 'BMW', 'x1', 5, 20500, '2018-06-05', 1, 2),
(9, 'BMW', 'x1', 5, 20500, '2018-06-05', 1, 2),
(10, 'BMW', 'x1', 5, 20500, '2018-06-05', 1, 2),
(11, 'BMW', 'x1', 5, 20500, '2018-06-05', 1, 2),
(12, 'BMW', 'x1', 5, 20500, '2018-06-05', 1, 2),
(13, 'BMW', 'x1', 5, 20500, '2018-06-05', 1, 2),
(14, 'BMW', 'x1', 5, 20500, '2018-06-05', 1, 2),
(15, 'BMW', 'x1', 5, 20500, '2018-06-05', 1, 2),
(16, 'BMW', 'x1', 5, 20500, '2018-06-05', 1, 2),
(17, 'BMW', 'x1', 5, 20500, '2018-06-05', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_feedback`
--

CREATE TABLE `tbl_feedback` (
  `feedback_id` int(11) NOT NULL,
  `feedback` text COLLATE utf8_bin NOT NULL,
  `fk_customer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_insurance`
--

CREATE TABLE `tbl_insurance` (
  `insurance_id` int(11) NOT NULL,
  `type` enum('Basic 10 Euro','Intermediate 20 Euro','Ultimate 30 Euro','') COLLATE utf8_bin NOT NULL,
  `fk_reservation_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `tbl_insurance`
--

INSERT INTO `tbl_insurance` (`insurance_id`, `type`, `fk_reservation_ID`) VALUES
(1, 'Basic 10 Euro', 1),
(2, 'Basic 10 Euro', 2),
(3, 'Intermediate 20 Euro', 3),
(4, 'Ultimate 30 Euro', 4),
(5, 'Basic 10 Euro', 5),
(6, 'Intermediate 20 Euro', 6),
(7, 'Ultimate 30 Euro', 7),
(8, 'Basic 10 Euro', 8),
(9, 'Intermediate 20 Euro', 9),
(10, 'Ultimate 30 Euro', 10),
(11, 'Basic 10 Euro', 11),
(12, 'Intermediate 20 Euro', 12),
(13, 'Ultimate 30 Euro', 13),
(14, 'Basic 10 Euro', 14),
(15, 'Intermediate 20 Euro', 15),
(16, 'Ultimate 30 Euro', 16),
(17, 'Basic 10 Euro', 17),
(18, 'Intermediate 20 Euro', 18),
(19, 'Ultimate 30 Euro', 19);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_location`
--

CREATE TABLE `tbl_location` (
  `location_id` int(11) NOT NULL,
  `address` varchar(22) COLLATE utf8_bin NOT NULL,
  `city` varchar(22) COLLATE utf8_bin NOT NULL,
  `ZIP_Code` int(11) NOT NULL,
  `phone` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `tbl_location`
--

INSERT INTO `tbl_location` (`location_id`, `address`, `city`, `ZIP_Code`, `phone`) VALUES
(1, '1030 Wien', 'Vienna', 1030, 123456),
(2, '1040 Wien', 'Vienna', 1040, 369822),
(3, '1190 wien', 'Vienna', 1190, 741258),
(4, '1200 wien', 'Vienna', 1200, 896523),
(5, '1230 wien', 'Vienna', 1230, 7436985),
(6, '1150 wien', 'Vienna', 1150, 297412),
(7, '5020 Salzburg', 'Salzburg', 5020, 96001),
(8, '5061 Salzburg', 'Salzburg', 5061, 2354),
(9, '5101 Salzburg', 'Salzburg', 5101, 96587),
(10, '5300 Salzburg', 'Salzburg', 5300, 54782),
(11, '5081 Salzburg', 'Salzburg', 5081, 91374),
(12, '5023 Salzburg', 'Salzburg', 5023, 537418);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_login`
--

CREATE TABLE `tbl_login` (
  `login_id` int(11) NOT NULL,
  `user_name` varchar(22) COLLATE utf8_bin NOT NULL,
  `Password` varchar(22) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_payment`
--

CREATE TABLE `tbl_payment` (
  `Payment_ID` int(11) NOT NULL,
  `pay_cashe` enum('yes','no') COLLATE utf8_bin NOT NULL,
  `card_holder` varchar(22) COLLATE utf8_bin NOT NULL,
  `card_number` double NOT NULL,
  `expire_date` date NOT NULL,
  `fk_reservation_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `tbl_payment`
--

INSERT INTO `tbl_payment` (`Payment_ID`, `pay_cashe`, `card_holder`, `card_number`, `expire_date`, `fk_reservation_ID`) VALUES
(1, 'yes', '', 0, '0000-00-00', 5),
(2, 'yes', '', 0, '0000-00-00', 5),
(3, 'yes', '', 0, '0000-00-00', 5),
(4, 'yes', '', 0, '0000-00-00', 5),
(5, 'yes', '', 0, '0000-00-00', 5),
(6, 'yes', '', 0, '0000-00-00', 5),
(7, 'yes', '', 0, '0000-00-00', 5),
(8, 'yes', '', 0, '0000-00-00', 5);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_reservation`
--

CREATE TABLE `tbl_reservation` (
  `reservation_id` int(11) NOT NULL,
  `start_date` datetime NOT NULL,
  `return_date` datetime NOT NULL,
  `fk_car_ID` int(11) NOT NULL,
  `fk_accessories_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `tbl_reservation`
--

INSERT INTO `tbl_reservation` (`reservation_id`, `start_date`, `return_date`, `fk_car_ID`, `fk_accessories_id`) VALUES
(1, '2018-06-15 00:00:00', '2018-06-18 00:00:00', 1, 2),
(2, '2018-06-15 00:00:00', '2018-06-18 00:00:00', 1, 2),
(3, '2018-06-15 00:00:00', '2018-06-18 00:00:00', 1, 2),
(4, '2018-06-15 00:00:00', '2018-06-18 00:00:00', 1, 2),
(5, '2018-06-15 00:00:00', '2018-06-18 00:00:00', 1, 2),
(6, '2018-06-15 00:00:00', '2018-06-18 00:00:00', 1, 2),
(7, '2018-06-15 00:00:00', '2018-06-18 00:00:00', 1, 2),
(8, '2018-06-15 00:00:00', '2018-06-18 00:00:00', 1, 2),
(9, '2018-06-15 00:00:00', '2018-06-18 00:00:00', 1, 2),
(10, '2018-06-15 00:00:00', '2018-06-18 00:00:00', 1, 2),
(11, '2018-06-15 00:00:00', '2018-06-18 00:00:00', 1, 2),
(12, '2018-06-15 00:00:00', '2018-06-18 00:00:00', 1, 2),
(13, '2018-06-15 00:00:00', '2018-06-18 00:00:00', 1, 2),
(14, '2018-06-15 00:00:00', '2018-06-18 00:00:00', 1, 2),
(15, '2018-06-15 00:00:00', '2018-06-18 00:00:00', 1, 2),
(16, '2018-06-15 00:00:00', '2018-06-18 00:00:00', 1, 2),
(17, '2018-06-15 00:00:00', '2018-06-18 00:00:00', 1, 2),
(18, '2018-06-15 00:00:00', '2018-06-18 00:00:00', 1, 2),
(19, '2018-06-15 00:00:00', '2018-06-18 00:00:00', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_suppliers`
--

CREATE TABLE `tbl_suppliers` (
  `supplier_id` int(11) NOT NULL,
  `supplier_name` varchar(22) COLLATE utf8_bin NOT NULL,
  `supplier_address` varchar(22) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `tbl_suppliers`
--

INSERT INTO `tbl_suppliers` (`supplier_id`, `supplier_name`, `supplier_address`) VALUES
(1, 'Bosch', 'Vienna'),
(2, 'BMW', 'salzburg'),
(3, 'Audi', 'Münich'),
(4, 'chevrolet', 'Linz'),
(5, 'Nisan', 'Graz'),
(6, 'Yamaha', 'Mödling'),
(7, 'Citroën', 'Bregenz');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_accessories`
--
ALTER TABLE `tbl_accessories`
  ADD PRIMARY KEY (`accessories_ID`);

--
-- Indexes for table `tbl_cars`
--
ALTER TABLE `tbl_cars`
  ADD PRIMARY KEY (`car_id`),
  ADD KEY `fk_location_ID` (`fk_location_ID`);

--
-- Indexes for table `tbl_customers`
--
ALTER TABLE `tbl_customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `tbl_deal`
--
ALTER TABLE `tbl_deal`
  ADD PRIMARY KEY (`deal_ID`),
  ADD KEY `fk_location_ID` (`fk_location_ID`,`fk_supplier_ID`),
  ADD KEY `fk_supplier_ID` (`fk_supplier_ID`);

--
-- Indexes for table `tbl_feedback`
--
ALTER TABLE `tbl_feedback`
  ADD PRIMARY KEY (`feedback_id`),
  ADD KEY `fk_customer_id` (`fk_customer_id`);

--
-- Indexes for table `tbl_insurance`
--
ALTER TABLE `tbl_insurance`
  ADD PRIMARY KEY (`insurance_id`),
  ADD KEY `fk_reservation_ID` (`fk_reservation_ID`);

--
-- Indexes for table `tbl_location`
--
ALTER TABLE `tbl_location`
  ADD PRIMARY KEY (`location_id`);

--
-- Indexes for table `tbl_login`
--
ALTER TABLE `tbl_login`
  ADD PRIMARY KEY (`login_id`);

--
-- Indexes for table `tbl_payment`
--
ALTER TABLE `tbl_payment`
  ADD PRIMARY KEY (`Payment_ID`),
  ADD KEY `fk_reservation_ID` (`fk_reservation_ID`);

--
-- Indexes for table `tbl_reservation`
--
ALTER TABLE `tbl_reservation`
  ADD PRIMARY KEY (`reservation_id`),
  ADD KEY `fk_car_ID` (`fk_car_ID`),
  ADD KEY `fk_accessories_id` (`fk_accessories_id`);

--
-- Indexes for table `tbl_suppliers`
--
ALTER TABLE `tbl_suppliers`
  ADD PRIMARY KEY (`supplier_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_accessories`
--
ALTER TABLE `tbl_accessories`
  MODIFY `accessories_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tbl_cars`
--
ALTER TABLE `tbl_cars`
  MODIFY `car_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `tbl_customers`
--
ALTER TABLE `tbl_customers`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `tbl_deal`
--
ALTER TABLE `tbl_deal`
  MODIFY `deal_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tbl_feedback`
--
ALTER TABLE `tbl_feedback`
  MODIFY `feedback_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_insurance`
--
ALTER TABLE `tbl_insurance`
  MODIFY `insurance_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tbl_location`
--
ALTER TABLE `tbl_location`
  MODIFY `location_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_login`
--
ALTER TABLE `tbl_login`
  MODIFY `login_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_payment`
--
ALTER TABLE `tbl_payment`
  MODIFY `Payment_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_reservation`
--
ALTER TABLE `tbl_reservation`
  MODIFY `reservation_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tbl_suppliers`
--
ALTER TABLE `tbl_suppliers`
  MODIFY `supplier_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_cars`
--
ALTER TABLE `tbl_cars`
  ADD CONSTRAINT `tbl_cars_ibfk_1` FOREIGN KEY (`fk_location_ID`) REFERENCES `tbl_location` (`location_id`);

--
-- Constraints for table `tbl_deal`
--
ALTER TABLE `tbl_deal`
  ADD CONSTRAINT `tbl_deal_ibfk_1` FOREIGN KEY (`fk_supplier_ID`) REFERENCES `tbl_suppliers` (`supplier_id`),
  ADD CONSTRAINT `tbl_deal_ibfk_2` FOREIGN KEY (`fk_location_ID`) REFERENCES `tbl_location` (`location_id`);

--
-- Constraints for table `tbl_feedback`
--
ALTER TABLE `tbl_feedback`
  ADD CONSTRAINT `tbl_feedback_ibfk_1` FOREIGN KEY (`fk_customer_id`) REFERENCES `tbl_customers` (`customer_id`);

--
-- Constraints for table `tbl_insurance`
--
ALTER TABLE `tbl_insurance`
  ADD CONSTRAINT `tbl_insurance_ibfk_1` FOREIGN KEY (`fk_reservation_ID`) REFERENCES `tbl_reservation` (`reservation_id`);

--
-- Constraints for table `tbl_payment`
--
ALTER TABLE `tbl_payment`
  ADD CONSTRAINT `tbl_payment_ibfk_1` FOREIGN KEY (`fk_reservation_ID`) REFERENCES `tbl_reservation` (`reservation_id`);

--
-- Constraints for table `tbl_reservation`
--
ALTER TABLE `tbl_reservation`
  ADD CONSTRAINT `tbl_reservation_ibfk_1` FOREIGN KEY (`fk_car_ID`) REFERENCES `tbl_cars` (`car_id`),
  ADD CONSTRAINT `tbl_reservation_ibfk_4` FOREIGN KEY (`fk_accessories_id`) REFERENCES `tbl_accessories` (`accessories_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
