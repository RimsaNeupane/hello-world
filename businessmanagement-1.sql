-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 15, 2018 at 11:52 AM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `businessmanagement`
--

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE IF NOT EXISTS `company` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_name` varchar(250) NOT NULL,
  `company_email` varchar(250) NOT NULL,
  `product_source_location` varchar(250) NOT NULL,
  `product_destination` varchar(250) NOT NULL,
  `check_in_date` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`id`, `company_name`, `company_email`, `product_source_location`, `product_destination`, `check_in_date`) VALUES
(3, 'Maruti Cement', 'maruti@gmail.com', 'Lalitpur', 'Item 3', 'Fri Apr 20 00:00:00 NPT 2018'),
(4, 'Swastik', 'swastik@gmail.com', 'Biratnager', 'Item 2', 'Fri Apr 20 00:00:00 NPT 2018'),
(5, 'Ncell', 'info@ncell.com', 'Chitwan', 'Item 2', 'Sat Apr 28 00:00:00 NPT 2018'),
(6, 'Ntc', 'info@ntc.com', 'Kathmandu', 'Item 3', 'Thu Apr 26 00:00:00 NPT 2018'),
(7, 'ThapaIndustry', 'thapaindustry@gmail.com', 'Jhapa', 'Item 3', 'Fri Jun 08 00:00:00 NPT 2018'),
(8, 'Apple', 'apple@info.com', 'Chitwan', 'Item 2', 'Sat Apr 21 00:00:00 NPT 2018');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_name` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `customer_name`) VALUES
(1, 'Ram'),
(2, 'Shyam');

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE IF NOT EXISTS `location` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `location_name` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`id`, `location_name`) VALUES
(1, 'Kathmandu');

-- --------------------------------------------------------

--
-- Table structure for table `manifest`
--

CREATE TABLE IF NOT EXISTS `manifest` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_name` varchar(250) NOT NULL,
  `check_in_date` varchar(250) NOT NULL,
  `quantity` varchar(250) NOT NULL,
  `item_name` varchar(250) NOT NULL,
  `item_color` varchar(250) NOT NULL,
  `item_weight` varchar(250) NOT NULL,
  `item_cost` varchar(250) NOT NULL,
  `item_type` varchar(250) NOT NULL,
  `received` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `manifest`
--

INSERT INTO `manifest` (`id`, `company_name`, `check_in_date`, `quantity`, `item_name`, `item_color`, `item_weight`, `item_cost`, `item_type`, `received`) VALUES
(3, 'Ncell', 'Sat Apr 28 00:00:00 NPT 2018', '50', 'RechargeCards', 'Null', '46', '150000', 'Digital', 'true'),
(4, 'ThapaIndustry', 'Sat Jun 09 00:00:00 NPT 2018', '85', 'RechargeCards', 'Null', '46', '150000', 'Digital', 'true'),
(5, 'Swastik', 'Sat Jun 09 00:00:00 NPT 2018', '89', 'Clothes', 'Red', '46', '2500000', 'Digital', 'true'),
(6, 'ThapaIndustry', 'Sat Jun 30 00:00:00 NPT 2018', '89', 'Clothes', 'Red', '46', '2500000', 'Material', 'true');

-- --------------------------------------------------------

--
-- Table structure for table `new_user`
--

CREATE TABLE IF NOT EXISTS `new_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `new_user`
--

INSERT INTO `new_user` (`id`, `name`, `email`, `password`) VALUES
(1, 'Savin', 'savin@gmail.com', 'hello'),
(2, 'Narendra', 'naren@gmail.com', 'naren123'),
(3, 'mohan', 'mohan@gmail.com', 'hello'),
(4, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `package`
--

CREATE TABLE IF NOT EXISTS `package` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `package_name` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `package`
--

INSERT INTO `package` (`id`, `package_name`) VALUES
(1, 'Paackage Transfer');

-- --------------------------------------------------------

--
-- Table structure for table `quantity`
--

CREATE TABLE IF NOT EXISTS `quantity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `quantity_name` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `quantity`
--

INSERT INTO `quantity` (`id`, `quantity_name`) VALUES
(1, '5'),
(2, '10'),
(3, '15');

-- --------------------------------------------------------

--
-- Table structure for table `shipment`
--

CREATE TABLE IF NOT EXISTS `shipment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shipment_name` varchar(250) NOT NULL,
  `package_name` varchar(250) NOT NULL,
  `customer_name` varchar(250) NOT NULL,
  `shipment_location` varchar(250) NOT NULL,
  `quantity` varchar(250) NOT NULL,
  `check_out_date` varchar(250) NOT NULL,
  `location_count` varchar(250) NOT NULL,
  `service_charge` varchar(250) NOT NULL,
  `received` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `shipment`
--

INSERT INTO `shipment` (`id`, `shipment_name`, `package_name`, `customer_name`, `shipment_location`, `quantity`, `check_out_date`, `location_count`, `service_charge`, `received`) VALUES
(1, 'MainShipment', 'Pacakege1', 'Ram', 'Item 1', '5', 'Thu Apr 19 00:00:00 NPT 2018', '5', '200', 'false');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
