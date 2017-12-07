-- MySQL dump 10.15  Distrib 10.0.28-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: localhost
-- ------------------------------------------------------
-- Server version	10.0.28-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `clienttbl`
--

DROP TABLE IF EXISTS `clienttbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clienttbl` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `address1` varchar(255) DEFAULT NULL,
  `address2` varchar(255) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `state` char(2) DEFAULT NULL,
  `zip` varchar(10) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clienttbl`
--

LOCK TABLES `clienttbl` WRITE;
/*!40000 ALTER TABLE `clienttbl` DISABLE KEYS */;
INSERT INTO `clienttbl` (`id`, `name`, `address1`, `address2`, `city`, `state`, `zip`, `phone`, `email`, `status`) VALUES (1,'Laura Cutler','5 Masconomo St',NULL,'Manchester','MA','01944','978-526-4676','lauraccutler@gmail.com',1);
/*!40000 ALTER TABLE `clienttbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `companytbl`
--

DROP TABLE IF EXISTS `companytbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `companytbl` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `address1` varchar(255) DEFAULT NULL,
  `address2` varchar(255) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `state` char(2) DEFAULT NULL,
  `zip` varchar(10) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `companytbl`
--

LOCK TABLES `companytbl` WRITE;
/*!40000 ALTER TABLE `companytbl` DISABLE KEYS */;
INSERT INTO `companytbl` (`id`, `name`, `address1`, `address2`, `city`, `state`, `zip`, `phone`, `email`) VALUES (1,'Caring for Caring','15 1/2 Hale Street',NULL,'Rockport','MA','01966','978-546-7938','janededwards@gmail.com');
/*!40000 ALTER TABLE `companytbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employeetbl`
--

DROP TABLE IF EXISTS `employeetbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employeetbl` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `rate` decimal(5,2) DEFAULT NULL,
  `address1` varchar(255) DEFAULT NULL,
  `address2` varchar(255) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `state` char(2) DEFAULT NULL,
  `zip` varchar(10) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employeetbl`
--

LOCK TABLES `employeetbl` WRITE;
/*!40000 ALTER TABLE `employeetbl` DISABLE KEYS */;
INSERT INTO `employeetbl` (`id`, `name`, `rate`, `address1`, `address2`, `city`, `state`, `zip`, `phone`, `email`, `status`) VALUES (1,'Sylvia Selfridge',30.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1);
INSERT INTO `employeetbl` (`id`, `name`, `rate`, `address1`, `address2`, `city`, `state`, `zip`, `phone`, `email`, `status`) VALUES (2,'Jaclyan Innus',30.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1);
INSERT INTO `employeetbl` (`id`, `name`, `rate`, `address1`, `address2`, `city`, `state`, `zip`, `phone`, `email`, `status`) VALUES (3,'Susan Demasi',30.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1);
INSERT INTO `employeetbl` (`id`, `name`, `rate`, `address1`, `address2`, `city`, `state`, `zip`, `phone`, `email`, `status`) VALUES (4,'Karen Hiller',30.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1);
INSERT INTO `employeetbl` (`id`, `name`, `rate`, `address1`, `address2`, `city`, `state`, `zip`, `phone`, `email`, `status`) VALUES (5,'Sue Ellen Hille',30.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1);
INSERT INTO `employeetbl` (`id`, `name`, `rate`, `address1`, `address2`, `city`, `state`, `zip`, `phone`, `email`, `status`) VALUES (6,'Deb Norton',30.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1);
INSERT INTO `employeetbl` (`id`, `name`, `rate`, `address1`, `address2`, `city`, `state`, `zip`, `phone`, `email`, `status`) VALUES (7,'April Richard',30.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1);
INSERT INTO `employeetbl` (`id`, `name`, `rate`, `address1`, `address2`, `city`, `state`, `zip`, `phone`, `email`, `status`) VALUES (8,'Kelly Cook',30.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1);
INSERT INTO `employeetbl` (`id`, `name`, `rate`, `address1`, `address2`, `city`, `state`, `zip`, `phone`, `email`, `status`) VALUES (9,'Marta Witthoft',30.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1);
INSERT INTO `employeetbl` (`id`, `name`, `rate`, `address1`, `address2`, `city`, `state`, `zip`, `phone`, `email`, `status`) VALUES (10,'Shirly Inns',30.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1);
INSERT INTO `employeetbl` (`id`, `name`, `rate`, `address1`, `address2`, `city`, `state`, `zip`, `phone`, `email`, `status`) VALUES (11,'Kerry Favazza',30.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1);
INSERT INTO `employeetbl` (`id`, `name`, `rate`, `address1`, `address2`, `city`, `state`, `zip`, `phone`, `email`, `status`) VALUES (12,'Ellen Porter',30.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1);
INSERT INTO `employeetbl` (`id`, `name`, `rate`, `address1`, `address2`, `city`, `state`, `zip`, `phone`, `email`, `status`) VALUES (13,'Jackie Amero',30.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1);
/*!40000 ALTER TABLE `employeetbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoicetbl`
--

DROP TABLE IF EXISTS `invoicetbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `invoicetbl` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `clientid` bigint(20) DEFAULT NULL,
  `weekending` datetime DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `datecreated` datetime DEFAULT NULL,
  `datepaid` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoicetbl`
--

LOCK TABLES `invoicetbl` WRITE;
/*!40000 ALTER TABLE `invoicetbl` DISABLE KEYS */;
/*!40000 ALTER TABLE `invoicetbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `timesheettbl`
--

DROP TABLE IF EXISTS `timesheettbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `timesheettbl` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `clientid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `employeeid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `hours` decimal(5,2) DEFAULT '0.00',
  `comments` varchar(255) DEFAULT NULL,
  `weekending` datetime DEFAULT NULL,
  `enterdate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `timesheettbl`
--

LOCK TABLES `timesheettbl` WRITE;
/*!40000 ALTER TABLE `timesheettbl` DISABLE KEYS */;
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `enterdate`) VALUES (1,1,4,9.00,'Karen for 8.5','2017-11-28 00:00:00','2017-11-28 18:52:29');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `enterdate`) VALUES (2,1,12,11.00,'ellen 11.3','2017-11-04 00:00:00','2017-11-28 19:00:41');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `enterdate`) VALUES (3,1,2,11.00,'jaclyn for 11','2017-11-04 00:00:00','2017-11-28 19:20:40');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `enterdate`) VALUES (4,1,9,24.00,'marta 22 to 24','2017-11-04 00:00:00','2017-12-07 21:48:09');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `enterdate`) VALUES (5,1,3,12.00,'susan 12','2017-11-04 00:00:00','2017-11-28 19:33:29');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `enterdate`) VALUES (8,1,6,10.00,'Adjustment','2017-11-04 00:00:00','2017-12-07 21:48:38');
/*!40000 ALTER TABLE `timesheettbl` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-12-07 18:26:32
