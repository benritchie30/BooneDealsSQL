-- phpMyAdmin SQL Dump
-- version 4.4.15.10
-- https://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 30, 2020 at 04:11 AM
-- Server version: 5.6.48
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ritchiebd2`
--

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE IF NOT EXISTS `department` (
  `dname` varchar(25) NOT NULL,
  `dnumber` int(4) NOT NULL DEFAULT '0',
  `mgr_ssn` char(9) NOT NULL,
  `mgr_start_date` date DEFAULT NULL,
  `dept_create_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`dname`, `dnumber`, `mgr_ssn`, `mgr_start_date`, `dept_create_date`) VALUES
('Headquarters', 1, '888665555', '1971-06-19', '1971-05-24'),
('Administration', 4, '987654321', '1985-01-01', '1978-05-23'),
('Research', 5, '333445555', '1978-05-22', '1978-05-21'),
('Software', 6, '111111100', '1999-05-15', '1988-05-25'),
('Hardware', 7, '444444400', '1998-05-15', '1978-05-26'),
('Sales', 8, '555555500', '1997-01-01', '1978-05-27');

-- --------------------------------------------------------

--
-- Table structure for table `dependent`
--

CREATE TABLE IF NOT EXISTS `dependent` (
  `essn` char(9) NOT NULL DEFAULT '',
  `dependent_name` varchar(15) NOT NULL DEFAULT '',
  `sex` char(1) DEFAULT NULL,
  `bdate` date DEFAULT NULL,
  `relationship` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dependent`
--

INSERT INTO `dependent` (`essn`, `dependent_name`, `sex`, `bdate`, `relationship`) VALUES
('123456789', 'Alice', 'F', '1978-12-31', 'Daughter'),
('123456789', 'Elizabeth', 'F', '1957-05-05', 'Spouse'),
('123456789', 'Michael', 'M', '1978-01-01', 'Son'),
('333445555', 'Alice', 'F', '1976-04-05', 'Daughter'),
('333445555', 'Joy', 'F', '1948-05-03', 'Spouse'),
('333445555', 'Theodore', 'M', '1973-10-25', 'Son'),
('444444400', 'Johnny', 'M', '1997-04-04', 'Son'),
('444444400', 'Tommy', 'M', '1999-06-07', 'Son'),
('444444401', 'Chris', 'M', '1969-04-19', 'Spouse'),
('444444402', 'Sam', 'M', '1964-02-14', 'Spouse'),
('987654321', 'Abner', 'M', '1932-02-29', 'Spouse');

-- --------------------------------------------------------

--
-- Table structure for table `dept_locations`
--

CREATE TABLE IF NOT EXISTS `dept_locations` (
  `dnumber` int(4) NOT NULL DEFAULT '0',
  `dlocation` varchar(15) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dept_locations`
--

INSERT INTO `dept_locations` (`dnumber`, `dlocation`) VALUES
(1, 'Houston'),
(4, 'Stafford'),
(5, 'Bellaire'),
(5, 'Houston'),
(5, 'Sugarland'),
(6, 'Atlanta'),
(6, 'Sacramento'),
(7, 'Milwaukee'),
(8, 'Chicago'),
(8, 'Dallas'),
(8, 'Miami'),
(8, 'Philadelphia'),
(8, 'Seattle');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE IF NOT EXISTS `employee` (
  `fname` varchar(15) NOT NULL,
  `minit` varchar(1) DEFAULT NULL,
  `lname` varchar(15) NOT NULL,
  `ssn` char(9) NOT NULL DEFAULT '',
  `bdate` date DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `sex` char(1) DEFAULT NULL,
  `salary` decimal(10,2) DEFAULT NULL,
  `super_ssn` char(9) DEFAULT NULL,
  `dno` int(4) DEFAULT NULL,
  `associated_resturaunt` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`fname`, `minit`, `lname`, `ssn`, `bdate`, `address`, `sex`, `salary`, `super_ssn`, `dno`, `associated_resturaunt`) VALUES
('Jared', 'D', 'James', '111111100', '1966-10-10', '123 Peachtree, Atlanta, GA', 'M', '85000.00', NULL, 6, ''),
('Jon', 'C', 'Jones', '111111101', '1967-11-14', '111 Allgood, Atlanta, GA', 'M', '45000.00', '111111100', 6, ''),
('Justin', 'E', 'Mark', '111111102', '1966-01-12', '2342 May, Atlanta, GA', 'M', '40000.00', '111111100', 6, ''),
('Brad', 'C', 'Knight', '111111103', '1968-02-13', '176 Main St., Atlanta, GA', 'M', '44000.00', '111111100', 6, ''),
('John', 'B', 'Smith', '123456789', '1955-01-09', '731 Fondren, Houston, TX', 'M', '30000.00', '333445555', 5, ''),
('Evan', 'E', 'Wallis', '222222200', '1958-01-16', '134 Pelham, Milwaukee, WI', 'M', '92000.00', NULL, 7, ''),
('Josh', 'U', 'Zell', '222222201', '1954-05-22', '266 McGrady, Milwaukee, WI', 'M', '56000.00', '222222200', 7, ''),
('Andy', 'C', 'Vile', '222222202', '1944-01-21', '1967 Jordan, Milwaukee, WI', 'M', '53000.00', '222222200', 7, ''),
('Tom', 'G', 'Brand', '222222203', '1966-12-16', '112 Third St, Milwaukee, WI', 'M', '62500.00', '222222200', 7, ''),
('Jenny', 'F', 'Vos', '222222204', '1967-11-11', '263 Mayberry, Milwaukee, WI', 'F', '61000.00', '222222201', 7, ''),
('Chris', 'A', 'Carter', '222222205', '1960-03-21', '565 Jordan, Milwaukee, WI', 'F', '43000.00', '222222201', 7, ''),
('Kim', 'C', 'Grace', '333333300', '1970-10-23', '6677 Mills Ave, Sacramento, CA', 'F', '79000.00', NULL, 6, ''),
('Jeff', 'H', 'Chase', '333333301', '1970-01-07', '145 Bradbury, Sacramento, CA', 'M', '44000.00', '333333300', 6, ''),
('Franklin', 'T', 'Wong', '333445555', '1945-12-08', '638 Voss, Houston, TX', 'M', '40000.00', '888665555', 5, ''),
('Alex', 'D', 'Freed', '444444400', '1950-10-09', '4333 Pillsbury, Milwaukee, WI', 'M', '89000.00', NULL, 7, ''),
('Bonnie', 'S', 'Bays', '444444401', '1956-06-19', '111 Hollow, Milwaukee, WI', 'F', '70000.00', '444444400', 7, ''),
('Alec', 'C', 'Best', '444444402', '1966-01-18', '233 Solid, Milwaukee, WI', 'M', '60000.00', '444444400', 7, ''),
('Sam', 'S', 'Snedden', '444444403', '1977-07-31', '987 Windy St, Milwaukee, WI', 'M', '48000.00', '444444400', 7, ''),
('Joyce', 'A', 'English', '453453453', '1962-07-31', '5631 Rice, Houston, TX', 'F', '25000.00', '333445555', 5, ''),
('John', 'C', 'James', '555555500', '1975-06-30', '7676 Bloomington, Sacramento, CA', 'M', '81000.00', NULL, 6, ''),
('Nandita', 'K', 'Ball', '555555501', '1969-04-16', '222 Howard, Sacramento, CA', 'M', '62000.00', '555555500', 6, ''),
('Bob', 'B', 'Bender', '666666600', '1968-04-17', '8794 Garfield, Chicago, IL', 'M', '96000.00', NULL, 8, ''),
('Jill', 'J', 'Jarvis', '666666601', '1966-01-14', '6234 Lincoln, Chicago, IL', 'F', '36000.00', '666666600', 8, ''),
('Kate', 'W', 'King', '666666602', '1966-04-16', '1976 Boone Trace, Chicago, IL', 'F', '44000.00', '666666600', 8, ''),
('Lyle', 'G', 'Leslie', '666666603', '1963-01-09', '417 Hancock Ave, Chicago, IL', 'M', '41000.00', '666666601', 8, ''),
('Billie', 'J', 'King', '666666604', '1960-01-01', '556 Washington, Chicago, IL', 'F', '38000.00', '666666603', 8, ''),
('Jon', 'A', 'Kramer', '666666605', '1968-08-22', '1988 Windy Creek, Seattle, WA', 'M', '41500.00', '666666603', 8, ''),
('Ray', 'H', 'King', '666666606', '1949-08-16', '213 Delk Road, Seattle, WA', 'M', '44500.00', '666666604', 8, ''),
('Gerald', 'D', 'Small', '666666607', '1962-05-15', '122 Ball Street, Dallas, TX', 'M', '29000.00', '666666602', 8, ''),
('Arnold', 'A', 'Head', '666666608', '1967-05-19', '233 Spring St, Dallas, TX', 'M', '33000.00', '666666602', 8, ''),
('Helga', 'C', 'Pataki', '666666609', '1969-03-11', '101 Holyoke St, Dallas, TX', 'F', '32000.00', '666666602', 8, ''),
('Naveen', 'B', 'Drew', '666666610', '1970-05-23', '198 Elm St, Philadelphia, PA', 'M', '34000.00', '666666607', 8, ''),
('Carl', 'E', 'Reedy', '666666611', '1977-06-21', '213 Ball St, Philadelphia, PA', 'M', '32000.00', '666666610', 8, ''),
('Sammy', 'G', 'Hall', '666666612', '1970-01-11', '433 Main Street, Miami, FL', 'M', '37000.00', '666666611', 8, ''),
('Red', 'A', 'Bacher', '666666613', '1980-05-21', '196 Elm Street, Miami, FL', 'M', '33500.00', '666666612', 8, ''),
('Ramesh', 'K', 'Narayan', '666884444', '1952-08-15', '971 Fire Oak, Humble, TX', 'M', '38000.00', '333445555', 5, ''),
('James', 'E', 'Borg', '888665555', '1927-11-10', '450 Stone, Houston, TX', 'M', '55000.00', NULL, 1, ''),
('Jennifer', 'S', 'Wallace', '987654321', '1931-06-20', '291 Berry, Bellaire, TX', 'F', '43000.00', '888665555', 4, ''),
('Ahmad', 'V', 'Jabbar', '987987987', '1959-03-29', '980 Dallas, Houston, TX', 'M', '25000.00', '987654321', 4, ''),
('Alicia', 'J', 'Zelaya', '999887777', '1958-07-19', '3321 Castle, Spring, TX', 'F', '25000.00', '987654321', 4, '');

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE IF NOT EXISTS `project` (
  `pname` varchar(25) NOT NULL,
  `pnumber` int(4) NOT NULL DEFAULT '0',
  `plocation` varchar(15) DEFAULT NULL,
  `dnum` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`pname`, `pnumber`, `plocation`, `dnum`) VALUES
('ProductX', 1, 'Bellaire', 5),
('ProductY', 2, 'Sugarland', 5),
('ProductZ', 3, 'Houston', 5),
('Computerization', 10, 'Stafford', 4),
('Reorganization', 20, 'Houston', 1),
('Newbenefits', 30, 'Stafford', 4),
('OperatingSystems', 61, 'Jacksonville', 6),
('DatabaseSystems', 62, 'Birmingham', 6),
('Middleware', 63, 'Jackson', 6),
('InkjetPrinters', 91, 'Phoenix', 7),
('LaserPrinters', 92, 'LasVegas', 7);

-- --------------------------------------------------------

--
-- Table structure for table `proj_Business`
--

CREATE TABLE IF NOT EXISTS `proj_Business` (
  `Name` varchar(25) NOT NULL,
  `Address` varchar(40) NOT NULL,
  `Food_type` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `proj_Business`
--

INSERT INTO `proj_Business` (`Name`, `Address`, `Food_type`) VALUES
('Boone Saloon', '489 W King St, Boone, NC 28607', 'Bar'),
('Capone''s Pizza', '139 New Market Centre, Boone, NC 28607', 'Pizza'),
('Carolina Pizza Co.', '161 W Howard St, Boone, NC 28607', 'Pizza'),
('Cobo Sushi Bar', '161 W Howard St, Boone, NC 28607', 'Asian'),
('Coyote Kitchen', '200 Southgate Dr, Boone, NC 28607', 'Mexican'),
('Daniel Boone Inn', '130 Hardin Street Boone, NC 28607', 'American'),
('F.A.R.M Café', '617 W King Street, Boone, NC 28607', 'Sustainable'),
('Macados', '539 W King St, Boone, NC 28607', 'Sandwich'),
('Red Onion Cafe', '227 Hardin St, Boone, NC 28607', 'Cafe'),
('Sabeing', '454 W King St, Boone, NC 28607', 'Asian'),
('Saks Grill', '450 E King St, Boone, NC 28607', 'Grill'),
('Sunrise Grill', '454 W King St suite b, Boone, NC 28607', 'Breakfast'),
('Tapp Room', '421 Blowing Rock Rd, Boone, NC 28607', 'American'),
('Taste Grill', '240 Shadowline Dr, Boone, NC 28607', 'Grill'),
('The Cardinal / Lilly''s', '455 Blowing Rock Rd, Boone, NC 28607', 'American'),
('The Pedalin'' Pig', '2968 NC-105 A, Boone, NC 28607', 'Barbeque'),
('Troy''s Dinner', '1286 NC-105, Boone, NC 28607', 'Dinner');

-- --------------------------------------------------------

--
-- Table structure for table `proj_Deal`
--

CREATE TABLE IF NOT EXISTS `proj_Deal` (
  `associated_restauraunt` varchar(25) NOT NULL,
  `deal_id` char(4) NOT NULL,
  `deal_description` varchar(30) DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `mon_bool` tinyint(1) DEFAULT NULL,
  `tues_bool` tinyint(1) DEFAULT NULL,
  `wed_bool` tinyint(1) DEFAULT NULL,
  `thr_bool` tinyint(1) DEFAULT NULL,
  `fri_bool` tinyint(1) DEFAULT NULL,
  `sat_bool` tinyint(1) DEFAULT NULL,
  `sun_bool` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `proj_Deal`
--

INSERT INTO `proj_Deal` (`associated_restauraunt`, `deal_id`, `deal_description`, `start_time`, `end_time`, `mon_bool`, `tues_bool`, `wed_bool`, `thr_bool`, `fri_bool`, `sat_bool`, `sun_bool`) VALUES
('Tapp Room', '0000', '$7 Buffalo Chicken Wrap', NULL, NULL, 0, 1, 0, 0, 0, 0, 0),
('Tapp Room', '0002', '$2 Tacos', NULL, NULL, 0, 0, 1, 0, 0, 0, 0),
('Tapp Room', '0003', '$7 All Burgers', NULL, NULL, 0, 0, 0, 1, 0, 0, 0),
('Tapp Room', '0004', '$6.5 Chicken/BBQ Quesadillas', NULL, NULL, 0, 0, 0, 0, 1, 0, 0),
('Tapp Room', '0005', '$7 Eye Opener Burger', NULL, NULL, 0, 0, 0, 0, 0, 1, 0),
('Daniel Boone Inn', '0006', ' $12.95 Adult Breakfast', NULL, NULL, 1, 1, 1, 1, 1, 1, 1),
('Daniel Boone Inn', '0007', '$2 Tacos', NULL, NULL, 1, 1, 1, 1, 1, 1, 1),
('Daniel Boone Inn', '0008', '$0-$12.95 Child Dinner', NULL, NULL, 1, 1, 1, 1, 1, 1, 1),
('Daniel Boone Inn', '0009', '$0-$9.95 Child Breakfast', NULL, NULL, 1, 1, 1, 1, 1, 1, 1),
('Daniel Boone Inn', '0010', '$7 Eye Opener Burger', NULL, NULL, 1, 1, 1, 1, 1, 1, 1),
('Daniel Boone Inn', '0011', '$19.95 Adult Dinner', NULL, NULL, 1, 1, 1, 1, 1, 1, 1),
('Troy''s Dinner', '0099', '$9.25 The Gobbler', NULL, NULL, 1, 1, 1, 1, 1, 1, 1),
('Troy''s Dinner', '0101', '$7.25 Fried Chicken Filet', NULL, NULL, 1, 1, 1, 1, 1, 1, 1),
('Carolina Pizza Co.', '0286', '$7 for two slices and a drink', NULL, NULL, 1, 1, 1, 1, 1, 1, 1),
('Troy''s Dinner', '0302', '$6.00 Hot Diggity Dog', NULL, NULL, 1, 1, 1, 1, 1, 1, 1),
('Capone''s Pizza', '0983', '$7.25 Personal Pizza Combo', NULL, NULL, 1, 1, 1, 1, 1, 1, 1),
('Boone Saloon', '1045', '$4.50 Seasoned Fries', NULL, NULL, 1, 1, 1, 1, 1, 1, 1),
('Sunrise Grill', '1067', '$6.25 Grandfather Special', NULL, NULL, 1, 1, 1, 1, 1, 1, 1),
('Tapp Room', '1234', 'Wings for 0.45¢ each', NULL, NULL, 1, 0, 0, 0, 0, 0, 0),
('Sabeing', '1679', '$5.50 California Roll', NULL, NULL, 1, 1, 1, 1, 1, 1, 1),
('Taste Grill', '2001', '$5 Take Out Hibachi', NULL, NULL, 1, 1, 1, 1, 1, 1, 1),
('Boone Saloon', '2045', '$4.50 Seasoned Fries', NULL, NULL, 1, 1, 1, 1, 1, 1, 1),
('Sabeing', '2979', '$5.50 California Roll', NULL, NULL, 1, 1, 1, 1, 1, 1, 1),
('Macados', '3876', '39 Cent Boneless Wings', NULL, NULL, 0, 0, 0, 1, 0, 0, 0),
('Macados', '4790', '$7.25 Burgers', NULL, NULL, 0, 1, 0, 0, 0, 0, 0),
('Red Onion Cafe', '5069', '$12.99 Baja Fish Tacos', NULL, NULL, 1, 1, 1, 1, 1, 1, 1),
('The Cardinal / Lilly''s', '6483', '$9 Double Cheese Burger ', NULL, NULL, 1, 1, 1, 1, 1, 1, 1),
('F.A.R.M Café', '6666', 'Pay what you can', NULL, NULL, 1, 1, 1, 1, 1, 1, 1),
('Macados', '7635', '$6.95 Quesadillas', NULL, NULL, 0, 0, 1, 0, 0, 0, 0),
('Cobo Sushi Bar', '8504', '$6.5 Kalifornia Roll', NULL, NULL, 1, 1, 1, 1, 1, 1, 1),
('Macados', '8756', '$7.25 Reubens', NULL, NULL, 0, 0, 0, 0, 0, 1, 0),
('Macados', '8763', 'Half Priced Hindenburgs', NULL, NULL, 1, 0, 0, 0, 0, 0, 0),
('Macados', '8976', '$3.95 Con Quesos', NULL, NULL, 0, 0, 0, 0, 1, 0, 0),
('Saks Grill', '9275', '$4.59 Cheeseburger ', NULL, NULL, 1, 1, 1, 1, 1, 1, 1),
('Coyote Kitchen', '9375', '$6.59 1/2 size pheonix bowl', NULL, NULL, 1, 1, 1, 1, 1, 1, 1),
('The Pedalin'' Pig', '9834', '$7.95 Worker''s Lunch Special', NULL, NULL, 1, 1, 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `proj_Events`
--

CREATE TABLE IF NOT EXISTS `proj_Events` (
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `associated_resturaunt` varchar(25) NOT NULL,
  `event_name` varchar(25) NOT NULL,
  `event_description` varchar(100) DEFAULT NULL,
  `event_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `proj_Events`
--

INSERT INTO `proj_Events` (`start_time`, `end_time`, `associated_resturaunt`, `event_name`, `event_description`, `event_date`) VALUES
('18:00:00', '22:00:00', 'The Cardinal / Lilly''s', 'Dance Party', 'Come for dancing and food.', '2020-05-20'),
('12:00:00', '17:00:00', 'Macados', 'Game Day Viewing Party', 'Mountaineers assemble for some great food and football!', '2020-05-22'),
('19:00:00', '23:00:00', 'Tapp Room', 'Live Music', 'Come out to see some sweet tunes! Lineup of local Boone music.', '2020-05-21'),
('19:00:00', '23:00:00', 'Boone Saloon', 'Singles Night', 'Come meet some cute people of your preferred gender. ', '2020-05-30'),
('19:00:00', '23:00:00', 'Boone Saloon', 'Trivia Night', 'Come in for a fun night of trivia. Prizes for the top three teams', '2020-05-11');

-- --------------------------------------------------------

--
-- Table structure for table `proj_Item`
--

CREATE TABLE IF NOT EXISTS `proj_Item` (
  `deal_id` char(4) NOT NULL,
  `item_name` varchar(20) NOT NULL,
  `price` float DEFAULT NULL,
  `food_type` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `proj_Item`
--

INSERT INTO `proj_Item` (`deal_id`, `item_name`, `price`, `food_type`) VALUES
('0006', 'Adult Breakfast', 12.95, 'Breakfast'),
('5069', 'Baja Fish Tacos', 12.99, 'Lunch'),
('3876', 'Boneless Wings', 0.39, 'Lunch/Dinner'),
('2045', 'Boone seasoned fries', 4.5, 'Side'),
('0000', 'Buffalo Chicken Wrap', 7, 'Lunch/Dinner'),
('0003', 'Burgers', 7, 'Lunch/Dinner'),
('9275', 'Cheese Burger', 4.59, 'Lunch/Dinner'),
('0009', 'Child Breakfast', 9.95, 'Breakfast'),
('0008', 'Child Dinner', 12.95, 'Dinner'),
('8976', 'Con Quesos', 3.95, 'Lunch'),
('0011', 'D Adult Dinner', 19.95, 'Dinner'),
('0010', 'D Eye Opener Burger', 7, 'Lunch/Dinner'),
('0007', 'Daniel_Tacos', 2, 'Lunch'),
('6483', 'Double Cheese Burger', 9, 'Lunch/Dinner'),
('0005', 'Eye Opener Burger', 7, 'Lunch/Dinner'),
('6666', 'Farm Cafe', NULL, NULL),
('0101', 'Fried Chicken Fillet', 7.25, 'Lunch'),
('1067', 'Grandfather Special', 5.5, 'Side'),
('2001', 'Hibachi Chick/Steak', 5, 'Lunch/Dinner'),
('8763', 'Hindenburg', NULL, NULL),
('0302', 'Hot Diggity Dog', 6, 'Lunch'),
('8504', 'Kalifornia Roll', 6.5, 'Lunch'),
('4790', 'Mac Burgers', 7.25, 'Lunch/Dinner'),
('7635', 'Mac Quesadillas', 6.95, 'Lunch'),
('0983', 'Personal Pizza Combo', 7.25, 'Pizza'),
('9375', 'Phoenix Bowl', 6.59, 'Lunch'),
('0004', 'Quesadillas', 6.5, 'Lunch'),
('8756', 'Ruben', 7.25, 'Lunch/Dinner'),
('2979', 'Saeb California Roll', 5.5, 'Lunch'),
('1045', 'Seasoned Fries', 4.5, 'Side'),
('0002', 'Tacos', 2, 'Lunch'),
('0099', 'The Gobler', 9.95, 'Lunch/Dinner'),
('0286', 'Two slices', 7, 'Pizza'),
('1234', 'wings', 0.45, 'wings'),
('9834', 'Workers Special', 7.95, 'Lunch');

-- --------------------------------------------------------

--
-- Table structure for table `proj_Nutrition`
--

CREATE TABLE IF NOT EXISTS `proj_Nutrition` (
  `calorie_count` int(11) DEFAULT NULL,
  `alergy_info` varchar(100) DEFAULT NULL,
  `vegetarian_option` tinyint(1) DEFAULT NULL,
  `vegan_option` tinyint(1) DEFAULT NULL,
  `item_name` varchar(20) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `proj_Nutrition`
--

INSERT INTO `proj_Nutrition` (`calorie_count`, `alergy_info`, `vegetarian_option`, `vegan_option`, `item_name`) VALUES
(900, NULL, 0, 0, 'Adult Breakfast'),
(400, '', 0, 0, 'Baja Fish Tacos'),
(650, NULL, 0, 0, 'Boneless Wings'),
(600, NULL, 1, 1, 'Boone seasoned fries'),
(600, NULL, 0, 0, 'Buffalo Chicken Wrap'),
(650, NULL, 0, 0, 'Burgers'),
(350, NULL, 0, 0, 'Cheese Burger'),
(400, NULL, 0, 0, 'Child Breakfast'),
(750, NULL, 0, 0, 'Child Dinner'),
(900, NULL, NULL, NULL, 'Con Quesos'),
(500, NULL, 0, 0, 'Daniel_Tacos'),
(300, NULL, 0, 0, 'Double Cheese Burger'),
(600, NULL, 0, 0, 'Eye Opener Burger'),
(700, NULL, 0, 0, 'Fried Chicken Fillet'),
(750, NULL, 1, 0, 'Grandfather Special'),
(650, NULL, 0, 0, 'Hibachi Chick/Steak'),
(490, NULL, 0, 0, 'Hindenburg'),
(430, NULL, 0, 0, 'Hot Diggity Dog'),
(300, 'Fish allergy', 0, 0, 'Kalifornia Roll'),
(400, NULL, 0, 0, 'Mac Burgers'),
(600, NULL, 1, 0, 'Mac Quesadillas'),
(440, NULL, 1, 0, 'Personal Pizza Combo'),
(450, 'Nut allergy', 1, 1, 'Phoenix Bowl'),
(500, NULL, 1, 0, 'Quesadillas'),
(900, NULL, 0, 0, 'Ruben'),
(600, 'Fish', 0, 0, 'Saeb California Roll'),
(740, 'Cooked in peanut oil', 0, 0, 'Seasoned Fries'),
(300, NULL, 0, 1, 'Tacos'),
(1300, NULL, 0, 0, 'The Gobler'),
(500, NULL, 0, 0, 'Two slices'),
(300, NULL, 0, 0, 'wings'),
(900, 'Nut Allergy', 0, 0, 'Workers Special');

-- --------------------------------------------------------

--
-- Table structure for table `proj_Review`
--

CREATE TABLE IF NOT EXISTS `proj_Review` (
  `associated_resturaunt` varchar(25) NOT NULL,
  `quality_rating_yelp` float DEFAULT NULL,
  `price_rating_yelp` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `proj_Review`
--

INSERT INTO `proj_Review` (`associated_resturaunt`, `quality_rating_yelp`, `price_rating_yelp`) VALUES
('Boone Saloon', 4.2, 2),
('Capone''s Pizza', 4.3, 1),
('Carolina Pizza Co.', 4.6, 1),
('Cobo Sushi Bar', 4.7, 3),
('Coyote Kitchen', 4.5, 3),
('Daniel Boone Inn', 4.6, 3),
('F.A.R.M Café', 4.8, 1),
('Macados', 3.9, 1),
('Red Onion Cafe', 4.3, 2),
('Sabeing', 4.7, 3),
('Saks Grill', 4.4, 2),
('Sunrise Grill', 4.6, 2),
('Tapp Room', 4.3, 1),
('Taste Grill', NULL, 2),
('The Cardinal / Lilly''s', 4.7, 3),
('The Pedalin'' Pig', 4.5, 2),
('Troy''s Dinner', 4.5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `proj_website`
--

CREATE TABLE IF NOT EXISTS `proj_website` (
  `associated_restaurant` varchar(25) NOT NULL,
  `online_ordering` tinyint(1) DEFAULT NULL,
  `website_link` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `proj_website`
--

INSERT INTO `proj_website` (`associated_restaurant`, `online_ordering`, `website_link`) VALUES
('Boone Saloon', 1, 'http://boonesaloon.com/'),
('Capone''s Pizza', 1, 'https://www.caponesuntouchablepizza.com/'),
('Carolina Pizza Co.', 1, 'https://www.boonedelivers.com/r/251/restaurants/delivery/PizzaSub/Carolina-Pizza-Co-boone'),
('Cobo Sushi Bar', 1, 'https://cobosushi.com/'),
('Coyote Kitchen', 1, 'https://coyotekitchen.com/'),
('Daniel Boone Inn', 1, 'http://www.danlbooneinn.com/'),
('F.A.R.M Café', 0, 'https://farmcafe.org/index.html'),
('Macados', 0, 'https://www.macados.net/'),
('Red Onion Cafe', 0, 'https://www.redonionboone.com/'),
('Sabeing', 0, 'https://www.boonedelivers.com/r/361/restaurants/delivery/Asian/Sabeing-Boone-King-Boone'),
('Saks Grill', 1, 'https://www.boonedelivers.com/r/81/restaurants/delivery/Diner/Saks-Grill-Boone'),
('Sunrise Grill', 0, 'http://www.sunrisegrillboone.com/'),
('Tapp Room', 0, 'http://www.tapproom.com/'),
('Taste Grill', 0, 'https://www.tastegrillboonenc.com/'),
('The Cardinal / Lilly''s', 0, 'http://thecardinalboone.com/'),
('The Pedalin'' Pig', 0, 'http://thepedalinpig.com/'),
('Troy''s Dinner', 0, 'https://troys105diner.com/');

-- --------------------------------------------------------

--
-- Table structure for table `works_on`
--

CREATE TABLE IF NOT EXISTS `works_on` (
  `essn` char(9) NOT NULL DEFAULT '',
  `pno` int(4) NOT NULL DEFAULT '0',
  `hours` decimal(4,1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `works_on`
--

INSERT INTO `works_on` (`essn`, `pno`, `hours`) VALUES
('111111100', 61, '40.0'),
('111111101', 61, '40.0'),
('111111102', 61, '40.0'),
('111111103', 61, '40.0'),
('123456789', 1, '32.5'),
('123456789', 2, '7.5'),
('222222200', 62, '40.0'),
('222222201', 62, '48.0'),
('222222202', 62, '40.0'),
('222222203', 62, '40.0'),
('222222204', 62, '40.0'),
('222222205', 62, '40.0'),
('333333300', 63, '40.0'),
('333333301', 63, '46.0'),
('333445555', 2, '10.0'),
('333445555', 3, '10.0'),
('333445555', 10, '10.0'),
('333445555', 20, '10.0'),
('444444400', 91, '40.0'),
('444444401', 91, '40.0'),
('444444402', 91, '40.0'),
('444444403', 91, '40.0'),
('453453453', 1, '20.0'),
('453453453', 2, '20.0'),
('555555500', 92, '40.0'),
('555555501', 92, '44.0'),
('666666601', 91, '40.0'),
('666666603', 91, '40.0'),
('666666604', 91, '40.0'),
('666666605', 92, '40.0'),
('666666606', 91, '40.0'),
('666666607', 61, '40.0'),
('666666608', 62, '40.0'),
('666666609', 63, '40.0'),
('666666610', 61, '40.0'),
('666666611', 61, '40.0'),
('666666612', 61, '40.0'),
('666666613', 61, '30.0'),
('666666613', 62, '10.0'),
('666666613', 63, '10.0'),
('666884444', 3, '40.0'),
('888665555', 20, '10.0'),
('987654321', 20, '15.0'),
('987654321', 30, '20.0'),
('987987987', 10, '35.0'),
('987987987', 30, '5.0'),
('999887777', 10, '10.0'),
('999887777', 30, '30.0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`dnumber`),
  ADD UNIQUE KEY `dname` (`dname`),
  ADD KEY `mgr_ssn` (`mgr_ssn`);

--
-- Indexes for table `dependent`
--
ALTER TABLE `dependent`
  ADD PRIMARY KEY (`essn`,`dependent_name`);

--
-- Indexes for table `dept_locations`
--
ALTER TABLE `dept_locations`
  ADD PRIMARY KEY (`dnumber`,`dlocation`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`ssn`),
  ADD KEY `super_ssn` (`super_ssn`),
  ADD KEY `dno` (`dno`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`pnumber`),
  ADD UNIQUE KEY `pname` (`pname`),
  ADD KEY `dnum` (`dnum`);

--
-- Indexes for table `proj_Business`
--
ALTER TABLE `proj_Business`
  ADD PRIMARY KEY (`Name`);

--
-- Indexes for table `proj_Deal`
--
ALTER TABLE `proj_Deal`
  ADD PRIMARY KEY (`deal_id`),
  ADD KEY `proj_Deal_ibfk_1` (`associated_restauraunt`);

--
-- Indexes for table `proj_Events`
--
ALTER TABLE `proj_Events`
  ADD PRIMARY KEY (`event_name`),
  ADD KEY `associated_resturaunt` (`associated_resturaunt`);

--
-- Indexes for table `proj_Item`
--
ALTER TABLE `proj_Item`
  ADD PRIMARY KEY (`item_name`),
  ADD KEY `deal_id` (`deal_id`);

--
-- Indexes for table `proj_Nutrition`
--
ALTER TABLE `proj_Nutrition`
  ADD PRIMARY KEY (`item_name`);

--
-- Indexes for table `proj_Review`
--
ALTER TABLE `proj_Review`
  ADD PRIMARY KEY (`associated_resturaunt`);

--
-- Indexes for table `proj_website`
--
ALTER TABLE `proj_website`
  ADD PRIMARY KEY (`associated_restaurant`);

--
-- Indexes for table `works_on`
--
ALTER TABLE `works_on`
  ADD PRIMARY KEY (`essn`,`pno`),
  ADD KEY `pno` (`pno`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `department`
--
ALTER TABLE `department`
  ADD CONSTRAINT `department_ibfk_1` FOREIGN KEY (`mgr_ssn`) REFERENCES `employee` (`ssn`);

--
-- Constraints for table `dependent`
--
ALTER TABLE `dependent`
  ADD CONSTRAINT `dependent_ibfk_1` FOREIGN KEY (`essn`) REFERENCES `employee` (`ssn`);

--
-- Constraints for table `dept_locations`
--
ALTER TABLE `dept_locations`
  ADD CONSTRAINT `dept_locations_ibfk_1` FOREIGN KEY (`dnumber`) REFERENCES `department` (`dnumber`);

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`super_ssn`) REFERENCES `employee` (`ssn`),
  ADD CONSTRAINT `employee_ibfk_2` FOREIGN KEY (`dno`) REFERENCES `department` (`dnumber`);

--
-- Constraints for table `project`
--
ALTER TABLE `project`
  ADD CONSTRAINT `project_ibfk_1` FOREIGN KEY (`dnum`) REFERENCES `department` (`dnumber`);

--
-- Constraints for table `proj_Deal`
--
ALTER TABLE `proj_Deal`
  ADD CONSTRAINT `proj_Deal_ibfk_1` FOREIGN KEY (`associated_restauraunt`) REFERENCES `proj_Business` (`Name`);

--
-- Constraints for table `proj_Events`
--
ALTER TABLE `proj_Events`
  ADD CONSTRAINT `proj_Events_ibfk_1` FOREIGN KEY (`associated_resturaunt`) REFERENCES `proj_Business` (`Name`) ON UPDATE CASCADE;

--
-- Constraints for table `proj_Item`
--
ALTER TABLE `proj_Item`
  ADD CONSTRAINT `proj_Item_ibfk_1` FOREIGN KEY (`deal_id`) REFERENCES `proj_Deal` (`deal_id`) ON UPDATE CASCADE;

--
-- Constraints for table `proj_Nutrition`
--
ALTER TABLE `proj_Nutrition`
  ADD CONSTRAINT `proj_Nutrition_ibfk_1` FOREIGN KEY (`item_name`) REFERENCES `proj_Item` (`item_name`);

--
-- Constraints for table `proj_Review`
--
ALTER TABLE `proj_Review`
  ADD CONSTRAINT `proj_Review_ibfk_1` FOREIGN KEY (`associated_resturaunt`) REFERENCES `proj_Business` (`Name`);

--
-- Constraints for table `proj_website`
--
ALTER TABLE `proj_website`
  ADD CONSTRAINT `proj_website_ibfk_1` FOREIGN KEY (`associated_restaurant`) REFERENCES `proj_Business` (`Name`);

--
-- Constraints for table `works_on`
--
ALTER TABLE `works_on`
  ADD CONSTRAINT `works_on_ibfk_1` FOREIGN KEY (`essn`) REFERENCES `employee` (`ssn`),
  ADD CONSTRAINT `works_on_ibfk_2` FOREIGN KEY (`pno`) REFERENCES `project` (`pnumber`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
