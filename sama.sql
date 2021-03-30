-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 11, 2016 at 10:25 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `sama`
--

-- --------------------------------------------------------

--
-- Table structure for table `imges`
--

CREATE TABLE IF NOT EXISTS `imges` (
  `img4` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE IF NOT EXISTS `product` (
  `id` int(5) unsigned NOT NULL AUTO_INCREMENT,
  `paypal` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `praic` decimal(10,0) NOT NULL,
  `imges` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `imge` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'for detailn.php',
  `img1` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `img2` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `img3` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `img4` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `img5` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `detils` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'for detailn.php',
  `details` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=10 ;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `paypal`, `name`, `praic`, `imges`, `imge`, `img1`, `img2`, `img3`, `img4`, `img5`, `detils`, `details`) VALUES
(1, 'L7EZL8DJ54NSC', 'vila1', '74000000', 'files/t1/1.jpg', '../files/t1/1.jpg', '../files/t1/p1.jpg', '../files/t1/p2.jpg', '../files/t1/p3.jpg', '../files/t1/p4.jpg', '../files/t1/p5.jpg', ' Area:  \n  8 adobes.\n            \n consist of:\n tow floors and basement   \n        \n the fisrt floor contain   bathroom,hall and divan. \n    \n the basement is contain bathroom,kitchen   and tow halls.\n\n the posision in Alshabab street ', 'Area:  \r\n  8 adobes.            \r\n consist of:\r\n tow floors and basement. '),
(2, 'T6MQ5Q93WBUPW', 'villa 2', '1900000', 'files/t3/34.jpg', '../files/t3/p1.jpg', '../files/t3/p2.jpg', '../files/t3/p3.jpg', '../files/t3/p4.jpg', '../files/t3/p5.jpg', '../files/t3/p6.jpg', 'Area:32 adobes on three streets.\r\nConsist of:three floors,basement.\r\n1st floor: pavilion ,central hall ,bathroom , livingroom with its bathroom ,divan with its bathroom ,and office.\r\n2nd floor: four pavilions ,every pavilion  has bedroom with bathroom and a larg hall.\r\n3rd floor :three pavilions , every pavilion has bedroom with  bathroom.\r\nBasement:room,kitchen, bathroom,   ,and larg hall.\r\nLocation: Haddah.', 'Area:32 adobes on three streets.\r\nConsist of:three floors,basement.'),
(3, 'SA58N5LYHK8N6', 'vila 3', '75000000', 'files/t18/18.jpg', '../files/t18/18.jpg', '../files/t18/p1.jpg', '../files/t18/p2.jpg', '../files/t18/p3.jpg', '../files/t18/p4.jpg', '../files/t18/p5.jpg', 'Area: 7 adobes.\r\nConsist of: two floors.\r\n1st floor :divan, with parlor and bathroom beside pavilion of bedroom and bathroom , beside kitchen , bathroom and hall.\r\n2nd floor: three  beds pavilions , every pavilion has room ,bathroom ,beside room , bathroom , kitchen and hall.\r\nLocation: Bait Baos.', 'Area: 7 adobes.\r\nConsist of: two floors.'),
(4, 'RXKTQZXFR2TWU', 'villa 4', '90000000', 'files/t5/5.jpg', '../files/t5/5.jpg', '../files/t5/p2.jpg', '../files/t5/p3.jpg', '../files/t5/p4.jpg', '../files/t5/p5.jpg', '../files/t5/p1.jpg', 'Area:9 adobes.\r\nConsist of: one floor and basement.\r\nBasement: big hall, with bathroom beside a larg hall , kitchen ,two rooms and bathroom  with two doorway.\r\n1st floor:divan , with parlor with bathroom , homely hall ,two bedrooms, bathroom and kitchen beside pavilion that has bedroom with bathroom.\r\nLocation :Bait Baos\r\n', 'Area:9 adobes.\r\nConsist of: one floor and basement.'),
(5, '87KACXRC8LFYE', 'villa 5', '1400000', 'files/t6/6.jpg', '../files/t6/6.jpg', '../files/t6/p2.jpg', '../files/t6/p3.jpg', '../files/t6/p4.jpg', '../files/t6/p1.jpg', '../files/t6/p5.jpg', 'Area: 20 adobes.\r\nConsist of : three floors:\r\n1st floor: two divans , inner and outer halls, two bathrooms, kitchen beside pavilion that has room and bathroom.\r\n2nd floor: four pavilions that have bedrooms and bathrooms , and divan.\r\n3rd floor: three pavilions that have bedrooms and bathrooms , two separated  bedrooms   .\r\nThe last floor:  flat and kitchen.\r\n\r\nThere is cistern that broadness for ten waites.', 'Area: 20 adobes.\r\nConsist of : three floors.'),
(6, 'BG3V7G7KVQ4H2', 'villa 6', '115000000', 'files/t7/7.jpg', '../files/t7/7.jpg', '../files/t7/p1.jpg', '../files/t7/p2.jpg', '../files/t7/p3.jpg', '../files/t7/p4.jpg', '../files/t7/p5.jpg', '\r\nArea:15 adobes.\r\nConsist: of  one floor and basement\r\n\r\n1st floor: divan ,parlo  bathroom , a larg homely hall and pavilion that has room and bathroom beside two rooms ,kitchen and bathroom.\r\nbasement:two rooms , two bathroom, a larg kitchen and open hall.\r\nThere is also cistern.\r\nLocation:Bait Baos  14th st.', 'Area:15 adobes.\r\nConsist: of  one floor and basement\r\n'),
(7, 'LVXQ825FD23DJ', 'villa 7', '80000000', 'files/t8/8.jpg', '../files/t8/8.jpg', '../files/t8/p1.jpg', '../files/t8/p2.jpg', '../files/t8/p3.jpg', '../files/t8/p4.jpg', '../files/t8/p5.jpg', 'Area: 9 Adobe.\r\nConsist of:  one floor and basement\r\n1st floor: divan ,parlo  bathroom , a larg homely hall and pavilion that has room and bathroom beside two rooms ,kitchen and bathroom.\r\nbasement:two rooms , two bathroom, a larg kitchen and open hall.\r\nThere is also cistern.\r\nLocation:Bait Baos  14th st.', 'Area: 9 Adobe.\r\nConsist of:  one floor and basement'),
(8, 'SGD3A5Q7QPUVY', 'villa 8', '98000000', 'files/t9/9.jpg', '../files/t9/9.jpg', '../files/t9/p1.jpg', '../files/t9/p2.jpg', '../files/t9/p3.jpg', '../files/t9/p4.jpg', '../files/t9/p5.jpg', ' Area:  \r\n  8 adobes.\r\n            \r\n consist of:\r\n tow floors and basement   \r\n        \r\n the fisrt floor contain   bathroom,hall and divan. \r\n    \r\n the basement is contain bathroom,kitchen   and tow halls.\r\n\r\n the posision in Alshabab street ', 'Area:  \r\n  8 adobes.\r\n            \r\n consist of:\r\n tow floors and basemen'),
(9, 'S4T7XSFSTRJVL', 'villa 9', '65000000', 'files/t11/11.jpg', '../files/t11/11.jpg', '../files/t11/p1.jpg', '../files/t11/p2.jpg', '../files/t11/p3.jpg', '../files/t11/p4.jpg', '../files/t11/p5.jpg', 'Area:9 adobes.\r\nConsist of: one floor and basement.\r\nBasement: big hall, with bathroom beside a larg hall , kitchen ,two rooms and bathroom  with two doorway.\r\n1st floor:divan , with parlor with bathroom , homely hall ,two bedrooms, bathroom and kitchen beside pavilion that has bedroom with bathroom.\r\nLocation :Bait Baos\r\n', 'Area:9 adobes.\r\nConsist of: one floor and basement.');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id_users` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` int(8) NOT NULL,
  `year` year(4) NOT NULL,
  `month` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` int(10) NOT NULL,
  `gender` enum('female','male') COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id_users`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=8 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_users`, `firstname`, `lastname`, `email`, `password`, `year`, `month`, `date`, `gender`) VALUES
(6, 'yahya', 'hameed', 'kkjsi@hotmail.com', 10, 1992, 'MARCH', 8, 'male'),
(7, 'enas', 'al_qaadi', 'enas@hotmail.com', 0, 1996, 'MAY', 14, 'female');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
