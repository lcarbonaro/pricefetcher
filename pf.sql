-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 24, 2014 at 01:11 AM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `pf`
--
CREATE DATABASE IF NOT EXISTS `pf` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `pf`;

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE IF NOT EXISTS `brand` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'brand id.',
  `brand_name` varchar(25) NOT NULL COMMENT 'brand name',
  PRIMARY KEY (`id`),
  UNIQUE KEY `brand_name` (`brand_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='brands of appliances' AUTO_INCREMENT=20 ;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`id`, `brand_name`) VALUES
(4, 'Asko'),
(5, 'Bluestar'),
(6, 'Bosch'),
(7, 'Dacor'),
(8, 'DCS'),
(9, 'Electrolux'),
(10, 'Fisher'),
(3, 'Frigidaire'),
(11, 'GE Café'),
(12, 'GE Monogram'),
(1, 'Jenn-Air'),
(13, 'Kitchenaid'),
(14, 'Maytag'),
(2, 'Miele'),
(15, 'Samsung'),
(16, 'Sub-Zero'),
(17, 'Thermador'),
(18, 'Whirlpool'),
(19, 'Wolf');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'category id.',
  `category_name` varchar(100) NOT NULL COMMENT 'category name',
  `category_parent_id` int(10) unsigned NOT NULL COMMENT 'parent category id. (recursive relationship)',
  `brand_id` int(10) unsigned NOT NULL COMMENT 'brand id.',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='Categories (and sub-categories) within a brand' AUTO_INCREMENT=24 ;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `category_name`, `category_parent_id`, `brand_id`) VALUES
(1, 'FRENCH DOOR WITH ICE & WATER', 0, 1),
(2, 'FRENCH DOOR', 0, 1),
(3, 'CABINET DEPTH', 1, 1),
(4, 'SIDE BY SIDE', 0, 1),
(5, 'BOTTOM MOUNT', 0, 1),
(6, 'UNDERCOUNTER REFRIGERATION', 0, 1),
(7, 'ICE MAKER', 0, 1),
(8, 'ACCESSORIES - REFRIGERATION', 0, 1),
(9, 'REFRIGERATOR ACCESSORIES', 0, 1),
(10, 'DISHWASHERS', 0, 1),
(11, 'SLIDE IN', 0, 1),
(12, 'COMMERCIAL RANGE', 0, 1),
(13, 'WALL OVEN', 0, 1),
(14, 'BUILT-IN COFFEE', 0, 1),
(15, 'COOKTOP', 0, 1),
(16, 'MICROWAVE HOOD COMBINATION', 0, 1),
(17, 'HOODS', 0, 1),
(18, 'WARMING DRAWER', 0, 1),
(19, 'MICROWAVE DRAWER', 0, 1),
(20, 'COOKING ACCESSORIES', 0, 1),
(21, 'TRASH COMPACTORS', 0, 1),
(22, 'ACCESSORIES', 0, 1),
(23, 'test', 0, 4);

-- --------------------------------------------------------

--
-- Table structure for table `model`
--

CREATE TABLE IF NOT EXISTS `model` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'model id.',
  `model_no` varchar(50) NOT NULL COMMENT 'model no.',
  `model_colour` varchar(50) NOT NULL COMMENT 'model colour',
  `model_desc` varchar(255) NOT NULL COMMENT 'model description',
  `price` decimal(7,2) NOT NULL COMMENT 'price',
  `category_id` int(10) unsigned NOT NULL COMMENT 'category id.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `model_no` (`model_no`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='Models of appliances' AUTO_INCREMENT=2 ;

--
-- Dumping data for table `model`
--

INSERT INTO `model` (`id`, `model_no`, `model_colour`, `model_desc`, `price`, `category_id`) VALUES
(1, 'JFC2089BEM', 'EURO STYLE STAINLESS STEEL', '20 CU.FT. CAB. DEPTH, CONTOURED DOORS, LED LIGHTS, HIDDEN HINGES, PRODUCE PRESERVER, TRISENSOR™ CONTROLS, INT. WATER / ICE, GOURMET BAY™ DRAWER, NANO SHELVES, ENERGY STAR®  ', '2551.00', 3);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
