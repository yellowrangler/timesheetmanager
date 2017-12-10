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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clienttbl`
--

LOCK TABLES `clienttbl` WRITE;
/*!40000 ALTER TABLE `clienttbl` DISABLE KEYS */;
INSERT INTO `clienttbl` (`id`, `name`, `address1`, `address2`, `city`, `state`, `zip`, `phone`, `email`, `status`) VALUES (1,'Laura Cutler','5 Masconomo St','','Manchester','MA','01944','978-526-4676','lauraccutler@gmail.com',1);
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
INSERT INTO `employeetbl` (`id`, `name`, `rate`, `address1`, `address2`, `city`, `state`, `zip`, `phone`, `email`, `status`) VALUES (6,'Deb Norton',30.00,'Address','','City','AL','99999','999-888-7777','email@address',0);
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
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `timesheettbl`
--

LOCK TABLES `timesheettbl` WRITE;
/*!40000 ALTER TABLE `timesheettbl` DISABLE KEYS */;
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `enterdate`) VALUES (10,1,1,27.50,'','2017-03-31 00:00:00','2017-12-08 00:02:10');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `enterdate`) VALUES (11,1,6,18.00,'','2017-03-31 00:00:00','2017-12-08 00:02:26');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `enterdate`) VALUES (12,1,7,6.00,'','2017-03-31 00:00:00','2017-12-08 00:02:42');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `enterdate`) VALUES (13,1,10,18.00,'','2017-03-31 00:00:00','2017-12-08 00:03:01');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `enterdate`) VALUES (14,1,2,26.00,'','2017-03-31 00:00:00','2017-12-08 00:03:20');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `enterdate`) VALUES (15,1,11,13.00,'','2017-03-31 00:00:00','2017-12-08 00:03:34');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `enterdate`) VALUES (16,1,12,6.00,'','2017-03-31 00:00:00','2017-12-08 00:03:48');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `enterdate`) VALUES (17,1,3,11.00,'','2017-03-31 00:00:00','2017-12-08 00:04:00');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `enterdate`) VALUES (18,1,13,13.00,'','2017-03-31 00:00:00','2017-12-08 00:04:14');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `enterdate`) VALUES (19,1,9,5.00,'','2017-03-31 00:00:00','2017-12-08 00:04:29');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `enterdate`) VALUES (20,1,8,6.00,'','2017-03-31 00:00:00','2017-12-08 00:04:45');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `enterdate`) VALUES (21,1,1,12.00,'','2017-03-24 00:00:00','2017-12-08 00:16:05');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `enterdate`) VALUES (22,1,7,5.00,'','2017-03-24 00:00:00','2017-12-08 00:17:42');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `enterdate`) VALUES (23,1,10,56.00,'','2017-03-24 00:00:00','2017-12-08 00:17:54');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `enterdate`) VALUES (24,1,5,3.00,'','2017-03-24 00:00:00','2017-12-08 00:18:09');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `enterdate`) VALUES (25,1,2,26.00,'','2017-03-24 00:00:00','2017-12-08 00:18:26');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `enterdate`) VALUES (26,1,3,59.00,'','2017-03-24 00:00:00','2017-12-08 00:19:03');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `enterdate`) VALUES (27,1,5,5.00,'','2017-03-24 00:00:00','2017-12-08 00:19:24');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `enterdate`) VALUES (28,1,1,6.00,'','2017-03-17 00:00:00','2017-12-08 00:21:46');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `enterdate`) VALUES (29,1,6,65.00,'','2017-03-17 00:00:00','2017-12-08 00:25:22');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `enterdate`) VALUES (30,1,8,7.00,'','2017-03-17 00:00:00','2017-12-08 00:25:36');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `enterdate`) VALUES (31,1,2,13.00,'','2017-03-17 00:00:00','2017-12-08 00:25:47');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `enterdate`) VALUES (32,1,3,11.00,'','2017-03-17 00:00:00','2017-12-08 00:26:02');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `enterdate`) VALUES (33,1,10,56.00,'','2017-03-17 00:00:00','2017-12-08 00:26:38');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `enterdate`) VALUES (34,1,9,10.00,'','2017-03-17 00:00:00','2017-12-08 00:26:50');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `enterdate`) VALUES (35,1,1,18.00,'','2017-03-10 00:00:00','2017-12-08 00:27:55');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `enterdate`) VALUES (36,1,6,60.00,'','2017-03-10 00:00:00','2017-12-08 00:28:18');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `enterdate`) VALUES (37,1,10,37.00,'','2017-03-10 00:00:00','2017-12-08 00:28:38');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `enterdate`) VALUES (38,1,5,15.00,'','2017-03-10 00:00:00','2017-12-08 00:28:53');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `enterdate`) VALUES (39,1,2,26.00,'','2017-03-10 00:00:00','2017-12-08 00:29:11');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `enterdate`) VALUES (40,1,8,5.00,'','2017-03-10 00:00:00','2017-12-08 00:29:55');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `enterdate`) VALUES (41,1,9,6.00,'','2017-03-10 00:00:00','2017-12-08 00:30:07');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `enterdate`) VALUES (42,1,1,12.00,'','2017-03-03 00:00:00','2017-12-08 00:31:20');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `enterdate`) VALUES (43,1,6,36.00,'','2017-03-03 00:00:00','2017-12-08 00:31:30');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `enterdate`) VALUES (44,1,10,42.00,'','2017-03-03 00:00:00','2017-12-08 00:31:42');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `enterdate`) VALUES (45,1,5,25.00,'','2017-03-03 00:00:00','2017-12-08 00:31:55');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `enterdate`) VALUES (46,1,2,12.00,'','2017-03-03 00:00:00','2017-12-08 00:32:13');
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

-- Dump completed on 2017-12-09  9:10:12
