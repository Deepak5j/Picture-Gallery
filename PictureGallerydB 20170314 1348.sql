-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.0.18-nt


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema testup
--

CREATE DATABASE IF NOT EXISTS testup;
USE testup;

--
-- Definition of table `files`
--

DROP TABLE IF EXISTS `files`;
CREATE TABLE `files` (
  `sr` int(10) unsigned NOT NULL auto_increment,
  `title` varchar(45) default 'No Title',
  `name` varchar(45) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY  (`sr`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `files`
--

/*!40000 ALTER TABLE `files` DISABLE KEYS */;
INSERT INTO `files` (`sr`,`title`,`name`,`date`) VALUES 
 (1,'as','87577.jpg','2017-02-25 09:19:08'),
 (2,'qw','100271.jpg','2017-02-25 09:24:14'),
 (3,'er','152638-digital_art-abstract-green-crystal.jpg','2017-02-25 09:57:40'),
 (4,'opop','234658.jpg','2017-02-25 10:02:19'),
 (5,'dfdf','earth_dream-wide.jpg','2017-02-25 11:11:47'),
 (6,'fg','earth_from_space_4k-wide.jpg','2017-02-25 15:20:27'),
 (7,'hj','golden_wheat_field_4k-wide.jpg','2017-02-25 15:49:16'),
 (8,'xc','earth_dream-wide1.jpg','2017-02-25 15:54:32'),
 (9,'nm','121750.jpg','2017-02-25 16:06:25'),
 (11,'','japan_digital_nature-wide1.jpg','2017-02-25 16:35:53'),
 (12,'','purple sunset.jpg','2017-02-25 16:40:14'),
 (13,'hu','705996.jpg','2017-02-25 16:41:14'),
 (14,'54545','uphill_road-wide.jpg','2017-02-26 13:09:07'),
 (15,'gh','3d_abstract_flower_4k-wide.jpg','2017-02-27 18:34:02'),
 (16,'cv','HPMUIP0-black-and-purple-wallpaper.jpg','2017-02-28 16:24:43'),
 (17,'zd','sunrise_hdr-wide.jpg','2017-03-04 18:50:10');
/*!40000 ALTER TABLE `files` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
